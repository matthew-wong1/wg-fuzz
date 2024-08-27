struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: vec2<bool>,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_3, 22>;

var<private> global2: array<vec4<u32>, 17>;

var<private> global3: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>) -> vec3<f32> {
    var var_0 = true;
    global2 = array<vec4<u32>, 17>();
    let var_1 = _wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.c, 1573u)), ~vec2<u32>(4294967295u, u_input.c))), vec2<u32>(_wgslsmith_sub_u32(78422u, u_input.d), ~u_input.c) << (vec2<u32>(_wgslsmith_mod_u32(u_input.d, u_input.d), abs(52562u)) % vec2<u32>(32u))) & 4294967295u;
    var var_2 = Struct_3(!(!global3.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.c.x, 834f)), _wgslsmith_f_op_f32(f32(-1f) * -206f))))), -(~(-vec2<i32>(global0.c.x, -13470i))), select(select(vec4<bool>(global3.a.x, true, global3.a.x, false), vec4<bool>(select(true, false, global0.d.x), true, false, true), !vec4<bool>(true, global0.d.x, true, true)), global0.d, vec4<bool>(all(select(vec3<bool>(global0.a, global3.a.x, global3.a.x), vec3<bool>(global0.d.x, global3.a.x, true), global0.a)), global0.d.x, true, any(global0.d))), global0.e);
    var_2 = Struct_3(!(!(_wgslsmith_f_op_f32(global0.e.b.x - arg_0.x) == -676f)), -209f, vec2<i32>(u_input.b.x, u_input.b.x), !select(global0.d, global0.d, select(global0.d, vec4<bool>(true, false, true, global3.a.x), select(global3.a.x, false, var_2.a))), Struct_1(vec2<bool>(true, var_2.e.a.x), arg_0.zww, vec3<f32>(_wgslsmith_f_op_f32(select(global3.b.x, _wgslsmith_f_op_f32(step(-1304f, -427f)), global0.e.a.x || var_2.d.x)), global3.b.x, -641f)));
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.b, _wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(global3.c.x - 396f)), var_2.e.c.x)))));
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = global0.e;
    let var_1 = global1[_wgslsmith_index_u32(u_input.d, 22u)];
    var var_2 = global1[_wgslsmith_index_u32(62036u >> (~max(28062u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 0u), vec2<u32>(89543u, 4294967295u))) % 32u), 22u)];
    global2 = array<vec4<u32>, 17>();
    global0 = Struct_3(true, -1393f, ~(~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.x, 2147483647i, var_2.c.x, -74649i), vec4<i32>(u_input.e.x, 20598i, 2147483647i, u_input.e.x)), 1i)), vec4<bool>(!global0.e.a.x, true, global0.e.a.x, true), Struct_1(!(!(!var_0.a)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global0.e.b, vec3<f32>(var_2.e.c.x, 2351f, var_0.b.x))), _wgslsmith_f_op_vec3_f32(func_3(vec4<f32>(var_0.b.x, 294f, -2057f, 646f)))))), vec3<f32>(-2402f, -510f, _wgslsmith_f_op_f32(var_1.e.c.x * var_2.b))));
    return _wgslsmith_f_op_f32(-global0.b) >= -903f;
}

