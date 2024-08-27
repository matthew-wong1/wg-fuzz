struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<f32>,
    d: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec4<f32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(-965f, 231f, -830f, -1112f), vec4<f32>(-1000f, 554f, 1457f, -120f), vec4<f32>(-1768f, -722f, 1854f, -273f), vec4<f32>(-564f, 540f, -163f, -173f), vec4<f32>(-1000f, 520f, -901f, -259f), vec4<f32>(1000f, 1120f, 1328f, 1098f), vec4<f32>(-1528f, 946f, 191f, 677f), vec4<f32>(-537f, 138f, -2009f, 2125f), vec4<f32>(789f, 224f, -206f, -1011f), vec4<f32>(168f, 1000f, 889f, -329f), vec4<f32>(-453f, -1703f, 1000f, 1340f), vec4<f32>(-346f, 392f, 278f, 271f), vec4<f32>(-1000f, -2083f, 1900f, -911f), vec4<f32>(-620f, -494f, -1029f, -1181f), vec4<f32>(1964f, -723f, -580f, -955f), vec4<f32>(-327f, -380f, -592f, 242f), vec4<f32>(-997f, 834f, 1736f, 640f), vec4<f32>(-665f, -1556f, 2539f, -877f), vec4<f32>(-1000f, 1312f, -735f, 118f), vec4<f32>(1451f, -2662f, -203f, 568f), vec4<f32>(553f, 512f, 1000f, 692f), vec4<f32>(951f, -424f, 315f, -354f), vec4<f32>(-867f, -1780f, 1285f, -1229f), vec4<f32>(1039f, 339f, -1253f, -317f), vec4<f32>(-430f, 1543f, 1000f, -370f), vec4<f32>(516f, 1496f, 1659f, -113f), vec4<f32>(118f, 470f, 932f, -206f));

var<private> global1: array<Struct_5, 22>;

var<private> global2: vec3<u32>;

