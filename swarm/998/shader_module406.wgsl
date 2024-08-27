struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = false;

var<private> global2: array<u32, 22> = array<u32, 22>(5716u, 0u, 17601u, 35173u, 45784u, 7919u, 1u, 4294967295u, 0u, 71200u, 37084u, 1u, 4294967295u, 1u, 26358u, 24771u, 14289u, 8705u, 4294967295u, 0u, 0u, 124185u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b.x, arg_1.c.c.x))), -874f, all(vec4<bool>(true, true, true, true))))));
    let var_1 = Struct_3(Struct_1(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b.a.x, arg_3.x, arg_0, global0.a.x), arg_2.a), i32(-1i) * -1i, arg_3.x), arg_3.x, -arg_3.x, arg_3.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.x, arg_2.b.x, -1765f, -894f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_1.b.b, arg_1.c.c)) - vec4<f32>(arg_1.c.b.x, 612f, 613f, 589f))), vec4<f32>(arg_1.a.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.b.x, arg_2.b.x), _wgslsmith_f_op_f32(-arg_2.c.x)), var_0), ~16059u), u_input.a.zzx, ~(min(select(arg_1.d.a.x, arg_3.x, false), 11397i) << (_wgslsmith_add_u32(global0.d, reverseBits(arg_1.c.d)) % 32u)), arg_1, !(true || all(vec4<bool>(false, true, false, false))));
    global2 = array<u32, 22>();
    global0 = Struct_1(vec4<i32>(i32(-1i) * -countOneBits(arg_0), 1i, 0i, 1i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, 248f, var_1.d.c.b.x, arg_1.b.c.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.d.c.c + vec4<f32>(var_1.d.b.b.x, global0.b.x, var_0, 1591f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_1.c.c))))), _wgslsmith_f_op_vec4_f32(global0.c * vec4<f32>(1792f, global0.b.x, arg_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1839f)))), ~max(~0u | _wgslsmith_add_u32(var_1.d.b.d, 76567u), 4294967295u));
    global0 = arg_1.a;
    return global0.a.x & abs(arg_2.a.x);
}

