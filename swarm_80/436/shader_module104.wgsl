struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: f32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(max(541f, arg_0.b.a));
    let var_1 = arg_0;
    let var_2 = arg_1;
    let var_3 = firstTrailingBit(~vec4<u32>(~_wgslsmith_mod_u32(var_1.b.c.x, 1u), ~arg_0.c.c.x, max(~global0.b.c.x, 1568u), var_2.c.c.x));
    global0 = arg_1;
    return vec4<bool>(true, true, select(true, true, !all(vec4<bool>(false, var_2.c.b, false, arg_0.c.b))), false);
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<bool>) -> i32 {
    let var_0 = abs(global0.b.c);
    global0 = Struct_2(vec4<i32>(arg_0, _wgslsmith_add_i32(countOneBits(global0.a.x), _wgslsmith_mult_i32(1957i, global1.x)), -24294i, arg_0), Struct_1(-2113f, arg_2.x, ~(~vec4<u32>(39262u, global0.c.c.x, 30471u, var_0.x))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.a - _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(floor(1009f))), !any(vec3<bool>(global0.b.b, true, arg_2.x)), vec4<u32>(u_input.d, ~(~1u), abs(8033u), ~u_input.c.x)));
    var var_1 = global1.x;
    global1 = u_input.b.xx;
    let var_2 = vec3<bool>(global0.c.b, any(select(arg_2, func_3(Struct_2(vec4<i32>(68348i, arg_0, 1i, global1.x), Struct_1(132f, global0.c.b, vec4<u32>(0u, global0.b.c.x, var_0.x, 4294967295u)), Struct_1(arg_1.x, true, var_0)), Struct_2(global0.a, global0.b, global0.b), _wgslsmith_f_op_f32(min(arg_1.x, global0.c.a)), 933f), global0.b.b)), arg_2.x);
    return abs(-(arg_0 & _wgslsmith_mod_i32(arg_0, 0i)));
}

