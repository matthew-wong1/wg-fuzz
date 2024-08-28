struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(true, vec3<i32>(6008i, 55316i, 742i), 4294967295u, Struct_1(vec2<i32>(2147483647i, -13014i)), -1071f));

var<private> global1: bool = false;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
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

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<u32>) -> vec4<bool> {
    let var_0 = u_input.b.yx;
    var var_1 = Struct_4(true, -((global0.a.b << (vec3<u32>(1u, 4294967295u, 9524u) % vec3<u32>(32u))) ^ reverseBits(vec3<i32>(-19822i, 0i, global0.a.d.a.x))) ^ ~vec3<i32>(~(-2147483647i), global0.a.b.x, _wgslsmith_mult_i32(global0.a.b.x, global0.a.d.a.x)), _wgslsmith_dot_vec3_u32(abs(countOneBits(u_input.b)), ~u_input.b) <= 1u, Struct_2(true, ~max(global0.a.b << (u_input.b % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(global0.a.b, global0.a.b)), 41795u, global0.a.d, global0.a.e));
    let var_2 = Struct_2(false, firstLeadingBit(~(-(~var_1.b))), ~var_1.d.c, Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(var_1.d.d.a | global0.a.d.a, global0.a.d.a), -vec2<i32>(global0.a.b.x, 0i) & ~vec2<i32>(var_1.d.d.a.x, 37477i))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.d.e), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a.e + global0.a.e))))))));
    var var_3 = select(select(select(vec4<bool>(!global0.a.a, var_2.a != false, true || var_2.a, select(true, true, false)), vec4<bool>(false, !global0.a.a, var_2.a, 20844i != var_1.d.b.x), vec4<bool>(global0.a.a, 181f <= global0.a.e, var_2.a, global0.a.a)), !vec4<bool>(global0.a.a | global0.a.a, all(vec4<bool>(false, var_2.a, global0.a.a, var_2.a)), true && var_2.a, all(vec3<bool>(false, var_1.d.a, global0.a.a))), !select(vec4<bool>(global0.a.a, true, false, false), !vec4<bool>(var_1.d.a, var_1.a, global0.a.a, var_2.a), vec4<bool>(true, var_1.a, false, global0.a.a))), select(!vec4<bool>(!var_1.c, var_2.a, any(vec2<bool>(true, var_2.a)), all(vec2<bool>(true, global0.a.a))), !(!(!vec4<bool>(global0.a.a, var_2.a, var_1.a, var_2.a))), !select(vec4<bool>(true, var_2.a, false, true), select(vec4<bool>(var_2.a, global0.a.a, var_2.a, false), vec4<bool>(false, true, var_2.a, true), vec4<bool>(false, true, false, global0.a.a)), !var_2.a)), any(select(select(select(vec4<bool>(var_2.a, true, var_2.a, var_2.a), vec4<bool>(var_1.a, global0.a.a, true, true), false), select(vec4<bool>(true, true, var_2.a, false), vec4<bool>(var_1.c, true, false, true), global0.a.a), true), !select(vec4<bool>(true, global0.a.a, var_2.a, false), vec4<bool>(false, global0.a.a, var_1.a, false), vec4<bool>(false, global0.a.a, global0.a.a, global0.a.a)), true)));
    var_3 = vec4<bool>(var_0.x <= 4294967295u, all(vec2<bool>(!all(vec3<bool>(true, false, var_1.a)), any(vec3<bool>(global0.a.a, false, var_3.x)))), select(any(select(select(vec2<bool>(true, var_3.x), var_3.zx, var_1.d.a), var_3.xy, 1i >= var_1.d.d.a.x)), var_2.a, all(vec2<bool>(!var_1.d.a, global0.a.a != false))), firstLeadingBit(~var_2.b.x) < -max(var_1.b.x, reverseBits(2550i)));
    return !(!(!vec4<bool>(true, false & var_1.c, arg_0.x == var_0.x, all(vec2<bool>(false, true)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<i32>) -> bool {
    global0 = Struct_3(global0.a);
    var var_0 = vec4<u32>(firstLeadingBit(_wgslsmith_div_u32(0u, 1u)), global0.a.c, ~0u, 1u);
    var var_1 = Struct_3(global0.a);
    let var_2 = firstLeadingBit(firstTrailingBit(vec4<u32>(_wgslsmith_div_u32(firstTrailingBit(arg_1), _wgslsmith_add_u32(1u, 0u)), ~countOneBits(global0.a.c), global0.a.c, _wgslsmith_mod_u32(select(4294967295u, var_0.x, global0.a.a), 4294967295u))));
    let var_3 = vec2<u32>(reverseBits(0u), _wgslsmith_sub_u32(~0u, abs(arg_1)) | 29851u);
    return all(select(!(!func_3(var_2.wz)), vec4<bool>(!(arg_1 <= var_0.x), false || !var_1.a.a, !(global0.a.a & global0.a.a), !all(vec3<bool>(true, global0.a.a, false))), !(!(!global0.a.a))));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.a.e, global0.a.e))))))));
    global1 = !any(vec2<bool>(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-956f, 3129f, global0.a.e, 760f) - vec4<f32>(global0.a.e, global0.a.e, -1000f, global0.a.e)), global0.a.c | 0u, vec3<i32>(global0.a.d.a.x, -37095i, global0.a.b.x) << (u_input.b % vec3<u32>(32u))), global0.a.a));
    global0 = Struct_3(global0.a);
    global0 = Struct_3(Struct_2((false && global0.a.a) && (!global0.a.a || func_3(vec2<u32>(global0.a.c, 0u)).x), global0.a.b, u_input.b.x, Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.a.b.x, -82065i), _wgslsmith_div_vec2_i32(vec2<i32>(1i, global0.a.d.a.x), vec2<i32>(2147483647i, -930i)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1106f - global0.a.e)))))));
    var var_1 = ~countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 81379u, _wgslsmith_mult_u32(global0.a.c, u_input.c)), abs(u_input.b), ~(~u_input.b)));
    return select(_wgslsmith_dot_vec2_i32(global0.a.d.a, arg_0.a), ~_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(22705i, global0.a.b.x, 2147483647i, 2147483647i), vec4<i32>(global0.a.b.x, global0.a.b.x, global0.a.d.a.x, 2147483647i)), vec4<i32>(-8496i, -2147483647i, arg_0.a.x, 2147483647i)), all(!select(vec2<bool>(true, global0.a.a), vec2<bool>(false, global0.a.a), global0.a.a))) ^ arg_0.a.x;
}

