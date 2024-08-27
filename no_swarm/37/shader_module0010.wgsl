struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 12>;

var<private> global1: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(0i, true, Struct_1(0i, -1000f, vec4<i32>(70000i, 2147483647i, i32(-2147483648), 22258i))), Struct_3(-17976i, true, Struct_1(-1i, 310f, vec4<i32>(3738i, 1i, 52220i, 1i))), Struct_3(14508i, false, Struct_1(97i, 1000f, vec4<i32>(-9939i, 22646i, 0i, 2147483647i))), Struct_3(2147483647i, false, Struct_1(-6504i, -1430f, vec4<i32>(1i, 0i, -27765i, 0i))), Struct_3(-1i, true, Struct_1(i32(-2147483648), 1000f, vec4<i32>(-2431i, -16425i, 12349i, 0i))), Struct_3(0i, false, Struct_1(-1461i, -652f, vec4<i32>(6714i, 0i, 0i, 66164i))), Struct_3(-1i, false, Struct_1(-1i, -1409f, vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, -15959i))), Struct_3(-49211i, true, Struct_1(-23118i, 201f, vec4<i32>(1i, 26423i, 2147483647i, 1i))), Struct_3(28095i, true, Struct_1(1i, -1221f, vec4<i32>(0i, i32(-2147483648), 0i, 6236i))), Struct_3(-24570i, false, Struct_1(-1380i, -149f, vec4<i32>(0i, 69787i, i32(-2147483648), 26685i))), Struct_3(-38081i, false, Struct_1(2083i, -1049f, vec4<i32>(15959i, -33615i, i32(-2147483648), 2147483647i))), Struct_3(52969i, false, Struct_1(-10974i, -470f, vec4<i32>(-6176i, 36408i, -1i, -1i))), Struct_3(10276i, true, Struct_1(-5762i, -1070f, vec4<i32>(0i, 0i, 2147483647i, 1i))), Struct_3(73892i, false, Struct_1(14597i, -695f, vec4<i32>(2147483647i, 2147483647i, 7713i, -10679i))), Struct_3(-24728i, false, Struct_1(29898i, 957f, vec4<i32>(-1i, -1i, -49850i, -1i))), Struct_3(-40729i, true, Struct_1(-1i, 450f, vec4<i32>(1i, -1i, i32(-2147483648), 6524i))));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32) -> Struct_5 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 309f, 2524f, -524f))))), _wgslsmith_f_op_vec4_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.zzz, vec3<u32>(arg_1, 4294967295u, 0u)), 12u)]))))));
    global1 = array<Struct_3, 16>();
    global0 = array<vec4<f32>, 12>();
    let var_1 = select(select(!select(arg_0, arg_0, arg_0), select(select(vec3<bool>(false, true, true), vec3<bool>(arg_0.x, false, true), arg_0.x && arg_0.x), select(vec3<bool>(arg_0.x, arg_0.x, false), select(arg_0, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), true), arg_0.x && arg_0.x), select(select(vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, true, false)), !arg_0, arg_0)), arg_0.x), arg_0, true);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1308f) * var_0.a.x);
    return var_0;
}

fn func_3(arg_0: i32, arg_1: Struct_5) -> vec4<f32> {
    var var_0 = vec2<i32>(~0i, arg_0);
    global1 = array<Struct_3, 16>();
    var_0 = countOneBits(-vec2<i32>(var_0.x, 1i));
    let var_1 = arg_1;
    global1 = array<Struct_3, 16>();
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_1.a.x, -1094f, var_1.a.x)) + vec4<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, -194f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -204f), _wgslsmith_f_op_f32(-var_1.a.x), -654f, _wgslsmith_f_op_f32(-var_1.a.x))))), vec4<f32>(var_1.a.x, -1217f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.a.x, -1392f)) - _wgslsmith_f_op_f32(-var_1.a.x)) - var_1.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -671f)))));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-565f, _wgslsmith_div_f32(-619f, -1000f), _wgslsmith_f_op_f32(-661f - 1353f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-835f, 1265f, 1817f) - vec3<f32>(241f, 733f, -902f))))));
    global0 = array<vec4<f32>, 12>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(9501i, func_2(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), all(vec4<bool>(true, false, true, false))), u_input.a.x))) * _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(0u, 12u)]));
    let var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 4294967295u) | u_input.a.x, 12u)] * global0[_wgslsmith_index_u32(u_input.a.x, 12u)])));
    global0 = array<vec4<f32>, 12>();
    return _wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, ~0u), abs(u_input.a.xw << (_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 7135u), vec2<u32>(u_input.a.x, 1u)) % vec2<u32>(32u)))));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1489f))));
    global1 = array<Struct_3, 16>();
    global0 = array<vec4<f32>, 12>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b, 260f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-421f, arg_2.b), vec2<f32>(arg_2.b, 1201f), arg_3)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2.b, -864f)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b, arg_2.b)))))));
    var var_2 = arg_3;
    return reverseBits(_wgslsmith_add_i32(~_wgslsmith_mod_i32(-1i, arg_2.c.x), -10647i)) >> (_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 1u, 4294967295u, 31064u), vec4<u32>(16165u, 1u, arg_1, u_input.a.x)) | _wgslsmith_clamp_vec4_u32(u_input.a, _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, arg_0, arg_0), vec4<u32>(arg_1, 33499u, 13944u, arg_0)), u_input.a), min(u_input.a, ~max(vec4<u32>(4294967295u, 1u, arg_0, 26343u), u_input.a))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 12>();
    var var_0 = firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(23884i, -12513i), vec2<i32>(46563i, -5550i)), func_4(func_1(), abs(31303u), Struct_1(1i, -535f, vec4<i32>(-1i, -1i, -7496i, -9746i)), true), ~1i), ~vec3<i32>(1i, 1i, 1i)));
    let var_1 = Struct_1(-firstTrailingBit(_wgslsmith_add_i32(-2147483647i, var_0.x) & var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(989f, 1593f) * _wgslsmith_f_op_f32(min(267f, 932f))) - _wgslsmith_f_op_f32(floor(-480f))) - 1212f), -abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -11694i, var_0.x, -2147483647i), select(vec4<i32>(-31817i, var_0.x, var_0.x, var_0.x), vec4<i32>(var_0.x, -6000i, var_0.x, var_0.x), vec4<bool>(true, true, true, false)))));
    let var_2 = -func_4(1u, abs(0u | u_input.a.x), var_1, !any(vec4<bool>(true, false, false, true))) == 2147483647i;
    var var_3 = min(u_input.a.x, ~(~u_input.a.x));
    var var_4 = select(select(!(!select(vec3<bool>(true, var_2, var_2), vec3<bool>(true, false, false), vec3<bool>(true, false, var_2))), select(select(vec3<bool>(true, var_2, var_2), vec3<bool>(true, var_2, var_2), !var_2), !select(vec3<bool>(var_2, var_2, false), vec3<bool>(var_2, var_2, false), false), false), vec3<bool>(any(!vec4<bool>(true, false, var_2, var_2)), var_2, var_2)), !select(vec3<bool>(true, all(vec3<bool>(var_2, var_2, false)), any(vec2<bool>(true, var_2))), vec3<bool>(all(vec2<bool>(false, true)), !var_2, true), vec3<bool>(var_2, any(vec2<bool>(true, var_2)), select(true, true, var_2))), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-386f))) - 555f), var_1.b, _wgslsmith_f_op_f32(202f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b), var_1.b, false)))), min(~(-53216i), 2147483647i));
}

