struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec4<bool>,
    e: i32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec4<i32>(59851i, 0i, 47743i, i32(-2147483648)), 28510i, vec3<f32>(110f, -1057f, -399f), vec4<bool>(true, false, true, false), i32(-2147483648)), Struct_2(vec4<i32>(-8123i, -58569i, 0i, -53529i), 1i, vec3<f32>(514f, -1702f, -375f), vec4<bool>(true, true, true, true), 1i), Struct_2(vec4<i32>(-22412i, -54486i, 2147483647i, i32(-2147483648)), 89904i, vec3<f32>(-472f, -611f, 209f), vec4<bool>(true, false, false, true), 3336i), Struct_2(vec4<i32>(i32(-2147483648), 14670i, -12691i, -1i), 1i, vec3<f32>(1507f, -896f, -326f), vec4<bool>(false, true, true, true), -7534i), Struct_2(vec4<i32>(5203i, i32(-2147483648), 1i, 0i), -22837i, vec3<f32>(-823f, 440f, 1177f), vec4<bool>(true, true, false, false), 1i), Struct_2(vec4<i32>(-7131i, -1i, -39035i, -1i), -12403i, vec3<f32>(-300f, -1997f, 831f), vec4<bool>(false, true, true, true), 2147483647i), Struct_2(vec4<i32>(-1i, 2147483647i, 66824i, 24234i), -17203i, vec3<f32>(765f, 747f, 1340f), vec4<bool>(false, true, true, true), 2147483647i), Struct_2(vec4<i32>(-4145i, 1i, 43215i, 9179i), 4437i, vec3<f32>(-862f, -961f, -245f), vec4<bool>(true, false, true, false), -1i), Struct_2(vec4<i32>(-24598i, -3771i, -12253i, 0i), -28495i, vec3<f32>(-239f, -345f, -150f), vec4<bool>(false, false, false, true), 1i), Struct_2(vec4<i32>(i32(-2147483648), -87958i, 2147483647i, 1628i), -1i, vec3<f32>(-868f, 590f, 241f), vec4<bool>(false, true, true, false), i32(-2147483648)), Struct_2(vec4<i32>(13977i, -46170i, -25254i, -1i), 2147483647i, vec3<f32>(815f, -276f, 1060f), vec4<bool>(true, true, false, true), i32(-2147483648)), Struct_2(vec4<i32>(1i, 33947i, i32(-2147483648), 0i), 39320i, vec3<f32>(-1124f, 121f, -1069f), vec4<bool>(true, false, true, false), -62401i), Struct_2(vec4<i32>(-33725i, 2147483647i, -1i, -1i), -16819i, vec3<f32>(-831f, -981f, 863f), vec4<bool>(false, true, false, true), 47708i), Struct_2(vec4<i32>(38547i, 71128i, -17789i, -76244i), -1i, vec3<f32>(528f, 296f, -919f), vec4<bool>(true, true, true, true), 42599i), Struct_2(vec4<i32>(0i, 34608i, 0i, 0i), 6040i, vec3<f32>(450f, 632f, -2160f), vec4<bool>(false, true, false, true), -1i), Struct_2(vec4<i32>(4042i, 1i, 15659i, 1i), 2147483647i, vec3<f32>(-445f, -968f, -990f), vec4<bool>(true, true, false, false), -16747i), Struct_2(vec4<i32>(-1i, -1i, -61838i, 9393i), -73440i, vec3<f32>(633f, -320f, -347f), vec4<bool>(true, false, true, false), 1i), Struct_2(vec4<i32>(i32(-2147483648), 64563i, 0i, 1i), 30837i, vec3<f32>(447f, -526f, -249f), vec4<bool>(true, false, false, false), -1i), Struct_2(vec4<i32>(-24255i, -1i, i32(-2147483648), 11487i), -57056i, vec3<f32>(-830f, 1121f, -1745f), vec4<bool>(false, true, false, false), 20685i), Struct_2(vec4<i32>(-3244i, i32(-2147483648), 1i, -13614i), 16561i, vec3<f32>(-692f, 1701f, 1000f), vec4<bool>(true, true, true, false), -47070i), Struct_2(vec4<i32>(2147483647i, 180i, -1130i, 30865i), 1i, vec3<f32>(217f, -502f, -2385f), vec4<bool>(false, false, false, false), 30329i));

