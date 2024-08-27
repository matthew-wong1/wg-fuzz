struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: Struct_2,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 25>;

var<private> global2: array<Struct_4, 9>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec2<f32>) -> i32 {
    global2 = array<Struct_4, 9>();
    global1 = array<u32, 25>();
    var var_0 = arg_0.c.a.b.x;
    global2 = array<Struct_4, 9>();
    var var_1 = true;
    return arg_0.b.b.x;
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_1 {
    let var_0 = ~vec3<i32>(func_3(Struct_4(vec4<u32>(2963u, 0u, u_input.c.x, global1[_wgslsmith_index_u32(global0.b.a, 25u)]) & vec4<u32>(arg_0, global1[_wgslsmith_index_u32(8918u, 25u)], arg_0, global1[_wgslsmith_index_u32(arg_0, 25u)]), Struct_3(global0.a.d, vec3<i32>(u_input.a.x, 0i, -1i)), Struct_2(global0.a, Struct_1(global0.a.b.x, u_input.c, global0.d, global0.b.d, -1755f), vec3<bool>(false, global0.a.d, global0.b.d), global0.a.c), _wgslsmith_f_op_f32(global0.b.c - global0.b.e), select(vec4<bool>(false, global0.c.x, global0.c.x, global0.c.x), vec4<bool>(false, true, global0.b.d, global0.a.d), vec4<bool>(global0.a.d, false, false, global0.c.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-609f, global0.d, global0.a.e, -1440f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(328f, global0.a.c, global0.b.e, 577f))), Struct_2(global0.a, global0.b, vec3<bool>(global0.c.x, global0.c.x, global0.b.d), _wgslsmith_f_op_f32(sign(global0.a.e))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.d, global0.a.c)))), _wgslsmith_dot_vec4_i32(select(~vec4<i32>(u_input.b.x, u_input.b.x, 0i, u_input.b.x), select(vec4<i32>(u_input.b.x, u_input.a.x, 22317i, 1i), vec4<i32>(u_input.b.x, u_input.a.x, 20643i, 6720i), false), global0.b.d), select(vec4<i32>(1i, u_input.a.x, 52204i, u_input.a.x), vec4<i32>(-57459i, u_input.a.x, u_input.b.x, u_input.a.x), !vec4<bool>(global0.a.d, true, global0.b.d, false))), 1i);
    return global0.b;
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: Struct_2) -> f32 {
    var var_0 = ~_wgslsmith_mod_vec4_u32(arg_0.a >> (max(~arg_0.a, vec4<u32>(31599u, 46718u, u_input.c.x, u_input.c.x)) % vec4<u32>(32u)), vec4<u32>(~23577u << (u_input.c.x % 32u), ~0u << ((arg_0.c.a.b.x & 76909u) % 32u), ~_wgslsmith_div_u32(arg_0.c.a.a, 49891u), (arg_0.a.x ^ u_input.c.x) << (~19929u % 32u)));
    let var_1 = func_3(Struct_4(arg_0.a, arg_0.b, Struct_2(Struct_1(abs(var_0.x), ~global0.b.b, _wgslsmith_f_op_f32(-280f - 999f), any(global0.c.xy), global0.b.e), global0.b, arg_0.e.xww, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1335f)))), global0.d, arg_0.e), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-163f, _wgslsmith_f_op_f32(abs(2326f)), arg_0.c.b.e, arg_0.d))), arg_0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d, -1511f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1290f, 537f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1694f, arg_0.d) + vec2<f32>(1131f, -845f)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1060f, global0.b.e) + vec2<f32>(arg_2.b.e, 610f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d, -675f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(118f, global0.a.e)))))));
    var_0 = ~vec4<u32>(1u, select(_wgslsmith_clamp_u32(arg_0.c.b.a, 0u, arg_2.b.b.x), global1[_wgslsmith_index_u32(global0.b.a, 25u)], global0.c.x), global0.b.b.x, arg_0.c.b.a);
    var var_2 = vec3<u32>(~global0.a.a, arg_0.c.a.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(27541u, _wgslsmith_clamp_u32(18533u, global1[_wgslsmith_index_u32(var_0.x, 25u)], arg_2.a.a) | ~28971u, select(global0.b.a, max(0u, global0.a.b.x), true)), ~firstLeadingBit(var_0.yzx)));
    let var_3 = _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x & select(max(arg_2.a.b.x, 4294967295u), _wgslsmith_mult_u32(13810u, arg_2.b.a), arg_1), arg_0.c.b.b.x), vec2<u32>(var_0.x, ~(~u_input.c.x)), var_0.yx);
    return _wgslsmith_f_op_f32(-100f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-526f, arg_2.a.c))));
}

