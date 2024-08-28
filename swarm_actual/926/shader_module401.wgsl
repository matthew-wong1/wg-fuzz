struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
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

var<private> global0: array<vec4<bool>, 1>;

var<private> global1: Struct_1;

var<private> global2: array<f32, 22>;

var<private> global3: vec2<u32> = vec2<u32>(0u, 0u);

var<private> global4: array<f32, 7>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec3<f32>) -> vec3<i32> {
    var var_0 = _wgslsmith_mod_u32(u_input.a, u_input.d << (~4294967295u % 32u));
    var var_1 = ~_wgslsmith_mult_vec3_u32(~select(~vec3<u32>(global3.x, global3.x, 42468u), vec3<u32>(0u, 462u, arg_2.a.a), true), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, global1.a), u_input.b.yyx) >> (max(global1.c, global1.c) % vec3<u32>(32u)), firstLeadingBit(arg_1)));
    global1 = arg_2.a;
    global1 = Struct_1(4294967295u, global1.d.x, min(global1.c, _wgslsmith_clamp_vec3_u32(~u_input.c.yxx, vec3<u32>(2126u, 17117u, global1.c.x) >> (abs(vec3<u32>(global3.x, 61246u, global3.x)) % vec3<u32>(32u)), arg_1)), global1.d);
    global2 = array<f32, 22>();
    return -_wgslsmith_sub_vec3_i32(-vec3<i32>(~global1.b, arg_2.a.b, i32(-1i) * -81141i), ~(vec3<i32>(-1i, 9293i, 1i) << (_wgslsmith_add_vec3_u32(global1.c, global1.c) % vec3<u32>(32u))));
}

fn func_2() -> Struct_2 {
    return Struct_2(Struct_1(~(~(u_input.c.x >> (1u % 32u))), global1.d.x, u_input.b.xyw, func_3(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], abs(vec3<u32>(u_input.a, global3.x, 70278u)) & ~u_input.b.zwz, Struct_2(Struct_1(global3.x, global1.b, vec3<u32>(1u, 64066u, 1u), global1.d), ~u_input.a, _wgslsmith_div_vec4_f32(vec4<f32>(-2106f, 918f, global4[_wgslsmith_index_u32(u_input.c.x, 7u)], global4[_wgslsmith_index_u32(6287u, 7u)]), vec4<f32>(327f, -417f, -716f, global2[_wgslsmith_index_u32(global3.x, 22u)])), true), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(23372u, 22u)], -1298f, -312f) + vec3<f32>(1610f, global2[_wgslsmith_index_u32(global1.c.x, 22u)], global2[_wgslsmith_index_u32(global1.c.x, 22u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(640f, -2694f, global4[_wgslsmith_index_u32(51761u, 7u)]) - vec3<f32>(global4[_wgslsmith_index_u32(global3.x, 7u)], -1916f, -955f)))))), countOneBits(26798u), vec4<f32>(_wgslsmith_f_op_f32(-1702f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1382f, global2[_wgslsmith_index_u32(global1.c.x, 22u)]))), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(~reverseBits(1u), 22u)], 593f)), global2[_wgslsmith_index_u32(~32541u, 22u)], 1732f), !(true & any(global0[_wgslsmith_index_u32(0u, 1u)])));
}

fn func_1() -> i32 {
    var var_0 = abs(~firstLeadingBit(global3.x));
    var var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, global1.d.x, global1.b), vec4<i32>(-1i, global1.b, 29972i, -2147483647i)) << (vec4<u32>(global3.x, 20498u, ~global3.x, _wgslsmith_mod_u32(20944u, global3.x)) % vec4<u32>(32u)), -min(vec4<i32>(2147483647i, global1.d.x, -4630i, global1.d.x) | vec4<i32>(-2147483647i, -14202i, global1.b, -73543i), -vec4<i32>(global1.b, 2147483647i, 33015i, -1i))), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -abs(vec4<i32>(global1.b, -1i, 2147483647i, global1.d.x)), -vec4<i32>(29389i, global1.d.x, global1.d.x, 21227i) << (_wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, global3.x, 0u, global3.x)) % vec4<u32>(32u))));
    var var_2 = func_2();
    var var_3 = func_2().a;
    var var_4 = Struct_3(Struct_1(46004u | ~(~u_input.c.x), reverseBits(-1i), var_3.c, select(var_2.a.d, _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(var_1.yzy, vec3<i32>(var_3.b, -2147483647i, -1i)), countOneBits(vec3<i32>(2147483647i, 9690i, global1.d.x))), true)));
    return -15072i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    var var_1 = Struct_1(608u, global1.b, reverseBits(~global1.c), vec3<i32>(global1.b, -1i, i32(-1i) * -1i));
    var var_2 = 13374i;
    global3 = vec2<u32>(~_wgslsmith_mod_u32(min(global3.x, abs(global3.x)), _wgslsmith_sub_u32(max(var_1.a, var_1.c.x), ~var_1.c.x)), 0u);
    var var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d.x, -firstTrailingBit(var_1.b)), vec2<i32>(-1541i, _wgslsmith_sub_i32(func_1(), _wgslsmith_mult_i32(-10386i, global1.d.x)))) >> (global3.x % 32u);
    var_0 = min(1i, global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(23983u, ~_wgslsmith_sub_u32(global3.x, ~global1.c.x)), 22u)]);
}

