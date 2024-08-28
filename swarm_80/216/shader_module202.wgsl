struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(776f, -1000f));

var<private> global1: array<f32, 29>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_2(u_input.c.x, vec2<u32>(~_wgslsmith_sub_u32(131978u, u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, 1u)));
    global1 = array<f32, 29>();
    let var_1 = !(!any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true))));
    let var_2 = -1300f;
    global0 = Struct_1(vec2<f32>(global0.a.x, 1532f));
    return 29665i;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec3<i32>) -> u32 {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global0.a)), global0.a)) * _wgslsmith_f_op_vec2_f32(-global0.a)));
    global0 = Struct_1(global0.a);
    var var_0 = Struct_2(func_3(Struct_1(_wgslsmith_f_op_vec2_f32(floor(global0.a)))) & ((i32(-1i) * -arg_0.x) ^ func_3(Struct_1(global0.a))), ~(abs(u_input.a) << (_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(17250u, 57140u), vec2<u32>(68844u, 25729u)), arg_1.b) % vec2<u32>(32u))));
    let var_1 = Struct_1(global0.a);
    let var_2 = var_0.b.x <= 72529u;
    return _wgslsmith_clamp_u32(60791u, countOneBits(1u), _wgslsmith_div_u32(~var_0.b.x, ~(~(u_input.a.x >> (u_input.a.x % 32u)))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> i32 {
    let var_0 = Struct_2(~_wgslsmith_mod_i32(-_wgslsmith_div_i32(49918i, u_input.b), arg_2), vec2<u32>(~func_2(vec4<i32>(-1i, arg_2, 2147483647i, u_input.d.x), arg_0, firstTrailingBit(vec3<i32>(16921i, arg_2, arg_0.a))), ~reverseBits(_wgslsmith_mod_u32(0u, u_input.a.x))));
    let var_1 = arg_1;
    let var_2 = (vec3<u32>(~_wgslsmith_sub_u32(77559u, u_input.a.x), arg_0.b.x, arg_0.b.x) >> (reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 62211u, 30366u), ~vec3<u32>(0u, arg_0.b.x, arg_0.b.x), select(vec3<u32>(var_0.b.x, arg_0.b.x, 63828u), vec3<u32>(0u, 1u, var_0.b.x), vec3<bool>(true, true, true)))) % vec3<u32>(32u))) << (vec3<u32>((var_0.b.x << (4294967295u % 32u)) & _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.a.x, 15973u), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.x, 1u, 1966u), vec3<u32>(4294967295u, u_input.a.x, 0u))), 77763u, u_input.a.x) % vec3<u32>(32u));
    var var_3 = global1[_wgslsmith_index_u32(arg_0.b.x, 29u)];
    var var_4 = ~vec3<u32>(~45163u, ~var_2.x, func_2(vec4<i32>(countOneBits(1i), -2147483647i, 1i, 44434i), arg_0, abs(vec3<i32>(arg_0.a, 37070i, u_input.b))));
    return ~2383i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 29u)])))) * _wgslsmith_f_op_f32(1000f + global0.a.x)), _wgslsmith_sub_i32(u_input.d.x, func_1(Struct_2(-17453i, u_input.a), Struct_1(vec2<f32>(global0.a.x, global1[_wgslsmith_index_u32(1u, 29u)])), abs(1i)) & abs(select(u_input.b, u_input.c.x, true))));
}

