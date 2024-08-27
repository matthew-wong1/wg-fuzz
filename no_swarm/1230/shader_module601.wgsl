struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: array<f32, 1>;

var<private> global2: array<u32, 24> = array<u32, 24>(0u, 4294967295u, 0u, 42041u, 29108u, 0u, 41567u, 0u, 8780u, 1u, 4294967295u, 1u, 4294967295u, 0u, 0u, 35042u, 46182u, 4294967295u, 0u, 7005u, 0u, 4294967295u, 0u, 1u);

var<private> global3: array<f32, 25>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> vec3<bool> {
    let var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 18u)];
    let var_1 = global0[_wgslsmith_index_u32(u_input.c.x, 18u)];
    let var_2 = !(!var_1.d.b.x);
    global3 = array<f32, 25>();
    global1 = array<f32, 1>();
    return !var_0.c.wzz;
}

fn func_3() -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(29631u, 25u)] * global1[_wgslsmith_index_u32(3622u, 1u)]) + 1434f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(49759u, 24u)], 1u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(u_input.c.x, 1u)]))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 1u)] * 1606f))) - global1[_wgslsmith_index_u32(1158u, 1u)]), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(reverseBits(1u), u_input.c.x), u_input.c.x), 1u)])), global1[_wgslsmith_index_u32(max(~4294967295u, abs(~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 24u)], 24u)], u_input.c.x, global2[_wgslsmith_index_u32(0u, 24u)], 24466u)))), 1u)]);
    let var_1 = _wgslsmith_sub_vec3_u32(~vec3<u32>(_wgslsmith_mult_u32(40104u, global2[_wgslsmith_index_u32(47508u, 24u)]), 1u, global2[_wgslsmith_index_u32(~u_input.c.x, 24u)]), vec3<u32>(~(~41870u), 2753u, _wgslsmith_div_u32(firstLeadingBit(4294967295u), 16085u))) | vec3<u32>(~u_input.c.x >> (u_input.c.x % 32u), 32917u, u_input.c.x);
    global0 = array<Struct_2, 18>();
    var var_2 = true;
    var_2 = !(!select(true, true, true));
    return global1[_wgslsmith_index_u32(u_input.c.x, 1u)];
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: vec4<f32>) -> Struct_1 {
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    var var_0 = arg_2;
    let var_1 = vec3<bool>(all(func_2()), true, !(all(vec3<bool>(true, true, true)) & select(true, true, false)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(func_3()), vec2<bool>(var_1.x, !func_2().x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-314f, -325f) + vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 25u)], global3[_wgslsmith_index_u32(59991u, 25u)])), arg_1)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, global1[_wgslsmith_index_u32(arg_0.x, 1u)])) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1789f, global1[_wgslsmith_index_u32(4294967295u, 1u)])))))));
    return Struct_1(_wgslsmith_f_op_f32(467f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 24u)], 1u)])))))), vec2<bool>(true, !(_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(arg_0.x, 4294967295u, 68093u)) <= _wgslsmith_add_u32(58293u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 24u)]))), _wgslsmith_f_op_vec2_f32(-var_0.zy));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    var var_0 = arg_2.d;
    global1 = array<f32, 1>();
    global0 = array<Struct_2, 18>();
    var var_1 = arg_3.c.yx;
    var_0 = arg_2.d;
    return func_1(vec3<u32>(~max(arg_0.b, ~arg_3.b), 0u, abs(~abs(arg_0.b))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a, arg_0.d.a)) * arg_2.d.c.x), arg_1.c.x), 1222f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(565f, -1142f, global1[_wgslsmith_index_u32(35410u, 1u)], 343f)) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-470f, global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(arg_2.b, 1u)], 217f) - vec4<f32>(global3[_wgslsmith_index_u32(arg_3.b, 25u)], -1000f, arg_1.c.x, 102f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.d.c.x, var_0.a, 998f, arg_3.d.c.x))))))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(Struct_2(vec2<i32>(u_input.a, 1i), u_input.c.x, vec4<bool>(true, false, false, true), Struct_1(922f, vec2<bool>(true, false), vec2<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 25u)], 103f))), func_1(vec3<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 24u)], 23355u, u_input.c.x), vec2<f32>(538f, 634f), vec4<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 25u)], -1279f, -649f, global3[_wgslsmith_index_u32(51589u, 25u)])), global0[_wgslsmith_index_u32(~58752u, 18u)], global0[_wgslsmith_index_u32(u_input.c.x, 18u)])), 1f))));
    let var_1 = max(u_input.b.zy, _wgslsmith_sub_vec2_i32(vec2<i32>(-(~2147483647i), u_input.a), u_input.b.yy));
    let var_2 = ~1u;
    var var_3 = abs(_wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(0u, 24u)]), ~u_input.c.yz), _wgslsmith_mod_vec2_u32(countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, global2[_wgslsmith_index_u32(1u, 24u)]), vec2<u32>(41309u, var_2))), ~(~vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(27485u, 24u)])))));
    global3 = array<f32, 25>();
    var var_4 = var_1;
    global1 = array<f32, 1>();
    var var_5 = vec3<bool>(true, ~(~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(var_2, 24u)], var_3.x)) > 0u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 1u)])), global3[_wgslsmith_index_u32(min(2767u, u_input.c.x), 25u)]))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(966f * -1420f))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, ~0i, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(var_2, 25u)], global1[_wgslsmith_index_u32(u_input.c.x, 1u)], 396f), vec3<f32>(-310f, 1887f, var_0), var_5.x))))))), _wgslsmith_sub_vec2_u32(vec2<u32>(12186u, reverseBits(4294967295u)), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(48294u, 0u), vec2<u32>(global2[_wgslsmith_index_u32(var_2, 24u)], global2[_wgslsmith_index_u32(65246u, 24u)])), u_input.c.wz | vec2<u32>(var_2, 86457u))) >> (vec2<u32>(var_3.x, u_input.c.x) % vec2<u32>(32u)));
}

