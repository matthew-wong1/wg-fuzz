struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(32093u, 1u, 4294967295u), vec3<u32>(5879u, 67889u, 16377u), vec3<u32>(0u, 44223u, 4294967295u), vec3<u32>(1u, 35486u, 64610u), vec3<u32>(83726u, 0u, 54559u), vec3<u32>(68441u, 1u, 35219u), vec3<u32>(0u, 4294967295u, 29570u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(0u, 0u, 72299u), vec3<u32>(47311u, 9305u, 10077u), vec3<u32>(58509u, 49105u, 112235u), vec3<u32>(46225u, 1u, 1u), vec3<u32>(27146u, 4294967295u, 4294967295u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(4294967295u, 1u, 35182u), vec3<u32>(35223u, 11271u, 6814u), vec3<u32>(25529u, 34410u, 0u), vec3<u32>(4294967295u, 38439u, 57731u), vec3<u32>(0u, 0u, 27922u), vec3<u32>(72870u, 11228u, 6388u), vec3<u32>(0u, 99884u, 0u), vec3<u32>(38556u, 1u, 0u), vec3<u32>(1u, 44960u, 1u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(70283u, 31076u, 4294967295u), vec3<u32>(9760u, 1u, 0u), vec3<u32>(0u, 62463u, 39139u), vec3<u32>(1u, 55696u, 15394u), vec3<u32>(4294967295u, 1u, 4294967295u));

var<private> global2: vec2<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -138f) * _wgslsmith_f_op_f32(f32(-1f) * -944f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-393f, -510f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -958f) + _wgslsmith_f_op_f32(min(643f, -150f))))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32) -> bool {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(306f, 1f), _wgslsmith_f_op_f32(func_3(vec2<bool>(!global0.c, arg_0.x | false)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 959f))))));
    let var_1 = ~vec2<i32>((u_input.a & arg_1.a) << (~4294967295u % 32u), countOneBits(u_input.a)) >> (vec2<u32>(global0.b.x, _wgslsmith_div_u32(arg_2, min(min(52238u, arg_1.b.x), ~0u))) % vec2<u32>(32u));
    var var_2 = arg_2;
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) - 1321f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-199f * 178f) - var_0.x) * -494f)), _wgslsmith_f_op_f32(var_0.x - var_0.x));
    var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * -226f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-613f * -1480f)))), 825f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1367f * -679f), var_0.x)), vec2<f32>(296f, _wgslsmith_f_op_f32(-var_0.x))), any(vec2<bool>(true, arg_1.c))));
    return any(!select(arg_0, vec4<bool>(global0.c & false, arg_0.x, any(vec4<bool>(global0.c, arg_0.x, false, global0.c)), any(vec3<bool>(false, arg_0.x, arg_0.x))), arg_0.x));
}

fn func_1() -> Struct_1 {
    let var_0 = !select(!select(select(vec2<bool>(false, global0.c), vec2<bool>(true, true), vec2<bool>(global0.c, global0.c)), select(vec2<bool>(true, global0.c), vec2<bool>(false, global0.c), vec2<bool>(false, true)), global0.c), select(!(!vec2<bool>(false, global0.c)), vec2<bool>(global0.c && true, global0.c), _wgslsmith_mult_u32(0u, 18677u) > (global2.x << (0u % 32u))), vec2<bool>(func_2(vec4<bool>(true, global0.c, global0.c, global0.c), Struct_1(14137i, global0.b, true), _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 1866u), vec2<u32>(global2.x, 7965u))), all(!vec2<bool>(global0.c, true))));
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(28488i, global0.a, _wgslsmith_sub_i32(_wgslsmith_sub_i32(-1i, u_input.a), ~26206i & u_input.a)), max(-reverseBits(vec3<i32>(0i, 2147483647i, global0.a)), _wgslsmith_mult_vec3_i32(select(-vec3<i32>(0i, global0.a, u_input.a), ~vec3<i32>(-31257i, u_input.a, 0i), !vec3<bool>(global0.c, global0.c, false)), reverseBits(vec3<i32>(1285i, u_input.a, -2147483647i)))));
    global2 = abs(firstLeadingBit(countOneBits(global0.b) | _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global2.x, 12586u), global0.b), global0.b)));
    global1 = array<vec3<u32>, 29>();
    global1 = array<vec3<u32>, 29>();
    return Struct_1(0i, vec2<u32>(~4294967295u, ~global2.x), all(!select(var_0, vec2<bool>(true, true), global0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = -firstTrailingBit(vec2<i32>(u_input.a, -4445i));
    global1 = array<vec3<u32>, 29>();
    var var_2 = vec4<i32>(func_1().a, 25195i, 1i, firstLeadingBit(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_0.a, global0.a, u_input.a)), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 0i, var_1.x), vec3<i32>(17484i, 38026i, var_0.a)), vec3<i32>(2147483647i, 36042i, -1i), -vec3<i32>(u_input.a, 0i, var_1.x)))));
    var var_3 = abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i ^ func_1().a, -1i, ~(~var_1.x), _wgslsmith_sub_i32(6696i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.a, var_1.x), vec4<i32>(var_2.x, var_1.x, u_input.a, -44017i)))), -vec4<i32>(global0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, 86970i, u_input.a), var_2.yyw), global0.a | -2516i, 0i), ~(-(vec4<i32>(2147483647i, global0.a, var_1.x, 29959i) ^ vec4<i32>(-40987i, 25987i, var_0.a, u_input.a)))));
    global0 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(0i, ~countOneBits(var_3.yyz | var_3.zxz) ^ var_3.xxw, ~global2.x, vec3<i32>(_wgslsmith_add_i32(var_1.x, reverseBits(-u_input.a)), u_input.a, -80492i));
}

