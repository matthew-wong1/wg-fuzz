struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<u32>, 15> = array<vec3<u32>, 15>(vec3<u32>(1051u, 0u, 56651u), vec3<u32>(33583u, 18607u, 38934u), vec3<u32>(0u, 0u, 1u), vec3<u32>(0u, 1u, 33395u), vec3<u32>(0u, 4294967295u, 45241u), vec3<u32>(9830u, 26067u, 4294967295u), vec3<u32>(1u, 33316u, 97020u), vec3<u32>(51320u, 1u, 1u), vec3<u32>(1u, 38130u, 15325u), vec3<u32>(1u, 1940u, 89492u), vec3<u32>(22126u, 1u, 51341u), vec3<u32>(2018u, 12529u, 38503u), vec3<u32>(0u, 1u, 1u), vec3<u32>(1u, 23626u, 1u), vec3<u32>(1552u, 1u, 1u));

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: vec2<bool>) -> bool {
    let var_0 = -784f;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), _wgslsmith_div_vec2_f32(vec2<f32>(-548f, var_0), vec2<f32>(-946f, var_0)))))));
    global1 = array<vec3<u32>, 15>();
    let var_2 = u_input.b;
    var var_3 = false;
    return true;
}

fn func_3(arg_0: vec3<bool>, arg_1: i32) -> vec3<i32> {
    var var_0 = (~global2.b.x ^ _wgslsmith_div_u32(_wgslsmith_mod_u32(global2.b.x, ~4294967295u), abs(~global2.b.x))) & _wgslsmith_mult_u32(global2.a.x, 4294967295u);
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-851f, -200f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(573f, 344f)), select(vec2<bool>(false, arg_0.x), arg_0.yx, arg_0.x)))))), global2.a.yzx ^ ~vec3<u32>(global2.b.x, 86057u, global2.b.x >> (1u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(943f, 830f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1373f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-206f))))), min(-41892i, u_input.c));
    global1 = array<vec3<u32>, 15>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1506f, -566f, var_1.a.x, _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, var_1.a.x, -950f, 135f) + vec4<f32>(var_1.a.x, 1042f, 2006f, var_1.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(854f, var_1.a.x, var_1.a.x, -572f) - vec4<f32>(1000f, var_1.a.x, var_1.a.x, var_1.c)))))))));
    let var_3 = firstLeadingBit(vec4<i32>(-(firstTrailingBit(u_input.b) >> (~0u % 32u)), _wgslsmith_div_i32(select(-50853i & u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d, 2147483647i, u_input.b, u_input.a), vec4<i32>(-25663i, var_1.d, arg_1, u_input.b)), func_2(arg_0.yy)), arg_1), _wgslsmith_dot_vec2_i32(-(~vec2<i32>(28761i, arg_1)), ~(~vec2<i32>(-2147483647i, arg_1))), _wgslsmith_add_i32(var_1.d, 1331i)));
    return -(var_3.zyx << (max(countOneBits(var_1.b), ~vec3<u32>(134598u, 5156u, global2.b.x) ^ global2.a.wxy) % vec3<u32>(32u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32) -> Struct_1 {
    global0 = func_2(!arg_1);
    let var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(min(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.a, u_input.b) >> (vec3<u32>(arg_0.a.x, global2.b.x, 0u) % vec3<u32>(32u)), ~vec3<i32>(u_input.a, -1i, -28035i)), select(firstTrailingBit(vec3<i32>(-51806i, u_input.c, 1i)), vec3<i32>(-2147483647i, u_input.b, 20322i), !vec3<bool>(arg_1.x, false, arg_1.x))), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.c, -1i), vec3<i32>(52208i, u_input.a, -9340i)), select(-vec3<i32>(u_input.a, u_input.c, u_input.c), abs(vec3<i32>(u_input.a, -9154i, u_input.b)), !vec3<bool>(false, arg_1.x, true)), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -416i, 53248i), func_3(vec3<bool>(true, arg_1.x, true), u_input.c)))), vec3<i32>(reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 2147483647i, u_input.b), vec3<i32>(-28179i, u_input.c, 14915i), vec3<i32>(-15632i, u_input.b, 1i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.b, u_input.a), vec3<i32>(-3671i, u_input.c, -38266i)))), abs(reverseBits(-u_input.b)), _wgslsmith_dot_vec4_i32((vec4<i32>(16925i, u_input.a, u_input.c, -2147483647i) ^ vec4<i32>(0i, 9007i, -6358i, u_input.a)) << (min(vec4<u32>(0u, global2.b.x, 81075u, 0u), vec4<u32>(29366u, global2.b.x, global2.b.x, 4294967295u)) % vec4<u32>(32u)), ~reverseBits(vec4<i32>(u_input.b, u_input.c, u_input.c, u_input.b)))));
    var var_1 = _wgslsmith_mod_vec2_i32(max(countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 2147483647i), var_0.yz)), vec2<i32>(firstLeadingBit(var_0.x), ~2147483647i) >> (min(~arg_0.b.wx, countOneBits(arg_0.b.xz)) % vec2<u32>(32u))), vec2<i32>(countOneBits(reverseBits(0i)), 4022i) ^ _wgslsmith_mod_vec2_i32(-var_0.yx, _wgslsmith_div_vec2_i32(vec2<i32>(-44931i, -1i), vec2<i32>(430i, 8608i)) << (~arg_0.b.xz % vec2<u32>(32u))));
    global2 = arg_0;
    global0 = true;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -293f));
    global2 = func_1(Struct_1(vec4<u32>(global2.b.x & ~global2.b.x, ~_wgslsmith_dot_vec2_u32(global2.b.wy, vec2<u32>(0u, global2.b.x)), 2075u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.x, 22047u, global2.b.x), vec3<u32>(14279u, global2.b.x, global2.a.x)), 86873u)), select(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, 33448u), vec4<u32>(global2.a.x, global2.b.x, global2.b.x, global2.a.x))), select(select(global2.b, global2.b, false), global2.b, any(vec4<bool>(true, true, true, true))), false)), vec2<bool>(true, true), _wgslsmith_f_op_f32(ceil(-414f)));
    var var_1 = var_0;
    let var_2 = u_input.b;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) + var_0)) - -156f);
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(1461u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(399f, 115f), _wgslsmith_div_f32(var_0, var_0), -569f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, 412f) * vec3<f32>(var_0, var_0, -743f)))), vec3<bool>(true, func_2(vec2<bool>(true, true)), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 933f, var_0))))), _wgslsmith_f_op_f32(step(-449f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))))));
}

