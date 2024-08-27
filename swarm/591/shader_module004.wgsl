struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<bool>, 6>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    let var_0 = 1u;
    global1 = array<vec4<bool>, 6>();
    global0 = Struct_2(abs(vec4<u32>(48095u, u_input.a.x & global0.a.x, ~4294967295u, ~u_input.c) ^ global0.a), vec2<f32>(580f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) * 496f)))));
    var var_1 = global0.a.x;
    let var_2 = Struct_1(true);
    return _wgslsmith_f_op_f32(-global0.b.x);
}

fn func_2(arg_0: i32, arg_1: bool) -> u32 {
    var var_0 = Struct_2(global0.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), 1885f));
    var_0 = Struct_2(~(~firstLeadingBit(_wgslsmith_mult_vec4_u32(global0.a, vec4<u32>(var_0.a.x, var_0.a.x, u_input.d, 1u)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(1568f, var_0.b.x), vec2<f32>(_wgslsmith_f_op_f32(min(321f, 398f)), _wgslsmith_f_op_f32(f32(-1f) * -996f))), _wgslsmith_f_op_vec2_f32(sign(var_0.b)))));
    global0 = Struct_2(abs(_wgslsmith_mult_vec4_u32(select(vec4<u32>(1514u, 38492u, 1u, 36588u) >> (vec4<u32>(6663u, u_input.a.x, var_0.a.x, u_input.a.x) % vec4<u32>(32u)), ~var_0.a, arg_1), var_0.a)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b)))));
    global0 = Struct_2(global0.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(global0.b.x * -1182f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b - var_0.b) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1045f, 212f) - var_0.b))))));
    let var_1 = Struct_1(true);
    return 1u;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = true;
    let var_1 = arg_3;
    let var_2 = vec3<i32>(_wgslsmith_add_i32(-11325i, _wgslsmith_mod_i32(-u_input.b, abs(u_input.b)) | _wgslsmith_add_i32(_wgslsmith_sub_i32(2147483647i, u_input.b), ~u_input.b)), 67196i, -(~select(~u_input.b, -1i, false)));
    global1 = array<vec4<bool>, 6>();
    global0 = arg_3;
    return select(vec3<bool>(false, !(true != !var_0), arg_1.a), !(!vec3<bool>(true, true, all(vec3<bool>(arg_1.a, false, arg_1.a)))), select(vec3<bool>(true, var_0, var_0), select(!(!vec3<bool>(false, var_0, var_0)), select(!vec3<bool>(arg_1.a, var_0, false), vec3<bool>(false, var_0, false), true && var_0), false), vec3<bool>(all(vec2<bool>(arg_1.a, false)), ~u_input.b < -28604i, (-18256i ^ u_input.b) <= 28408i)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = Struct_2(firstLeadingBit(~reverseBits(vec4<u32>(61490u, 4294967295u, 0u, 4294967295u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1757f, 1245f) * global0.b));
    var var_0 = _wgslsmith_sub_i32(-22884i, u_input.b);
    var_0 = u_input.b;
    var var_1 = select(select(vec3<bool>(!arg_0, any(vec3<bool>(true, arg_0, arg_0)) || (arg_0 && true), all(vec2<bool>(true, false))), func_4(global0.a ^ ~global0.a, Struct_1(arg_0), func_2(-32405i, !arg_0), Struct_2(global0.a, vec2<f32>(-1000f, 1954f))), vec3<bool>(false, arg_0, true || any(vec3<bool>(arg_0, true, arg_0)))), select(select(func_4(global0.a | vec4<u32>(global0.a.x, 4253u, 5525u, u_input.c), Struct_1(arg_0), _wgslsmith_div_u32(global0.a.x, 4294967295u), Struct_2(vec4<u32>(11131u, global0.a.x, 55472u, 45744u), global0.b)), vec3<bool>(!arg_0, any(vec2<bool>(arg_0, arg_0)), true), !arg_0), !(!select(vec3<bool>(true, false, arg_0), vec3<bool>(true, false, true), arg_0)), vec3<bool>(any(vec3<bool>(arg_0, arg_0, true)), !all(vec2<bool>(false, false)), select(arg_0 | arg_0, arg_0, true))), vec3<bool>(global0.a.x < 38696u, any(select(vec2<bool>(false, true), vec2<bool>(arg_0, true), vec2<bool>(true, arg_0))) | true, arg_0));
    var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(29640i, u_input.b)), vec2<i32>(u_input.b, u_input.b)))), vec2<i32>(-u_input.b, max(~(u_input.b & u_input.b), firstTrailingBit(~u_input.b))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global0.b.x))))) == global0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true);
    global1 = array<vec4<bool>, 6>();
    let var_1 = !var_0.a;
    global1 = array<vec4<bool>, 6>();
    global1 = array<vec4<bool>, 6>();
    var var_2 = var_0;
    let var_3 = vec3<bool>(true, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(global0.b.x)));
}

