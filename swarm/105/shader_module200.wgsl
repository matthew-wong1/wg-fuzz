struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> u32 {
    var var_0 = !select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), any(vec3<bool>(true, true, true))), true), true);
    let var_1 = -(~u_input.a);
    let var_2 = Struct_2(Struct_1(1u, var_0.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2164f, 1000f, -1218f, -588f) - vec4<f32>(719f, -200f, -490f, 146f)))) - _wgslsmith_div_vec4_f32(vec4<f32>(-1178f, 1833f, 1011f, -822f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1026f, -1291f, -1082f, -233f), vec4<f32>(746f, 519f, 197f, 878f))))))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(-1676f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1449f, 645f) + -141f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1601f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(961f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-118f, 1106f)) - _wgslsmith_f_op_f32(select(-477f, 864f, true))) - 1554f)));
    let var_4 = vec3<bool>(var_0.x, var_0.x, var_0.x);
    return abs(var_2.a.a);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(func_3(), any(!select(arg_2, vec3<bool>(arg_2.x, arg_2.x, arg_2.x), arg_2.x))));
    let var_1 = abs(29171u >> (arg_0.x % 32u));
    var_0 = Struct_2(var_0.a);
    return var_0.a;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3) -> Struct_2 {
    var var_0 = vec4<f32>(-786f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1076f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_1.d, arg_1.d)), -1123f))), arg_0.x)), -1000f, -1000f);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))))), 1125f, -1184f, arg_1.d);
    let var_1 = arg_1;
    var var_2 = -1i;
    var var_3 = arg_1.c;
    return var_1.a;
}

fn func_1() -> Struct_5 {
    let var_0 = Struct_3(func_4(vec4<f32>(289f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1101f * 1388f), _wgslsmith_f_op_f32(f32(-1f) * -2123f)), 1706f, _wgslsmith_f_op_f32(1047f * _wgslsmith_f_op_f32(f32(-1f) * -1743f))), Struct_3(Struct_2(func_2(vec3<u32>(36032u, 101999u, 54648u), vec4<u32>(4294967295u, 0u, 25081u, 8184u), vec3<bool>(true, true, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), all(vec3<bool>(false, true, false))), 1i, -285f)), select(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), false)), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true)), false), -2147483647i, _wgslsmith_f_op_f32(select(-1475f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-111f, 416f)), _wgslsmith_f_op_f32(f32(-1f) * -1031f))), true && all(vec3<bool>(true, true, true)))));
    var var_1 = ((var_0.c | max(var_0.c, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c, 22536i, 542i, u_input.a), vec4<i32>(var_0.c, -1i, 2147483647i, var_0.c)))) & u_input.a) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(var_0.a.a.a), 0u), max(abs(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 47860u), vec2<u32>(var_0.a.a.a, 1u))), abs(vec2<u32>(4294967295u, 2103u)))) % 32u);
    var var_2 = select(vec4<u32>(firstTrailingBit(0u), 0u, abs(~(~var_0.a.a.a)), 1u), reverseBits(firstTrailingBit(vec4<u32>(var_0.a.a.a, 11771u, var_0.a.a.a, var_0.a.a.a) ^ _wgslsmith_add_vec4_u32(vec4<u32>(60649u, 18410u, 0u, 0u), vec4<u32>(18085u, var_0.a.a.a, var_0.a.a.a, var_0.a.a.a)))), any(select(!(!vec4<bool>(var_0.b.x, var_0.a.a.b, true, var_0.b.x)), !vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true), (-277f != var_0.d) && var_0.a.a.b)));
    let var_3 = ~_wgslsmith_dot_vec3_u32(var_2.yzy, _wgslsmith_clamp_vec3_u32(var_2.ywy, vec3<u32>(4294967295u, select(0u, var_2.x, false), max(1u, var_0.a.a.a)), vec3<u32>(var_0.a.a.a, var_0.a.a.a | 48299u, abs(4294967295u))));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(-var_0.d)), -937f, var_0.d, 1000f);
    return Struct_5(var_0.a.a, true, true);
}

fn func_5(arg_0: Struct_5) -> f32 {
    var var_0 = u_input.a;
    var var_1 = select(!(!select(vec2<bool>(arg_0.b, arg_0.a.b), select(vec2<bool>(arg_0.c, false), vec2<bool>(false, true), arg_0.a.b), true)), select(vec2<bool>(func_2(~vec3<u32>(0u, 4294967295u, 21404u), vec4<u32>(31475u, arg_0.a.a, 39586u, 1u), select(vec3<bool>(arg_0.c, arg_0.b, arg_0.b), vec3<bool>(true, false, true), vec3<bool>(arg_0.a.b, arg_0.b, false))).b, all(!vec4<bool>(true, true, false, arg_0.c))), vec2<bool>(!(false | arg_0.c), arg_0.a.b), vec2<bool>(false, func_1().b)), true);
    let var_2 = !select(vec3<bool>(arg_0.a.b && func_2(vec3<u32>(26033u, arg_0.a.a, 82475u), vec4<u32>(1u, 4294967295u, arg_0.a.a, arg_0.a.a), vec3<bool>(false, false, false)).b, true, true), select(select(vec3<bool>(false, arg_0.b, arg_0.b), select(vec3<bool>(arg_0.c, arg_0.a.b, arg_0.a.b), vec3<bool>(true, false, true), vec3<bool>(arg_0.b, arg_0.c, arg_0.b)), !vec3<bool>(var_1.x, false, arg_0.b)), vec3<bool>(true, true, true), select(!vec3<bool>(true, true, arg_0.b), vec3<bool>(arg_0.a.b, var_1.x, arg_0.b), vec3<bool>(var_1.x, true, false))), -1i != -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 13518i, u_input.a, -5586i), vec4<i32>(2147483647i, u_input.a, u_input.a, -3907i)));
    var var_3 = arg_0;
    var var_4 = arg_0.a;
    return -171f;
}

