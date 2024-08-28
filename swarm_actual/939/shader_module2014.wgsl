struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<bool>, 24>;

var<private> global2: array<vec4<f32>, 23>;

var<private> global3: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<bool> {
    var var_0 = all(select(!(!(!vec3<bool>(global3.a, global3.d, false))), select(!(!vec3<bool>(false, true, global3.d)), select(!vec3<bool>(global3.d, global3.d, global3.a), vec3<bool>(true, false, global3.a), !global3.d), !(!global3.a)), global3.c != 1000f));
    var_0 = any(vec4<bool>(global3.a, global3.a, false, any(vec4<bool>(global3.a, true, true, 56919u < global3.b.x))));
    var var_1 = abs(1u);
    var var_2 = Struct_1(!(global3.c < global3.c), ~global3.e.zz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.c))), global3.a, ~vec4<u32>(~4294967295u, ~min(global3.e.x, 47873u), 30355u, 4294967295u));
    let var_3 = var_2.d;
    return select(!vec4<bool>(false, !global3.a, true, true), !vec4<bool>(true, any(!vec3<bool>(false, false, global3.d)), all(!vec3<bool>(true, false, global3.a)), true & var_2.d), !(!(false && !var_2.a)));
}

fn func_2(arg_0: vec2<i32>, arg_1: f32) -> Struct_1 {
    global3 = Struct_1(global3.d, _wgslsmith_mod_vec2_u32(~global3.b, global3.e.wx & global3.e.yz), _wgslsmith_f_op_f32(-arg_1), true, vec4<u32>(20234u, u_input.a, 0u, ~20222u));
    let var_0 = Struct_1(all(func_3()), firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec2_u32(global3.e.yz, ~global3.e.zx), global3.e.x)), global3.c, func_3().x, ~_wgslsmith_add_vec4_u32(global3.e, vec4<u32>(global3.b.x, 8354u, _wgslsmith_mult_u32(4294967295u, global3.e.x), ~u_input.a)));
    let var_1 = countOneBits(min(~(~vec4<i32>(1i, u_input.b, u_input.b, u_input.b)), firstTrailingBit(vec4<i32>(u_input.b, -40081i, -2147483647i, -29952i)))) ^ -(vec4<i32>(7284i, arg_0.x, u_input.b, arg_0.x) ^ (-vec4<i32>(u_input.b, -2147483647i, -2147483647i, 22177i) ^ firstLeadingBit(vec4<i32>(0i, u_input.b, u_input.b, -52328i))));
    let var_2 = var_0;
    let var_3 = var_0;
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global3 = Struct_1(any(vec4<bool>(!(!arg_1.a), (7235i < u_input.b) || true, all(vec2<bool>(arg_0.d, arg_1.a)), any(!vec3<bool>(arg_0.d, arg_0.d, arg_0.a)))), vec2<u32>(_wgslsmith_dot_vec2_u32(arg_1.b, abs(vec2<u32>(global3.b.x, 23033u)) | vec2<u32>(global3.e.x, 1u)), arg_0.b.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) * arg_1.c), 247f)), arg_0.a || any(!global1[_wgslsmith_index_u32(50993u, 24u)]), min(vec4<u32>(arg_0.e.x, ~5810u, ~_wgslsmith_mod_u32(54950u, 1u), 4294967295u), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), _wgslsmith_sub_vec4_u32(arg_1.e, arg_0.e)))));
    var var_0 = arg_1;
    var var_1 = min(select(global3.e.x ^ _wgslsmith_mult_u32(var_0.e.x, 34655u), _wgslsmith_add_u32(78105u, 52217u), any(vec3<bool>(true, true, true))), u_input.a) ^ ~1695u;
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(arg_0.b.x, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(~0u, 5620u, countOneBits(global3.b.x)), vec3<u32>(arg_0.b.x, _wgslsmith_dot_vec3_u32(var_0.e.yzx, vec3<u32>(75539u, 1u, arg_1.b.x)), ~31754u)), arg_0.b.x, ~arg_0.b.x), ~global3.e ^ ~(~_wgslsmith_add_vec4_u32(global3.e, var_0.e)));
    var var_3 = vec2<u32>(_wgslsmith_mult_u32(~28111u, _wgslsmith_mod_u32(~4294967295u, reverseBits(4294967295u)) & u_input.a), abs(arg_0.e.x) & _wgslsmith_mod_u32(firstLeadingBit(arg_0.e.x), 17224u));
    return func_2(_wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.b << (46461u % 32u), ~1i), _wgslsmith_sub_vec2_i32(vec2<i32>(-29982i, u_input.b) >> (vec2<u32>(arg_0.e.x, var_2.x) % vec2<u32>(32u)), reverseBits(vec2<i32>(1i, 1i))), vec2<bool>(true, global3.b.x >= var_3.x)), select(vec2<i32>(-u_input.b, abs(-25154i)), ~(-vec2<i32>(9254i, u_input.b)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -582f)) + var_0.c));
}

