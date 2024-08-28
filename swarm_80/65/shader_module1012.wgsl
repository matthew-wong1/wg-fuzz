struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16> = array<i32, 16>(2076i, -1i, 1i, 2147483647i, i32(-2147483648), -5325i, -56156i, -10927i, -22309i, -5267i, 1i, 7760i, -3892i, i32(-2147483648), -154i, -14360i);

var<private> global1: Struct_1;

var<private> global2: array<i32, 4> = array<i32, 4>(-19898i, 1i, 4885i, -1i);

var<private> global3: array<Struct_1, 27>;

var<private> global4: f32 = -695f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = global3[_wgslsmith_index_u32(global1.a.x, 27u)];
    let var_1 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-1026f, -244f, -645f, var_0.b.x), vec4<f32>(var_0.b.x, var_0.b.x, 451f, 1509f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global1.b * vec4<f32>(-387f, global1.b.x, -147f, global1.b.x)), _wgslsmith_f_op_vec4_f32(step(global1.b, vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, -965f))), select(vec4<bool>(true, true, false, arg_0), vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0)))))))));
    var var_2 = ~abs((i32(-1i) * -global0[_wgslsmith_index_u32(10649u, 16u)]) << (u_input.c.x % 32u));
    global1 = var_1;
    var_2 = _wgslsmith_add_i32(34743i, _wgslsmith_div_i32(~global2[_wgslsmith_index_u32(u_input.c.x, 4u)], -21963i));
    return global0[_wgslsmith_index_u32(1u, 16u)];
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_div_vec2_u32(global1.a, ~vec2<u32>(3986u, reverseBits(13609u))), global1.b);
    let var_1 = select(~u_input.e.x, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(~select(u_input.c.x & u_input.d.x, 9781u, global1.b.x <= var_0.b.x), 16u)], func_3(var_0.b.x <= _wgslsmith_f_op_f32(trunc(1850f)))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)), var_0.b.x != 542f))));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), 180f, var_0.b.x, var_0.b.x) - _wgslsmith_f_op_vec4_f32(sign(global1.b)));
    global0 = array<i32, 16>();
    var var_3 = !(!any(vec4<bool>(select(true, true, false), any(vec4<bool>(false, false, true, false)), true, true)));
    return !select(select(vec3<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(true, true, false, true)), false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), true), select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), true), vec3<bool>(!select(true, true, false), false, true));
}

fn func_4(arg_0: vec3<bool>) -> bool {
    global4 = global1.b.x;
    let var_0 = _wgslsmith_f_op_vec2_f32(-global1.b.xz);
    global2 = array<i32, 4>();
    global3 = array<Struct_1, 27>();
    var var_1 = arg_0.x;
    return arg_0.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec2<i32>) -> i32 {
    let var_0 = u_input.d.xyx;
    let var_1 = Struct_1(~(~vec2<u32>(global1.a.x, ~5591u)), arg_1);
    let var_2 = select(select(vec3<bool>(true, func_4(func_2()), true), vec3<bool>(true, true, true), !func_4(vec3<bool>(true, true, true))), vec3<bool>(true, true, !any(vec3<bool>(true, true, true))), func_2());
    var var_3 = var_1;
    let var_4 = any(func_2().xz);
    return global2[_wgslsmith_index_u32(40335u, 4u)];
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32) -> bool {
    global0 = array<i32, 16>();
    var var_0 = arg_0.b.yz;
    var var_1 = any(select(select(vec4<bool>(true, true, true, any(vec2<bool>(true, false))), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), global2[_wgslsmith_index_u32(arg_0.a.x, 4u)] == 2147483647i), all(vec2<bool>(false, true))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, 1u >= global1.a.x, any(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), any(select(vec2<bool>(true, false), vec2<bool>(false, false), false)))));
    let var_2 = u_input.e;
    global3 = array<Struct_1, 27>();
    return (~17971u <= (global1.a.x | ~40705u)) | false;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 27>();
    var var_0 = countOneBits(global0[_wgslsmith_index_u32(~1u, 16u)]);
    let var_1 = vec4<bool>(func_5(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.b, _wgslsmith_div_vec2_u32(u_input.b, max(u_input.d.yx, u_input.b))), 27u)], global1.a, select(func_1(u_input.a, global1.b, global3[_wgslsmith_index_u32(u_input.b.x, 27u)], ~u_input.a.yz), global2[_wgslsmith_index_u32(~(u_input.b.x << (45073u % 32u)), 4u)], true)), func_2().x, false, !func_5(global3[_wgslsmith_index_u32(~9435u, 27u)], ~u_input.c, global2[_wgslsmith_index_u32(0u, 4u)]));
    var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(abs(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.c.x, 94805u, 60665u), ~u_input.d)), firstTrailingBit(u_input.d)), 16u)];
    let var_2 = func_1(vec3<i32>(u_input.a.x, u_input.e.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(global2[_wgslsmith_index_u32(0u, 4u)], 2147483647i, 23432i), reverseBits(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], 1i, global2[_wgslsmith_index_u32(u_input.d.x, 4u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, -1303f, 239f, 584f) - vec4<f32>(global1.b.x, -374f, 2661f, global1.b.x)))) + vec4<f32>(_wgslsmith_f_op_f32(-404f + global1.b.x), 1632f, global1.b.x, _wgslsmith_div_f32(global1.b.x, 1103f)))), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~10559u, min(u_input.d.x, 4294967295u)), 27u)], vec2<i32>(firstTrailingBit(global0[_wgslsmith_index_u32(global1.a.x, 16u)]), u_input.e.x));
    var var_3 = -u_input.a;
    let var_4 = global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(u_input.d.wyy, vec3<u32>(57978u, global1.a.x, 12204u)) ^ global1.a.x) & 1u, 27u)];
    let var_5 = max(~(~vec3<i32>(_wgslsmith_div_i32(u_input.e.x, -12010i), var_3.x, var_3.x)), _wgslsmith_div_vec3_i32(reverseBits(-u_input.a) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(global1.a.x, 4u)], global2[_wgslsmith_index_u32(1u, 4u)], 2147483647i), -vec3<i32>(global0[_wgslsmith_index_u32(11589u, 16u)], -2147483647i, -2147483647i)), _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.a.x, -9390i, -12089i) | select(vec3<i32>(-82547i, var_3.x, -1i), u_input.a, false), vec3<i32>(func_3(false), ~0i, u_input.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~global1.a.x, 41568u), ~_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(92546u, 0u, global1.a.x)), countOneBits(vec3<u32>(var_4.a.x, 8201u, 4294967295u) | vec3<u32>(4294967295u, 4294967295u, var_4.a.x)), ~(~vec3<u32>(4294967295u, 842u, global1.a.x))), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(abs(var_4.a), vec2<u32>(1u, 1u)), _wgslsmith_mod_vec2_u32(select(global1.a, global1.a, var_1.zz), select(u_input.d.xz, vec2<u32>(u_input.d.x, global1.a.x), var_1.x))) | ~(~(~global1.a)), -5885i, firstLeadingBit(u_input.d.ww) & ~(vec2<u32>(52515u, global1.a.x) ^ ~vec2<u32>(37674u, global1.a.x)));
}

