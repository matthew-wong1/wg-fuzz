struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 2>;

var<private> global2: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> u32 {
    let var_0 = ~u_input.a;
    return ~global1[_wgslsmith_index_u32(min(4294967295u, select(46370u, _wgslsmith_clamp_u32(3666u, u_input.a, 0u), true)), 2u)] | ~4294967295u;
}

fn func_1() -> u32 {
    var var_0 = 0u;
    global0 = u_input.a;
    global0 = min(max(~(~abs(u_input.a)), select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstTrailingBit(1u), 2u)], 2u)], func_2(Struct_1(18929i), _wgslsmith_f_op_vec3_f32(vec3<f32>(158f, -1699f, -710f) - vec3<f32>(480f, -355f, -256f))), true)), global1[_wgslsmith_index_u32(0u, 2u)]);
    let var_1 = Struct_1(u_input.b.x);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1600f * _wgslsmith_f_op_f32(floor(-745f))));
    return global1[_wgslsmith_index_u32(0u, 2u)];
}

fn func_3() -> i32 {
    global0 = 40458u;
    global0 = abs(global1[_wgslsmith_index_u32(abs(~1u), 2u)] | select(_wgslsmith_mod_u32(u_input.a, u_input.a | global1[_wgslsmith_index_u32(u_input.a, 2u)]), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 2u)], 2u)], !all(vec4<bool>(true, false, true, true))));
    global1 = array<u32, 2>();
    let var_0 = u_input.b.x;
    global1 = array<u32, 2>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_u32(((vec3<u32>(global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(31109u, 2u)], 1u) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, global1[_wgslsmith_index_u32(1u, 2u)]), vec3<u32>(56174u, global1[_wgslsmith_index_u32(u_input.a, 2u)], 144045u), vec3<u32>(u_input.a, 0u, 4294967295u)) % vec3<u32>(32u))) | ~vec3<u32>(u_input.a, 56346u, u_input.a)) & ~vec3<u32>(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(52514u, 2u)]), _wgslsmith_mult_u32(0u, 4294967295u), func_1()), vec3<u32>(0u, u_input.a ^ abs(u_input.a), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, global1[_wgslsmith_index_u32(u_input.a, 2u)], u_input.a), max(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(151851u, 2u)], 2u)], 2u)], 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)], 69502u), vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 2u)], 2u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(72401u, 2u)], 2u)])))) | vec3<u32>(~4294967295u, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(58896u, 2u)], 2u)] << (_wgslsmith_div_u32(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 2u)]) % 32u), 2u)], ~98788u));
    let var_1 = Struct_1(-(~_wgslsmith_clamp_i32(u_input.b.x, -15449i, -2147483647i) << (_wgslsmith_add_u32(70316u, func_2(Struct_1(u_input.b.x), vec3<f32>(418f, -1000f, 1909f))) % 32u)));
    global1 = array<u32, 2>();
    var var_2 = _wgslsmith_mult_i32(u_input.c.x ^ 0i, _wgslsmith_dot_vec2_i32(u_input.c.yx, ~(~vec2<i32>(var_1.a, var_1.a))));
    var var_3 = u_input.b;
    var var_4 = Struct_1(reverseBits(_wgslsmith_dot_vec3_i32(u_input.c.xxy, ~_wgslsmith_add_vec3_i32(vec3<i32>(var_3.x, var_1.a, var_3.x), vec3<i32>(0i, u_input.c.x, var_3.x)))));
    var var_5 = 1u;
    var var_6 = vec3<bool>(all(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))) | true, (global1[_wgslsmith_index_u32(26772u, 2u)] == 20827u) & true, false);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(max(_wgslsmith_mod_i32(~(-16532i), _wgslsmith_clamp_i32(1i, var_3.x, 1i)), -u_input.c.x), func_3()), firstTrailingBit(var_3.yzx));
}

