struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(true, false, true)));

var<private> global2: Struct_2 = Struct_2(vec3<bool>(true, false, true));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32((1u << (~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 7502u, 84212u), vec3<u32>(75060u, 1u, 4294967295u)) % 32u)) & reverseBits(~0u), ~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(65807u, 1u, 29197u, 0u), vec4<u32>(4294967295u, 4294967295u, 22903u, 0u)) >> (814u % 32u)), _wgslsmith_mod_u32(reverseBits(~1u), max(firstTrailingBit(_wgslsmith_sub_u32(28346u, 0u)), select(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(1u, 31u)])))), 16u)];
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-841f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1904f), -1440f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1371f))))))));
    let var_1 = select(vec3<bool>(!global2.a.x, true, false), !select(!vec3<bool>(global2.a.x, global2.a.x, true), !global2.a, true), !(true && global2.a.x));
    global0 = array<bool, 31>();
    global2 = Struct_2(!(!(!(!var_1))));
    return _wgslsmith_clamp_u32(~(~min(23874u, 15914u)) << (_wgslsmith_sub_u32(abs(select(40223u, 0u, false)), 45836u) % 32u), ~(~46370u), ~1u);
}

fn func_2() -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(reverseBits(func_3()), 16u)];
    let var_1 = global0[_wgslsmith_index_u32(~54585u, 31u)];
    var var_2 = global1[_wgslsmith_index_u32(~func_3(), 16u)];
    let var_3 = Struct_1(true, ~(~firstTrailingBit(~vec3<u32>(19982u, 43542u, 0u))), max(vec2<u32>(1u, 1u), ~(~vec2<u32>(4294967295u, 65216u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)))), vec3<u32>((select(0u, 7461u, var_2.a.x) | 1u) & (abs(4294967295u) >> (1u % 32u)), 17615u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(39003u, 44622u, 43123u, 1u), vec4<u32>(0u, 0u, 10465u, 4294967295u)))), true);
    let var_4 = Struct_2(!vec3<bool>(global2.a.x, global0[_wgslsmith_index_u32(var_3.b.x, 31u)], !all(var_0.a.xx)));
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> u32 {
    let var_0 = ~_wgslsmith_sub_u32(arg_2, 4294967295u);
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -484f)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-919f * _wgslsmith_f_op_f32(-var_2))))));
    var var_4 = var_1.b;
    return 51048u;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: u32) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-480f, 1000f, 614f) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2101f, -1000f, -1020f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-519f, 1100f, 580f) + _wgslsmith_div_vec3_f32(vec3<f32>(-102f, 1214f, 1365f), vec3<f32>(248f, 1562f, -396f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1858f, -1957f, 590f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(927f, -283f, -1338f)))), vec3<f32>(1f, _wgslsmith_f_op_f32(-1125f * 1232f), 1605f))));
    let var_1 = var_0;
    let var_2 = !(!vec4<bool>(false || !global2.a.x, global2.a.x, all(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_2, 31u)])), global0[_wgslsmith_index_u32(4294967295u, 31u)]));
    global2 = Struct_2(var_2.www);
    global1 = array<Struct_2, 16>();
    return Struct_2(select(vec3<bool>(302f >= var_0.x, global2.a.x || !global2.a.x, (var_2.x || false) & true), global2.a, var_2.x));
}

fn func_1(arg_0: vec4<i32>) -> vec3<i32> {
    var var_0 = func_5(vec3<u32>(~min(~78798u, ~4294967295u), ~firstTrailingBit(~4294967295u), 1u), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, i32(-1i) * -11703i), arg_0.x, _wgslsmith_mult_i32(max(u_input.a.x, -16867i), u_input.a.x)), arg_0.zxy), func_4(func_2(), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(25509u, 1u), 16u)], _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), reverseBits(vec3<u32>(4294967295u, 1695u, 86246u))), ~(~50186u), ~6204u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 32320u), vec2<u32>(53761u, 23207u)))));
    var var_1 = func_2();
    let var_2 = _wgslsmith_mod_vec3_u32(abs(var_1.b) & var_1.d, var_1.b);
    var var_3 = Struct_2(!select(vec3<bool>(!global0[_wgslsmith_index_u32(1u, 31u)], true, global2.a.x), select(global2.a, select(var_0.a, global2.a, global2.a), vec3<bool>(true, true, true)), func_5(vec3<u32>(var_1.d.x, 0u, 1u) ^ var_1.b, vec3<i32>(2015i, -2147483647i, 13796i), var_2.x).a));
    var_1 = Struct_1(select(true, true, false), ~func_2().d, var_2.yy, abs(vec3<u32>(42814u, var_2.x, 70492u)) ^ func_2().b, global2.a.x);
    return u_input.a;
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1257f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -487f)))));
    global0 = array<bool, 31>();
    var_0 = -1625f;
    var_0 = 2496f;
    var var_1 = vec3<i32>(~(-u_input.a.x), -19351i, arg_0.x);
    return func_5(vec3<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2, 18569u, 0u, arg_2), ~vec4<u32>(arg_2, arg_2, 51719u, arg_2)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(28940u, arg_2)), ~vec2<u32>(arg_2, 29305u)), ~_wgslsmith_sub_u32(17377u, 1u)), func_3()), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(var_1.x, -2147483647i, var_1.x), ~var_1.x, -2147483647i) & arg_0, _wgslsmith_div_vec3_i32(-countOneBits(u_input.a), abs(arg_0)), func_1(vec4<i32>(12142i, var_1.x >> (arg_2 % 32u), ~(-42799i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_0.x), vec2<i32>(0i, var_1.x))))), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_6(-(-func_1(vec4<i32>(2147483647i, -13151i, 5468i, u_input.a.x)) | vec3<i32>(_wgslsmith_div_i32(51828i, u_input.a.x), -1i, ~u_input.a.x)), global1[_wgslsmith_index_u32(87435u, 16u)], firstLeadingBit(countOneBits(2252u)));
    global0 = array<bool, 31>();
    global2 = func_6(_wgslsmith_mod_vec3_i32(u_input.a, u_input.a), Struct_2(vec3<bool>(true, true, u_input.a.x > -50010i)), ~select(~_wgslsmith_mult_u32(37420u, 83457u), 1u, global0[_wgslsmith_index_u32(49927u, 31u)]));
    global1 = array<Struct_2, 16>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -217f), -1000f)), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1024f - -508f), _wgslsmith_div_f32(-1164f, -793f))), _wgslsmith_f_op_f32(f32(-1f) * -2457f))));
    let var_1 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, 1000f, 952f, u_input.a);
}

