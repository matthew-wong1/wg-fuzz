struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global1: Struct_5 = Struct_5(Struct_2(Struct_1(vec2<f32>(1493f, -1576f), false, 3644u), Struct_1(vec2<f32>(1581f, -327f), true, 29118u), vec4<i32>(52815i, 8450i, -67363i, -10871i)));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<u32>) -> bool {
    var var_0 = arg_1;
    let var_1 = vec2<f32>(825f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.a.b.a.x)) + _wgslsmith_f_op_f32(-arg_1.b.a.x))), -959f));
    var var_2 = global0.wyy;
    var var_3 = _wgslsmith_f_op_f32(step(global1.a.a.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.x)), var_0.a.a.x)), 1129f))));
    let var_4 = Struct_1(var_0.a.a, true & !var_2.x, ~(~(~u_input.a)));
    return var_0.b.b;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2) -> vec3<u32> {
    global0 = select(!vec4<bool>(all(global0.wxz), func_3(~global1.a.c.zyz, Struct_2(Struct_1(vec2<f32>(global1.a.b.a.x, arg_1.a.a.x), false, 46320u), global1.a.a, vec4<i32>(-38448i, arg_1.c.x, -2147483647i, arg_1.c.x)), ~vec4<u32>(2923u, u_input.b, global1.a.a.c, global1.a.b.c)), !func_3(arg_1.c.yxy, Struct_2(Struct_1(arg_1.a.a, arg_1.a.b, 0u), arg_1.a, global1.a.c), vec4<u32>(56966u, global1.a.b.c, arg_1.a.c, arg_1.a.c)), arg_1.b.b), select(!(!(!vec4<bool>(true, arg_1.b.b, true, true))), select(select(select(vec4<bool>(true, arg_1.b.b, arg_1.b.b, false), vec4<bool>(true, arg_1.b.b, false, global1.a.b.b), false), vec4<bool>(global0.x, global1.a.b.b, global1.a.a.b, global1.a.a.b), !global0.x), select(vec4<bool>(true, global1.a.a.b, arg_1.b.b, global1.a.b.b), !vec4<bool>(global0.x, arg_1.a.b, global0.x, arg_1.b.b), false), global1.a.b.b), vec4<bool>(arg_1.b.b, !(32929i <= arg_1.c.x), global0.x, global0.x)), select(vec4<bool>(!(u_input.b < 1u), true, global0.x, any(select(vec4<bool>(true, true, arg_1.b.b, false), vec4<bool>(false, true, false, arg_1.b.b), global1.a.b.b))), vec4<bool>(true, all(vec3<bool>(true, false, false)), true, arg_1.a.b), select(vec4<bool>(any(global0.wy), any(vec4<bool>(false, global0.x, true, true)), 4294967295u == u_input.b, true), select(select(vec4<bool>(arg_1.a.b, false, global0.x, arg_1.b.b), vec4<bool>(global0.x, true, false, global1.a.b.b), vec4<bool>(arg_1.a.b, global1.a.a.b, false, global1.a.a.b)), !vec4<bool>(true, global1.a.b.b, true, arg_1.b.b), all(global0.wz)), vec4<bool>(true, any(global0.xx), func_3(vec3<i32>(2510i, -1i, -13995i), global1.a, vec4<u32>(4294967295u, 4294967295u, arg_1.a.c, arg_1.b.c)), true))));
    global1 = Struct_5(arg_1);
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_1.a.a, global1.a.a.a))), !(true == (264f < global1.a.a.a.x)), abs(global1.a.a.c)), Struct_1(arg_1.b.a, true, ~(~abs(global1.a.b.c))), _wgslsmith_clamp_vec4_i32(reverseBits(~vec4<i32>(-1i, global1.a.c.x, 9754i, arg_1.c.x)), -abs(vec4<i32>(global1.a.c.x, 2147483647i, 0i, arg_1.c.x)), ~vec4<i32>(17786i, 36638i, firstTrailingBit(-64215i), _wgslsmith_dot_vec3_i32(arg_1.c.yxz, vec3<i32>(arg_1.c.x, arg_1.c.x, 9345i)))));
    let var_1 = firstTrailingBit(-_wgslsmith_mult_i32(min(arg_1.c.x, -3909i), max(arg_1.c.x, 59233i))) == min(var_0.c.x, -firstLeadingBit(var_0.c.x));
    var var_2 = ~(_wgslsmith_mult_vec2_i32(~select(var_0.c.ww, arg_1.c.ww, vec2<bool>(false, false)), arg_1.c.zy) >> (~(countOneBits(vec2<u32>(4294967295u, 1u)) & (vec2<u32>(0u, u_input.b) & vec2<u32>(global1.a.b.c, 76864u))) % vec2<u32>(32u)));
    return vec3<u32>(reverseBits(30832u & abs(_wgslsmith_add_u32(4294967295u, arg_1.a.c))), _wgslsmith_sub_u32(~reverseBits(max(var_0.b.c, u_input.b)), u_input.a), var_0.a.c);
}

