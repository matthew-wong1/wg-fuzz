struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false));

var<private> global1: vec2<u32>;

var<private> global2: vec3<u32> = vec3<u32>(74359u, 52511u, 71771u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: bool, arg_3: vec4<u32>) -> bool {
    global1 = ~vec2<u32>(max(select(_wgslsmith_div_u32(global1.x, arg_0.x), global1.x >> (arg_3.x % 32u), arg_2 | arg_2), ~firstTrailingBit(global2.x)), firstLeadingBit(reverseBits(abs(global1.x))));
    let var_0 = -186f;
    let var_1 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a, u_input.a), _wgslsmith_mod_i32(u_input.a, -3326i)), reverseBits(countOneBits(~(~u_input.a))), 0i | max(u_input.a, 2147483647i));
    global2 = vec3<u32>(global1.x, ~54835u, ~arg_3.x);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(min(var_0, arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_1.x, -541f)), _wgslsmith_f_op_f32(var_0 * var_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0, arg_1.x))))), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-var_0)));
    return arg_1.x <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1555f * _wgslsmith_f_op_f32(arg_1.x + 2077f))))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = vec3<bool>(true, func_3(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(countOneBits(global2.zz), _wgslsmith_add_vec2_u32(global2.xz, vec2<u32>(global1.x, global2.x))), ~_wgslsmith_div_vec2_u32(global2.yx, vec2<u32>(global1.x, 0u))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -528f))), 1463f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(826f + 737f)), -563f), true, firstLeadingBit(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(vec4<u32>(global2.x, global1.x, global2.x, 0u))))), all(vec3<bool>(true, true, true)));
    var var_1 = firstTrailingBit(0i);
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2080f - -815f))) - -145f), 1244f));
    let var_3 = select(!var_0, var_0, true);
    let var_4 = Struct_3(firstTrailingBit(~vec3<u32>(44927u, arg_0, abs(global1.x))), firstLeadingBit(firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(63695i, u_input.a))), Struct_1(select(all(!vec2<bool>(var_3.x, false)), any(var_0.yy), min(global2.x, 4294967295u) >= _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 0u), vec2<u32>(global1.x, 1u))), _wgslsmith_sub_vec2_u32(vec2<u32>(91112u, _wgslsmith_mod_u32(arg_0, global1.x)), _wgslsmith_div_vec2_u32(~global2.xy, abs(global2.yy))), (~u_input.a >> (~57922u % 32u)) ^ ~2147483647i), Struct_1(_wgslsmith_f_op_f32(-442f + _wgslsmith_f_op_f32(115f * -709f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1170f, 1685f)) * _wgslsmith_div_f32(-1052f, 225f)), global2.yx, -2147483647i | (-u_input.a | -2147483647i)), Struct_1(true, _wgslsmith_sub_vec2_u32(global2.zx, vec2<u32>(1u, max(17973u, global2.x))), ~u_input.a));
    return Struct_1(!var_4.c.a, global2.xx, var_4.b.x);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<bool>) -> bool {
    var var_0 = func_2(82046u);
    global0 = array<Struct_2, 20>();
    var var_1 = Struct_2(arg_1.x && select(any(vec4<bool>(arg_1.x, var_0.a, true, true)), all(arg_1.yx), arg_0.d.c <= -2147483647i));
    var var_2 = -select(vec2<i32>(-1i, 1865i), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(min(arg_0.b, vec2<i32>(var_0.c, var_0.c)), vec2<i32>(21991i, 19396i)), arg_0.b), vec2<bool>(true, func_2(~arg_0.c.b.x).a));
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -929f) * _wgslsmith_div_f32(920f, 767f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -1000f) + _wgslsmith_f_op_f32(282f + 899f))))), true));
    return !(global1.x == arg_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(-1418i);
    let var_1 = select(select(vec3<bool>(func_1(Struct_3(vec3<u32>(0u, global2.x, 1u), vec2<i32>(var_0, 34009i), Struct_1(true, vec2<u32>(global1.x, 4294967295u), u_input.a), Struct_1(false, global2.xz, 48672i), Struct_1(true, global2.xz, u_input.a)), vec4<bool>(false, false, false, false)) || true, true, true), !vec3<bool>(true, func_1(Struct_3(vec3<u32>(1u, global1.x, 1u), vec2<i32>(u_input.a, -14184i), Struct_1(false, global2.yz, 8652i), Struct_1(true, global2.zz, var_0), Struct_1(true, global2.xy, -1i)), vec4<bool>(false, true, false, true)), false), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), vec3<bool>(false, true, false), true)), select(!vec3<bool>(false, func_3(vec2<u32>(global2.x, 1u), vec4<f32>(-631f, 1653f, -983f, 817f), false, vec4<u32>(0u, global1.x, global1.x, global2.x)), any(vec3<bool>(true, false, false))), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(false, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))), select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !select(vec3<bool>(true, true, false), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), !(var_0 != var_0)));
    global2 = vec3<u32>(_wgslsmith_sub_u32(~firstLeadingBit(global1.x), reverseBits(global1.x)), ~abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(44326u, global2.x, 4294967295u), ~vec3<u32>(global2.x, 16158u, global2.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(global2.x), global2.x, max(max(0u, global1.x), 29196u), 1u), ~select(vec4<u32>(1693u, 514u, global2.x, 20070u), ~vec4<u32>(global2.x, 54251u, 0u, global2.x), true)));
    let var_2 = !vec3<bool>(all(select(var_1.zz, var_1.yx, select(var_1.x, true, var_1.x))), var_1.x, !var_1.x);
    global0 = array<Struct_2, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(global2.xy ^ _wgslsmith_mod_vec2_u32(vec2<u32>(global1.x, 4294967295u), global2.zx)), -firstTrailingBit((vec4<i32>(var_0, 2147483647i, -2147483647i, var_0) | vec4<i32>(u_input.a, u_input.a, var_0, var_0)) >> (vec4<u32>(0u, 4294967295u, 87934u, global2.x) % vec4<u32>(32u))));
}

