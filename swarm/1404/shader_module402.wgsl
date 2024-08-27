struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: array<f32, 4>;

var<private> global2: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(vec4<bool>(true, true, false, true)), Struct_4(vec4<bool>(true, true, false, false)), Struct_4(vec4<bool>(true, true, true, true)), Struct_4(vec4<bool>(true, false, true, false)), Struct_4(vec4<bool>(true, true, true, false)), Struct_4(vec4<bool>(true, false, true, false)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: vec3<i32>) -> i32 {
    let var_0 = 47072u << (_wgslsmith_dot_vec2_u32(select(arg_1, vec2<u32>(_wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3180u, 24u)], 24u)], arg_1.x)), ~global0[_wgslsmith_index_u32(1u, 24u)]), !(!arg_0.a.xx)), ~arg_1) % 32u);
    let var_1 = arg_2.zy;
    global2 = array<Struct_4, 6>();
    var var_2 = _wgslsmith_dot_vec4_i32(~(-min(vec4<i32>(u_input.a, var_1.x, 1i, 0i), vec4<i32>(6045i, var_1.x, u_input.a, arg_2.x))), ~(~abs(vec4<i32>(6530i, var_1.x, var_1.x, u_input.a)))) & arg_2.x;
    let var_3 = select(vec4<bool>(true, true, 17060i == arg_2.x, !arg_0.a.x), select(vec4<bool>(arg_0.a.x, all(select(vec3<bool>(true, true, true), arg_0.a.zyw, vec3<bool>(false, arg_0.a.x, false))), arg_0.a.x, any(select(arg_0.a.yw, vec2<bool>(arg_0.a.x, arg_0.a.x), arg_0.a.x))), arg_0.a, select(arg_0.a, !select(arg_0.a, vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, true), arg_0.a.x), !(!vec4<bool>(true, false, true, arg_0.a.x)))), arg_0.a.x || false);
    return u_input.a;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, 212f, global1[_wgslsmith_index_u32(47882u, 4u)], 483f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e, global1[_wgslsmith_index_u32(0u, 4u)], 1466f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12285u, 24u)], 4u)]) + vec4<f32>(arg_0.c, global1[_wgslsmith_index_u32(4294967295u, 4u)], -1039f, 182f))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.a, -915f, arg_0.c, -189f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-269f, 1129f, -220f, -794f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-239f, global1[_wgslsmith_index_u32(18666u, 4u)], arg_0.e, arg_0.e) - vec4<f32>(global1[_wgslsmith_index_u32(40435u, 4u)], -297f, 1000f, 1804f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1774f, -984f, 517f, arg_0.e)) * vec4<f32>(-250f, global1[_wgslsmith_index_u32(u_input.b.x, 4u)], arg_0.e, arg_0.c))))));
    let var_1 = Struct_3(0u, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstLeadingBit(~(~0u)), 4u)]), _wgslsmith_f_op_vec3_f32(abs(var_0.xyz)), !(!select(vec2<bool>(true, false), vec2<bool>(arg_1.x, arg_1.x), !arg_1.x)));
    global2 = array<Struct_4, 6>();
    let var_2 = select(var_1.d.x, !select(var_1.a == 1u, !(!arg_1.x), !(var_1.d.x != true)), arg_1.x);
    var var_3 = _wgslsmith_mult_vec4_i32(-min(_wgslsmith_mod_vec4_i32(-vec4<i32>(0i, 11331i, arg_0.d.a.x, u_input.a), vec4<i32>(7678i, 2147483647i, arg_0.d.a.x, -15289i) << (vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], var_1.a, 1u, arg_0.b) % vec4<u32>(32u))), ~(vec4<i32>(u_input.a, -43072i, arg_0.d.a.x, -2147483647i) >> (vec4<u32>(var_1.a, global0[_wgslsmith_index_u32(1u, 24u)], 45310u, 105321u) % vec4<u32>(32u)))), ~vec4<i32>(arg_0.d.a.x, ~u_input.a >> (abs(35365u) % 32u), ~(1i ^ arg_0.d.a.x), _wgslsmith_dot_vec2_i32(~arg_0.d.a.yz, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(9163i, arg_0.d.a.x)))));
    return select(!(arg_1.x || any(select(vec2<bool>(var_2, arg_1.x), arg_1.yy, arg_1.x))), !(!(!var_1.d.x)), var_3.x > -u_input.a);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: i32) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    let var_1 = Struct_4(vec4<bool>(arg_1.a.x, arg_1.a.x, !(!(!arg_1.a.x)), !func_3(Struct_2(arg_0.x, 4299u, arg_0.x, Struct_1(vec3<i32>(u_input.a, u_input.a, arg_3)), global1[_wgslsmith_index_u32(arg_2.x, 4u)]), arg_1.a)));
    return StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], 4u)])) + _wgslsmith_f_op_f32(ceil(174f))) - _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(60966u, 0u, 1u), 4u)]))), arg_0.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1044f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(588f)), _wgslsmith_f_op_f32(arg_0.x * 1000f))), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-736f * global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 1u), 4u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 45565u;
    global0 = array<u32, 24>();
    let x = u_input.a;
    s_output = func_2(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(20158u, 4u)], global1[_wgslsmith_index_u32(9362u, 4u)], false)) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 4u)] - global1[_wgslsmith_index_u32(var_0, 4u)])), _wgslsmith_div_f32(_wgslsmith_div_f32(-1997f, global1[_wgslsmith_index_u32(var_0, 4u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(53966u, 4u)])))), 1204f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0, 4u)])), global1[_wgslsmith_index_u32(u_input.b.x, 4u)]), global2[_wgslsmith_index_u32(~countOneBits(4294967295u), 6u)], _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0, 47670u), vec2<u32>(4294967295u ^ u_input.b.x, 1u)), ~(firstLeadingBit(u_input.b.zx) ^ ~vec2<u32>(13395u, global0[_wgslsmith_index_u32(53236u, 24u)]))), func_1(Struct_4(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, false, true), all(vec2<bool>(true, false)))), (vec2<u32>(var_0, 19876u) >> (vec2<u32>(global0[_wgslsmith_index_u32(7808u, 24u)], global0[_wgslsmith_index_u32(u_input.b.x, 24u)]) % vec2<u32>(32u))) | _wgslsmith_sub_vec2_u32(u_input.b.xx, vec2<u32>(u_input.b.x, var_0)), -vec3<i32>(-35831i, u_input.a, u_input.a)));
}

