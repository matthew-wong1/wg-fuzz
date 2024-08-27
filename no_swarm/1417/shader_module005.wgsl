struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(1u, 15977u, 1u, 57977u), vec4<u32>(1u, 40580u, 34074u, 0u), vec4<u32>(30394u, 0u, 1u, 1028u), vec4<u32>(2626u, 1u, 4294967295u, 8490u), vec4<u32>(23832u, 11272u, 0u, 12038u), vec4<u32>(67609u, 29596u, 45558u, 4294967295u), vec4<u32>(1u, 20107u, 0u, 29900u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> bool {
    let var_0 = arg_1;
    let var_1 = var_0;
    let var_2 = var_0;
    global0 = true;
    let var_3 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-559f, var_2.d, true))) + var_1.d) > arg_1.d);
    return true;
}

fn func_2(arg_0: f32) -> vec4<bool> {
    global0 = true;
    let var_0 = arg_0;
    var var_1 = select(vec2<bool>(true, true), vec2<bool>(!all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), false), !vec2<bool>(func_3(u_input.c >= 10950i, Struct_1(u_input.c, u_input.d.xxx, false, -297f, u_input.c), Struct_1(u_input.c, vec3<u32>(u_input.d.x, u_input.a.x, u_input.b), false, arg_0, 2147483647i), vec2<bool>(true, false)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))));
    var var_2 = Struct_1(u_input.e.x, max(vec3<u32>(66371u, _wgslsmith_mult_u32(u_input.a.x | u_input.a.x, u_input.d.x), u_input.a.x), u_input.a.xxx), var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0 * arg_0))) - var_0))), 0i);
    var var_3 = Struct_1(_wgslsmith_add_i32(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(15421i, -53138i), vec2<i32>(u_input.c, u_input.c)), u_input.c), vec3<u32>(var_2.b.x, var_2.b.x, ~(~var_2.b.x) >> (select(min(var_2.b.x, u_input.a.x), 1u, var_2.c) % 32u)), var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.d - _wgslsmith_f_op_f32(f32(-1f) * -403f)), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(step(429f, _wgslsmith_f_op_f32(-var_0)))))), ~2147483647i);
    return select(vec4<bool>(any(vec2<bool>(var_2.c, select(var_3.c, var_2.c, false))), func_3(func_3(var_1.x, Struct_1(-1i, vec3<u32>(0u, var_3.b.x, var_3.b.x), var_1.x, var_0, var_3.a), Struct_1(var_3.e, var_2.b, var_2.c, var_0, 8987i), !vec2<bool>(var_3.c, false)), Struct_1(var_2.a, u_input.d.zzw, var_2.c, _wgslsmith_f_op_f32(var_0 - var_3.d), select(var_3.a, u_input.e.x, true)), Struct_1(2147483647i, vec3<u32>(0u, var_2.b.x, u_input.a.x), !var_3.c, var_0, -2147483647i), select(select(vec2<bool>(var_3.c, var_1.x), vec2<bool>(false, false), vec2<bool>(false, var_3.c)), vec2<bool>(var_2.c, false), !var_1.x)), true, select(select(var_2.c, true, all(vec2<bool>(var_1.x, var_3.c))), func_3(any(vec3<bool>(var_3.c, true, var_2.c)), Struct_1(var_2.e, var_3.b, var_2.c, var_0, var_3.e), Struct_1(var_2.a, var_3.b, false, var_2.d, -2147483647i), vec2<bool>(var_3.c, var_1.x)), true)), select(select(!select(vec4<bool>(var_1.x, var_2.c, var_2.c, true), vec4<bool>(true, true, var_2.c, var_3.c), var_2.c), !(!vec4<bool>(var_3.c, true, var_2.c, var_2.c)), false), !(!vec4<bool>(true, false, var_1.x, var_2.c)), -2147483647i < ~var_3.a), var_1.x);
}

fn func_1() -> bool {
    let var_0 = u_input.e.x;
    global0 = true;
    global0 = all(!select(func_2(-555f), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), !all(vec4<bool>(true, false, true, false))));
    let var_1 = Struct_1(_wgslsmith_div_i32(u_input.e.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(max(vec3<i32>(1i, var_0, -11536i), vec3<i32>(2147483647i, var_0, var_0)), vec3<i32>(u_input.c, -1i, -58687i)), max(vec3<i32>(var_0, 0i, var_0), vec3<i32>(var_0, u_input.e.x, 17125i)) | vec3<i32>(var_0, u_input.c, var_0))), vec3<u32>(u_input.d.x, 23882u, u_input.d.x), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - -1077f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -227f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(255f - -1429f)))), ~reverseBits(_wgslsmith_sub_i32(u_input.c, i32(-1i) * -1i)));
    var var_2 = vec4<u32>(4294967295u, u_input.d.x, 0u, u_input.d.x) & global1[_wgslsmith_index_u32(~var_1.b.x, 7u)];
    return func_2(_wgslsmith_f_op_f32(var_1.d * 1784f)).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = ~select(u_input.a.x, 203u, any(vec2<bool>(true, true))) <= u_input.b;
    var_0 = false;
    let var_1 = vec3<bool>(false, !func_3(true, Struct_1(-31078i, abs(vec3<u32>(1u, 4294967295u, u_input.d.x)), false, -489f, -40577i), Struct_1(_wgslsmith_sub_i32(-40180i, -39360i), vec3<u32>(41238u, 5995u, 59109u), true, _wgslsmith_f_op_f32(round(-568f)), _wgslsmith_sub_i32(-2147483647i, 1i)), vec2<bool>(true, func_1())), false);
    let var_2 = abs(_wgslsmith_div_vec4_i32(vec4<i32>(firstTrailingBit(u_input.c), _wgslsmith_add_i32(-u_input.c, ~1i), u_input.e.x, -34656i), min(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 63591i, u_input.c, u_input.e.x), countOneBits(vec4<i32>(1i, -1i, u_input.e.x, u_input.c))), vec4<i32>(firstTrailingBit(-7567i), -u_input.c, u_input.c, u_input.c))));
    global0 = true || var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-419f * 1000f), 587f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-630f + -551f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 695f) + 638f))), 51932i, var_2.x);
}

