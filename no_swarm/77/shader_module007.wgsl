struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(2147483647i, -37629i), vec2<i32>(-17080i, 0i), vec2<i32>(15072i, 1i), vec2<i32>(11143i, 25906i), vec2<i32>(-4499i, -1i), vec2<i32>(8379i, 1i), vec2<i32>(4307i, 0i), vec2<i32>(-47238i, 1i), vec2<i32>(22553i, i32(-2147483648)), vec2<i32>(-11087i, 8683i), vec2<i32>(-1i, 417i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(794i, i32(-2147483648)), vec2<i32>(12340i, 14494i), vec2<i32>(0i, 2147483647i), vec2<i32>(7610i, -1i), vec2<i32>(-1i, -44806i), vec2<i32>(-5654i, -13706i), vec2<i32>(1317i, 21875i), vec2<i32>(i32(-2147483648), -18084i), vec2<i32>(-1i, i32(-2147483648)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> vec3<u32> {
    var var_0 = Struct_1(~(~(~global0.xzw)), !vec4<bool>(true, _wgslsmith_f_op_f32(-arg_1.x) <= -382f, false, arg_0));
    global1 = array<vec2<i32>, 21>();
    let var_1 = ~(_wgslsmith_mod_u32(~firstTrailingBit(global0.x), ~(~global0.x)) & abs(~(var_0.a.x ^ 1u)));
    var var_2 = !var_0.b.x;
    return ~max(_wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(100901u, 4294967295u, var_1), var_0.a), select(~vec3<u32>(6153u, global0.x, var_1), global0.zwz, true)), _wgslsmith_mult_vec3_u32(~(~global0.yxx), ~vec3<u32>(0u, var_0.a.x, var_0.a.x) | var_0.a));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(!(!(global0.x > firstTrailingBit(global0.x))), Struct_1(_wgslsmith_mod_vec3_u32(func_3(true, vec2<f32>(-330f, 805f)) & abs(vec3<u32>(1u, 32073u, 4017u)), ~(~vec3<u32>(global0.x, global0.x, 0u))), vec4<bool>(true, true, true, true)), Struct_2(~(-2394i)));
    let var_1 = var_0.b.a.x & 1u;
    var var_2 = Struct_3(any(var_0.b.b.zxw), Struct_1(firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1, var_1, var_1), global0.wwy)), vec4<bool>(true, false, false, false)), Struct_2(reverseBits(72150i)));
    var var_3 = var_0.c.a;
    var_3 = i32(-1i) * -min(_wgslsmith_mult_i32(u_input.a.x, ~u_input.a.x), var_2.c.a);
    return Struct_1(~_wgslsmith_sub_vec3_u32(var_2.b.a, vec3<u32>(~4057u, global0.x, ~1u)), select(!var_2.b.b, select(vec4<bool>(true, !var_2.b.b.x, false, false), var_0.b.b, !vec4<bool>(false, var_0.a, var_2.a, true)), var_2.a));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> u32 {
    global0 = vec4<u32>(select(arg_0.b.a.x, arg_0.b.a.x, arg_1.a), _wgslsmith_dot_vec3_u32(countOneBits(firstLeadingBit(arg_1.b.a)), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~arg_1.b.a, vec3<u32>(16063u, arg_0.b.a.x, 1u), ~vec3<u32>(arg_0.b.a.x, 0u, 88263u)), vec3<u32>(18356u, 61372u, ~arg_1.b.a.x))), firstLeadingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(9300u, 78123u, global0.x, 1u), vec4<u32>(arg_1.b.a.x, 1u, 0u, 4294967295u)) | ~abs(arg_1.b.a.x)), abs(_wgslsmith_mult_u32(firstTrailingBit(4294967295u), abs(15420u)) >> (~(~global0.x) % 32u)));
    return _wgslsmith_dot_vec4_u32(~(~vec4<u32>(_wgslsmith_sub_u32(63822u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.a.x, global0.x, arg_0.b.a.x, 59504u), vec4<u32>(0u, 59492u, arg_1.b.a.x, global0.x)), firstTrailingBit(global0.x), func_2().a.x)), vec4<u32>(~(~global0.x), 22227u, 4294967295u, _wgslsmith_clamp_u32(arg_1.b.a.x, 9644u, 0u) ^ _wgslsmith_div_u32(4294967295u, global0.x)) ^ ~(~vec4<u32>(0u, 4294967295u, global0.x, 15334u)));
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_2 {
    let var_0 = Struct_2(-37432i);
    global1 = array<vec2<i32>, 21>();
    global0 = _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_0, ~arg_0, func_4(Struct_3(true, Struct_1(global0.zxz, vec4<bool>(true, false, true, true)), var_0), Struct_3(all(vec3<bool>(true, true, false)), func_2(), Struct_2(var_0.a)))), reverseBits(vec4<u32>(arg_0, abs(global0.x ^ arg_0), firstTrailingBit(~0u), 32262u >> (global0.x % 32u))));
    var var_1 = var_0;
    var var_2 = any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, all(vec4<bool>(true, false, false, false)), true))) && func_2().b.x;
    return Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, abs(abs(var_0.a)), var_1.a, reverseBits(arg_1 & 2147483647i)), vec4<i32>(var_0.a, -2147483647i, ~28948i, -1i)));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: bool) -> u32 {
    var var_0 = func_2().b;
    var_0 = vec4<bool>(true, true, any(select(select(!arg_2.b, func_2().b, all(vec3<bool>(true, arg_2.b.x, var_0.x))), !vec4<bool>(false, arg_3, true, true), func_2().b)), true);
    var_0 = !(!arg_2.b);
    global1 = array<vec2<i32>, 21>();
    var var_1 = countOneBits(arg_2.a.yz);
    return ~func_3(all(select(var_0.yy, vec2<bool>(false, var_0.x), !arg_2.b.xz)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -234f) * _wgslsmith_f_op_f32(439f + -1230f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(751f * 315f)))).x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<u32>(global0.x, func_5(func_1(countOneBits(~0u), -79396i), ~_wgslsmith_mod_vec2_i32(firstTrailingBit(global1[_wgslsmith_index_u32(42842u, 21u)]), reverseBits(vec2<i32>(u_input.a.x, u_input.a.x))), func_2(), true), func_3(false, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-873f, 332f) + vec2<f32>(-1000f, -1117f)), vec2<f32>(-1325f, -1221f))).x | ~(~(~32863u)), countOneBits(~global0.x));
    global1 = array<vec2<i32>, 21>();
    var var_0 = select(max(-(~max(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, -2147483647i), vec4<i32>(-1i, u_input.a.x, -2147483647i, -44815i))), reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, 9593i, u_input.a.x) & vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x)) | vec4<i32>(~2147483647i, u_input.a.x, ~u_input.a.x, 28454i)), vec4<i32>(~u_input.a.x, u_input.a.x, -_wgslsmith_div_i32(u_input.a.x, u_input.a.x | u_input.a.x), ~_wgslsmith_sub_i32(~u_input.a.x, u_input.a.x)), vec4<bool>(true, true, true, true));
    global0 = select(firstTrailingBit(~(vec4<u32>(0u, 33454u, global0.x, 23839u) ^ vec4<u32>(global0.x, 18571u, global0.x, global0.x)) & firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, 1u), vec4<u32>(0u, 53413u, global0.x, global0.x)))), vec4<u32>(_wgslsmith_mult_u32(75885u, _wgslsmith_mult_u32(global0.x, ~1u)), _wgslsmith_mult_u32(func_4(Struct_3(false, Struct_1(global0.zwz, vec4<bool>(true, true, false, false)), Struct_2(var_0.x)), Struct_3(true, Struct_1(vec3<u32>(global0.x, global0.x, 11897u), vec4<bool>(false, true, false, true)), Struct_2(1i))), ~global0.x), ~global0.x << (_wgslsmith_sub_u32(global0.x, 68045u) % 32u), ~0u), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true), vec4<bool>(any(vec4<bool>(false, false, true, false)), any(vec3<bool>(false, false, true)), true, any(vec4<bool>(false, true, false, false))), !(var_0.x <= 33i)), select(select(func_2().b, vec4<bool>(true, true, true, true), all(vec2<bool>(false, false))), vec4<bool>(true, true, true, true), true), all(vec2<bool>(true, true))));
    global0 = _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(global0.x, global0.x, ~func_3(false, vec2<f32>(-2040f, 536f)).x, 56243u)), select(~(~abs(vec4<u32>(global0.x, global0.x, 4294967295u, 3161u))), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(37707u, global0.x, 0u, 4294967295u)), vec4<u32>(0u, func_3(true, vec2<f32>(1117f, -1195f)).x, 26757u, ~6561u)), var_0.x != u_input.a.x));
    global0 = select(~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(40343u, 0u, 33181u, global0.x), vec4<u32>(66537u, 2359u, 65927u, 41915u))) << ((~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, 5703u, 28121u, global0.x), vec4<u32>(4294967295u, global0.x, global0.x, global0.x), vec4<u32>(global0.x, 1u, global0.x, global0.x)) & vec4<u32>(1u, global0.x | 38508u, 1u, global0.x)) % vec4<u32>(32u)), ~(~(_wgslsmith_add_vec4_u32(vec4<u32>(62028u, global0.x, global0.x, 1u), vec4<u32>(global0.x, 69296u, 39376u, global0.x)) << (reverseBits(vec4<u32>(4294967295u, 18118u, global0.x, 91167u)) % vec4<u32>(32u)))), !(!any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true))));
    global1 = array<vec2<i32>, 21>();
    let var_1 = false || all(vec4<bool>(true, true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-791f, 391f, -716f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1576f)), _wgslsmith_f_op_f32(trunc(1026f)))))), global0.x << (~(~1u) % 32u), -2497f);
}

