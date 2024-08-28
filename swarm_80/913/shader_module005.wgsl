struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<i32>(1i, 15821i, 0i), vec4<bool>(false, true, false, true), vec3<i32>(-15098i, -9808i, -1i)), Struct_1(vec3<i32>(2147483647i, 1i, 52414i), vec4<bool>(false, false, false, false), vec3<i32>(0i, 1i, 2147483647i)), Struct_1(vec3<i32>(-1i, i32(-2147483648), -45993i), vec4<bool>(false, true, false, true), vec3<i32>(-13512i, -1i, 2147483647i)), Struct_1(vec3<i32>(44361i, -5824i, 0i), vec4<bool>(true, false, false, true), vec3<i32>(-2100i, 1078i, -1i)), Struct_1(vec3<i32>(1i, -1i, -5848i), vec4<bool>(true, false, false, false), vec3<i32>(1i, 2147483647i, -37532i)));

var<private> global1: Struct_1 = Struct_1(vec3<i32>(i32(-2147483648), -78424i, i32(-2147483648)), vec4<bool>(false, true, false, false), vec3<i32>(-6807i, 50464i, 0i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32, arg_3: vec3<bool>) -> bool {
    var var_0 = arg_0;
    var_0 = vec4<i32>(60255i, 0i, ~2147483647i, 1i) >> (u_input.b % vec4<u32>(32u));
    let var_1 = abs(abs(global1.a.x & 2147483647i));
    global0 = array<Struct_1, 5>();
    let var_2 = Struct_1(_wgslsmith_mod_vec3_i32(max(~(~vec3<i32>(-1i, -49641i, arg_1.c.x)), vec3<i32>(~41286i, arg_1.c.x ^ var_1, 7336i | u_input.a)), -(vec3<i32>(-1i) * -arg_1.c)), select(!select(vec4<bool>(true, arg_1.b.x, arg_1.b.x, true), !vec4<bool>(false, true, global1.b.x, arg_1.b.x), arg_1.b), select(vec4<bool>(any(vec2<bool>(arg_1.b.x, true)), any(vec2<bool>(true, true)), -13143i > u_input.c, arg_3.x | false), select(global1.b, !arg_1.b, u_input.b.x < u_input.b.x), !(!vec4<bool>(arg_1.b.x, false, false, true))), false), vec3<i32>(1i, ~var_1, min(arg_1.c.x, firstTrailingBit(u_input.c))));
    return !all(global1.b);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: bool) -> Struct_1 {
    global0 = array<Struct_1, 5>();
    var var_0 = arg_0;
    global0 = array<Struct_1, 5>();
    var_0 = 597f;
    let var_1 = Struct_1(~global1.c, global1.b, vec3<i32>(~global1.a.x, -2147483647i, _wgslsmith_div_i32(u_input.a & -27754i, -_wgslsmith_mult_i32(global1.a.x, -28779i))));
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(5089u) | _wgslsmith_mod_u32(0u, u_input.b.x), 4294967295u), 5u)];
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = true;
    global1 = Struct_1(global1.c, vec4<bool>(true, true, true, all(!func_2(1198f, -344f, global1.b.x).b.xxw)), _wgslsmith_mult_vec3_i32(-global1.c, vec3<i32>(func_2(-176f, arg_0, global1.b.x).c.x, 46403i, global1.c.x)) | global1.a);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(1476f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1150f)))))) * _wgslsmith_f_op_f32(-arg_0)));
    let var_2 = true;
    var var_3 = vec3<i32>(_wgslsmith_div_i32(firstLeadingBit(func_2(_wgslsmith_f_op_f32(var_1.x * 600f), -917f, true).a.x), reverseBits(i32(-1i) * -2147483647i)), firstLeadingBit(((-2147483647i << (0u % 32u)) & global1.c.x) >> (abs(u_input.b.x) % 32u)), -1i >> ((~1u << (u_input.b.x % 32u)) % 32u));
    return -3805i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.a), vec2<i32>(global1.a.x, 2147483647i) | -vec2<i32>(-1i, u_input.c)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(375f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-758f, 1319f, global1.b.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1504f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1081f, 1102f, false)))), _wgslsmith_f_op_f32(977f * _wgslsmith_f_op_f32(f32(-1f) * -823f))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -299f) + -821f)), 1239f, !(func_1(vec4<i32>(global1.a.x, u_input.a, -2147483647i, -1i), global0[_wgslsmith_index_u32(73042u, 5u)], 47719i, vec3<bool>(true, global1.b.x, false)) && true)), vec4<i32>(func_3(346f), 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.x >> (1u % 32u), -44831i, countOneBits(0i), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.x, global1.c.x, -1i, 1i), vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a))), abs(vec4<i32>(u_input.c, 850i, global1.c.x, global1.a.x))), -(i32(-1i) * -global1.a.x)), !vec4<bool>(global1.b.x, true, true, true));
    global0 = array<Struct_1, 5>();
    var var_1 = var_0;
    let var_2 = -23807i;
    var var_3 = all(vec2<bool>(global1.b.x, global1.b.x & var_0.e.x));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(var_1.b.xwx, var_0.b.yzz)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.zxw), _wgslsmith_div_vec3_f32(vec3<f32>(1115f, -1469f, var_1.b.x), vec3<f32>(-284f, var_1.b.x, 897f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(316f, -2137f, var_0.b.x) - vec3<f32>(-521f, 727f, -1694f)))))) + var_0.b.yzw);
    var var_5 = Struct_2(countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, var_1.d.x), var_0.d.yz)), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(var_1.b.x + 401f), 351f, 261f), var_0.b), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2259f, 1301f, global1.b.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-933f, var_4.x)) + var_4.x)), 213f, true), _wgslsmith_mod_vec4_i32(-vec4<i32>(abs(global1.c.x), ~2147483647i, _wgslsmith_dot_vec4_i32(var_0.d, vec4<i32>(u_input.c, 41148i, u_input.c, u_input.c)), _wgslsmith_mult_i32(-3344i, -1i)), var_1.d), !vec4<bool>(select(func_2(-1392f, -650f, false).b.x, true, global1.b.x), all(!global1.b), _wgslsmith_f_op_f32(-1114f * -1288f) < _wgslsmith_f_op_f32(-var_4.x), all(vec2<bool>(false, true))));
    let var_6 = func_2(var_0.b.x, _wgslsmith_f_op_f32(1072f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-2305f, _wgslsmith_f_op_f32(var_4.x + -1177f)))))), var_5.e.x);
    global1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.b.x)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-254f, _wgslsmith_f_op_f32(var_4.x * var_0.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + var_0.b.x)), global1.b.x || false);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c.a.x & (abs(-2147483647i) & ~(1i | var_6.a.x)), var_1.b.x);
}

