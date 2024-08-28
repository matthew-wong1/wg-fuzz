struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(1u, 1u, 48766u), true, 859f, 21126i);

var<private> global2: array<Struct_2, 6>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(578f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1.c, global1.c, true)), _wgslsmith_div_f32(global1.c, global1.c)), !(global1.c >= global1.c)))), global1.b));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(~(-2147483647i), select(global1.d, 2147483647i, true)), -2147483647i), -vec2<i32>(1i, 1i)), min(i32(-1i) * -1i, abs(_wgslsmith_clamp_i32(28611i, 1i, global1.d))));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)), _wgslsmith_f_op_f32(trunc(-1411f))))));
    var var_3 = global1.b;
    let var_4 = -26352i;
    return _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(min(vec3<u32>(global1.a.x, 4294967295u, 15491u) ^ vec3<u32>(1u, 0u, global1.a.x), global1.a), ~_wgslsmith_add_vec3_u32(vec3<u32>(73224u, arg_0, global1.a.x), vec3<u32>(17472u, 1u, 1u))), vec3<u32>(global1.a.x << (1u % 32u), global1.a.x, global1.a.x >> (4294967295u % 32u))) | 33713u;
}

fn func_2() -> u32 {
    let var_0 = -(~abs(abs(~u_input.a.yx)));
    let var_1 = -2708i;
    let var_2 = Struct_2(Struct_1(global1.a, global1.b, _wgslsmith_div_f32(710f, _wgslsmith_f_op_f32(abs(-1355f))), ~(~(~var_0.x))), func_3(firstTrailingBit(global1.a.x)));
    let var_3 = !(!vec2<bool>(all(select(vec3<bool>(global1.b, false, false), vec3<bool>(true, global1.b, false), global1.b)), var_2.a.b));
    let var_4 = var_2.a;
    return reverseBits(~global1.a.x);
}

fn func_1() -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(17399u, countOneBits(abs(func_2()))), 31u)];
    global1 = Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 0u, var_0.a.a.x), vec3<u32>(var_0.a.a.x, global1.a.x, global1.a.x), _wgslsmith_sub_vec3_u32(global1.a, var_0.a.a)) ^ vec3<u32>(19678u, var_0.b, _wgslsmith_add_u32(global1.a.x, 0u)), select(var_0.a.a, ~firstLeadingBit(vec3<u32>(4294967295u, 0u, var_0.b)), vec3<bool>(true, false, all(vec4<bool>(false, var_0.a.b, global1.b, var_0.a.b))))), true, _wgslsmith_f_op_f32(f32(-1f) * -1494f), global1.d);
    let var_1 = vec3<u32>(~1u, ~reverseBits(~var_0.b), 0u);
    global1 = var_0.a;
    var var_2 = any(vec3<bool>(all(!select(vec4<bool>(true, false, true, true), vec4<bool>(global1.b, false, var_0.a.b, global1.b), false)), true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a.c * -723f))) > 268f));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    let var_0 = -global1.d;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(722f, global1.c, 1970f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1284f, -1405f, 1191f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c, global1.c, global1.c) - vec3<f32>(global1.c, global1.c, global1.c))))), vec3<f32>(func_1().c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) - -484f) * 117f), -1000f));
    global0 = array<Struct_2, 31>();
    var var_2 = reverseBits(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global1.a << (global1.a % vec3<u32>(32u)), ~global1.a), _wgslsmith_mult_u32(15890u | global1.a.x, ~35466u)), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 8437u, 35028u), global1.a), ~vec3<u32>(4294967295u, 44988u, 62902u)), _wgslsmith_clamp_u32(countOneBits(global1.a.x), _wgslsmith_mod_u32(global1.a.x, 21406u), global1.a.x) << (~_wgslsmith_sub_u32(0u, global1.a.x) % 32u), ~(~global1.a.x)));
    global1 = func_1();
    var_2 = vec4<u32>(global1.a.x, global1.a.x, 0u, 3575u);
    var var_3 = global0[_wgslsmith_index_u32(1u, 31u)];
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.c)))) - global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~func_1().a.x), var_2.yw, firstTrailingBit(~vec4<i32>(var_3.a.d, 2147483647i, u_input.a.x, u_input.a.x)));
}

