struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: array<vec3<i32>, 30>;

var<private> global3: vec4<bool> = vec4<bool>(true, true, true, true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    global2 = array<vec3<i32>, 30>();
    global3 = vec4<bool>(1081i > u_input.c.x, !(select(abs(u_input.b.x), ~u_input.c.x, true) < u_input.b.x), global3.x, !all(!select(vec4<bool>(false, false, global3.x, false), vec4<bool>(global3.x, global3.x, global1.x, global1.x), vec4<bool>(global3.x, false, true, global1.x))));
    global3 = vec4<bool>(true, true, global3.x, !(1568f > _wgslsmith_f_op_f32(-755f - _wgslsmith_f_op_f32(ceil(-1805f)))));
    let var_0 = select(max(abs(~vec3<u32>(27115u, u_input.a, 4294967295u)) & vec3<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, 4294967295u), _wgslsmith_mod_u32(u_input.a, 231u), ~1u), firstTrailingBit(~vec3<u32>(u_input.a, 4294967295u, 23812u))), _wgslsmith_sub_vec3_u32(max(vec3<u32>(u_input.a, ~u_input.a, ~u_input.a), vec3<u32>(~u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a), ~0u)), vec3<u32>(_wgslsmith_div_u32(firstTrailingBit(1u), _wgslsmith_sub_u32(u_input.a, u_input.a)), u_input.a, 25433u & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 18314u, u_input.a), vec3<u32>(u_input.a, u_input.a, 0u)))), true);
    return var_0.x;
}

