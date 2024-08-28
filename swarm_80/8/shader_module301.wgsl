struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(42166i, vec2<bool>(true, true))), Struct_2(Struct_1(-11895i, vec2<bool>(true, true))), Struct_2(Struct_1(-6803i, vec2<bool>(false, true))), Struct_2(Struct_1(5976i, vec2<bool>(true, true))), Struct_2(Struct_1(-1i, vec2<bool>(false, true))), Struct_2(Struct_1(2147483647i, vec2<bool>(true, true))), Struct_2(Struct_1(-16901i, vec2<bool>(true, false))), Struct_2(Struct_1(-7020i, vec2<bool>(false, true))), Struct_2(Struct_1(0i, vec2<bool>(false, false))), Struct_2(Struct_1(-15098i, vec2<bool>(true, false))), Struct_2(Struct_1(-1i, vec2<bool>(true, false))), Struct_2(Struct_1(2147483647i, vec2<bool>(true, true))), Struct_2(Struct_1(0i, vec2<bool>(true, false))), Struct_2(Struct_1(6370i, vec2<bool>(true, true))), Struct_2(Struct_1(i32(-2147483648), vec2<bool>(false, false))), Struct_2(Struct_1(47879i, vec2<bool>(false, true))), Struct_2(Struct_1(2147483647i, vec2<bool>(false, true))), Struct_2(Struct_1(-45418i, vec2<bool>(false, true))), Struct_2(Struct_1(1i, vec2<bool>(true, true))), Struct_2(Struct_1(-1i, vec2<bool>(true, true))), Struct_2(Struct_1(-47650i, vec2<bool>(false, true))), Struct_2(Struct_1(4340i, vec2<bool>(true, false))));

var<private> global1: vec4<i32>;

var<private> global2: array<f32, 9>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: vec4<f32>) -> u32 {
    global0 = array<Struct_2, 22>();
    let var_0 = Struct_1(countOneBits(-1i), select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(arg_2.x, arg_2.x)), vec2<bool>(false, arg_2.x), select(vec2<bool>(false, arg_2.x), vec2<bool>(arg_2.x, false), arg_2)), select(select(vec2<bool>(false, arg_2.x), arg_2, arg_2), vec2<bool>(false, arg_2.x), any(vec4<bool>(true, false, arg_2.x, true))), arg_2), select(arg_2, arg_2, vec2<bool>(any(vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), true)), false));
    global1 = vec4<i32>(-_wgslsmith_sub_i32(_wgslsmith_mult_i32(var_0.a, 8216i), _wgslsmith_dot_vec3_i32(global1.zyz, vec3<i32>(25021i, global1.x, 0i) & vec3<i32>(global1.x, 0i, u_input.c))), var_0.a, _wgslsmith_div_i32(-_wgslsmith_add_i32(u_input.c, firstTrailingBit(0i)), _wgslsmith_div_i32(-global1.x, -(i32(-1i) * -19906i))), reverseBits(-countOneBits(-2147483647i)));
    let var_1 = Struct_4(Struct_3(~_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(global1.yy, vec2<i32>(-10335i, global1.x), vec2<i32>(global1.x, var_0.a)), global1.zz), firstLeadingBit(select(-vec4<i32>(0i, u_input.c, var_0.a, 3255i), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 0i, -2484i, global1.x), vec4<i32>(-3124i, 1i, global1.x, u_input.c)), true))), -_wgslsmith_add_vec4_i32(~vec4<i32>(-30999i, -1i, var_0.a, 22172i), countOneBits(vec4<i32>(global1.x, 0i, -2147483647i, var_0.a) | vec4<i32>(var_0.a, 0i, var_0.a, global1.x))), _wgslsmith_sub_vec2_u32(~min(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, arg_1.x), vec2<u32>(u_input.b.x, u_input.d.x)), vec2<u32>(4294967295u, arg_1.x)), arg_1 | ~(vec2<u32>(u_input.a, arg_1.x) ^ u_input.b.zy)));
    global1 = firstLeadingBit(var_1.a.b);
    return ~min(var_1.c.x, 1u);
}

