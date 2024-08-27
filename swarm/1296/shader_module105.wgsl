struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(28568u, 0u, 78990u, 0u);

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<i32>(35732i, 2147483647i)), vec3<f32>(1108f, -583f, -988f), 1536f, vec3<i32>(2147483647i, 13232i, 0i));

var<private> global2: array<Struct_2, 28>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> f32 {
    global0 = array<u32, 4>();
    let var_0 = Struct_2(Struct_1(global1.a.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(466f, 1660f, 144f) - vec3<f32>(-1616f, -455f, -1000f)))))), global1.c, vec3<i32>(~global1.d.x, abs(~(-2147483647i)), ~_wgslsmith_sub_i32(~u_input.c.x, ~u_input.c.x)));
    global1 = Struct_2(Struct_1(vec2<i32>(var_0.a.a.x, ~(-27299i) >> (u_input.d.x % 32u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1304f)), -346f, _wgslsmith_f_op_f32(-var_0.b.x)), var_0.c, vec3<i32>(-2147483647i, -(u_input.c.x ^ 2147483647i) | u_input.a, var_0.d.x));
    var var_1 = Struct_1(vec2<i32>(var_0.a.a.x, -6903i));
    global2 = array<Struct_2, 28>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 972f)) + 2246f) + -1700f);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.c - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-2124f, global1.b.x))))), global1.b.x, _wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(277f - global1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1530f * global1.c)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-179f, global1.b.x, global1.c, -388f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-277f, 799f, global1.c, -561f), vec4<f32>(global1.c, global1.c, 691f, global1.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-846f, global1.c, global1.b.x, global1.b.x) + vec4<f32>(global1.b.x, 316f, -163f, 764f))))))));
    var_0 = vec4<f32>(global1.b.x, global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x - var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.x, -784f)), _wgslsmith_f_op_f32(func_2(vec3<bool>(false, false, false), true)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.c)) + global1.b.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) * -163f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-832f + -1677f)), _wgslsmith_f_op_f32(1925f + _wgslsmith_f_op_f32(min(-2328f, _wgslsmith_f_op_f32(ceil(-892f))))), _wgslsmith_f_op_f32(func_2(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), true)))));
    global0 = array<u32, 4>();
    var var_1 = -1114f;
    return global1.a;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>) -> u32 {
    global2 = array<Struct_2, 28>();
    global1 = global2[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(u_input.b.x, 1u)), 28u)];
    return ~countOneBits(0u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20357u, 4u)] | firstTrailingBit(~0u), 28u)];
    let var_0 = _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(max(u_input.d.x & global0[_wgslsmith_index_u32(func_3(func_1(), -2147483647i >= u_input.a, ~vec3<i32>(global1.d.x, global1.a.a.x, u_input.c.x)), 4u)], 8828u), 4u)], global0[_wgslsmith_index_u32(u_input.d.x, 4u)]);
    global0 = array<u32, 4>();
    var var_1 = select(!vec4<bool>(!(-1i <= u_input.c.x), !(global1.b.x >= global1.b.x), false, all(vec2<bool>(true, true))), !select(vec4<bool>(all(vec2<bool>(true, false)), 0u < u_input.d.x, true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), true), !any(vec2<bool>(false, true)));
    global0 = array<u32, 4>();
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global1.c, global1.b.x), _wgslsmith_f_op_f32(abs(global1.c)), -1000f))), _wgslsmith_f_op_vec3_f32(select(global1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(616f, 452f, 1326f)), _wgslsmith_f_op_vec3_f32(-global1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-275f * global1.b.x)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-782f))))));
    let var_3 = global1.a;
    var var_4 = func_3(Struct_1(u_input.c.yz), false, _wgslsmith_div_vec3_i32(reverseBits(_wgslsmith_mod_vec3_i32(~vec3<i32>(1i, 69351i, u_input.c.x), firstTrailingBit(global1.d))), abs(min(select(global1.d, u_input.c, false), global1.d))));
    let x = u_input.a;
    s_output = StorageBuffer(252f, reverseBits(global0[_wgslsmith_index_u32(max(70598u, ~u_input.d.x), 4u)]), vec4<i32>(-1i) * -vec4<i32>(0i, countOneBits(u_input.c.x), global1.d.x, ~(-1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(select(var_1.yyx, vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.xwy), true)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1681f - var_2.x), _wgslsmith_f_op_f32(min(global1.b.x, global1.c))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))), vec2<i32>(1i, global1.d.x));
}

