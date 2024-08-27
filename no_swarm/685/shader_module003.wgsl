struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: f32,
}

struct Struct_5 {
    a: f32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 11>;

var<private> global1: bool = false;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<f32>) -> u32 {
    let var_0 = !select(vec2<bool>(select(true, any(vec4<bool>(false, true, false, true)), true), ~u_input.e.x <= u_input.a.x), select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), false)), select(vec2<bool>(true, false), vec2<bool>(true, true), false), !select(vec2<bool>(false, true), vec2<bool>(true, false), true)), !all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)));
    let var_1 = select(!select(vec3<bool>(var_0.x, var_0.x, !var_0.x), !(!vec3<bool>(var_0.x, var_0.x, var_0.x)), !(!vec3<bool>(var_0.x, false, var_0.x))), vec3<bool>(!(!(!var_0.x)), all(vec2<bool>(var_0.x, var_0.x)), select(true, true, false) & all(!vec4<bool>(false, false, var_0.x, true))), var_0.x);
    let var_2 = var_1.zy;
    global1 = false;
    var var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1222f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), 1055f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(357f, 306f, 112f) + vec3<f32>(-2160f, 1326f, -557f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(1633f)), _wgslsmith_f_op_f32(arg_1.x + arg_1.x), _wgslsmith_f_op_f32(arg_1.x - -401f))))), true & var_2.x));
    return u_input.d;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>) -> i32 {
    var var_0 = Struct_1(arg_0.x);
    global0 = array<vec4<i32>, 11>();
    let var_1 = Struct_2(-399f, Struct_1(_wgslsmith_add_i32(u_input.b, 1i) | countOneBits(abs(0i))), -max(_wgslsmith_mult_vec2_i32(vec2<i32>(10277i, arg_1.x), u_input.c.xz) & vec2<i32>(4194i, var_0.a), vec2<i32>(~(-2147483647i), arg_0.x)), Struct_1(~(-46054i)), vec2<i32>(max(i32(-1i) * -2147483647i, ~1i | min(var_0.a, arg_0.x)), 0i));
    let var_2 = vec2<u32>(_wgslsmith_clamp_u32(u_input.e.x, ~_wgslsmith_mod_u32(u_input.d, 57899u), u_input.d) << ((func_3(firstTrailingBit(vec3<i32>(u_input.c.x, var_1.e.x, 1i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1623f, -937f) - vec2<f32>(-991f, 886f))) | min(4294967295u, select(u_input.d, 80989u, true))) % 32u), u_input.e.x);
    var var_3 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -192f), max(~(-(~var_1.c)), _wgslsmith_clamp_vec2_i32(arg_0.wz, abs(vec2<i32>(var_0.a, -20645i)), min(max(vec2<i32>(0i, 27608i), vec2<i32>(u_input.b, var_0.a)), u_input.c.zx))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_1.a, var_1.a, var_1.a)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-347f, -140f, var_1.a, 1661f)), vec4<f32>(-149f, 603f, -1355f, var_1.a), vec4<bool>(true, true, true, true)))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1670f, -1191f, -500f, _wgslsmith_f_op_f32(max(-1319f, var_1.a))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, 649f, -908f, var_1.a), vec4<f32>(1664f, var_1.a, var_1.a, -737f))))))), var_1, Struct_3(vec3<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), true, true), vec3<f32>(var_1.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a), var_1.a)), _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(-296f - 1018f))), var_1, var_1.b));
    return ~_wgslsmith_dot_vec3_i32(-arg_0.zzz, arg_1);
}

fn func_1() -> Struct_2 {
    global0 = array<vec4<i32>, 11>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1332f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1130f * 2574f)))));
    global1 = false;
    let var_1 = (func_2(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(41158i, u_input.c.x, u_input.c.x, 0i)), ~vec4<i32>(u_input.c.x, 61963i, u_input.c.x, u_input.c.x), select(vec4<i32>(0i, u_input.c.x, -2147483647i, u_input.b), vec4<i32>(-59649i, -1i, 21919i, -45199i), true)), u_input.c) >> (1u % 32u)) ^ 9240i;
    let var_2 = min(select(~countOneBits(u_input.d), 4294967295u, all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), all(vec2<bool>(true, true))))), 25629u);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-388f)), 1233f) - _wgslsmith_f_op_f32(-448f + _wgslsmith_f_op_f32(select(-307f, var_0, false))))), Struct_1(~_wgslsmith_mult_i32(_wgslsmith_add_i32(-3719i, var_1), -2147483647i)), u_input.c.xy ^ (u_input.c.zx << (~vec2<u32>(4294967295u, 15107u) % vec2<u32>(32u))), Struct_1(firstTrailingBit(_wgslsmith_dot_vec2_i32(reverseBits(u_input.c.xy), u_input.c.zy))), vec2<i32>(u_input.b, -_wgslsmith_dot_vec2_i32(u_input.c.zx, vec2<i32>(8219i, u_input.c.x))) | _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.c.yz, vec2<i32>(var_1, 1i) ^ u_input.c.zz, u_input.c.zy | u_input.c.xx), -u_input.c.yx));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = any(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(all(vec2<bool>(false, false)), true), vec2<bool>(true, 0i != u_input.b), vec2<bool>(any(vec4<bool>(true, true, false, true)), any(vec2<bool>(true, true))))));
    let var_0 = func_1();
    global0 = array<vec4<i32>, 11>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(520f, 1779f)) * -1386f);
    var var_2 = 1i;
    var var_3 = func_1();
    let var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.a, var_3.a, var_1))), _wgslsmith_div_vec3_f32(vec3<f32>(371f, var_3.a, var_3.a), vec3<f32>(-173f, var_3.a, -386f)), true)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, 517f, 1000f))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2590f, 347f, var_0.a))), vec3<f32>(-1326f, var_1, var_3.a))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.a, var_0.a)))), true))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_1, _wgslsmith_f_op_f32(sign(-203f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-954f, var_1, -1340f))))), select(vec3<bool>(!all(vec2<bool>(false, false)), any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)), u_input.e.x <= u_input.d), select(vec3<bool>(20256u <= u_input.a.x, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, any(vec2<bool>(true, false)))), true & select(true, true, true))));
    let var_5 = Struct_3(select(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, u_input.e.x == u_input.e.x), vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, true)), true, true)), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1366f, -125f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1), 1000f)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -863f)), Struct_1(var_0.d.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, 58012i) ^ vec2<i32>(-2147483647i, u_input.b), -vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.xy ^ vec2<i32>(-1i, u_input.c.x)) << (vec2<u32>(_wgslsmith_mod_u32(u_input.e.x, 34532u), u_input.e.x >> (1u % 32u)) % vec2<u32>(32u)), Struct_1(abs(-2147483647i)), ~(~(~vec2<i32>(-70898i, -11241i)))), Struct_1(i32(-1i) * -var_3.b.a));
    global0 = array<vec4<i32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(~0i, var_0.c, abs(u_input.a.x & func_3(vec3<i32>(2147483647i, u_input.c.x, var_3.c.x), vec2<f32>(var_1, var_5.b.x))) ^ u_input.d, _wgslsmith_add_i32(-reverseBits(var_3.e.x), ~_wgslsmith_div_i32(u_input.b & u_input.b, -var_5.d.a)));
}

