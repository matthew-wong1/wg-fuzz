struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(126f, vec4<i32>(25237i, 2147483647i, 28981i, -1i)), Struct_1(1040f, vec4<i32>(67955i, 55589i, -1i, 16709i)), Struct_1(889f, vec4<i32>(34422i, 21525i, i32(-2147483648), 53061i)), Struct_1(-235f, vec4<i32>(2147483647i, 1i, -1i, 2147483647i)), Struct_1(141f, vec4<i32>(-8183i, 1i, -24140i, 2147483647i)), Struct_1(946f, vec4<i32>(28723i, -62467i, 2147483647i, 0i)), Struct_1(905f, vec4<i32>(i32(-2147483648), -3152i, i32(-2147483648), 0i)), Struct_1(-1000f, vec4<i32>(i32(-2147483648), -1i, 1i, 0i)));

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(211f, vec4<i32>(17638i, 2147483647i, -29778i, -18957i)), Struct_1(1091f, vec4<i32>(-1i, 19057i, 2147483647i, 0i)), Struct_1(-648f, vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 0i)), Struct_1(-322f, vec4<i32>(-19546i, 1i, 8267i, 40623i)), Struct_1(-328f, vec4<i32>(-1i, -38312i, 14120i, -12556i)), Struct_1(-414f, vec4<i32>(21200i, i32(-2147483648), 0i, 29i)), Struct_1(1062f, vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 1i)), Struct_1(2206f, vec4<i32>(23741i, -14548i, -1i, -140i)), Struct_1(1505f, vec4<i32>(-31677i, 31964i, 1i, -1i)), Struct_1(2270f, vec4<i32>(1i, -10361i, 1213i, -10344i)), Struct_1(634f, vec4<i32>(1i, 2147483647i, 1i, 2147483647i)), Struct_1(-1000f, vec4<i32>(1110i, 2147483647i, 7929i, -1i)), Struct_1(-1000f, vec4<i32>(44230i, 0i, i32(-2147483648), i32(-2147483648))), Struct_1(1055f, vec4<i32>(-1i, 1i, -25059i, 31727i)), Struct_1(319f, vec4<i32>(0i, -1i, 22395i, -14731i)), Struct_1(-103f, vec4<i32>(-50777i, 1i, -6286i, -55963i)), Struct_1(294f, vec4<i32>(-62793i, -18424i, 2147483647i, 2147483647i)), Struct_1(812f, vec4<i32>(2147483647i, 7072i, 2147483647i, 1047i)), Struct_1(1183f, vec4<i32>(-62002i, 32392i, 15640i, 5351i)), Struct_1(-1030f, vec4<i32>(-1i, 2147483647i, -27007i, 42752i)), Struct_1(-614f, vec4<i32>(2147483647i, 858i, -35586i, 5825i)), Struct_1(-1588f, vec4<i32>(-1i, 36818i, 2147483647i, 2147483647i)), Struct_1(251f, vec4<i32>(1i, 2147483647i, 43343i, 1i)), Struct_1(-289f, vec4<i32>(-57962i, 2147483647i, -25153i, -9125i)), Struct_1(-298f, vec4<i32>(-2098i, -20054i, i32(-2147483648), i32(-2147483648))), Struct_1(875f, vec4<i32>(-40040i, 0i, 718i, -16317i)), Struct_1(-561f, vec4<i32>(-1i, 0i, 47362i, 42808i)), Struct_1(331f, vec4<i32>(11617i, -42438i, 2147483647i, -12331i)), Struct_1(-719f, vec4<i32>(-1i, 7108i, 2147483647i, 2147483647i)));

var<private> global2: i32;

