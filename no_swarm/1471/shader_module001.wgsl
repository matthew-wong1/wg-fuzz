struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(0i, 6089i), true, 49308u, vec3<u32>(1u, 35042u, 47640u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = Struct_1(arg_0.a, arg_2.b, ~firstLeadingBit(~(~global0.d.x)), _wgslsmith_add_vec3_u32(vec3<u32>(min(_wgslsmith_sub_u32(50140u, arg_2.c), _wgslsmith_sub_u32(3080u, u_input.b)), 1u, max(~92483u, arg_0.c)), min(select(arg_0.d, _wgslsmith_clamp_vec3_u32(global0.d, vec3<u32>(39835u, arg_0.c, arg_0.d.x), vec3<u32>(88805u, 34576u, arg_0.d.x)), select(vec3<bool>(true, arg_2.b, global0.b), vec3<bool>(true, true, arg_1.x), true)), vec3<u32>(_wgslsmith_div_u32(global0.d.x, arg_2.c), 1u, _wgslsmith_mult_u32(0u, u_input.b)))));
    global0 = Struct_1(-(~arg_0.a), false || any(arg_1), min(arg_2.d.x, 4294967295u) | _wgslsmith_clamp_u32(~arg_2.d.x, global0.d.x, ~(~var_0.c)), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32((vec3<u32>(arg_0.d.x, u_input.c, 86491u) | vec3<u32>(u_input.b, 83103u, u_input.c)) & global0.d, ~vec3<u32>(50475u, 0u, 8160u)), min(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(30093u, 0u, arg_2.d.x), var_0.d), vec3<u32>(global0.c, arg_0.d.x, 1u) | vec3<u32>(var_0.c, 34123u, 47115u)), var_0.d)));
    let var_1 = Struct_1(arg_0.a & arg_0.a, _wgslsmith_f_op_f32(trunc(1f)) < -437f, ~_wgslsmith_div_u32(~max(4294967295u, u_input.c), 15472u & _wgslsmith_div_u32(u_input.b, 1u)), ~(~vec3<u32>(~var_0.c, ~1u, ~44366u)));
    global0 = var_1;
    var var_2 = _wgslsmith_sub_u32(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(16387u, _wgslsmith_mult_u32(u_input.c, arg_0.c), ~2196u), 0u), 47214u);
    return vec4<u32>(14798u, ~_wgslsmith_clamp_u32(abs(~global0.c), min(~31106u, ~var_0.c), _wgslsmith_clamp_u32(~1u, ~35474u, _wgslsmith_mod_u32(arg_2.d.x, arg_0.c))), 0u, firstTrailingBit(1u | _wgslsmith_dot_vec3_u32(arg_2.d, global0.d)));
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(~(min(vec2<i32>(-2446i, u_input.d.x), u_input.d.xw) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 1079i), u_input.d.xy)) ^ global0.a, global0.b, 11463u, ~_wgslsmith_mult_vec3_u32(~global0.d, global0.d) >> (vec3<u32>(_wgslsmith_clamp_u32(~global0.d.x, 4294967295u, global0.c), u_input.b, u_input.b) % vec3<u32>(32u)));
    global0 = Struct_1(vec2<i32>(9419i, countOneBits(u_input.a)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(global0.d.x, 1u, u_input.c)), global0.d), global0.d) >= u_input.b, ~u_input.c, vec3<u32>(_wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(125795u, 15216u, u_input.b, 0u), vec4<u32>(global0.c, 0u, 400u, global0.c))), ~(vec4<u32>(global0.c, 12883u, global0.c, 4294967295u) | vec4<u32>(80203u, global0.d.x, u_input.c, 1u))), _wgslsmith_add_u32(1u, _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.c, u_input.b), global0.c << (u_input.c % 32u))), ~((global0.c >> (global0.d.x % 32u)) ^ ~u_input.c)));
    global0 = Struct_1(-firstTrailingBit(u_input.d.ww), global0.b, ~u_input.c, vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global0.c, global0.c, global0.c), func_3(Struct_1(global0.a, global0.b, u_input.c, vec3<u32>(1u, 81088u, 1u)), vec2<bool>(true, true), Struct_1(vec2<i32>(global0.a.x, 1i), false, u_input.c, global0.d))), ~max(4294967295u, u_input.b)), 0u, func_3(Struct_1(vec2<i32>(global0.a.x, -1i), !global0.b, ~u_input.c, vec3<u32>(u_input.b, 4294967295u, u_input.b)), select(select(vec2<bool>(global0.b, true), vec2<bool>(true, true), true), select(vec2<bool>(true, global0.b), vec2<bool>(false, true), true), true), Struct_1(vec2<i32>(0i, -57567i), global0.a.x >= global0.a.x, global0.c, ~vec3<u32>(465u, global0.d.x, global0.d.x))).x));
    let var_0 = select(!vec2<bool>(global0.b, global0.b), !(!vec2<bool>(false, global0.b)), true);
    let var_1 = vec2<i32>(global0.a.x ^ global0.a.x, _wgslsmith_mult_i32(~u_input.d.x >> (_wgslsmith_div_u32(reverseBits(4294967295u), _wgslsmith_clamp_u32(global0.d.x, global0.d.x, 1u)) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(min(global0.a.x, 23675i), u_input.a, global0.a.x, ~global0.a.x), u_input.d)));
    return Struct_1(~countOneBits(firstTrailingBit(var_1)) >> (_wgslsmith_add_vec2_u32(~select(vec2<u32>(global0.d.x, global0.d.x), global0.d.zx, var_0), vec2<u32>(abs(1u), ~40710u)) % vec2<u32>(32u)), !(!select(var_0.x, true, true)) == !(global0.b | var_0.x), countOneBits(~_wgslsmith_mult_u32(global0.c, _wgslsmith_clamp_u32(u_input.b, 26153u, 835u))), ~global0.d);
}

