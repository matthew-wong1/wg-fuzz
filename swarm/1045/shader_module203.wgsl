struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(4294967295u, 1u);

var<private> global1: i32 = i32(-2147483648);

var<private> global2: Struct_3;

var<private> global3: array<f32, 7> = array<f32, 7>(544f, -302f, 2510f, -520f, 263f, 682f, -1509f);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(floor(-230f));
    var var_1 = global0.a ^ u_input.b;
    var var_2 = -firstLeadingBit(reverseBits(vec4<i32>(global2.b, u_input.c, -2147483647i, global2.e.d.x) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global0.a, global2.e.c, global0.b), u_input.a, u_input.a) % vec4<u32>(32u))));
    let var_3 = 94166u;
    var_1 = global0.a;
    return Struct_2(max(global2.a.b, _wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_mult_u32(28265u, global0.a)), ~(~1u))), 78538u);
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = global2.d;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1301f * -1560f));
    var var_2 = firstTrailingBit(~u_input.a.wy);
    global2 = Struct_3(func_2(), max(-_wgslsmith_mod_i32(abs(var_0.d.x), _wgslsmith_clamp_i32(21804i, 37943i, global2.b)), i32(-1i) * -(-2147483647i | u_input.d)), 245f, global2.e, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1, global3[_wgslsmith_index_u32(13358u, 7u)], 1180f, global3[_wgslsmith_index_u32(0u, 7u)]), global2.d.a)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, -1187f, var_0.a.x, var_0.a.x), global2.e.a, global2.e.b))), select(select(!vec4<bool>(false, true, var_0.b.x, false), global2.e.b, false), global2.d.b, false), 4294967295u << (max(_wgslsmith_sub_u32(arg_0.a, var_0.c), 1u) % 32u), -vec2<i32>(-19880i, _wgslsmith_add_i32(-19835i, 2147483647i)), ~1i << (func_2().b % 32u)));
    global1 = countOneBits(_wgslsmith_mult_i32(var_0.d.x, ~(~(i32(-1i) * -1i))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -418f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(109f, global3[_wgslsmith_index_u32(1u, 7u)]))), false)) - -687f) - _wgslsmith_f_op_f32(-779f - _wgslsmith_f_op_f32(round(-1000f))));
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = func_2();
    global0 = global2.a;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1628f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c * -344f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 7u)]) * _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(var_0.b, 7u)]))))) * global2.d.a.x);
    var var_2 = _wgslsmith_dot_vec3_u32(u_input.a.zzz, _wgslsmith_mod_vec3_u32(u_input.a.yxx, vec3<u32>(~4294967295u, _wgslsmith_sub_u32(1u, arg_0.c), global2.a.b)) & _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a, arg_0.c, u_input.b) & u_input.a.zyz, ~(vec3<u32>(arg_0.c, 1u, global0.b) ^ u_input.a.ywz), vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a.xww, u_input.a.xxz), ~global2.d.c, 27228u)));
    let var_3 = _wgslsmith_f_op_f32(func_3(global2.a));
    return u_input.a.zwx;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(_wgslsmith_dot_vec3_u32(firstTrailingBit(func_1(global2.d)), vec3<u32>(1u, ~0u, _wgslsmith_add_u32(global0.b, global2.e.c))), global2.e.c);
    let var_0 = ~countOneBits(vec4<u32>(~global0.b, ~global2.e.c, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.d.c, global2.a.a, 4442u, 4294967295u), vec4<u32>(0u, 1u, 5985u, 54058u)), _wgslsmith_sub_u32(global0.b, 1u)) >> (~(~vec4<u32>(global2.e.c, 4294967295u, 4294967295u, global0.b)) % vec4<u32>(32u)));
    global3 = array<f32, 7>();
    let var_1 = global2.a;
    global2 = Struct_3(global2.a, u_input.c, global2.c, global2.e, global2.d);
    let var_2 = !(!select(!vec4<bool>(true, true, true, global2.e.b.x), select(!vec4<bool>(global2.e.b.x, global2.d.b.x, global2.e.b.x, true), !vec4<bool>(global2.e.b.x, true, true, true), global2.d.b), any(global2.d.b)));
    let var_3 = Struct_4(global2.a, vec4<i32>(global2.e.d.x ^ 57533i, _wgslsmith_mult_i32(~(~global2.b), global2.b), global2.b ^ global2.e.e, global2.b), global2.d, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(global0.b, 1u, 0u), global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(var_0, ~var_0), vec2<i32>(_wgslsmith_mult_i32(u_input.c, -global2.b), -_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(var_3.b, vec4<i32>(u_input.c, -10910i, 47392i, global2.e.d.x)), min(var_3.b, vec4<i32>(2147483647i, u_input.d, -29571i, -43313i)))), u_input.a, 1u);
}

