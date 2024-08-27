struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_1 = Struct_1(-9102i, vec4<f32>(-259f, 435f, 654f, -1000f), 54006i, vec4<u32>(37957u, 4294967295u, 2787u, 16328u), -1i);

var<private> global2: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(-3600i, -38072i, 11283i, 10745i), vec4<i32>(-1i, 2679i, 0i, 36760i), vec4<i32>(-1i, -1i, 21991i, -1i), vec4<i32>(21459i, -65488i, 2147483647i, 1i), vec4<i32>(-1i, 0i, 5060i, -25685i), vec4<i32>(-13058i, -30387i, 0i, 4215i), vec4<i32>(-26320i, 22545i, -1i, -1i), vec4<i32>(-6454i, i32(-2147483648), i32(-2147483648), 11866i), vec4<i32>(2147483647i, 0i, 2147483647i, -24976i), vec4<i32>(1i, -25052i, 43480i, -1i), vec4<i32>(-33804i, 3461i, 0i, -64141i), vec4<i32>(2147483647i, 7189i, 1i, -4645i), vec4<i32>(1i, -25176i, i32(-2147483648), 2147483647i), vec4<i32>(i32(-2147483648), 2147483647i, 1i, 1i), vec4<i32>(-1i, 1i, 1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 0i, 2147483647i, 0i), vec4<i32>(i32(-2147483648), -5484i, -20289i, 2147483647i), vec4<i32>(11516i, i32(-2147483648), -1i, -878i), vec4<i32>(1i, 0i, 19063i, 11242i), vec4<i32>(0i, -1i, 0i, -1i), vec4<i32>(i32(-2147483648), 41334i, i32(-2147483648), -3423i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_1) -> i32 {
    global1 = Struct_1(_wgslsmith_dot_vec2_i32(global0.xz, ~(abs(vec2<i32>(global0.x, 13854i)) ^ u_input.a.xx)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1348f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.b.x), 263f), arg_1.a) - global1.b), -2147483647i, arg_2.d, ~reverseBits(global1.c));
    global0 = ~firstLeadingBit(~_wgslsmith_sub_vec3_i32(abs(vec3<i32>(-1i, arg_2.a, arg_2.e)), ~u_input.d.xzx));
    var var_0 = arg_2;
    let var_1 = Struct_1(u_input.d.x, _wgslsmith_f_op_vec4_f32(-var_0.b), 0i, ~countOneBits(vec4<u32>(64364u, 4294967295u, ~28455u, global1.d.x ^ 1u)), min(firstTrailingBit(arg_2.a), -2147483647i));
    global2 = array<vec4<i32>, 21>();
    return global1.c;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: i32) -> Struct_2 {
    let var_0 = arg_1;
    var var_1 = Struct_2(_wgslsmith_mult_u32(global1.d.x, _wgslsmith_sub_u32(4294967295u, u_input.c)), vec2<bool>(any(vec4<bool>(true, true, all(vec2<bool>(false, var_0.b.x)), all(vec4<bool>(arg_0, false, arg_1.b.x, arg_0)))), var_0.c <= ~u_input.b.x), u_input.b.x);
    let var_2 = select(vec2<i32>(43465i << ((u_input.b.x << (0u % 32u)) % 32u), func_3(vec2<u32>(30675u, var_0.c), Struct_3(arg_2.x, var_0), Struct_1(global0.x, global1.b, 0i, vec4<u32>(15978u, u_input.b.x, 0u, 12547u), -37050i))), u_input.a.zw, true) ^ vec2<i32>(global0.x, ~9567i);
    var var_3 = Struct_3(1000f, arg_1);
    var var_4 = ~_wgslsmith_div_vec2_i32(min(vec2<i32>(abs(var_2.x), arg_3), u_input.d.yz), var_2);
    return var_3.b;
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: bool) -> f32 {
    let var_0 = vec3<bool>(true, arg_3, all(vec3<bool>(arg_2.b.x, !arg_0, !arg_3)) || arg_2.b.x);
    global2 = array<vec4<i32>, 21>();
    global1 = Struct_1(~select(u_input.e, 9522i, any(vec4<bool>(arg_2.b.x, false, var_0.x, arg_2.b.x))), global1.b, global0.x & 0i, global1.d, select(-(~(~28036i)), ~(_wgslsmith_mod_i32(u_input.d.x, global1.e) << (global1.d.x % 32u)), !all(vec2<bool>(arg_3, true))));
    let var_1 = arg_2.b;
    global0 = abs(-vec3<i32>(global1.a, global0.x, -global1.a | abs(1i)));
    return -2679f;
}

