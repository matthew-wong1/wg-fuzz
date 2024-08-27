struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(4294967295u, 4294967295u, 0u, 27527u), vec4<u32>(4784u, 23107u, 1u, 86031u), vec4<u32>(0u, 4294967295u, 93391u, 32751u), vec4<u32>(33031u, 25201u, 4294967295u, 34500u), vec4<u32>(1u, 44827u, 1u, 23018u), vec4<u32>(71300u, 965u, 0u, 40696u), vec4<u32>(4294967295u, 27621u, 4294967295u, 14156u), vec4<u32>(0u, 1u, 129927u, 13666u), vec4<u32>(0u, 1u, 0u, 10228u), vec4<u32>(4294967295u, 0u, 27371u, 58014u), vec4<u32>(4294967295u, 4294967295u, 1u, 0u), vec4<u32>(4294967295u, 25345u, 32296u, 1u), vec4<u32>(4294967295u, 4294967295u, 9842u, 50258u));

var<private> global1: array<vec4<f32>, 26>;

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = min(~vec3<u32>(~u_input.a, 35141u, u_input.a >> (u_input.a % 32u)), vec3<u32>(0u, u_input.a << (_wgslsmith_dot_vec3_u32(~vec3<u32>(6698u, u_input.a, 1u), vec3<u32>(0u, 31741u, u_input.a)) % 32u), _wgslsmith_mult_u32(u_input.a, u_input.a)));
    let var_1 = ~var_0.x;
    let var_2 = global0[_wgslsmith_index_u32(var_0.x, 13u)];
    global2 = array<Struct_1, 21>();
    global1 = array<vec4<f32>, 26>();
    return select(select(!vec3<bool>(any(vec3<bool>(false, arg_1.a, arg_1.a)), any(vec3<bool>(arg_1.a, arg_1.a, arg_1.a)), false), select(!vec3<bool>(true, arg_1.a, true), !(!vec3<bool>(false, true, arg_1.a)), !any(vec2<bool>(arg_1.a, arg_1.a))), true), vec3<bool>(~(~2798u) < ~(~var_0.x), false, arg_1.a), all(select(vec3<bool>(all(vec3<bool>(arg_1.a, false, false)), any(vec4<bool>(true, true, true, arg_1.a)), true), select(!vec3<bool>(arg_1.a, false, arg_1.a), !vec3<bool>(false, true, arg_1.a), vec3<bool>(true, arg_1.a, arg_1.a)), vec3<bool>(arg_1.a | false, select(true, arg_1.a, arg_1.a), true))));
}

fn func_4(arg_0: vec3<bool>) -> vec2<bool> {
    let var_0 = _wgslsmith_sub_u32(abs(_wgslsmith_mod_u32(~1u, ~(51007u & u_input.a))), ~4294967295u);
    global2 = array<Struct_1, 21>();
    let var_1 = Struct_1((arg_0.x || select(true, true, false)) || true);
    var var_2 = vec4<i32>(-2147483647i, 2147483647i, 0i, abs(u_input.b.x));
    var var_3 = ~var_2.yzx;
    return arg_0.xz;
}

fn func_2(arg_0: u32, arg_1: bool) -> bool {
    var var_0 = countOneBits(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -48091i, u_input.b.x, u_input.b.x), ~vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x))) ^ vec4<i32>(u_input.b.x, u_input.b.x, ~(u_input.b.x | -61054i), ~_wgslsmith_mod_i32(2147483647i, u_input.b.x)));
    var var_1 = !(!any(func_4(func_3(-1302f, Struct_1(arg_1)))));
    global2 = array<Struct_1, 21>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(~1u, 26u)])))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, var_2.x, any(vec3<bool>(arg_1, arg_1 != arg_1, arg_1)))));
    return false;
}

fn func_1() -> i32 {
    var var_0 = Struct_1(func_2(_wgslsmith_mult_u32(u_input.a, ~(~0u)), any(vec3<bool>(false, true, true))));
    global0 = array<vec4<u32>, 13>();
    var var_1 = vec2<f32>(1f, -184f);
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), -418f));
    let var_3 = -select(u_input.b.x, 2147483647i, any(!(!vec4<bool>(var_0.a, var_0.a, false, false))));
    return firstLeadingBit(u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = reverseBits(-(~u_input.b));
    global2 = array<Struct_1, 21>();
    global2 = array<Struct_1, 21>();
    global2 = array<Struct_1, 21>();
    var var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(-var_1.x, (i32(-1i) * -u_input.b.x) & u_input.b.x, -u_input.b.x, _wgslsmith_add_i32(-52994i, func_1())), vec4<i32>(i32(-1i) * -u_input.b.x, u_input.b.x, func_1(), -28983i) & vec4<i32>(-func_1(), min(-2147483647i, 1i), firstLeadingBit(u_input.b.x) << (u_input.a % 32u), var_1.x));
    let var_3 = 785f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-2184f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3)))))), _wgslsmith_add_u32(1u, ~(abs(29068u) ^ _wgslsmith_add_u32(u_input.a, 1u))), _wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_add_vec4_i32(abs(-_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 3274i, -1i, u_input.b.x), vec4<i32>(8605i, var_2.x, u_input.b.x, var_2.x), vec4<i32>(u_input.b.x, -2147483647i, -15825i, -4785i))), countOneBits(vec4<i32>(-17277i, 0i, ~var_2.x, 1i))));
}

