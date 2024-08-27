struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

var<private> global1: array<u32, 26> = array<u32, 26>(1u, 36246u, 1u, 1u, 50578u, 0u, 1u, 0u, 3418u, 7347u, 4294967295u, 32629u, 1u, 31421u, 4294967295u, 75228u, 20858u, 21197u, 34910u, 22139u, 1u, 1u, 1u, 21606u, 4294967295u, 1u);

var<private> global2: array<Struct_2, 9>;

var<private> global3: vec2<i32> = vec2<i32>(65860i, -49684i);

var<private> global4: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    global4 = arg_0;
    var var_0 = select(true, ((~arg_2.b | u_input.b) >> (~abs(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15130u, 26u)], 18u)]) % 32u)) > (i32(-1i) * -min(47974i, -25045i)), false);
    var var_1 = all(vec3<bool>(178f <= _wgslsmith_f_op_f32(-arg_0.d.x), arg_0.b.x, global4.b.x));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.a, 18u)], min(~(u_input.c >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 26u)], 26u)] % 32u)), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 0u), 26u)], 1u))) >> (u_input.c % 32u), 9u)];
    let var_3 = u_input.a;
    return ~(~(u_input.a & _wgslsmith_sub_u32(35549u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.a, u_input.c), vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 18u)], global0[_wgslsmith_index_u32(var_3, 18u)], 4294967295u, u_input.c)), 26u)])));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(i32(-1i) * -global4.c.x, vec3<bool>(false, false, true), -_wgslsmith_add_vec4_i32(vec4<i32>(abs(u_input.b), -1i, -1i, global3.x), _wgslsmith_sub_vec4_i32(vec4<i32>(global4.a, 2147483647i, u_input.b, -2147483647i), vec4<i32>(global3.x, 0i, -54268i, u_input.b)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12025u, 18u)], 18u)], 18u)], 59764u, global0[_wgslsmith_index_u32(4294967295u, 18u)]), vec4<u32>(31140u, 87399u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 26u)], 18u)])) % vec4<u32>(32u))), _wgslsmith_div_vec3_f32(global4.d, global4.d), ~(-1i));
    let var_1 = select(func_3(var_0, Struct_2(firstLeadingBit(var_0.c.xz), u_input.b >> ((13294u >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(88817u, 26u)], 26u)] % 32u)) % 32u), var_0), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(max(global1[_wgslsmith_index_u32(~4294967295u, 26u)], ~54021u), ~(~u_input.a), max(_wgslsmith_sub_u32(19412u, global1[_wgslsmith_index_u32(u_input.a, 26u)]), 4294967295u)), 9u)]), global0[_wgslsmith_index_u32(1u, 18u)], !global4.b.x);
    var var_2 = 1i;
    global3 = var_0.c.wz;
    global1 = array<u32, 26>();
    return Struct_1(global3.x | _wgslsmith_dot_vec3_i32(abs(global4.c.yxy), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, var_0.c.x), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, var_0.c.x, global4.c.x), vec3<i32>(18130i, 2147483647i, -32064i)))), vec3<bool>(any(!select(vec4<bool>(global4.b.x, var_0.b.x, global4.b.x, false), vec4<bool>(var_0.b.x, var_0.b.x, global4.b.x, false), false)), ~u_input.c <= var_1, global4.b.x), global4.c, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_0.d * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.d.x, 890f, var_0.d.x)), _wgslsmith_f_op_vec3_f32(-var_0.d), !var_0.b.x))), _wgslsmith_f_op_vec3_f32(var_0.d * _wgslsmith_div_vec3_f32(var_0.d, _wgslsmith_f_op_vec3_f32(select(global4.d, global4.d, var_0.b.x)))))), global4.c.x);
}

fn func_1() -> vec2<i32> {
    global4 = func_2();
    var var_0 = -117f;
    let var_1 = max(u_input.b, _wgslsmith_mod_i32(global4.e, -func_2().e));
    global4 = Struct_1(1i, select(!global4.b, vec3<bool>(global4.b.x, true, all(!global4.b.xy)), select(global4.b, vec3<bool>(true, false, true), global4.b.x)), vec4<i32>(0i << (~(~u_input.c) % 32u), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 17093i, -2147483647i, u_input.b), vec4<i32>(-26556i, global3.x, 2147483647i, u_input.b) ^ vec4<i32>(-2147483647i, 2147483647i, global3.x, -13545i)), var_1 | firstTrailingBit(-1i), 9639i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.d.x) * _wgslsmith_f_op_f32(min(-1356f, 495f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.d.x)), -1198f)), u_input.b);
    return global4.c.ww;
}

fn func_4(arg_0: vec2<i32>) -> vec3<bool> {
    global2 = array<Struct_2, 9>();
    let var_0 = global2[_wgslsmith_index_u32(~1u, 9u)];
    global3 = vec2<i32>(-1i, u_input.b & (global4.c.x & global4.a));
    let var_1 = vec2<f32>(-3218f, var_0.c.d.x);
    return vec3<bool>(false, var_0.c.b.x, !any(var_0.c.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(func_4(_wgslsmith_mult_vec2_i32(func_1(), ~(-vec2<i32>(-1i, u_input.b)))));
    let var_1 = Struct_2(vec2<i32>(select(1i, firstTrailingBit(0i) >> (~u_input.a % 32u), (472f < global4.d.x) | false), i32(-1i) * -global3.x), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, u_input.b, 17032i, global3.x) ^ vec4<i32>(u_input.b, global4.e, -1i, global4.a), global4.c))), func_2());
    var var_2 = -349f;
    let var_3 = global4.b.xy;
    global1 = array<u32, 26>();
    let var_4 = var_1.c;
    var var_5 = Struct_2(global4.c.wz, -22964i, var_4);
    var_5 = Struct_2(firstTrailingBit(_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.b, -8951i), func_1())), _wgslsmith_clamp_i32(51202i, ~func_2().a >> (120065u % 32u), var_4.a), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1624f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(258f * var_5.c.d.x), var_4.d.x)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_4.d.x, -762f)))))), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(var_4.c.wwy | vec3<i32>(-2147483647i, u_input.b, var_4.a), vec3<i32>(var_4.e, var_4.c.x, 0i)), var_5.c.a, -36013i), ~max(var_5.c.e, -2147483647i), -2147483647i, _wgslsmith_mult_i32(-15920i, 1i)), vec2<i32>(i32(-1i) * -2147483647i, u_input.b));
}

