struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: bool,
    c: f32,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(-609f, -209f, -759f), vec3<f32>(-1530f, -305f, -819f), vec3<f32>(-1481f, 1336f, -331f));

var<private> global1: u32 = 4294967295u;

var<private> global2: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_4) -> bool {
    let var_0 = Struct_3(Struct_2(Struct_1(-arg_1.b.a.a.a, vec3<bool>(!arg_0.b, true, true), vec4<bool>(true, arg_0.d.a.b.x, false, select(false, arg_1.b.b.b.x, false)))), Struct_1(~arg_0.d.a.a & -(arg_0.d.a.a >> (u_input.b % 32u)), select(vec3<bool>(!arg_0.b, false && arg_1.b.a.a.c.x, any(arg_1.b.b.b.zx)), !(!arg_1.b.b.b), arg_1.b.a.a.b), vec4<bool>(any(select(arg_1.b.b.b, vec3<bool>(arg_1.b.a.a.b.x, arg_0.d.a.c.x, true), false)), true, all(arg_1.b.a.a.c.zz), true)));
    global2 = _wgslsmith_f_op_f32(select(1502f, _wgslsmith_f_op_f32(arg_0.c - 487f), (!(arg_1.b.a.a.b.x && arg_0.b) != !var_0.b.c.x) & all(var_0.a.a.c.zw)));
    var var_1 = 4294967295u > _wgslsmith_add_u32(~u_input.a.x, u_input.b);
    var var_2 = all(select(vec4<bool>(any(!var_0.a.a.b), true, any(vec3<bool>(arg_0.d.a.b.x, arg_0.b, false)), var_0.a.a.b.x), vec4<bool>(arg_0.e.b.c.x, true, ~1669u == (30699u << (u_input.b % 32u)), any(vec2<bool>(arg_0.a.x, true))), !(!var_0.a.a.c.x)));
    let var_3 = arg_0.e;
    return var_3.b.c.x;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(441f)), _wgslsmith_f_op_f32(-1471f + -1160f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(582f, -1382f), vec2<f32>(-812f, 1234f), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-413f, 512f), vec2<f32>(293f, 1009f), vec2<bool>(false, false))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1674f, -103f), vec2<f32>(-1186f, 400f), vec2<bool>(false, false))))))) - vec2<f32>(973f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1157f - -1968f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -530f), _wgslsmith_f_op_f32(492f + 238f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-902f, _wgslsmith_f_op_f32(-var_0.x), var_0.x));
    global0 = array<vec3<f32>, 3>();
    let var_2 = vec2<bool>(!(!func_3(Struct_5(vec4<bool>(true, false, true, true), true, 839f, Struct_2(Struct_1(2147483647i, vec3<bool>(true, true, true), vec4<bool>(true, true, false, false))), Struct_3(Struct_2(Struct_1(-28255i, vec3<bool>(true, false, true), vec4<bool>(true, true, true, true))), Struct_1(10602i, vec3<bool>(true, false, true), vec4<bool>(true, false, false, true)))), Struct_4(0i, Struct_3(Struct_2(Struct_1(1i, vec3<bool>(false, true, true), vec4<bool>(false, false, false, false))), Struct_1(0i, vec3<bool>(true, true, false), vec4<bool>(true, true, false, true)))))), !(!all(vec3<bool>(true, true, true))));
    var_1 = vec3<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -974f) + 1f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -432f) - _wgslsmith_f_op_f32(f32(-1f) * -206f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-944f)), -1513f, false)))))), var_1.x);
    return Struct_1(_wgslsmith_add_i32(_wgslsmith_mod_i32(1i, -32461i) >> (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, 4294967295u, 14594u), u_input.a), ~30661u) % 32u), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(22609i, -37754i), vec2<i32>(22256i, 49515i)) << (~u_input.b % 32u), _wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, -1i, 18685i), min(vec3<i32>(0i, 31848i, 1i), vec3<i32>(1i, 0i, 89023i))))), !(!(!vec3<bool>(var_2.x, true, true))), select(vec4<bool>(true, var_2.x, firstTrailingBit(-22446i) > firstTrailingBit(-2147483647i), var_2.x), select(!(!vec4<bool>(var_2.x, false, true, var_2.x)), vec4<bool>(select(true, var_2.x, false), false, true, true && var_2.x), true), !var_2.x));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_4(-26287i, Struct_3(Struct_2(func_2()), Struct_1(-1i, select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec4<bool>(true, true, true, true))));
    global0 = array<vec3<f32>, 3>();
    var var_1 = -_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_0.a, var_0.a, 1i, 7879i), firstTrailingBit(vec4<i32>(var_0.b.b.a, var_0.b.a.a.a, 0i, var_0.a) | vec4<i32>(-35285i, var_0.a, 2147483647i, var_0.a)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b.a.a.a, var_0.b.b.a, var_0.a, var_0.b.a.a.a), vec4<i32>(var_0.a, 2147483647i, var_0.a, var_0.a))) >> (vec4<u32>(u_input.b, 44764u, ~(~1u), u_input.b) % vec4<u32>(32u));
    var var_2 = !vec3<bool>(!all(vec4<bool>(false, var_0.b.a.a.b.x, false, var_0.b.a.a.c.x)), true, var_0.b.b.c.x != var_0.b.a.a.b.x);
    let var_3 = 30471u;
    return func_2();
}

fn func_4(arg_0: Struct_5) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -370f) - 1063f) + 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1393f) * arg_0.c)));
    var var_1 = Struct_5(arg_0.e.a.a.c, true, arg_0.c, Struct_2(arg_0.d.a), arg_0.e);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.c, arg_0.c, -278f, arg_0.c))), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.c, -258f, 842f, arg_0.c), vec4<f32>(457f, var_1.c, arg_0.c, 1000f)))))));
    var var_3 = 4294967295u;
    global1 = abs(~select(82783u & _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.b, u_input.a.x, u_input.b), ~u_input.b), ~u_input.a.x >= ~1u));
    return var_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(9273u, ~u_input.b, select(u_input.a.x, ~abs(40859u), false));
    var var_1 = Struct_5(vec4<bool>(true, all(vec4<bool>(true, true, false, true)) && false, true, all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true), false))), true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -560f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-746f)) + -693f), 276f)))), Struct_2(Struct_1(countOneBits(~29915i), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec4<bool>(true, false, true, true))), func_4(Struct_5(vec4<bool>(select(true, true, true), false, true, true), true, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(127f - 855f)), Struct_2(func_1()), Struct_3(Struct_2(Struct_1(1i, vec3<bool>(false, true, true), vec4<bool>(false, false, true, true))), func_2()))));
    global1 = 28246u;
    var var_2 = var_1.e.a.a;
    global2 = var_1.c;
    var var_3 = vec4<u32>(56471u, ~1u, 4294967295u, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1836f, var_1.c, _wgslsmith_f_op_f32(exp2(var_1.c)), _wgslsmith_f_op_f32(768f * var_1.c)))), vec4<f32>(-108f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)), -1683f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_1.c, -267f))))))), 1883f, 1u << (var_3.x % 32u));
}