fn func_1() -> bool {
    let var_0 = abs(~func_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.a.a.a.x, global1.a.b.a.x, global1.a.b.a.x))))), Struct_2(Struct_1(global1.a.a.a, false, u_input.b), global1.a.a, -global1.a.c)));
    global1 = Struct_5(global1.a);
    global0 = !(!vec4<bool>(global0.x, !(!global0.x), any(global0.zz) == true, global1.a.b.b));
    var var_1 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, global1.a.a.c, ~countOneBits(45525u), ~var_0.x), _wgslsmith_mod_vec4_u32(max(_wgslsmith_add_vec4_u32(vec4<u32>(global1.a.a.c, var_0.x, 50140u, 0u), vec4<u32>(var_0.x, 13617u, var_0.x, 38900u)), vec4<u32>(u_input.b, 4294967295u, 45729u, global1.a.a.c) << (vec4<u32>(3240u, 1u, var_0.x, 1u) % vec4<u32>(32u))), vec4<u32>(global1.a.a.c, _wgslsmith_mult_u32(293u, u_input.b), ~global1.a.b.c, ~37702u)));
    var var_2 = 3844u;
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a.a.b;
    var_0 = global1.a.b.b;
    var var_1 = global1.a.c.x;
    global0 = !vec4<bool>(global1.a.a.c != 4294967295u, func_1(), global1.a.a.b || true, true);
    let var_2 = select(_wgslsmith_add_vec4_i32(~vec4<i32>(global1.a.c.x, global1.a.c.x, _wgslsmith_sub_i32(1i, global1.a.c.x), reverseBits(-2147483647i)), -global1.a.c | (vec4<i32>(-39272i, 1i, 0i, global1.a.c.x) ^ min(vec4<i32>(-1i, global1.a.c.x, global1.a.c.x, global1.a.c.x), vec4<i32>(global1.a.c.x, global1.a.c.x, -54053i, 2147483647i)))), vec4<i32>(countOneBits(_wgslsmith_dot_vec4_i32(global1.a.c, -vec4<i32>(global1.a.c.x, global1.a.c.x, 47185i, 2147483647i))), -reverseBits(0i) ^ (global1.a.c.x & (global1.a.c.x | global1.a.c.x)), 6437i, -1i), !select(vec4<bool>(true, all(vec4<bool>(true, true, global0.x, true)), !global0.x, any(global0.wzx)), vec4<bool>(global1.a.a.b, all(global0.ww), true, any(vec3<bool>(global0.x, global0.x, global0.x))), select(!vec4<bool>(global1.a.a.b, global1.a.a.b, global1.a.a.b, global1.a.a.b), vec4<bool>(true, true, true, true), !global1.a.b.b)));
    var_1 = -49247i & -abs(min(firstLeadingBit(-8134i), global1.a.c.x << (1u % 32u)));
    var_0 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(round(global1.a.b.a.x)), _wgslsmith_div_f32(global1.a.b.a.x, global1.a.b.a.x), 1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(854f))))))), max(vec3<u32>(global1.a.a.c, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, global1.a.b.c, 1u, u_input.b), vec4<u32>(global1.a.a.c, 75222u, u_input.a, 0u)), ~vec4<u32>(u_input.b, 1u, 1u, 4294967295u)), _wgslsmith_add_u32(124786u, min(global1.a.a.c, 1u))), vec3<u32>(u_input.b, firstLeadingBit(~4716u), u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-623f, global1.a.a.a.x))), _wgslsmith_mult_u32(firstTrailingBit(31132u), 0u), global1.a.c.x);
}