fn func_1() -> Struct_2 {
    var var_0 = vec3<bool>(all(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false)), true)) | true, _wgslsmith_f_op_f32(func_4(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(914f, -133f, global1.b.x) - global1.b.yww) * _wgslsmith_f_op_vec3_f32(global1.b.xwz - vec3<f32>(global1.b.x, global1.b.x, global1.b.x))), func_2(true, Struct_2(0u, vec2<bool>(true, true), u_input.c), global1.b.yyy, _wgslsmith_mult_i32(-25364i, 0i)), !select(true, false, true))) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x - global1.b.x) - _wgslsmith_div_f32(global1.b.x, global1.b.x)))), false);
    global1 = Struct_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(min(global1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global1.b)))))), global0.x, _wgslsmith_div_vec4_u32(min(vec4<u32>(global1.d.x, 38217u, 0u, ~u_input.c), _wgslsmith_div_vec4_u32(max(vec4<u32>(u_input.b.x, global1.d.x, u_input.c, 1u), vec4<u32>(u_input.c, u_input.c, u_input.b.x, global1.d.x)), vec4<u32>(global1.d.x, u_input.c, u_input.b.x, 87450u))), abs(global1.d)), u_input.a.x << (((global1.d.x >> (~u_input.b.x % 32u)) & (firstLeadingBit(0u) << (_wgslsmith_mod_u32(global1.d.x, u_input.b.x) % 32u))) % 32u));
    var_0 = vec3<bool>(true, !all(vec3<bool>(true, true & var_0.x, var_0.x & var_0.x)), 582f == _wgslsmith_f_op_f32(-global1.b.x));
    global2 = array<vec4<i32>, 21>();
    return func_2(all(select(select(vec3<bool>(false, true, var_0.x), !vec3<bool>(var_0.x, var_0.x, false), u_input.b.x >= u_input.c), !vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, true))), func_2(!var_0.x, func_2(false, Struct_2(_wgslsmith_mod_u32(global1.d.x, 31202u), func_2(false, Struct_2(u_input.b.x, var_0.zx, u_input.c), global1.b.yww, 17430i).b, u_input.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.b.x, -336f, -678f)))), -2147483647i), global1.b.wwy, -1i), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(global1.b.wwz, _wgslsmith_f_op_vec3_f32(global1.b.xzy * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-676f, -901f, -765f), global1.b.zyz, vec3<bool>(var_0.x, true, false)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1.b.ywy, global1.b.zzw) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.b.x, global1.b.x, global1.b.x)))))), _wgslsmith_sub_i32(reverseBits(~29009i), ~firstTrailingBit(i32(-1i) * -52621i)));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(reverseBits(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(22459i, global1.a, u_input.e, global0.x)), u_input.e)) ^ global1.e, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.x)), 1383f, _wgslsmith_f_op_f32(func_4(true, vec3<f32>(arg_0.x, arg_0.x, arg_1.x), arg_2, true)), arg_0.x) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.x, -1000f, arg_0.x, arg_1.x), vec4<f32>(-1118f, -1284f, -1000f, arg_1.x))), _wgslsmith_f_op_vec4_f32(-arg_1)))), global1.b), ~(-22265i), global1.d, global0.x);
    var_0 = Struct_1(_wgslsmith_div_i32(firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_mult_i32(global0.x, var_0.c), _wgslsmith_add_i32(global1.e, global0.x))), global1.e), global1.b, u_input.d.x, global1.d, ~2147483647i);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1004f);
    var var_2 = Struct_2(_wgslsmith_div_u32(func_1().c, _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(101374u, 34523u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, arg_2.a), global1.d), var_0.d.x), 1u)), vec2<bool>(false, !(arg_1.x > -1636f) || false), _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(584u, 37837u, global1.d.x)) >> (reverseBits(reverseBits(vec3<u32>(37963u, 70365u, 33500u))) % vec3<u32>(32u)), ~(~abs(global1.d.xxx))));
    let var_3 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(34680u, ~global1.d.x, ~4294967295u), select(var_0.d.wxw, var_0.d.zxz, any(var_2.b))), _wgslsmith_div_vec3_u32(global1.d.wyx, ~_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.a, 10668u, u_input.c), var_0.d.yxw) >> (~_wgslsmith_clamp_vec3_u32(global1.d.wxz, global1.d.zxw, var_0.d.yzx) % vec3<u32>(32u))));
    return func_1();
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> vec2<u32> {
    global2 = array<vec4<i32>, 21>();
    global2 = array<vec4<i32>, 21>();
    let var_0 = ~(~(abs(vec4<u32>(1u, global1.d.x, 13847u, 9793u)) | vec4<u32>(48204u, 68700u, arg_1.c, u_input.c)) & global1.d);
    let var_1 = 1125f;
    let var_2 = _wgslsmith_dot_vec3_i32(~abs(select(vec3<i32>(2147483647i, 9420i, u_input.a.x) & u_input.a.xww, vec3<i32>(-1i, u_input.a.x, u_input.e), arg_1.b.x | true)), -(vec3<i32>(-1i) * -vec3<i32>(global0.x, 1i, -1i)));
    return u_input.b;
}

