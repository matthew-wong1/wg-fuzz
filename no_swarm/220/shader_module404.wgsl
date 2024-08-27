struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

var<private> global1: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: Struct_2) -> bool {
    let var_0 = firstTrailingBit(~_wgslsmith_add_i32(arg_2.c.x, reverseBits(~u_input.b.x)));
    let var_1 = vec4<bool>(global1.a.a.x, false, select(true, false, arg_2.e.a.x), arg_2.a);
    var var_2 = arg_3.a.b;
    global1 = arg_3;
    var var_3 = Struct_1(arg_3.a.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-112f - 345f)), 950f)), global1.d, ~(~vec2<u32>(arg_2.d, arg_3.b)) >> (max(vec2<u32>(global1.a.d.x, ~global1.b), vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(28028i, u_input.b.x) | vec2<i32>(-1i, 1i), select(-_wgslsmith_div_vec2_i32(arg_2.c.yz, vec2<i32>(-43362i, global1.a.c)), vec2<i32>(~u_input.b.x, ~2147483647i), true)));
    return true;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<i32>) -> vec4<bool> {
    global1 = Struct_2(Struct_1(!(!vec2<bool>(true, global1.c)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global1.a.b * _wgslsmith_f_op_vec2_f32(vec2<f32>(1316f, -1661f) * vec2<f32>(global0[_wgslsmith_index_u32(0u, 32u)], 1394f))))), arg_1.x | reverseBits(1i), ~abs(vec2<u32>(global1.a.d.x, arg_0.x)), arg_1.x), ~10350u >> (firstLeadingBit(89775u) % 32u), false, _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, 27738i), ~u_input.a.xz)), ~global1.d));
    let var_0 = Struct_1(vec2<bool>(global1.a.a.x, !global1.c || (true & any(vec3<bool>(false, global1.a.a.x, global1.c)))), global1.a.b, _wgslsmith_div_i32(~select(max(1i, 1i), 2147483647i, select(global1.c, true, true)), 2147483647i), vec2<u32>(max(global1.a.d.x, ~99864u), _wgslsmith_mult_u32(arg_0.x, abs(29433u))), arg_1.x);
    global1 = Struct_2(var_0, 10349u, any(select(select(select(global1.a.a, vec2<bool>(var_0.a.x, true), global1.a.a), !vec2<bool>(global1.c, false), var_0.a.x), !select(global1.a.a, vec2<bool>(true, true), var_0.a.x), global1.a.a)), -global1.a.c);
    let var_1 = Struct_2(Struct_1(select(vec2<bool>(var_0.a.x, true), global1.a.a, false), vec2<f32>(var_0.b.x, var_0.b.x), var_0.e, vec2<u32>(22275u, reverseBits(36054u) >> (var_0.d.x % 32u)), 21071i), var_0.d.x, !global1.a.a.x, global1.d);
    var var_2 = _wgslsmith_mod_i32(0i, var_0.e) | -countOneBits(_wgslsmith_div_i32(-13455i, -1i & arg_1.x));
    return !select(!select(!vec4<bool>(false, var_1.a.a.x, false, true), select(vec4<bool>(false, false, var_1.a.a.x, true), vec4<bool>(false, var_1.c, var_1.a.a.x, var_1.a.a.x), false), select(vec4<bool>(false, true, var_0.a.x, true), vec4<bool>(false, var_0.a.x, true, global1.c), true)), select(!vec4<bool>(global1.c, false, true, var_1.a.a.x), vec4<bool>(var_1.a.a.x, true, var_1.c, false || var_1.c), select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_1.a.a.x, true, var_0.a.x), vec4<bool>(true, var_0.a.x, var_1.a.a.x, true))), vec4<bool>(true, global1.c, min(0u, 6719u) > ~var_0.d.x, true));
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    var var_0 = -u_input.c.x;
    let var_1 = select(all(global1.a.a), ~u_input.c.x != ~global1.d, global1.a.b.x == -1516f);
    global0 = array<f32, 32>();
    let var_2 = vec4<u32>(4294967295u, firstLeadingBit(global1.a.d.x), global1.b, ~(_wgslsmith_div_u32(global1.b, 15640u) >> (4294967295u % 32u)));
    let var_3 = func_3(select(var_2, reverseBits(var_2), vec4<bool>(any(!vec3<bool>(false, var_1, global1.a.a.x)), !all(vec4<bool>(true, true, true, global1.a.a.x)), !func_2(var_1, global1.a.a, Struct_3(var_1, var_2.x, u_input.c, 4294967295u, Struct_1(global1.a.a, vec2<f32>(-555f, global0[_wgslsmith_index_u32(10662u, 32u)]), 0i, vec2<u32>(3345u, arg_0.x), u_input.a.x)), Struct_2(global1.a, 0u, true, u_input.b.x)), true)), vec4<i32>(-global1.d, 80456i, -1i, ~(-31753i)));
    return Struct_3(var_3.x, 116783u, -u_input.c, global1.b, global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global1.a.d);
    global1 = Struct_2(var_0.e, ~(~4294967295u), any(global1.a.a), ~global1.a.e);
    let var_1 = Struct_2(Struct_1(vec2<bool>(global1.a.a.x, global1.c & (global1.a.a.x || var_0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.e.b, var_0.e.b)), ~abs(global1.d) & u_input.b.x, global1.a.d, func_1(vec2<u32>(73861u, global1.a.d.x) & select(var_0.e.d, vec2<u32>(global1.a.d.x, 30759u), global1.a.a)).e.e), var_0.d, func_3(~(~(vec4<u32>(global1.b, var_0.e.d.x, 0u, global1.b) & vec4<u32>(var_0.b, var_0.e.d.x, global1.a.d.x, global1.a.d.x))), vec4<i32>(var_0.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-21426i, 18570i, u_input.c.x, -23228i), -var_0.c), abs(1i), u_input.c.x)).x, 0i);
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(var_1.a.d.x, 8399u)), func_1(var_0.e.d ^ vec2<u32>(4294967295u, var_0.e.d.x)).e.d) ^ 119758u);
}

