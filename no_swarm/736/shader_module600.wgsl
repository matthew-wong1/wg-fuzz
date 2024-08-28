struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec4<f32>(-128f, -1006f, -1231f, 1859f)), Struct_2(vec4<f32>(-765f, 749f, 490f, 807f)), Struct_2(vec4<f32>(1991f, -521f, -1222f, 390f)), Struct_2(vec4<f32>(1068f, 798f, -1787f, -870f)), Struct_2(vec4<f32>(-509f, -407f, 593f, -465f)), Struct_2(vec4<f32>(1108f, 452f, 769f, -682f)), Struct_2(vec4<f32>(-211f, -442f, 1100f, -419f)), Struct_2(vec4<f32>(-159f, -1000f, -574f, -776f)), Struct_2(vec4<f32>(512f, -1332f, 149f, 489f)), Struct_2(vec4<f32>(-1300f, -978f, -439f, 1239f)), Struct_2(vec4<f32>(364f, 1026f, 976f, 1792f)), Struct_2(vec4<f32>(1648f, 561f, -1780f, 1001f)));

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<bool>(true, false), vec4<u32>(616u, 44361u, 1u, 82516u), 25224i, vec3<f32>(-490f, 2109f, -631f)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    let var_0 = Struct_3(global2[_wgslsmith_index_u32(u_input.a, 1u)], true, global2[_wgslsmith_index_u32(~8189u, 1u)]);
    global2 = array<Struct_1, 1>();
    global0 = true;
    global2 = array<Struct_1, 1>();
    var var_1 = u_input.a | max(u_input.a, 4294967295u);
    return !select(!var_0.b, var_0.c.a.x, true);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> i32 {
    global1 = array<Struct_2, 12>();
    global1 = array<Struct_2, 12>();
    var var_0 = Struct_1(select(arg_0.a, vec2<bool>(arg_0.a.x, true), any(select(vec2<bool>(arg_0.a.x, true), vec2<bool>(false, false), all(vec4<bool>(false, arg_0.a.x, arg_0.a.x, arg_0.a.x))))), max(~(~arg_1), select(firstTrailingBit(vec4<u32>(1u, u_input.a, 1u, arg_0.b.x)), vec4<u32>(4294967295u, u_input.a, u_input.a, 1u) ^ vec4<u32>(u_input.a, u_input.a, arg_1.x, 10164u), false) & arg_1), firstTrailingBit(firstLeadingBit(-arg_0.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_div_f32(1058f, arg_0.d.x), _wgslsmith_f_op_f32(arg_0.d.x * 328f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.x, 1000f, arg_0.d.x) * vec3<f32>(-535f, arg_0.d.x, arg_0.d.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1041f, 1000f, -143f) + arg_0.d))))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.d.x, 1095f, arg_0.d.x, 1000f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, var_0.d.x, arg_0.d.x, -999f) + vec4<f32>(-254f, arg_0.d.x, 785f, 1381f))))));
    var var_2 = vec3<i32>(106813i, var_0.c, -(-(var_0.c | -12402i) >> (_wgslsmith_sub_u32(arg_1.x, ~51272u) % 32u)));
    return arg_0.c;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_3, arg_3: i32) -> u32 {
    global0 = false & !(!any(vec2<bool>(true, arg_2.c.a.x)));
    var var_0 = func_4(Struct_1(select(vec2<bool>(false, all(vec4<bool>(arg_2.c.a.x, arg_2.c.a.x, true, false))), vec2<bool>(arg_2.b, func_3()), arg_2.b), arg_2.c.b, arg_2.a.c, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-227f)))), 198f, -386f)), _wgslsmith_sub_vec4_u32(min(~(vec4<u32>(4294967295u, 4294967295u, arg_0, 68517u) | arg_2.c.b), vec4<u32>(u_input.a << (4294967295u % 32u), ~u_input.a, u_input.a, ~6829u)), ~(arg_2.c.b & arg_2.a.b)));
    var var_1 = arg_2.c.d.x;
    var_0 = arg_1;
    var var_2 = arg_2;
    return u_input.a;
}

fn func_1(arg_0: vec3<f32>) -> StorageBuffer {
    var var_0 = -4227i;
    var var_1 = 9741i;
    var var_2 = Struct_1(vec2<bool>(!any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), !any(vec4<bool>(true, true, true, true))), min(vec4<u32>(85460u & u_input.a, u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 65719u, u_input.a), vec3<u32>(u_input.a, 5386u, u_input.a)), 24258u), vec4<u32>(~u_input.a, ~0u, 1u, _wgslsmith_add_u32(9656u, u_input.a))) ^ vec4<u32>(~func_2(13689u, 0i, Struct_3(Struct_1(vec2<bool>(false, false), vec4<u32>(65186u, u_input.a, u_input.a, 48248u), -6336i, vec3<f32>(arg_0.x, arg_0.x, 743f)), true, Struct_1(vec2<bool>(false, false), vec4<u32>(74732u, u_input.a, u_input.a, u_input.a), 2147483647i, vec3<f32>(-567f, arg_0.x, arg_0.x))), -44985i), u_input.a, ~_wgslsmith_mult_u32(4761u, u_input.a), ~(u_input.a & u_input.a)), ~firstLeadingBit(~(-2147483647i)) & firstTrailingBit(min(firstTrailingBit(-2147483647i), _wgslsmith_mod_i32(-18327i, -65573i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_0, arg_0))));
    var var_3 = select(~(~reverseBits(var_2.b.zwz)), ~var_2.b.xyy, true);
    var var_4 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d.x, arg_0.x, -575f, 374f) * vec4<f32>(arg_0.x, 1000f, var_2.d.x, var_2.d.x)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-231f, var_2.d.x, 1354f, 608f) - vec4<f32>(873f, 554f, var_2.d.x, var_2.d.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.d.x, arg_0.x, var_2.d.x, 541f), vec4<f32>(var_2.d.x, arg_0.x, -473f, var_2.d.x), vec4<bool>(var_2.a.x, var_2.a.x, true, var_2.a.x))))), !var_2.a.x)) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.d.x, 2314f, arg_0.x, -1759f)))))));
    return StorageBuffer(_wgslsmith_div_i32(59613i, -countOneBits(var_2.c)), ~(~var_2.b), var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-181f * -859f))), _wgslsmith_f_op_f32(545f + _wgslsmith_f_op_f32(-1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1973f + -729f), 123f));
    var var_1 = -firstLeadingBit(vec4<i32>(1i, -_wgslsmith_mult_i32(-44817i, 15429i), -9055i, ~60663i));
    var var_2 = var_0.x;
    global2 = array<Struct_1, 1>();
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2785f, _wgslsmith_f_op_f32(step(var_0.x, 1f)), 1f)));
}

