struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 27>;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(false, true), vec2<i32>(4243i, -24019i), -1i, vec2<u32>(0u, 0u), vec3<f32>(-247f, -1020f, -887f));

var<private> global3: f32;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, abs(~0u)), 27u)];
    var var_1 = vec4<bool>(true, global2.a.x, false, !select(arg_1.a.x, _wgslsmith_mod_i32(0i, global2.b.x) == -39685i, true));
    global0 = arg_0.x;
    var_1 = !vec4<bool>(select(any(select(vec4<bool>(global2.a.x, true, var_0.a.x, var_0.a.x), vec4<bool>(global2.a.x, true, global2.a.x, var_0.a.x), false)), var_0.a.x, all(vec2<bool>(global2.a.x, arg_1.a.x))), !any(!vec2<bool>(false, arg_1.a.x)), false, false);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) + _wgslsmith_f_op_f32(floor(-286f))) < _wgslsmith_f_op_f32(f32(-1f) * -285f);
    return false == !(!(!(!var_0.a.x)));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(1u, 27u)];
    let var_1 = global1[_wgslsmith_index_u32(39263u, 27u)];
    global0 = arg_0.x;
    var var_2 = vec3<bool>(true, var_0.a.x, (true & any(select(vec4<bool>(true, global2.a.x, var_0.a.x, false), vec4<bool>(var_0.a.x, true, true, var_1.a.x), vec4<bool>(true, global2.a.x, true, false)))) || any(vec4<bool>(var_0.a.x, func_3(vec3<i32>(12870i, var_0.c, var_0.c), global1[_wgslsmith_index_u32(1u, 27u)]), true, true)));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_add_u32(1u, 8273u), ~27221u, 4294967295u), firstLeadingBit(~(u_input.c >> (vec3<u32>(4294967295u, u_input.b.x, var_1.d.x) % vec3<u32>(32u))))), 27u)];
    return Struct_1(!(!var_2.zz), firstLeadingBit(~(-select(arg_0, global2.b, var_3.a.x))), -_wgslsmith_add_i32(var_0.b.x, _wgslsmith_add_i32(1i, ~1i)), ~u_input.c.zz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_3.e)) - vec3<f32>(global2.e.x, 332f, 1260f))) * global2.e));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: u32, arg_3: i32) -> vec2<bool> {
    global3 = global2.e.x;
    var var_0 = global1[_wgslsmith_index_u32(u_input.c.x, 27u)];
    var var_1 = !(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(max(vec4<u32>(var_0.d.x, 0u, global2.d.x, arg_0), vec4<u32>(global2.d.x, u_input.a, global2.d.x, global2.d.x)), u_input.b & u_input.b), select(vec4<u32>(global2.d.x, 0u, 1u, 0u), u_input.b, vec4<bool>(true, true, true, true))) >= firstLeadingBit(4294967295u));
    let var_2 = func_2(~var_0.b, 0u >> (arg_2 % 32u));
    var var_3 = func_2(var_0.b, 1124u);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.e.x), _wgslsmith_f_op_f32(-global2.e.x), any(!vec4<bool>(global2.a.x, global2.a.x, global2.a.x, global2.a.x)))))));
    let var_1 = Struct_1(func_1(abs(49002u), vec3<bool>(true, true, true), firstTrailingBit(u_input.a), ~global2.b.x | _wgslsmith_dot_vec2_i32(global2.b, -vec2<i32>(1i, -2147483647i))), vec2<i32>(_wgslsmith_dot_vec3_i32(-reverseBits(vec3<i32>(global2.c, 52861i, -2147483647i)), _wgslsmith_mod_vec3_i32(select(vec3<i32>(global2.b.x, global2.b.x, 15099i), vec3<i32>(-1i, global2.b.x, global2.b.x), global2.a.x), reverseBits(vec3<i32>(-39422i, 16912i, global2.b.x)))), ~_wgslsmith_sub_i32(0i, abs(0i))), -2147483647i, select(global2.d, u_input.b.yz, all(vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global2.e), vec3<f32>(_wgslsmith_f_op_f32(var_0 + func_2(vec2<i32>(-12385i, -415i), 7115u).e.x), 1438f, var_0), !select(vec3<bool>(global2.a.x, true, global2.a.x), vec3<bool>(false, global2.a.x, global2.a.x), any(vec3<bool>(true, global2.a.x, false))))));
    var var_2 = -27216i;
    let var_3 = global1[_wgslsmith_index_u32(74218u, 27u)];
    var var_4 = Struct_1(!(!select(!var_3.a, !vec2<bool>(true, var_3.a.x), !global2.a.x)), min(-var_1.b, global2.b), _wgslsmith_mod_i32(3191i, _wgslsmith_div_i32(var_3.b.x, 1i) << (_wgslsmith_clamp_u32(41083u, ~global2.d.x, countOneBits(global2.d.x)) % 32u)), _wgslsmith_add_vec2_u32(abs(var_1.d), _wgslsmith_clamp_vec2_u32(global2.d, vec2<u32>(13903u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, var_3.d.x, 4294967295u), u_input.c)), vec2<u32>(var_1.d.x, ~var_3.d.x))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -676f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_3.e.x)), -836f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-449f, var_0)) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2035f + -1183f))), var_1.e.x));
    let var_5 = vec4<bool>(!any(vec3<bool>(all(vec4<bool>(global2.a.x, true, true, true)), true, var_4.a.x)), select(var_4.a.x, true, !((i32(-1i) * -2147483647i) <= _wgslsmith_sub_i32(-1i, var_1.c))), !(global2.a.x && !var_3.a.x), var_1.a.x);
    global3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(firstTrailingBit(u_input.c), ~vec3<u32>(51081u, var_4.d.x, var_4.d.x), !vec3<bool>(var_4.a.x, var_1.a.x, var_1.a.x)) | countOneBits(~vec3<u32>(u_input.a, var_1.d.x, 1u))), ~(~_wgslsmith_add_u32(50726u, 1u)), vec2<u32>(6759u, firstLeadingBit(1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(374f, var_3.e.x, -711f, var_1.e.x))))) - vec4<f32>(_wgslsmith_f_op_f32(-2059f * _wgslsmith_f_op_f32(287f + -588f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-703f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), var_0), _wgslsmith_f_op_f32(-global2.e.x))));
}