fn func_4(arg_0: vec2<f32>, arg_1: i32) -> vec3<bool> {
    let var_0 = global0.a.c;
    var var_1 = global0.a.d;
    var var_2 = !vec4<bool>(all(!(!vec3<bool>(global0.a.a, global0.a.a, false))), true, global0.a.a, false || !global0.a.a);
    let var_3 = global0.a.c;
    var_1 = Struct_1(vec2<i32>(0i, min(_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1, arg_1, global0.a.b.x, global0.a.d.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(global0.a.b.x, 49094i, 10129i, arg_1), vec4<i32>(-2147483647i, var_1.a.x, 28608i, 0i))), global0.a.b.x)));
    return !vec3<bool>(global0.a.a, select(_wgslsmith_f_op_f32(round(global0.a.e)) >= -333f, global0.a.a, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(299f, arg_0.x)) < _wgslsmith_f_op_f32(f32(-1f) * -1722f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(14820u);
    var var_1 = Struct_4(true, _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-9965i, global0.a.d.a.x, 49579i) >> (vec3<u32>(u_input.c, global0.a.c, var_0) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, 11498i, global0.a.b.x), global0.a.b) ^ global0.a.b) ^ vec3<i32>(~select(-21344i, global0.a.b.x, global0.a.a), i32(-1i) * -global0.a.b.x, 35724i), any(select(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(392f, 1709f)), func_1(Struct_1(global0.a.b.xz))), vec3<bool>(all(vec2<bool>(global0.a.a, false)), true, all(vec2<bool>(global0.a.a, global0.a.a))), !(!vec3<bool>(global0.a.a, false, false)))), global0.a);
    global0 = Struct_3(Struct_2(global0.a.d.a.x >= var_1.d.d.a.x, var_1.b, 24888u, var_1.d.d, _wgslsmith_f_op_f32(max(1036f, global0.a.e))));
    let var_2 = var_1.d.e;
    global1 = all(vec2<bool>(false, global0.a.a));
    var var_3 = 80506u;
    var_3 = 37035u;
    global0 = Struct_3(Struct_2((all(vec4<bool>(global0.a.a, global0.a.a, false, global0.a.a)) & true) & global0.a.a, var_1.b << ((vec3<u32>(4294967295u, 1u, 5444u) | vec3<u32>(var_1.d.c, 6496u, 2621u)) % vec3<u32>(32u)), global0.a.c, Struct_1(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.a.d.a.x, -49804i), var_1.d.d.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-319f, _wgslsmith_f_op_f32(ceil(-295f)))) + 2212f)));
    var_1 = Struct_4(var_1.a, vec3<i32>(global0.a.b.x, _wgslsmith_sub_i32(~var_1.b.x, 1i), global0.a.b.x), false, var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~_wgslsmith_mod_i32(_wgslsmith_add_i32(-2147483647i, 8934i), _wgslsmith_add_i32(var_1.b.x, -2147483647i))), select(~u_input.b, vec3<u32>(~0u, min(4294967295u, 84712u) << (~u_input.a % 32u), min(var_1.d.c, ~50858u)), vec3<bool>(any(vec3<bool>(true, global0.a.a, global0.a.a)), global0.a.a, !var_1.a != !global0.a.a)), min(~30761u, 68907u));
}