var<private> global3: array<Struct_1, 26>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool, arg_3: vec2<i32>) -> Struct_1 {
    global0 = array<Struct_1, 8>();
    global2 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a.x, -14514i), u_input.a.x ^ arg_3.x);
    let var_0 = abs(-13178i);
    global2 = _wgslsmith_div_i32(arg_0.b.x, -11192i);
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(767f, 387f), vec2<f32>(arg_0.a, 587f), arg_2)) + vec2<f32>(arg_0.a, -885f))))))));
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(-u_input.a.x, 0i);
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - 698f) - _wgslsmith_f_op_f32(max(arg_0.a, -1197f))))), arg_1.x));
    let var_2 = Struct_1(arg_0.a, ~vec4<i32>(arg_0.b.x, -func_2(Struct_1(1702f, arg_0.b), u_input.c, false, vec2<i32>(-2147483647i, -1i)).b.x, 4818i, ~u_input.a.x));
    global1 = array<Struct_1, 29>();
    global1 = array<Struct_1, 29>();
    return func_2(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-368f + 514f))), vec4<i32>(-1i, 0i, var_2.b.x, ~func_2(var_2, vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), true, vec2<i32>(arg_0.b.x, var_2.b.x)).b.x)), ~firstLeadingBit(countOneBits(u_input.c)), true | (true & all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true))), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(~(-u_input.a.xz), ~min(var_2.b.wz, arg_0.b.zw)), vec2<i32>(var_2.b.x, arg_0.b.x)));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> u32 {
    var var_0 = vec3<i32>(-1i, 7013i, -(~min(-31921i, 2147483647i)) >> (~u_input.d % 32u));
    let var_1 = u_input.a >> (u_input.c % vec3<u32>(32u));
    var_0 = arg_0.b.wxy;
    var_0 = _wgslsmith_div_vec3_i32(~(-abs(_wgslsmith_mult_vec3_i32(var_1, vec3<i32>(u_input.a.x, var_0.x, -1i)))), u_input.a);
    let var_2 = var_1.x;
    return ~_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(~u_input.b, 1u, u_input.b)), ~_wgslsmith_sub_u32(~u_input.c.x, select(33989u, u_input.b, true)));
}

fn func_1() -> f32 {
    let var_0 = (u_input.d & func_4(func_3(func_2(Struct_1(-295f, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec3<u32>(0u, 1u, 4294967295u), true, vec2<i32>(u_input.a.x, 2147483647i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1133f, 2417f, -1817f, -455f) - vec4<f32>(832f, 1000f, -1351f, 374f))), ~1i)) <= (_wgslsmith_clamp_u32(119888u, 111267u, 48341u) << (reverseBits(_wgslsmith_dot_vec2_u32(u_input.c.zx, u_input.c.xy) & (u_input.b >> (4073u % 32u))) % 32u));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(575f, 1478f))), 393f))), 1672f);
    return _wgslsmith_div_f32(-1463f, -363f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 41683i;
    let var_0 = Struct_1(-683f, vec4<i32>(_wgslsmith_mult_i32(-_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.a.x), ~u_input.a.x, u_input.a.x ^ 1i, -28122i));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(select(376f, var_0.a, false))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -775f), -574f)), _wgslsmith_f_op_f32(func_1())), all(vec4<bool>(var_0.a < 692f, true, any(vec2<bool>(false, false)), all(vec4<bool>(false, true, false, true)))))), max(vec4<i32>(var_0.b.x, reverseBits(u_input.a.x), 1i, u_input.a.x) >> (vec4<u32>(countOneBits(1u), ~9951u, ~116462u, ~u_input.c.x) % vec4<u32>(32u)), vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(var_0.b, vec4<i32>(1i, -67100i, -1i, u_input.a.x))));
    global1 = array<Struct_1, 29>();
    global2 = -1i;
    global1 = array<Struct_1, 29>();
    var var_2 = Struct_1(2709f, countOneBits(_wgslsmith_sub_vec4_i32(-(~var_0.b), var_0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(u_input.c.x, u_input.c.x, ~u_input.d, u_input.d >> (19682u % 32u)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(65670u, 0u, u_input.b, 7582u) & (vec4<u32>(4294967295u, 0u, 9929u, u_input.d) >> (vec4<u32>(u_input.d, 37186u, u_input.c.x, u_input.c.x) % vec4<u32>(32u))), firstLeadingBit(select(vec4<u32>(u_input.b, 1u, 28619u, 4294967295u), vec4<u32>(u_input.c.x, u_input.c.x, 99567u, 1u), vec4<bool>(true, true, false, false))), abs(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.d, u_input.c.x, 56442u), vec4<u32>(u_input.c.x, 0u, 115442u, u_input.d)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1161f, var_1.a)), vec2<f32>(-360f, var_1.a), true))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-806f + 449f), _wgslsmith_f_op_f32(-var_1.a)), var_1.a)));
}

