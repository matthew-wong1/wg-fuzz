struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true));

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(false, vec2<bool>(false, false), 1641i, vec4<bool>(true, false, false, true)), Struct_1(false, vec2<bool>(false, true), -28549i, vec4<bool>(true, false, true, false)), Struct_1(true, vec2<bool>(false, false), i32(-2147483648), vec4<bool>(false, false, false, true)), Struct_1(true, vec2<bool>(true, true), -1i, vec4<bool>(true, true, false, true)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: vec3<u32>) -> f32 {
    var var_0 = global1.x;
    global0 = array<vec3<bool>, 25>();
    var var_1 = global2[_wgslsmith_index_u32(59784u, 4u)];
    global1 = select(vec2<bool>(global1.x, any(vec2<bool>(!global1.x, true))), var_1.d.zz, !(!var_1.d.x));
    var var_2 = global2[_wgslsmith_index_u32(1u, 4u)];
    return 1482f;
}

fn func_2() -> vec2<bool> {
    let var_0 = u_input.a.yz;
    let var_1 = reverseBits(1795i);
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(743f, _wgslsmith_add_vec4_i32(vec4<i32>(20225i, var_1, var_1, -1i), vec4<i32>(-1i, var_1, 0i, var_1)), u_input.a.yyw)) + 993f))));
    let var_3 = -(~vec2<i32>(-(var_1 >> (1u % 32u)), var_1));
    let var_4 = Struct_1(global1.x, select(!(!select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, true), global1.x)), vec2<bool>(true, true), select(select(!vec2<bool>(true, global1.x), select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, global1.x), false), true), select(vec2<bool>(global1.x, global1.x), select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, true), false), vec2<bool>(true, true)), vec2<bool>(true, global1.x))), 5983i, select(!vec4<bool>(any(vec4<bool>(global1.x, true, true, global1.x)), global1.x, true, global1.x), vec4<bool>(false, true, any(!global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), true), all(vec2<bool>(var_3.x > -2147483647i, true))));
    return !var_4.b;
}

fn func_1(arg_0: Struct_1) -> vec2<i32> {
    global0 = array<vec3<bool>, 25>();
    var var_0 = Struct_1(true, select(!(!func_2()), select(arg_0.b, vec2<bool>(true, true), any(select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, false), arg_0.a))), func_2().x & true), (~(~arg_0.c) & (_wgslsmith_add_i32(arg_0.c, arg_0.c) ^ ~arg_0.c)) >> (abs(26937u) % 32u), arg_0.d);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f * 861f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(191f, -462f))), -599f, true)), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -900f)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2093f), _wgslsmith_f_op_f32(-270f * 1569f), global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-669f, -520f)))), 1f, _wgslsmith_f_op_f32(exp2(1f))));
    global0 = array<vec3<bool>, 25>();
    let var_2 = var_1.xww;
    return max(vec2<i32>(select(max(var_0.c, 8767i), ~(-30845i), !global1.x) | select(1i, -1i, false), arg_0.c >> (~_wgslsmith_dot_vec3_u32(u_input.a.wyz, vec3<u32>(3193u, u_input.b, u_input.b)) % 32u)), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 25418i, var_0.c, 2746i), vec4<i32>(arg_0.c, -2147483647i, 19309i, arg_0.c)), select(-1i, 2147483647i, var_0.b.x)), _wgslsmith_add_i32(arg_0.c, 1i) >> (_wgslsmith_div_u32(1u, 113245u) % 32u)), arg_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    let var_1 = -func_1(Struct_1(u_input.a.x <= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, 51595u, 0u), u_input.a), select(select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, global1.x), false), select(vec2<bool>(false, true), vec2<bool>(false, true), true), true), 0i, vec4<bool>(global1.x & global1.x, global1.x, true, global1.x)));
    var_0 = var_1.x;
    global0 = array<vec3<bool>, 25>();
    var var_2 = Struct_1(func_2().x, vec2<bool>(any(select(!vec2<bool>(global1.x, true), vec2<bool>(global1.x, true), select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, false), true))), true), _wgslsmith_mult_i32(_wgslsmith_div_i32(~(var_1.x ^ -1i), -15322i), var_1.x), !vec4<bool>(true, global1.x, global1.x, func_2().x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, countOneBits(vec2<u32>(~30265u, ~0u)), _wgslsmith_add_u32(~(0u << (u_input.a.x % 32u)) << (_wgslsmith_mult_u32(~u_input.b, max(u_input.b, 47609u)) % 32u), u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -2174f), 44853u);
}

