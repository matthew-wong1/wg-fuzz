struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 22>;

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec4<u32>(1u, 16974u, 1u, 0u), Struct_1(vec4<i32>(10474i, 1i, i32(-2147483648), 1i), vec2<bool>(false, true), vec4<i32>(-32706i, 1i, -44640i, -4023i), vec3<f32>(-762f, -1211f, -712f)), false, 34071i), Struct_2(vec4<u32>(0u, 1u, 0u, 30942u), Struct_1(vec4<i32>(-1441i, 5170i, 2147483647i, i32(-2147483648)), vec2<bool>(true, false), vec4<i32>(-50084i, -9035i, -11524i, -1i), vec3<f32>(-154f, 668f, -1047f)), false, 13004i), Struct_2(vec4<u32>(12423u, 17102u, 28813u, 35300u), Struct_1(vec4<i32>(0i, i32(-2147483648), -1i, -4515i), vec2<bool>(false, true), vec4<i32>(63193i, -1i, i32(-2147483648), -20066i), vec3<f32>(-816f, 881f, 2032f)), true, -1i), Struct_2(vec4<u32>(1u, 1u, 15260u, 4294967295u), Struct_1(vec4<i32>(0i, 34984i, 2147483647i, i32(-2147483648)), vec2<bool>(false, false), vec4<i32>(-19195i, -3723i, 61106i, -17202i), vec3<f32>(676f, -628f, 308f)), false, 20063i), Struct_2(vec4<u32>(55864u, 0u, 54325u, 17835u), Struct_1(vec4<i32>(-192i, -54863i, 1i, 2147483647i), vec2<bool>(true, true), vec4<i32>(-24433i, -1i, i32(-2147483648), 0i), vec3<f32>(-653f, -393f, -976f)), false, -62107i), Struct_2(vec4<u32>(23646u, 42219u, 1u, 61655u), Struct_1(vec4<i32>(-27919i, -1i, 3564i, 6492i), vec2<bool>(true, false), vec4<i32>(-5965i, i32(-2147483648), 0i, 1i), vec3<f32>(-940f, 314f, 356f)), false, -614i), Struct_2(vec4<u32>(31401u, 4294967295u, 26u, 26663u), Struct_1(vec4<i32>(1031i, -2249i, 31366i, 2147483647i), vec2<bool>(false, true), vec4<i32>(2147483647i, -35938i, 1i, -1i), vec3<f32>(-330f, 144f, 282f)), true, 17832i), Struct_2(vec4<u32>(4294967295u, 8785u, 48721u, 108322u), Struct_1(vec4<i32>(25245i, -55820i, -21371i, -1i), vec2<bool>(false, false), vec4<i32>(1i, -7108i, 1351i, 1i), vec3<f32>(1316f, -655f, 520f)), true, 8768i));

var<private> global2: bool = false;