fn func_2() -> vec2<bool> {
    global2 = array<u32, 22>();
    global2 = array<u32, 22>();
    let var_0 = Struct_3(Struct_1(firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(-20607i, u_input.a.x, global0.a.x, -35749i)), _wgslsmith_f_op_vec4_f32(ceil(global0.b)), global0.b, _wgslsmith_sub_u32(global0.d, ~0u)), ~(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, 1i, -7861i)) ^ vec3<i32>(_wgslsmith_mult_i32(func_3(-1i, Struct_2(Struct_1(vec4<i32>(-3120i, global0.a.x, u_input.a.x, -20662i), global0.b, global0.b, global2[_wgslsmith_index_u32(109694u, 22u)]), Struct_1(global0.a, global0.c, vec4<f32>(global0.b.x, 197f, global0.b.x, global0.b.x), 56608u), Struct_1(u_input.a, vec4<f32>(global0.c.x, 503f, global0.c.x, -947f), global0.b, 1u), Struct_1(global0.a, vec4<f32>(global0.c.x, global0.b.x, 578f, global0.c.x), global0.c, global0.d)), Struct_1(u_input.a, global0.b, vec4<f32>(-217f, -182f, global0.c.x, 1758f), global2[_wgslsmith_index_u32(13182u, 22u)]), u_input.a.zz), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, 0i, -9651i, -1i), vec4<i32>(global0.a.x, global0.a.x, global0.a.x, 16245i))), -(global0.a.x & -2147483647i), max(-18733i, i32(-1i) * -2147483647i)), 16806i, Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(u_input.a, select(u_input.a, u_input.a, vec4<bool>(true, false, false, true))), global0.c, vec4<f32>(global0.c.x, -231f, -943f, _wgslsmith_f_op_f32(global0.b.x * global0.c.x)), abs(_wgslsmith_sub_u32(global0.d, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 22u)], 22u)]))), Struct_1(global0.a, global0.c, _wgslsmith_f_op_vec4_f32(max(global0.c, global0.c)), _wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(global0.d, 22u)], min(global2[_wgslsmith_index_u32(1u, 22u)], 22009u))), Struct_1(global0.a, vec4<f32>(-129f, 1130f, _wgslsmith_f_op_f32(trunc(global0.c.x)), _wgslsmith_f_op_f32(sign(541f))), global0.c, ~global0.d), Struct_1(vec4<i32>(0i >> (global0.d % 32u), _wgslsmith_mod_i32(-9168i, 87141i), _wgslsmith_clamp_i32(u_input.a.x, 1i, -2147483647i), global0.a.x | -7679i), global0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-425f, -1000f, global0.c.x, global0.c.x)) - _wgslsmith_f_op_vec4_f32(-global0.b)), 2484u)), false);
    var var_1 = false;
    var var_2 = _wgslsmith_div_i32(var_0.d.a.a.x, min(min(-2147483647i, -u_input.a.x), _wgslsmith_dot_vec4_i32(var_0.d.c.a, _wgslsmith_div_vec4_i32(var_0.a.a, vec4<i32>(-11110i, -2147483647i, u_input.a.x, global0.a.x))))) > ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(var_0.a.a, vec4<i32>(var_0.c, var_0.b.x, global0.a.x, u_input.a.x), vec4<i32>(18271i, 2147483647i, -8753i, var_0.b.x)), ~vec4<i32>(-23278i, global0.a.x, global0.a.x, -1i)), 1i);
    return vec2<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~40441u, 50356u, ~21157u, ~var_0.d.a.d), select(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 22u)], 1424u, var_0.a.d, 0u) & vec4<u32>(11687u, global0.d, 4294967295u, 95921u), vec4<u32>(global0.d, 0u, 4294967295u, var_0.d.a.d), true)), 22u)] == ~48813u);
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_mult_vec2_i32(global0.a.zy, -vec2<i32>(2147483647i, global0.a.x));
    global1 = !(!(!all(func_2())));
    let var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.d, 22u)], 22u)], 4294967295u) & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~55849u, 22u)], 22u)], 0u, reverseBits(max(global0.d, global0.d)), global0.d | global0.d), firstLeadingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(0u, 22u)], global0.d, global2[_wgslsmith_index_u32(54921u, 22u)], 53705u), vec4<u32>(global2[_wgslsmith_index_u32(global0.d, 22u)], global0.d, 1u, global0.d) & vec4<u32>(global0.d, global0.d, 0u, global2[_wgslsmith_index_u32(29643u, 22u)])))) >> (vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(108188u, 22u)], global2[_wgslsmith_index_u32(8726u, 22u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(60942u, 22u)], 22u)]), _wgslsmith_div_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global0.d, 22u)], 4294967295u, 59165u), vec3<u32>(0u, global2[_wgslsmith_index_u32(90246u, 22u)], 8200u))), _wgslsmith_mod_u32(~4294967295u, _wgslsmith_div_u32(global0.d, global0.d))), ~(reverseBits(global2[_wgslsmith_index_u32(0u, 22u)]) << (_wgslsmith_div_u32(67933u, global0.d) % 32u)), 1u, _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(1u, 1u, global2[_wgslsmith_index_u32(global0.d, 22u)])), vec3<u32>(20406u, ~global0.d, ~global0.d))) % vec4<u32>(32u));
    global1 = false;
    global2 = array<u32, 22>();
    return _wgslsmith_f_op_f32(-2152f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1167f), -249f)) - _wgslsmith_f_op_f32(sign(global0.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(17551u, ~global2[_wgslsmith_index_u32(max(select(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 22u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 22u)], 22u)], 0u), vec3<u32>(global2[_wgslsmith_index_u32(1u, 22u)], 40086u, global0.d)), ~48738u, true), ~(~59693u)), 22u)]);
    let var_1 = vec4<bool>(true, any(vec2<bool>(true, true)), (true && !any(vec4<bool>(true, true, true, false))) & (~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(33505u, global2[_wgslsmith_index_u32(var_0, 22u)])) <= ~(~global0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-150f * _wgslsmith_f_op_f32(global0.c.x + global0.b.x))));
    let var_2 = Struct_3(Struct_1(reverseBits(global0.a), vec4<f32>(1042f, -220f, global0.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.c, vec4<f32>(global0.c.x, global0.b.x, 288f, global0.c.x))) - vec4<f32>(1f, _wgslsmith_f_op_f32(global0.c.x - -319f), _wgslsmith_f_op_f32(func_1()), global0.b.x)), global0.d), vec3<i32>(u_input.a.x, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(8636i, 2147483647i), select(vec2<i32>(global0.a.x, u_input.a.x), vec2<i32>(1i, u_input.a.x), true)), -3505i), ~u_input.a.x), reverseBits(max(u_input.a.x, select(u_input.a.x, func_3(-1i, Struct_2(Struct_1(vec4<i32>(0i, -21014i, u_input.a.x, global0.a.x), vec4<f32>(-1108f, global0.c.x, global0.b.x, global0.c.x), global0.b, global0.d), Struct_1(u_input.a, vec4<f32>(-1427f, global0.b.x, global0.c.x, global0.b.x), global0.b, global2[_wgslsmith_index_u32(0u, 22u)]), Struct_1(u_input.a, global0.b, global0.b, 4294967295u), Struct_1(vec4<i32>(6736i, global0.a.x, 27725i, global0.a.x), vec4<f32>(global0.c.x, global0.c.x, global0.b.x, -423f), global0.c, global0.d)), Struct_1(global0.a, vec4<f32>(global0.c.x, global0.b.x, global0.c.x, global0.b.x), global0.b, global0.d), global0.a.wy), true))), Struct_2(Struct_1(reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-15990i, 0i, 17085i, u_input.a.x), u_input.a, vec4<i32>(20268i, 1i, 0i, global0.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(441f, global0.b.x, -1204f, global0.b.x)), vec4<f32>(-692f, _wgslsmith_f_op_f32(global0.b.x + global0.c.x), -418f, -609f), firstLeadingBit(~50717u)), Struct_1(vec4<i32>(~11582i, ~u_input.a.x, firstTrailingBit(8775i), i32(-1i) * -9231i), _wgslsmith_f_op_vec4_f32(global0.c * global0.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.c.x, global0.c.x, global0.b.x, -2131f))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(749f, global0.c.x, global0.c.x, -979f), vec4<f32>(global0.b.x, 1218f, 250f, 1295f)))), 1u), Struct_1(global0.a, global0.c, _wgslsmith_f_op_vec4_f32(global0.b - vec4<f32>(505f, 1950f, global0.b.x, global0.b.x)), abs(var_0)), Struct_1(firstLeadingBit(vec4<i32>(1i, 1i, u_input.a.x, u_input.a.x)) & _wgslsmith_clamp_vec4_i32(u_input.a, global0.a, u_input.a), _wgslsmith_f_op_vec4_f32(ceil(global0.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c.x, -374f, 704f, global0.c.x), global0.b))), 18921u)), true);
    let var_3 = !vec4<bool>(!var_1.x, var_1.x, true, any(!vec4<bool>(var_1.x, true, true, true)));
    var var_4 = select(!select(var_1, var_3, func_2().x), !(!vec4<bool>(var_2.b.x < -51713i, false, var_0 <= 5394u, all(vec4<bool>(true, var_3.x, var_2.e, true)))), !select(!var_2.e, false, true));
    global2 = array<u32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(74587u, ~1u), vec4<u32>(~1u ^ min(~var_2.d.c.d, ~4294967295u), 0u, ~0u, countOneBits(79841u)));
}

