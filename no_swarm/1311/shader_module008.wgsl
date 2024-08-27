struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11> = array<bool, 11>(true, true, true, false, false, false, false, true, true, false, true);

var<private> global1: array<i32, 32> = array<i32, 32>(17271i, 27073i, 9382i, 31417i, 18631i, 2147483647i, i32(-2147483648), -32773i, -34909i, 2147483647i, -28228i, 0i, 1i, i32(-2147483648), -6257i, 2147483647i, -33455i, -8225i, -18919i, i32(-2147483648), -15653i, -58894i, -8135i, -32478i, 4783i, 0i, -6793i, 0i, i32(-2147483648), -4443i, 0i, -38277i);

var<private> global2: f32 = -668f;

var<private> global3: array<vec4<u32>, 17>;

var<private> global4: array<u32, 9>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    let var_0 = -37420i;
    global1 = array<i32, 32>();
    let var_1 = min(global1[_wgslsmith_index_u32(countOneBits(~(global4[_wgslsmith_index_u32(86931u, 9u)] << (0u % 32u))), 32u)], -global1[_wgslsmith_index_u32(~min(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 9u)] & global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 9u)], 9u)], 25136u), 32u)]);
    var var_2 = Struct_1(!global0[_wgslsmith_index_u32(0u, 11u)], u_input.c.zz, -14449i);
    var var_3 = Struct_1(true, _wgslsmith_sub_vec2_i32(u_input.c.yx, -vec2<i32>(var_1, max(-5667i, global1[_wgslsmith_index_u32(614u, 32u)]))), 0i);
    return var_1;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(true, -vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.c.wwx, u_input.c.yzx) >> (75894u % 32u), func_3()), ~(-func_3()));
    var var_1 = Struct_1(~_wgslsmith_mod_u32(~0u, 40501u) <= ~(~_wgslsmith_div_u32(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(28373u, 9u)], 9u)], 9u)])), ~firstLeadingBit(-(var_0.b & u_input.c.xz)), -func_3());
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(502f, 614f, 378f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-660f, 1406f, 1907f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-738f, 707f, -474f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-130f, 763f, -838f) + vec3<f32>(996f, 1187f, 1695f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1145f, -1872f, 383f) - vec3<f32>(-1449f, 2525f, -777f)), var_0.a)), vec3<f32>(1f, 1f, 1f), _wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(53476u, 17u)], global3[_wgslsmith_index_u32(0u, 17u)]) >= global4[_wgslsmith_index_u32(1u, 9u)]))));
    let var_3 = Struct_1(any(select(vec4<bool>(arg_0.a, var_1.a, true, false), select(vec4<bool>(true, false, var_1.a, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)], 11u)]), select(vec4<bool>(arg_0.a, var_0.a, arg_0.a, var_1.a), vec4<bool>(false, false, true, false), arg_0.a), false), !arg_0.a && arg_0.a)), var_1.b, -36228i);
    var_1 = var_0;
    return Struct_1(any(vec4<bool>(-25479i == -var_3.c, true, false & (var_0.a && var_1.a), _wgslsmith_mult_i32(0i, global1[_wgslsmith_index_u32(8777u, 32u)]) < 2147483647i)), _wgslsmith_sub_vec2_i32(countOneBits(-arg_0.b), _wgslsmith_sub_vec2_i32(var_1.b, var_0.b)), _wgslsmith_dot_vec2_i32(~countOneBits(-vec2<i32>(var_0.b.x, -30535i)), vec2<i32>(u_input.b, i32(-1i) * -1i)));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec3<bool> {
    let var_0 = arg_0;
    global0 = array<bool, 11>();
    let var_1 = vec2<u32>(firstLeadingBit(global4[_wgslsmith_index_u32(abs(1731u), 9u)]), ~global4[_wgslsmith_index_u32(~0u, 9u)] & global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~4270u, 9u)], 9u)]);
    var var_2 = func_2(Struct_1(true, vec2<i32>(u_input.b, ~1i), arg_0.c));
    let var_3 = var_0;
    return select(select(!vec3<bool>(all(vec2<bool>(false, var_0.a)), false, true), select(!(!vec3<bool>(true, var_2.a, var_0.a)), vec3<bool>(var_3.a, var_3.a | var_0.a, true), !(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 11u)], var_2.a, true))), true), vec3<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), -1000f, false)) != _wgslsmith_f_op_f32(sign(-420f)), arg_0.a, (firstTrailingBit(0u) < _wgslsmith_add_u32(var_1.x, var_1.x)) | var_2.a), func_2(Struct_1(!(606f == arg_1), func_2(func_2(Struct_1(false, arg_0.b, var_0.c))).b, min(arg_0.b.x, countOneBits(1i)))).a);
}