fn func_1() -> vec4<bool> {
    let var_0 = func_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.c), global3.c) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.c * global3.c), _wgslsmith_f_op_f32(-global3.c)), ~(global3.b >> (global3.b % vec2<u32>(32u))), 168f, true, _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(global3.e, _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global3.b.x, 17725u, u_input.a), global3.e)), ~(vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a) >> (vec4<u32>(23478u, 0u, 8354u, 0u) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(~global3.e, vec4<u32>(9834u, 0u, global3.b.x, u_input.a)))), func_2((vec2<i32>(u_input.b, u_input.b) & ~vec2<i32>(u_input.b, 0i)) ^ abs(-vec2<i32>(u_input.b, u_input.b)), -1074f));
    var var_1 = var_0.c;
    var_1 = _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(var_0.c * global3.c));
    let var_2 = func_2(vec2<i32>(0i, 1193i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.c, global3.c) * _wgslsmith_f_op_f32(-global3.c))));
    var_1 = 121f;
    return select(func_3(), select(vec4<bool>(var_0.a, !(var_2.c < 453f), true, any(select(vec3<bool>(true, global3.a, false), vec3<bool>(var_2.a, var_0.a, global3.a), vec3<bool>(var_2.d, true, var_2.a)))), !vec4<bool>(all(vec3<bool>(var_2.a, false, false)), var_2.d, all(vec4<bool>(var_0.a, var_2.a, var_0.a, true)), true), vec4<bool>(true, var_0.d, true, !(global3.a != var_0.d))), true);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1088f)));
    let var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(19029i, -2147483647i), firstLeadingBit(vec2<i32>(_wgslsmith_mult_i32(31551i, u_input.b), -16044i))), 5435i, ~1i, _wgslsmith_sub_i32(2147483647i, ~_wgslsmith_sub_i32(11533i, u_input.b)));
    let var_2 = !(!(!func_3().yxx));
    global0 = true;
    return func_4(func_4(func_4(arg_1, func_2(vec2<i32>(0i, -34772i), global3.c)), func_2(~vec2<i32>(-2147483647i, u_input.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), func_2(firstTrailingBit(vec2<i32>(u_input.b, ~(-684i))), 1000f), Struct_1(func_2(vec2<i32>(-1i) * -vec2<i32>(u_input.b, -25618i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.c * 194f), global3.c)).d, global3.e.wy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-313f, global3.c)) + _wgslsmith_f_op_f32(f32(-1f) * -937f)), true, ~((global3.e | vec4<u32>(4294967295u, u_input.a, 1u, u_input.a)) << (~vec4<u32>(global3.e.x, u_input.a, global3.b.x, global3.e.x) % vec4<u32>(32u)))), !vec4<bool>(all(vec2<bool>(false, global3.d)), func_3().x & false, ~68785u != abs(global3.e.x), all(global1[_wgslsmith_index_u32(4294967295u, 24u)])));
    global2 = array<vec4<f32>, 23>();
    let var_1 = _wgslsmith_mult_i32(u_input.b, firstLeadingBit(~(-11438i)));
    var var_2 = vec4<bool>(global3.d, global3.a, select(func_2(vec2<i32>(var_1, -39666i), global3.c).e.x <= global3.b.x, all(vec4<bool>(false, false, var_0.d, false)), !global3.a) != (!(global3.c > global3.c) | true), !any(func_1()));
    let var_3 = Struct_1(true, ~max(var_0.e.yz, global3.e.zw), 322f, false, var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~select(var_3.e.zw, vec2<u32>(1u, 69639u), false))));
}