var<private> global3: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(3030f, -821f), vec2<f32>(2164f, 1479f), vec2<f32>(-600f, -1000f), vec2<f32>(-451f, -1443f), vec2<f32>(-2028f, -1000f), vec2<f32>(-1481f, -748f), vec2<f32>(-1886f, 861f), vec2<f32>(-238f, 231f), vec2<f32>(139f, 514f), vec2<f32>(-517f, -1279f), vec2<f32>(1508f, -499f), vec2<f32>(1460f, 707f), vec2<f32>(-1369f, -670f), vec2<f32>(1169f, 978f), vec2<f32>(-1586f, 364f), vec2<f32>(-491f, 944f), vec2<f32>(600f, -733f), vec2<f32>(-309f, 185f));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2894i, arg_2.d, _wgslsmith_mult_i32(~1i, arg_2.b.a.x ^ -10877i)), ~u_input.b), _wgslsmith_add_vec3_i32(~(~u_input.b), vec3<i32>(_wgslsmith_sub_i32(arg_2.d, countOneBits(u_input.b.x)), 2147483647i, firstTrailingBit(arg_2.d))));
    var var_1 = vec4<bool>(true & any(vec2<bool>(all(vec3<bool>(arg_2.c, false, true)), !arg_2.b.b.x)), any(select(vec4<bool>(false, false, true, any(vec2<bool>(arg_2.c, arg_2.c))), !(!vec4<bool>(true, arg_2.b.b.x, arg_2.b.b.x, false)), select(!vec4<bool>(arg_2.b.b.x, arg_2.b.b.x, arg_2.c, arg_2.b.b.x), vec4<bool>(false, arg_2.b.b.x, false, arg_2.c), select(true, false, false)))), arg_2.c, arg_2.c);
    global2 = any(!(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(var_1.x, true, false, var_1.x), arg_2.c), select(vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(true, false, false, arg_2.c), vec4<bool>(true, var_1.x, arg_2.b.b.x, arg_2.b.b.x)), !var_1.x)));
    var_1 = select(vec4<bool>(all(!vec2<bool>(arg_2.c, arg_2.c)) | ((-188f >= arg_1.x) && (false && var_1.x)), true, true, true), select(!vec4<bool>(true, var_1.x, u_input.b.x < 57739i, true), vec4<bool>(!any(vec4<bool>(var_1.x, arg_2.b.b.x, arg_2.b.b.x, false)), arg_2.c, !(!arg_2.c), true && (true || var_1.x)), true), vec4<bool>(any(vec4<bool>(var_1.x, false, var_1.x, var_1.x)) & any(vec4<bool>(arg_2.c, arg_2.b.b.x, false, false)), true, !any(!vec3<bool>(arg_2.c, false, false)), true));
    var var_2 = arg_2.b;
    return var_2.c;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c, u_input.a.x, 7731u, 4294967295u) >> (firstTrailingBit(min(vec4<u32>(1u, u_input.c, u_input.e.x, 108303u), vec4<u32>(u_input.c, 70065u, 4294967295u, 1u))) % vec4<u32>(32u)), ~firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, u_input.e.x, 1u, u_input.d), vec4<u32>(u_input.a.x, 7540u, 101177u, u_input.d)))), Struct_1(firstTrailingBit(_wgslsmith_div_vec4_i32(func_3(0u, global3[_wgslsmith_index_u32(u_input.e.x, 18u)], global1[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) >> (vec4<u32>(u_input.d, u_input.a.x, u_input.d, 49203u) % vec4<u32>(32u)))), vec2<bool>(true, select(true, all(vec2<bool>(true, false)), true)), abs(~(~vec4<i32>(17394i, u_input.b.x, -2147483647i, u_input.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(742f, -1766f, -1000f), vec3<f32>(437f, 984f, -731f)))))), false | any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, false), select(true, true, false))), ~max(i32(-1i) * -76766i, ~1i) >> (~_wgslsmith_add_u32(73511u, ~u_input.a.x) % 32u));
    var_0 = global1[_wgslsmith_index_u32(39928u, 8u)];
    var var_1 = 6799i;
    let var_2 = _wgslsmith_div_vec2_u32(u_input.e.yx >> (~(~select(var_0.a.xx, var_0.a.wx, var_0.c)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(firstLeadingBit(u_input.e.xy), var_0.a.yy));
    global0 = array<vec3<i32>, 22>();
    return var_0.b;
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> f32 {
    global0 = array<vec3<i32>, 22>();
    let var_0 = Struct_2(~arg_0.a, func_2(), (arg_0.d << (firstTrailingBit(4294967295u) % 32u)) < _wgslsmith_dot_vec2_i32(abs(select(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(-1i, 1i), arg_0.b.b)), vec2<i32>(arg_2.b.c.x, u_input.b.x)), u_input.b.x << (arg_0.a.x % 32u));
    var var_1 = max(vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_div_i32(arg_2.d, abs(var_0.b.c.x))), -var_0.d, _wgslsmith_add_i32(40762i, -u_input.b.x)), vec3<i32>(arg_0.b.c.x, var_0.d, _wgslsmith_mod_i32(39933i, countOneBits(1i)) & _wgslsmith_clamp_i32(u_input.b.x, 1i, _wgslsmith_dot_vec2_i32(arg_0.b.c.yx, arg_0.b.a.xw))));
    let var_2 = select(select(!func_2().b, var_0.b.b, arg_0.b.b), vec2<bool>(u_input.e.x >= var_0.a.x, !(false & any(vec2<bool>(arg_0.c, arg_0.c)))), false);
    let var_3 = arg_2.b;
    return arg_2.b.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(vec4<i32>(-2147483647i, -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), ~vec2<i32>(2147483647i, u_input.b.x)), 0i, ~_wgslsmith_add_i32(-4467i, u_input.b.x)));
    global3 = array<vec2<f32>, 18>();
    var var_1 = select(vec2<bool>(!(any(vec2<bool>(false, true)) || any(vec2<bool>(false, false))), true), vec2<bool>(false, any(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)))), select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), !select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, all(vec3<bool>(true, false, false)))), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), true), !select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true), any(vec2<bool>(false, false)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(1048f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1060f, 250f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2115f)), 384f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(769f, _wgslsmith_f_op_f32(min(-632f, 1018f)), -411f, 1000f), vec4<f32>(_wgslsmith_f_op_f32(abs(526f)), _wgslsmith_div_f32(1465f, 798f), _wgslsmith_f_op_f32(618f - 1000f), _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(4294967295u, 8u)], 240f, global1[_wgslsmith_index_u32(u_input.c, 8u)])))))));
    let var_3 = -(_wgslsmith_sub_vec3_i32(~vec3<i32>(-24222i, 5608i, u_input.b.x), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, 15547i, 0i), vec3<i32>(35973i, -2147483647i, var_0.x)), global0[_wgslsmith_index_u32(u_input.a.x, 22u)])) ^ vec3<i32>(abs(func_3(999u, vec2<f32>(1010f, -1043f), Struct_2(vec4<u32>(4294967295u, 84095u, 4294967295u, u_input.c), Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, 21553i, -2147483647i), vec2<bool>(var_1.x, var_1.x), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, -22069i), var_2.zww), true, u_input.b.x)).x), ~85817i, 0i));
    global3 = array<vec2<f32>, 18>();
    global2 = true;
    var_0 = firstLeadingBit(~min(_wgslsmith_mult_vec4_i32(vec4<i32>(var_3.x, -1141i, var_0.x, -1945i), vec4<i32>(var_0.x, -6201i, 1i, -1i)), vec4<i32>(2147483647i, 31542i, _wgslsmith_dot_vec4_i32(vec4<i32>(-44227i, 2147483647i, u_input.b.x, var_3.x), vec4<i32>(var_3.x, 1i, -45324i, -25564i)), var_3.x)));
    var var_4 = select(-(~var_0.yxw), ~vec3<i32>(reverseBits(_wgslsmith_dot_vec3_i32(var_3, var_0.wyz)), var_3.x & _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 21141i), vec2<i32>(1i, var_0.x)), -abs(-40783i)), !select(!select(vec3<bool>(var_1.x, false, true), vec3<bool>(true, true, true), var_1.x), !(!vec3<bool>(var_1.x, false, var_1.x)), all(!vec3<bool>(var_1.x, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(149f + _wgslsmith_f_op_f32(f32(-1f) * -1144f)), 34973u, _wgslsmith_div_f32(_wgslsmith_div_f32(-1504f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.x, -1075f)) * 728f)), _wgslsmith_f_op_f32(f32(-1f) * -746f)));
}

