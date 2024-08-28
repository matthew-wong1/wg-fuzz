struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(0u), Struct_1(2222u), Struct_1(26757u), Struct_1(0u), Struct_1(1u), Struct_1(26645u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(9428u), Struct_1(4294967295u), Struct_1(26982u), Struct_1(4294967295u), Struct_1(59404u), Struct_1(8243u), Struct_1(2971u), Struct_1(0u), Struct_1(4294967295u), Struct_1(37921u), Struct_1(33172u), Struct_1(32075u), Struct_1(22515u), Struct_1(16976u));

var<private> global1: Struct_1;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 22>();
    global1 = arg_0;
    let var_0 = vec2<bool>(true, ~_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, 17961i, -1i)), -vec3<i32>(8719i, -5516i, 3753i)) < 1i);
    var var_1 = arg_0;
    let var_2 = var_0.x;
    return Struct_1(global1.a);
}

fn func_3() -> i32 {
    global1 = global0[_wgslsmith_index_u32(func_1(func_1(func_1(global0[_wgslsmith_index_u32(~0u & global1.a, 22u)]))).a, 22u)];
    let var_0 = countOneBits(reverseBits(_wgslsmith_div_i32(reverseBits(1i), 1i)));
    var var_1 = Struct_2(vec3<u32>(4294967295u, 107602u, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1117u), vec2<u32>(1u, global1.a)) ^ 1u)), global0[_wgslsmith_index_u32(u_input.a.x, 22u)], func_1(Struct_1(~u_input.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-790f, _wgslsmith_f_op_f32(abs(970f))))), var_0);
    let var_2 = Struct_2(u_input.a | firstLeadingBit(_wgslsmith_clamp_vec3_u32(~u_input.a, u_input.a << (vec3<u32>(0u, var_1.c.a, 4294967295u) % vec3<u32>(32u)), var_1.a)), Struct_1(7397u), Struct_1(4294967295u), _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.d, _wgslsmith_f_op_f32(var_1.d + var_1.d))), -786f)), -1i);
    var var_3 = var_2.d;
    return var_2.e;
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = vec4<i32>(min(_wgslsmith_add_i32(i32(-1i) * -38471i, func_3()), ~(-min(-20495i, 48185i))), 30585i, ~1i, reverseBits(5786i));
    global0 = array<Struct_1, 22>();
    global1 = global0[_wgslsmith_index_u32(4294967295u, 22u)];
    var var_1 = 2147483647i;
    var var_2 = global1.a;
    return abs(min(0i, 24753i) | (~countOneBits(-81080i) & -_wgslsmith_mult_i32(-9912i, var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global0[_wgslsmith_index_u32(u_input.a.x & global1.a, 22u)]);
    var var_1 = select(min(vec3<i32>(_wgslsmith_mult_i32(0i, -2147483647i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.a, 0u, 0u), vec4<u32>(71397u, global1.a, global1.a, 4294967295u)) % 32u), 1i, -10338i), vec3<i32>(_wgslsmith_clamp_i32(countOneBits(34593i), min(-52235i, -1i), -71722i), 13015i, ~(~29811i))), abs(_wgslsmith_add_vec3_i32(vec3<i32>(func_2(global0[_wgslsmith_index_u32(1735u, 22u)]), min(2147483647i, 17884i), _wgslsmith_dot_vec3_i32(vec3<i32>(-5307i, -25607i, 0i), vec3<i32>(-25802i, -2147483647i, 35543i))), -vec3<i32>(1i, 1i, 1i))), vec3<bool>(true, any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), true)), !any(vec3<bool>(true, false, false)) && true));
    var var_2 = false;
    global0 = array<Struct_1, 22>();
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -_wgslsmith_div_i32(-40598i, 3883i)), var_1.yx), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1364f, 651f, 1f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -143f)), 220f, _wgslsmith_f_op_f32(max(-1033f, _wgslsmith_f_op_f32(ceil(1700f))))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), true))))), _wgslsmith_dot_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global1.a, u_input.a.x, u_input.a.x), vec4<u32>(4384u, 4294967295u, var_0.a, 14259u), vec4<u32>(57664u, var_3.a, var_3.a, 13336u))), max(~(~vec4<u32>(var_3.a, 4294967295u, 35911u, 1u)), select(vec4<u32>(42334u, 9486u, 14848u, var_0.a), vec4<u32>(global1.a, 0u, 24186u, 1u), vec4<bool>(false, false, true, true)) ^ vec4<u32>(32332u, 41003u, var_0.a, global1.a))), reverseBits(((vec3<i32>(-7289i, var_1.x, var_1.x) & vec3<i32>(-2147483647i, var_1.x, 1i)) & abs(vec3<i32>(0i, 0i, 2147483647i))) ^ (~vec3<i32>(var_1.x, var_1.x, 53344i) ^ ~vec3<i32>(-28713i, var_1.x, var_1.x))));
}