fn func_1() -> vec4<u32> {
    var var_0 = select(func_4(func_2(Struct_1(false, ~vec2<i32>(0i, u_input.c.x), -16013i ^ global1[_wgslsmith_index_u32(4294967295u, 32u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -303f, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 9u)], 11u)]))), _wgslsmith_f_op_f32(ceil(-1269f)))), vec3<bool>(func_2(func_2(Struct_1(false, u_input.c.wz, u_input.c.x))).a, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(39655u, 27743u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 9u)], 9u)]), vec3<u32>(global4[_wgslsmith_index_u32(0u, 9u)], 1u, 72769u)), 9u)]), ~(1u ^ global4[_wgslsmith_index_u32(0u, 9u)])), 11u)], global0[_wgslsmith_index_u32(39928u, 11u)]), true);
    global0 = array<bool, 11>();
    global4 = array<u32, 9>();
    var var_1 = ~(~_wgslsmith_mod_vec3_i32(u_input.c.zwx, _wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.a, -1i), u_input.c.wyz) & (vec3<i32>(u_input.a, -2147483647i, -2147483647i) & u_input.c.xzz)));
    var var_2 = ~func_2(func_2(func_2(Struct_1(false, vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(17265u, 9u)], 9u)], 32u)]), -2147483647i)))).b.x;
    return global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(1u, 9u)], 33754u), 9u)]), 9u)] | ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(37871u, 9u)], 9u)], 9u)], 78779u), 1u), 17u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_1(!global0[_wgslsmith_index_u32(firstTrailingBit(0u ^ global4[_wgslsmith_index_u32(0u, 9u)]), 11u)] == (true | any(vec3<bool>(global0[_wgslsmith_index_u32(30741u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(39150u, 11u)]))), _wgslsmith_mod_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(var_0.x, 32u)], u_input.a), ~u_input.c.zx), u_input.c.xx), firstLeadingBit(global1[_wgslsmith_index_u32(~var_0.x, 32u)]));
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -804f);
    let var_2 = !vec4<bool>(true, true, (true || (true | var_1.a)) && true, any(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global4[_wgslsmith_index_u32(var_0.x, 9u)], 23046u), 11u)], false || var_1.a, var_1.a, false || global0[_wgslsmith_index_u32(31707u, 11u)])));
    var_1 = func_2(Struct_1(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(var_0.x & 42060u, 0u), 11u)], -func_2(Struct_1(var_2.x, vec2<i32>(-23157i, u_input.c.x), -62382i)).b, -global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(23115u, 9u)], 32u)]));
    var var_3 = Struct_1(var_2.x, firstLeadingBit(vec2<i32>(global1[_wgslsmith_index_u32(~var_0.x ^ 4294967295u, 32u)], func_2(Struct_1(var_1.a, u_input.c.ww, global1[_wgslsmith_index_u32(1u, 32u)])).c)), select(10092i, 8266i & var_1.b.x, !(!all(var_2.yzz))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-831f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1556f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-400f))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(var_0.ww & vec2<u32>(var_0.x, 66670u)))));
}