fn func_4(arg_0: vec3<i32>, arg_1: bool) -> Struct_1 {
    global0 = Struct_3(any(vec3<bool>(false, arg_1, false)) && any(!(!global0.d.xww)), global0.b, ~_wgslsmith_div_vec2_i32(u_input.a.ww, u_input.e.yx), !select(global0.d, global0.d, !(global3.a.x != true)), Struct_1(global3.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.e.b.x))), _wgslsmith_div_f32(global3.c.x, _wgslsmith_f_op_f32(-global3.c.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.b, 2826f)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.e.b.x, _wgslsmith_f_op_f32(ceil(726f)), _wgslsmith_f_op_f32(-global3.b.x))))));
    let var_0 = ~select(global2[_wgslsmith_index_u32(max(20047u, ~59308u), 17u)], vec4<u32>(firstTrailingBit(_wgslsmith_mult_u32(1u, 4294967295u)), u_input.d, 0u, 1u), func_2(firstTrailingBit(firstLeadingBit(0u))));
    global1 = array<Struct_3, 22>();
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_0, vec4<u32>(0u, select(55190u, ~reverseBits(1u), _wgslsmith_sub_u32(u_input.d, u_input.d) != u_input.d), 46928u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(0u, var_0.x, u_input.c), _wgslsmith_div_u32(var_0.x, u_input.c), _wgslsmith_mod_u32(u_input.c, 1u), ~var_0.x), firstLeadingBit(abs(global2[_wgslsmith_index_u32(28035u, 17u)]))))), 22u)];
    let var_2 = 54278i;
    return Struct_1(var_1.d.yy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(global3.b.x)), 1050f, _wgslsmith_f_op_f32(round(1000f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_1.e.b))));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_3 {
    global0 = global1[_wgslsmith_index_u32(arg_2.b, 22u)];
    var var_0 = global0.e;
    global1 = array<Struct_3, 22>();
    global1 = array<Struct_3, 22>();
    var var_1 = Struct_3((i32(-1i) * -2147483647i) < ~(~arg_2.e), -124f, global0.c, vec4<bool>(false, all(arg_0.b), true, global0.e.a.x), global0.e);
    return Struct_3(any(vec4<bool>(var_0.a.x, all(!global0.d.wzz), !(!arg_2.a.a.x), false)), _wgslsmith_f_op_f32(step(var_1.b, -896f)), u_input.b.xy, !vec4<bool>(true, any(global0.d.xxw) && true, var_0.a.x, any(select(arg_2.a.a, var_1.d.ww, true))), arg_2.a);
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> Struct_1 {
    global0 = func_5(Struct_4(select(arg_0, vec2<bool>(false, false), true), !select(vec3<bool>(false, false, arg_0.x), select(vec3<bool>(false, false, false), global0.d.yxx, vec3<bool>(arg_0.x, true, true)), all(global0.d.yyw))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2271f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c.x + global0.e.c.x)), global3.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1305f - global0.e.c.x) * _wgslsmith_f_op_f32(f32(-1f) * -801f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-190f, -1000f, global3.c.x, global0.b), vec4<f32>(-109f, global3.c.x, 979f, 814f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.x, global0.b, 754f, -677f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(222f, global3.c.x, global3.b.x, global0.e.c.x), vec4<f32>(-1273f, -143f, global0.b, 145f)))))), Struct_2(func_4(-select(u_input.a.xzz, u_input.a.zwy, arg_0.x), func_2(4294967295u)), 1u, ~(-(~1i)), vec2<bool>(any(vec4<bool>(global0.d.x, global3.a.x, true, true)), false), 1i), vec3<u32>(arg_1, ~u_input.c, select((arg_1 ^ arg_1) | arg_1, 1u, all(vec3<bool>(true, true, true)))));
    let var_0 = global0.e;
    global1 = array<Struct_3, 22>();
    return Struct_1(vec2<bool>(any(select(vec3<bool>(var_0.a.x, var_0.a.x, true), !vec3<bool>(var_0.a.x, global0.d.x, true), arg_0.x)), any(vec3<bool>(all(global3.a), any(vec2<bool>(arg_0.x, false)), func_2(0u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.b))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2874f, -515f, 1977f)) + global3.c) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(global0.b, global3.c.x, global0.b), _wgslsmith_f_op_vec3_f32(abs(global3.c)))))));
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_4(vec2<bool>(!func_5(Struct_4(global0.e.a, vec3<bool>(global3.a.x, arg_0.a.a.x, global3.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c.x, -1000f, -664f, global3.b.x) * vec4<f32>(global3.c.x, 197f, global3.b.x, -658f)), arg_0, vec3<u32>(34301u, 1u, 0u)).a, !global3.a.x), !global0.d.xzz);
    let var_1 = -2758i;
    var var_2 = abs(u_input.b.x);
    let var_3 = -1352i;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 17>();
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global3.c.x)), _wgslsmith_div_f32(-1902f, global0.b))), 142f));
    let var_1 = !any(vec4<bool>(any(vec3<bool>(global3.a.x, global3.a.x, global0.a)), true, global3.a.x, global0.a));
    let var_2 = func_6(Struct_2(func_1(global0.e.a, _wgslsmith_add_u32(_wgslsmith_sub_u32(1u, u_input.c), 20561u)), reverseBits(u_input.d), -1i, !(!(!global3.a)), select(20112i, global0.c.x, true)));
    let var_3 = ~(func_5(Struct_4(vec2<bool>(true, false), vec3<bool>(true, true, var_1)), vec4<f32>(_wgslsmith_f_op_f32(ceil(-115f)), _wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(869f + global0.b), _wgslsmith_div_f32(var_0, global0.e.b.x)), var_2, _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 4294967295u, var_2.b), vec3<u32>(var_2.b, var_2.b, 15069u)), vec3<u32>(56483u, var_2.b, u_input.c))).c.x ^ ~(var_2.c << (_wgslsmith_mult_u32(u_input.d, 40631u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(309f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.e.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1409f)) - -496f), _wgslsmith_f_op_f32(trunc(541f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.b.x, global0.e.b.x, 193f, 709f), vec4<f32>(-3354f, var_0, global3.c.x, -1678f), vec4<bool>(true, false, false, global0.e.a.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, -741f, var_2.a.b.x, var_0) * vec4<f32>(global3.b.x, global0.b, var_0, 1550f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, global3.b.x, global3.b.x, 321f) - vec4<f32>(113f, global0.e.c.x, 1146f, 1528f))))), -7946i, _wgslsmith_f_op_vec3_f32(vec3<f32>(1691f, var_2.a.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec3_f32(func_3(vec4<f32>(1369f, var_2.a.b.x, var_0, -227f))).x))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, 318f, true)) - 773f), -1000f, -1188f)), u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0, var_2.a.b.x, global0.b, -439f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(582f, var_2.a.b.x, -1144f, var_0) - vec4<f32>(global3.b.x, 1238f, var_2.a.b.x, var_0)))));
}

