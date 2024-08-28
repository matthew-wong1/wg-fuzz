struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<bool>, 21>;

var<private> global2: array<bool, 23> = array<bool, 23>(true, false, false, false, false, true, true, true, true, false, false, true, true, true, false, true, true, true, false, false, true, true, true);

var<private> global3: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(50575u, 1557u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 0u, 49387u, 109904u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 34564u), vec4<u32>(0u, 26176u, 1u, 0u), vec4<u32>(32158u, 1u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 45418u, 76167u), vec4<u32>(41808u, 23304u, 6817u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 61448u, 24689u), vec4<u32>(4294967295u, 43331u, 1u, 29333u));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: i32) -> vec4<bool> {
    let var_0 = vec4<bool>(true, arg_1.x, !(!(!arg_1.x)), true);
    return !var_0;
}

fn func_3(arg_0: Struct_3) -> vec3<i32> {
    let var_0 = arg_0;
    global1 = array<vec3<bool>, 21>();
    var var_1 = Struct_4(449f, countOneBits(vec2<u32>(63519u, ~reverseBits(56566u))), vec2<u32>(~4447u, 1u));
    let var_2 = global3[_wgslsmith_index_u32(var_1.b.x | var_1.b.x, 9u)] | firstTrailingBit(~(~reverseBits(vec4<u32>(24840u, 34546u, var_1.c.x, 54238u))));
    return -u_input.a.xzz;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_3 {
    global1 = array<vec3<bool>, 21>();
    global2 = array<bool, 23>();
    global0 = 310f;
    let var_0 = ~_wgslsmith_div_vec4_u32(vec4<u32>(~0u, 1u, 1u, 1u) << (global3[_wgslsmith_index_u32(~1u, 9u)] % vec4<u32>(32u)), vec4<u32>(_wgslsmith_clamp_u32(1u, 0u, 34863u), _wgslsmith_mod_u32(5588u, 34430u), 80639u, 1u) & abs(global3[_wgslsmith_index_u32(0u, 9u)] >> (vec4<u32>(0u, 1u, 56578u, 912u) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(-(vec4<i32>(u_input.a.x, u_input.a.x, arg_0.a.x, -2147483647i) ^ u_input.a), vec4<i32>(max(u_input.a.x, u_input.a.x), arg_0.a.x, u_input.a.x | -3300i, _wgslsmith_mult_i32(6851i, u_input.a.x))), -u_input.a >> (_wgslsmith_mod_vec4_u32(~global3[_wgslsmith_index_u32(1u, 9u)], global3[_wgslsmith_index_u32(var_0.x, 9u)] & global3[_wgslsmith_index_u32(var_0.x, 9u)]) % vec4<u32>(32u))) & -select(-_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -1i, u_input.a.x, 0i), u_input.a), u_input.a, func_2(-u_input.a.x, select(arg_0.b.wyx, arg_0.b.yww, global1[_wgslsmith_index_u32(24693u, 21u)]), abs(arg_0.a.x)).x);
    return Struct_3(Struct_1(arg_0.b.x, select(arg_0.a.yx, _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.wz, arg_0.a.xy), vec2<i32>(var_1.x, u_input.a.x)), select(select(arg_0.b.xy, arg_0.b.yw, false), arg_0.b.xz, true)), !vec2<bool>(any(arg_0.b.zyw), true)));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> Struct_3 {
    var var_0 = firstLeadingBit(0i);
    var var_1 = func_4(Struct_2(-_wgslsmith_add_vec3_i32(~u_input.a.xzy, -vec3<i32>(u_input.a.x, 0i, 0i)), select(func_2(_wgslsmith_add_i32(41584i, u_input.a.x), !global1[_wgslsmith_index_u32(1u, 21u)], firstTrailingBit(2147483647i)), !select(vec4<bool>(global2[_wgslsmith_index_u32(88216u, 23u)], true, true, global2[_wgslsmith_index_u32(20116u, 23u)]), vec4<bool>(arg_1.x, arg_1.x, arg_0, false), vec4<bool>(true, false, false, arg_1.x)), true), max(vec3<i32>(-26243i, -u_input.a.x, _wgslsmith_add_i32(41031i, u_input.a.x)), func_3(Struct_3(Struct_1(true, vec2<i32>(-14406i, u_input.a.x), arg_1))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-1384f - _wgslsmith_f_op_f32(957f + -1592f)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -582f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1013f)), 447f))))));
    var_1 = Struct_3(func_4(Struct_2(firstTrailingBit(u_input.a.ywz), vec4<bool>(2147483647i <= u_input.a.x, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 4294967295u), 23u)], any(vec4<bool>(global2[_wgslsmith_index_u32(2470u, 23u)], global2[_wgslsmith_index_u32(54502u, 23u)], global2[_wgslsmith_index_u32(18498u, 23u)], arg_1.x)), arg_1.x), ~reverseBits(vec3<i32>(var_1.a.b.x, -16609i, u_input.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-521f, 1838f, -820f, 1293f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -688f, 498f, -232f))), select(vec4<bool>(var_1.a.c.x, arg_1.x, var_1.a.c.x, var_1.a.a), vec4<bool>(true, false, true, arg_1.x), true))))).a);
    let var_2 = vec3<bool>(true, global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(1u, 0u)), vec2<u32>(1u, 1u))), 23u)], all(select(global1[_wgslsmith_index_u32(~1370u, 21u)], select(select(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(24996u, 21u)], false), select(global1[_wgslsmith_index_u32(20713u, 21u)], vec3<bool>(true, arg_0, true), false), vec3<bool>(false, true, global2[_wgslsmith_index_u32(1u, 23u)])), any(arg_1))));
    var var_3 = 1u;
    return func_4(Struct_2(~firstTrailingBit(-u_input.a.yww), vec4<bool>(var_1.a.a, var_1.a.a, !var_1.a.a, true), u_input.a.zyw), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-251f, _wgslsmith_f_op_f32(step(-1711f, 413f)), -1250f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -425f), _wgslsmith_div_f32(-1103f, -135f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(539f, -319f)), -314f, 528f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(181f)), _wgslsmith_div_f32(348f, -1871f)))), !(!(!vec4<bool>(false, arg_0, false, var_2.x))))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-723f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1349f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(298f, 352f)), -119f)))));
    global2 = array<bool, 23>();
    global1 = array<vec3<bool>, 21>();
    global0 = -815f;
    var var_1 = func_1(false, !arg_0).a.a;
    return Struct_2(reverseBits(vec3<i32>(select(~u_input.a.x, min(2147483647i, arg_1.a.b.x), arg_1.a.a & false), _wgslsmith_clamp_i32(~(-17496i), 5371i, _wgslsmith_dot_vec3_i32(u_input.a.wxy, vec3<i32>(-60378i, u_input.a.x, arg_3.c.x))), -9823i | firstTrailingBit(arg_3.c.x))), arg_3.b, arg_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(!(!(!vec2<bool>(false, global2[_wgslsmith_index_u32(13849u, 23u)]))), func_1(true || global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(4045u, 1u), 1u), 23u)], !vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4927u, 4294967295u, 14807u), vec3<u32>(1657u, 0u, 35061u)), 23u)], global2[_wgslsmith_index_u32(37128u, 23u)])), ~reverseBits(reverseBits(min(vec3<u32>(40709u, 1u, 0u), vec3<u32>(1u, 27757u, 10568u)))), Struct_2(~(-(~vec3<i32>(u_input.a.x, -1i, u_input.a.x))), select(vec4<bool>(any(global1[_wgslsmith_index_u32(1u, 21u)]), func_2(17868i, vec3<bool>(global2[_wgslsmith_index_u32(28371u, 23u)], false, true), 0i).x, !global2[_wgslsmith_index_u32(55387u, 23u)], true), !vec4<bool>(global2[_wgslsmith_index_u32(28379u, 23u)], global2[_wgslsmith_index_u32(26791u, 23u)], global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(1u, 23u)]), vec4<bool>(false, true, !global2[_wgslsmith_index_u32(1u, 23u)], u_input.a.x <= -24672i)), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-1i, u_input.a.x, u_input.a.x)) & ~vec3<i32>(u_input.a.x, u_input.a.x, -22256i), u_input.a.wxx)));
    let var_1 = vec3<u32>(13440u, firstTrailingBit(90689u) >> (countOneBits(1u) % 32u), _wgslsmith_mult_u32(1u, ~56853u));
    let var_2 = func_4(Struct_2(countOneBits(u_input.a.wzx) & select(reverseBits(u_input.a.yzy), -vec3<i32>(1i, -13629i, 33275i), global1[_wgslsmith_index_u32(~var_1.x, 21u)]), func_5(vec2<bool>(any(var_0.b.xz), func_5(var_0.b.zw, Struct_3(Struct_1(true, vec2<i32>(var_0.a.x, var_0.c.x), vec2<bool>(true, var_0.b.x))), vec3<u32>(var_1.x, 50555u, var_1.x), Struct_2(vec3<i32>(2147483647i, 37799i, u_input.a.x), var_0.b, var_0.a)).b.x), func_1(any(var_0.b), vec2<bool>(false, false)), var_1, Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a.x, 638i, var_0.c.x), vec3<i32>(var_0.a.x, -43400i, -2147483647i)), select(var_0.b, vec4<bool>(global2[_wgslsmith_index_u32(var_1.x, 23u)], false, false, true), vec4<bool>(global2[_wgslsmith_index_u32(1u, 23u)], true, var_0.b.x, false)), _wgslsmith_mod_vec3_i32(var_0.a, u_input.a.wzw))).b, firstLeadingBit(func_5(var_0.b.zz, func_4(Struct_2(vec3<i32>(var_0.c.x, 0i, -16489i), var_0.b, u_input.a.wxy), vec4<f32>(-369f, 1331f, 462f, 785f)), var_1, Struct_2(vec3<i32>(var_0.a.x, 0i, -2023i), var_0.b, u_input.a.yzz)).a)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(610f, -325f, -1000f, 1000f))))))))).a;
    var var_3 = func_5(func_4(func_5(!var_0.b.wz, Struct_3(var_2), select(var_1, ~vec3<u32>(0u, var_1.x, var_1.x), var_0.b.yww), func_5(var_0.b.xz, Struct_3(Struct_1(true, u_input.a.wz, vec2<bool>(var_2.a, var_0.b.x))), vec3<u32>(var_1.x, 21933u, 4294967295u), Struct_2(u_input.a.zxw, vec4<bool>(true, global2[_wgslsmith_index_u32(var_1.x, 23u)], false, false), vec3<i32>(var_0.a.x, var_0.c.x, -1i)))), vec4<f32>(_wgslsmith_f_op_f32(893f - _wgslsmith_f_op_f32(1087f - 585f)), 1917f, -1091f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-569f, 696f))))).a.c, func_4(Struct_2(vec3<i32>(var_0.a.x, 1i, u_input.a.x) << (vec3<u32>(var_1.x, var_1.x, 1u) % vec3<u32>(32u)), var_0.b, min(u_input.a.zyy, _wgslsmith_mult_vec3_i32(u_input.a.wyy, vec3<i32>(-2853i, var_2.b.x, var_2.b.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1064f, _wgslsmith_div_f32(-259f, 208f), -1000f, _wgslsmith_f_op_f32(max(-209f, 130f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1997f, -282f, 2059f, 142f), vec4<f32>(-610f, -158f, -595f, -389f), true))))), vec3<u32>(~(~select(var_1.x, var_1.x, var_2.a)), var_1.x, ~var_1.x), func_5(vec2<bool>(var_0.b.x, any(global1[_wgslsmith_index_u32(~var_1.x, 21u)])), Struct_3(func_4(Struct_2(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), var_0.b, var_0.a), vec4<f32>(1f, 1f, 1f, 1f)).a), var_1, Struct_2(vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, 21602i), _wgslsmith_mod_i32(var_0.c.x, var_2.b.x), u_input.a.x), select(var_0.b, select(var_0.b, vec4<bool>(false, var_0.b.x, true, true), true), !vec4<bool>(var_2.a, var_2.a, true, true)), func_5(var_0.b.wz, Struct_3(var_2), vec3<u32>(69116u, var_1.x, 14958u), Struct_2(var_0.a, var_0.b, vec3<i32>(40361i, u_input.a.x, -1i))).a & -vec3<i32>(var_0.c.x, var_2.b.x, var_0.a.x))));
    let var_4 = func_5(!vec2<bool>(global2[_wgslsmith_index_u32(var_1.x, 23u)] == !var_0.b.x, var_0.b.x), func_4(func_5(vec2<bool>(true, true), func_1(false, !var_0.b.xy), vec3<u32>(_wgslsmith_clamp_u32(var_1.x, var_1.x, var_1.x), ~4294967295u, var_1.x | var_1.x), func_5(select(vec2<bool>(var_3.b.x, global2[_wgslsmith_index_u32(var_1.x, 23u)]), var_0.b.xz, vec2<bool>(true, var_2.c.x)), func_4(Struct_2(vec3<i32>(-2147483647i, -11363i, var_0.a.x), var_3.b, vec3<i32>(var_0.c.x, -2147483647i, var_3.c.x)), vec4<f32>(-416f, -1000f, 1558f, -1131f)), var_1, Struct_2(vec3<i32>(u_input.a.x, -26505i, var_0.a.x), vec4<bool>(false, false, false, var_2.a), vec3<i32>(-61337i, -16044i, var_3.c.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(792f, -950f, 103f, 319f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(559f, 414f, -212f, 1095f))))), abs(select(~vec3<u32>(41111u, 23819u, var_1.x), _wgslsmith_mult_vec3_u32(~vec3<u32>(41009u, var_1.x, 44548u), _wgslsmith_sub_vec3_u32(var_1, vec3<u32>(39526u, 73265u, var_1.x))), true)), func_5(vec2<bool>(any(vec4<bool>(var_0.b.x, false, global2[_wgslsmith_index_u32(35773u, 23u)], global2[_wgslsmith_index_u32(var_1.x, 23u)])), select(var_0.b.x, var_2.a, all(vec2<bool>(false, var_0.b.x)))), Struct_3(Struct_1(func_2(var_3.a.x, global1[_wgslsmith_index_u32(var_1.x, 21u)], 16744i).x, var_0.a.zx, !vec2<bool>(true, var_0.b.x))), vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(36731u, var_1.x), max(var_1.zz, vec2<u32>(0u, var_1.x))), _wgslsmith_mult_u32(var_1.x | var_1.x, _wgslsmith_sub_u32(var_1.x, var_1.x)), firstLeadingBit(_wgslsmith_mult_u32(28705u, 0u))), func_5(var_0.b.yw, func_4(Struct_2(u_input.a.yxy, var_0.b, u_input.a.wzy), _wgslsmith_f_op_vec4_f32(-vec4<f32>(653f, 1493f, -536f, 2259f))), ~_wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, 59344u, 0u), vec3<u32>(var_1.x, var_1.x, 30102u)), Struct_2(var_3.c, func_2(var_3.c.x, var_3.b.yzw, var_0.c.x), firstTrailingBit(vec3<i32>(-1i, 24872i, var_3.c.x))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1936f))));
    let var_5 = Struct_3(Struct_1(true, -var_0.c.xx, select(!var_2.c, var_3.b.xy, var_0.b.yy)));
    var_3 = Struct_2(~var_0.a, func_2(u_input.a.x, !var_4.b.xxy, var_5.a.b.x), ((vec3<i32>(-1i) * -vec3<i32>(var_0.c.x, u_input.a.x, 1i)) | vec3<i32>(~(-33889i), -2147483647i, var_5.a.b.x)) << (reverseBits(var_1) % vec3<u32>(32u)));
    let var_6 = func_1(-1250f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(441f, 513f, var_5.a.c.x))))), select(var_0.b.zy, func_4(var_4, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(724f, -328f, 1000f, 954f) + vec4<f32>(-1019f, 1227f, -521f, -792f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1578f, 1158f, -1425f, -779f)))).a.c, func_2(_wgslsmith_dot_vec2_i32(func_4(var_4, vec4<f32>(302f, 997f, 171f, 306f)).a.b, vec2<i32>(11434i, var_2.b.x)), var_3.b.xzw, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(12284i, -42728i), vec2<i32>(var_0.a.x, -1i)), var_0.a.x)).x)).a.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_add_i32(29305i, ~(-var_5.a.b.x)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a.x, ~34698i, firstLeadingBit(37106i)), var_0.c.x)), vec2<i32>(var_2.b.x, firstTrailingBit(-(var_4.a.x & -12027i))));
}

