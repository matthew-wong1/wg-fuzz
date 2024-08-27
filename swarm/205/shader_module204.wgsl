struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
    d: vec4<i32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec4<u32>,
    d: bool,
    e: bool,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = Struct_1(vec4<u32>(arg_0, max(0u, ~25979u), ~(~u_input.a), ~arg_0), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0, min(u_input.b.x, 67340u), _wgslsmith_sub_u32(u_input.a, arg_0), 4294967295u), max(vec4<u32>(15332u, 0u, 4294967295u, arg_0), max(vec4<u32>(u_input.b.x, u_input.b.x, arg_0, 17604u), vec4<u32>(u_input.a, arg_0, u_input.b.x, u_input.a)))) >> (select(vec4<u32>(1u, ~4294967295u, _wgslsmith_mod_u32(arg_0, 4294967295u), min(0u, arg_0)), _wgslsmith_add_vec4_u32(vec4<u32>(57316u, 4294967295u, arg_0, u_input.a), ~vec4<u32>(77116u, u_input.b.x, 1u, 46619u)), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)));
    let var_1 = Struct_2(~var_0.a.wzy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-423f))) * 1289f), var_0, -(~firstTrailingBit(vec4<i32>(u_input.c.x, -2147483647i, -2147483647i, 2147483647i) << (vec4<u32>(65345u, var_0.a.x, var_0.a.x, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-407f * -877f)));
    let var_2 = select(0i, -14606i, (min(-2147483647i, firstTrailingBit(-2147483647i)) >= u_input.c.x) == any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))));
    let var_3 = var_1.b;
    var var_4 = false;
    return all(select(vec4<bool>(any(vec4<bool>(false, true, false, true)), true, select(false, true, true), !(var_1.b >= var_3)), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, false)), true), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, false, all(vec4<bool>(true, true, true, true)), true), true)));
}

