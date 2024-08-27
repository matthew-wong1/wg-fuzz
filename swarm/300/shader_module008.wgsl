struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 24>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(arg_0.a, arg_0.a)), vec2<f32>(1835f, -2535f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-241f, 396f)) + _wgslsmith_f_op_vec2_f32(arg_0.a + arg_0.a))), _wgslsmith_f_op_vec2_f32(select(arg_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a + arg_0.a) - vec2<f32>(834f, 342f)), vec2<bool>(true, true))))));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, 787f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1381f, arg_0.a.x)), vec2<bool>(any(vec3<bool>(false, true, false)), true))), vec2<f32>(-989f, var_0.a.x), vec2<bool>(true, true))));
    let var_1 = abs(vec4<i32>(u_input.e, _wgslsmith_div_i32(u_input.e, -2147483647i), arg_1, _wgslsmith_mult_i32(arg_2, -42128i) | ~u_input.e)) << (abs(~(~select(vec4<u32>(u_input.c, 67304u, 7300u, u_input.c), vec4<u32>(4294967295u, 5147u, 4294967295u, 38735u), vec4<bool>(true, true, false, true)))) % vec4<u32>(32u));
    global0 = array<vec2<u32>, 24>();
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a));
    return true || !(true && any(vec3<bool>(false, true, true)));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = vec4<bool>(true, true, true, true);
    let var_1 = vec2<bool>(var_0.x, (func_3(Struct_1(vec2<f32>(659f, -1884f)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.e, 34912i, -2147483647i)), -38232i ^ u_input.b) || any(select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(true, false, var_0.x, var_0.x), var_0))) && true);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1861f, 632f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-545f, -352f))), vec2<f32>(509f, -809f), !var_1)))));
    var var_3 = var_2.a;
    let var_4 = false;
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x * var_2.a.x))), _wgslsmith_f_op_f32(max(-1043f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x * var_3.x), -1000f)))));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1174f)))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1297f)), _wgslsmith_f_op_f32(-1403f * -1093f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-610f, -1347f))))));
    var var_2 = func_2(max(~(~(global0[_wgslsmith_index_u32(u_input.d, 24u)] ^ vec2<u32>(u_input.a, 14595u))), ~(~global0[_wgslsmith_index_u32(16659u, 24u)])));
    var_2 = Struct_1(var_2.a);
    var_1 = func_2(~(~vec2<u32>(u_input.a, 16366u)) ^ max(min(~global0[_wgslsmith_index_u32(42302u, 24u)], min(global0[_wgslsmith_index_u32(u_input.c, 24u)], global0[_wgslsmith_index_u32(u_input.c, 24u)])), ~(~vec2<u32>(u_input.c, u_input.a))));
    return all(vec2<bool>(false, 24803u == ~max(24724u, u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1();
    var var_1 = !any(vec3<bool>(true, true, true));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(974f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -308f))))));
    let var_3 = var_2;
    let var_4 = 2147483647i;
    let var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.a.x + var_2.a.x), _wgslsmith_f_op_f32(-var_2.a.x)))));
    global0 = array<vec2<u32>, 24>();
    var var_6 = !(!select(vec4<bool>(true, any(vec3<bool>(true, false, true)), true, false), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), false));
    var var_7 = ~abs(firstTrailingBit(firstTrailingBit(~vec4<i32>(-25509i, u_input.b, 1i, var_4))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~select(vec3<u32>(51971u, 4294967295u, 0u), vec3<u32>(u_input.d, 0u, u_input.d), false)) & firstLeadingBit(_wgslsmith_add_vec3_u32(min(vec3<u32>(u_input.c, 1u, 1u), vec3<u32>(13725u, 30318u, u_input.d)), ~vec3<u32>(u_input.a, u_input.c, 0u))), vec4<u32>(u_input.a, u_input.c, 32660u, (select(47336u, 0u, var_6.x) | 30946u) & u_input.c), 2147483647i, 4449u);
}

