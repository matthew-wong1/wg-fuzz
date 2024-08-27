struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15>;

var<private> global1: array<u32, 4> = array<u32, 4>(13168u, 4294967295u, 27414u, 1u);

var<private> global2: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global3: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2() -> vec4<i32> {
    return ~(vec4<i32>(-1i) * -select(vec4<i32>(u_input.b, 6859i, -4602i, u_input.a) << (vec4<u32>(global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(8639u, 4u)], 66370u, u_input.e) % vec4<u32>(32u)), vec4<i32>(u_input.b, u_input.a, 51234i, u_input.c), !global2.x));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<f32>) -> vec4<i32> {
    var var_0 = _wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(global1[_wgslsmith_index_u32(~(~arg_1.b), 4u)], u_input.e, ~(u_input.d.x ^ arg_1.b), u_input.e) ^ u_input.d);
    global0 = array<Struct_2, 15>();
    global2 = arg_0;
    var var_1 = arg_2;
    let var_2 = arg_3.x;
    return _wgslsmith_div_vec4_i32(vec4<i32>(~_wgslsmith_add_i32(var_1.a.x, var_1.b.x), arg_2.a.x, ~_wgslsmith_sub_i32(1i, min(arg_1.a.x, -1i)), arg_2.b.x), var_1.a);
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<f32>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(vec4<i32>(1i, arg_3.x, arg_3.x, _wgslsmith_dot_vec4_i32(firstTrailingBit(abs(arg_3)), arg_3 ^ vec4<i32>(u_input.b, 2147483647i, u_input.c, 2147483647i))), vec3<i32>(9430i | u_input.b, countOneBits(-2147483647i), 2147483647i), !(!(!(4418i > arg_3.x))));
    let var_1 = ~(~(~(~(~u_input.d.x))));
    let var_2 = min(var_0.a.xzw, vec3<i32>(~u_input.b, ~(i32(-1i) * -arg_3.x), _wgslsmith_mod_i32(_wgslsmith_div_i32(-101314i ^ var_0.a.x, -1i), min(-var_0.b.x, arg_3.x))));
    let var_3 = -_wgslsmith_dot_vec2_i32(-arg_3.yy, reverseBits(_wgslsmith_mult_vec2_i32(~var_0.b.xz, vec2<i32>(arg_3.x, -103220i))));
    let var_4 = Struct_1(_wgslsmith_clamp_vec4_i32(var_0.a, ~func_2(), _wgslsmith_sub_vec4_i32(-(~arg_3), func_3(select(vec4<bool>(global2.x, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(global2.x, global2.x, global2.x, var_0.c)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(599u, global1[_wgslsmith_index_u32(42497u, 4u)]), 15u)], Struct_1(var_0.a, var_0.b, global2.x), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2.x, arg_0.x)))))), firstTrailingBit(vec3<i32>(firstTrailingBit(var_3), min(10584i, reverseBits(u_input.b)), ~max(13815i, u_input.c))), global2.x);
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(772f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1662f + -1157f), 1276f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(886f, -2042f, -2218f, -230f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-339f, _wgslsmith_f_op_f32(-2212f - 668f)) + _wgslsmith_f_op_f32(-223f - _wgslsmith_f_op_f32(386f - 1310f))))), vec2<f32>(-202f, -937f), ~(-(vec4<i32>(-1i) * -vec4<i32>(u_input.b, u_input.a, 2748i, 55683i))));
    global3 = var_0.c;
    global2 = !select(select(vec4<bool>(true, true, !global2.x, select(false, true, global2.x)), !(!vec4<bool>(false, var_0.c, true, true)), vec4<bool>(global2.x, true, select(var_0.c, false, false), true)), vec4<bool>(var_0.c, !any(vec4<bool>(global2.x, false, false, global2.x)), any(vec2<bool>(true, var_0.c)), false), true);
    let var_1 = u_input.d.ww;
    let var_2 = -reverseBits(vec3<i32>(~(~var_0.a.x), 15892i, -2147483647i));
    global3 = any(!(!(!global2.zzw)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, func_3(select(!vec4<bool>(var_0.c, var_0.c, true, global2.x), !(!vec4<bool>(false, global2.x, global2.x, true)), (global2.x | global2.x) & false), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(1u, 4u)], 4294967295u << (global1[_wgslsmith_index_u32(1u, 4u)] % 32u), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.x, u_input.d.x), 4u)], reverseBits(global1[_wgslsmith_index_u32(39462u, 4u)]))), 15u)], var_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(687f, 407f) * vec2<f32>(-1000f, -1648f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -139f)), global2.wz)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2247f, -671f))))).x, vec3<u32>(abs(~var_1.x), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u & var_1.x, 761u, ~var_1.x), 0u), ~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(1u, 4u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(70214u, 4u)], 1u, var_1.x), vec3<u32>(u_input.e, u_input.e, u_input.d.x)), ~22293u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-211f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 284f) - _wgslsmith_f_op_f32(-548f * -1368f))))));
}

