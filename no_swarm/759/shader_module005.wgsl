struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: array<bool, 28>;

var<private> global3: i32;

var<private> global4: vec4<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: vec3<u32>) -> vec2<i32> {
    return _wgslsmith_mod_vec2_i32(~_wgslsmith_clamp_vec2_i32(u_input.a, global0.b, ~(-u_input.a)), vec2<i32>(~_wgslsmith_mult_i32(i32(-1i) * -1i, u_input.a.x), ~2147483647i));
}

fn func_2() -> i32 {
    global2 = array<bool, 28>();
    global0 = Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~(-vec2<i32>(-1i, -68147i)), func_3(Struct_2(global4.x), false, Struct_2(global4.x), vec3<u32>(0u, global4.x, global4.x)) & vec2<i32>(-3737i, -16136i)), vec2<i32>(-global1.b.x | u_input.a.x, 1i)), ~global1.b, _wgslsmith_f_op_vec2_f32(global1.c - global1.c));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.x, global1.c.x)), vec2<f32>(_wgslsmith_f_op_f32(global0.c.x - _wgslsmith_f_op_f32(-global1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -470f) * _wgslsmith_f_op_f32(abs(global1.c.x))))));
    global0 = Struct_1(_wgslsmith_dot_vec3_i32(~(vec3<i32>(global0.b.x, -96423i, global0.a) ^ (vec3<i32>(global1.b.x, global0.a, 0i) >> (vec3<u32>(28498u, 17503u, 4294967295u) % vec3<u32>(32u)))), min(vec3<i32>(-2897i, ~1368i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -27488i, 9338i), vec3<i32>(global1.b.x, global1.a, global0.a))), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, global1.a, -3459i), vec3<i32>(global0.b.x, 2147483647i, -24466i)) << (global4.yxy % vec3<u32>(32u)))), firstTrailingBit(min(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(global0.a, 6573i)), vec2<i32>(-20957i, -1i), _wgslsmith_sub_vec2_i32(global1.b, global1.b)), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.b.x, 2147483647i), global1.b), vec2<i32>(0i, u_input.a.x)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1857f, _wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global0.c * vec2<f32>(-520f, -146f)), vec2<f32>(global1.c.x, global1.c.x))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(global1.c.x, 524f), var_0)))))));
    let var_1 = Struct_1(u_input.a.x, reverseBits(min(u_input.a, -global1.b) | _wgslsmith_add_vec2_i32(vec2<i32>(global0.b.x, -10551i), _wgslsmith_mult_vec2_i32(global1.b, vec2<i32>(-20007i, -1i)))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_div_f32(463f, global1.c.x))))));
    return u_input.a.x;
}

fn func_1(arg_0: bool, arg_1: u32) -> i32 {
    var var_0 = min(vec4<i32>(firstTrailingBit(global1.a), global1.a, ~1i, _wgslsmith_div_i32(~2147483647i, min(global1.b.x, _wgslsmith_div_i32(2147483647i, 44838i)))), select(vec4<i32>(global1.b.x, u_input.a.x, func_2(), 2147483647i), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(global0.a, -2147483647i, global1.a, global0.b.x)), vec4<i32>(-2147483647i, global1.b.x & 37692i, func_3(Struct_2(global4.x), global2[_wgslsmith_index_u32(arg_1, 28u)], Struct_2(0u), global4.ywx).x, u_input.a.x)), !(!(!vec4<bool>(arg_0, arg_0, true, false)))));
    global4 = ~firstTrailingBit(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, arg_1, arg_1) & vec4<u32>(1u, 1u, 4294967295u, 37124u), vec4<u32>(arg_1, global4.x, 4294967295u, 77044u) & vec4<u32>(15083u, 4294967295u, global4.x, arg_1)), min(vec4<u32>(19236u, arg_1, 1u, 1u), vec4<u32>(arg_1, 1u, 0u, arg_1)) ^ (vec4<u32>(arg_1, 0u, global4.x, global4.x) & vec4<u32>(1u, 17173u, global4.x, 50486u))));
    var_0 = ~vec4<i32>(_wgslsmith_add_i32(global1.a, global1.b.x), 0i, max(~(-2147483647i), abs(2147483647i)), 2147483647i);
    let var_1 = 0i;
    let var_2 = Struct_2(arg_1);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 28>();
    global2 = array<bool, 28>();
    var var_0 = 1u;
    var var_1 = 0u;
    global0 = Struct_1(-(2147483647i ^ max(max(u_input.a.x, -49733i), _wgslsmith_add_i32(global0.b.x, -2147483647i))), countOneBits(u_input.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.c.x + _wgslsmith_f_op_f32(global0.c.x - -616f)), -1399f) * global1.c));
    let var_2 = abs(0u);
    var var_3 = ~(~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(var_2, global4.x, global4.x, var_2)) ^ ~vec4<u32>(var_2, 1u, var_2, var_2), vec4<u32>(21526u, 19007u, select(15142u, global4.x, true), var_2)));
    var var_4 = -(firstTrailingBit(global1.b.x) & -9041i);
    let var_5 = Struct_2(var_2 >> (28799u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, _wgslsmith_div_f32(1084f, _wgslsmith_f_op_f32(423f + global1.c.x)), 267f) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.c.x))), _wgslsmith_f_op_f32(1131f + global0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)))), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(2147483647i, global0.b.x), -abs(2147483647i)), global0.a, -func_1(206f != global0.c.x, _wgslsmith_div_u32(4294967295u, var_2))));
}

