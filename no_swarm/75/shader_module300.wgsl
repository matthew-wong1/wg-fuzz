struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec2<i32>(-20684i, -24716i), true), Struct_1(vec2<i32>(0i, -1i), true), Struct_1(vec2<i32>(2147483647i, 64043i), true), Struct_1(vec2<i32>(-20382i, 3862i), false), Struct_1(vec2<i32>(2147483647i, -6030i), true), Struct_1(vec2<i32>(10808i, i32(-2147483648)), false), Struct_1(vec2<i32>(-563i, 0i), true), Struct_1(vec2<i32>(-13932i, 2147483647i), false), Struct_1(vec2<i32>(1i, 0i), true), Struct_1(vec2<i32>(i32(-2147483648), 1i), true), Struct_1(vec2<i32>(1i, 2147483647i), false), Struct_1(vec2<i32>(9272i, -1i), false), Struct_1(vec2<i32>(-7083i, -1448i), true), Struct_1(vec2<i32>(2147483647i, -20289i), false), Struct_1(vec2<i32>(0i, 0i), true), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), true), Struct_1(vec2<i32>(0i, -43398i), false), Struct_1(vec2<i32>(14946i, 0i), true), Struct_1(vec2<i32>(-31939i, 20351i), false), Struct_1(vec2<i32>(1i, 39206i), true), Struct_1(vec2<i32>(1i, i32(-2147483648)), false));

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    global0 = _wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(623f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1972f))), false));
    var var_0 = any(global2.yy);
    global0 = -314f;
    let var_1 = global1[_wgslsmith_index_u32(u_input.a, 21u)];
    var var_2 = _wgslsmith_f_op_f32(ceil(1000f));
    return 5630i;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(vec2<i32>(arg_0.a.x, arg_1.a.x), true);
    var_0 = global1[_wgslsmith_index_u32(4294967295u | _wgslsmith_mod_u32(abs(1u), ~select(_wgslsmith_mult_u32(u_input.a, 4294967295u), _wgslsmith_add_u32(u_input.a, u_input.a), 17513u > u_input.a)), 21u)];
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -833f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-668f, -1686f))), -568f)));
    global1 = array<Struct_1, 21>();
    var var_2 = func_2(_wgslsmith_mod_vec2_u32(vec2<u32>(~(~9236u), ~u_input.a << ((u_input.a >> (10423u % 32u)) % 32u)), vec2<u32>(_wgslsmith_mod_u32(~36109u, ~1u), 16640u)));
    return _wgslsmith_mult_u32(~(~abs(_wgslsmith_add_u32(u_input.a, 0u))), ~_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 29810u))), 1u));
}

