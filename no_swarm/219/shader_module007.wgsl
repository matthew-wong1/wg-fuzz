struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(2147483647i, 21075i, -6991i, -38044i, -28743i, 2147483647i, 18987i, -23080i, 30423i, 1i, 23i, i32(-2147483648));

var<private> global1: vec4<f32>;

var<private> global2: array<vec2<bool>, 7>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<bool>) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.x - global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(939f))), -1235f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(312f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -570f)) - arg_1.b.x));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec2<bool>, arg_3: bool) -> vec4<f32> {
    var var_0 = arg_0;
    let var_1 = !(!(!any(vec3<bool>(false, false, arg_3))));
    var var_2 = arg_0;
    let var_3 = arg_0.a;
    var var_4 = vec4<bool>(var_1, true, true, true);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.b.x, -1287f, 243f, -664f)))), vec4<f32>(_wgslsmith_f_op_f32(func_3(true, arg_0, Struct_1(min(18851u, var_0.a.a), 2147483647i, arg_0.a.c | arg_0.a.c), !vec4<bool>(false, true, false, var_4.x))), -844f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.c))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b.x)))), 655f));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(Struct_2(Struct_1(arg_1.x, global0[_wgslsmith_index_u32(u_input.a, 12u)], arg_1), global1.yyx, global1.x), 8762u, select(vec2<bool>(false, true), global2[_wgslsmith_index_u32(arg_1.x, 7u)], vec2<bool>(false, true)), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, global1.x, global1.x, global1.x))))));
    global2 = array<vec2<bool>, 7>();
    let var_0 = vec3<bool>(true, true, true);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))))), global1.x);
    let var_2 = vec4<u32>(_wgslsmith_div_u32(~1u, ~11679u), ~(reverseBits(_wgslsmith_sub_u32(u_input.a, 0u)) ^ 16143u), 37428u, _wgslsmith_mod_u32(select(arg_1.x, 4294967295u, var_0.x), 4294967295u));
    return Struct_1(_wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_add_u32(4294967295u, arg_1.x), firstLeadingBit(67020u), arg_1.x << (1u % 32u))), ~84785u, arg_1.x), global0[_wgslsmith_index_u32(u_input.a, 12u)], vec3<u32>(arg_1.x, var_2.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(38086u, arg_1.x, 4294967295u), countOneBits(var_2.yxx))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 7>();
    var var_0 = ~(-_wgslsmith_clamp_i32(~u_input.c.x, select(u_input.c.x, 11048i, false), -24842i)) >> (u_input.a % 32u);
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.x), 608f, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.x)) * -544f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2336f, 2326f)), _wgslsmith_f_op_f32(step(855f, _wgslsmith_f_op_f32(global1.x + global1.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.x * -1500f))))));
    global2 = array<vec2<bool>, 7>();
    var var_1 = Struct_2(func_1(global1.yyx, reverseBits(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, u_input.a)), vec3<u32>(46009u, u_input.a, 69972u)))), vec3<f32>(_wgslsmith_f_op_f32(-global1.x), 1874f, global1.x), global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.xx, ((u_input.c << (~var_1.a.c % vec3<u32>(32u))) & _wgslsmith_sub_vec3_i32(u_input.c & u_input.c, vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 12u)], var_1.a.b, 36117i) & vec3<i32>(global0[_wgslsmith_index_u32(1u, 12u)], -965i, 2147483647i))) ^ _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(~u_input.c, _wgslsmith_div_vec3_i32(vec3<i32>(-19388i, 41677i, u_input.c.x), u_input.c)), vec3<i32>(_wgslsmith_div_i32(var_1.a.b, 55056i), ~(-25924i), u_input.c.x)), -reverseBits(i32(-1i) * -2147483647i), var_1.a.c.x);
}

