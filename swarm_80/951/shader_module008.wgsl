struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(Struct_1(vec3<f32>(-243f, -421f, 1054f), false, vec4<bool>(false, true, false, true), vec4<f32>(-361f, -360f, -683f, 1000f)), 4294967295u), Struct_3(Struct_1(vec3<f32>(957f, -1000f, 378f), true, vec4<bool>(true, true, false, false), vec4<f32>(-660f, -846f, 412f, 637f)), 0u), Struct_3(Struct_1(vec3<f32>(-1808f, -1532f, 1000f), true, vec4<bool>(true, false, true, false), vec4<f32>(-1468f, -577f, 413f, -1482f)), 1u), Struct_3(Struct_1(vec3<f32>(1000f, -1000f, -187f), true, vec4<bool>(false, true, false, true), vec4<f32>(-3066f, -2146f, 1064f, -330f)), 0u), Struct_3(Struct_1(vec3<f32>(718f, 1056f, -923f), true, vec4<bool>(true, false, false, true), vec4<f32>(665f, 1378f, -933f, 421f)), 51973u), Struct_3(Struct_1(vec3<f32>(-638f, 1424f, -309f), true, vec4<bool>(true, false, false, true), vec4<f32>(2426f, 1721f, 719f, 226f)), 1u));

