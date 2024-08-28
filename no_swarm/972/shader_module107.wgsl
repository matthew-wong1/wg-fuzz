struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 31>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = global0.c;
    let var_1 = Struct_2(Struct_1(_wgslsmith_add_vec4_u32(~(~global0.a), vec4<u32>(arg_0.x ^ 4294967295u, countOneBits(4294967295u), _wgslsmith_mult_u32(global0.a.x, arg_0.x), _wgslsmith_clamp_u32(4294967295u, 20086u, arg_0.x))), _wgslsmith_f_op_vec3_f32(min(global0.b, vec3<f32>(_wgslsmith_f_op_f32(min(651f, -1427f)), _wgslsmith_f_op_f32(-199f + 939f), _wgslsmith_f_op_f32(-global0.b.x)))), true, ~vec2<u32>(arg_0.x ^ arg_0.x, ~60158u)));
    global0 = var_1.a;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(838f * -1000f) + _wgslsmith_f_op_f32(max(global0.b.x, -396f)))), var_1.a.c | all(select(vec3<bool>(var_1.a.c, false, var_1.a.c), vec3<bool>(false, true, var_1.a.c), vec3<bool>(true, var_1.a.c, global0.c))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1345f)))), 767f);
    var_2 = global0.b;
    return Struct_2(Struct_1(vec4<u32>(select(firstTrailingBit(8527u), 17593u, false), global0.a.x, 1u, 9561u), vec3<f32>(var_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(701f)), _wgslsmith_f_op_f32(f32(-1f) * -113f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1595f))), all(!vec2<bool>(var_1.a.c, true)) | global0.c, vec2<u32>(_wgslsmith_mod_u32(0u, ~23374u), min(0u, var_1.a.d.x) << (~27889u % 32u))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_2 {
    global0 = func_2(vec3<u32>(_wgslsmith_div_u32(arg_0.a.a.x, global0.a.x), arg_0.a.d.x << (max(4294967295u, 37950u) % 32u), ~(~1u)) >> (vec3<u32>(arg_0.a.a.x << (_wgslsmith_sub_u32(arg_0.a.d.x, arg_0.a.d.x) % 32u), select(~global0.a.x, 1u, global0.c), ~(~global0.d.x)) % vec3<u32>(32u))).a;
    let var_0 = arg_0.a;
    global1 = array<vec4<i32>, 31>();
    let var_1 = global0.c;
    var var_2 = select(1u, arg_0.a.a.x, !(!global0.c));
    return Struct_2(Struct_1(select(~vec4<u32>(var_0.a.x, arg_0.a.d.x, 41580u, 0u), ~(~vec4<u32>(4294967295u, var_0.d.x, var_0.d.x, var_0.a.x)), !vec4<bool>(false, false, global0.c, false)), vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.b.x + var_0.b.x))), arg_0.a.b.x), any(vec2<bool>(true, true)), abs(vec2<u32>(4294967295u, 1813u ^ arg_0.a.d.x))));
}

fn func_1() -> Struct_2 {
    let var_0 = reverseBits(reverseBits(~_wgslsmith_dot_vec2_u32(global0.a.xy, vec2<u32>(0u, 4294967295u))));
    global1 = array<vec4<i32>, 31>();
    let var_1 = func_3(func_2(~global0.a.wxy), select(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(27745i, -1i, u_input.a), vec3<i32>(u_input.a, -8915i, 3658i)), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(17866i, 49170i)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 5403i), vec2<i32>(u_input.a, 0i))), min(abs(54978i), u_input.a)), ~countOneBits(-vec3<i32>(u_input.a, -1i, u_input.a)), !(!vec3<bool>(true, global0.c, true))));
    global0 = var_1.a;
    var var_2 = Struct_2(var_1.a);
    return Struct_2(func_2(var_2.a.a.zyy).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_2(Struct_1(abs(global0.a), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.b.x, -521f)), _wgslsmith_f_op_f32(max(-147f, global0.b.x)), _wgslsmith_f_op_f32(step(var_0.a.b.x, global0.b.x))), false, global0.d));
    let var_2 = u_input.a;
    let var_3 = var_0.a.a.xzx;
    global1 = array<vec4<i32>, 31>();
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(func_3(Struct_2(Struct_1(vec4<u32>(var_3.x, var_0.a.d.x, 4294967295u, 23136u), global0.b, true, vec2<u32>(1u, global0.a.x))), ~vec3<i32>(-24927i, 17683i, var_2)).a.b.x, var_1.a.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(791f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))), abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1822i, u_input.a, var_2, var_2), global1[_wgslsmith_index_u32(1u, 31u)])));
}