fn func_2(arg_0: f32) -> vec3<f32> {
    let var_0 = vec2<u32>(_wgslsmith_mult_u32(4294967295u, min(func_3(), 38807u)), ~(~u_input.a ^ countOneBits(~21345u)));
    global0 = u_input.b.x;
    var var_1 = _wgslsmith_div_i32(~_wgslsmith_clamp_i32(-3925i, ~u_input.b.x, u_input.c.x), max(~(-2147483647i), u_input.b.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(arg_0))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-1778f)), _wgslsmith_f_op_f32(-793f - arg_0))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -2224f) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-307f, 287f))))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1343f)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, -2038f, var_2.x, -106f), vec4<f32>(var_2.x, var_2.x, -171f, arg_0)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(499f, var_2.x, arg_0, -575f), vec4<f32>(arg_0, -718f, 579f, arg_0))))))));
    return var_3.www;
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: vec2<bool>, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = false;
    var var_1 = ~(abs(u_input.c.x) | arg_3.x);
    var var_2 = u_input.c;
    var var_3 = Struct_2(-9874i, ~(arg_3.x | countOneBits(i32(-1i) * -25503i)), arg_0.c, _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-413f)), _wgslsmith_f_op_f32(f32(-1f) * -1199f))))))));
    let var_4 = Struct_4(Struct_1(countOneBits(-max(vec4<i32>(u_input.b.x, arg_3.x, 15941i, arg_0.c.a.x), vec4<i32>(-1i, var_2.x, 2147483647i, var_2.x))), !vec4<bool>(true, var_0 & var_3.c.b.x, false, true)), arg_0.b, var_3.c, _wgslsmith_mult_vec3_u32(arg_0.d, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_0.d.x, 4294967295u, 30227u), vec4<u32>(7755u, u_input.a, arg_0.d.x, 16097u)), 54917u, ~u_input.a) ^ countOneBits(arg_0.d)));
    return var_4.c;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = arg_2;
    var var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(~(-reverseBits(arg_2.a.wy)), u_input.b.zz), arg_0.x);
    let var_2 = -1i;
    let var_3 = arg_2.b;
    let var_4 = vec3<u32>(u_input.a, _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 4294967295u, u_input.a, u_input.a), vec4<u32>(4192u, 1787u, 28428u, u_input.a), false || var_3.x), ~(~vec4<u32>(41880u, 4294967295u, 0u, 0u))), ~(~_wgslsmith_clamp_u32(1u, u_input.a, u_input.a))) & ~(~((vec3<u32>(4294967295u, u_input.a, u_input.a) >> (vec3<u32>(1u, u_input.a, 37133u) % vec3<u32>(32u))) >> (~vec3<u32>(u_input.a, 60679u, u_input.a) % vec3<u32>(32u))));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(round(arg_1.x)), -695f, -2016f, -731f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1444f, 562f, arg_1.x, 658f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(814f, arg_1.x, 257f, arg_1.x))))))) + vec4<f32>(_wgslsmith_div_f32(-568f, arg_1.x), 571f, 748f, arg_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -2110f, -538f, -1355f))))), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1583f))), _wgslsmith_f_op_f32(-1345f - _wgslsmith_f_op_f32(-459f * _wgslsmith_f_op_f32(round(431f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1082f, var_0, -176f, -529f)) * _wgslsmith_f_op_vec4_f32(func_4(global2[_wgslsmith_index_u32(90349u, 30u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(1932f, 502f)), func_1(Struct_4(Struct_1(vec4<i32>(20219i, -3387i, u_input.b.x, 0i), vec4<bool>(true, global1.x, global1.x, global1.x)), vec2<f32>(-175f, 799f), Struct_1(u_input.c, vec4<bool>(true, global1.x, global3.x, true)), vec3<u32>(u_input.a, 935u, 4294967295u)), false, global3.xx, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)))))));
    var var_2 = Struct_4(Struct_1(~u_input.b, !select(func_1(Struct_4(Struct_1(u_input.c, vec4<bool>(false, true, global1.x, true)), vec2<f32>(1239f, var_1.x), Struct_1(vec4<i32>(u_input.b.x, -33752i, 38729i, 23989i), vec4<bool>(global3.x, false, true, true)), vec3<u32>(u_input.a, 21795u, u_input.a)), true, vec2<bool>(true, false), u_input.b.yzx).b, select(vec4<bool>(global3.x, true, true, global3.x), vec4<bool>(global1.x, true, global1.x, global3.x), global1.x), any(vec4<bool>(true, global3.x, false, false)))), _wgslsmith_f_op_vec2_f32(var_1.wy * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1877f), var_0), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1100f, var_0)), var_1.zz, global3.ww))))), func_1(Struct_4(Struct_1(abs(vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x)), func_1(Struct_4(Struct_1(vec4<i32>(12103i, -1i, u_input.b.x, u_input.b.x), vec4<bool>(global3.x, global3.x, true, global1.x)), var_1.wy, Struct_1(vec4<i32>(0i, 25820i, 52719i, 30215i), vec4<bool>(global3.x, true, global1.x, global3.x)), vec3<u32>(46108u, 1u, u_input.a)), global3.x, global3.zx, vec3<i32>(1i, -4058i, u_input.b.x)).b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-193f, var_1.x))) + var_1.zy), Struct_1(select(u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, 11100i, -18708i), vec4<bool>(false, true, global3.x, true)), func_1(Struct_4(Struct_1(vec4<i32>(-46899i, u_input.b.x, -6236i, -18144i), vec4<bool>(false, false, false, global3.x)), vec2<f32>(-401f, 449f), Struct_1(u_input.c, vec4<bool>(true, false, false, global3.x)), vec3<u32>(u_input.a, 27798u, u_input.a)), global3.x, vec2<bool>(false, true), vec3<i32>(u_input.b.x, -2147483647i, u_input.c.x)).b), vec3<u32>(~17002u, _wgslsmith_add_u32(u_input.a, 53175u), ~1u)), true, global3.ww, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.a >> (1737u % 32u), _wgslsmith_mult_u32(u_input.a, u_input.a) << (~u_input.a % 32u)), 30u)]), _wgslsmith_div_vec3_u32(min(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(43412u, u_input.a, u_input.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(0u, u_input.a, 95790u))), select(vec3<u32>(13624u, u_input.a, 4294967295u), vec3<u32>(1u, 12847u, u_input.a), vec3<bool>(true, global3.x, global1.x))), ~(~(vec3<u32>(u_input.a, u_input.a, 0u) >> (vec3<u32>(u_input.a, 46575u, 0u) % vec3<u32>(32u))))));
    let var_3 = ~_wgslsmith_mod_u32(u_input.a & ~_wgslsmith_div_u32(u_input.a, 1u), 4294967295u);
    let var_4 = var_1.yz;
    let var_5 = select(select(u_input.b.yw, ~(~var_2.c.a.wy ^ var_2.c.a.yw), var_2.c.b.xx), vec2<i32>(max(2147483647i, _wgslsmith_mod_i32(1i, ~var_2.c.a.x)), 0i >> (~var_3 % 32u)), !(!vec2<bool>(!global1.x, var_2.a.b.x)));
    var var_6 = Struct_3(Struct_2(u_input.c.x, var_5.x, var_2.a, var_1.xxw), var_2.d.zz);
    var var_7 = select(firstLeadingBit(~abs(~var_6.a.b)), var_2.c.a.x, true);
    global1 = !vec2<bool>(!global3.x, var_6.a.c.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x);
}

