struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 31>;

var<private> global1: bool;

var<private> global2: Struct_3;

var<private> global3: array<vec3<bool>, 30> = array<vec3<bool>, 30>(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false));

var<private> global4: array<bool, 7> = array<bool, 7>(true, false, true, true, true, true, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1)));
    let var_1 = Struct_3(global2.a, firstLeadingBit(vec3<u32>(u_input.b, ~arg_0, arg_0)), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-20124i, global2.d.c.x), -1i), u_input.a.x, 2147483647i, _wgslsmith_mult_i32(select(u_input.a.x, u_input.a.x, true), ~_wgslsmith_div_i32(0i, -68220i))), global2.d, global2.e);
    let var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1012f, -992f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1087f + 545f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-171f, -240f, 884f, -1043f) + vec4<f32>(873f, 712f, -1231f, -2230f))) - vec4<f32>(arg_1, -1816f, _wgslsmith_f_op_f32(arg_1 * arg_1), arg_1))))));
    let var_3 = countOneBits(vec4<u32>(1u, max(u_input.b, u_input.b), ~(4294967295u >> (~4294967295u % 32u)), u_input.b << (_wgslsmith_sub_u32(0u, 0u) % 32u)));
    var var_4 = global2.e;
    return 0u;
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    global1 = !(max(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global2.b, global2.b), ~global2.b)) > firstLeadingBit(abs(global2.b.x)));
    var var_0 = ~(~2147483647i);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.x)), -1836f, arg_0.x, -527f);
    var var_2 = Struct_3(!global2.a, ~abs(_wgslsmith_div_vec3_u32(~global2.b, global2.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(global2.d.c.x, 1i, u_input.a.x, ~_wgslsmith_clamp_i32(13737i, 0i, u_input.a.x)), reverseBits(~vec4<i32>(1i, 1i, 12461i, global2.e.b)) | vec4<i32>(min(30161i, u_input.a.x), -14482i, global2.c.x, u_input.a.x)), global2.e, global2.d);
    let var_3 = min(~func_3(4294967295u, _wgslsmith_div_f32(-375f, -491f)), u_input.b);
    return min(reverseBits(u_input.b), ~_wgslsmith_div_u32(firstTrailingBit(u_input.b) | var_3, 0u));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: Struct_5) -> vec2<i32> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~_wgslsmith_add_u32(_wgslsmith_div_u32(1u, u_input.b), 4294967295u)), 32229u, ~global2.d.a), 31u)];
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_2.e), 793f, _wgslsmith_f_op_f32(f32(-1f) * -534f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2092f))));
    global3 = array<vec3<bool>, 30>();
    var var_2 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(select(arg_2.d, vec4<u32>(50780u, 6272u, 20351u, 4294967295u), vec4<bool>(false, true, true, false)) & (vec4<u32>(u_input.b, 30766u, arg_2.d.x, 12866u) ^ arg_2.d), vec4<u32>(~var_0.a.x, min(67747u, 40261u), 0u, arg_0.x ^ 0u)), vec4<u32>(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -235f, -232f) + vec3<f32>(1442f, -1210f, arg_2.e))), arg_3.a.x, 1u >> (_wgslsmith_mult_u32(global2.b.x, 127u) % 32u), var_0.a.x));
    var var_3 = Struct_4(Struct_2(arg_3.b.x | 2147483647i), min(arg_2.b << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, 30715u), vec2<u32>(1u, global2.e.a) & vec2<u32>(0u, var_0.a.x)) % 32u), var_0.b.x), _wgslsmith_div_vec3_i32(~_wgslsmith_mod_vec3_i32(~arg_2.c, var_0.b.xzw), ~reverseBits(countOneBits(arg_2.c))), abs(select(arg_2.d, ~(vec4<u32>(4294967295u, 0u, 1u, global2.d.a) >> (arg_0 % vec4<u32>(32u))), all(!global2.a))), arg_2.e);
    return var_3.c.xz;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: vec2<f32>) -> vec2<u32> {
    var var_0 = u_input.a.x;
    var var_1 = global2.d.c.x;
    let var_2 = _wgslsmith_sub_i32(arg_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(abs(_wgslsmith_clamp_i32(u_input.a.x, arg_0.x, arg_1.x)), ~(-u_input.a.x)), select(vec2<i32>(-1i | arg_1.x, arg_1.x), ~vec2<i32>(u_input.a.x, global2.e.c.x), true || any(global2.a.zy))));
    var_1 = 35180i;
    let var_3 = reverseBits(~u_input.a.x);
    return global2.b.zx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec2_u32(func_4(-func_1(vec4<u32>(39446u, 4337u, 0u, global2.b.x), vec3<f32>(1f, 1f, 1f), Struct_4(Struct_2(u_input.a.x), -2147483647i, vec3<i32>(u_input.a.x, 68147i, -42006i), vec4<u32>(1u, global2.d.a, global2.e.a, global2.d.a), -677f), Struct_5(global2.b, vec4<i32>(global2.d.b, u_input.a.x, global2.e.b, 39510i))), vec2<i32>(_wgslsmith_dot_vec4_i32(reverseBits(global2.e.c), global2.c), _wgslsmith_mod_i32(~u_input.a.x, global2.c.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(1976f, -1729f), -131f)))), global2.b.zy);
    var var_1 = 12807i;
    let var_2 = Struct_4(Struct_2(global2.e.c.x), global2.c.x << (var_0.x % 32u), global2.e.c.xyz, vec4<u32>(1u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(9784u, func_3(u_input.b, 1000f)), _wgslsmith_add_u32(global2.d.a, global2.b.x) ^ 0u, var_0.x), 4294967295u, _wgslsmith_sub_u32(var_0.x, ~firstLeadingBit(34877u))), _wgslsmith_f_op_f32(min(410f, _wgslsmith_f_op_f32(-565f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -183f))))));
    let var_3 = abs(reverseBits(_wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(2147483647i, firstTrailingBit(38719i)))));
    global0 = array<Struct_5, 31>();
    global2 = Struct_3(vec4<bool>(abs(max(-1i, -2147483647i)) <= max(max(var_2.c.x, global2.e.c.x), -var_3), true, all(select(vec4<bool>(global4[_wgslsmith_index_u32(var_2.d.x, 7u)], global4[_wgslsmith_index_u32(20585u, 7u)], false, false), vec4<bool>(false, true, false, true), !global2.a.x)), true), reverseBits(firstTrailingBit(vec3<u32>(12529u, global2.b.x & var_0.x, _wgslsmith_dot_vec3_u32(global2.b, global2.b)))), vec4<i32>(27868i >> (_wgslsmith_add_u32(70879u, var_0.x << (var_2.d.x % 32u)) % 32u), var_3, 31434i ^ ~(~var_2.a.a), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_2.a.a, var_2.b, u_input.a.x), vec4<i32>(var_3, var_2.c.x, global2.d.b, 3773i)), global2.e.c), -(~2147483647i))), global2.e, global2.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1000f), abs(-countOneBits(_wgslsmith_clamp_vec4_i32(global2.e.c, vec4<i32>(global2.e.c.x, var_3, 2147483647i, global2.e.c.x), vec4<i32>(var_3, u_input.a.x, 11358i, 49227i)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-447f))))));
}

