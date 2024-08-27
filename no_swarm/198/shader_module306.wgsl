struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: bool = true;

var<private> global2: array<i32, 10> = array<i32, 10>(22005i, 0i, 1i, 4000i, 0i, 5777i, 53209i, 26920i, -1i, -51487i);

var<private> global3: Struct_1 = Struct_1(1000f, 5102u, i32(-2147483648));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    let var_0 = false;
    var var_1 = Struct_1(1000f, ~firstLeadingBit(~_wgslsmith_mod_u32(u_input.a.x, 4624u)), ~global3.c);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(global3.a)), 49706u, var_1.c);
    global2 = array<i32, 10>();
    var var_3 = Struct_1(var_2.a, 4294967295u, -_wgslsmith_clamp_i32(_wgslsmith_div_i32(-var_2.c, var_2.c), 12209i, arg_0.x));
    return 1u;
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-469f - _wgslsmith_f_op_f32(global3.a - 2928f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global3.a, global3.a)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(658f + global3.a), _wgslsmith_add_u32(u_input.a.x, _wgslsmith_add_u32(global3.b, 71138u)), -36791i);
    let var_2 = Struct_1(var_1.a, ~_wgslsmith_mult_u32(_wgslsmith_div_u32(firstTrailingBit(65559u), 0u), u_input.b), select(_wgslsmith_dot_vec3_i32(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 0i, var_1.c), vec3<i32>(global3.c, global2[_wgslsmith_index_u32(var_1.b, 10u)], 30402i))), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, global3.c, global2[_wgslsmith_index_u32(global3.b, 10u)]), vec3<i32>(var_1.c, 0i, global3.c)))), global2[_wgslsmith_index_u32(~4294967295u, 10u)], arg_0.x));
    let var_3 = Struct_1(var_2.a, select(_wgslsmith_div_u32(~0u, 1u) & ~(~var_2.b), global3.b, true), -_wgslsmith_sub_i32(~var_1.c, 2147483647i) << (13749u % 32u));
    let var_4 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_3.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-253f))))), var_2.b, -var_1.c >> (func_3(~abs(vec2<i32>(var_3.c, var_2.c))) % 32u));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(-var_4.a))) - var_2.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.a, 819f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(vec2<bool>(global2[_wgslsmith_index_u32(arg_0.b, 10u)] >= global3.c, false))), arg_0.a, 470f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, 918f)), arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.a, 1053f)) * _wgslsmith_f_op_f32(abs(arg_0.a)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1084f, 579f, global3.a)) + vec3<f32>(global3.a, 955f, global3.a)))));
    let var_1 = -199f;
    let var_2 = ~vec3<i32>(~arg_0.c, _wgslsmith_dot_vec2_i32(arg_1.xx, ~arg_1.wz), 6917i);
    var var_3 = u_input.a;
    var var_4 = Struct_1(global3.a, 4294967295u, _wgslsmith_dot_vec2_i32(arg_1.ww, ~vec2<i32>(0i, -39792i)));
    return vec3<bool>(true, all(vec4<bool>(true, true, arg_2.x, arg_2.x)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(vec3<bool>(true, true, true), func_1(Struct_1(global3.a, u_input.b, global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), abs(vec4<i32>(2147483647i, global3.c, -62324i, global3.c)), vec3<bool>(true, true, true)), true)) & (~(1u | (0u & global3.b)) < ~func_3(firstLeadingBit(vec2<i32>(global3.c, -1i))));
    var var_1 = Struct_1(-893f, global3.b, global2[_wgslsmith_index_u32(95680u, 10u)]);
    var var_2 = Struct_1(var_1.a, var_1.b, _wgslsmith_mod_i32(~abs(global3.c), -1i) ^ countOneBits(abs(64950i)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + var_1.a), _wgslsmith_f_op_f32(-global3.a))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.a + -1004f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a)))));
    var_1 = Struct_1(var_1.a, min(max(34367u, 53643u >> (u_input.c.x % 32u)), 1u) ^ ~abs(~var_1.b), -1i);
    var var_4 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(global3.b, global3.b, var_2.b, 7387u) | firstTrailingBit(vec4<u32>(var_2.b, var_1.b, var_1.b, 0u)), ~reverseBits(vec4<u32>(u_input.a.x, global3.b, 4294967295u, 35450u))), vec4<u32>(~_wgslsmith_sub_u32(63996u, var_2.b), var_2.b, u_input.b, countOneBits(global3.b)), vec4<u32>(select(firstLeadingBit(var_1.b), 0u, !var_0), var_1.b, global3.b, var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_2.b, ~abs(0u), max(var_4.x, countOneBits(var_1.b))), _wgslsmith_add_i32(-43056i, global3.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.a * _wgslsmith_f_op_f32(-1343f * var_2.a)), _wgslsmith_div_f32(_wgslsmith_div_f32(-281f, var_3.x), var_3.x))), vec4<i32>(~_wgslsmith_div_i32(28443i, -58791i), ~global2[_wgslsmith_index_u32(~(0u | var_4.x), 10u)], ~abs(~var_1.c), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, var_2.c), vec2<i32>(-8307i, var_2.c)), _wgslsmith_sub_vec2_i32(vec2<i32>(var_2.c, -70417i), vec2<i32>(12508i, global2[_wgslsmith_index_u32(u_input.c.x, 10u)]))), vec2<i32>(global2[_wgslsmith_index_u32(var_1.b, 10u)], 0i) ^ vec2<i32>(-1i, -49568i))), ~(-(~vec3<i32>(global3.c, 15929i, -2147483647i))));
}

