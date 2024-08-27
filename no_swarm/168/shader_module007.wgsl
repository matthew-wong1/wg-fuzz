struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: u32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: f32;

var<private> global2: u32;

var<private> global3: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(-452f, 1620f, 554f), vec3<f32>(686f, 382f, -1774f), vec3<f32>(-484f, 1057f, -304f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> vec2<u32> {
    global2 = 4294967295u;
    let var_0 = Struct_5(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.b.x), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b.x, 48699u), abs(vec3<u32>(81453u, u_input.b.x, 39442u))), firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 1u, 0u), vec3<u32>(7268u, 4294967295u, 0u)))) | reverseBits(abs(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)) ^ vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)), Struct_4(u_input.b.x, Struct_1(vec2<u32>(27515u, ~u_input.b.x), -u_input.a, 13889u, -684f, true)));
    global2 = u_input.b.x;
    let var_1 = ~(select(vec4<u32>(130657u, 0u, ~var_0.a.x, 0u), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b, var_0.b.b.a), ~4294967295u, var_0.a.x << (0u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.a.x, u_input.b.x), var_0.a)), vec4<bool>(false, all(vec4<bool>(false, true, true, global0.x)), global0.x & var_0.b.b.e, any(vec4<bool>(global0.x, global0.x, true, false)))) & vec4<u32>(u_input.b.x, 1u, 1u, abs(4294967295u)));
    let var_2 = _wgslsmith_f_op_f32(abs(-1161f));
    return reverseBits(max(u_input.b, vec2<u32>(u_input.b.x, 1u)));
}

fn func_2() -> Struct_4 {
    let var_0 = 1410f;
    let var_1 = Struct_4(4294967295u, Struct_1(_wgslsmith_sub_vec2_u32(max(func_3(-254f), vec2<u32>(u_input.b.x, 23663u)), select(~u_input.b, ~vec2<u32>(u_input.b.x, 14962u), global0.x)), _wgslsmith_mult_i32(30481i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, 1i) << (vec2<u32>(11842u, u_input.b.x) % vec2<u32>(32u)))), _wgslsmith_add_u32(1u, ~u_input.b.x) << ((firstLeadingBit(1u) >> (countOneBits(u_input.b.x) % 32u)) % 32u), _wgslsmith_div_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(var_0 + 671f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_0))), !all(vec2<bool>(global0.x, global0.x))));
    global0 = !select(select(vec2<bool>(any(vec3<bool>(false, global0.x, var_1.b.e)), select(var_1.b.e, true, var_1.b.e)), vec2<bool>(true, true), select(1u != var_1.a, true, !var_1.b.e)), vec2<bool>(true, true), select(select(select(vec2<bool>(false, true), vec2<bool>(global0.x, true), vec2<bool>(false, global0.x)), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(var_1.b.e, false), var_1.b.e), vec2<bool>(true, !global0.x)));
    let var_2 = !vec3<bool>(true, true, global0.x);
    let var_3 = select(!select(vec4<bool>(var_1.b.e, any(var_2.yy), true, global0.x), select(!vec4<bool>(true, true, var_2.x, var_1.b.e), !vec4<bool>(var_2.x, global0.x, false, var_1.b.e), all(var_2.xx)), !vec4<bool>(var_2.x, var_1.b.e, true, var_1.b.e)), !select(select(vec4<bool>(var_1.b.e, var_2.x, false, false), !vec4<bool>(global0.x, var_1.b.e, true, global0.x), false), !vec4<bool>(var_1.b.e, false, var_1.b.e, var_2.x), !var_1.b.e & false), !select(vec4<bool>(any(var_2.xz), var_1.b.e, true, false), !(!vec4<bool>(true, false, var_2.x, var_1.b.e)), true));
    return Struct_4(1u, Struct_1(~vec2<u32>(21684u, ~43827u), ~(-abs(0i)), 36055u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_div_f32(-1468f, _wgslsmith_f_op_f32(select(var_0, var_0, global0.x)))), false));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> vec2<f32> {
    var var_0 = 2440u;
    let var_1 = func_2();
    global2 = ~arg_1.x;
    global3 = array<vec3<f32>, 3>();
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1137f)), -281f)) + var_1.b.d), 1344f);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<f32>, 3>();
    global1 = _wgslsmith_f_op_f32(247f * _wgslsmith_div_f32(646f, -892f));
    var var_0 = 0u;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1050f, -2100f) + vec2<f32>(667f, -793f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(u_input.b.x, u_input.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1358f, 1000f, -620f, 1318f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1560f, 105f, 326f, 809f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1713f, -1171f, -401f, 1002f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(402f, 836f, 395f, -1000f) * vec4<f32>(608f, -1399f, 493f, 431f))))));
    var var_2 = vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 31034u, u_input.b.x, 1u) ^ vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(92190u, u_input.b.x, 47795u, 68316u)), u_input.b)).x));
    var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_2().b.d, 497f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1499f)), var_1.b.x)), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(~2147483647i, 22915i) | u_input.a, firstTrailingBit(max(select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u) | vec4<u32>(22368u, u_input.b.x, u_input.b.x, 4294967295u), ~vec4<u32>(47791u, u_input.b.x, 24274u, u_input.b.x), select(true, false, global0.x)), reverseBits(vec4<u32>(4294967295u, 0u, u_input.b.x, 4294967295u)) >> ((vec4<u32>(4294967295u, 46692u, 50003u, 0u) | vec4<u32>(u_input.b.x, u_input.b.x, 39160u, u_input.b.x)) % vec4<u32>(32u)))), min(vec3<i32>(countOneBits(-11038i), -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -42074i), vec2<i32>(-2147483647i, 29289i)), i32(-1i) * -41917i), vec3<i32>(-21262i, firstLeadingBit(u_input.a), _wgslsmith_add_i32(2147483647i, -u_input.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, -1627f) + vec2<f32>(1353f, var_2.x)), var_1.b.zw))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_1.b.xx))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.a, var_1.b.wz)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * -417f), var_1.a.x, var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(u_input.b.x, vec2<u32>(u_input.b.x, 1u))).x)))));
}

