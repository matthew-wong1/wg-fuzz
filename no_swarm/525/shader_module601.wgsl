struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<i32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec3<f32>) -> u32 {
    global0 = array<Struct_3, 28>();
    let var_0 = arg_0.b.b;
    var var_1 = arg_0.a & ~_wgslsmith_dot_vec4_i32(vec4<i32>(-22178i, -2147483647i, arg_0.a, arg_0.a | -1i), arg_0.b.c);
    let var_2 = Struct_4(_wgslsmith_mult_vec3_u32(min(~vec3<u32>(0u, 41979u, 43943u), min(vec3<u32>(0u, 1u, arg_0.b.d), vec3<u32>(arg_0.b.d, arg_0.b.d, 53483u))), vec3<u32>(arg_0.b.d & 1u, arg_0.b.d, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_0.b.d, 1u, 1u)), vec3<u32>(arg_0.b.d, 0u, 45527u) ^ vec3<u32>(0u, arg_0.b.d, 1u)))), ~28962u, 821f, _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b.d, 0u, _wgslsmith_div_u32(~arg_0.b.d, arg_0.b.d), arg_0.b.d), vec4<u32>(arg_0.b.d, ~32018u, arg_0.b.d, 0u), countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 68512u, 1u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b.d, arg_0.b.d, arg_0.b.d, arg_0.b.d), vec4<u32>(arg_0.b.d, arg_0.b.d, 4330u, arg_0.b.d))))));
    let var_3 = global0[_wgslsmith_index_u32(~(~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), var_2.a.yx) ^ arg_0.b.d)), 28u)];
    return var_3.b.x;
}

fn func_2() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-802f, 360f, _wgslsmith_div_f32(147f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -267f), -183f))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(113f)))))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) - _wgslsmith_f_op_f32(abs(-459f))))), _wgslsmith_div_f32(-228f, 709f)));
    let var_2 = Struct_2(1i, Struct_1(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false))), true, min(reverseBits(-vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.b.x)), ~(~vec4<i32>(-2147483647i, u_input.a.x, -48655i, -5545i))), _wgslsmith_sub_u32(24224u, max(~1u, func_3(Struct_2(u_input.b.x, Struct_1(true, true, vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.b.x), 1u, vec4<f32>(-595f, 107f, -1000f, var_1)), vec3<f32>(1256f, 1746f, var_1)), true, var_0.xwz))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(var_1)), var_1, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(var_1, var_1)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-584f, 182f, -288f, var_1) * vec4<f32>(var_1, var_1, 2823f, 676f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_0.x, var_1, -348f)), any(vec3<bool>(false, true, false)))))), _wgslsmith_f_op_vec3_f32(var_0.zxx + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_0.www), _wgslsmith_f_op_vec3_f32(-var_0.yzz))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-952f, -1134f, 174f)))));
    global0 = array<Struct_3, 28>();
    let var_3 = _wgslsmith_mod_u32(1u, var_2.b.d & var_2.b.d);
    return vec4<i32>(-1i, -1i, abs(-u_input.b.x), -_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a, u_input.b.x) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, var_3), vec2<u32>(25592u, 9228u), vec2<u32>(0u, 0u)) % vec2<u32>(32u)), vec2<i32>(~u_input.b.x, -21078i)));
}

fn func_1() -> Struct_4 {
    var var_0 = ~(~max(max(u_input.a.yx, u_input.a.xz) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), ~vec2<i32>(1i, -59637i) & (vec2<i32>(35171i, u_input.b.x) | vec2<i32>(u_input.a.x, u_input.a.x))));
    global0 = array<Struct_3, 28>();
    let var_1 = Struct_2(36058i, Struct_1(false, _wgslsmith_f_op_f32(sign(-568f)) == _wgslsmith_f_op_f32(-672f + _wgslsmith_f_op_f32(f32(-1f) * -232f)), ~min(func_2(), vec4<i32>(u_input.b.x, -41960i, var_0.x, 0i)), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), select(vec3<u32>(0u, 45977u, 33924u), vec3<u32>(103590u, 4294967295u, 46111u), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(745f, 1364f, -1000f, 1560f), vec4<f32>(629f, 353f, 1314f, -479f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-794f, -535f, -1945f, -1000f)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(556f)), _wgslsmith_f_op_f32(f32(-1f) * -489f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-508f, 533f)), _wgslsmith_f_op_f32(f32(-1f) * -564f), true))), 1000f, 779f));
    let var_2 = var_1.b.e;
    var var_3 = ~var_1.b.d;
    return Struct_4(vec3<u32>(countOneBits(var_1.b.d), var_1.b.d, ~78119u), var_1.b.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1023f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x + -357f)), _wgslsmith_f_op_f32(round(var_1.b.e.x))))), _wgslsmith_mod_vec4_u32(vec4<u32>(61141u, ~41986u, ~1u, 0u), vec4<u32>(~0u, abs(1u), 5361u, 43891u) << (select(vec4<u32>(var_1.b.d, 4294967295u, 1u, 24219u) ^ vec4<u32>(var_1.b.d, var_1.b.d, var_1.b.d, 7349u), vec4<u32>(60831u, var_1.b.d, 11558u, 1u), !var_1.b.a) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 28>();
    let var_0 = func_1();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(742f + var_0.c) * _wgslsmith_f_op_f32(min(var_0.c, -543f))), var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.c)) + _wgslsmith_f_op_f32(-var_0.c)));
    var_1 = vec2<f32>(874f, 333f);
    var var_2 = ~0u;
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, var_0.c))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-460f, 489f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, 1536f), vec2<f32>(var_1.x, var_0.c)), vec2<f32>(433f, 1215f)))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -741f) + _wgslsmith_f_op_f32(-var_1.x)))), -698f);
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(_wgslsmith_add_vec2_i32(u_input.b.xy, vec2<i32>(u_input.b.x, u_input.b.x))) | u_input.b.yy));
}

