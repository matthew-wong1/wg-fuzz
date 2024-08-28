struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<i32>(17951i, 18014i, 0i)), Struct_1(vec3<i32>(1i, i32(-2147483648), -1i)), Struct_1(vec3<i32>(-28934i, -1i, 2147483647i)), Struct_1(vec3<i32>(30674i, 27411i, 2147483647i)), Struct_1(vec3<i32>(-1i, 2147483647i, 2147483647i)), Struct_1(vec3<i32>(1i, 7967i, -44845i)), Struct_1(vec3<i32>(-24797i, i32(-2147483648), -1i)), Struct_1(vec3<i32>(10608i, 2147483647i, 9486i)), Struct_1(vec3<i32>(-1i, 1i, -14760i)), Struct_1(vec3<i32>(1i, -18483i, 68999i)), Struct_1(vec3<i32>(1i, 0i, 1i)));

var<private> global2: vec4<f32> = vec4<f32>(-840f, 866f, -964f, 381f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec2<f32>) -> u32 {
    return ~_wgslsmith_mult_u32(26730u, 1u);
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_2 {
    let var_0 = Struct_2(true, arg_0);
    var var_1 = select(~vec3<u32>(arg_0, ~arg_0 | 33777u, _wgslsmith_add_u32(arg_0, var_0.b) >> (var_0.b % 32u)), ~vec3<u32>(min(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, 15144u), vec3<u32>(19033u, arg_0, arg_0)), 4294967295u), func_3(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, arg_1, 36228i, -27571i), vec4<i32>(arg_1, -8497i, 1i, global0.x)), vec3<f32>(-131f, 1411f, global2.x), Struct_1(vec3<i32>(u_input.c, global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(max(global2.zz, global2.wz))), _wgslsmith_mult_u32(_wgslsmith_div_u32(42211u, arg_0), var_0.b)), select(select(!select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(var_0.a, var_0.a, var_0.a), true), select(select(vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(false, var_0.a, true), vec3<bool>(var_0.a, true, false)), vec3<bool>(var_0.a, var_0.a, false), all(vec2<bool>(true, var_0.a))), select(vec3<bool>(true, false, var_0.a), !vec3<bool>(var_0.a, false, true), 0u != arg_0)), !select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, var_0.a), vec3<bool>(true, true, false), vec3<bool>(false, var_0.a, false)), false), any(!vec4<bool>(var_0.a, true, var_0.a, var_0.a))));
    global1 = array<Struct_1, 11>();
    global1 = array<Struct_1, 11>();
    global2 = vec4<f32>(-1098f, _wgslsmith_f_op_f32(max(-1136f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-892f - -391f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(331f)))), 1000f, var_0.a)), -387f);
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(37226u, 11u)];
    let var_1 = global1[_wgslsmith_index_u32(arg_0.b, 11u)];
    let var_2 = ~(~(~_wgslsmith_mult_i32(~var_0.a.x, _wgslsmith_div_i32(var_0.a.x, arg_2.a.x))));
    let var_3 = 0i | (((_wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_0.a.x), var_1.a.xz) & ~2147483647i) ^ -1i) >> (arg_3.b % 32u));
    let var_4 = _wgslsmith_dot_vec4_i32(firstLeadingBit(select(-vec4<i32>(var_3, 10191i, 19457i, var_1.a.x) << (vec4<u32>(arg_3.b, arg_0.b, arg_3.b, 0u) % vec4<u32>(32u)), vec4<i32>(-1i, i32(-1i) * -20363i, 1i, var_0.a.x | 1i), select(arg_3.a, false, true))), vec4<i32>(~global0.x, var_3, countOneBits(-arg_2.a.x) | var_2, -2147483647i));
    return global1[_wgslsmith_index_u32(abs(~(~func_2(~arg_3.b, ~var_4).b)), 11u)];
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> u32 {
    global0 = -(~_wgslsmith_add_vec2_i32(firstTrailingBit(arg_0.a.yz), vec2<i32>(u_input.a >> (1u % 32u), arg_0.a.x)));
    var var_0 = any(vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), u_input.b <= ~max(u_input.b, 28690i)));
    let var_1 = func_4(func_2(1u, 0i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_2), -1295f, global2.x, 1390f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(126f, arg_1, global2.x, global2.x)))) + vec4<f32>(_wgslsmith_f_op_f32(1138f * arg_1), _wgslsmith_f_op_f32(-global2.x), arg_2, _wgslsmith_f_op_f32(-636f - -164f))), true)), arg_0, Struct_2(false, max(1u, 4294967295u)));
    let var_2 = 912f;
    global0 = arg_0.a.xx;
    return ~0u | _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(6909u, 26501u, 7951u)), vec3<u32>(1u, 1u, 1u)), ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(22148u, ~_wgslsmith_div_u32(36863u, select(func_1(Struct_1(vec3<i32>(-38249i, 43223i, global0.x)), 1979f, global2.x), ~1u, true)), 1u);
    let var_1 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(true, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true))), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), select(vec3<bool>(any(vec3<bool>(true, true, true)), true, select(2147483647i, global0.x, false) != 28070i), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), !vec3<bool>(all(vec3<bool>(true, false, true)), func_2(var_0.x, u_input.b).a, false)), vec3<bool>(true, select(true, !(global2.x <= global2.x), all(vec3<bool>(false, true, false)) & (global0.x > 19796i)), all(vec3<bool>(true, true, true))));
    global0 = vec2<i32>(1i, global0.x);
    var var_2 = true;
    var_2 = (var_0.x != 37165u) == any(!var_1.zx);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -max(select(vec4<i32>(global0.x, -2147483647i, u_input.c, u_input.b), vec4<i32>(2147483647i, global0.x, global0.x, global0.x), vec4<bool>(var_1.x, var_1.x, var_1.x, false)), firstTrailingBit(vec4<i32>(48283i, -24866i, -2147483647i, global0.x))), 1i, _wgslsmith_dot_vec2_u32(var_0.zy, reverseBits(countOneBits(var_0.yy >> (var_0.yy % vec2<u32>(32u))))), _wgslsmith_clamp_u32(78225u, ~(~4294967295u) ^ (firstLeadingBit(var_0.x) >> (var_0.x % 32u)), 95748u), ~_wgslsmith_clamp_u32(1u, var_0.x, ~1u));
}

