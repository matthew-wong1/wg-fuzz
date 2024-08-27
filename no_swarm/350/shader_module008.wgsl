struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = any(vec4<bool>(true, true, true, true));
    var_0 = select(true, all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true)), select(!any(vec3<bool>(true, true, true)), true, true));
    let var_1 = Struct_3(~vec3<i32>(u_input.b.x, abs(abs(-1i)), _wgslsmith_sub_i32(u_input.b.x, ~0i)));
    var_0 = any(vec2<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true)), true && all(vec3<bool>(true, false, false)))) & any(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true))));
    var var_2 = Struct_5(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, select(false, true, true), true), select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1319f, 263f, 172f) + vec3<f32>(574f, -435f, 548f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-343f, -1230f, 697f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1122f, 606f, -230f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(390f, -1000f, 1161f))))))), Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(33840u, 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(33645u, 4294967295u), vec2<u32>(7231u, 26467u))), 1u, abs(~1u), 1u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(52440u, 2321u), vec2<u32>(77775u, 1u)))));
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: f32, arg_3: vec3<i32>) -> Struct_4 {
    let var_0 = any(vec2<bool>(all(arg_1), func_3()));
    let var_1 = Struct_3(firstTrailingBit(select(vec3<i32>(arg_3.x, firstTrailingBit(u_input.b.x), i32(-1i) * -42460i), vec3<i32>(arg_3.x, arg_3.x, arg_3.x), var_0)));
    let var_2 = Struct_5(!arg_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-709f, 1264f)) + _wgslsmith_f_op_f32(1464f - 1003f)), -1182f) + vec3<f32>(1030f, _wgslsmith_f_op_f32(2656f - _wgslsmith_f_op_f32(min(-732f, 233f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -179f)))), arg_0.a);
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.b.x, arg_2, -425f, -522f), vec4<f32>(arg_2, -2235f, 1187f, -216f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, 533f, arg_2) + vec4<f32>(-1833f, arg_2, arg_2, arg_2))), _wgslsmith_f_op_vec4_f32(vec4<f32>(939f, -239f, 1000f, -1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1484f, arg_2, arg_2, 129f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-620f, _wgslsmith_f_op_f32(step(arg_2, -1195f)), -304f, var_2.b.x))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-720f + arg_2), var_2.b.x)), 1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-969f * var_2.b.x))), -576f)));
    var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1180f, 1256f, _wgslsmith_f_op_f32(floor(arg_2)), _wgslsmith_f_op_f32(-var_2.b.x)) + vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.b.x - var_2.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-946f)), -567f), arg_2, 129f)) * vec4<f32>(arg_2, var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, -403f) + -185f)), -1000f));
    return Struct_4(u_input.a.x >> (_wgslsmith_sub_u32(abs(~4294967295u), var_2.c.a.x) % 32u), firstLeadingBit(select(abs(vec3<u32>(0u, 5952u, var_2.c.a.x)), vec3<u32>(1u, arg_0.a.a.x, 65559u), !vec3<bool>(var_2.a.x, arg_1.x, arg_1.x))) << (~vec3<u32>(_wgslsmith_clamp_u32(4294967295u, arg_0.a.a.x, 5560u), 99196u, 4294967295u) % vec3<u32>(32u)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: Struct_5, arg_3: u32) -> u32 {
    var var_0 = true;
    var_0 = all(!select(arg_2.a, select(select(vec4<bool>(arg_2.a.x, arg_0.x, arg_2.a.x, arg_0.x), vec4<bool>(false, arg_0.x, true, true), vec4<bool>(arg_0.x, false, false, true)), !arg_2.a, vec4<bool>(true, arg_0.x, arg_0.x, arg_2.a.x)), arg_0.x));
    var_0 = false;
    let var_1 = firstTrailingBit(u_input.a.x);
    var var_2 = arg_2.c;
    return func_2(Struct_2(Struct_1(arg_2.c.a)), vec4<bool>(!(!arg_2.a.x), any(select(arg_2.a, arg_0, arg_2.a)), false, false), _wgslsmith_f_op_f32(ceil(-344f)), vec3<i32>(reverseBits(_wgslsmith_div_i32(18489i, 52468i)), -max(3597i, var_1), u_input.b.x)).b.x >> (arg_1.b.x % 32u);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: u32, arg_3: bool) -> u32 {
    var var_0 = vec2<u32>(countOneBits(min(firstTrailingBit(~arg_2), func_4(vec4<bool>(false, arg_3, arg_3, arg_3), func_2(Struct_2(Struct_1(vec4<u32>(arg_2, 1u, 4294967295u, 0u))), vec4<bool>(true, arg_3, false, true), -253f, vec3<i32>(0i, 1i, -2147483647i)), Struct_5(vec4<bool>(arg_3, true, arg_3, arg_3), vec3<f32>(413f, 567f, 1061f), Struct_1(vec4<u32>(90588u, 31732u, 74278u, arg_2))), 29261u))), func_4(!(!select(vec4<bool>(arg_3, true, arg_3, arg_3), vec4<bool>(true, arg_3, true, arg_3), vec4<bool>(arg_3, true, true, true))), Struct_4(1i, vec3<u32>(arg_2, 0u, 53292u) >> (abs(vec3<u32>(44808u, 0u, 40909u)) % vec3<u32>(32u))), Struct_5(!(!vec4<bool>(true, arg_3, true, arg_3)), vec3<f32>(_wgslsmith_f_op_f32(-786f + 1777f), _wgslsmith_f_op_f32(abs(1070f)), _wgslsmith_f_op_f32(ceil(1822f))), Struct_1(vec4<u32>(arg_2, 0u, arg_2, arg_2))), arg_2));
    var var_1 = !(!(!select(!vec4<bool>(true, true, arg_3, arg_3), !vec4<bool>(arg_3, arg_3, arg_3, arg_3), arg_3)));
    var var_2 = _wgslsmith_clamp_vec3_u32(select(~(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 0u, arg_2), vec3<u32>(arg_2, 15961u, arg_2)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(39036u, 51217u, var_0.x), vec3<u32>(4294967295u, 1u, arg_2), vec3<u32>(var_0.x, var_0.x, var_0.x)) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, ~var_0.x, ~arg_2), vec3<u32>(1u, 16019u, arg_2), abs(vec3<u32>(arg_2, 1u, arg_2) << (vec3<u32>(4294967295u, 0u, 0u) % vec3<u32>(32u)))), vec3<bool>(true, _wgslsmith_clamp_u32(37360u, 1u, 21001u) == ~var_0.x, arg_3)), abs(vec3<u32>(~(~var_0.x), func_4(vec4<bool>(true, arg_3, true, true), func_2(Struct_2(Struct_1(vec4<u32>(66945u, arg_2, var_0.x, 93608u))), vec4<bool>(arg_3, true, arg_3, arg_3), 755f, vec3<i32>(-1i, arg_1.a.x, u_input.a.x)), Struct_5(vec4<bool>(var_1.x, false, arg_3, arg_3), vec3<f32>(1068f, -476f, 736f), Struct_1(vec4<u32>(10894u, 7752u, 62915u, var_0.x))), var_0.x), _wgslsmith_sub_u32(41688u, abs(var_0.x)))), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(0u, countOneBits(arg_2)), ~1u, 0u), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_2, arg_2, 0u) & vec3<u32>(15537u, 65059u, var_0.x), ~vec3<u32>(59847u, 52395u, arg_2)), select(~vec3<u32>(arg_2, 13422u, 4294967295u), vec3<u32>(22665u, 0u, var_0.x) & vec3<u32>(arg_2, arg_2, arg_2), any(vec4<bool>(var_1.x, false, arg_3, true))))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(min(var_0.x, 13406u), _wgslsmith_div_u32(4294967295u, 35242u), _wgslsmith_div_u32(var_2.x, 1u), 1u), vec4<u32>(abs(var_0.x), 4294967295u, 1u, var_0.x))));
    return func_2(Struct_2(var_3.a), !(!(!vec4<bool>(var_1.x, arg_3, arg_3, false))), -1775f, _wgslsmith_mult_vec3_i32(vec3<i32>(-(~(-2147483647i)), -9497i, -1i), vec3<i32>(~abs(0i), -26442i, arg_0.x >> (1u % 32u)))).b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_i32(abs(select(vec3<i32>(_wgslsmith_add_i32(1i, -2147483647i), -u_input.b.x, ~u_input.b.x), min(u_input.a.yww, abs(u_input.b)), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true))), -firstLeadingBit(firstLeadingBit(u_input.b)));
    var var_1 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(42979u, 1u, ~1u, firstLeadingBit(func_1(vec2<i32>(2147483647i, u_input.a.x), Struct_3(vec3<i32>(1i, 17036i, 2147483647i)), 4294967295u, true))), _wgslsmith_div_vec4_u32(vec4<u32>(reverseBits(57433u), 1u, select(1u, 3921u, false), ~32583u), vec4<u32>(1u, 1u, 1u, 1u))));
    let var_2 = Struct_5(select(!vec4<bool>(true, true, true, any(vec2<bool>(true, false))), vec4<bool>(!all(vec2<bool>(true, true)), true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), !all(vec3<bool>(true, true, true))), !(_wgslsmith_f_op_f32(round(513f)) == 1159f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-183f, 792f, -236f), vec3<f32>(1313f, -1130f, -480f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-2233f, 323f, 522f) - vec3<f32>(1000f, -1002f, 1980f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, 2000f, -171f))))), Struct_1(~var_1.a));
    let var_3 = -1725f;
    var_1 = var_2.c;
    let var_4 = reverseBits(var_2.c.a.yy);
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_2.b.zx, vec2<f32>(-326f, var_3)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_2.b.yz, vec2<f32>(var_3, 1366f))))))));
    let var_6 = Struct_3(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, u_input.a.x >> ((54793u << (var_4.x % 32u)) % 32u), u_input.b.x), -(vec3<i32>(var_0.x, -28044i, -25762i) & vec3<i32>(var_0.x, var_0.x, -52888i))));
    let var_7 = Struct_2(Struct_1(var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, ~_wgslsmith_dot_vec4_i32(min(u_input.a ^ vec4<i32>(-28090i, var_6.a.x, 1i, 1i), u_input.a), vec4<i32>(-2147483647i ^ var_6.a.x, 18999i, abs(-20743i), 1i)));
}

