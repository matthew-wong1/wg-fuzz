struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global2: Struct_5 = Struct_5(Struct_3(vec2<bool>(false, false), -10162i));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: f32) -> vec4<i32> {
    let var_0 = Struct_5(Struct_3(select(select(global1[_wgslsmith_index_u32(max(4294967295u, 29705u), 32u)], vec2<bool>(true, false), any(vec4<bool>(false, false, true, arg_1))), vec2<bool>(all(vec3<bool>(true, arg_0.a.x, true)), true), _wgslsmith_f_op_f32(915f - arg_2) >= _wgslsmith_f_op_f32(-global0.b.c)), -countOneBits(~global2.a.b)));
    let var_1 = u_input.a.x;
    global2 = var_0;
    var var_2 = Struct_5(Struct_3(!(!var_0.a.a), min(_wgslsmith_sub_i32(var_0.a.b, ~(-1i)), ~1i)));
    var_2 = Struct_5(Struct_3(select(!(!var_2.a.a), var_0.a.a, select(any(global1[_wgslsmith_index_u32(var_1, 32u)]), any(vec3<bool>(var_0.a.a.x, arg_0.a.x, var_2.a.a.x)), global0.a.x < var_0.a.b)), _wgslsmith_sub_i32(2147483647i, _wgslsmith_div_i32(-2147483647i, global2.a.b))));
    return vec4<i32>(~(i32(-1i) * -2147483647i), global0.a.x, max(~(-_wgslsmith_div_i32(-1i, var_0.a.b)), global2.a.b), global0.a.x);
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_4) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(arg_2.b.a));
    let var_1 = select(!vec3<bool>(global2.a.a.x, global2.a.a.x, arg_1), vec3<bool>(arg_1, !global2.a.a.x, global2.a.a.x), ~global0.c.x == (4294967295u >> (u_input.a.x % 32u)));
    let var_2 = func_3(Struct_3(select(var_1.yx, vec2<bool>(arg_1, false), vec2<bool>(arg_1, true)), -1i), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.c * -1000f) + _wgslsmith_f_op_f32(2306f + var_0.x)))));
    var var_3 = arg_2.c;
    let var_4 = global2.a;
    return !all(!global2.a.a);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<bool>) -> Struct_2 {
    global1 = array<vec2<bool>, 32>();
    global1 = array<vec2<bool>, 32>();
    global1 = array<vec2<bool>, 32>();
    let var_0 = Struct_4(_wgslsmith_sub_vec3_i32(-vec3<i32>(0i, u_input.b, -1i), vec3<i32>(-2147483647i, select(min(44671i, -1i), global0.a.x, false), ~31430i)), global0.b, countOneBits(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, global0.c.x)), u_input.c, 75218u, u_input.c | 39407u)) | ~abs(vec4<u32>(u_input.a.x, 1u, 1u, 1u)));
    var var_1 = _wgslsmith_clamp_i32(-_wgslsmith_mult_i32(u_input.b, -var_0.b.b), 1i, -u_input.b);
    return Struct_2(var_0.b, Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.a.x * -267f), _wgslsmith_div_f32(-854f, var_0.b.c)), vec2<f32>(_wgslsmith_f_op_f32(round(-256f)), _wgslsmith_f_op_f32(-global0.b.e)))), ~(-1i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.a.x * var_0.b.c) + _wgslsmith_f_op_f32(-var_0.b.c)))), u_input.b, global0.b.e), global0.b, 1234f);
}

fn func_1() -> Struct_5 {
    global1 = array<vec2<bool>, 32>();
    let var_0 = !global2.a.a.x;
    var var_1 = func_4(vec4<i32>(-7359i, 1i, u_input.b, -(-32891i ^ _wgslsmith_sub_i32(global0.a.x, 0i))), vec2<bool>(any(vec3<bool>(false, func_2(vec4<f32>(464f, 906f, 727f, 357f), var_0, Struct_4(vec3<i32>(17956i, -1i, 6655i), global0.b, vec4<u32>(global0.c.x, 4294967295u, 19867u, 25326u))), true)), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-461f, global0.b.e, 243f, 715f) - vec4<f32>(global0.b.e, global0.b.c, 1273f, 1253f))), var_0, Struct_4(global0.a, Struct_1(global0.b.a, 1i, global0.b.a.x, -70419i, global0.b.e), abs(vec4<u32>(0u, u_input.a.x, global0.c.x, u_input.c))))));
    global0 = Struct_4(vec3<i32>(i32(-1i) * -52992i, u_input.b, u_input.b) | (~vec3<i32>(global0.b.b, 1i, 0i) << (global0.c.ywy % vec3<u32>(32u))), global0.b, ~global0.c);
    global0 = Struct_4(_wgslsmith_mult_vec3_i32(firstLeadingBit(firstTrailingBit(~global0.a)), max(min(global0.a, -global0.a), firstLeadingBit(global0.a))), global0.b, ~(~global0.c));
    return Struct_5(global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.c, -370f, -128f, 367f) - vec4<f32>(global0.b.a.x, global0.b.c, global0.b.c, -1000f)), vec4<f32>(global0.b.a.x, -146f, -375f, 1873f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-828f, -366f, global0.b.a.x, 564f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1627f, -698f, -180f, 965f), vec4<f32>(-1282f, 407f, 360f, -105f), vec4<bool>(false, true, false, true))), false))))));
    global2 = func_1();
    global1 = array<vec2<bool>, 32>();
    var var_1 = _wgslsmith_mod_u32(firstTrailingBit(global0.c.x), ~(~u_input.a.x));
    var var_2 = vec4<f32>(-102f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.b.e)) + -1677f), _wgslsmith_f_op_f32(-257f * global0.b.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-843f, var_0.x) - _wgslsmith_f_op_f32(ceil(1000f))) - var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.b.c, -1000f))) + global0.b.a)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1102f), _wgslsmith_f_op_f32(select(global0.b.a.x, _wgslsmith_f_op_f32(163f - var_0.x), select(global2.a.a.x, global2.a.a.x, global2.a.a.x))))));
}

