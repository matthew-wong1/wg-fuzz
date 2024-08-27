struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: bool,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_2) -> u32 {
    var var_0 = arg_1.b;
    let var_1 = any(vec4<bool>(!arg_2.b.c, arg_3.c, any(vec4<bool>(true || arg_2.a.c, any(vec2<bool>(false, arg_3.b.c)), true, true)), all(vec3<bool>(arg_3.b.c, !arg_1.b.b.x, true))));
    var var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-929f, 631f, _wgslsmith_f_op_f32(ceil(-187f))), vec3<f32>(-1272f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1176f, 792f) * 500f))), _wgslsmith_f_op_f32(f32(-1f) * -476f))));
    var var_3 = arg_2.b.c;
    var var_4 = !arg_2.b.c;
    return arg_1.b.e.x;
}

fn func_2() -> Struct_2 {
    var var_0 = 33399u;
    var var_1 = u_input.a;
    var_0 = _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a & (u_input.a & u_input.a), min(~4294967295u, func_3(vec2<i32>(2147483647i, -2147483647i), Struct_3(Struct_1(vec2<i32>(-4065i, 41291i), vec3<bool>(true, false, false), true, 2147483647i, vec2<u32>(920u, u_input.a)), Struct_1(vec2<i32>(40196i, -1289i), vec3<bool>(true, false, false), false, -2147483647i, vec2<u32>(81925u, 1u)), vec4<i32>(-1i, 37408i, -29i, 99475i)), Struct_3(Struct_1(vec2<i32>(-2147483647i, 11238i), vec3<bool>(true, true, true), false, -11167i, vec2<u32>(u_input.a, 4294967295u)), Struct_1(vec2<i32>(-1i, -2147483647i), vec3<bool>(true, true, false), true, -2147483647i, vec2<u32>(22082u, u_input.a)), vec4<i32>(1i, 2147483647i, 2527i, -71182i)), Struct_2(Struct_1(vec2<i32>(2147483647i, 15703i), vec3<bool>(false, true, false), true, 0i, vec2<u32>(1u, u_input.a)), Struct_1(vec2<i32>(-2884i, -35312i), vec3<bool>(false, false, false), true, -402i, vec2<u32>(u_input.a, 4294967295u)), false)))), 0u << (1u % 32u)), ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(139445u, u_input.a, 0u, u_input.a), ~vec4<u32>(83314u, u_input.a, u_input.a, u_input.a))));
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-221f, 1735f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-155f, -1000f))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f)))), vec2<f32>(_wgslsmith_f_op_f32(-502f * _wgslsmith_f_op_f32(f32(-1f) * -1475f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1008f))))))), true));
    return Struct_2(Struct_1(~vec2<i32>(-2147483647i, 1i), !vec3<bool>(true, any(vec2<bool>(true, false)), true), true, -(~(-2147483647i)), select(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(50873u, u_input.a), vec2<u32>(23709u, 1u))), select(vec2<u32>(22474u, u_input.a) << (vec2<u32>(66534u, u_input.a) % vec2<u32>(32u)), ~vec2<u32>(u_input.a, u_input.a), vec2<bool>(true, true)), true)), Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), min(vec2<i32>(21781i, -2147483647i), ~vec2<i32>(-2147483647i, 8552i))), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), !all(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), _wgslsmith_mult_i32(_wgslsmith_add_i32(0i, -33900i) >> ((u_input.a ^ 110252u) % 32u), -(i32(-1i) * -66583i)), firstLeadingBit(vec2<u32>(func_3(vec2<i32>(-41028i, -2147483647i), Struct_3(Struct_1(vec2<i32>(5790i, -2147483647i), vec3<bool>(false, false, true), true, -2147483647i, vec2<u32>(1u, 0u)), Struct_1(vec2<i32>(0i, -1i), vec3<bool>(false, true, false), false, -18445i, vec2<u32>(4294967295u, 40659u)), vec4<i32>(72243i, -32544i, 2147483647i, -2147483647i)), Struct_3(Struct_1(vec2<i32>(-1i, 21691i), vec3<bool>(true, true, true), true, -29575i, vec2<u32>(77388u, u_input.a)), Struct_1(vec2<i32>(0i, 0i), vec3<bool>(true, false, false), true, -8716i, vec2<u32>(54602u, u_input.a)), vec4<i32>(2147483647i, -14851i, -2361i, 1i)), Struct_2(Struct_1(vec2<i32>(-1i, -11717i), vec3<bool>(true, false, true), true, -2147483647i, vec2<u32>(u_input.a, 4294967295u)), Struct_1(vec2<i32>(0i, 17009i), vec3<bool>(false, false, true), false, -13243i, vec2<u32>(u_input.a, 4294967295u)), false)), ~u_input.a))), any(vec4<bool>(true, true, true, true)) || any(vec3<bool>(true, all(vec3<bool>(false, true, true)), all(vec4<bool>(false, true, false, false)))));
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = func_2();
    let var_1 = Struct_3(var_0.b, var_0.a, vec4<i32>(_wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, var_0.a.d, -1i, arg_0), vec4<i32>(var_0.a.d, 6899i, -46203i, arg_0))), -vec4<i32>(var_0.a.a.x, 1i, var_0.a.a.x, -1i) << (vec4<u32>(4294967295u, var_0.b.e.x, u_input.a, 4294967295u) % vec4<u32>(32u))), -_wgslsmith_clamp_i32(~15159i, select(5793i, -30100i, false), -51529i), var_0.a.a.x, var_0.a.a.x));
    let var_2 = Struct_3(Struct_1(vec2<i32>(firstTrailingBit(~2147483647i), ~1i >> (_wgslsmith_clamp_u32(var_1.a.e.x, var_1.a.e.x, 108893u) % 32u)), !func_2().a.b, !(!var_1.b.c) || var_1.b.c, -19598i, _wgslsmith_mod_vec2_u32(abs(var_1.b.e), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(11496u, 0u))) | (vec2<u32>(u_input.a, u_input.a) | (var_0.b.e << (var_1.a.e % vec2<u32>(32u))))), func_2().a, _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -var_1.c, var_1.c));
    let var_3 = vec4<u32>(u_input.a, ~(_wgslsmith_sub_u32(13123u, 1u) >> (var_0.b.e.x % 32u)), min(_wgslsmith_div_u32(0u, var_1.a.e.x) >> (0u % 32u), ~firstTrailingBit(19566u)), ~(~1u << (_wgslsmith_div_u32(4294967295u, u_input.a) % 32u))) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(var_1.a.e.x, _wgslsmith_sub_u32(1u, var_1.a.e.x), 0u, u_input.a), vec4<u32>(4294967295u, ~var_1.a.e.x ^ 1u, 100300u, var_2.a.e.x)) % vec4<u32>(32u));
    let var_4 = ~(_wgslsmith_mult_vec4_u32(max(var_3, vec4<u32>(56875u, var_3.x, var_1.a.e.x, var_0.a.e.x)), vec4<u32>(~1489u, ~var_0.b.e.x, _wgslsmith_clamp_u32(4294967295u, 52584u, var_0.a.e.x), ~53380u)) ^ ~var_3);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-997f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1039f, 675f)))) - 387f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(932f + 212f) + _wgslsmith_f_op_f32(f32(-1f) * -565f)) - _wgslsmith_f_op_f32(f32(-1f) * -149f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-2147483647i)) - _wgslsmith_f_op_f32(799f - 447f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1351f, -1202f) + _wgslsmith_f_op_f32(max(-1033f, 953f)))))));
    var var_1 = vec3<u32>((u_input.a | _wgslsmith_div_u32(0u, u_input.a)) << (~(~min(19961u, 4294967295u)) % 32u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(~1u, firstTrailingBit(u_input.a)), _wgslsmith_dot_vec4_u32(max(~vec4<u32>(u_input.a, 0u, 1u, 54528u), vec4<u32>(u_input.a, 0u, u_input.a, 19084u) ^ vec4<u32>(40823u, u_input.a, u_input.a, u_input.a)), ~min(vec4<u32>(31176u, u_input.a, 45420u, u_input.a), vec4<u32>(4294967295u, 1u, u_input.a, u_input.a)))), min(func_3(_wgslsmith_sub_vec2_i32(max(vec2<i32>(-20818i, -10360i), vec2<i32>(39495i, 8716i)), ~vec2<i32>(22100i, 21482i)), Struct_3(Struct_1(vec2<i32>(1i, 57110i), vec3<bool>(true, false, true), true, 0i, vec2<u32>(u_input.a, u_input.a)), func_2().a, vec4<i32>(2147483647i, -2147483647i, -43755i, 2147483647i)), Struct_3(Struct_1(vec2<i32>(23088i, 1i), vec3<bool>(false, true, true), false, -2147483647i, vec2<u32>(1u, 6325u)), func_2().a, vec4<i32>(1i, 1i, 1i, 1i)), Struct_2(func_2().a, Struct_1(vec2<i32>(1i, 42379i), vec3<bool>(false, false, true), true, -20072i, vec2<u32>(4294967295u, u_input.a)), true)), _wgslsmith_sub_u32(u_input.a, u_input.a)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1450f, var_0))) + _wgslsmith_div_f32(-654f, 803f)), -1000f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -629f))));
    let var_3 = ~var_1.x;
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(reverseBits(1i) >> (_wgslsmith_sub_u32(select(24592u, var_3, true), ~23300u) % 32u), 1i));
}