fn func_1() -> Struct_1 {
    global1 = array<u32, 25>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(230f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(480f)), _wgslsmith_f_op_f32(select(-1766f, global0.a.e, false)), any(vec3<bool>(global0.a.d, false, false)))), !global0.a.d)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(788f - global0.b.c), -328f))) - _wgslsmith_f_op_f32(func_4(global2[_wgslsmith_index_u32(global0.b.a, 9u)], true, Struct_2(global0.a, func_2(4294967295u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 25u)], 25u)]), !global0.c, 1270f))));
    return global0.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = any(select(select(vec4<bool>(func_1().d, any(vec2<bool>(global0.c.x, global0.c.x)), true, func_1().d), vec4<bool>(global0.b.d, global0.c.x, any(vec3<bool>(arg_1.x, true, arg_2.d)), arg_2.d), vec4<bool>(!arg_2.d, !arg_2.d, arg_0.c.x, arg_1.x)), !vec4<bool>(arg_0.b.d, arg_0.c.x, true, true), any(!arg_1.xx)));
    return Struct_3(select(select(false, !(u_input.a.x > 2147483647i), arg_2.d), arg_1.x || true, any(select(select(vec2<bool>(arg_1.x, true), vec2<bool>(true, true), true), select(vec2<bool>(arg_2.d, arg_0.a.d), global0.c.zx, arg_0.b.d), vec2<bool>(global0.b.d, true)))), -(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-18710i, 2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, 27760i, 52750i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))) & (_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.b.x, u_input.a.x), vec3<i32>(50442i, u_input.a.x, u_input.a.x)) ^ -vec3<i32>(u_input.b.x, -24098i, -20648i))));
}

fn func_6(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = func_5(arg_3, vec3<bool>(arg_1.a, func_5(Struct_2(func_2(4294967295u, 102536u), Struct_1(78675u, arg_2.b, 148f, arg_1.a, -1412f), vec3<bool>(global0.b.d, true, true), func_1().e), vec3<bool>(arg_3.c.x, false, true), Struct_1(7695u, func_1().b, _wgslsmith_f_op_f32(arg_3.b.c + 2209f), true, arg_3.d)).a, true), arg_3.b);
    return StorageBuffer(func_1().b.x, _wgslsmith_sub_i32(~(-(arg_1.b.x & 0i)), ~(-_wgslsmith_mod_i32(-33286i, u_input.a.x))), ~u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(438f * global0.d)));
    let var_1 = !vec3<bool>(true, global0.b.d, false);
    var var_2 = global0.b.d;
    var var_3 = vec3<u32>(~global1[_wgslsmith_index_u32(~4294967295u, 25u)], firstTrailingBit(31682u), 4294967295u);
    var var_4 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_3.x, _wgslsmith_mult_u32(var_3.x, u_input.c.x)), 9u)];
    var var_5 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(-u_input.b.x, _wgslsmith_div_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(14575i, 1i, var_4.b.b.x, var_4.b.b.x) & vec4<i32>(-9524i, -1i, -2147483647i, var_4.b.b.x), reverseBits(vec4<i32>(u_input.b.x, var_4.b.b.x, 1i, u_input.a.x))))), select(~(i32(-1i) * -var_4.b.b.x), ~9002i | u_input.a.x, false));
    let x = u_input.a;
    s_output = func_6(2147483647i, func_5(Struct_2(func_1(), Struct_1(~55631u, var_4.c.a.b, _wgslsmith_f_op_f32(-global0.d), -2147483647i >= u_input.b.x, -546f), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(global0.a.e * var_4.d)), !select(select(global0.c, var_1, var_4.c.c.x), vec3<bool>(false, true, true), !var_4.e.xzx), Struct_1(global1[_wgslsmith_index_u32(1u | global1[_wgslsmith_index_u32(1u, 25u)], 25u)], firstLeadingBit(abs(vec2<u32>(global0.a.a, var_3.x))), var_0, global0.b.d, -486f)), var_4.c.a, var_4.c);
}

