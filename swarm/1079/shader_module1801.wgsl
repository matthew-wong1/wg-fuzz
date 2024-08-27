struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3 = Struct_3(Struct_1(vec3<i32>(-88284i, 17304i, -16967i), vec2<f32>(-419f, -1700f), 922f, -1160f), vec2<i32>(1i, -13189i), Struct_1(vec3<i32>(i32(-2147483648), 28727i, i32(-2147483648)), vec2<f32>(246f, -106f), 2110f, -635f));

var<private> global2: array<Struct_1, 25>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> vec3<bool> {
    var var_0 = global0.a.x;
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c));
    let var_3 = firstLeadingBit(~(~(vec4<u32>(0u, 1u, arg_1.x, 0u) | vec4<u32>(8964u, u_input.a.x, u_input.b, u_input.a.x))));
    let var_4 = Struct_2(Struct_1(var_1.c.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1540f, global1.c.c) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c.b) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1902f, -1468f) - var_1.c.b))), var_1.c.b.x, -295f));
    return select(select(!vec3<bool>(all(vec3<bool>(true, false, false)), true, 2600i < var_4.a.a.x), vec3<bool>(any(vec3<bool>(true, true, false)), !all(vec2<bool>(false, true)), true), !(!all(vec2<bool>(true, false)))), select(select(select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), true), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, any(vec2<bool>(false, false)), true)), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), all(vec4<bool>(true, true, true, true))), any(vec3<bool>(true, true, false))), !all(vec2<bool>(all(vec2<bool>(false, false)), all(vec4<bool>(true, false, true, false)))));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> f32 {
    global2 = array<Struct_1, 25>();
    var var_0 = vec4<bool>(true, all(select(vec4<bool>(0u == u_input.b, true, all(vec4<bool>(false, false, false, true)), true), vec4<bool>(true, any(vec3<bool>(false, false, false)), true, true), !all(vec2<bool>(true, true)))), all(vec3<bool>(true, true, true)), true);
    let var_1 = any(func_3(Struct_3(global2[_wgslsmith_index_u32(22670u, 25u)], reverseBits(-global0.a.yz), global1.c), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a.x)), vec4<u32>(62934u, abs(u_input.b), _wgslsmith_mod_u32(u_input.a.x, u_input.b), ~u_input.b))));
    var var_2 = Struct_2(global1.a);
    global1 = Struct_3(Struct_1(vec3<i32>(var_2.a.a.x, global0.a.x, 2147483647i), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-2169f - 1205f), 387f) * vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.d)), -645f)), 887f, _wgslsmith_f_op_f32(-var_2.a.c)), vec2<i32>(max(~u_input.c.x, global1.a.a.x) >> (9041u % 32u), global1.c.a.x), Struct_1(vec3<i32>(abs(-1i), ~0i, arg_0 >> (_wgslsmith_mod_u32(4294967295u, 84992u) % 32u)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(var_2.a.b)))), arg_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(582f, -1318f), _wgslsmith_f_op_f32(min(1000f, arg_1.x)))))));
    return -492f;
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    var var_0 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(10297i, arg_0.b)), _wgslsmith_f_op_f32(-623f + arg_0.d)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(414f, -600f))))), _wgslsmith_f_op_f32(func_2(_wgslsmith_clamp_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 1i), global1.b), _wgslsmith_mod_i32(u_input.c.x, abs(1i)), global1.b.x), vec2<f32>(global0.d, _wgslsmith_f_op_f32(abs(-474f))))), _wgslsmith_f_op_f32(2181f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(1i, arg_0.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 501f))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1750f - var_0.c), -594f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(152f - var_0.d))), _wgslsmith_f_op_f32(round(global1.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1365f, var_0.d), _wgslsmith_f_op_f32(-472f + 1101f))))));
    var_0 = global1.a;
    let var_2 = Struct_1(firstTrailingBit(vec3<i32>(_wgslsmith_add_i32(global0.a.x, -21056i) >> (~u_input.a.x % 32u), -global0.a.x, select(1i, _wgslsmith_dot_vec2_i32(arg_0.a.xy, u_input.c.xz), all(vec4<bool>(false, true, true, false))))), vec2<f32>(1394f, var_1.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-597f * _wgslsmith_div_f32(var_0.d, var_0.b.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.c, global0.c)) - _wgslsmith_f_op_f32(412f + -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(firstTrailingBit(global1.b.x ^ -40617i), _wgslsmith_f_op_vec2_f32(-var_1.yx)))));
    global2 = array<Struct_1, 25>();
    return Struct_3(Struct_1(firstTrailingBit(vec3<i32>(-1i, u_input.c.x, -3522i)) << (u_input.a % vec3<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) - -1072f), var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1342f)))) * _wgslsmith_f_op_f32(global1.c.c - var_0.b.x)), _wgslsmith_f_op_f32(-arg_0.d)), min(vec2<i32>(-761i, arg_0.a.x) ^ _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.a.x, arg_0.a.x), vec2<i32>(-2147483647i, -5639i)), countOneBits(vec2<i32>(u_input.c.x, -2147483647i))) & ~firstLeadingBit(firstLeadingBit(global1.c.a.yy)), Struct_1(-(_wgslsmith_div_vec3_i32(global1.a.a, vec3<i32>(global0.a.x, arg_0.a.x, -8378i)) | var_2.a), vec2<f32>(global0.c, _wgslsmith_f_op_f32(global1.c.b.x + 1f)), 1111f, 1000f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(global1.a);
    global2 = array<Struct_1, 25>();
    global2 = array<Struct_1, 25>();
    var var_0 = firstLeadingBit(abs(select(-_wgslsmith_add_vec3_i32(u_input.c.zyx, vec3<i32>(-2147483647i, global1.c.a.x, -10194i)), vec3<i32>(10275i, -11429i, global1.b.x) & (global0.a | vec3<i32>(global0.a.x, global0.a.x, 1i)), (global1.c.a.x == u_input.c.x) || true)));
    global2 = array<Struct_1, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(max(22078i, -1i), -20108i, ~global0.a.x, -u_input.c.x), u_input.c), u_input.c.x, 71010i), -727f, 0u, _wgslsmith_div_u32(u_input.b, firstLeadingBit(52324u)) ^ 37381u, vec2<u32>(0u, _wgslsmith_sub_u32(6941u, u_input.a.x >> (~6647u % 32u))));
}

