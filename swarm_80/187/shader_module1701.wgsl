struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(-1000f, Struct_1(0u), Struct_1(75294u), 290f, Struct_1(global0.x));
    var_0 = Struct_3(-1000f, Struct_1(~reverseBits(global0.x)), Struct_1(~(~0u)), var_0.a, Struct_1(0u >> (u_input.b % 32u)));
    var var_1 = Struct_1(~u_input.b);
    var var_2 = -(~(-vec4<i32>(~u_input.a, u_input.a, abs(1i), 1i)));
    var_1 = var_0.c;
    return var_0.e;
}

fn func_3() -> i32 {
    var var_0 = vec2<u32>(global0.x, reverseBits(~global0.x));
    let var_1 = -_wgslsmith_mult_vec2_i32(-vec2<i32>(1i, -2147483647i), min(-vec2<i32>(u_input.a, u_input.a), -abs(vec2<i32>(u_input.a, 0i))));
    let var_2 = Struct_5(Struct_4(Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-290f)), _wgslsmith_f_op_f32(526f + -2464f), true)), Struct_1(global0.x), func_2(), -724f, func_2()), ~u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, 887f, -504f)))))));
    return u_input.a;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: i32) -> Struct_3 {
    return Struct_3(arg_0.d, arg_0.b, func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1516f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -986f)))) + -367f), func_2());
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: vec4<u32>) -> vec4<u32> {
    let var_0 = func_4(Struct_3(834f, func_2(), func_2(), _wgslsmith_f_op_f32(abs(arg_0.x)), Struct_1(4924u)), Struct_2(-vec4<i32>(u_input.a, min(u_input.a, 7602i), firstTrailingBit(u_input.a), select(-1i, -79332i, true)), countOneBits(~vec4<i32>(0i, -2147483647i, 2147483647i, -6267i)) >> (vec4<u32>(abs(1u), 1u, arg_1.x, _wgslsmith_sub_u32(0u, global0.x)) % vec4<u32>(32u)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), -func_3());
    let var_1 = global0.x;
    var var_2 = false;
    return ~arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(249f, -1363f, -1632f), vec3<f32>(-305f, 501f, 1426f))) + _wgslsmith_div_vec3_f32(vec3<f32>(-755f, 132f, -1004f), vec3<f32>(1314f, -718f, 1780f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1045f, 1338f, 1000f) - vec3<f32>(464f, -309f, 645f))), vec3<bool>(true, true, true))) * vec3<f32>(-813f, _wgslsmith_div_f32(-928f, 1f), _wgslsmith_div_f32(1834f, _wgslsmith_f_op_f32(step(-913f, 542f))))), abs(vec2<u32>(global0.x, u_input.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(min(1u, global0.x << (4294967295u % 32u)), u_input.b, u_input.b, 1u), reverseBits(vec4<u32>(_wgslsmith_mult_u32(global0.x, 1u), ~u_input.b, ~u_input.b, 1u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, -712f, -720f, 162f), vec4<f32>(1001f, -1000f, -1173f, -1081f)))), vec4<f32>(_wgslsmith_f_op_f32(-120f + -615f), _wgslsmith_f_op_f32(f32(-1f) * -205f), _wgslsmith_f_op_f32(1000f - 664f), -1000f), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), false), select(true, true, true)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1198f, 1167f, -426f, -794f) * vec4<f32>(-1443f, 799f, 166f, 1822f)))))));
    var_0 = min(vec4<u32>(~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(46680u, 64020u, 6155u, 104919u), vec4<u32>(u_input.b, var_0.x, 1u, global0.x)), select(108425u, 4294967295u, true)), min(~(~4294967295u), 93580u), ~global0.x, 0u), vec4<u32>(_wgslsmith_sub_u32(var_0.x, global0.x), ~(~_wgslsmith_div_u32(32346u, var_0.x)), _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.x, u_input.b, global0.x), vec4<u32>(0u, 17975u, 46431u, u_input.b)), ~1895u >> (global0.x % 32u)), ~(~_wgslsmith_div_u32(var_0.x, global0.x))));
    let var_2 = 27512i;
    var var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(floor(278f))), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(ceil(1f))));
    var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + _wgslsmith_f_op_f32(-378f * _wgslsmith_f_op_f32(262f + var_3.x))) - _wgslsmith_f_op_f32(max(-465f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(514f * -386f), var_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1448f))));
    let var_4 = var_2 << (24793u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(Struct_3(var_1.x, Struct_1(global0.x), Struct_1(~33684u), _wgslsmith_f_op_f32(round(var_1.x)), func_4(Struct_3(var_3.x, Struct_1(24498u), Struct_1(16505u), 186f, Struct_1(0u)), Struct_2(vec4<i32>(17457i, 80172i, var_4, var_4), vec4<i32>(u_input.a, var_2, 8184i, var_4), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), 1i ^ u_input.a).c), Struct_2(vec4<i32>(u_input.a, ~31144i, 2147483647i, var_4), vec4<i32>(var_4, u_input.a | -7946i, var_4 << (0u % 32u), -45859i), vec3<bool>(false, true, true)), select(vec3<bool>(1i < var_4, var_4 < 19149i, true), vec3<bool>(true, true, select(false, true, false)), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, false))), -2147483647i).b.a, ~_wgslsmith_clamp_i32(~countOneBits(var_2), -5319i, 1i), firstTrailingBit(firstLeadingBit(~abs(vec2<u32>(1u, 6793u)))), var_3.x, vec3<i32>(firstTrailingBit(_wgslsmith_clamp_i32(min(-46030i, -19217i), -var_4, _wgslsmith_mult_i32(-2147483647i, u_input.a))), u_input.a, -44215i));
}

