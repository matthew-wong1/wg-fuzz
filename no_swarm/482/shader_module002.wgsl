struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: bool = false;

var<private> global2: vec2<u32>;

var<private> global3: array<bool, 5> = array<bool, 5>(false, false, true, true, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_4(Struct_3(Struct_2(Struct_1(u_input.d), Struct_1(2147483647i), vec2<bool>(true, any(vec2<bool>(global3[_wgslsmith_index_u32(global2.x, 5u)], global3[_wgslsmith_index_u32(u_input.c.x, 5u)])))), !((2147483647i & u_input.d) < firstTrailingBit(u_input.d)), -15059i, Struct_2(Struct_1(u_input.d), Struct_1(_wgslsmith_add_i32(26068i, -28018i)), select(!vec2<bool>(true, global3[_wgslsmith_index_u32(global2.x, 5u)]), vec2<bool>(global3[_wgslsmith_index_u32(global2.x, 5u)], true), -2147483647i <= u_input.d))), !vec3<bool>(!global3[_wgslsmith_index_u32(0u, 5u)], true, any(select(vec2<bool>(global3[_wgslsmith_index_u32(global2.x, 5u)], false), vec2<bool>(true, global3[_wgslsmith_index_u32(0u, 5u)]), vec2<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 5u)])))), global0[_wgslsmith_index_u32(global2.x, 8u)]);
    global3 = array<bool, 5>();
    global2 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(4294967295u), ~0u, u_input.c.x), max(u_input.c, u_input.c)) << ((((u_input.a >> (global2.x % 32u)) ^ global2.x) << (u_input.b % 32u)) % 32u), 0u);
    global0 = array<Struct_2, 8>();
    return u_input.c.zx;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_4) -> vec2<i32> {
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~abs(vec4<i32>(11925i, -49150i, u_input.d, arg_1.c.b.a)), vec4<i32>(abs(-arg_1.c.b.a), u_input.d, _wgslsmith_sub_i32(-14501i, ~arg_1.a.d.a.a), -731i)), abs(~vec4<i32>(2147483647i, 1i, _wgslsmith_sub_i32(u_input.d, arg_1.a.a.b.a), -arg_1.a.a.b.a)));
    let var_1 = arg_1.a;
    let var_2 = u_input.c;
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(110068u, var_2.x, var_2.x, global2.x), vec4<u32>(25373u, global2.x, global2.x, var_2.x)))) << (global2.x % 32u), 8u)];
    global2 = ~select(max(func_3(), var_2.yy), ~vec2<u32>(47534u, u_input.a), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(max(vec4<u32>(1u, u_input.a, global2.x, 18896u), vec4<u32>(var_2.x, global2.x, 70294u, 4294967295u))), reverseBits(~vec4<u32>(u_input.b, 4264u, global2.x, var_2.x))), 5u)]);
    return ~min(-(-vec2<i32>(-20739i, -24524i) << (~vec2<u32>(global2.x, 7875u) % vec2<u32>(32u))), min(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, var_0), vec2<i32>(1i, var_3.b.a)), reverseBits(vec2<i32>(var_3.b.a, var_3.a.a))), vec2<i32>(u_input.d, var_1.d.b.a)));
}

fn func_1(arg_0: f32, arg_1: Struct_5, arg_2: f32, arg_3: vec4<i32>) -> StorageBuffer {
    let var_0 = vec4<i32>(33296i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, _wgslsmith_mult_i32(~0i, _wgslsmith_mult_i32(arg_3.x, arg_3.x)), max(-18575i, arg_3.x) << (firstLeadingBit(1u) % 32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(89028i, 0i), i32(-1i) * -75912i, arg_3.x), ~vec3<i32>(1i, 2147483647i, u_input.d))), _wgslsmith_sub_i32(i32(-1i) * -min(u_input.d, 3142i), _wgslsmith_dot_vec4_i32(arg_3, arg_3)), -1i);
    let var_1 = 38515u;
    let var_2 = abs(select(~var_0.xxz, arg_3.xxz, !(!vec3<bool>(false, global3[_wgslsmith_index_u32(global2.x, 5u)], true)))) >> (firstTrailingBit(u_input.c) % vec3<u32>(32u));
    let var_3 = arg_1;
    let var_4 = -arg_3.x;
    return StorageBuffer(vec3<u32>(firstLeadingBit(u_input.c.x), var_1, global2.x), vec4<i32>(~_wgslsmith_dot_vec4_i32(var_0, _wgslsmith_add_vec4_i32(var_0, var_0)), ~(-80708i), -_wgslsmith_dot_vec2_i32(func_2(vec4<f32>(arg_1.b.x, arg_2, arg_0, -864f), Struct_4(Struct_3(Struct_2(Struct_1(-57073i), Struct_1(0i), vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 5u)])), false, var_2.x, Struct_2(Struct_1(26206i), Struct_1(u_input.d), vec2<bool>(false, true))), vec3<bool>(global3[_wgslsmith_index_u32(15462u, 5u)], global3[_wgslsmith_index_u32(var_1, 5u)], global3[_wgslsmith_index_u32(global2.x, 5u)]), Struct_2(Struct_1(u_input.d), Struct_1(1i), vec2<bool>(false, global3[_wgslsmith_index_u32(global2.x, 5u)])))), _wgslsmith_clamp_vec2_i32(var_2.zy, vec2<i32>(0i, var_4), var_2.xx)), reverseBits(arg_3.x >> (_wgslsmith_mult_u32(var_1, u_input.a) % 32u))), arg_3.ww, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.a))), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 5>();
    global2 = u_input.c.xx;
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(141f)) + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 904f), -1033f))), Struct_5(1f, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-209f, 1391f, -718f)))), _wgslsmith_f_op_f32(max(-1362f, 1550f)), _wgslsmith_div_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, u_input.d, 594i, 0i), firstTrailingBit(vec4<i32>(1i, 64768i, -2147483647i, -4124i))), -(-vec4<i32>(u_input.d, u_input.d, 1i, u_input.d) & (vec4<i32>(-1i, -8486i, u_input.d, 16483i) & vec4<i32>(74246i, 21399i, u_input.d, 1i)))));
}

