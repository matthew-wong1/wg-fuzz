struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true));

var<private> global3: Struct_1 = Struct_1(false);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = u_input.b.x;
    var var_1 = ~global1.x;
    var_1 = u_input.a;
    var var_2 = _wgslsmith_div_vec4_u32(select(countOneBits(~vec4<u32>(4294967295u, 2739u, u_input.a, 0u)), ~vec4<u32>(global1.x, global1.x, global1.x, u_input.a), true), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, global1.x, u_input.a, 36424u), vec4<u32>(1u, 0u, u_input.a, 1u)))) << (~(~(~(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) << (vec4<u32>(global1.x, 31552u, 1u, 77419u) % vec4<u32>(32u))))) % vec4<u32>(32u));
    var_0 = u_input.b.x;
    return 53423u;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: f32) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(max(u_input.a >> (~u_input.a % 32u), ~func_3()), 11u)];
    let var_1 = Struct_2(var_0.a, Struct_1(any(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(var_0.a, true), false))), ~vec3<i32>(0i, _wgslsmith_div_i32(u_input.b.x, u_input.b.x) & _wgslsmith_div_i32(u_input.b.x, -22614i), u_input.b.x), _wgslsmith_f_op_vec2_f32(-arg_1));
    global2 = array<Struct_1, 11>();
    global3 = Struct_1(any(vec4<bool>(true, select(u_input.a < u_input.a, u_input.b.x > -2147483647i, true), !(arg_2.x <= arg_2.x), !all(vec4<bool>(global3.a, var_0.a, var_0.a, false)))));
    global0 = false;
    return var_1.b;
}

fn func_1() -> Struct_1 {
    global2 = array<Struct_1, 11>();
    var var_0 = vec4<i32>(min(u_input.b.x, u_input.b.x), i32(-1i) * -(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b) & (1i >> (u_input.a % 32u))), max(-45775i, u_input.b.x | u_input.b.x) | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -35749i, -30871i) << (~vec3<u32>(0u, global1.x, 11729u) % vec3<u32>(32u)), max(vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x), firstLeadingBit(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)))), 2147483647i);
    var var_1 = firstLeadingBit(u_input.b.x | -_wgslsmith_div_i32(_wgslsmith_sub_i32(-25596i, var_0.x), var_0.x >> (1u % 32u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1326f + -912f), _wgslsmith_f_op_f32(f32(-1f) * -506f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1442f, -1037f), vec2<f32>(406f, 1090f), vec2<bool>(false, true))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-992f, 2510f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -810f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(633f + -299f) - _wgslsmith_div_f32(-895f, -643f))))));
    var var_3 = Struct_1(!(any(!vec2<bool>(global3.a, global3.a)) && (any(vec4<bool>(global3.a, global3.a, true, false)) | true)));
    return func_2(true, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(var_2)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - 711f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-187f, var_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -2031f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(360f, var_2.x)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_2.x)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-441f, -720f), 752f, global1.x >= global1.x)), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * var_2.x))), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = array<Struct_1, 11>();
    let var_1 = Struct_2(false, var_0, ~(-(vec3<i32>(u_input.b.x, 2147483647i, 68670i) & -vec3<i32>(16935i, -18389i, 19339i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f * 639f), -1219f))));
    global0 = any(!vec2<bool>(!var_0.a, ~9511u < u_input.a));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, var_1.d.x))))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_1.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x * -424f)) - _wgslsmith_f_op_f32(max(var_1.d.x, var_1.d.x)))), !select(vec2<bool>(select(var_0.a, var_1.b.a, false), global3.a), !(!vec2<bool>(var_0.a, var_1.a)), select(select(vec2<bool>(false, global3.a), vec2<bool>(var_1.b.a, var_1.b.a), vec2<bool>(global3.a, global3.a)), select(vec2<bool>(false, var_0.a), vec2<bool>(true, var_0.a), true), vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_f32(-var_2.x));
}