fn func_1() -> vec2<bool> {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f)));
    var var_2 = !(!select(vec2<bool>(true, true), select(select(vec2<bool>(true, global0.b), vec2<bool>(false, global0.b), vec2<bool>(var_0.b, true)), vec2<bool>(var_0.b, global0.b), select(vec2<bool>(var_0.b, false), vec2<bool>(var_0.b, global0.b), false)), vec2<bool>(true, false)));
    var_2 = vec2<bool>(!var_0.b, var_2.x);
    var var_3 = func_2();
    return select(select(select(!select(vec2<bool>(global0.b, var_0.b), vec2<bool>(var_3.b, true), vec2<bool>(true, var_2.x)), vec2<bool>(!var_3.b, false & var_0.b), vec2<bool>(true, true)), !select(select(vec2<bool>(global0.b, global0.b), vec2<bool>(var_0.b, var_2.x), vec2<bool>(var_0.b, var_0.b)), vec2<bool>(true, var_2.x), select(vec2<bool>(var_3.b, global0.b), vec2<bool>(var_3.b, true), global0.b)), var_2.x), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), var_2.x), !select(!vec2<bool>(false, var_2.x), !vec2<bool>(false, global0.b), var_3.b), select(true, false, any(select(vec2<bool>(var_2.x, false), vec2<bool>(false, true), vec2<bool>(true, true))))), !select(vec2<bool>(var_3.b & false, all(vec2<bool>(true, false))), select(select(vec2<bool>(var_3.b, false), vec2<bool>(global0.b, false), vec2<bool>(var_3.b, var_0.b)), vec2<bool>(global0.b, var_0.b), true), select(select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(false, var_3.b), true), vec2<bool>(var_3.b, false), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = all(!select(select(select(vec3<bool>(true, true, true), vec3<bool>(global0.b, var_0.x, global0.b), global0.b), vec3<bool>(var_0.x, global0.b, false), global0.b), select(!vec3<bool>(var_0.x, global0.b, var_0.x), vec3<bool>(true, var_0.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, global0.b)), func_2().b));
    let var_2 = global0.c;
    var var_3 = ~(~vec3<i32>(~(-2147483647i), ~35909i, _wgslsmith_mod_i32(u_input.d.x, global0.a.x << (35013u % 32u))));
    var_1 = select(true, !any(vec2<bool>(false, true)), true);
    var var_4 = global0.b;
    var var_5 = func_2();
    var_1 = !(!var_5.b);
    var var_6 = Struct_1(~var_3.zz, false, _wgslsmith_dot_vec4_u32(vec4<u32>(abs(abs(var_5.d.x)), 1u, _wgslsmith_mod_u32(19112u, firstTrailingBit(1u)), func_2().c), vec4<u32>(u_input.c, var_5.d.x, ~global0.d.x, 66767u)), var_5.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(_wgslsmith_sub_i32(abs(-2862i), -1i)), i32(-1i) * -_wgslsmith_dot_vec2_i32(var_5.a, vec2<i32>(32796i, 1i)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global0.a.x, var_6.a.x, var_3.x), vec4<i32>(-45135i, var_3.x, u_input.d.x, u_input.d.x)), 7167i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-370f)) + 1f), 1i);
}

