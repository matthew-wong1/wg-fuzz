struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5, arg_2: f32, arg_3: vec4<bool>) -> vec2<f32> {
    let var_0 = Struct_3(-7030i, ~select(~(~vec3<u32>(0u, u_input.a.x, 20517u)), vec3<u32>(global0.x, u_input.a.x ^ 68364u, global0.x), global0.x >= u_input.a.x), Struct_2(all(vec2<bool>(any(arg_3.xx), any(arg_3.yw)))));
    let var_1 = _wgslsmith_f_op_f32(133f + arg_2);
    let var_2 = arg_3.wwz;
    let var_3 = arg_1;
    global0 = ~(vec2<u32>(_wgslsmith_add_u32(10982u, 0u), 4294967295u) & vec2<u32>(0u, firstTrailingBit(0u))) << (vec2<u32>(~select(1u, abs(u_input.a.x), true), abs(~45602u)) % vec2<u32>(32u));
    return _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(674f)), arg_2)), -1616f)));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1146f), _wgslsmith_f_op_f32(max(2343f, -449f)), -343f, _wgslsmith_f_op_f32(floor(-971f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1032f, -187f, -469f, -1751f), vec4<f32>(464f, -1000f, -2104f, 1000f)))))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-891f)), var_0.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.yx)))) + _wgslsmith_f_op_vec2_f32(select(var_0.wx, _wgslsmith_f_op_vec2_f32(func_3(Struct_1(true), Struct_5(Struct_2(true), Struct_1(true), var_0.x), _wgslsmith_f_op_f32(exp2(var_0.x)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true))), true))), Struct_3(reverseBits(3544i), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, u_input.a.x, u_input.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, global0.x, 57055u), vec3<u32>(global0.x, 95568u, 0u)), vec3<u32>(u_input.a.x, 4294967295u, 1u)), Struct_2(true)), Struct_1((19464i != _wgslsmith_dot_vec2_i32(vec2<i32>(-2053i, -1i), vec2<i32>(-30455i, -1i))) & any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true))), Struct_1(true));
    var var_2 = vec2<u32>(~global0.x, min(max(~4294967295u, ~1u), countOneBits(~var_1.b.b.x ^ var_1.b.b.x)));
    var var_3 = abs(_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(var_1.b.a ^ -11106i, ~1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.a, -4004i, var_1.b.a), vec3<i32>(-36277i, 15860i, var_1.b.a)))), -(vec3<i32>(var_1.b.a, var_1.b.a, -2147483647i) | vec3<i32>(1i, 1i, 1i)), vec3<i32>(var_1.b.a, ~firstTrailingBit(var_1.b.a), var_1.b.a)));
    let var_4 = ~vec4<u32>(42942u, _wgslsmith_add_u32(91700u << (0u % 32u), ~4294967295u), 621u, 27261u);
    return var_1.b.c;
}

fn func_1(arg_0: u32) -> vec2<i32> {
    global0 = _wgslsmith_div_vec2_u32(u_input.a, u_input.a);
    let var_0 = Struct_4(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-501f + -1000f)), -588f), 2331f), Struct_3(firstTrailingBit(-1i), vec3<u32>(_wgslsmith_clamp_u32(4294967295u, arg_0 ^ arg_0, 73463u), _wgslsmith_mod_u32(1u, global0.x) >> (arg_0 % 32u), global0.x), func_2()), Struct_1(true), Struct_1(true));
    global0 = ~var_0.b.b.yy;
    return -(~(-(select(vec2<i32>(811i, 5651i), vec2<i32>(-9058i, 2147483647i), true) << (~var_0.b.b.yx % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    let var_0 = Struct_1(true);
    var var_1 = Struct_2(false);
    let var_2 = abs(vec3<i32>(-_wgslsmith_div_i32(~1i, 1i), select(_wgslsmith_mod_i32(-1i, 1i), _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 0i), vec2<i32>(-2147483647i, -1i)), any(vec2<bool>(var_0.a, var_0.a))), _wgslsmith_dot_vec2_i32(func_1(u_input.a.x), vec2<i32>(1i, 1i))));
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(326f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(151f - -694f)))), Struct_3(min(var_2.x, ~var_2.x ^ _wgslsmith_dot_vec3_i32(var_2, var_2)), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(55958u, 4294967295u, 0u)), vec3<u32>(global0.x, global0.x ^ 42535u, 4294967295u)), Struct_2(var_1.a)), var_0, Struct_1(var_1.a));
    var var_4 = true;
    var var_5 = !(!var_3.b.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_div_u32(firstLeadingBit(var_3.b.b.x), _wgslsmith_add_u32(global0.x & u_input.a.x, u_input.a.x)), u_input.a.x), var_2);
}

