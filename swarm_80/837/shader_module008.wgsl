struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(33112u, 62728u, 0u, 32192u, 0u, 1u, 1u);

var<private> global1: array<bool, 22> = array<bool, 22>(true, true, false, false, false, false, false, true, false, false, false, true, false, true, true, true, true, true, true, true, false, true);

var<private> global2: array<Struct_2, 18>;

var<private> global3: array<f32, 5>;

var<private> global4: vec4<bool> = vec4<bool>(true, false, false, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>) -> vec3<bool> {
    var var_0 = arg_2;
    var var_1 = vec3<bool>(false, true, arg_0.a.c.x);
    var var_2 = arg_1.a;
    global3 = array<f32, 5>();
    var var_3 = arg_0.a;
    return arg_0.a.c.yyx;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<i32>) -> i32 {
    var var_0 = Struct_1(-_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(arg_1.a.a, arg_1.a.a, arg_2.a)), vec3<i32>(1i, arg_3.x, 0i), -vec3<i32>(arg_3.x, 0i, -2147483647i)), vec3<i32>(-75303i, -1432i, u_input.a)), ~(~vec4<u32>(abs(arg_2.b.x), abs(49580u), 0u, u_input.b)), arg_2.c);
    let var_1 = vec3<u32>(~global0[_wgslsmith_index_u32(33148u, 7u)], ~(~1u & _wgslsmith_add_u32(arg_1.a.b.x & 4294967295u, _wgslsmith_sub_u32(4294967295u, 1u))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(15945u, 1u, arg_0.x), vec3<u32>(34738u, 39309u, var_0.b.x)), arg_0.x) | vec2<u32>(~arg_2.b.x, 1u), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b.x, 72819u), var_0.b.xw), vec2<u32>(arg_0.x, 10153u) >> (vec2<u32>(arg_0.x, arg_2.b.x) % vec2<u32>(32u)))));
    let var_2 = Struct_3(global2[_wgslsmith_index_u32(var_1.x, 18u)], Struct_2(arg_2));
    global3 = array<f32, 5>();
    global2 = array<Struct_2, 18>();
    return 11621i;
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> bool {
    var var_0 = -_wgslsmith_add_i32(func_3(firstTrailingBit(countOneBits(vec4<u32>(global0[_wgslsmith_index_u32(28384u, 7u)], u_input.b, arg_3.a.b.x, arg_1.a.b.x))), Struct_2(Struct_1(-10153i, arg_1.a.b, vec4<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 22u)], true))), arg_1.a, _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-40244i, arg_1.a.a), vec2<i32>(-1i, u_input.a)), ~vec2<i32>(42705i, 39008i))), ~_wgslsmith_sub_i32(3602i, 1682i));
    global3 = array<f32, 5>();
    let var_1 = vec3<i32>(func_3(vec4<u32>(0u, max(select(75283u, 40383u, arg_1.a.c.x), arg_3.a.b.x), ~81189u, arg_1.a.b.x), Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-42318i, 0i, arg_2, u_input.a), vec4<i32>(u_input.a, -25797i, u_input.a, -2147483647i)), min(arg_1.a.b, arg_3.a.b), arg_1.a.c)), Struct_1(0i, abs(vec4<u32>(arg_1.a.b.x, u_input.b, 4294967295u, 17608u)), arg_3.a.c), countOneBits(~vec2<i32>(arg_2, arg_1.a.a))), select(-2147483647i, arg_1.a.a, !arg_1.a.c.x), ~44111i);
    var var_2 = (2147483647i & (firstTrailingBit(-30421i) | -1i)) >> (arg_3.a.b.x % 32u);
    let var_3 = ~abs(firstLeadingBit(~arg_3.a.b.yw));
    return ~(~_wgslsmith_mod_u32(arg_1.a.b.x, ~14309u)) >= ~4294967295u;
}

