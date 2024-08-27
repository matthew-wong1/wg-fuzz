struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25> = array<i32, 25>(-1i, 0i, 1i, -61042i, 3953i, 48461i, -9738i, -19353i, 1i, 37627i, 16301i, -46883i, 29384i, 2147483647i, 6040i, 1i, 2147483647i, 2147483647i, i32(-2147483648), 11611i, 0i, i32(-2147483648), -42692i, -1i, -4599i);

var<private> global1: vec2<f32>;

var<private> global2: vec4<u32>;

var<private> global3: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(-359f, 541f, -246f, 880f), vec4<f32>(-149f, 246f, 898f, 2393f), vec4<f32>(564f, 613f, -825f, -1028f), vec4<f32>(1999f, -178f, 617f, -241f), vec4<f32>(1073f, 459f, 647f, -1102f), vec4<f32>(-1766f, -600f, 745f, -1750f), vec4<f32>(-271f, -837f, -345f, 1000f), vec4<f32>(-1435f, 422f, -424f, -900f), vec4<f32>(-1000f, 1464f, 1071f, 208f), vec4<f32>(2110f, 570f, -449f, 1248f), vec4<f32>(926f, 819f, 809f, -1399f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> vec2<f32> {
    global1 = _wgslsmith_f_op_vec2_f32(-arg_2.a.zw);
    global1 = arg_2.a.yx;
    let var_0 = arg_1;
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1327f + arg_2.a.x), _wgslsmith_f_op_f32(-global1.x)), vec2<f32>(_wgslsmith_f_op_f32(-1449f - -307f), -1273f))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = arg_2;
    global1 = vec2<f32>(1593f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(482f + global1.x), global1.x)))));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(firstLeadingBit(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(21205u, 25u)], 17807i)) >> (u_input.d.x % 32u), Struct_1(vec3<bool>(false | var_0.a.x, select(var_0.a.x, false, true), arg_2.a.x)), Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(global3[_wgslsmith_index_u32(1u, 11u)], vec4<f32>(global1.x, global1.x, global1.x, -1744f)))))))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1431f, 1525f) + vec2<f32>(1093f, global1.x))), vec2<f32>(_wgslsmith_f_op_f32(global1.x + 567f), _wgslsmith_f_op_f32(floor(-1000f)))))));
    var var_1 = arg_2.a.x;
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x))), global1.x, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x))));
    return var_2;
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: i32) -> vec2<bool> {
    global0 = array<i32, 25>();
    let var_0 = 25805i;
    let var_1 = func_2(max(-(~vec3<i32>(58733i, u_input.e, 21646i) | (vec3<i32>(u_input.a, -1i, 2147483647i) << (vec3<u32>(4294967295u, arg_0, 4294967295u) % vec3<u32>(32u)))), min(vec3<i32>(66167i, -var_0, _wgslsmith_div_i32(20875i, var_0)), _wgslsmith_div_vec3_i32(abs(vec3<i32>(var_0, arg_2, -29264i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], -5178i, global0[_wgslsmith_index_u32(global2.x, 25u)]), vec3<i32>(-1i, 50379i, 0i), vec3<i32>(-29156i, global0[_wgslsmith_index_u32(u_input.d.x, 25u)], var_0))))), vec3<i32>(_wgslsmith_mod_i32(-58032i, abs(select(19555i, -1i, arg_1.x))), 31687i, arg_2), Struct_1(select(vec3<bool>(false, all(arg_1), 49537u == arg_0), vec3<bool>(arg_1.x, all(vec4<bool>(arg_1.x, true, false, true)), !arg_1.x), vec3<bool>(any(vec2<bool>(false, arg_1.x)), false, select(false, true, arg_1.x)))));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_div_i32(u_input.b, ~arg_2), Struct_1(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), var_1)).x, global1.x)));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(ceil(global1.x)));
    return select(!(!(!select(arg_1, arg_1, true))), arg_1, arg_1.x);
}

fn func_4(arg_0: vec2<bool>) -> Struct_2 {
    return func_2(-(~_wgslsmith_mult_vec3_i32(~vec3<i32>(61926i, global0[_wgslsmith_index_u32(global2.x, 25u)], global0[_wgslsmith_index_u32(u_input.c, 25u)]), ~vec3<i32>(-64010i, 7026i, u_input.a))), abs(min(_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.e, 33308i, 1i), -vec3<i32>(u_input.b, 26105i, -13680i), vec3<i32>(u_input.e, 0i, global0[_wgslsmith_index_u32(u_input.c, 25u)]) ^ vec3<i32>(-18102i, global0[_wgslsmith_index_u32(14298u, 25u)], u_input.b)), -vec3<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 25u)], u_input.e, u_input.a))), Struct_1(vec3<bool>(true, arg_0.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1123f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, _wgslsmith_f_op_f32(trunc(824f))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) + vec2<f32>(global1.x, 812f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))))))));
    global0 = array<i32, 25>();
    let var_0 = func_4(vec2<bool>(select(all(func_1(14056u, vec2<bool>(true, false), global0[_wgslsmith_index_u32(42429u, 25u)])), global1.x == 450f, 753f != _wgslsmith_f_op_f32(-global1.x)), !(any(vec2<bool>(false, false)) || all(vec3<bool>(false, true, false)))));
    let var_1 = var_0;
    let var_2 = _wgslsmith_mod_u32(u_input.c, ~(firstTrailingBit(u_input.c) | firstTrailingBit(0u)) | _wgslsmith_mult_u32(0u, 1u));
    let var_3 = vec3<bool>(false && !(!select(false, true, true)), any(vec3<bool>(false && all(vec3<bool>(true, false, false)), true, any(vec2<bool>(false, true)))), !(((29923u << (u_input.d.x % 32u)) == _wgslsmith_mod_u32(global2.x, 5157u)) && true));
    global0 = array<i32, 25>();
    var var_4 = !vec4<bool>(false, false, all(select(!vec4<bool>(var_3.x, false, false, false), vec4<bool>(true, false, false, false), var_0.a.x < 1401f)), all(select(vec2<bool>(var_3.x, var_3.x), !var_3.xx, var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, u_input.a, ~(~countOneBits(~vec3<u32>(6261u, 44003u, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)));
}

