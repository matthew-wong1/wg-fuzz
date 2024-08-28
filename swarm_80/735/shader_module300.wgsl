struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<bool>,
    e: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: Struct_2,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(-34553i, -1i), vec2<i32>(46725i, 2147483647i), vec2<i32>(-68271i, 2147483647i), vec2<i32>(25160i, -11061i), vec2<i32>(7176i, 13979i), vec2<i32>(-25008i, -1i), vec2<i32>(-8711i, 23269i), vec2<i32>(30311i, -40090i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(734i, 2147483647i), vec2<i32>(1i, 1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(41203i, 2147483647i), vec2<i32>(-2286i, 1479i), vec2<i32>(i32(-2147483648), 11013i));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: bool) -> i32 {
    let var_0 = Struct_3(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1, abs(u_input.b), 0i), min(vec3<i32>(arg_1, arg_1, arg_1) ^ vec3<i32>(u_input.b, -1i, -52286i), ~vec3<i32>(u_input.b, -1i, arg_1)))), vec3<bool>(!arg_2, arg_2, true), Struct_2(~(~(~vec3<u32>(u_input.a.x, u_input.a.x, 38888u))), vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1240f)))), _wgslsmith_f_op_f32(floor(arg_0.x))), Struct_1(select(!vec3<bool>(true, arg_2, true), vec3<bool>(arg_2, arg_2, true), true)), !select(select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(false, true, false), vec3<bool>(arg_2, arg_2, arg_2)), vec3<bool>(true, false, arg_2), select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(false, arg_2, arg_2), false)), arg_0.x), abs(i32(-1i) * -_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], vec2<i32>(-3751i, arg_1))), Struct_2(reverseBits(countOneBits(~vec3<u32>(85980u, 4294967295u, u_input.a.x))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_0.x, arg_0.x), -1846f, _wgslsmith_f_op_f32(f32(-1f) * -301f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-817f, arg_0.x, arg_0.x))), Struct_1(select(!vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, arg_2, arg_2), any(vec4<bool>(true, arg_2, arg_2, false)))), vec3<bool>(u_input.b <= reverseBits(arg_1), any(!vec3<bool>(arg_2, false, false)), false), _wgslsmith_f_op_f32(-arg_0.x)));
    var var_1 = Struct_2(~vec3<u32>(min(~21891u, ~u_input.a.x), _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a.x, var_0.c.a.x), ~15669u, 8667u), ~var_0.c.a.x), _wgslsmith_f_op_vec3_f32(var_0.c.b * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.e) * 709f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * var_0.e.b.x) * _wgslsmith_f_op_f32(arg_0.x + -163f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_0.e.b.x, 464f)))))), var_0.e.c, !var_0.e.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -289f))) - _wgslsmith_f_op_f32(select(214f, _wgslsmith_f_op_f32(abs(-916f)), 35269u != u_input.a.x))), (var_0.a.x ^ u_input.b) >= _wgslsmith_mod_i32(22774i, u_input.b << (var_0.c.a.x % 32u)))));
    let var_2 = Struct_1(!select(select(select(var_0.e.c.a, var_1.d, vec3<bool>(var_0.c.d.x, true, true)), var_0.e.c.a, select(var_0.c.c.a, var_1.c.a, vec3<bool>(var_0.b.x, false, true))), var_1.d, vec3<bool>(true, var_0.b.x, var_0.b.x)));
    var var_3 = false;
    let var_4 = !(!vec2<bool>(false, !var_2.a.x));
    return arg_1;
}