fn func_2() -> Struct_5 {
    let var_0 = 0u;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-535f))), -783f)), 199f, 723f);
    let var_2 = vec2<i32>(u_input.c.x, 2147483647i);
    var var_3 = !vec4<bool>(func_3(10491u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(select(147f, var_1.x, false))) <= _wgslsmith_f_op_f32(291f * _wgslsmith_f_op_f32(min(var_1.x, 1574f))), all(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), true);
    var var_4 = Struct_4(Struct_2(firstLeadingBit(max(~vec3<u32>(29892u, 61561u, var_0), vec3<u32>(1u, 21537u, u_input.a))), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), Struct_1(vec4<u32>(1u, ~u_input.b.x, _wgslsmith_sub_u32(1u, 0u), _wgslsmith_mod_u32(u_input.a, var_0)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, var_0, 25734u, 0u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 8453u), vec4<u32>(u_input.b.x, 150220u, var_0, u_input.a))), -select(firstLeadingBit(vec4<i32>(u_input.c.x, var_2.x, u_input.c.x, 0i)), vec4<i32>(-63127i, 1i, 2147483647i, -2147483647i), true), _wgslsmith_f_op_f32(step(820f, var_1.x))), !(!select(select(vec4<bool>(var_3.x, true, false, var_3.x), vec4<bool>(true, var_3.x, var_3.x, var_3.x), var_3.x), select(vec4<bool>(true, false, var_3.x, var_3.x), vec4<bool>(false, var_3.x, var_3.x, false), var_3.x), !vec4<bool>(var_3.x, var_3.x, true, false))), abs(vec4<u32>(_wgslsmith_sub_u32(u_input.b.x | u_input.a, 62361u), var_0, ~u_input.b.x, _wgslsmith_clamp_u32(abs(u_input.b.x), u_input.b.x & u_input.b.x, ~var_0))), any(vec2<bool>(false, func_3(~0u))), any(select(!vec3<bool>(false, var_3.x, true), !vec3<bool>(true, false, var_3.x), vec3<bool>(var_3.x & var_3.x, var_3.x || var_3.x, true))));
    return Struct_5(vec3<u32>(_wgslsmith_dot_vec2_u32(var_4.c.zy, _wgslsmith_mod_vec2_u32(var_4.c.ww, vec2<u32>(0u, 0u))), u_input.b.x, _wgslsmith_dot_vec4_u32(var_4.a.c.a, vec4<u32>(85719u, var_0, 52959u, var_0)) ^ _wgslsmith_clamp_u32(var_4.c.x, 1u, u_input.b.x)) << (~vec3<u32>(~var_4.a.c.b.x, var_0, 1u) % vec3<u32>(32u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_1.a;
    let var_1 = func_2();
    let var_2 = arg_2.d.x;
    var var_3 = arg_1;
    var var_4 = max(arg_1.a, select(~_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_2.c.b.x, u_input.b.x, 31343u), reverseBits(arg_1.a)), ~(~arg_2.a), func_3(abs(44546u))));
    return Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.x, 19976u, 23812u, var_3.a.x), ~vec4<u32>(var_0.x, 17655u, arg_0.x, 60624u), arg_2.c.a), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.c.a.x, 0u, arg_2.c.a.x, 4294967295u), vec4<u32>(var_0.x, 4294967295u, 37650u, 4294967295u))) | (arg_2.c.b >> (arg_2.c.b % vec4<u32>(32u))), firstLeadingBit(vec4<u32>(0u, var_1.a.x, _wgslsmith_mult_u32(~4294967295u, max(0u, 1u)), arg_2.c.a.x)));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: bool, arg_3: vec4<u32>) -> u32 {
    let var_0 = arg_2;
    var var_1 = !vec3<bool>(arg_2, _wgslsmith_mult_i32(46900i, i32(-1i) * -24759i) >= _wgslsmith_sub_i32(0i, u_input.c.x), arg_2);
    var_1 = vec3<bool>(!(!(!(false | arg_2))), var_0, false);
    var var_2 = Struct_3(func_4(max(vec3<u32>(_wgslsmith_clamp_u32(11900u, arg_0, 29168u), min(arg_0, 48528u), 0u), vec3<u32>(abs(0u), arg_3.x, ~arg_0)), func_2(), Struct_2(arg_3.xyz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x)), Struct_1(arg_3, vec4<u32>(arg_0, arg_3.x, arg_3.x, 38476u)), -_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, -1i, u_input.c.x, u_input.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), 1644f)))), ~(u_input.b.x & ~_wgslsmith_div_u32(1698u, 21943u)), (_wgslsmith_mod_vec4_u32(reverseBits(arg_3), max(vec4<u32>(1379u, 65719u, u_input.b.x, 1601u), vec4<u32>(arg_3.x, 1u, 1u, 33794u))) ^ ~vec4<u32>(0u, 4294967295u, 67385u, 29470u)) | arg_3, min(arg_3.zy, u_input.b));
    let var_3 = func_2();
    return ~(u_input.a << (54639u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1551f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1485f)), -1000f), all(vec3<bool>(true, true, true)))))), -344f, true));
    var var_1 = _wgslsmith_sub_i32(abs(45818i), _wgslsmith_mult_i32(0i, u_input.c.x));
    var var_2 = Struct_2(abs(vec3<u32>(~1u, func_1(u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 101f, 253f) - vec3<f32>(-418f, -1464f, 438f)), true, vec4<u32>(u_input.b.x, u_input.b.x, 50811u, 0u)), 1u)), -112f, Struct_1(~(vec4<u32>(u_input.b.x, u_input.b.x, 32545u, u_input.a) ^ abs(vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, u_input.b.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(func_4(vec3<u32>(25618u, 65287u, u_input.b.x), Struct_5(vec3<u32>(4294967295u, 33934u, 8352u)), Struct_2(vec3<u32>(0u, u_input.b.x, 63242u), var_0, Struct_1(vec4<u32>(18896u, 14543u, 0u, 100068u), vec4<u32>(1u, u_input.a, u_input.b.x, 1u)), vec4<i32>(u_input.c.x, -3243i, u_input.c.x, -1i), -497f)).a.x, ~u_input.b.x, 59043u, u_input.a), ~(~vec4<u32>(77654u, 9013u, 0u, u_input.b.x)))), reverseBits(~(~(~vec4<i32>(18414i, -29382i, u_input.c.x, u_input.c.x)))), -661f);
    let var_3 = var_2.a.x;
    var var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -144f), _wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_f32(var_2.e + var_2.b)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.e, 713f, -901f))))))) + vec3<f32>(_wgslsmith_f_op_f32(min(-486f, 884f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -909f)), _wgslsmith_f_op_f32(f32(-1f) * -862f))), _wgslsmith_add_i32(-13719i, ~u_input.c.x), -403f, u_input.c);
}

