struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-134f, Struct_1(false, vec4<f32>(-1000f, 508f, -561f, -748f), vec4<f32>(-1704f, 2786f, -277f, 1123f), vec4<f32>(-1278f, 457f, 1635f, 460f)), vec3<i32>(12200i, -1i, 0i));

var<private> global1: vec3<i32> = vec3<i32>(-1i, -1i, 67167i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> bool {
    var var_0 = vec3<bool>(true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1441f)))) != global0.b.b.x);
    let var_1 = _wgslsmith_f_op_f32(global0.a + -1139f);
    var var_2 = false;
    var_2 = true;
    let var_3 = !any(vec2<bool>(!(!global0.b.a), var_0.x));
    return var_0.x;
}

fn func_3() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1502f)));
    var var_1 = vec2<i32>(-1i) * -global0.c.zx;
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-global0.b.d.zzx), ~_wgslsmith_mult_vec3_u32(u_input.a.xzy, u_input.a.wyx), _wgslsmith_f_op_vec3_f32(trunc(global0.b.b.xwz)), (u_input.a.x > (u_input.a.x ^ u_input.a.x)) | true);
    var_0 = _wgslsmith_f_op_f32(-global0.a);
    var var_3 = ~2147483647i;
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1910f, _wgslsmith_f_op_f32(ceil(var_2.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.b.x) - _wgslsmith_f_op_f32(step(var_2.a.x, var_2.a.x))), var_2.c.x)), global0.b.d));
}

