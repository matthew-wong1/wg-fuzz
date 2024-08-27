struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: Struct_1) -> vec3<bool> {
    global0 = Struct_2(countOneBits(0i), global0.b);
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(154f, 213f, -1333f, -512f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f * 700f), _wgslsmith_f_op_f32(1144f + -1201f), _wgslsmith_f_op_f32(select(921f, 419f, false)), -1761f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 492f, -1988f, -580f) * vec4<f32>(-261f, -405f, 166f, 966f)) - vec4<f32>(147f, -763f, -538f, -278f)))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-1022f + -1491f), -1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(195f - 333f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1037f + 1128f)))))));
    global0 = Struct_2(select(_wgslsmith_sub_i32(arg_1.x, _wgslsmith_mult_i32(abs(0i), arg_0.x)), -global0.b.b.x, true), arg_2);
    var var_1 = Struct_3(-vec4<i32>(_wgslsmith_mod_i32(global0.a, _wgslsmith_sub_i32(global0.b.b.x, 1i)), -4641i, _wgslsmith_dot_vec2_i32(firstLeadingBit(arg_2.b.yx), select(arg_1, u_input.a.wx, vec2<bool>(false, false))), 1i));
    global0 = Struct_2(min(-_wgslsmith_mod_i32(min(arg_2.b.x, 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.b.x, u_input.a.x, -1i, global0.b.b.x), vec4<i32>(1i, arg_0.x, arg_0.x, -2147483647i))), arg_2.b.x), arg_2);
    return select(vec3<bool>(true, true, true), !select(vec3<bool>(true, 1461f > var_0.x, false), vec3<bool>(u_input.b.x <= 0u, false, true), true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false)), false), vec3<bool>(true, true, true), vec3<bool>(false, any(vec4<bool>(false, false, true, false)), false)));
}

fn func_2() -> Struct_4 {
    let var_0 = !any(select(func_3(-vec4<i32>(-14551i, u_input.c, u_input.c, 24621i), ~vec2<i32>(u_input.c, 29308i), global0.b), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), func_3(vec4<i32>(global0.a, global0.a, -29795i, -35339i), global0.b.b.zz, Struct_1(vec2<u32>(u_input.d, global0.b.a.x), u_input.a.wyw))), select(true, true, true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-494f, -1701f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1271f, -1209f) - vec2<f32>(294f, 357f)), !vec2<bool>(true, var_0)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1808f) + _wgslsmith_f_op_f32(max(864f, -1603f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1000f, -532f)))) * _wgslsmith_f_op_f32(min(-1395f, _wgslsmith_f_op_f32(select(-1840f, 898f, false))))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(min(var_1.x, var_1.x)), var_1.x))), var_0)));
    var var_3 = select(func_3(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 632i, 0i, _wgslsmith_mod_i32(u_input.c, -1i)), u_input.a), _wgslsmith_mod_vec2_i32(global0.b.b.zz, global0.b.b.zz), Struct_1(global0.b.a ^ u_input.b, vec3<i32>(-1i, -1i, 1i) ^ u_input.a.wxy)).xx, !select(!func_3(vec4<i32>(42i, 2147483647i, u_input.a.x, global0.a), u_input.a.xw, Struct_1(u_input.b, vec3<i32>(2147483647i, global0.a, global0.a))).xx, vec2<bool>(true, true), var_0), vec2<bool>(all(func_3(vec4<i32>(global0.a, 1i, 1i, u_input.c), select(u_input.a.zy, u_input.a.yy, true), Struct_1(u_input.b, global0.b.b)).zy), var_0 & !var_0));
    global0 = Struct_2(~1i, global0.b);
    return Struct_4(~reverseBits(global0.a), Struct_2(-17486i, global0.b));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_3(u_input.a);
    let var_1 = func_2();
    let var_2 = func_2();
    let var_3 = vec2<u32>(~var_1.b.b.a.x, 18902u);
    global0 = func_2().b;
    return var_1.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: i32) -> u32 {
    var var_0 = vec3<bool>(true, true, true);
    let var_1 = ~(~_wgslsmith_div_u32(1u, 26040u));
    let var_2 = ~4294967295u;
    global0 = arg_0;
    let var_3 = Struct_2(5608i, arg_0.b);
    return ~21016u << ((_wgslsmith_mod_u32(var_2, global0.b.a.x) | abs(1u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(-((-vec3<i32>(-1i, 11492i, -16112i) << ((vec3<u32>(global0.b.a.x, 1u, u_input.b.x) ^ vec3<u32>(global0.b.a.x, global0.b.a.x, global0.b.a.x)) % vec3<u32>(32u))) & (-vec3<i32>(0i, -32380i, global0.b.b.x) & (vec3<i32>(u_input.c, 2147483647i, -1i) << (vec3<u32>(4294967295u, 66987u, 1u) % vec3<u32>(32u))))));
    let var_1 = ~vec3<u32>(u_input.b.x | (u_input.b.x << (~0u % 32u)), max(func_4(func_1(), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), i32(-1i) * -15745i), 0u), 0u | (_wgslsmith_div_u32(46174u, 4294967295u) ^ _wgslsmith_add_u32(u_input.b.x, u_input.b.x)));
    var var_2 = false;
    var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2224f))), 1000f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1000f)))));
}