fn func_4(arg_0: vec3<bool>, arg_1: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-233f, global3[_wgslsmith_index_u32(44076u, 5u)], 191f, global3[_wgslsmith_index_u32(19397u, 5u)]) - _wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 5u)], global3[_wgslsmith_index_u32(u_input.b, 5u)], global3[_wgslsmith_index_u32(4294967295u, 5u)], global3[_wgslsmith_index_u32(1991u, 5u)]), vec4<f32>(global3[_wgslsmith_index_u32(1u, 5u)], -700f, -1212f, 585f)))))), vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(408f + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 5u)]))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.b, 1u), 5u)] - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, 87577u, 4294967295u), vec4<u32>(11319u, 25140u, 4294967295u, u_input.c.x)), 5u)] - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 5u)] - -1199f)))));
    let var_1 = !select(select(arg_0.xx, !select(global4.wy, global4.ww, global4.yw), true), vec2<bool>(true, (u_input.b | 4294967295u) != 3874u), true);
    var var_2 = 315f;
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-260f, 1797f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1045f * 1145f) - _wgslsmith_f_op_f32(f32(-1f) * -2293f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(356f, global3[_wgslsmith_index_u32(0u, 5u)], false)), _wgslsmith_f_op_f32(sign(623f)), any(vec3<bool>(false, var_1.x, global4.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(1u, 5u)], -1000f, global3[_wgslsmith_index_u32(3383u, 5u)], 199f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3[_wgslsmith_index_u32(1u, 5u)], -733f, 1000f, -811f), vec4<f32>(-370f, var_0.x, 861f, 141f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3[_wgslsmith_index_u32(8056u, 5u)], var_0.x, var_0.x, global3[_wgslsmith_index_u32(u_input.b, 5u)]), vec4<f32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 7u)], 5u)], var_0.x, -1826f, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], 5u)]))))))), all(vec4<bool>(true, false, var_1.x, !global1[_wgslsmith_index_u32(0u, 22u)] == false))));
    var var_4 = Struct_3(Struct_2(Struct_1(-(i32(-1i) * -21669i), vec4<u32>(4294967295u, ~1u, firstTrailingBit(global0[_wgslsmith_index_u32(53476u, 7u)]), global0[_wgslsmith_index_u32(14563u, 7u)]), vec4<bool>(arg_0.x, false != var_1.x, false, false))), Struct_2(Struct_1(_wgslsmith_sub_i32(arg_1, arg_1 << (5855u % 32u)), select(vec4<u32>(1u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], global0[_wgslsmith_index_u32(1201u, 7u)]) & vec4<u32>(u_input.c.x, u_input.b, global0[_wgslsmith_index_u32(u_input.c.x, 7u)], global0[_wgslsmith_index_u32(1u, 7u)]), vec4<u32>(26869u, 4294967295u, u_input.c.x, 4294967295u), !vec4<bool>(true, false, arg_0.x, global4.x)), select(select(vec4<bool>(arg_0.x, false, global4.x, var_1.x), vec4<bool>(global1[_wgslsmith_index_u32(0u, 22u)], true, arg_0.x, false), vec4<bool>(arg_0.x, false, global4.x, false)), select(vec4<bool>(true, global4.x, global1[_wgslsmith_index_u32(19862u, 22u)], global1[_wgslsmith_index_u32(0u, 22u)]), vec4<bool>(global4.x, global1[_wgslsmith_index_u32(1u, 22u)], var_1.x, global4.x), vec4<bool>(true, arg_0.x, global1[_wgslsmith_index_u32(94172u, 22u)], true)), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 22u)], arg_0.x, global4.x, true)))));
    return !select(select(var_4.a.a.c, select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(var_4.a.a.b.x, 22u)], global1[_wgslsmith_index_u32(146u, 22u)], false), var_4.b.a.c, vec4<bool>(false, true, false, arg_0.x)), select(var_4.a.a.c, var_4.b.a.c, true), select(var_4.b.a.c.x, arg_0.x, true)), !select(vec4<bool>(true, false, global4.x, false), vec4<bool>(true, var_4.a.a.c.x, true, true), vec4<bool>(var_1.x, var_4.a.a.c.x, false, global4.x))), vec4<bool>(var_4.b.a.b.x <= ~15562u, true, global4.x, true), -45076i <= -_wgslsmith_clamp_i32(17332i, arg_1, 52359i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(all(select(global4.yzz, global4.yxz, func_1(global2[_wgslsmith_index_u32(4294967295u, 18u)], global2[_wgslsmith_index_u32(u_input.b, 18u)], vec4<f32>(-341f, global3[_wgslsmith_index_u32(70560u, 5u)], -498f, 782f)))), u_input.b < ~0u);
    var var_1 = false;
    let var_2 = Struct_1(-26656i, vec4<u32>(u_input.b, ~global0[_wgslsmith_index_u32(~select(u_input.b, 4294967295u, false), 7u)], 4294967295u, global0[_wgslsmith_index_u32(~abs(4294967295u), 7u)]), func_4(!vec3<bool>(!global1[_wgslsmith_index_u32(43695u, 22u)], func_2(global3[_wgslsmith_index_u32(17068u, 5u)], Struct_2(Struct_1(u_input.a, vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.c.x, 7u)], 1u, 1u), vec4<bool>(true, true, global1[_wgslsmith_index_u32(7283u, 22u)], var_0.x))), u_input.a, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 18u)]), var_0.x), ~(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 34737i, u_input.a, 0i), vec4<i32>(44043i, u_input.a, u_input.a, u_input.a)) & _wgslsmith_mod_i32(u_input.a, u_input.a))));
    global0 = array<u32, 7>();
    let var_3 = Struct_1(var_2.a, _wgslsmith_sub_vec4_u32(var_2.b, select(var_2.b, firstTrailingBit(~vec4<u32>(global0[_wgslsmith_index_u32(28624u, 7u)], 21739u, var_2.b.x, global0[_wgslsmith_index_u32(1u, 7u)])), global1[_wgslsmith_index_u32((global0[_wgslsmith_index_u32(49706u, 7u)] ^ 47334u) >> (global0[_wgslsmith_index_u32(1u, 7u)] % 32u), 22u)])), !select(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 22u)], var_2.c.x, true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], 22u)]), select(vec4<bool>(false, false, false, false), !vec4<bool>(global1[_wgslsmith_index_u32(var_2.b.x, 22u)], true, var_2.c.x, global1[_wgslsmith_index_u32(46712u, 22u)]), !var_2.c), select(var_2.c, vec4<bool>(var_0.x, var_2.c.x, true, false), any(vec3<bool>(global4.x, false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], 22u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(var_3.b.x, 5u)], countOneBits(-1i), 1161f);
}

