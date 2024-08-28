struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<i32>(1i, 1i, 21664i, 2147483647i), true));

var<private> global3: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(vec4<i32>(2147483647i, -21364i, 11709i, 1i), false)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -30638i, -1i, 11487i), false)), Struct_2(Struct_1(vec4<i32>(-50868i, -3190i, -9838i, 32629i), true)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 8102i, i32(-2147483648)), false)), Struct_2(Struct_1(vec4<i32>(-603i, 37472i, -1i, 0i), true)), Struct_2(Struct_1(vec4<i32>(0i, -64792i, 39507i, -8819i), true)), Struct_2(Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -28781i, -80i), false)), Struct_2(Struct_1(vec4<i32>(37014i, 32143i, 1i, -16414i), true)), Struct_2(Struct_1(vec4<i32>(-1i, -478i, 0i, 36249i), false)), Struct_2(Struct_1(vec4<i32>(-1i, -37438i, -55104i, i32(-2147483648)), false)), Struct_2(Struct_1(vec4<i32>(59343i, -1i, i32(-2147483648), i32(-2147483648)), true)), Struct_2(Struct_1(vec4<i32>(1i, 1698i, i32(-2147483648), -25506i), true)), Struct_2(Struct_1(vec4<i32>(2237i, 2147483647i, 47009i, 1i), true)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -55764i, 42220i, -14963i), true)), Struct_2(Struct_1(vec4<i32>(0i, 3270i, 21134i, -10375i), true)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -54215i, -29932i), false)), Struct_2(Struct_1(vec4<i32>(-45440i, 1i, -25295i, 7825i), false)), Struct_2(Struct_1(vec4<i32>(1i, -44358i, 42659i, 34124i), false)), Struct_2(Struct_1(vec4<i32>(4409i, 1i, 621i, 2147483647i), false)), Struct_2(Struct_1(vec4<i32>(1i, 0i, -19287i, 0i), false)), Struct_2(Struct_1(vec4<i32>(-1i, -1i, -1i, 0i), true)), Struct_2(Struct_1(vec4<i32>(25855i, -28268i, -1i, 0i), true)), Struct_2(Struct_1(vec4<i32>(1i, -27531i, 2147483647i, i32(-2147483648)), false)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    let var_0 = arg_0;
    var var_1 = Struct_1(global1.a.a, global1.a.b);
    global3 = array<Struct_2, 23>();
    var var_2 = Struct_1(var_1.a, !(true & !arg_0));
    let var_3 = vec2<u32>(0u, _wgslsmith_sub_u32(1u, countOneBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 47128u), vec3<u32>(0u, 4294967295u, 0u)), ~4294967295u))));
    return -vec4<i32>(-global1.a.a.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(countOneBits(var_1.a.x), -12035i >> (var_3.x % 32u)), u_input.d.x), abs(var_1.a.x), var_1.a.x);
}

fn func_2() -> i32 {
    var var_0 = Struct_1(func_3(all(select(!vec4<bool>(global1.a.b, true, global0[_wgslsmith_index_u32(36554u, 15u)], true), !vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 15u)], true), !global1.a.b))), ~1u < countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(15179u, 40156u, 63981u), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 107797u, 0u), vec3<u32>(0u, 0u, 43443u)))));
    global0 = array<bool, 15>();
    var var_1 = global1.a;
    let var_2 = -339f;
    let var_3 = global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(~85076u, _wgslsmith_sub_u32(4294967295u, 29556u)), select(1u, 36523u, var_0.b)), 4294967295u), 1u)];
    return -2147483647i;
}

fn func_1() -> f32 {
    global2 = array<Struct_1, 1>();
    var var_0 = Struct_1(~vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global1.a.a.x, 0i, 2147483647i), vec3<i32>(-14594i, global1.a.a.x, -11343i)), ~u_input.a), global1.a.a.x ^ u_input.c.x, ~func_2(), -u_input.b), global0[_wgslsmith_index_u32(20478u, 15u)]);
    let var_1 = vec2<i32>(-1i) * -(select(global1.a.a.ww, _wgslsmith_sub_vec2_i32(global1.a.a.wy, global1.a.a.zw), select(vec2<bool>(global0[_wgslsmith_index_u32(7021u, 15u)], false), vec2<bool>(global0[_wgslsmith_index_u32(22588u, 15u)], global1.a.b), false)) ^ vec2<i32>(max(-28947i, var_0.a.x), u_input.d.x));
    let var_2 = Struct_1(-u_input.d ^ vec4<i32>(0i, -1i, ~46948i, firstLeadingBit(~(-2147483647i))), (_wgslsmith_f_op_f32(_wgslsmith_div_f32(777f, -1596f) + _wgslsmith_f_op_f32(step(-3818f, 2153f))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(386f)), _wgslsmith_f_op_f32(f32(-1f) * -325f))) & var_0.b);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(277f + -1282f) + -989f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -413f)))), false)) + -797f);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(firstTrailingBit(1u) << (20323u % 32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * 1120f)));
    let var_2 = global2[_wgslsmith_index_u32(var_0, 1u)];
    global2 = array<Struct_1, 1>();
    let var_3 = ~(~(~vec2<u32>(select(4294967295u, 39618u, true), 4294967295u)));
    let var_4 = select(_wgslsmith_mod_vec2_i32(~(~var_2.a.xz), u_input.a.xz), vec2<i32>(u_input.b, min(global1.a.a.x, 0i)) << (_wgslsmith_clamp_vec2_u32(var_3, vec2<u32>(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(40596u, 54177u, var_3.x), vec3<u32>(1u, 0u, var_3.x))), min(vec2<u32>(1u, var_3.x), vec2<u32>(var_0, 22566u)) >> (vec2<u32>(2522u, var_3.x) % vec2<u32>(32u))) % vec2<u32>(32u)), !global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(1u, 1u)), 15u)]);
    global0 = array<bool, 15>();
    let var_5 = var_1;
    var var_6 = (vec2<u32>(12340u, 52952u) | var_3) ^ _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 34262u), ~var_3)), select(~(vec2<u32>(var_3.x, var_3.x) >> (var_3 % vec2<u32>(32u))), ~var_3, !global1.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, 261f)), _wgslsmith_add_vec3_i32(u_input.a, firstTrailingBit(vec3<i32>(-21002i, 23537i, 1i)) ^ min(global1.a.a.xyw, select(vec3<i32>(-37066i, -2464i, u_input.b), vec3<i32>(global1.a.a.x, var_4.x, u_input.c.x), global1.a.b))));
}

