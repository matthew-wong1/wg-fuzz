struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
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

var<private> global0: array<vec2<bool>, 32>;

var<private> global1: Struct_2;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(1u, 1u), vec3<u32>(1473u, 4294967295u, 4294967295u), vec4<u32>(4387u, 2803u, 34970u, 1u), vec3<i32>(-1i, 1i, 1i), vec3<i32>(1i, 1i, 49311i));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = Struct_2(countOneBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.b.x, 24700u), vec3<u32>(4294967295u, 0u, global2.c.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 25707u, 4294967295u), vec3<u32>(4294967295u, global1.a, global2.c.x)))) ^ countOneBits(u_input.d));
    global2 = Struct_1(global2.a, firstTrailingBit(global2.b), vec4<u32>(10692u << (~firstLeadingBit(global2.a.x) % 32u), 30237u, ~(~reverseBits(u_input.d)), 0u), vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c.x, 2147483647i, -12821i, global2.d.x), vec4<i32>(global2.d.x, abs(u_input.a), -27660i, i32(-1i) * -2147483647i)), 1i, u_input.a), ~_wgslsmith_div_vec3_i32(global2.d, vec3<i32>(-u_input.a, ~(-6505i), 20011i << (global1.a % 32u))));
    global1 = Struct_2(~var_0.a);
    var var_1 = _wgslsmith_div_i32(~(-(~(global2.e.x | 2147483647i))), u_input.a);
    let var_2 = Struct_2(_wgslsmith_mod_u32(0u, abs(~u_input.b ^ ~u_input.b)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1612f))), 1000f);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: bool) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1369f), arg_2.x)), vec3<f32>(268f, _wgslsmith_f_op_f32(-arg_2.x), 189f), select(arg_3, arg_3, (arg_1.a >= arg_1.a) || !arg_3))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-499f, arg_2.x) * -904f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_2.x, arg_2.x)))), arg_2.x));
    var var_1 = vec4<u32>(min(u_input.b, 11922u), _wgslsmith_add_u32(49049u >> (1u % 32u), global1.a), _wgslsmith_mult_u32(10313u, 0u), global2.b.x);
    let var_2 = vec3<u32>(var_1.x, 1u, ~abs(31658u));
    var var_3 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.x)))));
    var_3 = _wgslsmith_f_op_f32(step(-292f, var_0.x));
    return Struct_1(~(_wgslsmith_mod_vec2_u32(var_1.zz, vec2<u32>(7684u, 73314u)) & (vec2<u32>(0u, 0u) & firstTrailingBit(var_1.xy))), select(select(vec3<u32>(abs(global1.a), _wgslsmith_dot_vec3_u32(var_1.zwz, var_1.wzy), u_input.d), vec3<u32>(0u, ~96350u, ~4294967295u), false), var_2, vec3<bool>(any(!vec4<bool>(arg_3, arg_3, arg_3, true)), !(!arg_3), all(vec3<bool>(arg_3, arg_3, arg_3)))), ~global2.c, global2.d, arg_0);
}

fn func_1(arg_0: vec2<f32>) -> vec2<bool> {
    var var_0 = func_2(global2.e, Struct_2(~(countOneBits(u_input.d) << (4294967295u % 32u))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1729f, arg_0.x, -1472f)) + _wgslsmith_div_vec4_f32(vec4<f32>(541f, 1264f, -552f, arg_0.x), vec4<f32>(1000f, arg_0.x, arg_0.x, -125f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 637f, arg_0.x, -2472f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1606f, arg_0.x, arg_0.x, 103f))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(-648f)), _wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(abs(-1616f)), _wgslsmith_f_op_f32(f32(-1f) * -859f))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false))), true);
    let var_1 = arg_0.x;
    let var_2 = all(vec3<bool>(all(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, false)) && false, false));
    global2 = Struct_1(_wgslsmith_clamp_vec2_u32(global2.a, _wgslsmith_div_vec2_u32(var_0.b.xx, select(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.c.x, 11682u), vec2<u32>(u_input.d, 4294967295u)), ~var_0.c.zw, select(vec2<bool>(var_2, var_2), global0[_wgslsmith_index_u32(var_0.b.x, 32u)], false))), global2.a), var_0.c.zwx, _wgslsmith_sub_vec4_u32(~vec4<u32>(firstTrailingBit(global2.b.x), abs(0u), ~global2.c.x, global2.b.x), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(global2.c, var_0.c), var_0.c), vec4<u32>(50382u, abs(global2.a.x), ~u_input.d, ~18759u))), -global2.e, global2.e);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1526f - 631f) - _wgslsmith_f_op_f32(select(var_1, var_1, false))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -249f))));
    return select(select(global0[_wgslsmith_index_u32(49387u, 32u)], !(!global0[_wgslsmith_index_u32(global1.a, 32u)]), true), vec2<bool>(var_2, !var_2), vec2<bool>(global2.c.x != 4294967295u, var_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-452f, 1343f), vec2<f32>(803f, 209f), vec2<bool>(false, true))) - vec2<f32>(652f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))));
    var var_1 = !vec4<bool>(var_0.x, any(vec3<bool>(true, select(false, false, var_0.x), var_0.x)), true, all(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, false))));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(643f, 538f, -741f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-912f, -926f, -220f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-774f, 964f, -1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1514f, -315f, -948f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~global2.b.x, max(global1.a, _wgslsmith_dot_vec2_u32(vec2<u32>(29745u, 6706u), global2.c.yz))) >> (vec2<u32>(u_input.b, global1.a << (~43908u % 32u)) % vec2<u32>(32u)));
}