fn func_7(arg_0: f32, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_2 {
    global2 = array<vec4<i32>, 21>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-global1.b.x), arg_1.b);
    let var_1 = arg_1.b;
    return func_5(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(global1.b.zw, _wgslsmith_f_op_vec2_f32(round(global1.b.yy)))))), vec4<f32>(arg_0, -145f, _wgslsmith_f_op_f32(floor(496f)), _wgslsmith_f_op_f32(round(global1.b.x))), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    var var_1 = i32(-1i) * -(~(~1i));
    var var_2 = func_7(352f, Struct_3(-157f, Struct_2(abs(~46974u), vec2<bool>(true, false), 96304u)), func_6(30844u, func_5(_wgslsmith_f_op_vec2_f32(-global1.b.zz), global1.b, func_1()), Struct_1(-1i, global1.b, abs(-1i), ~max(vec4<u32>(0u, global1.d.x, 6002u, 1u), global1.d), -func_3(vec2<u32>(24968u, global1.d.x), Struct_3(global1.b.x, Struct_2(u_input.b.x, vec2<bool>(false, false), 4294967295u)), Struct_1(global0.x, vec4<f32>(-933f, 829f, global1.b.x, global1.b.x), u_input.a.x, vec4<u32>(0u, 1u, var_0, 31460u), 1i)))));
    let var_3 = global1.d.x;
    var var_4 = Struct_1(2147483647i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-212f, global1.b.x, global1.b.x, -1000f))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * global1.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.b.x, 1318f), _wgslsmith_f_op_f32(select(1296f, -1269f, true)))), _wgslsmith_f_op_f32(-1112f * _wgslsmith_f_op_f32(abs(global1.b.x))), global1.b.x)), _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(1u, 21u)], vec4<i32>(abs(-22324i), _wgslsmith_clamp_i32(-2147483647i, global1.a, -1i), -21994i, global0.x)) & (global0.x >> ((~20871u | min(global1.d.x, 73551u)) % 32u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 105286u, var_0, 0u) & global1.d, ~vec4<u32>(94932u, u_input.b.x, var_0, 21470u)) ^ ~global1.d, i32(-1i) * -u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(global1.d.x, 5269u, 15009u), ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0, var_2.c, 3168u), vec3<u32>(var_2.c, var_0, var_4.d.x)))), select(u_input.a, vec4<i32>(countOneBits(2147483647i), _wgslsmith_div_i32(i32(-1i) * -5759i, -2147483647i), select(global1.e, ~global0.x, all(var_2.b)), 2147483647i | abs(u_input.a.x)), !select(select(vec4<bool>(var_2.b.x, false, var_2.b.x, var_2.b.x), vec4<bool>(false, false, var_2.b.x, true), var_2.b.x), select(vec4<bool>(true, true, var_2.b.x, false), vec4<bool>(false, var_2.b.x, var_2.b.x, false), vec4<bool>(true, var_2.b.x, var_2.b.x, var_2.b.x)), vec4<bool>(var_2.b.x, true, var_2.b.x, var_2.b.x))), vec2<i32>(-1370i, -1i), 50849i >> (var_2.c % 32u), var_4.d.zzz);
}

