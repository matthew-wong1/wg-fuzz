struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: Struct_2 = Struct_2(Struct_1(-13840i), 71715u, vec2<u32>(41601u, 1u), vec2<f32>(-429f, -1000f));

var<private> global2: array<f32, 2>;

var<private> global3: Struct_1 = Struct_1(1i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec3<f32>, arg_3: f32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_mod_i32(reverseBits(_wgslsmith_sub_i32(global1.a.a, arg_0) | _wgslsmith_div_i32(global1.a.a, arg_0)), -1i ^ global1.a.a));
    var var_1 = global2[_wgslsmith_index_u32(~0u & (min(_wgslsmith_div_u32(_wgslsmith_sub_u32(global1.b, u_input.b.x), 5685u), u_input.b.x) ^ 1u), 2u)];
    global0 = 13358u;
    let var_2 = var_0;
    let var_3 = Struct_1(-41950i);
    return min(_wgslsmith_mod_u32(u_input.b.x ^ _wgslsmith_dot_vec2_u32(abs(vec2<u32>(global1.c.x, 2023u)), reverseBits(vec2<u32>(81835u, global1.c.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.c.x, u_input.b.x, 0u) & vec4<u32>(1u, 0u, 48702u, global1.b), _wgslsmith_add_vec4_u32(vec4<u32>(261u, 24695u, global1.c.x, u_input.b.x), vec4<u32>(1u, 65880u, u_input.b.x, 0u))) | global1.c.x), 4294967295u);
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_2(Struct_1(-firstTrailingBit(~u_input.a)), min(countOneBits(func_3(-u_input.a, any(vec3<bool>(true, true, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-871f, global2[_wgslsmith_index_u32(u_input.b.x, 2u)], 1231f)), _wgslsmith_f_op_f32(-299f - -1047f))), 4294967295u), global1.c, _wgslsmith_f_op_vec2_f32(-global1.d));
    global3 = Struct_1(2147483647i);
    global0 = ~(~_wgslsmith_sub_u32(1u, u_input.b.x));
    global2 = array<f32, 2>();
    global0 = reverseBits(~global1.b);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1072f, var_0.d.x, global1.d.x), vec3<f32>(global1.d.x, global2[_wgslsmith_index_u32(u_input.b.x, 2u)], var_0.d.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.d.x, global2[_wgslsmith_index_u32(23034u, 2u)], global2[_wgslsmith_index_u32(0u, 2u)]))) * vec3<f32>(493f, -1630f, _wgslsmith_f_op_f32(var_0.d.x * global1.d.x)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(715f, global1.d.x, global2[_wgslsmith_index_u32(global1.c.x, 2u)]) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 2u)], global2[_wgslsmith_index_u32(u_input.b.x, 2u)], 628f) + vec3<f32>(-284f, global1.d.x, 808f)))))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<f32>) -> vec2<bool> {
    let var_0 = abs(global1.b);
    let var_1 = arg_1.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2()))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.x, arg_1.x, global1.d.x) - _wgslsmith_f_op_vec3_f32(arg_1.zxz + arg_1.wzx))))));
    let var_3 = arg_0.x;
    var var_4 = global1.a;
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~select(firstLeadingBit(~vec3<u32>(1u, 54923u, 1u)), ~(~vec3<u32>(u_input.b.x, global1.b, global1.c.x)), all(vec2<bool>(true, true))));
    let var_1 = !(!func_1(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, global1.d.x, global1.d.x, -468f) + vec4<f32>(global2[_wgslsmith_index_u32(global1.b, 2u)], 693f, 1104f, -2209f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-231f, global1.d.x, global2[_wgslsmith_index_u32(93523u, 2u)], global1.d.x))))));
    var var_2 = reverseBits(min(~global1.c, u_input.b));
    global2 = array<f32, 2>();
    let var_3 = Struct_1(global1.a.a);
    let var_4 = Struct_2(global1.a, u_input.b.x, u_input.b, _wgslsmith_f_op_vec2_f32(global1.d + _wgslsmith_f_op_vec2_f32(trunc(global1.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1362f, -874f, -808f))))), _wgslsmith_add_vec3_i32(abs(-vec3<i32>(u_input.a, global1.a.a, global1.a.a)), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(global3.a, global3.a), _wgslsmith_mod_i32(global1.a.a, 1i)), -2147483647i << (u_input.b.x % 32u), _wgslsmith_div_i32(~global3.a, reverseBits(33534i)))), var_3.a, _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(var_2.x, 2u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(global1.b, 2u)], global2[_wgslsmith_index_u32(global1.b, 2u)]), _wgslsmith_f_op_f32(-429f + -477f))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 0u), 2u)], false))));
}

