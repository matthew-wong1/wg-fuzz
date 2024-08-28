struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1 = Struct_1(355f);

var<private> global2: f32 = 596f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = global0.yy;
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-773f, global1.a))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(378f + -402f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(floor(global1.a)), !var_0.x))))), _wgslsmith_mod_i32(u_input.d, -2147483647i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.a)) * _wgslsmith_div_vec2_f32(vec2<f32>(163f, -1140f), vec2<f32>(global1.a, 539f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.a, -1510f), vec2<f32>(global1.a, global1.a))))))));
    global2 = -1000f;
    var var_2 = -vec3<i32>(_wgslsmith_mod_i32(~(~u_input.b.x), -17436i), var_1.b, u_input.d);
    return u_input.c.x;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_add_vec4_u32(~(~min(vec4<u32>(u_input.a, u_input.c.x, u_input.c.x, u_input.a), u_input.c)), vec4<u32>(func_3() >> (22020u % 32u), 1u, _wgslsmith_dot_vec3_u32(~u_input.c.wzw, vec3<u32>(14752u, 20771u, u_input.c.x)), _wgslsmith_sub_u32(_wgslsmith_div_u32(4189u, u_input.a), ~39893u)) << (u_input.c % vec4<u32>(32u)));
    let var_1 = u_input.c.zy;
    let var_2 = ~vec4<i32>(max(-select(u_input.d, u_input.d, false), -1213i), ~u_input.d, _wgslsmith_dot_vec2_i32(~vec2<i32>(0i, 2147483647i), vec2<i32>(-1i, u_input.b.x)) & -1i, u_input.b.x);
    var var_3 = -2147483647i;
    global2 = _wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(-146f - 284f));
    return Struct_1(1567f);
}

fn func_1(arg_0: bool, arg_1: u32) -> vec2<f32> {
    let var_0 = func_2();
    var var_1 = select(select(select(!select(vec4<bool>(arg_0, true, global0.x, arg_0), vec4<bool>(true, arg_0, arg_0, global0.x), vec4<bool>(false, false, global0.x, false)), !select(vec4<bool>(true, true, arg_0, global0.x), vec4<bool>(global0.x, true, false, true), false), ~34475u > ~u_input.c.x), !select(select(vec4<bool>(global0.x, true, true, arg_0), vec4<bool>(arg_0, global0.x, false, false), false), select(vec4<bool>(arg_0, true, global0.x, false), vec4<bool>(global0.x, false, false, false), vec4<bool>(true, global0.x, global0.x, arg_0)), any(global0.zyy)), arg_0 || false), vec4<bool>(!(_wgslsmith_div_f32(global1.a, 330f) >= _wgslsmith_f_op_f32(f32(-1f) * -546f)), !(2147483647i <= u_input.d), arg_0, all(!select(vec4<bool>(global0.x, global0.x, global0.x, arg_0), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(arg_0, true, true, arg_0)))), !(!(!select(vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(global0.x, true, false, true)))));
    let var_2 = vec4<bool>(all(global0.xzx) && all(vec2<bool>(false, var_1.x)), false, arg_0, all(!global0.xxy));
    global2 = func_2().a;
    let var_3 = !select(var_1.zw, select(vec2<bool>(true | var_1.x, true), var_2.xz, false), !(!(!global0.x)));
    return vec2<f32>(386f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a + global1.a), _wgslsmith_f_op_f32(global1.a + var_0.a)))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    var var_0 = !select(!(!global0.zzw), !select(!global0.zxw, vec3<bool>(false, global0.x, false), false), all(vec3<bool>(471f != arg_2.a.a, global0.x, false)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f - 873f), _wgslsmith_f_op_f32(f32(-1f) * -242f), func_2().a, _wgslsmith_f_op_f32(439f * _wgslsmith_f_op_f32(2003f + arg_1.a))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.a, 107f, 144f, 2429f), vec4<f32>(arg_2.a.a, arg_1.a, arg_0.a.a, -1000f))), vec4<f32>(-1809f, -1710f, arg_2.c.x, 103f)))))));
    var_0 = !(!select(!(!global0.zxy), global0.yyz, global0.yzx));
    let var_2 = vec2<bool>(!all(select(vec4<bool>(var_0.x, false, global0.x, global0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(true, false, true, true), global0.x), !var_0.x)), select(var_0.x, var_0.x, all(vec2<bool>(false, var_0.x))) & all(vec4<bool>(true, true, true | var_0.x, !global0.x)));
    global0 = !(!select(!vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(!var_2.x, all(vec4<bool>(false, var_2.x, var_0.x, var_2.x)), 2540f <= arg_1.a, any(vec4<bool>(var_2.x, global0.x, false, false))), all(!vec4<bool>(false, var_0.x, var_2.x, false))));
    return Struct_1(1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2442f))), -(u_input.b.x | -u_input.b.x), _wgslsmith_f_op_vec2_f32(func_1(true, 35538u))), Struct_1(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(floor(global1.a)))), Struct_2(Struct_1(2135f), _wgslsmith_div_i32(~min(-32351i, u_input.b.x), firstTrailingBit(u_input.d) ^ -2147483647i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, _wgslsmith_f_op_f32(sign(global1.a))))));
    var var_0 = _wgslsmith_sub_vec2_i32(u_input.b.zz, ~max(-select(u_input.b.zy, vec2<i32>(u_input.d, 36817i), global0.x), vec2<i32>(u_input.b.x, -2147483647i)));
    global2 = func_4(Struct_2(func_2(), i32(-1i) * -16765i, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.a))))))), func_2(), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - _wgslsmith_f_op_f32(-621f + global1.a))), ~(-6094i), vec2<f32>(global1.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.a * global1.a)))))).a;
    var var_1 = vec4<bool>(!(false != !global0.x), !any(vec4<bool>(global0.x, global0.x, any(vec4<bool>(global0.x, global0.x, global0.x, false)), false)), any(vec4<bool>(all(select(global0.zy, global0.wz, true)), !all(vec4<bool>(false, false, false, global0.x)), !global0.x, true)), any(vec4<bool>(!any(vec2<bool>(true, global0.x)), true, !(global0.x & global0.x), !global0.x)));
    var var_2 = reverseBits(u_input.a);
    var var_3 = vec4<bool>(var_0.x > select(var_0.x, min(51532i, var_0.x), true), false, global0.x, global0.x == false);
    var_1 = vec4<bool>(!all(!(!global0.xz)), (var_3.x == true) & true, var_3.x, var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(1205f)), global1.a) + vec2<f32>(_wgslsmith_f_op_f32(-global1.a), global1.a))), -_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, u_input.b.x, -579i, var_0.x) | vec4<i32>(-66825i, u_input.b.x, u_input.d, 6797i), reverseBits(vec4<i32>(47155i, u_input.d, var_0.x, var_0.x))), vec4<i32>(var_0.x & 0i, 1i, ~2147483647i, u_input.b.x)));
}

