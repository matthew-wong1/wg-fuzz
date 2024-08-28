struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: Struct_5;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_5(Struct_3(Struct_2(global0[_wgslsmith_index_u32(global1.d.x, 31u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~global1.e, _wgslsmith_mult_vec2_u32(global1.c.d.xz, vec2<u32>(4294967295u, 28090u))), 31u)], global1.b, vec3<u32>(global1.d.x, abs(global1.b.a), firstTrailingBit(4294967295u)), global1.a.a.c)), Struct_1(4294967295u), global1.a.a, max(~(~(~global1.a.a.d)), _wgslsmith_clamp_vec3_u32(~(~global1.d), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.a.a.a.a, 27103u, global1.e.x), global1.c.d), min(vec3<u32>(global1.a.a.b.a, global1.b.a, global1.d.x), global1.a.a.d)), _wgslsmith_div_vec3_u32(select(global1.a.a.d, vec3<u32>(global1.b.a, global1.e.x, global1.d.x), true), vec3<u32>(global1.a.a.a.a, global1.c.e.a, 33348u) ^ vec3<u32>(global1.b.a, 4294967295u, 0u)))), _wgslsmith_add_vec2_u32(min(~_wgslsmith_sub_vec2_u32(vec2<u32>(global1.c.c.a, 2191u), global1.d.zx), vec2<u32>(10809u, 33097u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(global1.e.x, global1.c.c.a), abs(global1.d.xz))));
    let var_1 = global1.a;
    var var_2 = -(~_wgslsmith_mod_vec2_i32(select(~u_input.a, vec2<i32>(1i, 2147483647i), vec2<bool>(false, false)), vec2<i32>(i32(-1i) * -10613i, arg_0)));
    let var_3 = true;
    global1 = var_0;
    return var_0.c.c;
}

fn func_3(arg_0: u32, arg_1: Struct_5) -> u32 {
    global1 = Struct_5(arg_1.a, global1.c.b, Struct_2(func_2(reverseBits(max(-14777i, u_input.b)), vec3<f32>(1604f, _wgslsmith_f_op_f32(min(478f, 1503f)), _wgslsmith_div_f32(-2322f, 637f))), Struct_1(24043u), global0[_wgslsmith_index_u32(arg_0, 31u)], vec3<u32>(firstTrailingBit(55836u ^ global1.c.a.a), 4552u, _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.e.x, arg_1.d.x, 56811u, 16763u), ~vec4<u32>(arg_0, 0u, arg_1.d.x, 40239u))), Struct_1(~arg_1.c.a.a)), global1.a.a.d, ~(global1.d.zy | global1.a.a.d.xy));
    var var_0 = vec3<bool>(true, true, true);
    return 29601u;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: vec2<f32>) -> Struct_3 {
    global0 = array<Struct_1, 31>();
    var var_0 = ~firstTrailingBit(reverseBits(firstLeadingBit(vec4<u32>(global1.a.a.c.a, global1.e.x, global1.c.b.a, 0u))) | min(vec4<u32>(global1.d.x, global1.a.a.d.x, global1.b.a, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.b.a, global1.e.x, global1.a.a.c.a, 58283u), vec4<u32>(1u, global1.b.a, 25693u, 4933u))));
    var var_1 = global1.c.d;
    let var_2 = Struct_3(Struct_2(global0[_wgslsmith_index_u32(var_1.x, 31u)], func_2(0i, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1693f, arg_2, 1000f)), vec3<f32>(arg_3.x, arg_2, 1659f)))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(func_3(var_1.x, Struct_5(Struct_3(global1.a.a), global0[_wgslsmith_index_u32(36578u, 31u)], Struct_2(Struct_1(var_1.x), global1.a.a.c, global0[_wgslsmith_index_u32(0u, 31u)], vec3<u32>(13456u, 9377u, global1.d.x), Struct_1(0u)), var_0.yyz, vec2<u32>(9676u, global1.d.x))), 30561u), 31u)], countOneBits(reverseBits(var_0.ywz)), global1.a.a.e));
    var_1 = vec3<u32>(select(abs(firstTrailingBit(var_1.x)), _wgslsmith_sub_u32(~var_0.x, _wgslsmith_add_u32(0u, 75108u)) | max(~var_1.x, 12619u), select(all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(exp2(arg_2)) < _wgslsmith_f_op_f32(arg_3.x * -1370f), false)), ~0u, var_1.x);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<i32>(0i, u_input.a.x, ~(firstLeadingBit(0i) & _wgslsmith_sub_i32(u_input.a.x, u_input.b)));
    global0 = array<Struct_1, 31>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-2150f, -1000f))))));
    global1 = Struct_5(func_1(false, var_1, -373f, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(1273f, var_1)), _wgslsmith_f_op_f32(select(var_1, var_1, true))) - vec2<f32>(_wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_f_op_f32(var_1 * -351f)))), Struct_1(61339u), Struct_2(Struct_1(global1.b.a), global1.a.a.c, global0[_wgslsmith_index_u32(func_2(var_0.x, vec3<f32>(937f, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(var_1 * 1699f))).a, 31u)], abs(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.d.x, 3817u, 38374u), ~global1.c.d)), func_1(var_1 < 442f, 244f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-210f)), _wgslsmith_f_op_f32(exp2(var_1))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(433f, -2479f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1, var_1), vec2<f32>(var_1, 2008f), vec2<bool>(true, false)))))).a.a), _wgslsmith_clamp_vec3_u32(global1.c.d, global1.c.d, abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(114178u, 1u, global1.b.a), _wgslsmith_clamp_vec3_u32(global1.c.d, vec3<u32>(1u, global1.b.a, 14767u), vec3<u32>(global1.b.a, global1.d.x, 44257u)), global1.c.d))), countOneBits(vec2<u32>(_wgslsmith_clamp_u32(15974u, select(1u, 17920u, false), 1u), global1.e.x)));
    global0 = array<Struct_1, 31>();
    let var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_u32(~(global1.c.d.zx & vec2<u32>(17805u, 20510u)), (vec2<u32>(60758u, 0u) << (global1.a.a.d.xz % vec2<u32>(32u))) | _wgslsmith_mod_vec2_u32(global1.e, global1.a.a.d.yy)), -863f, var_2, _wgslsmith_sub_i32(u_input.b, u_input.a.x));
}