var<private> global2: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(99852u, 25140u), vec2<u32>(0u, 4294967295u), vec2<u32>(63360u, 0u), vec2<u32>(21455u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(22744u, 4294967295u), vec2<u32>(1u, 81876u), vec2<u32>(0u, 52999u), vec2<u32>(31954u, 3181u), vec2<u32>(0u, 27487u), vec2<u32>(2304u, 0u), vec2<u32>(7294u, 94350u), vec2<u32>(30332u, 4294967295u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<bool>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1887f, 2444f, 248f, -411f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1942f, -505f, -226f, -988f) - vec4<f32>(-762f, 1000f, -1624f, 1143f)))))))));
    var var_1 = u_input.b.x >= (_wgslsmith_add_i32(max(u_input.b.x, firstTrailingBit(u_input.b.x)), _wgslsmith_clamp_i32(u_input.b.x, -2147483647i, 12291i)) & ~(-1i));
    let var_2 = global1[_wgslsmith_index_u32(u_input.a.x ^ 1u, 6u)];
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-630f, 641f)))), -906f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 592f, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global0 = select(arg_0.xz, var_2.a.c.yx, !arg_0.x);
    return var_2.a.a;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: f32, arg_3: i32) -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -174f), -1000f)), true, select(select(select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(global0.x, true, false, global0.x), select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(global0.x, true, true, false))), !vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(true, any(vec2<bool>(global0.x, global0.x)), true, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(global0.x, global0.x, true, true), any(vec2<bool>(true, false))), !select(select(vec4<bool>(true, false, true, global0.x), vec4<bool>(global0.x, true, false, true), true), !vec4<bool>(global0.x, true, global0.x, global0.x), select(vec4<bool>(false, global0.x, false, false), vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(true, true, global0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2 + arg_2), _wgslsmith_f_op_f32(-arg_2), -283f, _wgslsmith_f_op_f32(max(arg_2, arg_2))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-371f, 1350f, arg_2, arg_2) * vec4<f32>(1311f, arg_2, 607f, arg_2)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2, arg_2, -1139f, 1065f), vec4<f32>(1792f, arg_2, arg_2, arg_2))))))));
    global0 = vec2<bool>(var_0.c.x, global0.x);
    global0 = var_0.c.xx;
    var var_1 = Struct_2(-1281f, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -203f), _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x + -1491f))), true, vec4<bool>(select(all(var_0.c.yw), false, false), var_0.b && (global0.x != true), all(!vec4<bool>(true, true, false, var_0.c.x)), global0.x), var_0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) * -1177f));
    global0 = !(!select(!(!var_1.b.c.ww), var_1.b.c.yy, global0.x));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(var_1.b.c.xzy)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(-vec3<f32>(394f, var_0.d.x, var_0.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(true, false, var_0.b))))) + _wgslsmith_f_op_vec3_f32(var_1.b.d.yyz * var_1.b.a)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec4<i32>) -> Struct_3 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(true, true, global0.x))).x)), 794f), _wgslsmith_f_op_f32(sign(arg_1.x)), arg_1.x);
    global2 = array<vec2<u32>, 15>();
    var var_1 = firstTrailingBit(_wgslsmith_add_vec2_u32(~(~vec2<u32>(53262u, 4294967295u) ^ (u_input.a ^ u_input.a)), ~vec2<u32>(1u, u_input.a.x)));
    let var_2 = arg_2.zww;
    let var_3 = any(select(!(!select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(true, true, true, true), global0.x)), vec4<bool>((true | global0.x) || global0.x, any(vec3<bool>(false, global0.x, global0.x)), any(select(vec3<bool>(false, global0.x, false), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, global0.x))), !select(global0.x, false, false)), vec4<bool>(false, any(!vec3<bool>(false, global0.x, true)), global0.x, !all(vec2<bool>(global0.x, true)))));
    return Struct_3(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x), 512f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(false, var_3, global0.x)))))), true, !(!(!vec4<bool>(global0.x, global0.x, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(755f, 435f, var_0.x, -747f) - vec4<f32>(2079f, -895f, 572f, var_0.x)))), ~abs(var_1.x));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<u32>) -> vec2<bool> {
    let var_0 = vec3<f32>(1256f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.a.x), _wgslsmith_f_op_f32(-1000f + arg_2.a.d.x)) * -1502f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(788f, _wgslsmith_f_op_f32(-1693f - arg_2.a.d.x))))));
    var var_1 = u_input.b;
    var var_2 = func_4(vec3<i32>(~var_1.x, -7407i, var_1.x) ^ (vec3<i32>(1i, _wgslsmith_sub_i32(0i, -26824i), u_input.b.x) ^ (vec3<i32>(21438i, 1i, arg_0) << (abs(vec3<u32>(arg_2.b, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(~abs(u_input.b.wxz), -u_input.b.yzz, 384f, arg_0))), vec4<i32>(var_1.x, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(12539i, var_1.x, u_input.b.x, arg_0), countOneBits(u_input.b))), min(~var_1.x, arg_0) | u_input.b.x, 1i));
    var_1 = _wgslsmith_div_vec4_i32(~(-abs(vec4<i32>(1i, var_1.x, var_1.x, var_1.x))), vec4<i32>(-((i32(-1i) * -2147483647i) & _wgslsmith_dot_vec3_i32(u_input.b.yxy, u_input.b.yyx)), arg_0, 6554i, 253i));
    global1 = array<Struct_3, 6>();
    return vec2<bool>(u_input.b.x != _wgslsmith_sub_i32(var_1.x, max(2147483647i, var_1.x)), select(true, true, false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>((_wgslsmith_mod_i32(_wgslsmith_div_i32(19614i, 27847i), -24778i) == max(-2147483647i, u_input.b.x)) && (global0.x != all(vec3<bool>(global0.x, true, true))), all(!func_1(u_input.b.x, Struct_1(vec3<f32>(277f, -578f, -166f), true, vec4<bool>(true, true, global0.x, global0.x), vec4<f32>(-583f, 510f, -1412f, -1451f)), global1[_wgslsmith_index_u32(u_input.a.x, 6u)], vec2<u32>(u_input.a.x, u_input.a.x))) || false);
    var var_0 = 7723u;
    let var_1 = _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), countOneBits(abs(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 17575u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)))));
    var var_2 = !vec3<bool>(true, global0.x, true);
    var_0 = _wgslsmith_mult_u32(reverseBits(var_1.x), ~4216u);
    global0 = vec2<bool>(any(select(var_2.yz, select(select(vec2<bool>(true, global0.x), vec2<bool>(var_2.x, false), false), !vec2<bool>(false, global0.x), !var_2.zz), !select(vec2<bool>(false, true), var_2.yz, vec2<bool>(var_2.x, false)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(min(-1i, min(u_input.b.x | ~u_input.b.x, i32(-1i) * -u_input.b.x)), vec4<u32>(abs(62443u), ~firstTrailingBit(u_input.a.x), ~u_input.a.x, var_1.x), 4294967295u ^ u_input.a.x);
}

