struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(0u, 36092u), vec2<u32>(51016u, 74272u), vec2<u32>(0u, 95108u), vec2<u32>(0u, 15260u), vec2<u32>(16323u, 0u), vec2<u32>(75625u, 4294967295u), vec2<u32>(759u, 19820u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 57344u));

var<private> global2: Struct_2;

var<private> global3: array<Struct_1, 5>;

var<private> global4: vec2<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = !(!vec2<bool>(global4.x, global4.x | select(true, false, global2.b.d.x)));
    let var_1 = Struct_1(global2.b.e, _wgslsmith_f_op_vec3_f32(exp2(global2.b.b)), global2.a.c, vec2<bool>(global4.x, !(!(global2.a.d.x != arg_0))), -u_input.a);
    var var_2 = 5831i;
    global3 = array<Struct_1, 5>();
    let var_3 = global2.b;
    return ~55999u;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(~1u), firstTrailingBit(func_3(global2.b.d.x || global2.b.d.x))), 5u)], global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, ~(~u_input.b.x) ^ u_input.b.x), 5u)]);
    var var_1 = _wgslsmith_f_op_f32(var_0.b.b.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.b.x))))), _wgslsmith_f_op_f32(select(global2.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.b.x + global2.b.b.x)), false)))));
    var var_2 = Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.b.x, global2.a.b.x, var_0.a.b.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.b.x, global2.a.b.x, global2.a.b.x))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-493f, var_0.b.b.x, -1319f)))))), vec4<u32>(abs(max(global2.b.c.x, firstTrailingBit(var_0.b.c.x))), u_input.b.x & 0u, select(u_input.b.x >> (_wgslsmith_mod_u32(62372u, u_input.b.x) % 32u), 45160u, var_0.a.d.x), 0u), select(!vec2<bool>(any(vec4<bool>(var_0.a.d.x, true, true, true)), true), var_0.b.d, (any(vec2<bool>(global2.b.d.x, global4.x)) & var_0.a.d.x) && true), _wgslsmith_div_i32(select(-2147483647i & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(4008i, var_0.b.e, global2.b.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(13391i, -60699i, global2.b.e, global2.b.a), _wgslsmith_div_vec4_i32(vec4<i32>(1i, var_0.a.e, var_0.b.a, global2.b.e), vec4<i32>(global2.b.e, global2.a.a, 44451i, var_0.b.e))), false), 1i));
    let var_3 = vec4<f32>(-1360f, -218f, _wgslsmith_f_op_f32(f32(-1f) * -729f), _wgslsmith_f_op_f32(global2.b.b.x + -2189f));
    let var_4 = Struct_2(global2.b, global2.b);
    return Struct_2(Struct_1(-2147483647i >> (firstTrailingBit(firstTrailingBit(var_4.a.c.x)) % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global2.b.b)) - vec3<f32>(337f, -2173f, _wgslsmith_div_f32(-666f, 512f))), firstLeadingBit(var_0.a.c), vec2<bool>(!global4.x, any(vec3<bool>(false, true, global2.a.d.x))), var_2.a), Struct_1(var_2.e, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(global2.b.b, vec3<f32>(var_2.b.x, -1439f, var_0.b.b.x), select(vec3<bool>(true, var_2.d.x, true), vec3<bool>(var_2.d.x, var_4.a.d.x, false), false))), var_0.a.b)), var_4.a.c, var_4.a.d, -(_wgslsmith_mult_i32(u_input.a, 2147483647i) << (var_2.c.x % 32u))));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = func_2();
    var var_1 = -select(-_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, arg_0.e), vec2<i32>(arg_0.a, var_0.b.a)), ~vec2<i32>(var_0.b.e, global2.b.e)), select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-5172i, global2.a.e), vec2<i32>(-1i, -2317i), vec2<i32>(2147483647i, -49289i)) & reverseBits(vec2<i32>(-1i, u_input.a)), firstTrailingBit(vec2<i32>(var_0.a.a, global2.a.e) | vec2<i32>(arg_0.a, arg_0.a)), true), func_2().a.d.x);
    var var_2 = func_2();
    let var_3 = func_2().a.d.x;
    let var_4 = Struct_1(_wgslsmith_clamp_i32(abs(var_2.a.a), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-var_2.a.e, 1i), -var_1.x), _wgslsmith_mod_i32(-2147483647i, var_2.a.a | min(-23036i, var_1.x))), vec3<f32>(var_2.a.b.x, _wgslsmith_f_op_f32(trunc(global2.b.b.x)), arg_0.b.x), vec4<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(var_0.a.c, select(~vec4<u32>(1u, 0u, 59508u, u_input.b.x), firstTrailingBit(var_2.a.c), !vec4<bool>(arg_0.d.x, true, false, global2.a.d.x))), ~var_0.a.c.x, ~(~func_3(global4.x))), var_0.a.d, 1i);
    return vec4<bool>(any(!(!(!vec4<bool>(global2.a.d.x, global4.x, var_3, var_3)))), all(select(!(!vec4<bool>(var_0.a.d.x, var_4.d.x, true, arg_0.d.x)), !vec4<bool>(var_0.a.d.x, true, var_3, var_2.a.d.x), all(select(vec4<bool>(false, true, true, true), vec4<bool>(global4.x, false, true, false), vec4<bool>(var_4.d.x, true, true, false))))), var_0.a.d.x, !(func_2().b.d.x | var_2.b.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec2<bool>(false, all(!select(select(vec3<bool>(true, global4.x, false), vec3<bool>(global4.x, true, true), true), select(vec3<bool>(true, false, global4.x), vec3<bool>(global4.x, global2.a.d.x, global4.x), vec3<bool>(true, true, true)), !global4.x)));
    var var_0 = vec4<bool>(global4.x, global2.b.d.x, any(!func_1(Struct_1(u_input.a, vec3<f32>(-254f, global2.a.b.x, -2300f), global2.a.c, vec2<bool>(global4.x, global2.b.d.x), -1i))) && false, global2.a.d.x);
    global0 = false;
    var var_1 = -1188f;
    global1 = array<vec2<u32>, 9>();
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.b.x) - _wgslsmith_f_op_f32(round(744f)));
    global3 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(-548f);
}