fn func_4(arg_0: vec3<i32>, arg_1: f32) -> vec2<i32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(798f - -352f), _wgslsmith_f_op_f32(-global0.b.a), 1f);
    global1 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32((arg_0.x | global1.x) ^ (u_input.a ^ 2147483647i), 9274i), -9116i), vec2<i32>(global1.x, reverseBits(global0.a.x)));
    let var_1 = 1231f;
    let var_2 = global0.b.a;
    var var_3 = global0.b;
    return ~abs(~vec2<i32>(countOneBits(-15156i), 13015i));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2) -> vec3<f32> {
    var var_0 = vec2<u32>(abs(global0.c.c.x), ~82156u);
    global1 = func_4(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(func_2(arg_1.a.x, vec3<f32>(arg_1.b.a, global0.b.a, 229f), vec4<bool>(global0.b.b, true, false, global0.b.b)), -global0.a.x, -1i), -vec3<i32>(1i, -2147483647i, 0i)), vec3<i32>(u_input.a, ~reverseBits(-33168i), -1i)), _wgslsmith_f_op_f32(round(global0.b.a)));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b.a, arg_1.c.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.c.a, _wgslsmith_f_op_f32(abs(global0.b.a)))))), _wgslsmith_div_f32(233f, global0.c.a)));
    var var_2 = firstTrailingBit(u_input.c.xwz);
    var_2 = u_input.c.zyw;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.a, 1292f, _wgslsmith_f_op_f32(-1570f + global0.b.a)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.a, arg_1.c.a, arg_1.b.a)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1), 1355f, _wgslsmith_f_op_f32(-global0.c.a))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 647f, -128f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-479f, arg_1.b.a, 807f))), all(vec4<bool>(false, true, arg_1.b.b, global0.c.b)))) + vec3<f32>(_wgslsmith_f_op_f32(105f - arg_1.c.a), _wgslsmith_f_op_f32(global0.c.a - var_1), -484f))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    let var_0 = vec3<bool>(!any(!(!vec4<bool>(global0.c.b, arg_2.b, true, true))), arg_2.b, func_3(Struct_2(vec4<i32>(u_input.b.x & global0.a.x, i32(-1i) * -2147483647i, -56789i, arg_1.a.x | global1.x), Struct_1(_wgslsmith_f_op_f32(step(global0.b.a, 572f)), !global0.c.b, u_input.c), Struct_1(-659f, all(vec4<bool>(arg_2.b, true, true, arg_1.c.b)), _wgslsmith_div_vec4_u32(global0.c.c, u_input.c))), arg_1, 876f, _wgslsmith_f_op_f32(-arg_0.x)).x);
    var var_1 = arg_1.a.x;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(sign(arg_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2200f, _wgslsmith_f_op_f32(max(654f, arg_2.a))))));
    var var_3 = arg_1;
    var_3 = Struct_2(vec4<i32>(-1i << (0u % 32u), func_2(var_3.a.x, vec3<f32>(_wgslsmith_f_op_f32(-var_3.c.a), _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_div_f32(-821f, -436f)), select(select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(arg_2.b, false, global0.b.b, true), vec4<bool>(true, false, false, true)), !vec4<bool>(false, true, global0.c.b, global0.c.b), arg_1.b.b)), abs(var_3.a.x), 0i), arg_1.c, arg_2);
    return Struct_2(-arg_1.a ^ (select(vec4<i32>(global0.a.x, 1i, arg_1.a.x, global1.x), abs(vec4<i32>(-6128i, -1i, global0.a.x, global0.a.x)), !vec4<bool>(global0.b.b, arg_1.b.b, arg_1.b.b, arg_1.c.b)) << (_wgslsmith_div_vec4_u32(~vec4<u32>(global0.c.c.x, 0u, 34597u, arg_1.b.c.x), select(vec4<u32>(1u, 4294967295u, global0.b.c.x, 39311u), vec4<u32>(28859u, u_input.c.x, 86501u, 0u), arg_2.b)) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(-arg_1.b.a), any(select(!vec4<bool>(true, true, var_0.x, var_3.b.b), select(vec4<bool>(global0.c.b, true, arg_1.b.b, arg_1.b.b), vec4<bool>(var_0.x, true, false, false), vec4<bool>(false, var_3.b.b, var_3.c.b, false)), !var_3.b.b)), u_input.c & reverseBits(min(arg_1.b.c, arg_2.c))), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-338f, global0.c.a)), _wgslsmith_f_op_f32(-global0.c.a))));
    var var_1 = u_input.b.x != countOneBits(reverseBits(1i ^ ~u_input.b.x));
    global0 = func_5(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_div_vec4_i32(global0.a, -vec4<i32>(u_input.a, global1.x, global0.a.x, -32758i)), Struct_2(firstTrailingBit(global0.a), global0.c, global0.c))), Struct_2(vec4<i32>(_wgslsmith_sub_i32(2147483647i, 50210i), 2147483647i, _wgslsmith_sub_i32(global1.x, 27724i), _wgslsmith_mod_i32(u_input.b.x, 5864i)) & global0.a, global0.c, Struct_1(global0.c.a, any(vec4<bool>(true, global0.b.b, true, false)), u_input.c)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -661f), false, u_input.c));
    var_1 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-621f, 413f, 1957f), vec3<f32>(global0.b.a, global0.c.a, 1000f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.a, global0.b.a, 773f))))), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(610f, 1204f, -295f)) - vec3<f32>(global0.b.a, -542f, global0.b.a)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(global0.a, Struct_2(vec4<i32>(global0.a.x, global1.x, global1.x, global0.a.x), global0.c, Struct_1(global0.b.a, true, vec4<u32>(29463u, 92108u, global0.b.c.x, global0.c.c.x))))))), func_5(vec3<f32>(-1945f, -1169f, _wgslsmith_f_op_f32(global0.c.a * 1062f)), func_5(_wgslsmith_div_vec3_f32(vec3<f32>(global0.c.a, global0.b.a, global0.c.a), vec3<f32>(global0.b.a, 485f, -1788f)), Struct_2(vec4<i32>(18228i, global0.a.x, global0.a.x, -2147483647i), Struct_1(321f, global0.c.b, global0.c.c), global0.b), Struct_1(1000f, global0.b.b, global0.b.c)), Struct_1(global0.b.a, !global0.c.b, _wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 4294967295u, 0u, 1u)))), func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.a, 1000f, global0.b.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1493f, global0.c.a, -1134f) * vec3<f32>(-1351f, global0.b.a, global0.b.a))), func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(1304f, -1524f, global0.b.a) - vec3<f32>(global0.b.a, global0.c.a, global0.c.a)), Struct_2(global0.a, global0.c, global0.c), global0.b), global0.c).c), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(116f, global0.b.a, global0.b.a) * vec3<f32>(-381f, 402f, global0.c.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.a, -371f, -467f)))), func_5(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -225f), 416f, 520f), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.a, 365f, 1000f)), func_5(vec3<f32>(global0.c.a, global0.c.a, -1000f), Struct_2(global0.a, Struct_1(-102f, global0.c.b, vec4<u32>(1u, 0u, global0.c.c.x, global0.c.c.x)), Struct_1(-1000f, false, vec4<u32>(global0.b.c.x, global0.c.c.x, u_input.d, u_input.d))), global0.b), global0.b), Struct_1(-118f, global0.c.b, _wgslsmith_mod_vec4_u32(u_input.c, global0.c.c))), Struct_1(1000f, all(vec3<bool>(false, global0.c.b, true)), (vec4<u32>(global0.c.c.x, global0.c.c.x, 34558u, global0.c.c.x) & vec4<u32>(1u, u_input.d, u_input.c.x, 0u)) | vec4<u32>(u_input.d, 52271u, global0.c.c.x, global0.c.c.x))).b).c.b;
    let var_2 = !(global0.a.x != -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-477f - 594f))) + _wgslsmith_f_op_f32(round(global0.c.a))), 5870u, vec4<f32>(_wgslsmith_f_op_f32(max(115f, func_5(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.c.a, global0.c.a, global0.b.a), vec3<f32>(698f, global0.b.a, global0.b.a))), func_5(vec3<f32>(-1842f, -866f, global0.c.a), Struct_2(global0.a, global0.c, global0.b), global0.c), Struct_1(-347f, var_2, vec4<u32>(global0.b.c.x, global0.c.c.x, u_input.d, global0.c.c.x))).c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.c.a + -252f), 1456f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2515f - _wgslsmith_f_op_f32(f32(-1f) * -1926f))), global0.c.a), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1075f * _wgslsmith_f_op_f32(f32(-1f) * -616f)), global0.c.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.a) * 271f), _wgslsmith_f_op_f32(1227f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(583f + 1271f))))));
}

