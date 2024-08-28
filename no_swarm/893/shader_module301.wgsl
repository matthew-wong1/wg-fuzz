struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

var<private> global1: Struct_2;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> vec3<f32> {
    var var_0 = Struct_2(Struct_1(arg_0.a.b.x, select(!(!vec3<bool>(true, arg_0.a.b.x, arg_1.d)), !global1.a.b, !(!vec3<bool>(global1.a.b.x, global1.a.a, true))), global1.a.c, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.d, global1.a.d, global1.a.d, arg_0.a.d), abs(vec4<i32>(arg_0.a.d, -1570i, arg_1.b.d, arg_0.a.d))), max(-9653i, arg_0.a.d))));
    var var_1 = max(vec3<u32>(firstTrailingBit(_wgslsmith_clamp_u32(arg_1.a.c.x, 67591u, u_input.a)), u_input.a, _wgslsmith_mult_u32(158888u | arg_0.a.c.x, _wgslsmith_add_u32(var_0.a.c.x, 4294967295u))) >> (_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(var_0.a.c.x, 4294967295u, var_0.a.c.x)) >> (vec3<u32>(arg_1.b.c.x, 17867u, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(arg_0.a.c.x, global1.a.c.x, global1.a.c.x)) % vec3<u32>(32u)), max(~abs(~vec3<u32>(arg_1.a.c.x, global1.a.c.x, 4294967295u)), (~vec3<u32>(18455u, 0u, 4294967295u) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(9790u, global1.a.c.x, 4294967295u), vec3<u32>(var_0.a.c.x, arg_1.b.c.x, 0u), vec3<u32>(var_0.a.c.x, 0u, 0u)) % vec3<u32>(32u))) | ~select(vec3<u32>(arg_1.a.c.x, 4294967295u, 721u), vec3<u32>(19340u, 0u, 99594u), global1.a.a)));
    var var_2 = select(!select(select(vec3<bool>(global1.a.a, true, false), arg_0.a.b, var_0.a.b), arg_1.b.b, arg_1.d), !vec3<bool>(!(arg_0.a.c.x > arg_1.b.c.x), var_0.a.b.x, 2147483647i != var_0.a.d), select(vec3<bool>(any(vec3<bool>(false, false, false)) || all(vec4<bool>(false, true, false, arg_0.a.a)), global1.a.b.x, !all(vec2<bool>(var_0.a.b.x, false))), select(select(select(vec3<bool>(true, false, var_0.a.b.x), vec3<bool>(true, arg_1.d, true), true), vec3<bool>(var_0.a.a, false, arg_1.a.b.x), false), select(arg_0.a.b, vec3<bool>(arg_1.c.b.x, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, var_0.a.a, true), var_0.a.b.x)), vec3<bool>(arg_1.a.b.x, all(vec3<bool>(true, arg_1.d, arg_0.a.b.x)), true)), !arg_1.a.b));
    var_0 = Struct_2(arg_1.b);
    global0 = array<f32, 31>();
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 31u)] + global0[_wgslsmith_index_u32(32272u, 31u)]) * global0[_wgslsmith_index_u32(global1.a.c.x << (var_1.x % 32u), 31u)]), global0[_wgslsmith_index_u32(firstLeadingBit(0u), 31u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-416f + 1177f)))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(arg_1.a, vec3<bool>(true, global1.a.b.x, true), arg_1.c, arg_1.d)), Struct_3(global1.a, Struct_1(global1.a.a, global1.a.b, arg_1.c, arg_1.d), global1.a, false, global1.a.b))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-135f, global0[_wgslsmith_index_u32(arg_1.c.x, 31u)], -675f))))));
    global1 = Struct_2(arg_1);
    let var_1 = Struct_2(Struct_1(global1.a.b.x, !(!vec3<bool>(global1.a.a, arg_1.b.x, false)), arg_0, arg_1.d));
    var var_2 = _wgslsmith_add_vec4_i32(countOneBits(abs(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.d, 1i), vec2<i32>(-2147483647i, arg_1.d)), arg_1.d, _wgslsmith_mod_i32(arg_1.d, var_1.a.d), var_1.a.d))), select(vec4<i32>(min(global1.a.d, 47604i) & abs(2147483647i), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.a.d, var_1.a.d), vec2<i32>(arg_1.d, 0i)), -vec2<i32>(-32923i, var_1.a.d)), 0i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global1.a.d, global1.a.d), vec2<i32>(22608i, var_1.a.d)), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 81739i), vec2<i32>(36830i, arg_1.d)))), ~max(vec4<i32>(var_1.a.d, arg_1.d, var_1.a.d, global1.a.d), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a.d, 2147483647i, 109i, -1i), vec4<i32>(-42310i, 46993i, arg_1.d, var_1.a.d))), !vec4<bool>(!global1.a.b.x, false, true, var_1.a.a)));
    var_2 = vec4<i32>(~5284i, -36129i, ~(~(-2147483647i)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(18451i, var_2.x, var_2.x, -14508i), vec4<i32>(-45749i, arg_1.d, -1i, -2147483647i)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global1.a.c.x, arg_0.x, 32080u), vec4<u32>(arg_0.x, global1.a.c.x, arg_1.c.x, 4294967295u)) % 32u), _wgslsmith_clamp_i32(global1.a.d, -50371i, 29658i) | 2147483647i) | (-(~0i) >> (1u % 32u)));
    return var_2.wz;
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = countOneBits(func_2(vec2<u32>(_wgslsmith_div_u32(u_input.a, 1u), min(u_input.a, u_input.a)), Struct_1(true, vec3<bool>(false, arg_0.b.x, arg_0.a), arg_0.c, arg_0.d)) | min(select(~vec2<i32>(global1.a.d, 0i), min(vec2<i32>(-19114i, arg_0.d), vec2<i32>(-10414i, arg_0.d)), global1.a.b.x), vec2<i32>(arg_0.d, _wgslsmith_mult_i32(global1.a.d, global1.a.d))));
    var var_1 = true;
    var_1 = true;
    global0 = array<f32, 31>();
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(firstTrailingBit(global1.a.c.x), 31u)])), -300f);
    return _wgslsmith_dot_vec3_i32(firstLeadingBit(~select(vec3<i32>(arg_0.d, 18505i, 2147483647i), vec3<i32>(var_0.x, -14416i, arg_0.d), global1.a.b) | -(vec3<i32>(2147483647i, -7461i, 0i) | vec3<i32>(0i, arg_0.d, -5836i))), -vec3<i32>(-1i, select(var_0.x, _wgslsmith_clamp_i32(arg_0.d, global1.a.d, global1.a.d), all(vec4<bool>(true, false, arg_0.b.x, global1.a.b.x))), -abs(global1.a.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~global1.a.c.x, 31u)]) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * global0[_wgslsmith_index_u32(global1.a.c.x, 31u)]) - global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.c.x, 1u, global1.a.c.x, 0u), vec4<u32>(global1.a.c.x, 0u, 47984u, u_input.a)), 31u)]), !(!global1.a.b), abs(~global1.a.c), _wgslsmith_sub_i32(global1.a.d, _wgslsmith_mult_i32(global1.a.d, global1.a.d))));
    global1 = Struct_2(global1.a);
    var_0 = -3264i;
    let var_1 = select(global1.a.b.zz, !(!global1.a.b.yx), !vec2<bool>(global1.a.b.x, false));
    var var_2 = global1.a.b.x;
    let var_3 = global0[_wgslsmith_index_u32(~reverseBits(countOneBits(abs(u_input.a))), 31u)];
    var var_4 = Struct_3(global1.a, Struct_1(min(~global1.a.c.x, u_input.a) <= firstTrailingBit(u_input.a), global1.a.b, global1.a.c | abs(abs(vec2<u32>(u_input.a, global1.a.c.x))), global1.a.d), Struct_1(!global1.a.b.x | !(global1.a.d >= global1.a.d), vec3<bool>((-412f != global0[_wgslsmith_index_u32(global1.a.c.x, 31u)]) && global1.a.a, !(u_input.a > 55274u), all(!vec4<bool>(var_1.x, false, false, global1.a.a))), firstTrailingBit(global1.a.c), _wgslsmith_add_i32(22401i, _wgslsmith_mult_i32(global1.a.d, global1.a.d) | global1.a.d)), false, select(global1.a.b, global1.a.b, global1.a.b.x));
    let var_5 = Struct_2(Struct_1(global1.a.a | !(false || var_4.c.b.x), global1.a.b, vec2<u32>(4294967295u, ~(var_4.b.c.x << (0u % 32u))), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(~46349i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_4.a.d, global1.a.d, -3462i), vec3<i32>(2147483647i, global1.a.d, 19190i)), countOneBits(27780i)), _wgslsmith_clamp_i32(~2147483647i, var_4.a.d >> (global1.a.c.x % 32u), ~36576i))));
    var_4 = Struct_3(var_4.b, var_5.a, Struct_1(var_5.a.a, vec3<bool>(true, all(global1.a.b), var_4.d), ~_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 45402u), global1.a.c), var_5.a.d), select((_wgslsmith_f_op_f32(-652f * global0[_wgslsmith_index_u32(1u, 31u)]) >= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 31u)])) || !var_5.a.b.x, true, var_1.x), !global1.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(~var_5.a.c.x, _wgslsmith_mult_vec3_i32(vec3<i32>(i32(-1i) * -1i, var_4.a.d | func_1(Struct_1(true, var_5.a.b, global1.a.c, -3385i)), abs(-1i)), ~vec3<i32>(26048i, reverseBits(var_4.a.d), firstTrailingBit(-1i))), 0i, -2147483647i, firstTrailingBit(firstTrailingBit(_wgslsmith_mult_i32(-23632i & var_5.a.d, -25562i))));
}

