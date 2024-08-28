struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 14> = array<vec3<bool>, 14>(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true));

var<private> global1: u32 = 1u;

var<private> global2: array<u32, 29>;

var<private> global3: vec3<u32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: vec2<u32>) -> u32 {
    global1 = ~1u;
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(727f, _wgslsmith_f_op_f32(sign(-376f)))), vec2<u32>(~firstTrailingBit(arg_2.x), max(abs(global3.x), max(1u, ~1u))), ~u_input.d);
    global0 = array<vec3<bool>, 14>();
    let var_1 = global0[_wgslsmith_index_u32(var_0.b.x, 14u)];
    var var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.x, _wgslsmith_mod_u32(global3.x, 4294967295u), ~(~4294967295u)), vec3<u32>(global3.x, firstLeadingBit(~u_input.d.x), abs(~_wgslsmith_add_u32(global3.x, 1u))));
    return ~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(global3.x, var_0.c.x, 7207u, 719u)) << (firstLeadingBit(vec4<u32>(4294967295u, 72088u, 4294967295u, u_input.a.x)) % vec4<u32>(32u)), reverseBits(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(24646u, 0u, var_0.b.x, 18303u), vec4<u32>(arg_2.x, u_input.d.x, 1u, global2[_wgslsmith_index_u32(var_2.x, 29u)])), ~vec4<u32>(0u, u_input.d.x, global2[_wgslsmith_index_u32(4294967295u, 29u)], global2[_wgslsmith_index_u32(var_2.x, 29u)]))));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: bool, arg_3: Struct_5) -> vec3<i32> {
    var var_0 = u_input.c.x;
    var var_1 = Struct_1(countOneBits(-(countOneBits(vec3<i32>(u_input.c.x, -2147483647i, arg_0)) ^ min(u_input.c.zxx, u_input.c.zyw))));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-820f)))))), max(~(~firstLeadingBit(vec2<u32>(3080u, global3.x))), vec2<u32>(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(84668u, 29u)], 1u), 60308u) & vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.c.x, 5475u, u_input.a.x, 4294967295u), vec4<u32>(0u, global3.x, global3.x, u_input.d.x)), 0u)), ~(~arg_3.b));
    var_0 = u_input.c.x;
    var var_3 = abs(arg_3.b.x);
    return ~(~vec3<i32>(arg_0, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(var_1.a, var_1.a), u_input.c.x | var_1.a.x), -16035i));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(~u_input.c.wzy);
    let var_1 = -629f;
    var var_2 = Struct_2(_wgslsmith_div_i32(u_input.c.x, var_0.a.x));
    let var_3 = firstLeadingBit(func_4(~_wgslsmith_mod_i32(var_2.a, ~var_2.a), select(false, true, any(vec4<bool>(true, true, false, false))), _wgslsmith_div_u32(abs(45408u), ~0u) >= countOneBits(func_3(true, vec3<i32>(-10675i, 2147483647i, u_input.b), vec2<u32>(global3.x, 0u))), Struct_5(_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(round(-1419f))), _wgslsmith_sub_vec2_u32(~u_input.e.xz, global3.zx), ~vec2<u32>(9221u, u_input.a.x))));
    global0 = array<vec3<bool>, 14>();
    return 20156u;
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = vec3<u32>(reverseBits(global3.x), func_2(), global3.x);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 1u;
    var var_0 = Struct_1(select(abs(vec3<i32>(u_input.b, func_1(1i), u_input.b)), _wgslsmith_clamp_vec3_i32(reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, u_input.c.x), vec3<i32>(-2147483647i, u_input.c.x, 8692i))), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.c.x), u_input.c.wwz, u_input.c.xyw), vec3<i32>(u_input.c.x, -1i, -2147483647i), true), u_input.c.xyz), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(u_input.d.x, 0u, false), abs(global3.x)) >> (countOneBits(~global2[_wgslsmith_index_u32(1u, 29u)]) % 32u), 14u)]));
    let var_1 = Struct_1(vec3<i32>(-15840i, -13288i, 1i));
    var var_2 = _wgslsmith_sub_u32(~u_input.d.x, global2[_wgslsmith_index_u32(_wgslsmith_add_u32((55483u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d.x, 4294967295u, 4294967295u), vec4<u32>(66226u, u_input.a.x, u_input.a.x, 101282u))) >> ((1u ^ abs(global3.x)) % 32u), global2[_wgslsmith_index_u32(~func_2(), 29u)]), 29u)]);
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(~0u, 29u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 29u)], 29u)]), 14u)];
    global2 = array<u32, 29>();
    var var_4 = Struct_1(~var_1.a);
    global2 = array<u32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(firstTrailingBit(var_4.a.x))), _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(-vec2<i32>(var_4.a.x, u_input.b), -var_1.a.yx), _wgslsmith_add_i32(var_0.a.x | min(var_4.a.x, u_input.c.x), _wgslsmith_add_i32(~(-1194i), -1i))));
}

