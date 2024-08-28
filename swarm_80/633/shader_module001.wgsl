struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: Struct_2,
    d: bool,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, vec4<u32>(0u, 84184u, 1u, 2613u), vec4<i32>(-14882i, i32(-2147483648), 1i, 1i));

var<private> global1: u32 = 1u;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_1(~_wgslsmith_dot_vec2_i32(global0.c.ww, vec2<i32>(abs(-40849i), ~50636i)));
    global0 = Struct_2(true, ~u_input.a, global0.c);
    let var_1 = -vec3<i32>(var_0.a, global0.c.x, var_0.a);
    var_0 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_add_i32(~global0.c.x | 62351i, 2147483647i), _wgslsmith_dot_vec2_i32(global0.c.wx, min(vec2<i32>(global0.c.x, -1i), global0.c.yy) ^ max(global0.c.zy, vec2<i32>(-2147483647i, global0.c.x)))));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-570f)))), _wgslsmith_f_op_f32(abs(-1000f)))), 1f, ~u_input.a.x <= ~(~0u)))));
    return ~(~(~_wgslsmith_mod_vec4_u32(countOneBits(u_input.a), ~global0.b)));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1, arg_3: vec4<u32>) -> vec2<u32> {
    let var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1108f))) - -1124f), -618f, -1976f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-242f, 991f))))), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(2147483647i), -1i), global0.c.yz)));
    let var_1 = _wgslsmith_clamp_vec4_i32(global0.c, vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(global0.c, global0.c), ~max(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, var_0.b.a, global0.c.x, var_0.b.a)), global0.c), vec4<i32>(var_0.b.a, arg_2.a ^ arg_2.a, 3901i, select(arg_2.a, global0.c.x, global0.a))));
    global1 = 6179u;
    return select(vec2<u32>(4294967295u, 24922u), vec2<u32>(_wgslsmith_dot_vec4_u32(global0.b, vec4<u32>(arg_1, select(1u, 4294967295u, arg_0.x), ~23821u, 28484u)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, u_input.b.x, 1u, global0.b.x), vec4<u32>(0u, global0.b.x, 66894u, u_input.b.x)))), u_input.b.x == arg_1);
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_5(~func_4(!(!vec3<bool>(false, global0.a, false)), _wgslsmith_clamp_u32(u_input.a.x, global0.b.x, u_input.b.x) ^ global0.b.x, Struct_1(global0.c.x), func_3()), ~(vec2<u32>(4294967295u, 12094u) ^ (u_input.a.yx | u_input.b.yx)) >> (vec2<u32>(global0.b.x, global0.b.x ^ 1u) % vec2<u32>(32u)), Struct_2(true || (true || global0.a), ~u_input.a, abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-72611i, arg_0.x, arg_0.x, -60039i), select(vec4<i32>(2147483647i, arg_0.x, arg_0.x, 43476i), global0.c, global0.a)))), !global0.a & any(!vec2<bool>(false, global0.a)), Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1085f, 199f, -843f, 964f))))), Struct_1(_wgslsmith_sub_i32(abs(global0.c.x), global0.c.x))));
    return var_0.c;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_2 {
    global0 = Struct_2(!(7613u <= arg_1.b.x), ~(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1.b.x, 15740u, 68115u, 4294967295u), global0.b, arg_1.b >> (u_input.a % vec4<u32>(32u))) >> (vec4<u32>(1u, 63905u, firstLeadingBit(4294967295u), _wgslsmith_sub_u32(u_input.a.x, 14757u)) % vec4<u32>(32u))), arg_1.c);
    let var_0 = global0.c.wy;
    global1 = ~0u;
    let var_1 = vec3<bool>(any(vec4<bool>(global0.a, true, true, true || !global0.a)), false, !(!all(vec2<bool>(arg_1.a, arg_1.a))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-1108f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1000f, -181f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-780f, _wgslsmith_f_op_f32(f32(-1f) * -772f))) + _wgslsmith_f_op_f32(f32(-1f) * -317f)), -159f);
    return func_2(vec2<i32>(max(-global0.c.x, -19476i), arg_1.c.x) << (vec2<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b.x, global0.b.x, 12801u, 46560u)), ~u_input.a), ~_wgslsmith_sub_u32(u_input.b.x, u_input.a.x)) % vec2<u32>(32u)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(Struct_1(1i), ~vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-26401i, -2147483647i), global0.c.yx), global0.c.x ^ ~43930i), -610f, arg_1.b.x, -vec4<i32>(-1i, _wgslsmith_clamp_i32(-1i, ~arg_0.c.x, abs(-2147483647i)), ~global0.c.x, arg_1.c.x));
    global0 = Struct_2(true, arg_0.b, vec4<i32>(-1i, var_0.a.a, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-60641i, 13733i, var_0.a.a, 24255i), -global0.c), arg_1.c.x));
    var var_1 = u_input.b.x;
    return var_0.a;
}

