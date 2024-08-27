struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(615f, -507f, 148f);

var<private> global1: array<i32, 18>;

var<private> global2: array<vec3<f32>, 23> = array<vec3<f32>, 23>(vec3<f32>(1063f, 239f, -1837f), vec3<f32>(-1546f, 1238f, 567f), vec3<f32>(2643f, 1000f, 769f), vec3<f32>(370f, 232f, 1152f), vec3<f32>(-1385f, 424f, 904f), vec3<f32>(1000f, -770f, 744f), vec3<f32>(-1518f, 1360f, -254f), vec3<f32>(1521f, -680f, 1000f), vec3<f32>(777f, -861f, 306f), vec3<f32>(-1502f, 1234f, -166f), vec3<f32>(454f, -1238f, -484f), vec3<f32>(1093f, 1494f, -468f), vec3<f32>(378f, -885f, 1000f), vec3<f32>(694f, -346f, -388f), vec3<f32>(1009f, 474f, -1740f), vec3<f32>(-1051f, -974f, -1542f), vec3<f32>(-522f, -1703f, 664f), vec3<f32>(-253f, -428f, -445f), vec3<f32>(-571f, -1335f, -1751f), vec3<f32>(1298f, -1648f, 386f), vec3<f32>(1888f, -168f, 139f), vec3<f32>(718f, 292f, 377f), vec3<f32>(2135f, 1421f, -272f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = Struct_1(abs(~_wgslsmith_clamp_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], 17098i, global1[_wgslsmith_index_u32(4294967295u, 18u)]), vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), vec3<i32>(14447i, global1[_wgslsmith_index_u32(u_input.c, 18u)], -1i)) & (vec3<i32>(-48745i, -2147483647i, u_input.b) | ~vec3<i32>(global1[_wgslsmith_index_u32(u_input.c, 18u)], global1[_wgslsmith_index_u32(0u, 18u)], -1054i))), vec3<f32>(1900f, global0.x, 192f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.xx) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -277f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -505f)))));
    global2 = array<vec3<f32>, 23>();
    var var_1 = var_0;
    var var_2 = vec3<i32>(_wgslsmith_mult_i32(reverseBits(firstLeadingBit(var_0.a.x | global1[_wgslsmith_index_u32(u_input.c, 18u)])), abs(countOneBits(_wgslsmith_clamp_i32(var_1.a.x, 31816i, var_0.a.x)))), -reverseBits(firstTrailingBit(~var_0.a.x)), _wgslsmith_sub_i32(~var_0.a.x, 1i));
    let var_3 = Struct_1(var_0.a, vec3<f32>(_wgslsmith_f_op_f32(ceil(-1129f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * var_1.c.x), -1000f), var_1.c);
    return 1565i;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_add_vec3_i32(~vec3<i32>(0i | global1[_wgslsmith_index_u32(u_input.c, 18u)], func_3(), u_input.a.x >> (u_input.c % 32u)), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-9339i, u_input.b, arg_2.a.x), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(0u, 18u)], -1298i)), vec3<i32>(arg_0.a.x, arg_2.a.x, 3429i)) ^ ~_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -15395i, -1i), vec3<i32>(arg_0.a.x, -2147483647i, global1[_wgslsmith_index_u32(u_input.c, 18u)]))), _wgslsmith_f_op_vec3_f32(select(global2[_wgslsmith_index_u32(reverseBits(min(~u_input.c, ~0u)), 23u)], _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, arg_2.c.x, arg_0.c.x)))), arg_1.x)), _wgslsmith_div_vec2_f32(arg_2.c, _wgslsmith_f_op_vec2_f32(-arg_2.b.xy)));
    global2 = array<vec3<f32>, 23>();
    return -619f;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(vec3<i32>(-4766i, u_input.a.x, _wgslsmith_div_i32(max(u_input.b, global1[_wgslsmith_index_u32(u_input.c, 18u)]) | -global1[_wgslsmith_index_u32(1u, 18u)], _wgslsmith_mod_i32(22499i, -u_input.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))), _wgslsmith_f_op_f32(min(1217f, _wgslsmith_f_op_f32(func_2(Struct_1(vec3<i32>(-41487i, u_input.a.x, u_input.a.x), global2[_wgslsmith_index_u32(36761u, 23u)], vec2<f32>(arg_1, arg_1)), vec4<bool>(true, false, false, false), Struct_1(vec3<i32>(-18984i, 0i, u_input.b), global2[_wgslsmith_index_u32(u_input.c, 23u)], global0.yx))))))), vec2<f32>(_wgslsmith_div_f32(213f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(step(arg_1, -2020f)))), -593f));
    let var_1 = vec4<u32>(u_input.c, 0u, ~select(~_wgslsmith_clamp_u32(u_input.c, 4294967295u, u_input.c), 1u, true), 21663u);
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(237f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1872f, global0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))))) * var_0.b);
    global1 = array<i32, 18>();
    var var_2 = vec3<u32>(0u, u_input.c, firstTrailingBit(reverseBits(min(var_1.x, ~var_1.x))));
    return Struct_1(vec3<i32>(countOneBits(global1[_wgslsmith_index_u32(var_2.x, 18u)]), arg_0, -_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.c, 18u)], global1[_wgslsmith_index_u32(var_2.x, 18u)])), _wgslsmith_f_op_vec3_f32(min(global2[_wgslsmith_index_u32(0u, 23u)], _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b) * _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, var_0.b.x, 1727f), vec3<f32>(2008f, arg_1, arg_1))))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(arg_1, global0.x), 227f))), _wgslsmith_f_op_vec2_f32(-var_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global1[_wgslsmith_index_u32(4294967295u, 18u)], -397f, select(-vec2<i32>(global1[_wgslsmith_index_u32(u_input.c, 18u)] ^ -2147483647i, u_input.a.x), min(~vec2<i32>(224i, global1[_wgslsmith_index_u32(53179u, 18u)]) | _wgslsmith_mod_vec2_i32(u_input.a, u_input.a), vec2<i32>(-u_input.b, -2147483647i)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)))));
    let var_1 = false;
    global2 = array<vec3<f32>, 23>();
    var var_2 = var_0.a.xx;
    global2 = array<vec3<f32>, 23>();
    global1 = array<i32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(0i, countOneBits(~1i)), -1456f, var_0.a.zy, global2[_wgslsmith_index_u32(firstTrailingBit(~(u_input.c >> (30958u % 32u))), 23u)]);
}

