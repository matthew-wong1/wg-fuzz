struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, -44111i, 2147483647i, -26472i);

var<private> global1: array<i32, 21> = array<i32, 21>(i32(-2147483648), -10065i, 2147483647i, 2147483647i, 0i, 1i, i32(-2147483648), 24075i, 46674i, 0i, -28364i, 2147483647i, 1i, 23672i, -39387i, 2147483647i, 0i, -1i, -6198i, -1i, -42930i);

var<private> global2: array<f32, 14> = array<f32, 14>(-425f, 274f, -157f, -698f, -907f, -1735f, 548f, -1696f, 899f, 497f, -1107f, 1991f, -835f, -240f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    global1 = array<i32, 21>();
    var var_0 = arg_1;
    var var_1 = vec4<bool>(true, true, false, ~(i32(-1i) * -35319i) > _wgslsmith_sub_i32(abs(firstLeadingBit(global1[_wgslsmith_index_u32(4294967295u, 21u)])), (u_input.b << (21779u % 32u)) | abs(global0.x)));
    let var_2 = arg_1;
    let var_3 = ~(1u & _wgslsmith_div_u32(var_0.b.x, ~1u));
    return arg_0.a.x;
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = true || arg_3.b.x;
    var var_1 = Struct_1(firstLeadingBit(vec3<u32>(max(arg_3.a.x, ~1u), 0u, u_input.a.x)), vec2<bool>(all(select(vec4<bool>(false, arg_3.b.x, true, true), !vec4<bool>(var_0, arg_3.b.x, false, var_0), any(vec2<bool>(false, var_0)))), true & any(vec4<bool>(arg_3.b.x, true, arg_3.b.x, false))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-593f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c))))), vec4<i32>(reverseBits(-abs(-1i)), -(-16626i ^ _wgslsmith_clamp_i32(u_input.b, u_input.c, -2147483647i)), ~(-2147483647i), _wgslsmith_div_i32(-2147483647i & global0.x, 0i) & arg_3.d.x));
    global1 = array<i32, 21>();
    global2 = array<f32, 14>();
    global2 = array<f32, 14>();
    return vec4<i32>(~_wgslsmith_clamp_i32(reverseBits(_wgslsmith_dot_vec2_i32(var_1.d.wz, vec2<i32>(u_input.c, u_input.b))), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.d.x, -49432i, global1[_wgslsmith_index_u32(var_1.a.x, 21u)], arg_3.d.x), arg_3.d), _wgslsmith_add_i32(0i, _wgslsmith_mod_i32(u_input.b, arg_3.d.x))), global0.x, ~_wgslsmith_dot_vec2_i32(select(vec2<i32>(global0.x, -39132i), global0.ww, false), var_1.d.yw >> (u_input.a.zy % vec2<u32>(32u))), global1[_wgslsmith_index_u32(92226u << ((var_1.a.x | 17188u) % 32u), 21u)]);
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = u_input.a.x;
    global2 = array<f32, 14>();
    global2 = array<f32, 14>();
    global0 = countOneBits(func_4(~(~u_input.a.xy), min(firstTrailingBit(71623u), _wgslsmith_mult_u32(func_3(Struct_1(u_input.a.xxy, vec2<bool>(false, true), global2[_wgslsmith_index_u32(var_0, 14u)], vec4<i32>(5090i, 14732i, arg_0, 14294i)), Struct_2(Struct_1(vec3<u32>(2422u, 2840u, var_0), vec2<bool>(false, false), global2[_wgslsmith_index_u32(24728u, 14u)], vec4<i32>(global1[_wgslsmith_index_u32(var_0, 21u)], global0.x, u_input.b, 0i)), u_input.a.zzw, u_input.a.x, true)), 0u)), vec4<i32>(~(i32(-1i) * -17170i), arg_0, -39452i, _wgslsmith_mult_i32(abs(arg_0), ~0i)), Struct_1(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(75155u, 4294967295u, var_0)), ~u_input.a.xzx), vec2<bool>(true, true), -1461f, vec4<i32>(global1[_wgslsmith_index_u32(27483u, 21u)], -arg_0, 0i, 1i))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1229f)))));
    return var_0;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: u32) -> Struct_1 {
    let var_0 = arg_2.zz;
    global0 = arg_0.d;
    let var_1 = !all(vec4<bool>(true, false, !all(arg_2), !arg_2.x));
    var var_2 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, arg_3, 26252u), vec3<u32>(40074u, 45147u, u_input.a.x)) ^ vec3<u32>(19233u, ~arg_3, 4294967295u), ~vec3<u32>(1u ^ u_input.a.x, func_2(arg_1.x), arg_3));
    var var_3 = ~vec3<u32>(4294967295u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_2.zz, vec2<u32>(1u, 35227u)), arg_3), arg_3);
    return arg_0;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: bool) -> StorageBuffer {
    global0 = vec4<i32>(global0.x & ~(~func_1(arg_0.a, arg_0.a.d.yy, vec3<bool>(arg_0.a.b.x, arg_0.a.b.x, arg_3), 0u).d.x), -_wgslsmith_mod_i32(arg_2.x, i32(-1i) * -1i) << ((4294967295u << (u_input.d.x % 32u)) % 32u), arg_2.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_2.x, firstLeadingBit(firstTrailingBit(-1i))), -2147483647i));
    var var_0 = 15844i;
    global2 = array<f32, 14>();
    let var_1 = arg_0.a.a;
    var var_2 = vec3<f32>(1235f, _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(abs(4294967295u), ~arg_0.a.a.x), 14u)])), -549f);
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -948f), var_2.x))), -1309f, u_input.d.x, ~vec4<u32>(select(arg_0.b.x, 66358u, false) & _wgslsmith_add_u32(arg_0.c, 1u), 1u, func_3(Struct_1(vec3<u32>(48536u, 0u, arg_0.a.a.x), arg_0.a.b, var_2.x, vec4<i32>(-29421i, arg_2.x, arg_0.a.d.x, 1i)), arg_0), abs(arg_0.b.x)), vec4<i32>(1i, -global0.x, -20076i, global1[_wgslsmith_index_u32(~(~firstLeadingBit(13468u)), 21u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    let x = u_input.a;
    s_output = func_5(Struct_2(func_1(Struct_1(vec3<u32>(1u, var_0, 1u), vec2<bool>(false, false), _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(8826u, 14u)])), vec4<i32>(2147483647i, global0.x, global1[_wgslsmith_index_u32(25525u, 21u)], global0.x) ^ vec4<i32>(0i, -28635i, global1[_wgslsmith_index_u32(61727u, 21u)], -46319i)), vec2<i32>(-1i, -38557i) ^ (vec2<i32>(global0.x, -23572i) >> (vec2<u32>(6386u, var_0) % vec2<u32>(32u))), vec3<bool>(true, true, true), ~u_input.a.x), ~u_input.d, ~9410u, true), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(var_0, 14u)])), 1182f), vec2<f32>(global2[_wgslsmith_index_u32(0u, 14u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0, 14u)] * global2[_wgslsmith_index_u32(1u, 14u)])), true)))), countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, ~global1[_wgslsmith_index_u32(35604u, 21u)]), -(global0.zx ^ global0.yz))), any(vec4<bool>(true, !any(vec4<bool>(false, false, true, true)), all(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), true)));
}

