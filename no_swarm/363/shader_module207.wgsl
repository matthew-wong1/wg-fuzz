struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<u32>) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(283f, -226f, arg_0.c, -589f) + vec4<f32>(arg_0.c, arg_0.c, -1135f, arg_0.c)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, -176f, arg_0.c, arg_0.c))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, -382f, arg_0.c, arg_0.c) + _wgslsmith_f_op_vec4_f32(vec4<f32>(398f, 528f, 1397f, arg_0.c) + vec4<f32>(arg_0.c, -1000f, 1023f, -2468f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-357f - -498f), _wgslsmith_f_op_f32(floor(arg_0.c)), arg_0.c, _wgslsmith_div_f32(-1007f, arg_0.c)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-569f, arg_0.c, -1311f, 1542f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(357f, 1613f, -1553f, arg_0.c))))), true);
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, var_0.a.x, arg_0.c) * vec3<f32>(var_0.a.x, -1181f, -1101f))))), _wgslsmith_f_op_vec3_f32(exp2(var_0.a.wwx)), vec3<bool>(any(vec4<bool>(true, true, true, true)), all(vec2<bool>(var_0.b, var_0.b)), !(var_0.b & var_0.b)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a.x, var_0.a.x)) + -835f), _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(ceil(var_0.a.x))), _wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(-arg_0.c))), _wgslsmith_f_op_vec3_f32(floor(var_0.a.wyx)))));
    global0 = array<i32, 23>();
    let var_2 = Struct_4(!vec2<bool>(true && !var_0.b, all(!vec3<bool>(var_0.b, false, false))));
    global0 = array<i32, 23>();
    return 0u;
}

fn func_2() -> Struct_2 {
    global0 = array<i32, 23>();
    var var_0 = Struct_4(vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), true));
    let var_1 = vec4<bool>(true, false, var_0.a.x, (_wgslsmith_sub_u32(_wgslsmith_sub_u32(0u, u_input.a.x), func_3(Struct_1(40580i, u_input.c, 472f), vec4<i32>(global0[_wgslsmith_index_u32(79793u, 23u)], 1i, 2147483647i, u_input.b), vec3<u32>(u_input.a.x, u_input.a.x, u_input.c))) << (u_input.c % 32u)) < 1u);
    global0 = array<i32, 23>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(117f, -2036f, -437f))), vec3<f32>(-1386f, -263f, 257f), !vec3<bool>(var_1.x, true, true))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-762f + 1374f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-856f + 744f) + -804f), -382f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-466f, 1659f, 801f)))));
    return Struct_2(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -221f) * _wgslsmith_f_op_f32(-var_2.x)) + -883f)), Struct_1(-12720i, _wgslsmith_sub_u32(~reverseBits(u_input.a.x), ~_wgslsmith_div_u32(0u, 39052u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-110f, var_2.x)) + 1f))), !(!select(select(vec2<bool>(var_0.a.x, var_0.a.x), var_0.a, var_0.a.x), var_1.zy, true)));
}

fn func_1() -> f32 {
    let var_0 = func_2();
    global0 = array<i32, 23>();
    let var_1 = Struct_3(vec4<f32>(var_0.c.c, 387f, var_0.c.c, _wgslsmith_f_op_f32(max(1092f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b)))))), var_0.d.x);
    var var_2 = var_0.b < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -249f)))));
    return _wgslsmith_f_op_f32(step(var_1.a.x, 1657f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-124f, -474f)) * -1404f))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -418f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2205f)) + -905f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-510f + 611f) + _wgslsmith_f_op_f32(1000f * 281f)))));
    let var_1 = func_2();
    global0 = array<i32, 23>();
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(740f, var_1.b), vec2<f32>(-361f, var_1.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-997f, var_0.x), vec2<f32>(var_1.b, -171f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, 137f) * vec2<f32>(1460f, var_1.c.c))), select(var_1.d, !vec2<bool>(false, var_1.d.x), !var_1.d))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -705f), _wgslsmith_f_op_f32(sign(176f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(865f, -1855f) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.c.c, -1242f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-864f, var_0.x)))))));
    var var_2 = vec3<bool>(!(-2317f > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -491f), _wgslsmith_f_op_f32(-var_0.x), var_1.d.x))), true & (select(var_1.d.x, false, !var_1.d.x) == true), (_wgslsmith_add_i32(9463i, var_1.c.a >> (u_input.c % 32u)) < 82640i) && var_1.d.x);
    global0 = array<i32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.d.x), firstTrailingBit(~abs(~0u)));
}

