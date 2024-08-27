struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: array<Struct_5, 8> = array<Struct_5, 8>(Struct_5(Struct_2(Struct_1(vec2<bool>(true, true)), vec4<i32>(i32(-2147483648), 65960i, 1i, -54665i), Struct_1(vec2<bool>(true, false))), Struct_3(Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), vec3<i32>(0i, 32408i, 1i), vec2<i32>(1i, 0i)), 64069u), Struct_5(Struct_2(Struct_1(vec2<bool>(false, false)), vec4<i32>(-1i, -29977i, 0i, 1i), Struct_1(vec2<bool>(false, false))), Struct_3(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), vec3<i32>(-37740i, -1i, -1i), vec2<i32>(1i, -8036i)), 70804u), Struct_5(Struct_2(Struct_1(vec2<bool>(true, false)), vec4<i32>(-32469i, 11512i, 21706i, 0i), Struct_1(vec2<bool>(false, false))), Struct_3(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), vec3<i32>(2147483647i, -12008i, 2147483647i), vec2<i32>(43059i, -20365i)), 30394u), Struct_5(Struct_2(Struct_1(vec2<bool>(false, false)), vec4<i32>(2147483647i, 1459i, 8306i, 17761i), Struct_1(vec2<bool>(false, false))), Struct_3(Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), vec3<i32>(1i, -5139i, 36892i), vec2<i32>(5605i, -9546i)), 12059u), Struct_5(Struct_2(Struct_1(vec2<bool>(false, false)), vec4<i32>(22505i, 1i, -1i, -1i), Struct_1(vec2<bool>(false, false))), Struct_3(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), vec3<i32>(i32(-2147483648), -60096i, 28118i), vec2<i32>(2147483647i, 41115i)), 2104u), Struct_5(Struct_2(Struct_1(vec2<bool>(true, false)), vec4<i32>(i32(-2147483648), -14024i, 1i, 0i), Struct_1(vec2<bool>(false, true))), Struct_3(Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), vec3<i32>(-47343i, -4366i, 2147483647i), vec2<i32>(-3450i, 0i)), 1u), Struct_5(Struct_2(Struct_1(vec2<bool>(true, false)), vec4<i32>(4990i, -43593i, 13973i, -22217i), Struct_1(vec2<bool>(false, true))), Struct_3(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), vec3<i32>(-9235i, 0i, 1i), vec2<i32>(0i, 1i)), 0u), Struct_5(Struct_2(Struct_1(vec2<bool>(true, false)), vec4<i32>(i32(-2147483648), -1i, 19506i, i32(-2147483648)), Struct_1(vec2<bool>(true, true))), Struct_3(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), vec3<i32>(0i, -4589i, 24894i), vec2<i32>(-46213i, 4642i)), 4294967295u));

var<private> global2: array<vec4<bool>, 8>;

var<private> global3: array<Struct_4, 25>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1170f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_1 = _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x));
    let var_2 = vec4<bool>(true, select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_1)) != var_1, -551f > _wgslsmith_f_op_f32(-var_1), any(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false))), true, false);
    global3 = array<Struct_4, 25>();
    var var_3 = select(vec3<bool>(var_2.x, true, !var_2.x || var_2.x), !(!var_2.xww), any(!select(var_2.xy, var_2.zz, true)));
    return 0i;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3) -> i32 {
    var var_0 = u_input.b;
    var var_1 = arg_2.d;
    global0 = array<Struct_1, 12>();
    var var_2 = vec2<u32>(~u_input.a.x, ~firstTrailingBit(_wgslsmith_mult_u32(0u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(4294967295u, 0u, u_input.b)))));
    global0 = array<Struct_1, 12>();
    return func_2(u_input.a.x);
}

