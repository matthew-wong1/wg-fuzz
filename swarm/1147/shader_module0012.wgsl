struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_1;

var<private> global2: array<vec4<i32>, 15>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<i32>(-1i, 0i), vec2<f32>(509f, 1513f)), 34890u, vec2<bool>(true, false));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    let var_0 = 4294967295u;
    var var_1 = Struct_2(Struct_1(firstLeadingBit(countOneBits(global1.a)), _wgslsmith_f_op_vec2_f32(-global1.b)), ~1u, !(!(!(!vec2<bool>(global0.x, true)))));
    global3 = Struct_2(global3.a, ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global3.b, 1252u, 0u, global3.b) >> (vec4<u32>(1u, 4294967295u, 1u, 2319u) % vec4<u32>(32u)), select(vec4<u32>(global3.b, global3.b, global3.b, 15763u), vec4<u32>(0u, global3.b, 68846u, var_1.b), true)), ~select(vec4<u32>(var_0, 4294967295u, 4294967295u, global3.b), vec4<u32>(9685u, global3.b, 0u, 4294967295u), global0.x)), !(!vec2<bool>(false, true && global3.c.x)));
    let var_2 = Struct_2(Struct_1(-(~reverseBits(global1.a)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(global3.a.b))))))), abs(min(max(min(4294967295u, 16593u), global3.b), 4294967295u)), vec2<bool>(!global3.c.x, var_1.c.x));
    var var_3 = !(!(!global3.c));
    return var_3.x;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> bool {
    global2 = array<vec4<i32>, 15>();
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.x, global1.b.x, arg_2.b.x)), vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_1.b.x, -354f)))) * -1639f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1393f)), _wgslsmith_f_op_f32(global3.a.b.x * _wgslsmith_f_op_f32(113f * arg_0))))));
    let var_1 = _wgslsmith_sub_u32(143846u, global3.b | global3.b);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_1.b.x))))));
    var var_3 = ~_wgslsmith_sub_vec2_u32(~vec2<u32>(select(4294967295u, 13846u, false), var_1 & global3.b), _wgslsmith_add_vec2_u32(max(vec2<u32>(4294967295u, 0u), ~vec2<u32>(global3.b, var_1)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(global3.b, 1u), vec2<u32>(42359u, global3.b)), vec2<u32>(var_1, 43449u))));
    return func_3();
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(359f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.b.x * global1.b.x))) + global1.b.x));
    let var_1 = ~(~select(~vec2<u32>(1u, 4294967295u) & _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.b, 4294967295u), vec2<u32>(73311u, 2287u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.b, global3.b), vec2<u32>(81508u, 1869u)), !func_2(global1.b.x, Struct_1(vec2<i32>(global3.a.a.x, -14597i), arg_0.a.b), arg_0.a, vec3<i32>(-5042i, global1.a.x, 1i))));
    var var_2 = max(global1.a.x, u_input.b);
    global3 = Struct_2(arg_0.a, select(global3.b, var_1.x, !(!select(global0.x, arg_0.c.x, global0.x))), arg_0.c);
    var var_3 = ~_wgslsmith_sub_vec3_u32(abs(~(~vec3<u32>(arg_0.b, 4294967295u, arg_0.b))), ~select(vec3<u32>(var_1.x, 1u, arg_0.b), vec3<u32>(global3.b, arg_0.b, arg_0.b), true) | abs(vec3<u32>(arg_0.b, 38866u, global3.b)));
    return Struct_2(Struct_1(arg_0.a.a, _wgslsmith_f_op_vec2_f32(-global1.b)), ~global3.b, vec2<bool>(true, false));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: Struct_2) -> StorageBuffer {
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a.b - vec2<f32>(_wgslsmith_f_op_f32(-global3.a.b.x), _wgslsmith_f_op_f32(floor(global3.a.b.x)))) - arg_3.a.b), -(~(~(-2147483647i))), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), vec3<u32>(arg_2, global3.b, ~(~1u)), select(select(abs(vec2<u32>(46896u, global3.b)), abs(_wgslsmith_div_vec2_u32(vec2<u32>(global3.b, 1u), vec2<u32>(arg_2, arg_2))), !(false == global0.x)), max(vec2<u32>(78206u, arg_0.b) & vec2<u32>(9353u, 4294967295u), vec2<u32>(1u, arg_3.b)) << (~(~vec2<u32>(4294967295u, arg_0.b)) % vec2<u32>(32u)), arg_3.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_add_vec2_u32(min(_wgslsmith_div_vec2_u32(vec2<u32>(global3.b, global3.b), vec2<u32>(1u, global3.b)), reverseBits(vec2<u32>(global3.b, global3.b))), vec2<u32>(global3.b, 28143u)));
    var var_1 = vec3<bool>(!(!any(vec4<bool>(true, global0.x, true, false))), ~(~abs(0i)) == firstLeadingBit(~global3.a.a.x >> (~71103u % 32u)), true);
    let x = u_input.a;
    s_output = func_4(func_1(Struct_2(global3.a, global3.b, !select(vec2<bool>(false, global0.x), global0.yz, vec2<bool>(false, true)))), global3.a.b.x, ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global3.b, global3.b, 4294967295u, 16230u) | vec4<u32>(global3.b, 51475u, 4813u, 1u), vec4<u32>(13373u, global3.b, 24574u, 66049u)), vec4<u32>(23309u, _wgslsmith_mult_u32(0u, 20169u), ~948u, ~1u)), Struct_2(Struct_1(~(-global1.a), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1962f, 1000f)))), _wgslsmith_dot_vec2_u32((var_0 >> (vec2<u32>(4294967295u, 61462u) % vec2<u32>(32u))) ^ max(vec2<u32>(4143u, var_0.x), var_0), var_0), !vec2<bool>(var_0.x < global3.b, true)));
}