fn func_2() -> u32 {
    global0 = array<vec2<i32>, 15>();
    var var_0 = Struct_3(vec3<i32>(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1358f, -695f) + vec2<f32>(100f, 1027f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(823f, 686f) + vec2<f32>(1000f, -376f))), _wgslsmith_clamp_i32(~(-2147483647i), u_input.b, 27602i), true), -(~u_input.b), u_input.b), vec3<bool>(!(!(u_input.a.x == 0u)), false, true), Struct_2(abs(firstTrailingBit(countOneBits(vec3<u32>(10444u, 4294967295u, 0u)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(568f, 1749f, -212f), vec3<f32>(1277f, 375f, 1758f), vec3<bool>(true, true, false))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(293f, -1751f, -540f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1031f, -488f, -1256f), vec3<f32>(-169f, -424f, 1539f)))))), Struct_1(vec3<bool>(true, true, true)), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), -861f), 2147483647i, Struct_2(vec3<u32>((1u << (u_input.a.x % 32u)) >> (_wgslsmith_mod_u32(u_input.a.x, 23776u) % 32u), 0u, ~1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1591f, -326f, 352f), vec3<f32>(700f, 1553f, -396f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-858f, -452f, 154f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1106f, 1001f, 942f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-810f, 1041f, -1000f), vec3<f32>(955f, 1000f, 2652f))))), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, false, true, true)))), vec3<bool>(true, true, u_input.a.x != 29429u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1172f - -834f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - 1082f)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.c.b.x)) * _wgslsmith_f_op_f32(exp2(1f))), 420f);
    let var_2 = firstLeadingBit(var_0.c.a.x);
    var var_3 = _wgslsmith_clamp_i32(0i << (1u % 32u), abs(var_0.a.x), _wgslsmith_div_i32(-2147483647i, -((-34770i ^ u_input.b) >> (select(1u, var_2, true) % 32u))));
    return ~_wgslsmith_dot_vec4_u32(vec4<u32>(14961u, 1u, 67382u, u_input.a.x) << (_wgslsmith_clamp_vec4_u32(select(vec4<u32>(0u, var_0.e.a.x, var_0.c.a.x, var_2), vec4<u32>(42442u, 15658u, 0u, 1434u), vec4<bool>(true, var_0.c.c.a.x, false, false)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 18651u, 0u, var_2), vec4<u32>(var_0.e.a.x, var_2, var_2, 4294967295u), vec4<u32>(var_0.c.a.x, 38770u, var_0.e.a.x, 1u)), vec4<u32>(70116u, var_0.c.a.x, 77198u, 543u)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(0u, var_2, u_input.a.x, var_2)), vec4<u32>(u_input.a.x, u_input.a.x, 32136u, var_0.c.a.x) << ((vec4<u32>(u_input.a.x, 0u, 4294967295u, var_0.c.a.x) >> (vec4<u32>(u_input.a.x, var_0.e.a.x, 4294967295u, var_0.c.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(var_0.c.a.x, u_input.a.x, ~58433u, ~51989u)));
}

fn func_1(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = -1i << (0u % 32u);
    let var_1 = 114f;
    var var_2 = 4294967295u;
    var_2 = 105279u;
    var_0 = firstTrailingBit(-1i);
    return ~vec4<u32>(4294967295u, func_2(), 1u >> (u_input.a.x % 32u), 4294967295u);
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: f32) -> Struct_2 {
    let var_0 = !all(select(vec2<bool>(false, arg_2.x), vec2<bool>(false, arg_2.x), true && arg_2.x)) != false;
    var var_1 = vec3<bool>(true == (14429u >= ~_wgslsmith_add_u32(arg_1.x, u_input.a.x)), false, !(!var_0) || all(!select(vec4<bool>(true, true, true, var_0), vec4<bool>(false, true, false, var_0), vec4<bool>(true, false, true, arg_2.x))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.x, 47615u), 15u)];
    let var_3 = select(select(!(!arg_2.xw), select(vec2<bool>(all(vec3<bool>(true, true, arg_2.x)), true), !select(var_1.zy, arg_2.zy, var_0), select(!arg_2.zw, vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, arg_2.x))), select(vec2<bool>(arg_1.x > 1u, true), !select(arg_2.xx, arg_2.zw, arg_2.zz), !(arg_3 < arg_3))), vec2<bool>(all(select(select(vec2<bool>(false, false), vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, arg_2.x)), !vec2<bool>(arg_2.x, false), vec2<bool>(false, true))), any(!vec2<bool>(arg_2.x, arg_2.x))), select(any(!(!arg_2.xx)), true, arg_2.x | arg_2.x));
    let var_4 = Struct_1(!(!select(arg_2.ywz, select(arg_2.wxx, vec3<bool>(false, var_3.x, false), vec3<bool>(var_0, false, false)), vec3<bool>(var_1.x, var_3.x, true))));
    return Struct_2(vec3<u32>(~arg_1.x, ~(~_wgslsmith_add_u32(u_input.a.x, 4294967295u)), arg_1.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_3, -1865f) * vec3<f32>(424f, arg_3, 756f)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_3, 471f, arg_3), vec3<f32>(arg_3, -1116f, arg_3)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_3, arg_3), _wgslsmith_f_op_f32(2013f - 660f), _wgslsmith_f_op_f32(arg_3 - 1381f)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, arg_3, arg_3)), vec3<f32>(arg_3, -699f, arg_3))))), Struct_1(vec3<bool>(arg_2.x, false, true)), !(!(!vec3<bool>(var_3.x, false, var_3.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-820f, 940f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(1i, ~_wgslsmith_clamp_vec4_u32(max(func_1(Struct_2(vec3<u32>(0u, u_input.a.x, 1208u), vec3<f32>(-1408f, 501f, -150f), Struct_1(vec3<bool>(false, false, true)), vec3<bool>(false, false, false), 978f)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 6960u, 26745u, u_input.a.x), vec4<u32>(26045u, u_input.a.x, 4294967295u, 1u))), select(vec4<u32>(1u, 39004u, u_input.a.x, 8811u) & vec4<u32>(u_input.a.x, 4294967295u, 1u, 69729u), vec4<u32>(23654u, 0u, 1745u, 40567u) | vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), vec4<bool>(true, false, false, false)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 29950u, 29882u, u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 96736u, 2590u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), vec4<bool>(all(vec3<bool>(true, true, true)), all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), u_input.b >= 61480i, true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-2420f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1271f, -612f) + _wgslsmith_f_op_f32(711f - -331f))) + -798f));
    let var_1 = u_input.a.x;
    let var_2 = 4510u;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.xy * var_0.b.zz) * vec2<f32>(-1583f, var_0.b.x)) * var_0.b.zz) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, 232f) - vec2<f32>(var_0.e, var_0.b.x))))));
    let var_4 = select(vec4<bool>(4294967295u >= _wgslsmith_mult_u32(var_1, var_0.a.x), !(433f <= var_3.x), true, all(func_4(~1i, _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_0.a.x, var_0.a.x, var_2), vec4<u32>(var_1, var_0.a.x, 17004u, 32402u)), select(vec4<bool>(false, true, false, false), vec4<bool>(var_0.d.x, var_0.c.a.x, var_0.c.a.x, false), var_0.c.a.x), _wgslsmith_f_op_f32(select(-1600f, var_3.x, var_0.d.x))).d.yy)), !(!select(select(vec4<bool>(true, false, var_0.c.a.x, true), vec4<bool>(var_0.c.a.x, var_0.c.a.x, var_0.c.a.x, var_0.d.x), false), !vec4<bool>(var_0.d.x, false, true, false), var_0.d.x)), var_0.d.x);
    let var_5 = _wgslsmith_mod_vec3_i32(vec3<i32>(min(u_input.b, 39264i), reverseBits(-1i), 1i), vec3<i32>(13934i, -min(u_input.b, -15323i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 0i, u_input.b), vec4<i32>(u_input.b, u_input.b, -60447i, 21632i))) << (_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.x, func_1(Struct_2(vec3<u32>(0u, 9480u, var_1), vec3<f32>(-716f, var_3.x, 893f), Struct_1(var_0.c.a), vec3<bool>(var_0.c.a.x, var_0.c.a.x, false), -1116f)).x, _wgslsmith_dot_vec3_u32(vec3<u32>(53576u, u_input.a.x, 4294967295u), var_0.a)), select(vec3<u32>(u_input.a.x, var_1, u_input.a.x) << (vec3<u32>(4294967295u, u_input.a.x, 74680u) % vec3<u32>(32u)), var_0.a, select(vec3<bool>(var_4.x, true, true), vec3<bool>(false, true, var_0.c.a.x), vec3<bool>(false, var_4.x, true)))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~min(var_2, _wgslsmith_mod_u32(4294967295u, u_input.a.x)), min(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2, 57927u, 19248u, var_0.a.x), vec4<u32>(var_1, var_2, 1u, 6118u)), ~vec4<u32>(3289u, 0u, var_0.a.x, u_input.a.x))), 1325u));
}

