struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<bool, 32>;

var<private> global2: u32;

var<private> global3: Struct_1 = Struct_1(-753f, -1i, vec3<i32>(i32(-2147483648), -1i, 2147483647i), false);

var<private> global4: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_1) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(7614u, 32u)];
    var var_1 = arg_3;
    global2 = ~4294967295u;
    global1 = array<bool, 32>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_3.a)) + -642f), -59416i, -(~arg_3.c), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(196f, arg_3.a)));
}

fn func_3() -> u32 {
    let var_0 = vec4<u32>(global0.x, ~(~global0.x), 4294967295u, _wgslsmith_clamp_u32(global0.x, 1u, firstTrailingBit(0u))) << (_wgslsmith_mult_vec4_u32(firstLeadingBit(~(vec4<u32>(global0.x, 0u, 22311u, 61485u) & vec4<u32>(global0.x, 4294967295u, 1u, global0.x))), ~(vec4<u32>(4294967295u, global0.x, 0u, global0.x) & ~vec4<u32>(11760u, global0.x, global0.x, 21730u))) % vec4<u32>(32u));
    global3 = Struct_1(_wgslsmith_div_f32(1000f, -1000f), global3.c.x, global3.c ^ vec3<i32>(~(-34010i), ~(u_input.a.x >> (global0.x % 32u)), countOneBits(~global3.b)), true);
    global4 = array<vec4<bool>, 23>();
    let var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(min(-(global3.c.x & u_input.a.x), firstLeadingBit(0i)), global3.b, 24205i & (-1i ^ global3.c.x), -2147483647i), _wgslsmith_mult_vec4_i32(min(vec4<i32>(u_input.a.x, ~51035i, _wgslsmith_add_i32(13212i, 1091i), global3.b), vec4<i32>(742i, 0i << (var_0.x % 32u), u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, -27601i), vec4<i32>(u_input.a.x, -1i, 2147483647i, global3.b)))), abs(-abs(vec4<i32>(u_input.a.x, global3.b, global3.c.x, u_input.a.x)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(398f)) * global3.a), select(1791i, var_1.x, select(global3.a >= 1f, ~var_0.x == 42291u, global3.d)), select(vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(abs(global3.b), 1i), -2147483647i), ~(-(vec3<i32>(u_input.a.x, -2147483647i, var_1.x) >> (var_0.yxz % vec3<u32>(32u)))), !(!select(vec3<bool>(global3.d, global3.d, global3.d), vec3<bool>(true, true, false), vec3<bool>(global1[_wgslsmith_index_u32(1u, 32u)], global3.d, true)))), all(vec2<bool>(u_input.a.x >= 15239i, (var_0.x << (0u % 32u)) < global0.x)));
    return min(32u, 4294967295u);
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: u32) -> f32 {
    let var_0 = vec4<i32>(-18311i, -25920i, global3.b, abs(abs(~(~(-46612i)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1177f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), -1050f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * arg_1) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(true, global3.c.xx | global3.c.yx, _wgslsmith_f_op_f32(global3.a - -2459f), Struct_1(arg_1, -1i, vec3<i32>(global3.c.x, -2147483647i, u_input.a.x), false))), arg_1)) * vec4<f32>(global3.a, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a * _wgslsmith_f_op_f32(-1000f - global3.a))), -401f));
    global4 = array<vec4<bool>, 23>();
    var var_2 = Struct_1(1203f, _wgslsmith_mult_i32(-41757i, ~(~(~u_input.a.x))), vec3<i32>(-1i, ~(i32(-1i) * -5773i), var_0.x), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~_wgslsmith_div_u32(39147u, arg_2), reverseBits(~45003u)), 32u)]);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), global3.a)), firstLeadingBit(1i), vec3<i32>(abs(_wgslsmith_sub_i32(~2467i, -28065i >> (0u % 32u))), abs(var_0.x & u_input.a.x) >> (global0.x % 32u), var_2.c.x), false);
    return global3.a;
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(select(select(vec3<bool>(global3.d, global3.d, global3.d), vec3<bool>(global1[_wgslsmith_index_u32(global0.x, 32u)], false, true), true), !vec3<bool>(global1[_wgslsmith_index_u32(global0.x, 32u)], false, global3.d), !vec3<bool>(global3.d, false, global3.d)), _wgslsmith_f_op_f32(func_2(global0.x <= global0.x, -u_input.a, _wgslsmith_f_op_f32(sign(523f)), Struct_1(global3.a, 5887i, vec3<i32>(-28827i, arg_1.x, global3.b), global3.d))), abs(func_3())))), -68052i, global3.c, false);
    let var_1 = var_0;
    var var_2 = var_0.c;
    let var_3 = all(!(!global4[_wgslsmith_index_u32(~min(4294967295u, 28363u), 23u)]));
    global3 = var_1;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(24399i, global3.c.xz);
    global4 = array<vec4<bool>, 23>();
    var var_1 = 0u;
    var var_2 = _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a, firstTrailingBit(max(vec2<i32>(9840i, var_0.b), vec2<i32>(-43341i, u_input.a.x)) | abs(vec2<i32>(global3.b, var_0.c.x)))), func_1(global3.c.x, abs(_wgslsmith_add_vec2_i32(abs(global3.c.yz), vec2<i32>(1i, u_input.a.x)))).c.yx);
    global3 = func_1(~var_0.c.x, var_0.c.zy);
    var_2 = u_input.a;
    var_2 = -abs(~vec2<i32>(-17797i | u_input.a.x, _wgslsmith_dot_vec3_i32(global3.c, vec3<i32>(u_input.a.x, 3757i, var_0.c.x))));
    global1 = array<bool, 32>();
    let var_3 = ~vec2<u32>(countOneBits(~global0.x), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<i32>(1i, -1652i, u_input.a.x, 48162i) | min(vec4<i32>(-1i, -17566i, var_0.b, var_2.x), vec4<i32>(-1866i, var_2.x, var_2.x, var_0.b))) & vec4<i32>(~_wgslsmith_dot_vec2_i32(global3.c.zy, vec2<i32>(1i, u_input.a.x)), -59075i, -2147483647i, i32(-1i) * -3710i), vec2<u32>(min(var_3.x, global0.x), 1u << (global0.x % 32u)), 1u, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -305f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.a)), 1315f), _wgslsmith_f_op_f32(1121f * _wgslsmith_f_op_f32(floor(392f))), global3.a))), _wgslsmith_dot_vec4_u32(min(select(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global0.x, 49185u, 6852u), vec4<u32>(var_3.x, 4294967295u, 73557u, var_3.x)), reverseBits(vec4<u32>(19516u, global0.x, global0.x, var_3.x)), global4[_wgslsmith_index_u32(reverseBits(4294967295u), 23u)]), vec4<u32>(firstTrailingBit(1u), global0.x, _wgslsmith_mult_u32(18314u, global0.x), 11179u)), vec4<u32>(var_3.x, 0u, _wgslsmith_add_u32(global0.x, 68292u), ~(~4294967295u))));
}

