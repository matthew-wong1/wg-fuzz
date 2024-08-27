struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 32>;

var<private> global1: Struct_2;

var<private> global2: array<i32, 12>;

var<private> global3: f32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<u32>) -> vec3<bool> {
    let var_0 = Struct_2(Struct_1(vec3<bool>(all(vec2<bool>(global1.b.a.x, global1.b.b.x)), global1.b.a.x & false, any(select(vec4<bool>(false, false, global1.b.a.x, global1.b.b.x), vec4<bool>(global1.b.d, global1.a.d, global1.b.b.x, global1.a.d), global1.a.b.x))), !global1.b.b, vec4<u32>(19883u, ~4294967295u, ~max(48780u, 2829u), 1u), select(any(vec3<bool>(true, global1.a.d, global1.b.d)), false, true), _wgslsmith_f_op_f32(f32(-1f) * -134f)), Struct_1(select(global1.a.a, select(vec3<bool>(false, global1.b.d, global1.a.d), !global1.a.a, select(vec3<bool>(false, global1.b.a.x, false), vec3<bool>(false, false, global1.a.b.x), global1.b.a.x)), !select(global1.a.a, vec3<bool>(global1.b.a.x, false, global1.b.a.x), global1.a.a)), global1.a.a.zy, ~global1.b.c, false, _wgslsmith_f_op_f32(-217f + global1.a.e)), vec4<u32>(39976u, countOneBits(17457u), _wgslsmith_dot_vec3_u32(min(select(arg_0, global1.b.c.xzz, vec3<bool>(false, false, false)), abs(global1.a.c.yyz)), _wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(global1.c.x, global1.b.c.x, arg_0.x))), min(_wgslsmith_clamp_u32(41715u, _wgslsmith_add_u32(1u, 16853u), global1.a.c.x), ~1u)));
    var var_1 = ~_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a.x, firstTrailingBit(global1.a.c.x)) >> (_wgslsmith_div_u32(u_input.a.x, firstLeadingBit(0u)) % 32u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, global1.c.x) & (4294967295u >> (u_input.a.x % 32u)), 0u));
    global1 = var_0;
    let var_2 = ~var_0.c.x;
    var var_3 = 22043u;
    return select(vec3<bool>(!global1.a.d, !(u_input.c.x <= u_input.c.x), !(_wgslsmith_div_f32(global1.a.e, -423f) <= global1.b.e)), vec3<bool>(true, true, false), false);
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = Struct_2(global1.b, Struct_1(!func_3(u_input.b), global1.b.b, vec4<u32>(4294967295u, ~global1.c.x, _wgslsmith_dot_vec4_u32(global1.b.c, global1.a.c) ^ global1.a.c.x, _wgslsmith_dot_vec2_u32(~u_input.a.zy, _wgslsmith_div_vec2_u32(u_input.b.yy, vec2<u32>(u_input.b.x, 58963u)))), (true && (arg_0.x <= 1000f)) && global1.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-529f)))), vec4<u32>(abs(~u_input.b.x), global1.a.c.x, 7945u, u_input.b.x) << (vec4<u32>(_wgslsmith_add_u32(~u_input.b.x, 0u), u_input.b.x, ~firstTrailingBit(0u), _wgslsmith_dot_vec3_u32(~vec3<u32>(global1.a.c.x, 4294967295u, u_input.a.x), global1.a.c.xzy)) % vec4<u32>(32u)));
    let var_1 = global1.b;
    var var_2 = Struct_3(var_0.a, Struct_1(!func_3(_wgslsmith_sub_vec3_u32(var_1.c.wzx, u_input.a)), var_1.b, global1.b.c, any(select(func_3(var_0.a.c.zxy).yz, vec2<bool>(false, global1.a.a.x), !var_0.a.d)), _wgslsmith_div_f32(var_0.b.e, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(arg_0.x)))))), var_1.a.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0));
    var var_4 = !(!global1.b.a.yy);
    return Struct_3(Struct_1(func_3(_wgslsmith_div_vec3_u32(~vec3<u32>(4146u, var_0.b.c.x, var_2.a.c.x), u_input.a)), select(!var_1.b, global1.b.b, func_3(~vec3<u32>(global1.b.c.x, var_0.a.c.x, 4294967295u)).xz), vec4<u32>(~(~11814u), 68609u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 45528u, var_2.a.c.x, 28560u) << (var_2.a.c % vec4<u32>(32u)), vec4<u32>(u_input.a.x, 72u, 4294967295u, u_input.b.x) & var_2.a.c), ~_wgslsmith_mod_u32(0u, 4294967295u)), var_0.b.d, -775f), Struct_1(!vec3<bool>(var_2.a.b.x, -138f == global1.b.e, 0i == global2[_wgslsmith_index_u32(u_input.a.x, 12u)]), !var_0.b.b, firstLeadingBit(select(_wgslsmith_sub_vec4_u32(global1.b.c, var_1.c), var_0.c, false)), all(vec3<bool>(var_2.c, !var_4.x, var_0.b.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, 1436f)) * 1600f))), any(select(vec4<bool>(any(vec4<bool>(true, var_4.x, var_1.a.x, global1.a.b.x)), global1.b.a.x, var_2.a.d, all(vec3<bool>(var_2.a.b.x, false, false))), select(!vec4<bool>(var_4.x, false, false, true), !vec4<bool>(var_0.b.d, var_0.a.b.x, var_1.b.x, var_4.x), true), var_4.x)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec4<i32>) -> vec4<bool> {
    let var_0 = arg_0.a;
    var var_1 = -31382i;
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.b.e, 216f, 1302f)))))) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.e), _wgslsmith_f_op_f32(select(var_0.e, arg_0.a.e, var_0.a.x))), -1806f, -1098f))));
    global2 = array<i32, 12>();
    global2 = array<i32, 12>();
    return !vec4<bool>(true, !global1.b.d, true, !(!var_0.b.x));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: f32) -> f32 {
    global2 = array<i32, 12>();
    let var_0 = Struct_3(Struct_1(!(!select(arg_0.b.a, arg_2.zzz, global1.a.b.x)), vec2<bool>(any(arg_2), !arg_0.b.b.x), vec4<u32>(_wgslsmith_mult_u32(1u, u_input.b.x) & 1u, ~abs(4294967295u), firstLeadingBit(u_input.a.x), global1.b.c.x & arg_0.a.c.x), false, _wgslsmith_f_op_f32(arg_3 + 1765f)), Struct_1(arg_2.zyw, global1.b.a.yz, arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)) >= _wgslsmith_f_op_f32(-1347f + _wgslsmith_f_op_f32(global1.b.e - 1530f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(172f - arg_3) * _wgslsmith_f_op_f32(sign(global1.b.e)))))), all(!func_4(func_2(vec2<f32>(arg_3, arg_0.b.e)), _wgslsmith_sub_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 12u)], 102i), vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], 0i)), vec4<i32>(-11764i, u_input.c.x, -89237i, arg_1.x))));
    global2 = array<i32, 12>();
    let var_1 = arg_0.b.a.x;
    global1 = arg_0;
    return -341f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 32>();
    let var_0 = vec3<i32>(firstLeadingBit(_wgslsmith_div_i32(10623i << (u_input.a.x % 32u), ~global2[_wgslsmith_index_u32(38337u, 12u)]) | select(global2[_wgslsmith_index_u32(59076u, 12u)], u_input.c.x, true)), -2147483647i, global2[_wgslsmith_index_u32(80744u, 12u)]);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -103f))), global1.b.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec3<bool>(global1.b.b.x, global1.b.d, false), global1.a.a.xy, global1.b.c, global1.a.b.x, global1.b.e), global1.b, global1.b.c), global0[_wgslsmith_index_u32(global1.b.c.x, 32u)], vec4<bool>(global1.a.d, global1.a.d, true, global1.b.a.x), global1.a.e))), global1.a.e))));
    let var_2 = u_input.b.x & _wgslsmith_mod_u32(countOneBits(~(u_input.b.x << (u_input.b.x % 32u))), global1.b.c.x);
    global0 = array<vec3<i32>, 32>();
    global3 = global1.a.e;
    var var_3 = select(~(~select(firstLeadingBit(u_input.c), u_input.c ^ vec2<i32>(2147483647i, -15473i), func_2(vec2<f32>(global1.b.e, var_1.x)).b.b)), var_0.yx, -25219i > var_0.x);
    var var_4 = var_0.xx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.e, var_1.x, 576f, global1.a.e)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, 1004f, 381f, 1000f))), global1.a.d)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -731f, global1.b.e, var_1.x))))), -(~(i32(-1i) * -var_4.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-287f - _wgslsmith_f_op_f32(-1902f * _wgslsmith_f_op_f32(f32(-1f) * -879f))))), var_2);
}