var<private> global2: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(-5438i, 1i), vec2<i32>(1i, -17734i), vec2<i32>(39616i, -28102i), vec2<i32>(198i, -8065i), vec2<i32>(-1i, 46744i), vec2<i32>(2147483647i, -1i), vec2<i32>(-4385i, -1i), vec2<i32>(38098i, 61027i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-28337i, 0i), vec2<i32>(32806i, 38835i), vec2<i32>(35144i, 2147483647i), vec2<i32>(i32(-2147483648), -23127i), vec2<i32>(1i, -1i), vec2<i32>(-149i, 14304i), vec2<i32>(-1i, 21750i), vec2<i32>(-99018i, -16233i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_div_u32(u_input.d, ~17743u);
    let var_1 = vec2<i32>(arg_0.x, 1i);
    let var_2 = 1225f;
    global2 = array<vec2<i32>, 17>();
    let var_3 = _wgslsmith_add_u32(u_input.a.x, _wgslsmith_mod_u32(max(~u_input.d, u_input.c), abs(1u))) >> (4294967295u % 32u);
    return arg_1;
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_3 {
    var var_0 = firstTrailingBit(min(vec4<u32>(~arg_0, select(33935u, arg_0, true), ~arg_0, ~0u), countOneBits(reverseBits(vec4<u32>(4294967295u, arg_0, u_input.b, 24676u))))) << ((min(vec4<u32>(53009u, select(u_input.b, 3468u, false), ~u_input.a.x, ~arg_0), ~vec4<u32>(1u, 0u, 4294967295u, 0u)) ^ vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0, u_input.a.x, 0u) ^ vec4<u32>(6654u, 0u, arg_0, 48155u), countOneBits(vec4<u32>(arg_0, arg_0, 11605u, arg_0))), ~37337u, 0u, _wgslsmith_sub_u32(arg_0, ~0u))) % vec4<u32>(32u));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1435f, 2305f))), arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(-arg_1.x)), arg_1.x);
    global1 = array<Struct_2, 21>();
    let var_2 = Struct_4(~(~1u), false);
    var var_3 = Struct_4(1u, !(u_input.a.x < _wgslsmith_dot_vec2_u32(var_0.yz << (u_input.a % vec2<u32>(32u)), vec2<u32>(arg_0, 5356u))));
    return func_2(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(abs(20744i), _wgslsmith_div_i32(-2023i, u_input.e.x)), -29641i << (~var_3.a % 32u)), arg_2.a.x), Struct_3(arg_2.a ^ vec2<i32>(arg_2.a.x, min(-2147483647i, -70191i))));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> Struct_3 {
    global1 = array<Struct_2, 21>();
    return func_3(u_input.d >> (~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b, u_input.d, u_input.a.x, u_input.a.x)), ~vec4<u32>(u_input.a.x, 3281u, 0u, 0u)) % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(293f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - -960f)), arg_1, arg_1) - vec4<f32>(942f, arg_1, arg_1, _wgslsmith_f_op_f32(max(-1677f, -276f)))), func_2(vec2<i32>(_wgslsmith_dot_vec3_i32(global0.zxw | vec3<i32>(-7354i, arg_0.x, 0i), _wgslsmith_div_vec3_i32(global0.zww, global0.xxz)), global0.x), Struct_3(vec2<i32>(_wgslsmith_dot_vec3_i32(arg_0.xzy, vec3<i32>(global0.x, 15800i, 55078i)), _wgslsmith_sub_i32(8166i, 2147483647i)))), global0.zz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~(-firstLeadingBit(-vec4<i32>(u_input.e.x, -1i, -20672i, -2147483647i))), _wgslsmith_f_op_f32(abs(-983f)));
    var var_1 = ~(u_input.d | countOneBits(~1u | u_input.c));
    var_1 = ~firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_sub_u32(~u_input.a.x, ~1u), u_input.d));
    var_1 = select(reverseBits(_wgslsmith_mult_u32(u_input.a.x, 1u)), ~(~(u_input.b & 1u)), !(!all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))));
    let var_2 = u_input.e.x;
    let var_3 = u_input.c > 26509u;
    var_1 = 36939u;
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -399f))), -504f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -335f)) + vec2<f32>(_wgslsmith_f_op_f32(sign(2090f)), 1f)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.a.x, u_input.d), reverseBits(vec3<u32>(u_input.a.x, u_input.b, u_input.c))), u_input.d, ~u_input.d, 1u), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_4.x)), _wgslsmith_f_op_f32(step(732f, var_4.x)))))), _wgslsmith_f_op_f32(-875f * 1051f), _wgslsmith_f_op_f32(-var_4.x), 984f), ~select(u_input.d, ~17244u, var_3));
}