fn func_4(arg_0: u32) -> bool {
    let var_0 = Struct_1(_wgslsmith_mult_vec2_i32(u_input.b, -u_input.b << (_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(36736u, u_input.a), vec2<u32>(u_input.a, arg_0)), ~vec2<u32>(17210u, arg_0)) % vec2<u32>(32u))), (~(~42342u) > func_3(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, 9263u), 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)])) & true);
    let var_1 = Struct_1(var_0.a, false);
    global1 = array<Struct_1, 21>();
    let var_2 = vec2<u32>(28723u, u_input.a);
    var var_3 = var_1;
    return 4294967295u < select(~(arg_0 ^ 77592u), arg_0, !(11663u >= (var_2.x << (var_2.x % 32u))));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = -vec3<i32>(_wgslsmith_mult_i32(abs(-11293i), func_2(_wgslsmith_sub_vec2_u32(vec2<u32>(9406u, 1u), vec2<u32>(u_input.a, u_input.a)))), _wgslsmith_dot_vec4_i32(-(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, 1i) & vec4<i32>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_2.a.x)), -(~vec4<i32>(arg_2.a.x, 1i, -18608i, u_input.d.x))), _wgslsmith_add_i32(~_wgslsmith_sub_i32(23648i, 2147483647i), u_input.b.x));
    var var_1 = Struct_1(_wgslsmith_sub_vec2_i32(max(vec2<i32>(74668i, var_0.x), vec2<i32>(-36827i, u_input.d.x)) >> (vec2<u32>(38373u >> (1u % 32u), 81871u) % vec2<u32>(32u)), ~_wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, u_input.b.x), ~vec2<i32>(arg_2.a.x, 1i))), (~(~u_input.a) != 26594u) || global2.x);
    let var_2 = arg_2;
    global2 = !vec3<bool>(false, !global2.x && !global2.x, !(!any(vec3<bool>(var_1.b, global2.x, global2.x))));
    var_1 = arg_2;
    return vec4<bool>(false, arg_2.b, !func_4(func_3(arg_2, Struct_1(var_2.a, true))), any(select(vec2<bool>(global2.x, var_1.b), global2.zz, all(vec2<bool>(var_1.b, arg_2.b)))) && (-558f <= _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(round(arg_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(!vec3<bool>(false, true, global2.x), !(!select(vec3<bool>(true, global2.x, global2.x), !vec3<bool>(global2.x, global2.x, true), vec3<bool>(true, false, false))), !vec3<bool>(false, true, !global2.x));
    var var_0 = vec4<bool>(true, true, true, true);
    var_0 = select(!select(select(select(vec4<bool>(true, global2.x, true, false), vec4<bool>(global2.x, true, true, true), global2.x), func_1(vec4<f32>(274f, -647f, -1717f, -1037f), 278f, global1[_wgslsmith_index_u32(u_input.a, 21u)]), select(vec4<bool>(global2.x, global2.x, var_0.x, true), vec4<bool>(global2.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, global2.x, global2.x, var_0.x))), func_1(_wgslsmith_div_vec4_f32(vec4<f32>(344f, 129f, -1110f, -182f), vec4<f32>(1000f, -134f, -125f, 282f)), _wgslsmith_f_op_f32(f32(-1f) * -1530f), global1[_wgslsmith_index_u32(4294967295u, 21u)]), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(318f, 300f, 628f, 164f) * vec4<f32>(-2856f, -761f, -2897f, -1353f)), _wgslsmith_f_op_f32(round(249f)), global1[_wgslsmith_index_u32(min(u_input.a, u_input.a), 21u)]).x), !select(vec4<bool>(!global2.x, true, false && var_0.x, global2.x), !(!vec4<bool>(var_0.x, true, global2.x, var_0.x)), func_1(vec4<f32>(782f, -670f, -1627f, 186f), _wgslsmith_f_op_f32(trunc(846f)), Struct_1(u_input.b, false))), vec4<bool>(any(!select(vec4<bool>(global2.x, global2.x, var_0.x, global2.x), vec4<bool>(global2.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, global2.x, true, false))), false, all(vec2<bool>(all(vec4<bool>(false, true, false, true)), true)), var_0.x));
    let var_1 = !func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1187f), _wgslsmith_f_op_f32(f32(-1f) * -1547f), _wgslsmith_f_op_f32(1362f + -1485f), _wgslsmith_f_op_f32(-355f * -1047f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(222f * -333f))), _wgslsmith_f_op_f32(749f + _wgslsmith_f_op_f32(select(-129f, -1914f, global2.x))))), global1[_wgslsmith_index_u32(~reverseBits(max(u_input.a, u_input.a)), 21u)]).zyx;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(268f, _wgslsmith_f_op_f32(f32(-1f) * -749f), _wgslsmith_f_op_f32(-1000f - -313f), -704f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1030f, _wgslsmith_f_op_f32(sign(1644f)), _wgslsmith_f_op_f32(min(-874f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -627f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 228f, -1413f, -767f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-121f, 1357f, -553f, 1548f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1991f, 1000f, 1000f, 452f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(609f, -1566f, 938f, 681f)))))));
    let var_3 = vec4<i32>(countOneBits(_wgslsmith_add_i32(select(firstLeadingBit(u_input.c), u_input.d.x, var_1.x), u_input.c & -u_input.b.x)), -2147483647i, u_input.c, ~(~(-(~u_input.c))));
    var var_4 = _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(reverseBits(~vec2<u32>(63698u, u_input.a)), abs(vec2<u32>(1u, u_input.a) | vec2<u32>(6451u, u_input.a))), (~4294967295u >> (u_input.a % 32u)) | u_input.a) & u_input.a;
    var var_5 = func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_div_f32(-1027f, _wgslsmith_f_op_f32(f32(-1f) * -1245f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * var_2.x), -1000f)), -1266f, global1[_wgslsmith_index_u32(~select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 11881u, u_input.a), vec3<u32>(87935u, 54124u, u_input.a)) ^ (u_input.a ^ u_input.a), 0u, true), 21u)]).xxw;
    let x = u_input.a;
    s_output = StorageBuffer(-(~u_input.d >> (abs(vec2<u32>(u_input.a, 40897u)) % vec2<u32>(32u))));
}