fn func_1(arg_0: u32, arg_1: u32) -> i32 {
    let var_0 = 1u;
    var var_1 = 756i;
    global0 = array<Struct_1, 12>();
    var_1 = _wgslsmith_dot_vec3_i32(~vec3<i32>(reverseBits(~94713i), _wgslsmith_div_i32(1i, func_2(1u)), func_3(global0[_wgslsmith_index_u32(arg_1, 12u)], true, Struct_3(Struct_1(vec2<bool>(false, true)), global0[_wgslsmith_index_u32(4294967295u, 12u)], Struct_1(vec2<bool>(false, false)), vec3<i32>(36387i, 2147483647i, -18363i), vec2<i32>(0i, 0i)))), -select(max(-vec3<i32>(4459i, 42699i, 30519i), vec3<i32>(-14435i, -1i, -2147483647i)), vec3<i32>(_wgslsmith_add_i32(1i, -2147483647i), -1i << (1u % 32u), 0i), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false))));
    var var_2 = 4294967295u;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_mult_i32(reverseBits(~1i), func_1(~7328u, ~u_input.b) << (1u % 32u)), _wgslsmith_clamp_u32(reverseBits(1u), 43443u, 73629u), global0[_wgslsmith_index_u32(firstTrailingBit(43966u), 12u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1173f, 888f, 1921f, -2135f), vec4<f32>(-494f, 266f, 1974f, 200f))))), global0[_wgslsmith_index_u32(4294967295u, 12u)]);
    var var_1 = Struct_5(Struct_2(Struct_1(!(!var_0.e.a)), _wgslsmith_add_vec4_i32(min(vec4<i32>(var_0.a, -27698i, -39025i, -1i), vec4<i32>(-27052i, -48994i, var_0.a, var_0.a) ^ vec4<i32>(2147483647i, -30547i, var_0.a, 1i)), max(vec4<i32>(var_0.a, var_0.a, var_0.a, var_0.a), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a, -10829i, var_0.a, var_0.a), vec4<i32>(var_0.a, 1i, -2147483647i, var_0.a)))), Struct_1(var_0.e.a)), Struct_3(var_0.c, Struct_1(!select(vec2<bool>(var_0.e.a.x, var_0.e.a.x), var_0.e.a, vec2<bool>(var_0.c.a.x, false))), global0[_wgslsmith_index_u32(var_0.b, 12u)], vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a, -1i, var_0.a, var_0.a), vec4<i32>(-28963i, -22325i, 3080i, -1i)), firstTrailingBit(vec4<i32>(-2147483647i, 0i, 60737i, 35643i))), 8795i, 0i), ~(-vec2<i32>(-1i, var_0.a))), u_input.b);
    global3 = array<Struct_4, 25>();
    let var_2 = firstLeadingBit(vec2<i32>(30887i, -8877i));
    var_1 = global1[_wgslsmith_index_u32(16420u, 8u)];
    let var_3 = select(~_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.yx, reverseBits(u_input.a.yy)), firstTrailingBit(u_input.a.zx << (vec2<u32>(25491u, u_input.b) % vec2<u32>(32u))), ~max(vec2<u32>(var_0.b, 1u), vec2<u32>(u_input.b, u_input.a.x))), reverseBits(vec2<u32>(~var_1.c << (_wgslsmith_div_u32(var_0.b, u_input.a.x) % 32u), max(var_1.c, abs(87161u)))), true);
    var var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(463f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-792f, 1447f))), var_0.d.x, !var_1.b.b.a.x && (var_0.d.x <= -1000f)))));
    var var_5 = reverseBits(reverseBits(var_2.x));
    var var_6 = !var_1.b.b.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(min(countOneBits(var_2), vec2<i32>(countOneBits(var_0.a), i32(-1i) * -2147483647i) ^ reverseBits(~var_1.b.e)), ~(~_wgslsmith_mod_i32(var_2.x, -2147483647i) >> (_wgslsmith_clamp_u32(1u, ~u_input.a.x, 0u) % 32u)), 505f, var_0.d.x);
}