fn func_1() -> vec3<u32> {
    global0 = Struct_2(_wgslsmith_f_op_f32(floor(-213f)), Struct_1(global0.b.c.x == _wgslsmith_f_op_f32(select(2118f, _wgslsmith_f_op_f32(global0.a + global0.b.c.x), func_2())), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.b.c.x * 1518f), _wgslsmith_f_op_f32(abs(global0.b.b.x)), _wgslsmith_f_op_f32(min(290f, global0.a)), _wgslsmith_f_op_f32(-global0.b.d.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-142f)), _wgslsmith_f_op_f32(floor(333f)), _wgslsmith_f_op_f32(-global0.b.d.x), _wgslsmith_f_op_f32(global0.b.d.x * 632f))), _wgslsmith_f_op_vec4_f32(func_3())), vec3<i32>(-1i) * -(~(~u_input.b)));
    let var_0 = _wgslsmith_add_i32(1i, global1.x);
    var var_1 = ~abs(global0.c);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(min(global0.b.d.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-248f, 255f) + _wgslsmith_div_f32(global0.b.d.x, -3135f)))))), Struct_1(true, vec4<f32>(global0.b.c.x, _wgslsmith_f_op_vec4_f32(func_3()).x, global0.b.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -224f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.b.c, global0.b.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.b.c.x), _wgslsmith_f_op_f32(trunc(-756f)), global0.a, -404f))), _wgslsmith_mod_vec3_i32(~reverseBits(vec3<i32>(1i, 1i, u_input.b.x)), u_input.b));
    var var_3 = var_0;
    return vec3<u32>(56953u, ~(~(max(1u, u_input.a.x) & (u_input.a.x ^ 61040u))), 0u);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: Struct_3) -> bool {
    let var_0 = arg_1.x;
    global1 = -firstLeadingBit(global0.c);
    var var_1 = !(!select(!(!vec4<bool>(var_0, true, global0.b.a, true)), vec4<bool>(!global0.b.a, arg_2.d, true, false), !vec4<bool>(true, arg_2.d, false, arg_1.x)));
    var_1 = select(vec4<bool>(all(vec2<bool>(true, arg_2.b.x <= arg_2.b.x)), any(vec4<bool>(arg_1.x, true, arg_2.d, select(true, global0.b.a, arg_1.x))), !var_1.x, arg_2.b.x < arg_2.b.x), vec4<bool>(false, all(select(arg_1.yx, !arg_1.zy, arg_1.x)), var_1.x, true), global0.b.a & false);
    global1 = firstTrailingBit(-u_input.b);
    return any(select(vec4<bool>(_wgslsmith_f_op_f32(956f - arg_2.c.x) > _wgslsmith_f_op_f32(-global0.b.c.x), true, all(arg_1.yz) || any(arg_1.zx), all(arg_1)), vec4<bool>(!any(vec4<bool>(true, false, global0.b.a, var_1.x)), true, global0.c.x < abs(global1.x), false), vec4<bool>(arg_1.x && arg_2.d, var_0, !any(var_1.xx), 10790u > ~u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<i32>(_wgslsmith_dot_vec4_i32(~(abs(vec4<i32>(-1i, global0.c.x, 0i, u_input.b.x)) << (reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x)) % vec4<u32>(32u))), vec4<i32>(~(~42223i), global0.c.x, firstLeadingBit(global1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, global0.c.x, 0i, global1.x), ~vec4<i32>(u_input.b.x, global0.c.x, u_input.b.x, u_input.b.x)))), 39195i, select(global0.c.x & global0.c.x, u_input.b.x, func_4(vec3<f32>(global0.b.d.x, global0.b.b.x, _wgslsmith_f_op_f32(global0.b.c.x * global0.b.c.x)), vec3<bool>(global0.b.a, global0.b.a, global0.b.d.x > -1000f), Struct_3(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.b.d.x, global0.b.d.x, global0.b.b.x))), func_1(), vec3<f32>(974f, global0.a, 227f), global0.b.a))));
    var var_0 = u_input.a.ww;
    var var_1 = global0.b;
    var var_2 = _wgslsmith_div_u32(_wgslsmith_div_u32(~(~u_input.a.x >> (_wgslsmith_sub_u32(78430u, var_0.x) % 32u)), 1u), select(~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 69470u, u_input.a.x, u_input.a.x), vec4<u32>(70985u, 4294967295u, 4294967295u, 53280u)) | 1u), 0u, select(var_1.a, func_4(_wgslsmith_f_op_vec3_f32(ceil(global0.b.c.wzx)), vec3<bool>(true, false, true), Struct_3(vec3<f32>(global0.b.c.x, var_1.d.x, -1698f), vec3<u32>(12074u, var_0.x, var_0.x), vec3<f32>(-1510f, var_1.c.x, 1181f), false)), true)));
    var var_3 = firstLeadingBit(0i >> (var_0.x % 32u));
    var_0 = select(u_input.a.zw, select(u_input.a.zz, select(firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, var_0.x), vec2<u32>(u_input.a.x, u_input.a.x))), ~(u_input.a.yw >> (u_input.a.wz % vec2<u32>(32u))), true), vec2<bool>(_wgslsmith_f_op_f32(floor(var_1.c.x)) == _wgslsmith_f_op_f32(f32(-1f) * -1496f), false)), true);
    var var_4 = _wgslsmith_dot_vec3_u32(max(u_input.a.wxz, vec3<u32>(var_0.x, _wgslsmith_add_u32(~0u, ~4294967295u), 1u)), reverseBits(vec3<u32>(min(79008u, 1u), var_0.x, 11879u)));
    let var_5 = Struct_1((false && (true != any(vec2<bool>(var_1.a, true)))) & (-1i < ~u_input.b.x), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-391f)))), _wgslsmith_f_op_f32(floor(-1314f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - global0.b.c.x) - -423f)), _wgslsmith_f_op_f32(trunc(var_1.b.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1339f)) + _wgslsmith_f_op_f32(f32(-1f) * -2131f)), _wgslsmith_f_op_f32(step(var_1.b.x, _wgslsmith_f_op_f32(316f - 1000f))), -566f, var_1.c.x))), vec4<f32>(-1724f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * global0.b.b.x) + -347f))), 429f, 1030f));
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(5991u)), global1.zx, -countOneBits(vec4<i32>(global0.c.x, 59572i, select(2147483647i, -7415i, global0.b.a), max(u_input.b.x, 1i))));
}

