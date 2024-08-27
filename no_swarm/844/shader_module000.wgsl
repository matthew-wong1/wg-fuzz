struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(-1176f, 136f, 898f), Struct_1(vec3<f32>(-1933f, -260f, 969f), vec3<u32>(4294967295u, 0u, 52165u), i32(-2147483648)), Struct_1(vec3<f32>(-392f, 1000f, 1307f), vec3<u32>(66024u, 1u, 82333u), i32(-2147483648)));

var<private> global1: Struct_2;

var<private> global2: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(-546f, 841f), vec2<f32>(-1308f, 776f), vec2<f32>(317f, -627f), vec2<f32>(1087f, 1000f), vec2<f32>(2015f, 706f), vec2<f32>(-153f, -311f), vec2<f32>(-1559f, 709f));

var<private> global3: Struct_2 = Struct_2(vec3<f32>(-375f, -250f, 1679f), Struct_1(vec3<f32>(-1462f, 2109f, 2329f), vec3<u32>(52170u, 1u, 0u), 10987i), Struct_1(vec3<f32>(1000f, 780f, -406f), vec3<u32>(0u, 9378u, 53714u), -10941i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> vec4<u32> {
    let var_0 = true;
    var var_1 = abs(u_input.a ^ global0.b.c);
    var var_2 = select(-(~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(13419i, arg_0.b.c, arg_1.x, u_input.a), vec4<i32>(-1i, u_input.a, -12625i, 638i)), max(-19702i, global3.c.c))), vec2<i32>(_wgslsmith_mult_i32(25514i, abs(~(-1i))), arg_1.x), !vec2<bool>(!select(true, var_0, var_0), !(!var_0)));
    global1 = arg_0;
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global1.b.a, global1.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global1.c.a.x, 3161f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(global3.b.a, vec3<f32>(-452f, global1.b.a.x, global3.c.a.x)))))), arg_0.b, global1.c);
    return (select(~vec4<u32>(9237u, 7252u, arg_0.b.b.x, 9017u), _wgslsmith_mod_vec4_u32(vec4<u32>(23229u, 0u, var_3.c.b.x, arg_0.b.b.x) >> (vec4<u32>(0u, global0.b.b.x, global3.b.b.x, global0.b.b.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, global0.b.b.x, u_input.b.x), vec4<u32>(global3.b.b.x, var_3.c.b.x, global1.c.b.x, u_input.b.x))), var_0) << ((vec4<u32>(~1u, global0.c.b.x, ~57206u, 1u) << ((_wgslsmith_mod_vec4_u32(vec4<u32>(var_3.b.b.x, 50693u, 27647u, 0u), vec4<u32>(1u, 1090u, arg_0.b.b.x, 56221u)) | ~vec4<u32>(u_input.b.x, 78478u, u_input.b.x, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u))) | (~vec4<u32>(global0.c.b.x, abs(47230u), arg_0.b.b.x, var_3.b.b.x) | vec4<u32>(1u, ~firstTrailingBit(global0.b.b.x), 0u, _wgslsmith_mult_u32(global3.c.b.x, 15961u ^ global0.b.b.x)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: u32) -> i32 {
    var var_0 = 34471u;
    let var_1 = arg_0 & vec4<u32>(_wgslsmith_dot_vec4_u32(func_3(Struct_2(vec3<f32>(global0.b.a.x, global3.b.a.x, 391f), Struct_1(global0.c.a, vec3<u32>(4294967295u, global0.c.b.x, global1.c.b.x), -2147483647i), global1.c), arg_1.yw), vec4<u32>(4294967295u, 1u, global0.b.b.x, global3.b.b.x)) & 1u, 39414u, ~55754u, arg_3);
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.a.x + -1041f)));
    global2 = array<vec2<f32>, 7>();
    return -34127i;
}

fn func_1() -> Struct_1 {
    global2 = array<vec2<f32>, 7>();
    let var_0 = select(vec2<bool>(!select(any(vec3<bool>(false, true, false)), true, global0.b.b.x == 43793u), true), !(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), true))), vec2<bool>(!(func_2(vec4<u32>(4294967295u, 32283u, 4294967295u, 39028u), vec4<i32>(global0.c.c, -51773i, global3.b.c, global3.c.c), vec2<bool>(false, true), 0u) > _wgslsmith_div_i32(global3.c.c, -21148i)), false));
    let var_1 = u_input.b.x;
    var var_2 = Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(1482f, _wgslsmith_f_op_f32(min(global0.c.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1744f))), -119f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-684f, 752f, global3.c.a.x)))) - vec3<f32>(_wgslsmith_f_op_f32(-global0.b.a.x), _wgslsmith_f_op_f32(abs(global0.b.a.x)), 886f))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-132f, global1.c.a.x, global1.b.a.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(783f, global1.b.a.x, -943f) + vec3<f32>(-848f, 240f, global3.b.a.x)))), global0.b.b, -7185i), Struct_1(global0.a, global0.b.b, u_input.a));
    var var_3 = ~_wgslsmith_add_u32(global3.c.b.x, ~var_2.c.b.x >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.c.b.x, 4294967295u, global3.b.b.x, 4294967295u), vec4<u32>(64986u, global3.c.b.x, global3.c.b.x, 1u)), ~vec4<u32>(1u, 0u, 0u, global0.b.b.x)) % 32u));
    return global1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(1246f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1550f - global1.c.a.x)))) - -535f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-562f)))), -3767f);
    var var_1 = func_1();
    let var_2 = all(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), var_1.a.x < -784f), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), global1.b.b.x > global1.b.b.x)));
    var var_3 = func_1();
    global3 = Struct_2(_wgslsmith_f_op_vec3_f32(global0.a - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.yyx + vec3<f32>(335f, -1312f, 533f)) + global3.b.a) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-914f, -251f, 403f)))))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + global0.c.a.x)), global3.b.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.b.a.x), _wgslsmith_f_op_f32(max(269f, -252f)), var_2))), reverseBits(vec3<u32>(var_1.b.x, 74502u, _wgslsmith_dot_vec2_u32(global3.b.b.yy, global1.c.b.zy))), firstLeadingBit(global3.b.c)), global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(min(global3.b.b.x, _wgslsmith_mod_u32(var_3.b.x, 2853u) & global1.c.b.x), ~(~(~var_3.b.x)), 8014u, ~global3.b.b.x), _wgslsmith_div_vec3_i32(~(_wgslsmith_mod_vec3_i32(vec3<i32>(var_3.c, 1i, global0.b.c), vec3<i32>(2147483647i, -68366i, -9658i)) | reverseBits(vec3<i32>(var_3.c, var_1.c, 0i))), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(var_1.c, var_1.c, u_input.a), reverseBits(vec3<i32>(var_1.c, u_input.a, global1.c.c))), vec3<i32>(firstLeadingBit(var_3.c), _wgslsmith_add_i32(var_1.c, -33482i), func_1().c))), i32(-1i) * -global0.c.c);
}

