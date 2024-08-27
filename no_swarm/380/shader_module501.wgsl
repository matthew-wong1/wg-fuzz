struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec4<bool>,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_4 = Struct_4(Struct_3(vec2<f32>(1179f, -430f), Struct_2(vec3<bool>(false, true, true), Struct_1(vec3<i32>(-9427i, -23982i, i32(-2147483648))))), Struct_3(vec2<f32>(-1763f, 761f), Struct_2(vec3<bool>(true, true, true), Struct_1(vec3<i32>(0i, 0i, -1i)))), vec4<bool>(false, false, true, true), Struct_3(vec2<f32>(340f, -766f), Struct_2(vec3<bool>(true, true, true), Struct_1(vec3<i32>(0i, i32(-2147483648), 15201i)))), 4294967295u);

var<private> global2: array<vec3<u32>, 9>;

var<private> global3: vec4<f32> = vec4<f32>(-1000f, -539f, -755f, -171f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<u32> {
    global2 = array<vec3<u32>, 9>();
    var var_0 = vec4<i32>(-global1.a.b.b.a.x, u_input.b, global1.d.b.b.a.x, _wgslsmith_dot_vec2_i32(global1.b.b.b.a.yx, global1.d.b.b.a.xx));
    let var_1 = global1.a.b.b.a.yx;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.zzw * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1909f, 104f, 1026f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1004f, global3.x) - global3.wzy))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3.x, global1.a.a.x, global1.b.a.x), _wgslsmith_f_op_vec3_f32(global3.wyw * vec3<f32>(1019f, 1000f, global3.x))))) * global3.xxy));
    global1 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.a.x, global3.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-442f, global1.b.a.x) * vec2<f32>(global3.x, global3.x))))), Struct_2(select(global1.c.yyz, vec3<bool>(true, true, true), vec3<bool>(true, false, global1.d.b.a.x)), global1.a.b.b)), global1.d, global1.c, global1.a, global1.e);
    return firstLeadingBit(~(~(vec4<u32>(1u, 48107u, 4294967295u, u_input.a.x) ^ vec4<u32>(global0.x, 61606u, 58300u, 27756u)))) | reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(~1u, global0.x, ~62583u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global1.e), global0.ww)), ~vec4<u32>(u_input.c.x, 1u, 1u, global1.e), vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, global1.e), _wgslsmith_mod_u32(63775u, 28808u), _wgslsmith_div_u32(u_input.a.x, 0u), u_input.a.x)));
}

fn func_2() -> Struct_3 {
    global0 = abs(~func_3());
    let var_0 = !global1.b.b.a;
    global1 = Struct_4(global1.a, global1.b, vec4<bool>(true, select(select(false, true, global1.a.a.x <= global1.d.a.x), _wgslsmith_f_op_f32(global3.x * global1.d.a.x) < _wgslsmith_f_op_f32(-1766f + 870f), var_0.x), any(select(!vec2<bool>(global1.d.b.a.x, true), select(vec2<bool>(global1.a.b.a.x, false), var_0.xx, vec2<bool>(global1.a.b.a.x, false)), select(global1.d.b.a.yy, vec2<bool>(var_0.x, false), global1.b.b.a.yy))), global1.c.x), Struct_3(_wgslsmith_f_op_vec2_f32(select(global3.yw, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1268f, -393f), vec2<f32>(global1.d.a.x, 655f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-350f, global3.x)), global1.a.b.a.x)), true & any(var_0.zy))), global1.b.b), global0.x);
    global0 = vec4<u32>(global1.e, reverseBits(u_input.a.x), max(u_input.c.x, max(global1.e, 32375u)), 50570u | ~global1.e);
    var var_1 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.xy + global3.zy) * _wgslsmith_f_op_vec2_f32(global1.d.a - vec2<f32>(global3.x, global3.x))) + vec2<f32>(_wgslsmith_div_f32(549f, -1690f), _wgslsmith_f_op_f32(step(-524f, global1.b.a.x)))), Struct_2(select(!vec3<bool>(global1.b.b.a.x, global1.d.b.a.x, var_0.x), vec3<bool>(true, global1.c.x, true), global1.c.ywx), global1.a.b.b)), global1.d, select(vec4<bool>(!any(global1.a.b.a.xy), var_0.x, any(global1.d.b.a.xy) & false, false), vec4<bool>(!(!var_0.x), global1.b.b.a.x, var_0.x, global1.a.b.a.x && var_0.x), !select(select(vec4<bool>(true, false, global1.d.b.a.x, var_0.x), vec4<bool>(true, true, global1.c.x, false), true), select(vec4<bool>(true, false, var_0.x, true), global1.c, true), true)), Struct_3(global3.yy, global1.a.b), _wgslsmith_clamp_u32(_wgslsmith_add_u32(abs(8109u), 1u), u_input.a.x, global1.e));
    return Struct_3(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(689f * global3.x))), _wgslsmith_f_op_f32(-global3.x)))), var_1.d.b);
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = global1.a.b.b.a.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.wwz)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(329f, -571f, global1.d.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-822f, 2680f, 1000f)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(global3.xwx, _wgslsmith_f_op_vec3_f32(trunc(global3.zzw))))))));
    let var_2 = Struct_4(func_2(), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-637f, _wgslsmith_f_op_f32(f32(-1f) * -1715f))), Struct_2(global1.b.b.a, global1.b.b.b)), vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global3.x, var_1.x)), _wgslsmith_f_op_f32(var_1.x - global3.x)) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x * 2183f), _wgslsmith_f_op_f32(-global3.x))), global1.c.x, select(global1.c.x, arg_2.x, func_2().b.a.x), any(global1.c)), Struct_3(_wgslsmith_f_op_vec2_f32(trunc(global3.wx)), global1.b.b), arg_0.x);
    global3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-440f - -316f)), 168f, global3.x, _wgslsmith_f_op_f32(abs(-830f)));
    let var_3 = abs(vec4<i32>(-32938i, ~(-50988i), _wgslsmith_clamp_i32(1i, -29027i, 1i), max(firstLeadingBit(i32(-1i) * -40958i), -1i)));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(func_1(vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.e, global1.e, 55859u), vec3<u32>(43601u, 0u, global0.x)), 0u, countOneBits(global1.e << (u_input.a.x % 32u)), countOneBits(~4294967295u)), ~(_wgslsmith_clamp_u32(global0.x, u_input.c.x, global1.e) << (u_input.c.x % 32u)), global1.a.b.a.zy), Struct_3(vec2<f32>(global3.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.b.a.x)))), global1.d.b), global1.c, func_2(), ~(~_wgslsmith_add_u32(51566u, 18361u) >> (~global1.e % 32u)));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-395f, -1534f))))) - _wgslsmith_f_op_f32(f32(-1f) * -1838f)));
    global2 = array<vec3<u32>, 9>();
    let var_1 = _wgslsmith_f_op_f32(floor(1685f));
    let var_2 = any(global1.c);
    let var_3 = Struct_1(~global1.a.b.b.a);
    global3 = vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(step(global1.a.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -937f), _wgslsmith_f_op_f32(round(327f)))))), var_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -552f), global1.d.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.wz, (vec4<i32>(-6109i, firstTrailingBit(var_3.a.x), 1i, var_3.a.x) << (vec4<u32>(max(global1.e, global0.x), global1.e, global0.x, abs(4294967295u)) % vec4<u32>(32u))) & -_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b, -1i, 33599i, 8027i)), ~vec4<i32>(global1.d.b.b.a.x, -17241i, var_3.a.x, -11353i)));
}

