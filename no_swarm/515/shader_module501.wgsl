struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(10652u, -35562i, 2099f, vec4<bool>(true, false, true, false)), Struct_1(30832u, 16815i, -1000f, vec4<bool>(true, true, true, false)), Struct_1(4294967295u, i32(-2147483648), -384f, vec4<bool>(true, false, true, false)), Struct_1(1u, -30067i, -696f, vec4<bool>(true, true, true, false)), Struct_1(1u, 11024i, 1116f, vec4<bool>(true, false, false, false)), Struct_1(33011u, 1i, 1152f, vec4<bool>(false, true, true, false)), Struct_1(29619u, 46849i, 162f, vec4<bool>(true, false, true, true)), Struct_1(4294967295u, i32(-2147483648), -915f, vec4<bool>(false, false, false, true)), Struct_1(4294967295u, 43471i, 203f, vec4<bool>(true, true, true, false)), Struct_1(45902u, -1i, -322f, vec4<bool>(true, false, true, false)), Struct_1(36248u, -21816i, -2179f, vec4<bool>(true, false, false, true)), Struct_1(9263u, -26600i, -387f, vec4<bool>(true, false, false, false)), Struct_1(0u, 1399i, 1000f, vec4<bool>(true, false, true, false)), Struct_1(25400u, -8037i, -1804f, vec4<bool>(false, false, false, false)), Struct_1(14953u, 51336i, -250f, vec4<bool>(true, false, false, true)), Struct_1(626u, 56098i, 910f, vec4<bool>(true, true, false, true)), Struct_1(39852u, -1i, -115f, vec4<bool>(true, true, true, true)), Struct_1(1u, -38067i, 1409f, vec4<bool>(true, false, false, false)), Struct_1(4294967295u, 1i, -867f, vec4<bool>(true, false, false, false)), Struct_1(29983u, 11939i, -1157f, vec4<bool>(true, true, false, false)), Struct_1(1u, i32(-2147483648), -900f, vec4<bool>(true, true, false, true)), Struct_1(4294967295u, 0i, 151f, vec4<bool>(false, false, false, false)), Struct_1(0u, -1i, 1068f, vec4<bool>(true, true, true, false)), Struct_1(4294967295u, 7849i, 843f, vec4<bool>(true, true, false, true)), Struct_1(4294967295u, 22617i, 1000f, vec4<bool>(false, false, true, true)), Struct_1(7884u, -24511i, -1000f, vec4<bool>(true, true, true, true)), Struct_1(5332u, i32(-2147483648), -276f, vec4<bool>(false, false, true, false)), Struct_1(1u, 2147483647i, -1323f, vec4<bool>(true, true, false, true)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    let var_0 = 66056i;
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    var var_1 = vec2<i32>(var_0, -2147483647i);
    let var_2 = true;
    return vec4<bool>(!(_wgslsmith_f_op_f32(sign(arg_0)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) - arg_0)), var_2, all(!vec2<bool>(true, !var_2)), var_2);
}