fn func_6(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: f32) -> vec3<bool> {
    var var_0 = select(vec3<bool>(func_1().a.b, ((100885u >= arg_2.a.a) & (arg_2.a.b & true)) || arg_2.a.b, true), vec3<bool>(arg_1.x, false, true), !(!(!vec3<bool>(arg_2.a.b, true, true))));
    var var_1 = Struct_3(Struct_2(func_1().a), arg_1.yy, u_input.a, _wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(-arg_3)));
    let var_2 = Struct_4(!(!select(arg_1, arg_1, true)));
    var_1 = Struct_3(func_4(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -989f), 861f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.d - var_1.d), _wgslsmith_f_op_f32(var_1.d * -270f))), 117f), Struct_3(arg_2, select(vec2<bool>(true, true), select(arg_1.yx, arg_1.zz, var_1.b), true), firstTrailingBit(-u_input.a), _wgslsmith_f_op_f32(-1328f + _wgslsmith_f_op_f32(min(arg_3, var_1.d))))), select(var_0.yy, vec2<bool>(any(select(var_2.a, vec3<bool>(var_0.x, false, false), false)), !var_0.x == (var_1.a.a.a != 1u)), true), _wgslsmith_dot_vec3_i32(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, var_1.c, var_1.c), countOneBits(vec3<i32>(u_input.a, var_1.c, 1i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 0i, 0i), vec3<i32>(0i, var_1.c, -2147483647i))), vec3<i32>(var_1.c, _wgslsmith_add_i32(u_input.a, -8201i), u_input.a), vec3<bool>(true, true, var_1.b.x)), vec3<i32>(var_1.c, u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1957i, -16619i), vec3<i32>(u_input.a, u_input.a, 32702i))) & _wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.a, 2147483647i, -30152i)), vec3<i32>(-3983i, var_1.c, u_input.a))), _wgslsmith_f_op_f32(1018f + _wgslsmith_f_op_f32(trunc(arg_3))));
    let var_3 = Struct_4(var_2.a);
    return !(!(!var_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(0u, vec3<bool>(_wgslsmith_f_op_f32(func_5(func_1())) < 1000f, true, true), Struct_2(func_1().a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1057f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f + 1001f), -945f)))));
    let var_1 = select(select(select(!vec4<bool>(true, true, var_0.x, var_0.x), select(!vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, true, true, false), select(vec4<bool>(var_0.x, true, false, true), vec4<bool>(var_0.x, true, false, false), var_0.x)), select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, false), !vec4<bool>(true, true, var_0.x, var_0.x))), !select(!vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(true, var_0.x, false, true), !vec4<bool>(var_0.x, false, false, true)), select(!(!vec4<bool>(false, var_0.x, false, var_0.x)), !vec4<bool>(var_0.x, var_0.x, true, var_0.x), !(!var_0.x))), select(!(!select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x))), !(!(!vec4<bool>(false, true, var_0.x, var_0.x))), true && any(!vec2<bool>(var_0.x, var_0.x))), false);
    var_0 = !select(var_1.yzy, func_6(1u, vec3<bool>(!var_0.x, var_0.x, var_0.x), func_4(vec4<f32>(377f, 157f, 380f, -753f), Struct_3(Struct_2(Struct_1(0u, var_1.x)), var_0.xy, u_input.a, 1000f)), -574f), false);
    var_0 = select(vec3<bool>(false, var_1.x, true), select(vec3<bool>(true || var_1.x, !var_1.x, var_1.x), select(!select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, var_1.x, true), true), vec3<bool>(all(!var_1.xw), !select(var_0.x, false, false), var_1.x)), var_1.x);
    var_0 = var_1.zyz;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-428f, -1101f)), -1000f);
    var_0 = func_6(~firstLeadingBit(~1u), var_1.wwy, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-555f, 253f, -184f, 1007f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(679f, -2099f, -1972f, 443f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(859f, 513f, 1080f, -206f), vec4<f32>(357f, -250f, -1217f, -462f), !vec4<bool>(var_0.x, false, false, false)))), Struct_3(Struct_2(func_1().a), var_1.ww, abs(~(-3528i)), 1744f)), -1132f);
    var_0 = func_6(~4294967295u, var_1.xxw, Struct_2(Struct_1(4687u << (1u % 32u), all(vec3<bool>(true, var_0.x, true)))), -221f);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec2_u32(select(vec2<u32>(1u, 0u), ~vec2<u32>(5237u, 4294967295u), true), vec2<u32>(11129u, 12823u)), countOneBits(~(~4294967295u)), _wgslsmith_add_i32(1i, _wgslsmith_sub_i32(~u_input.a, -u_input.a)), 0u);
}

