struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 8>;

var<private> global1: Struct_1 = Struct_1(-944f, vec2<u32>(4294967295u, 5702u));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = ~vec4<u32>(u_input.a, ~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(0u, 0u, arg_0.a)), firstTrailingBit(vec3<u32>(arg_0.a, 4294967295u, 4294967295u))), global1.b.x, ~0u);
    var var_1 = arg_0.a;
    var var_2 = Struct_1(arg_0.b.a, _wgslsmith_mod_vec2_u32(arg_0.b.b, reverseBits(~global1.b | var_0.xz)));
    global0 = array<vec4<bool>, 8>();
    global1 = arg_0.b;
    return arg_0.b.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_2 {
    global1 = arg_0;
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(0u, arg_0, ~vec3<i32>(-1i, 30697i, -2147483647i)))), _wgslsmith_f_op_f32(abs(global1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1355f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + arg_0.a) * _wgslsmith_f_op_f32(max(global1.a, -170f)))), _wgslsmith_f_op_f32(sign(arg_0.a)));
    global1 = arg_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(select(var_0.xzw, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-567f, 764f, arg_0.a)) * vec3<f32>(global1.a, -142f, -694f)))), vec3<f32>(arg_0.a, var_0.x, arg_0.a)), !select(vec3<bool>(true, arg_1.x, 4294967295u < u_input.a), select(vec3<bool>(arg_1.x, false, false), select(vec3<bool>(arg_1.x, false, true), vec3<bool>(false, false, false), arg_1.x), arg_0.a > -1543f), !select(vec3<bool>(true, true, arg_1.x), vec3<bool>(true, true, false), vec3<bool>(false, true, arg_1.x)))));
    let var_2 = max((-2147483647i >> (0u % 32u)) << (_wgslsmith_mod_u32(6321u, ~u_input.a) % 32u), -73549i);
    return Struct_2(0u, Struct_1(555f, ~global1.b), vec3<i32>(-2147483647i, _wgslsmith_mod_i32(-countOneBits(1260i), -1i), -2147483647i ^ var_2));
}

fn func_1() -> Struct_1 {
    global0 = array<vec4<bool>, 8>();
    var var_0 = Struct_3(func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-992f - 324f) * global1.a), ~global1.b), vec2<bool>(true, !any(global0[_wgslsmith_index_u32(0u, 8u)]))), global1.a);
    var var_1 = -988f;
    return func_2(var_0.a.b, vec2<bool>(true, true)).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global1.a, ~vec2<u32>(_wgslsmith_div_u32(countOneBits(u_input.a), u_input.a), _wgslsmith_mod_u32(_wgslsmith_mult_u32(3874u, u_input.a), ~0u)));
    let var_1 = func_1();
    var var_2 = func_2(func_1(), vec2<bool>(all(global0[_wgslsmith_index_u32(func_1().b.x, 8u)]), all(vec2<bool>(true, true))));
    var var_3 = func_2(Struct_1(var_0.a, global1.b), vec2<bool>(true, true));
    let var_4 = all(select(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), false), !(_wgslsmith_div_f32(-866f, var_2.b.a) > 1305f)));
    let var_5 = vec4<bool>(true, var_4, !all(select(!vec3<bool>(var_4, var_4, false), vec3<bool>(var_4, var_4, false), !vec3<bool>(true, true, var_4))), all(select(select(!vec3<bool>(var_4, false, false), select(vec3<bool>(true, false, var_4), vec3<bool>(false, true, var_4), var_4), true), vec3<bool>(any(global0[_wgslsmith_index_u32(1u, 8u)]), var_4, false), any(select(global0[_wgslsmith_index_u32(var_0.b.x, 8u)], vec4<bool>(true, true, var_4, true), vec4<bool>(true, false, var_4, var_4))))));
    var var_6 = -(~(vec4<i32>(var_3.c.x, 0i, var_3.c.x, var_2.c.x) | abs(vec4<i32>(var_3.c.x, var_2.c.x, var_2.c.x, -20990i)))) << (vec4<u32>(~_wgslsmith_mod_u32(53613u, abs(u_input.a)), min(~4294967295u, _wgslsmith_add_u32(~4294967295u, 0u)), _wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(1u, u_input.a, var_1.b.x)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_2.a, var_2.a, 1u), vec3<u32>(1u, 4294967295u, 45634u), ~vec3<u32>(0u, global1.b.x, 1u))), u_input.a) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, ~vec3<u32>(1u, ~(~global1.b.x), 53159u), _wgslsmith_clamp_vec3_i32(max(vec3<i32>(~var_3.c.x, -50206i, _wgslsmith_dot_vec4_i32(vec4<i32>(20902i, 0i, -415i, -1i), vec4<i32>(2147483647i, var_3.c.x, var_3.c.x, 1i))), ~(-var_2.c)), var_3.c, vec3<i32>(2147483647i, -1i, _wgslsmith_sub_i32(-1i, var_3.c.x))), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(1u, 9899u, 1u, var_2.b.b.x)), ~vec4<u32>(94232u, 1u, 43556u, var_0.b.x)), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_3.a, 0u, 1u, u_input.a), vec4<u32>(var_3.b.b.x, 6183u, var_1.b.x, global1.b.x)), vec4<u32>(var_0.b.x, var_3.a, global1.b.x, var_1.b.x)), ~(~vec4<u32>(1u, u_input.a, 14067u, u_input.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-106f)), _wgslsmith_f_op_f32(abs(2225f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-744f - var_2.b.a)))));
}

