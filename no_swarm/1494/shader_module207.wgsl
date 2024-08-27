struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 32>;

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(0u), Struct_1(58318u), Struct_1(40043u), Struct_1(0u), Struct_1(1u), Struct_1(57792u), Struct_1(35014u), Struct_1(34896u), Struct_1(0u), Struct_1(5956u), Struct_1(4294967295u), Struct_1(12643u), Struct_1(1u), Struct_1(18719u), Struct_1(0u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(0u), Struct_1(49639u), Struct_1(1u), Struct_1(4294967295u), Struct_1(2906u), Struct_1(4294967295u), Struct_1(39110u), Struct_1(4294967295u), Struct_1(78839u));

var<private> global3: vec3<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    let var_0 = ~global0.a;
    var var_1 = 1000f;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(exp2(global3.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-816f - global3.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.x, -1240f)) * _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(step(-790f, _wgslsmith_f_op_f32(f32(-1f) * -2417f))))))));
    var var_3 = (abs(~reverseBits(vec4<u32>(var_0, global0.a, 22067u, 35124u))) & (~(~vec4<u32>(4294967295u, 6054u, var_0, 4826u)) | _wgslsmith_mod_vec4_u32(~vec4<u32>(global0.a, 4294967295u, var_0, global0.a), ~vec4<u32>(4294967295u, 39722u, 74059u, 16055u)))) << (_wgslsmith_mult_vec4_u32(~(~vec4<u32>(global0.a, 1u, global0.a, u_input.a.x)), ~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 51723u, 0u, var_0), vec4<u32>(2489u, u_input.a.x, 1u, 54306u)), min(vec4<u32>(4294967295u, global0.a, 15671u, global0.a), vec4<u32>(1u, u_input.a.x, global0.a, 1u)))) % vec4<u32>(32u));
    var var_4 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0.a, ~countOneBits(23470u), global0.a), firstTrailingBit(~vec3<u32>(1u, var_3.x, 24009u)) ^ (~vec3<u32>(global0.a, var_0, var_0) ^ (vec3<u32>(15598u, global0.a, 8239u) >> (vec3<u32>(global0.a, u_input.a.x, 3896u) % vec3<u32>(32u))))), vec3<u32>(12263u, global0.a, _wgslsmith_dot_vec2_u32(~(~var_3.zx), var_3.yx)));
    return -470f;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>) -> bool {
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(min(-484f, arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(720f - 265f) + _wgslsmith_div_f32(arg_0.b, 217f)))));
    let var_0 = Struct_2(Struct_1(_wgslsmith_clamp_u32(1u, arg_0.d.a, 4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * -1366f), global0.a, global2[_wgslsmith_index_u32(reverseBits(abs(_wgslsmith_clamp_u32(global0.a, arg_0.c, global0.a))) | firstTrailingBit(select(0u >> (u_input.a.x % 32u), 37640u, arg_1.x)), 27u)], _wgslsmith_sub_vec3_u32(~(~u_input.a >> (_wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(0u, global0.a, 4294967295u), u_input.a) % vec3<u32>(32u))), u_input.a));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3.x, var_0.b, false)) - global3.x)) + var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), var_0.b, -456f);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))));
    let var_3 = Struct_2(Struct_1(1u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.b, var_0.b))))))), var_0.a.a, Struct_1(1u), ~(vec3<u32>(arg_0.c, ~global0.a, global0.a) << ((~u_input.a & select(var_0.e, u_input.a, arg_1.x)) % vec3<u32>(32u))));
    return false;
}

fn func_1() -> Struct_1 {
    global2 = array<Struct_1, 27>();
    var var_0 = ~_wgslsmith_add_i32(1i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(11472i, 0i, 53536i), vec3<i32>(1i, -16831i, 1i)), -(~2147483647i)));
    let var_1 = vec2<bool>(select(func_2(Struct_2(Struct_1(global0.a), global3.x, 4294967295u, global2[_wgslsmith_index_u32(1u, 27u)], u_input.a), vec2<bool>(false, false)) && !all(vec4<bool>(true, true, true, false)), false, true != (any(vec3<bool>(false, true, true)) || all(vec3<bool>(true, false, false)))), global3.x >= -711f);
    let var_2 = Struct_2(global2[_wgslsmith_index_u32(u_input.a.x & 0u, 27u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + -2095f) + -104f), (abs(~u_input.a.x) ^ global0.a) >> (global0.a % 32u), Struct_1(global0.a >> (global0.a % 32u)), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 26186u), vec4<u32>(global0.a, 1u, u_input.a.x, global0.a)) >> (50149u % 32u), ~firstLeadingBit(u_input.a.x)), global0.a, u_input.a.x));
    global2 = array<Struct_1, 27>();
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~global0.a, 27u)];
    let var_1 = 31777i;
    var_0 = func_1();
    var var_2 = func_1();
    global1 = array<vec3<f32>, 32>();
    let var_3 = 64852u;
    var_2 = Struct_1(var_3);
    let var_4 = abs(select(select(vec2<i32>(-8323i, var_1), min(vec2<i32>(var_1, var_1), vec2<i32>(2147483647i, 47476i)), vec2<bool>(false, false)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, var_1), vec2<i32>(var_1, -2147483647i)), -2147483647i), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true)) ^ vec2<i32>(_wgslsmith_sub_i32(32855i, -4162i), var_1));
    let x = u_input.a;
    s_output = StorageBuffer(max(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a, var_0.a, var_0.a), vec3<u32>(0u, 2801u, var_0.a))), min(var_3, min(~var_2.a, ~0u))), ~vec2<i32>(var_1, _wgslsmith_sub_i32(var_4.x, 2147483647i)), ~(~_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(var_1, 2147483647i, 41561i)), -vec3<i32>(var_1, 43845i, -2147483647i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global3.x - -651f), -940f, _wgslsmith_div_f32(-1000f, 1783f), _wgslsmith_f_op_f32(-1f)) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3()), global3.x, _wgslsmith_f_op_f32(global3.x - 390f), _wgslsmith_f_op_f32(global3.x * -2146f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.x, global3.x, global3.x, global3.x))))));
}