fn func_3(arg_0: Struct_4) -> bool {
    let var_0 = -_wgslsmith_dot_vec2_i32(vec2<i32>(-(global1.x | 2147483647i), -2147483647i), vec2<i32>(-31853i, 0i));
    global2 = array<f32, 9>();
    global1 = arg_0.b;
    global0 = array<Struct_2, 22>();
    let var_1 = select(vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), !any(vec4<bool>(true, true, true, false)) & (global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.x, u_input.d.x, u_input.b.x, 4294967295u), vec4<u32>(u_input.d.x, 1u, u_input.a, u_input.d.x)), 9u)] == global2[_wgslsmith_index_u32(arg_0.c.x, 9u)])), vec4<bool>(true, true, true, true), func_2(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(24875u, 9u)] - _wgslsmith_f_op_f32(-2392f - global2[_wgslsmith_index_u32(4294967295u, 9u)])), vec2<u32>(4294967295u, 1u << (u_input.b.x % 32u)), vec2<bool>(true, true), vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 9u)]), 239f, _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(4294967295u, 9u)])), _wgslsmith_f_op_f32(1104f * global2[_wgslsmith_index_u32(arg_0.c.x, 9u)]))) > u_input.a);
    return select(true, !var_1.x, true);
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    var var_0 = vec3<u32>(~u_input.b.x, ~u_input.b.x, _wgslsmith_mod_u32(~func_2(613f, vec2<u32>(u_input.b.x, 4294967295u), vec2<bool>(false, true), vec4<f32>(1238f, global2[_wgslsmith_index_u32(u_input.d.x, 9u)], global2[_wgslsmith_index_u32(77984u, 9u)], global2[_wgslsmith_index_u32(u_input.d.x, 9u)])), 14055u) & (u_input.a >> (u_input.b.x % 32u)));
    global2 = array<f32, 9>();
    var var_1 = vec4<bool>(true, false, all(vec4<bool>(true, true, true || func_3(Struct_4(Struct_3(global1.xz, vec4<i32>(-6244i, global1.x, 29872i, u_input.c)), vec4<i32>(global1.x, 0i, -2147483647i, 81365i), vec2<u32>(u_input.b.x, 13555u))), true)), true);
    var var_2 = max(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(max(0u, u_input.d.x), ~u_input.a, ~21260u), u_input.b), _wgslsmith_mod_vec3_u32(max(_wgslsmith_mult_vec3_u32(u_input.d.wxy, u_input.b), _wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(var_0.x, u_input.a, 13749u))), ~(u_input.d.wyx | vec3<u32>(var_0.x, 4294967295u, 14513u)))), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(14201u, 3719u, 4294967295u), u_input.b), vec3<u32>(~0u, u_input.b.x, var_0.x)), countOneBits(vec3<u32>(var_0.x, u_input.d.x, 7612u)) & u_input.b, _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, 872u) | u_input.b, _wgslsmith_div_vec3_u32(u_input.b, u_input.d.xxw)), u_input.d.xww)));
    var_1 = !(!select(!select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(true, true, false, true), vec4<bool>(true, var_1.x, false, var_1.x)), select(!vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, false, false), !vec4<bool>(var_1.x, var_1.x, var_1.x, true)), false));
    return u_input.c;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: bool) -> i32 {
    let var_0 = _wgslsmith_add_vec2_i32(global1.yw, _wgslsmith_div_vec2_i32(global1.yy, select(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 0i), global1.xw), select(vec2<i32>(u_input.c, 11455i), global1.zy, arg_3), arg_0.b.x & true)) << ((~(~vec2<u32>(u_input.b.x, u_input.a)) | ~(~u_input.d.zw)) % vec2<u32>(32u)));
    return _wgslsmith_add_i32(~select(13253i, global1.x, arg_0.b.x), select(_wgslsmith_add_i32(_wgslsmith_sub_i32(arg_0.a, -2147483647i), ~(-42595i)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_1, 2147483647i), arg_0.a), all(vec3<bool>(arg_3, true, true)) | !arg_3) ^ var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(func_4(Struct_1(u_input.c, vec2<bool>(true, true)), func_1(_wgslsmith_div_vec2_f32(vec2<f32>(1230f, 1020f), vec2<f32>(-1150f, global2[_wgslsmith_index_u32(u_input.d.x, 9u)]))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 37226u), 9u)]), true), (~(-1i) ^ _wgslsmith_clamp_i32(-3628i, u_input.c, u_input.c)) | global1.x), min(-global1.wz, _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(u_input.c, -19632i)), global1.zx)), (abs(~global1.wy) & ((vec2<i32>(u_input.c, -45975i) | global1.ww) & (global1.ww >> (vec2<u32>(u_input.d.x, 86462u) % vec2<u32>(32u))))) >> ((~(~vec2<u32>(u_input.d.x, u_input.d.x)) & ~vec2<u32>(0u, u_input.b.x)) % vec2<u32>(32u)));
    var var_1 = Struct_1(0i, vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 9u)] != global2[_wgslsmith_index_u32(~(~u_input.a), 9u)], (any(vec3<bool>(true, false, false)) || true) & true));
    var var_2 = u_input.b.zx;
    global2 = array<f32, 9>();
    var var_3 = Struct_4(Struct_3(reverseBits(select(_wgslsmith_sub_vec2_i32(vec2<i32>(26378i, -9469i), vec2<i32>(28087i, var_1.a)), select(vec2<i32>(var_1.a, -3754i), var_0, var_1.b), select(var_1.b, vec2<bool>(false, false), true))), _wgslsmith_add_vec4_i32(~vec4<i32>(var_0.x, -5670i, var_0.x, -40071i), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, global1.x, var_1.a, -2147483647i), vec4<i32>(-37827i, u_input.c, u_input.c, var_0.x))))), _wgslsmith_add_vec4_i32(~vec4<i32>(21660i, _wgslsmith_dot_vec2_i32(var_0, vec2<i32>(31607i, u_input.c)), func_4(Struct_1(-2147483647i, vec2<bool>(var_1.b.x, var_1.b.x)), var_1.a, -464f, var_1.b.x), -var_0.x), ~select(vec4<i32>(u_input.c, 0i, var_1.a, var_1.a), countOneBits(vec4<i32>(-1310i, -266i, u_input.c, -25595i)), !var_1.b.x)), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(abs(select(vec2<u32>(u_input.a, u_input.b.x), u_input.d.yw, var_1.b)), ~reverseBits(u_input.b.yz)), vec2<u32>(_wgslsmith_mult_u32(u_input.a, _wgslsmith_mult_u32(var_2.x, 1u)), ~(~var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1607f, global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(12673u, 9u)], global2[_wgslsmith_index_u32(var_2.x, 9u)]) + vec4<f32>(-539f, -320f, 835f, global2[_wgslsmith_index_u32(0u, 9u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 9u)], global2[_wgslsmith_index_u32(var_2.x, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(var_2.x, 9u)])))), vec4<f32>(1396f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_3.c.x, 9u)]), global2[_wgslsmith_index_u32(var_3.c.x >> (3378u % 32u), 9u)], _wgslsmith_f_op_f32(f32(-1f) * -375f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-100f, global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(87752u, 9u)], global2[_wgslsmith_index_u32(var_2.x, 9u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(var_2.x, 9u)], 1237f, 650f, global2[_wgslsmith_index_u32(u_input.a, 9u)]) - vec4<f32>(652f, global2[_wgslsmith_index_u32(22129u, 9u)], 1420f, global2[_wgslsmith_index_u32(u_input.a, 9u)]))))), var_1.b.x)), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, select(1u, 1u, true), 1u), firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(var_2.x, 0u, 37038u), vec3<u32>(51356u, u_input.d.x, u_input.b.x))), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(789u, 0u, var_2.x), u_input.b), ~vec3<u32>(var_3.c.x, var_3.c.x, var_2.x)))), select(firstLeadingBit(var_0), _wgslsmith_clamp_vec2_i32(~max(vec2<i32>(0i, 1i), var_0), _wgslsmith_sub_vec2_i32(var_0, ~vec2<i32>(global1.x, -5149i)), var_0), select(var_1.b, select(vec2<bool>(var_1.b.x, var_1.b.x), select(vec2<bool>(var_1.b.x, var_1.b.x), vec2<bool>(var_1.b.x, false), var_1.b.x), select(vec2<bool>(var_1.b.x, var_1.b.x), vec2<bool>(false, true), vec2<bool>(true, var_1.b.x))), all(vec3<bool>(var_1.b.x, var_1.b.x, true)))), firstLeadingBit(~_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 6837u), u_input.d.yx), _wgslsmith_div_vec2_u32(var_3.c, vec2<u32>(u_input.b.x, var_2.x)))));
}

