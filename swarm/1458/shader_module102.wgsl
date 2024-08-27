struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<u32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> bool {
    global0 = -9205i;
    let var_0 = vec2<u32>(_wgslsmith_clamp_u32(~(~25268u), 4294967295u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(101606u, 36122u), u_input.b.x)), ~(~u_input.c)) >> (~u_input.a % vec2<u32>(32u));
    global0 = ~(-28422i);
    return false;
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: Struct_4) -> f32 {
    let var_0 = select(vec2<bool>(all(arg_2.a), all(arg_2.a)), vec2<bool>(false, !any(arg_2.a.xwy)), !select(arg_2.a.zw, vec2<bool>(true, arg_0 >= -409f), arg_2.b.a));
    global0 = arg_2.e.x;
    let var_1 = Struct_4(arg_3.a);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    global0 = -countOneBits(abs(-6287i));
    return _wgslsmith_f_op_f32(arg_0 - 978f);
}

fn func_2() -> f32 {
    var var_0 = Struct_2(Struct_1(any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -480f) + _wgslsmith_div_f32(1180f, 1032f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-571f * 716f), u_input.b, Struct_3(vec4<bool>(false, true, true, true), Struct_1(true), vec4<u32>(u_input.c, u_input.b.x, 20435u, u_input.d.x), true, vec2<i32>(19443i, 2147483647i)), Struct_4(Struct_1(false)))) * _wgslsmith_f_op_f32(func_3(1124f, min(vec3<u32>(u_input.c, u_input.d.x, u_input.a.x), u_input.b), Struct_3(vec4<bool>(true, true, true, false), Struct_1(false), vec4<u32>(1u, u_input.b.x, 1u, u_input.d.x), true, vec2<i32>(-47471i, -31468i)), Struct_4(Struct_1(true))))) == _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_1 = u_input.d.x;
    let var_2 = ~(firstLeadingBit(_wgslsmith_div_u32(firstTrailingBit(var_1), 3636u)) >> (30141u % 32u));
    var_0 = Struct_2(Struct_1(all(vec3<bool>(var_0.a.a, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -228f) - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-260f - var_0.b), var_0.b), _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(select(932f, var_0.b, false))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -588f)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -848f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_0.b))))));
    var var_3 = select(u_input.a, _wgslsmith_add_vec2_u32(u_input.b.yy, select(_wgslsmith_mult_vec2_u32(vec2<u32>(var_2, var_1), min(vec2<u32>(21776u, var_1), vec2<u32>(var_1, 59510u))), ~u_input.d, vec2<bool>(true, var_0.c))), select(select(vec2<bool>(var_0.c || var_0.c, !var_0.c), !select(vec2<bool>(var_0.a.a, var_0.c), vec2<bool>(true, var_0.a.a), var_0.a.a), !select(vec2<bool>(true, var_0.a.a), vec2<bool>(true, true), vec2<bool>(var_0.c, var_0.a.a))), select(select(vec2<bool>(var_0.a.a, true), vec2<bool>(var_0.c, var_0.a.a), !vec2<bool>(var_0.c, var_0.a.a)), select(vec2<bool>(false, false), !vec2<bool>(true, var_0.a.a), select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(false, true), vec2<bool>(true, true))), var_0.b >= _wgslsmith_f_op_f32(var_0.b + -1000f)), any(!vec4<bool>(var_0.c, false, true, var_0.c)) || false));
    return _wgslsmith_f_op_f32(f32(-1f) * -363f);
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = false;
    global0 = ~_wgslsmith_clamp_i32(firstTrailingBit(i32(-1i) * -7569i), -1i, _wgslsmith_dot_vec3_i32(max(abs(vec3<i32>(-26396i, -1i, 1i)), vec3<i32>(-57157i, -266i, -1i) >> (vec3<u32>(38875u, u_input.d.x, u_input.d.x) % vec3<u32>(32u))), min(vec3<i32>(16201i, -31833i, 0i), vec3<i32>(-1i, 13888i, -12892i))));
    global0 = ~(i32(-1i) * -23777i);
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec4<bool>(func_1(), true, ~1u >= u_input.a.x, true), func_4(_wgslsmith_f_op_f32(func_2()), Struct_2(Struct_1(true), -1006f, select(true, true, true))), _wgslsmith_clamp_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 44777u, u_input.b.x, u_input.b.x), firstLeadingBit(vec4<u32>(u_input.c, u_input.b.x, 0u, 1u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c, 0u, 38674u, u_input.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(4147u, 2656u, u_input.d.x, 4423u), vec4<u32>(1u, 5023u, u_input.d.x, u_input.b.x))), all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false)))), countOneBits(~min(vec4<u32>(4294967295u, 40075u, u_input.a.x, u_input.b.x), vec4<u32>(24145u, 1u, u_input.a.x, 0u))), vec4<u32>(23221u, 4294967295u, _wgslsmith_sub_u32(u_input.d.x, countOneBits(u_input.a.x)), u_input.b.x)), all(vec2<bool>(true, true)), max(max(vec2<i32>(-12685i, -54668i) >> (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(-64571i, 0i))) << ((min(u_input.d, u_input.b.yx) >> (select(vec2<u32>(u_input.a.x, u_input.b.x), vec2<u32>(u_input.d.x, u_input.c), vec2<bool>(false, false)) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(-30019i, i32(-1i) * -17857i, 1i))));
    let var_1 = Struct_1(true);
    global0 = _wgslsmith_mult_i32(var_0.e.x, _wgslsmith_clamp_i32(var_0.e.x, _wgslsmith_dot_vec2_i32(var_0.e, vec2<i32>(0i, -28859i) >> (_wgslsmith_div_vec2_u32(u_input.b.zx, vec2<u32>(4294967295u, 62300u)) % vec2<u32>(32u))), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-12515i, var_0.e.x, 0i, 2147483647i), ~vec4<i32>(var_0.e.x, var_0.e.x, var_0.e.x, var_0.e.x)), ~2147483647i >> (1u % 32u))));
    var_0 = Struct_3(vec4<bool>(true, false, all(vec2<bool>(all(var_0.a), var_1.a)), var_0.b.a == true), Struct_1(var_0.d), max(~vec4<u32>(u_input.b.x, max(4294967295u, u_input.a.x), ~4294967295u, 7706u), vec4<u32>(~(var_0.c.x << (1u % 32u)), ~(~var_0.c.x), 7770u, 4294967295u)), var_0.b.a, _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-var_0.e.x, var_0.e.x), firstLeadingBit(vec2<i32>(var_0.e.x, var_0.e.x))), min(vec2<i32>(var_0.e.x, var_0.e.x), vec2<i32>(-1i, -11868i)) ^ vec2<i32>(min(32831i, var_0.e.x), ~(-34002i)), -select(vec2<i32>(14722i, 79076i), -var_0.e, select(var_0.a.ww, vec2<bool>(var_0.d, var_1.a), true))));
    let var_2 = !all(var_0.a.yyy);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -393f), 1762f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1384f)))), _wgslsmith_f_op_f32(-212f - _wgslsmith_f_op_f32(f32(-1f) * -839f)))), _wgslsmith_f_op_f32(-674f + 1000f)), var_0.e.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1098f, 651f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1307f, -1816f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-721f, -327f) + vec2<f32>(1000f, 991f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1157f, -328f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -375f) + _wgslsmith_f_op_f32(-268f - -777f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(566f, _wgslsmith_mod_vec3_u32(u_input.b, var_0.c.wzw), Struct_3(vec4<bool>(false, true, true, true), Struct_1(var_2), vec4<u32>(4294967295u, u_input.c, var_0.c.x, var_0.c.x), true, var_0.e), Struct_4(Struct_1(false))))), 1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-605f, 704f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(546f, vec3<u32>(var_0.c.x, 30269u, 1391u), Struct_3(vec4<bool>(var_1.a, false, var_1.a, false), var_0.b, vec4<u32>(38894u, 4920u, 4294967295u, 19924u), var_1.a, vec2<i32>(-19579i, var_0.e.x)), Struct_4(var_0.b))), 1f)))), vec4<i32>(-2147483647i, -1i, _wgslsmith_mod_i32(~(-2147483647i), _wgslsmith_add_i32(var_0.e.x, var_0.e.x)), 1i));
}