fn func_6(arg_0: Struct_3, arg_1: vec2<i32>) -> Struct_1 {
    global0 = func_1((_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, global0.c.x, -5264i), vec3<i32>(-2147483647i, 33934i, arg_1.x)) ^ global0.c.zzw) | ~(arg_0.e.zyx | global0.c.zwy), func_2(vec2<i32>(_wgslsmith_mult_i32(arg_1.x << (1u % 32u), -arg_0.a.a), ~arg_0.e.x ^ ~(-32826i))));
    let var_0 = (max(-global0.c, firstLeadingBit(~global0.c)) | vec4<i32>(-7689i, arg_1.x, -global0.c.x, _wgslsmith_clamp_i32(min(arg_0.b.x, arg_1.x), arg_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-13485i, arg_1.x, 61852i), vec3<i32>(arg_0.e.x, -2147483647i, -1864i))))) >> (reverseBits(global0.b) % vec4<u32>(32u));
    var var_1 = arg_1.x;
    var var_2 = !select(select(!select(vec4<bool>(global0.a, true, true, global0.a), vec4<bool>(global0.a, global0.a, false, false), false), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(global0.a, true, global0.a, true), !vec4<bool>(true, true, true, global0.a), any(vec4<bool>(false, global0.a, global0.a, global0.a))), !select(vec4<bool>(true, true, false, global0.a), vec4<bool>(global0.a, global0.a, true, global0.a), false), select(select(vec4<bool>(true, global0.a, global0.a, true), vec4<bool>(true, true, global0.a, true), global0.a), select(vec4<bool>(global0.a, global0.a, global0.a, global0.a), vec4<bool>(global0.a, global0.a, true, global0.a), vec4<bool>(global0.a, global0.a, false, false)), vec4<bool>(global0.a, true, global0.a, false))), select(select(select(vec4<bool>(true, false, global0.a, global0.a), vec4<bool>(false, false, global0.a, false), vec4<bool>(true, true, global0.a, global0.a)), !vec4<bool>(global0.a, global0.a, global0.a, false), vec4<bool>(global0.a, global0.a, global0.a, false)), vec4<bool>(false, u_input.b.x != 30620u, func_1(arg_0.e.xzz, Struct_2(global0.a, vec4<u32>(0u, 2145u, arg_0.d, global0.b.x), arg_0.e)).a, true), !(!vec4<bool>(global0.a, true, global0.a, global0.a))));
    var_2 = !vec4<bool>(true, false, !var_2.x, var_2.x);
    return arg_0.a;
}

fn func_7(arg_0: Struct_1) -> Struct_2 {
    global1 = 1u;
    var var_0 = arg_0.a;
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2125f + -1188f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -635f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1023f)))))))));
    let var_2 = global0.a;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-622f, -621f, 371f, 1394f), vec4<f32>(338f, 1000f, -134f, -587f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(526f, -1000f, 1336f, -2236f) * vec4<f32>(449f, -1575f, 1000f, -1000f)), true))))));
    return Struct_2(global0.a, vec4<u32>(global0.b.x, 7031u, max(func_3().x, global0.b.x >> (~1u % 32u)), 48796u), reverseBits((global0.c | global0.c) << (u_input.a % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_7(func_6(Struct_3(func_5(func_1(vec3<i32>(-29814i, global0.c.x, global0.c.x), Struct_2(global0.a, global0.b, global0.c)), func_2(vec2<i32>(global0.c.x, global0.c.x))), global0.c.yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -253f)), max(global0.b.x, 7269u), _wgslsmith_clamp_vec4_i32(global0.c ^ vec4<i32>(-15787i, -67220i, 10544i, global0.c.x), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, 34241i, global0.c.x, -12758i), global0.c), vec4<i32>(global0.c.x, 2147483647i, global0.c.x, global0.c.x))), func_2(vec2<i32>(global0.c.x, 44278i)).c.yw ^ global0.c.xw));
    var var_0 = global0.c.zyy;
    global0 = func_1(-reverseBits(select(global0.c.xyw, global0.c.yzw >> (vec3<u32>(0u, u_input.b.x, 1u) % vec3<u32>(32u)), false)), func_7(func_5(Struct_2(true, ~global0.b, firstLeadingBit(global0.c)), Struct_2(global0.a, vec4<u32>(5145u, u_input.a.x, 93948u, global0.b.x), global0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(vec2<i32>(-var_0.x | -var_0.x, ~1i)).b.x, 1844f, min(~vec4<i32>(var_0.x, global0.c.x, var_0.x, -60738i), firstTrailingBit(vec4<i32>(-56781i, -2147483647i, -16921i, global0.c.x))) >> (~vec4<u32>(84553u, max(u_input.a.x, u_input.a.x), _wgslsmith_add_u32(u_input.a.x, 48375u), func_7(Struct_1(global0.c.x)).b.x) % vec4<u32>(32u)), ~68300u);
}