var<private> global3: vec2<f32> = vec2<f32>(741f, 1252f);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    let var_0 = ~u_input.a;
    let var_1 = global1[_wgslsmith_index_u32(u_input.a ^ ~var_0, 22u)];
    let var_2 = Struct_2(_wgslsmith_add_i32(1i, 15088i) < ~min(-13245i << (var_0 % 32u), var_1.b.x << (global2.x % 32u)), var_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.x, _wgslsmith_f_op_f32(max(global3.x, -773f)), _wgslsmith_f_op_f32(global3.x + 962f), _wgslsmith_f_op_f32(1367f - global3.x)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-523f)), -2403f, _wgslsmith_div_f32(832f, -920f), global3.x) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1017f, -383f, global3.x, global3.x))))))), _wgslsmith_f_op_f32(min(global3.x, global3.x)));
    let var_3 = var_2.c.x;
    let var_4 = var_2.b;
    return ~var_4.a.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<f32>) -> i32 {
    global1 = array<Struct_5, 22>();
    global0 = array<vec4<f32>, 27>();
    global3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - -1598f))))));
    global1 = array<Struct_5, 22>();
    var var_0 = select(vec3<bool>(true, any(vec2<bool>(arg_0.x, true & arg_0.x)), all(vec4<bool>(arg_0.x, !arg_0.x, all(vec4<bool>(true, arg_0.x, arg_0.x, true)), true))), arg_0, vec3<bool>(true, true, !(!any(vec4<bool>(arg_0.x, arg_0.x, false, true)))));
    return _wgslsmith_div_i32(abs(countOneBits(1i)), abs(_wgslsmith_clamp_i32(~1i, ~1i, _wgslsmith_add_i32(2147483647i, func_3()))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool) -> vec2<f32> {
    let var_0 = _wgslsmith_dot_vec4_i32(-(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, arg_0.b.b.a.x, arg_0.d, -42491i), vec4<i32>(arg_1.b.a.x, -1i, -33677i, arg_1.b.a.x), vec4<i32>(1i, -1i, arg_1.b.a.x, arg_1.b.a.x)), -vec4<i32>(arg_0.d, arg_0.d, arg_0.b.b.a.x, 0i)) >> ((~vec4<u32>(34901u, u_input.a, global2.x, 4294967295u) << (countOneBits(vec4<u32>(1u, 45777u, 4294967295u, global2.x)) % vec4<u32>(32u))) % vec4<u32>(32u))), abs(_wgslsmith_add_vec4_i32(vec4<i32>(0i, arg_0.b.b.a.x, ~arg_0.b.b.a.x, _wgslsmith_dot_vec3_i32(arg_0.b.b.a, vec3<i32>(arg_1.b.a.x, -2147483647i, arg_0.b.b.a.x))), vec4<i32>(arg_0.b.b.a.x, ~arg_0.b.b.a.x, func_2(arg_0.b.b.b, vec4<f32>(global3.x, 1000f, global3.x, arg_1.c.x)), arg_1.b.a.x))));
    var var_1 = ~(u_input.a & _wgslsmith_mod_u32(0u, max(41342u, 58008u)));
    var var_2 = ~arg_1.b.a.x;
    var var_3 = Struct_5(arg_1.b, ~_wgslsmith_add_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -2147483647i, arg_0.d, 23519i), vec4<i32>(arg_0.b.b.a.x, var_0, arg_1.b.a.x, -13236i)), vec4<i32>(_wgslsmith_mod_i32(37976i, 34505i), arg_1.b.a.x, -28186i, ~var_0)), vec2<bool>(true, (arg_0.b.a || true) & arg_1.b.b.x), arg_1.b.b.zz, 35044i);
    let var_4 = _wgslsmith_mod_i32(arg_0.b.b.a.x, abs(arg_1.b.a.x | -19384i));
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-528f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -594f))) + _wgslsmith_f_op_vec2_f32(-arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(global3.x * 1008f)), global3.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_3(vec2<f32>(477f, -1015f), Struct_2(true, Struct_1(vec3<i32>(2147483647i, -2147483647i, -4675i), vec3<bool>(false, false, false)), global0[_wgslsmith_index_u32(1u, 27u)], global3.x), global0[_wgslsmith_index_u32(global2.x, 27u)], 70894i, vec3<bool>(true, true, false)), Struct_2(true, Struct_1(vec3<i32>(-2147483647i, 6779i, -38253i), vec3<bool>(false, true, true)), vec4<f32>(-1062f, 347f, -1211f, -1588f), global3.x), false)) - vec2<f32>(global3.x, 378f))))));
    var var_0 = abs(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(-13072i, -5483i, -7341i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -55886i, 0i), vec3<i32>(0i, -4655i, 0i), vec3<i32>(9004i, -28646i, -38347i))), 2147483647i, -30973i), _wgslsmith_add_i32(1i, ~1i)));
    var var_1 = _wgslsmith_sub_vec2_i32(reverseBits(-(vec2<i32>(var_0.x, var_0.x) | countOneBits(vec2<i32>(var_0.x, 1i)))), _wgslsmith_mod_vec2_i32(select(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(var_0.x, var_0.x)), -vec2<i32>(0i, -2147483647i)), -min(vec2<i32>(var_0.x, 69349i), vec2<i32>(var_0.x, 9771i)), vec2<bool>(true, true)), select(vec2<i32>(var_0.x, -1i), ~vec2<i32>(var_0.x, var_0.x), vec2<bool>(true, false)) | vec2<i32>(~var_0.x, firstLeadingBit(var_0.x))));
    var var_2 = vec4<u32>(~41845u, max(~4294967295u, ~3338u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global2.x, 34457u), vec3<u32>(1u, 4294967295u, global2.x)) << (global2.x % 32u), ~(~countOneBits(global2.x))) ^ reverseBits(abs(vec4<u32>(~19090u, u_input.a ^ u_input.a, 0u, 1u)));
    let var_3 = Struct_5(Struct_1(vec3<i32>(var_0.x, -46538i, 26498i), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), select(any(vec2<bool>(true, false)), true, true))), vec4<i32>(1i, -var_0.x, abs(i32(-1i) * -1i), i32(-1i) * -2147483647i) << (vec4<u32>(59598u, ~(~var_2.x), 4294967295u, _wgslsmith_mod_u32(4294967295u, 1u)) % vec4<u32>(32u)), select(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, true), vec2<bool>(true, true)), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec2<bool>(false, true))))), select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(false, false), false), true), true), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), !(all(vec3<bool>(false, false, false)) & (u_input.a <= 35156u))), ~firstTrailingBit(var_1.x) & var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(-881f, countOneBits(select(vec4<u32>(0u, global2.x, 1u, global2.x), ~vec4<u32>(1u, var_2.x, u_input.a, 56951u), true) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(1u, global2.x, 4294967295u, 0u) << (vec4<u32>(var_2.x, 4294967295u, global2.x, 49137u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(global2.x, 4294967295u, 0u, 61179u), vec4<u32>(var_2.x, global2.x, 0u, 0u)))));
}