fn func_2(arg_0: Struct_4, arg_1: bool) -> u32 {
    global0 = array<Struct_1, 28>();
    var var_0 = Struct_2(Struct_1(4294967295u, _wgslsmith_mod_i32(-13368i, reverseBits(42690i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(382f, arg_0.a.c))), select(!arg_0.a.d, !vec4<bool>(false, arg_1, true, false), func_3(_wgslsmith_f_op_f32(arg_0.a.c - 1306f)))));
    global0 = array<Struct_1, 28>();
    var_0 = Struct_2(Struct_1(16869u, u_input.e, 1228f, !vec4<bool>(var_0.a.d.x, all(arg_0.a.d.zzz), false, false)));
    var var_1 = ~(-firstTrailingBit(max(vec4<i32>(-6823i, 34007i, 0i, 0i) << (vec4<u32>(12828u, 41754u, var_0.a.a, 0u) % vec4<u32>(32u)), ~vec4<i32>(25895i, 27255i, 38019i, 0i))));
    return 14430u;
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> Struct_3 {
    var var_0 = !arg_0;
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(func_2(Struct_4(Struct_1(4294967295u, arg_1.x, -974f, vec4<bool>(false, arg_0, false, arg_0))), arg_0) & ~(~select(61019u, 242u, arg_0)), 1u), 28u)];
    let var_2 = Struct_3(~_wgslsmith_div_vec4_u32(~(vec4<u32>(9114u, var_1.a, var_1.a, 4294967295u) ^ vec4<u32>(0u, 14138u, var_1.a, 4294967295u)), reverseBits(vec4<u32>(var_1.a, 71025u, 0u, 1u)) >> (vec4<u32>(var_1.a, var_1.a, var_1.a, var_1.a) % vec4<u32>(32u))), 1067i, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.a, 4294967295u, ~29930u), 28u)], Struct_1(abs(42949u), select(-_wgslsmith_sub_i32(62112i, 2147483647i), var_1.b, true), _wgslsmith_div_f32(-582f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-808f - var_1.c), var_1.c)), select(select(var_1.d, select(var_1.d, vec4<bool>(true, true, true, true), var_1.d.x), arg_0 | false), vec4<bool>(true, true, true, any(var_1.d.xwx)), var_1.d.x)), Struct_1(firstTrailingBit(73063u), var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -1242f), !vec4<bool>(var_1.d.x | var_1.d.x, true, false, false)));
    var_1 = Struct_1(~var_2.d.a, max(_wgslsmith_add_i32(u_input.b.x, -37159i) | _wgslsmith_div_i32(~9548i, 16625i), _wgslsmith_div_i32(_wgslsmith_sub_i32(arg_1.x, 0i) | (u_input.b.x ^ 2147483647i), i32(-1i) * -u_input.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1475f)), _wgslsmith_f_op_f32(323f - _wgslsmith_f_op_f32(-var_1.c)))))), var_1.d);
    var_0 = ((_wgslsmith_div_i32(2147483647i, -2147483647i) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(71378u, 37561u, var_2.a.x, 60652u), ~var_2.a) % 32u)) | -_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_1.b, arg_1.x, -15987i, -1i)), vec4<i32>(1i, 2147483647i, 13668i, var_1.b))) >= -_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(arg_1.x, min(-56153i, u_input.b.x), u_input.b.x & arg_1.x));
    return Struct_3(vec4<u32>(~_wgslsmith_mult_u32(36257u, var_2.c.a), 8932u, _wgslsmith_add_u32(firstTrailingBit(~82870u), _wgslsmith_mult_u32(var_2.e.a, var_1.a)), var_1.a), -var_2.d.b, Struct_1(var_2.d.a, arg_1.x | -8940i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -661f)), var_2.e.d), Struct_1(~max(43477u, var_2.d.a), _wgslsmith_clamp_i32(var_1.b, countOneBits(_wgslsmith_div_i32(2147483647i, arg_1.x)), 26956i), var_2.d.c, vec4<bool>(!(var_2.c.d.x & false), var_2.d.d.x, any(!vec3<bool>(false, var_1.d.x, true)), u_input.d >= abs(arg_1.x))), global0[_wgslsmith_index_u32(var_2.e.a, 28u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4247u;
    global0 = array<Struct_1, 28>();
    var var_1 = func_1(true, max(countOneBits(vec2<i32>(45i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, -15048i, 1i), vec4<i32>(-76139i, u_input.e, u_input.d, u_input.e)))), vec2<i32>(u_input.d, ~_wgslsmith_div_i32(u_input.a.x, u_input.b.x))));
    let var_2 = firstTrailingBit(~var_1.c.a);
    var var_3 = var_1.c.d.xxy;
    var var_4 = Struct_4(global0[_wgslsmith_index_u32(22972u, 28u)]);
    global0 = array<Struct_1, 28>();
    var_3 = !select(var_1.c.d.yyy, !(!select(var_4.a.d.xzz, vec3<bool>(var_4.a.d.x, false, var_4.a.d.x), false)), !select(var_1.c.d.wwx, var_4.a.d.yzz, !var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer((var_1.c.b | firstLeadingBit(u_input.d)) << (_wgslsmith_mult_u32(66450u << (_wgslsmith_dot_vec4_u32(vec4<u32>(3965u, var_1.d.a, 53988u, var_0), var_1.a) % 32u), _wgslsmith_mod_u32(abs(var_2), abs(68519u))) % 32u), ~var_2, _wgslsmith_sub_vec4_i32(-(~countOneBits(vec4<i32>(-35699i, u_input.d, 0i, 2147483647i))), select(vec4<i32>(var_1.e.b, var_1.b, var_4.a.b, u_input.d), vec4<i32>(-2016i, -1i, 1i, u_input.c.x), !var_3.x) >> (var_1.a % vec4<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -412f));
}

