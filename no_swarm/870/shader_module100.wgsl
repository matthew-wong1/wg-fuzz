struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-739f)) - _wgslsmith_f_op_f32(floor(783f)))) * _wgslsmith_f_op_f32(782f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1243f - -1503f))))));
    var var_1 = u_input.a.zy;
    let var_2 = _wgslsmith_clamp_i32(global0.b.x | -(15073i << (1u % 32u)), u_input.d ^ global0.b.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-reverseBits(vec3<i32>(global0.b.x, -2147483647i, 18609i)), -(vec3<i32>(global0.b.x, global0.b.x, global0.b.x) << (u_input.a % vec3<u32>(32u)))), 1i));
    let var_3 = vec3<i32>(30446i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(~countOneBits(0i), global0.b.x), -73518i), 1i);
    let var_4 = vec3<i32>(2147483647i, var_2, min(~(~firstLeadingBit(u_input.e)), ~(_wgslsmith_sub_i32(u_input.c, var_3.x) ^ (i32(-1i) * -41118i))));
    return 3312i;
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> u32 {
    global0 = Struct_1(4294967295u, -global0.b);
    var var_0 = Struct_1(1u, global0.b);
    global1 = -278f;
    let var_1 = countOneBits(u_input.a);
    var_0 = Struct_1(reverseBits(0u), -arg_0);
    return global0.a;
}

fn func_1(arg_0: i32) -> bool {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -709f)))))) - 1000f);
    let var_0 = select(vec2<bool>(false, true), !select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), !all(vec2<bool>(false, true))), -(~abs(global0.b.x)) < (~firstLeadingBit(global0.b.x) << (u_input.a.x % 32u)));
    let var_1 = _wgslsmith_mod_vec4_i32(~(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0, -1i, u_input.c, 2147483647i), vec4<i32>(5744i, u_input.b, -436i, u_input.d)), vec4<i32>(u_input.b, 9039i, -25897i, 56630i) & vec4<i32>(1i, -2147483647i, u_input.e, 1622i)) | vec4<i32>(arg_0, -23636i, arg_0, ~(-64149i))), vec4<i32>(abs(~(global0.b.x & global0.b.x)), u_input.b, func_2(), 0i));
    var var_2 = Struct_1(func_3(abs(_wgslsmith_mod_vec2_i32(-var_1.yw, global0.b)), 46183u), -firstLeadingBit(_wgslsmith_add_vec2_i32(global0.b >> (vec2<u32>(global0.a, 12195u) % vec2<u32>(32u)), var_1.xx)));
    global0 = Struct_1(24291u, vec2<i32>(u_input.e, 4337i));
    return !var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = select(vec4<bool>(false || !any(vec4<bool>(true, false, true, false)), false, -7942i != (select(u_input.b, u_input.d, false) | u_input.c), all(vec3<bool>(true, true, true))), vec4<bool>(true, func_1(_wgslsmith_mod_i32(-2147483647i, u_input.c)), any(vec3<bool>(any(vec3<bool>(true, true, true)), true, false)), any(vec2<bool>(true, true)) & !any(vec4<bool>(false, false, false, false))), vec4<bool>(true, true, any(vec3<bool>(true, true, true)) || false, true));
    let var_2 = all(select(select(!(!vec4<bool>(false, var_1.x, true, false)), var_1, var_1), !select(select(var_1, vec4<bool>(var_1.x, true, var_1.x, false), true), select(vec4<bool>(true, true, false, var_1.x), vec4<bool>(var_1.x, true, var_1.x, false), false), select(var_1, var_1, vec4<bool>(var_1.x, var_1.x, false, false))), !var_1));
    global1 = -1000f;
    var_0 = var_2;
    var var_3 = Struct_3(21926i);
    var var_4 = vec4<i32>(_wgslsmith_dot_vec3_i32(max(reverseBits(abs(vec3<i32>(-8714i, u_input.e, u_input.c))), abs(vec3<i32>(-1i, u_input.c, 2147483647i)) ^ -vec3<i32>(var_3.a, -1i, u_input.d)), countOneBits(-vec3<i32>(var_3.a, -32800i, global0.b.x))), u_input.b, ~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.a, 0i) << (vec2<u32>(7440u, 21869u) % vec2<u32>(32u)), global0.b), _wgslsmith_add_i32(var_3.a, 1i & var_3.a)), -1i);
    var_3 = Struct_3(u_input.e | var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_3.a, 13653i)), var_4.xx), u_input.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1550f, 207f, 1455f)))))), vec2<i32>(-4145i, 15707i), vec4<i32>(firstLeadingBit(u_input.d), _wgslsmith_add_i32(var_4.x << (global0.a % 32u), abs(var_4.x)), func_2(), _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, -1i, var_4.x), var_4.xxx)));
}

