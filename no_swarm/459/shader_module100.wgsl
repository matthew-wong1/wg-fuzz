struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1534f, 257f, 1097f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: bool) -> vec3<bool> {
    global0 = arg_1.a.c.b.zwy;
    global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_1.a.c.b.yxz)));
    return !arg_1.a.c.d;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_2) -> vec3<i32> {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(-1003f, 348f), _wgslsmith_f_op_f32(step(global0.x, -1604f)), 361f), _wgslsmith_f_op_vec3_f32(-arg_2.c.b.zzx), func_3(vec2<bool>(false, true), Struct_4(Struct_2(vec2<i32>(u_input.b, arg_2.b.x), u_input.c.yw, arg_2.c)), true)))));
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.c.b.zzz * _wgslsmith_f_op_vec3_f32(floor(arg_2.c.b.wyz))) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2154f * arg_2.c.b.x), _wgslsmith_f_op_f32(1145f - arg_2.c.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + -1363f) * _wgslsmith_f_op_f32(select(1146f, arg_2.c.b.x, arg_2.c.d.x))), 1106f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.c.b.x), _wgslsmith_f_op_f32(floor(global0.x)), func_3(arg_2.c.d.yz, Struct_4(Struct_2(u_input.c.yw, vec2<i32>(39016i, u_input.b), Struct_1(u_input.b, vec4<f32>(-1343f, -110f, -1000f, 1699f), 0i, arg_2.c.d))), true).x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.x)), -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.b.x) - _wgslsmith_f_op_f32(-global0.x))))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-1261f * _wgslsmith_f_op_f32(arg_2.c.b.x - global0.x)), -1648f), _wgslsmith_f_op_vec3_f32(sign(arg_2.c.b.wxx))));
    var var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, 1u, 0u), vec3<u32>(arg_0.x, 4294967295u, 0u))), vec3<u32>(abs(arg_0.x), arg_1, 0u)), max(firstTrailingBit(firstTrailingBit(vec3<u32>(4294967295u, arg_0.x, 21021u))), reverseBits(firstLeadingBit(vec3<u32>(arg_1, 1u, arg_1))))), _wgslsmith_mult_vec3_u32(select(vec3<u32>(_wgslsmith_sub_u32(85345u, arg_1), arg_1, arg_1), ~vec3<u32>(arg_1, arg_1, 86469u) >> (max(vec3<u32>(arg_0.x, 105286u, 26118u), vec3<u32>(arg_1, arg_0.x, arg_0.x)) % vec3<u32>(32u)), all(arg_2.c.d.zy)), _wgslsmith_mult_vec3_u32(max(vec3<u32>(arg_1, arg_0.x, arg_0.x) >> (vec3<u32>(arg_0.x, 0u, 0u) % vec3<u32>(32u)), select(vec3<u32>(13878u, 10987u, 1u), vec3<u32>(104119u, 34038u, 58964u), vec3<bool>(true, arg_2.c.d.x, false))), ~(~vec3<u32>(arg_1, 4294967295u, arg_1)))));
    var var_1 = true;
    return u_input.c.yzw;
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> vec3<i32> {
    global0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -972f), _wgslsmith_f_op_f32(-global0.x))))));
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.x + 990f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(591f, -977f, 520f) - vec3<f32>(766f, -1000f, global0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 1000f) - vec3<f32>(243f, -1348f, -479f)))))));
    var var_0 = _wgslsmith_dot_vec3_i32((_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-1i, u_input.b, u_input.c.x)) | ~vec3<i32>(u_input.b, u_input.b, 1i)) | vec3<i32>(abs(u_input.b), ~17307i, u_input.a & u_input.c.x), (vec3<i32>(u_input.b, u_input.b, 1i) << (~vec3<u32>(arg_1.x, 0u, 54287u) % vec3<u32>(32u))) ^ select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-38035i, -2014i, 0i), u_input.c.xzw, u_input.c.wyy), func_2(vec2<u32>(4294967295u, 33880u), 1u, Struct_2(u_input.c.wz, vec2<i32>(-2147483647i, -37266i), Struct_1(30088i, vec4<f32>(-1147f, global0.x, 1000f, 1000f), u_input.a, vec3<bool>(false, false, false)))), true)) | u_input.b;
    let var_1 = max(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c.x << (arg_0 % 32u), i32(-1i) * -62079i), vec2<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(-2147483647i, -1i)))), abs(u_input.c.wx));
    var var_2 = 20435u;
    return vec3<i32>(-var_1.x, var_1.x, _wgslsmith_add_i32(~var_1.x, 28599i));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: vec4<bool>) -> Struct_4 {
    let var_0 = arg_2.a.c;
    var var_1 = _wgslsmith_f_op_vec3_f32(arg_2.a.c.b.yxw + var_0.b.wzx);
    var_1 = _wgslsmith_div_vec3_f32(arg_2.a.c.b.zxz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_0.b.x, 253f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1300f, global0.x)) + _wgslsmith_f_op_vec3_f32(step(var_0.b.xxw, var_0.b.zyx)))) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_0.b.wyz, _wgslsmith_f_op_vec3_f32(vec3<f32>(1136f, -273f, arg_2.a.c.b.x) + vec3<f32>(var_0.b.x, 1080f, 1213f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(var_0.b.ywz)))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(483f)))))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - arg_2.a.c.b.x) - 1405f), 544f, var_2);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, -828f), vec3<f32>(global0.x, -1896f, 1000f));
    var var_0 = func_4(~(~(-u_input.c.xyy & func_1(47138u, vec2<u32>(4294967295u, 18011u)))), vec4<i32>(-1i) * -(_wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(-13110i, 42111i, -1i, 2147483647i)) & reverseBits(u_input.c)), Struct_4(Struct_2(~u_input.c.yx << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), ~u_input.c.yz, Struct_1(u_input.c.x, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(345f, 925f, global0.x, -831f))), -u_input.a, vec3<bool>(true, true, false)))), vec4<bool>(true, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c.x, -2147483647i), min(vec2<i32>(u_input.a, 8369i), vec2<i32>(u_input.a, -3645i))) < _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a, u_input.b, 2147483647i), -8425i), all(vec4<bool>(true, true, true, true)), true));
    var var_1 = var_0.a.c.c;
    var_0 = func_4(u_input.c.wwy, _wgslsmith_mod_vec4_i32(vec4<i32>(-_wgslsmith_clamp_i32(20960i, 18141i, 2147483647i), -max(var_0.a.a.x, var_0.a.a.x), _wgslsmith_dot_vec3_i32(func_2(vec2<u32>(121841u, 62016u), 4294967295u, var_0.a), ~u_input.c.wwz), _wgslsmith_mod_i32(6232i, 2147483647i)), vec4<i32>(u_input.b, var_0.a.a.x, -2147483647i, _wgslsmith_clamp_i32(u_input.b, ~(-16231i), ~var_0.a.c.c))), func_4(u_input.c.zxw, _wgslsmith_add_vec4_i32(-_wgslsmith_sub_vec4_i32(u_input.c, u_input.c), _wgslsmith_mult_vec4_i32(vec4<i32>(62736i, var_0.a.a.x, u_input.a, u_input.c.x), vec4<i32>(var_0.a.b.x, u_input.a, 2147483647i, 1i))), func_4(vec3<i32>(firstTrailingBit(-2147483647i), -2147483647i, _wgslsmith_sub_i32(-1i, var_0.a.b.x)), u_input.c, func_4(-u_input.c.zxz, firstTrailingBit(u_input.c), func_4(vec3<i32>(1044i, var_0.a.b.x, 2147483647i), vec4<i32>(2147483647i, u_input.c.x, u_input.a, u_input.a), Struct_4(Struct_2(vec2<i32>(2147483647i, 1i), vec2<i32>(u_input.b, -55634i), var_0.a.c)), vec4<bool>(false, false, var_0.a.c.d.x, true)), select(vec4<bool>(true, false, var_0.a.c.d.x, var_0.a.c.d.x), vec4<bool>(var_0.a.c.d.x, false, true, false), var_0.a.c.d.x)), !select(vec4<bool>(var_0.a.c.d.x, false, false, var_0.a.c.d.x), vec4<bool>(true, var_0.a.c.d.x, false, false), true)), select(!(!vec4<bool>(true, var_0.a.c.d.x, true, var_0.a.c.d.x)), !select(vec4<bool>(var_0.a.c.d.x, var_0.a.c.d.x, true, var_0.a.c.d.x), vec4<bool>(var_0.a.c.d.x, var_0.a.c.d.x, true, false), vec4<bool>(var_0.a.c.d.x, var_0.a.c.d.x, true, var_0.a.c.d.x)), vec4<bool>(true, false, false, true))), !select(select(vec4<bool>(var_0.a.c.d.x, var_0.a.c.d.x, var_0.a.c.d.x, true), !vec4<bool>(var_0.a.c.d.x, false, false, var_0.a.c.d.x), !vec4<bool>(var_0.a.c.d.x, var_0.a.c.d.x, var_0.a.c.d.x, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, !var_0.a.c.d.x, func_3(vec2<bool>(var_0.a.c.d.x, var_0.a.c.d.x), Struct_4(Struct_2(var_0.a.b, vec2<i32>(0i, 0i), var_0.a.c)), var_0.a.c.d.x).x, var_0.a.c.d.x)));
    var_1 = _wgslsmith_add_i32(~2147483647i, _wgslsmith_sub_i32(1i, u_input.b));
    let var_2 = func_4(-min(u_input.c.www, vec3<i32>(var_0.a.c.a, var_0.a.a.x, var_0.a.c.c) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), (vec4<i32>(_wgslsmith_add_i32(1i, var_0.a.b.x), ~var_0.a.a.x, _wgslsmith_dot_vec2_i32(u_input.c.yz, u_input.c.xw), func_4(u_input.c.yzy, vec4<i32>(u_input.c.x, var_0.a.b.x, 0i, u_input.c.x), Struct_4(Struct_2(var_0.a.b, vec2<i32>(var_0.a.c.a, 0i), var_0.a.c)), vec4<bool>(true, var_0.a.c.d.x, var_0.a.c.d.x, false)).a.a.x) ^ _wgslsmith_mult_vec4_i32(-u_input.c, u_input.c)) | vec4<i32>(1i, u_input.c.x, min(-u_input.b, func_2(vec2<u32>(43100u, 1u), 4294967295u, Struct_2(vec2<i32>(u_input.c.x, 18933i), vec2<i32>(var_0.a.c.c, -2147483647i), Struct_1(var_0.a.c.c, vec4<f32>(var_0.a.c.b.x, var_0.a.c.b.x, 950f, 416f), var_0.a.c.c, vec3<bool>(true, var_0.a.c.d.x, false)))).x), u_input.a), func_4(vec3<i32>(u_input.a, var_0.a.a.x, var_0.a.b.x | var_0.a.a.x) & u_input.c.zyz, u_input.c, Struct_4(func_4(u_input.c.wxy, u_input.c, Struct_4(var_0.a), !vec4<bool>(false, var_0.a.c.d.x, var_0.a.c.d.x, false)).a), select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, var_0.a.c.d.x, false), vec4<bool>(var_0.a.c.d.x, var_0.a.c.d.x, var_0.a.c.d.x, false)), !vec4<bool>(true, true, var_0.a.c.d.x, false), all(var_0.a.c.d.yx)), vec4<bool>(false, var_0.a.c.d.x, false, true), true & all(var_0.a.c.d))), vec4<bool>(var_0.a.c.d.x, var_0.a.c.d.x, var_0.a.c.d.x != (var_0.a.c.d.x & true), true)).a.c.b.x;
    var_0 = func_4(~(vec3<i32>(-94059i, firstTrailingBit(11430i), i32(-1i) * -2147483647i) | u_input.c.zyw), u_input.c, func_4(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, 5622i, -42347i) << (vec3<u32>(0u, 31166u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(-1i, u_input.a, 24682i)), vec4<i32>(-1i | u_input.b, func_2(abs(vec2<u32>(30784u, 43577u)), reverseBits(74419u), func_4(vec3<i32>(-15928i, var_0.a.a.x, 1i), u_input.c, Struct_4(Struct_2(vec2<i32>(-2147483647i, u_input.a), u_input.c.xy, Struct_1(u_input.c.x, vec4<f32>(var_2, global0.x, var_2, var_0.a.c.b.x), -2147483647i, vec3<bool>(var_0.a.c.d.x, var_0.a.c.d.x, true)))), vec4<bool>(false, false, var_0.a.c.d.x, var_0.a.c.d.x)).a).x, -_wgslsmith_sub_i32(var_0.a.a.x, var_0.a.a.x), _wgslsmith_dot_vec3_i32(u_input.c.xww, _wgslsmith_clamp_vec3_i32(u_input.c.yxw, u_input.c.yxw, u_input.c.wxw))), func_4(u_input.c.xyz, vec4<i32>(var_0.a.b.x >> (0u % 32u), ~u_input.b, -7141i, firstTrailingBit(u_input.a)), func_4(u_input.c.wzy >> (vec3<u32>(51700u, 89522u, 22101u) % vec3<u32>(32u)), min(u_input.c, vec4<i32>(35618i, u_input.a, var_0.a.a.x, var_0.a.c.c)), Struct_4(var_0.a), select(vec4<bool>(var_0.a.c.d.x, true, false, true), vec4<bool>(var_0.a.c.d.x, true, var_0.a.c.d.x, var_0.a.c.d.x), true)), !vec4<bool>(var_0.a.c.d.x, true, var_0.a.c.d.x, var_0.a.c.d.x)), !select(!vec4<bool>(false, true, true, var_0.a.c.d.x), !vec4<bool>(var_0.a.c.d.x, var_0.a.c.d.x, var_0.a.c.d.x, true), true)), !vec4<bool>(any(vec2<bool>(var_0.a.c.d.x, true)), any(!vec2<bool>(var_0.a.c.d.x, var_0.a.c.d.x)), !(!var_0.a.c.d.x), all(vec2<bool>(var_0.a.c.d.x, var_0.a.c.d.x))));
    var var_3 = func_4(vec3<i32>(-((-8815i >> (1u % 32u)) ^ ~var_0.a.c.c), _wgslsmith_add_i32(var_0.a.c.c, 1i), min(var_0.a.a.x, u_input.b)), vec4<i32>(1i, u_input.b, -7201i, ~_wgslsmith_div_i32(_wgslsmith_mod_i32(var_0.a.a.x, var_0.a.c.a), ~(-9051i))), func_4(u_input.c.wzw, select(u_input.c, firstLeadingBit(abs(u_input.c)), var_0.a.c.d.x), Struct_4(func_4(-vec3<i32>(var_0.a.c.a, -30365i, 11199i), vec4<i32>(29639i, -18034i, 10764i, -19204i), Struct_4(var_0.a), select(vec4<bool>(false, true, var_0.a.c.d.x, var_0.a.c.d.x), vec4<bool>(false, false, var_0.a.c.d.x, false), true)).a), select(vec4<bool>(true, all(vec4<bool>(false, true, false, true)), true, true), !vec4<bool>(false, var_0.a.c.d.x, false, var_0.a.c.d.x), vec4<bool>(var_0.a.c.d.x, all(vec4<bool>(false, var_0.a.c.d.x, false, var_0.a.c.d.x)), global0.x >= 956f, true))), vec4<bool>(select(var_0.a.c.d.x, var_0.a.c.d.x, var_0.a.c.d.x) && func_3(var_0.a.c.d.yx, Struct_4(Struct_2(var_0.a.a, var_0.a.a, Struct_1(var_0.a.a.x, vec4<f32>(-224f, var_2, var_0.a.c.b.x, -460f), 1i, vec3<bool>(false, true, var_0.a.c.d.x)))), false).x, !all(var_0.a.c.d) != var_0.a.c.d.x, false, var_0.a.c.d.x)).a.c;
    let var_4 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_4, 0u, var_4, 30593u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_4, 45465u, var_4, 1u), vec4<u32>(var_4, 43291u, var_4, var_4))), max(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_4, 17116u, 14444u), vec4<u32>(var_4, var_4, 8540u, var_4)), vec4<u32>(var_4, var_4, var_4, 18208u) >> (vec4<u32>(var_4, var_4, 35786u, var_4) % vec4<u32>(32u)))) << (~min(_wgslsmith_dot_vec4_u32(vec4<u32>(var_4, var_4, var_4, var_4), vec4<u32>(var_4, 49156u, 1u, var_4)), ~0u) % 32u), _wgslsmith_div_f32(-871f, _wgslsmith_f_op_f32(global0.x + -268f)), -1265f, _wgslsmith_dot_vec4_i32(u_input.c, _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(u_input.c, select(vec4<i32>(var_0.a.b.x, var_0.a.a.x, var_0.a.a.x, var_3.a), u_input.c, vec4<bool>(var_0.a.c.d.x, var_0.a.c.d.x, var_3.d.x, false))), -(~u_input.c))));
}

