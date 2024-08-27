struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22> = array<bool, 22>(false, true, false, false, false, true, false, true, false, false, false, true, true, true, false, true, false, false, true, true, true, false);

var<private> global1: Struct_1 = Struct_1(214f, -493f, vec3<u32>(23836u, 1u, 0u), -6028i);

var<private> global2: Struct_2 = Struct_2(2369f, -1148f, Struct_1(510f, 592f, vec3<u32>(0u, 3096u, 1856u), 1i), vec3<i32>(-1i, 26336i, 1i));

var<private> global3: Struct_1 = Struct_1(-823f, -344f, vec3<u32>(0u, 0u, 0u), 68567i);

var<private> global4: vec3<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(global4.x * global3.a);
    return -1i;
}

fn func_2() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1838f, _wgslsmith_f_op_f32(f32(-1f) * -1230f)))));
    var var_1 = true;
    global4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1018f, _wgslsmith_f_op_f32(-global3.b), -1065f));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(global2.a * global2.a), global3.a, Struct_1(global1.b, -574f, _wgslsmith_add_vec3_u32(global2.c.c, _wgslsmith_sub_vec3_u32(vec3<u32>(123678u, u_input.b, global1.c.x), vec3<u32>(global2.c.c.x, global3.c.x, 1u))) << (global2.c.c % vec3<u32>(32u)), global2.c.d & _wgslsmith_mult_i32(1i << (u_input.b % 32u), func_3())), vec3<i32>(~1i, 0i, global1.d));
    var var_3 = _wgslsmith_mult_vec3_u32(~(~_wgslsmith_add_vec3_u32(global3.c, select(global1.c, vec3<u32>(4294967295u, global3.c.x, 15988u), vec3<bool>(global0[_wgslsmith_index_u32(6037u, 22u)], true, true)))), global2.c.c);
    return var_2.d;
}

fn func_1() -> Struct_1 {
    global2 = Struct_2(global4.x, _wgslsmith_f_op_f32(min(-1271f, _wgslsmith_f_op_f32(-global2.c.b))), Struct_1(_wgslsmith_f_op_f32(ceil(1342f)), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(global2.b + 1014f)), _wgslsmith_mult_vec3_u32(~vec3<u32>(6976u, 1u, global3.c.x), global1.c), global1.d), func_2());
    let var_0 = global0[_wgslsmith_index_u32(u_input.b, 22u)] | select(true, true, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global3.c.x, 4294967295u), global1.c), ~min(global3.c.x, 1u)), 22u)]);
    return global2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.a;
    let var_1 = i32(-1i) * -min(min(-42283i, u_input.c.x), 1i);
    let var_2 = Struct_2(446f, _wgslsmith_f_op_f32(f32(-1f) * -1679f), func_1(), select(u_input.a.yzy, u_input.a.wwy, !(!all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 22u)], global0[_wgslsmith_index_u32(1u, 22u)])))));
    global0 = array<bool, 22>();
    var var_3 = any(vec2<bool>(any(vec2<bool>(true, global0[_wgslsmith_index_u32(reverseBits(4294967295u), 22u)])), all(!(!vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(global3.c.x, 22u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(vec4<i32>(~(-3739i), var_1, u_input.c.x, (-1i >> (global2.c.c.x % 32u)) << (max(4294967295u, global3.c.x) % 32u)), var_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-430f, -1028f, global2.a)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(645f, -1124f, -107f) * _wgslsmith_div_vec3_f32(vec3<f32>(global3.b, global3.a, var_2.c.a), vec3<f32>(global2.a, -1212f, -421f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(797f, -553f, -1063f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, global3.b, var_2.a))))), firstTrailingBit(_wgslsmith_clamp_i32(2147483647i, var_2.d.x, 0i)), 41375u);
}

