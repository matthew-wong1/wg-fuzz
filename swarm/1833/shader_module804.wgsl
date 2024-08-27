struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: vec2<u32> = vec2<u32>(0u, 0u);

var<private> global1: array<Struct_3, 16>;

var<private> global2: bool = false;

var<private> global3: Struct_1 = Struct_1(2147483647i, vec3<f32>(1147f, -492f, -892f), vec2<u32>(38837u, 32353u), -180f, vec4<bool>(false, false, true, true));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>) -> f32 {
    var var_0 = 1i;
    return arg_1.x;
}

fn func_4(arg_0: vec3<f32>) -> vec2<bool> {
    global1 = array<Struct_3, 16>();
    var var_0 = max(7622u, firstTrailingBit(1u));
    var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(arg_0.yy))));
    let var_2 = Struct_5(Struct_3(global0.x), global1[_wgslsmith_index_u32(countOneBits(~_wgslsmith_sub_u32(~4294967295u, ~global0.x)), 16u)], select(global3.e.x, ((global3.e.x == global3.e.x) || false) & select(global3.e.x, global3.e.x, var_1.x >= 296f), global3.e.x), !(!(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.a, global3.a, -1i, global3.a), vec4<i32>(1i, global3.a, global3.a, global3.a)) < -global3.a)));
    return global3.e.yx;
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: f32) -> i32 {
    global1 = array<Struct_3, 16>();
    global0 = u_input.a.xy;
    var var_0 = ~vec2<u32>(17506u, global0.x);
    var_0 = ~(~vec2<u32>(54853u, select(global0.x, 51522u, arg_0.x) & ~71987u));
    var var_1 = Struct_2(global3.b, Struct_1(arg_1, global3.b, global3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(326f, 270f))) - 1f), vec4<bool>(all(!global3.e.yzz), global3.e.x, true, arg_0.x)), arg_2, -(vec3<i32>(_wgslsmith_sub_i32(-150i, 60391i), global3.a, global3.a) & select(vec3<i32>(global3.a, 39991i, -9360i), vec3<i32>(2621i, arg_1, 8212i) >> (vec3<u32>(0u, 31417u, 26783u) % vec3<u32>(32u)), !global3.e.wyy)), func_4(vec3<f32>(arg_2, _wgslsmith_f_op_f32(ceil(arg_2)), _wgslsmith_div_f32(234f, _wgslsmith_f_op_f32(func_3(Struct_2(vec3<f32>(-1000f, global3.b.x, global3.d), Struct_1(45343i, vec3<f32>(660f, arg_2, 904f), global3.c, arg_2, global3.e), arg_2, vec3<i32>(global3.a, -22528i, arg_1), vec2<bool>(arg_0.x, arg_0.x)), vec3<f32>(arg_2, -838f, global3.d)))))));
    return -_wgslsmith_add_i32(1i, arg_1);
}

fn func_1() -> u32 {
    var var_0 = global0.x;
    var var_1 = ~(~countOneBits(_wgslsmith_div_u32(~11202u, 4294967295u)));
    let var_2 = _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(2147483647i, 1687i, -global3.a)), vec3<i32>(_wgslsmith_mod_i32(1i, countOneBits(_wgslsmith_clamp_i32(-2147483647i, -2147483647i, -2147483647i))), -(~min(global3.a, -1i)), func_2(vec2<bool>(global3.e.x, true), _wgslsmith_add_i32(_wgslsmith_mod_i32(2147483647i, 18858i), _wgslsmith_add_i32(global3.a, global3.a)), _wgslsmith_f_op_f32(global3.d - _wgslsmith_div_f32(-539f, global3.b.x)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(firstTrailingBit(-50776i & global3.a), -global3.a & global3.a, _wgslsmith_mod_i32(1i, global3.a >> (17097u % 32u))), vec3<i32>(~global3.a, global3.a, ~2147483647i) & firstTrailingBit(~vec3<i32>(global3.a, global3.a, global3.a)), reverseBits(countOneBits(vec3<i32>(1079i, global3.a, global3.a)) >> (min(u_input.a.zyw, vec3<u32>(global3.c.x, 65356u, global3.c.x)) % vec3<u32>(32u)))));
    var_0 = firstTrailingBit((min(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), u_input.a.x ^ 0u) | ~global3.c.x) | reverseBits(abs(~1u)));
    var var_3 = !(!(_wgslsmith_mod_i32(var_2.x, var_2.x) >= ~var_2.x));
    return 1u;
}

fn func_5(arg_0: f32, arg_1: u32) -> vec3<f32> {
    var var_0 = min(1u, ~(~(~_wgslsmith_mult_u32(u_input.a.x, 1068u))));
    global0 = u_input.a.yw;
    let var_1 = vec4<i32>(abs(global3.a), 0i & func_2(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-903f, arg_0, global3.b.x))), abs(_wgslsmith_mod_i32(33910i, 12504i)), arg_0), global3.a, ~(~1i));
    var var_2 = -1i;
    global1 = array<Struct_3, 16>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-160f, arg_0, 922f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1682f, 416f)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -271f), _wgslsmith_f_op_f32(-global3.d), global3.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.b + global3.b)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(global3.b)), _wgslsmith_f_op_vec3_f32(global3.b - global3.b), global3.e.x))) + _wgslsmith_f_op_vec3_f32(ceil(global3.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(22158u, 0u);
    let var_1 = Struct_4(-abs(-21007i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.b * global3.b)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.d, -655f, -411f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(-219f, func_1())) - vec3<f32>(_wgslsmith_f_op_f32(1833f + global3.d), global3.d, _wgslsmith_f_op_f32(-global3.b.x)))));
    global2 = true;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global3.b))));
    global1 = array<Struct_3, 16>();
    let var_3 = global1[_wgslsmith_index_u32(global3.c.x, 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(countOneBits(var_0 << (u_input.a.zw % vec2<u32>(32u))), ~firstTrailingBit(vec2<u32>(79564u, 151204u))), global3.c.x));
}

