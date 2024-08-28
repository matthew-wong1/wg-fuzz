struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(1i, -1i, -3336i, -22334i), vec4<i32>(50857i, 0i, i32(-2147483648), 16789i), vec4<i32>(2147483647i, 38390i, 26612i, 1i), vec4<i32>(-1645i, -7103i, -19049i, 22678i));

var<private> global1: u32;

var<private> global2: vec3<i32> = vec3<i32>(-56198i, 2147483647i, -4044i);

var<private> global3: i32;

var<private> global4: array<vec4<i32>, 25>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: bool, arg_1: i32) -> f32 {
    let var_0 = false;
    let var_1 = 1u;
    global4 = array<vec4<i32>, 25>();
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2011f))) - 536f), Struct_1(abs(~arg_1))), -1000f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1756f, 1016f), vec2<f32>(1000f, 155f), vec2<bool>(var_0, false)))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(227f)), _wgslsmith_f_op_f32(max(-766f, -1327f)))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-454f, _wgslsmith_f_op_f32(f32(-1f) * -828f)), vec2<f32>(_wgslsmith_f_op_f32(step(-316f, 886f)), _wgslsmith_div_f32(2097f, -970f)), select(select(vec2<bool>(true, var_0), vec2<bool>(arg_0, true), vec2<bool>(true, false)), !vec2<bool>(arg_0, false), false)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -330f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-713f - -1439f)), _wgslsmith_f_op_f32(round(813f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))), vec3<i32>(1i, global2.x, u_input.a | -1i));
    var var_3 = vec3<i32>(-1i) * -(~_wgslsmith_mod_vec3_i32(var_2.e & vec3<i32>(var_2.e.x, arg_1, 23275i), _wgslsmith_mult_vec3_i32(var_2.e, var_2.e)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-408f, var_2.a.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.c.x, -680f, true))))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> vec3<i32> {
    let var_0 = arg_0.a << (39288u % 32u);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(true, 2147483647i)), 393f, false))), Struct_1(u_input.a));
    let var_2 = ~vec4<u32>(~_wgslsmith_clamp_u32(1u, countOneBits(1u), ~0u), arg_2, 16023u, arg_2);
    let var_3 = -450f;
    global2 = (-_wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_0.a, var_0) & vec3<i32>(u_input.a, arg_1, arg_1), vec3<i32>(-2147483647i, -1i, global2.x)) >> (var_2.zzw % vec3<u32>(32u))) | _wgslsmith_sub_vec3_i32(vec3<i32>(max(var_1.b.a, var_1.b.a), global2.x, _wgslsmith_div_i32(min(2147483647i, 1i), arg_1)), ~abs(~vec3<i32>(u_input.a, -30854i, -2147483647i)));
    return -(~vec3<i32>(global2.x, global2.x >> (4294967295u % 32u), u_input.a << (1u % 32u)) >> (var_2.xwx % vec3<u32>(32u)));
}

fn func_1() -> u32 {
    var var_0 = 1i;
    let var_1 = vec3<bool>(true, true, !select(true, false, true));
    global1 = ~reverseBits(~6204u);
    global0 = array<vec4<i32>, 4>();
    global2 = min(abs(reverseBits(-abs(vec3<i32>(40164i, 2147483647i, 47422i)))), func_2(Struct_1(u_input.a), ~(_wgslsmith_dot_vec4_i32(global4[_wgslsmith_index_u32(4294967295u, 25u)], vec4<i32>(-2147483647i, -45045i, -33090i, global2.x)) | 1i), ~1u));
    return ~(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, 1u, 27686u)), ~vec3<u32>(1u, 1u, 1u)) & _wgslsmith_dot_vec3_u32(vec3<u32>(24763u, 1u, ~30144u), ~(~vec3<u32>(0u, 10655u, 14019u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2670f) + _wgslsmith_f_op_f32(f32(-1f) * -682f)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1f, 893f)))));
    let var_1 = true;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -742f);
    global1 = abs(abs(~(~1u)));
    global1 = _wgslsmith_dot_vec4_u32(~(~(vec4<u32>(1u, 1u, 1u, 1u) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, reverseBits(4294967295u), _wgslsmith_add_u32(0u, 16727u), func_1()), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 55687u, 1u, 24342u), ~vec4<u32>(1u, 4882u, 4294967295u, 0u)), 1u, _wgslsmith_mult_u32(7540u, 26157u))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.zx, reverseBits(vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-726f, _wgslsmith_f_op_f32(-1425f + -344f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1498f + -1330f) + 760f))));
}

