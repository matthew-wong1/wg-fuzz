struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1027f, -1941f, 109f, 631f, vec2<i32>(-1i, -41433i));

var<private> global1: array<vec2<bool>, 6>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = Struct_1(1192f, 308f, arg_3.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(510f, global0.d))), vec2<i32>(firstTrailingBit(i32(-1i) * -15605i), arg_3.b) << ((~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3.a.x, arg_3.a.x), vec2<u32>(45539u, 1u), arg_3.a.xy) | ~(~vec2<u32>(4294967295u, arg_3.a.x))) % vec2<u32>(32u)));
    let var_1 = Struct_2(arg_3.a, 0i, Struct_1(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a)))), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.x))) * _wgslsmith_div_f32(var_0.b, -225f)), 593f, vec2<i32>(-1i, u_input.b.x)));
    let var_2 = arg_3.c.d;
    let var_3 = _wgslsmith_mod_i32(-1i, -firstLeadingBit(~(-var_0.e.x)));
    global0 = Struct_1(_wgslsmith_f_op_f32(floor(arg_1.x)), arg_0.x, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -446f)), -720f, vec2<i32>(min(var_3, _wgslsmith_mod_i32(_wgslsmith_mult_i32(global0.e.x, 2147483647i), 33181i)), -(_wgslsmith_div_i32(var_1.c.e.x, -1i) | firstTrailingBit(2147483647i))));
    return vec3<bool>(false, all(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)))), false);
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = !(!func_3(vec2<f32>(-1455f, global0.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, -658f))), _wgslsmith_f_op_vec2_f32(arg_0 * vec2<f32>(global0.a, -352f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(153f, -528f)))), Struct_2(vec4<u32>(14616u, 0u, 1u, 51627u), min(2147483647i, 2147483647i), Struct_1(1000f, 1223f, 1488f, 2196f, u_input.b))));
    global1 = array<vec2<bool>, 6>();
    return Struct_2(~vec4<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 0u), ~vec4<u32>(1u, 4294967295u, 4294967295u, 1u)), _wgslsmith_mult_u32(1u, 1u), 24413u), select(-20543i, ~_wgslsmith_mod_i32(u_input.a, u_input.b.x) >> (~_wgslsmith_add_u32(0u, 0u) % 32u), false), Struct_1(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1471f + global0.d))), arg_0.x, arg_0.x, ~vec2<i32>(-1i, u_input.a >> (0u % 32u))));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec3<u32>) -> Struct_1 {
    global1 = array<vec2<bool>, 6>();
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 765f) - vec2<f32>(-555f, 1437f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(120f, -378f) - vec2<f32>(474f, 149f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-307f, 1000f) + vec2<f32>(arg_0, arg_0))), !select(vec2<bool>(false, true), global1[_wgslsmith_index_u32(8427u, 6u)], vec2<bool>(true, false)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-873f, -1488f))));
    var var_1 = Struct_1(global0.a, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-864f - 510f)) - func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-318f, 1397f) + vec2<f32>(1171f, arg_1))).c.a)), -904f, vec2<i32>(u_input.b.x, firstTrailingBit(select(global0.e.x, var_0.c.e.x, true)) >> (~_wgslsmith_div_u32(arg_2.x, 46327u) % 32u)));
    let var_2 = false;
    let var_3 = func_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2285f, -157f))) * vec2<f32>(-157f, -393f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, var_1.a)) + vec2<f32>(var_1.b, -151f))))))).c;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 6>();
    var var_0 = vec4<u32>(4294967295u, 1u, ~firstLeadingBit(0u) & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(45468u, 82296u, 4294967295u)), 37147u) | vec4<u32>(firstLeadingBit(5251u), 0u, _wgslsmith_mult_u32(1u, 1u), ~1u);
    global1 = array<vec2<bool>, 6>();
    var var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(max(~(~(~28770u)), var_0.x)), 6u)];
    let var_2 = Struct_2(max(vec4<u32>(select(0u, 49704u, true) << (88455u % 32u), 14332u, _wgslsmith_sub_u32(var_0.x, 68275u) << (~4294967295u % 32u), 4294967295u), ~vec4<u32>(~1u, 103616u, 1u, _wgslsmith_clamp_u32(var_0.x, 72531u, var_0.x))), 10668i, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.c)))), _wgslsmith_f_op_f32(min(625f, global0.c)), global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1647f * _wgslsmith_div_f32(global0.a, -458f))), vec2<i32>(_wgslsmith_sub_i32(~global0.e.x, 0i), 29746i)));
    global0 = func_1(var_2.c.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global0.a)))), ~(~vec3<u32>(var_2.a.x << (17257u % 32u), ~1u, var_0.x | 15275u)));
    let var_3 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(var_0.yyw, ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.a.x, var_2.a.x, 35810u), select(var_0.zzx, var_0.wxx, vec3<bool>(true, true, false)))), _wgslsmith_sub_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.x, var_0.x, 57892u, var_0.x), var_2.a), abs(0u)), _wgslsmith_clamp_u32(4294967295u ^ ~var_0.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_2.a.x, 46643u), _wgslsmith_clamp_u32(8860u, var_0.x, 0u), ~var_0.x), max(var_0.x ^ var_0.x, var_2.a.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, -1070f) + vec2<f32>(1253f, -332f))))))), _wgslsmith_mult_vec4_i32(select((vec4<i32>(u_input.b.x, 2147483647i, var_3.e.x, var_2.c.e.x) | vec4<i32>(global0.e.x, -2147483647i, var_2.b, u_input.b.x)) >> (vec4<u32>(0u, var_2.a.x, 1u, 61426u) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(1i, -34542i), 45595i, 10208i, -2147483647i), true), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -2147483647i, var_3.e.x, -14760i), vec4<i32>(u_input.a, var_3.e.x, global0.e.x, -1i)), firstTrailingBit(vec4<i32>(-5117i, -28683i, var_3.e.x, -21932i)), -vec4<i32>(var_2.c.e.x, -6457i, global0.e.x, -3002i)), ~reverseBits(vec4<i32>(var_3.e.x, 1i, -1197i, var_2.c.e.x)), _wgslsmith_div_vec4_i32(vec4<i32>(global0.e.x, var_2.c.e.x, -2147483647i, 0i) & vec4<i32>(var_2.c.e.x, 0i, -2147483647i, var_3.e.x), vec4<i32>(var_3.e.x, var_2.b, var_3.e.x, -2147483647i)))));
}

