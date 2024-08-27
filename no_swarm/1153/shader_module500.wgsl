struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_1 = Struct_1(false, vec3<f32>(846f, 561f, 1516f));

var<private> global2: array<Struct_1, 31>;

var<private> global3: array<i32, 14>;

var<private> global4: Struct_2 = Struct_2(vec3<bool>(true, false, true), Struct_1(false, vec3<f32>(-1610f, 126f, -1372f)), vec4<f32>(120f, -1000f, -1000f, -224f), Struct_1(true, vec3<f32>(2134f, -1118f, 158f)), 1207f);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(global1.b.yz));
    global2 = array<Struct_1, 31>();
    global3 = array<i32, 14>();
    var var_1 = global4.d;
    var var_2 = u_input.b;
    return Struct_2(global4.a, Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b - vec3<f32>(global4.d.b.x, -1652f, 450f)) - _wgslsmith_f_op_vec3_f32(-global4.b.b)))), global4.c, global4.d, -402f);
}

fn func_3(arg_0: vec3<u32>) -> vec3<i32> {
    var var_0 = func_2();
    var var_1 = !(!(!select(vec4<bool>(global0.x, true, true, false), !vec4<bool>(global4.d.a, var_0.b.a, false, global0.x), vec4<bool>(global4.a.x, true, global0.x, global4.a.x))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2().b.b.x - global1.b.x) + _wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -300f))))), global4.c.x);
    let var_3 = global2[_wgslsmith_index_u32(u_input.b.x, 31u)];
    global2 = array<Struct_1, 31>();
    return vec3<i32>(min(i32(-1i) * -(global3[_wgslsmith_index_u32(17178u, 14u)] ^ u_input.a), -u_input.a), abs(firstTrailingBit(_wgslsmith_div_i32(abs(u_input.a), -1i))), u_input.a);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global4.b.b.zx)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, global1.b.x) + _wgslsmith_f_op_vec2_f32(abs(global1.b.xz))), vec2<f32>(_wgslsmith_div_f32(global1.b.x, global4.e), _wgslsmith_f_op_f32(-1000f - global4.e)))));
    let var_1 = _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(1u, 14u)] ^ min(arg_1.x, 0i), -select(~global3[_wgslsmith_index_u32(u_input.b.x >> (u_input.b.x % 32u), 14u)], 0i, !global0.x));
    global2 = array<Struct_1, 31>();
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.x & arg_0.x, 28974u), 31u)];
    var var_2 = Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1281f, 1830f, global1.b.x) + global4.b.b) - _wgslsmith_f_op_vec3_f32(ceil(global4.c.zxw))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.b.b)))));
    return ((var_2.a && (global1.a & !global0.x)) || var_2.a) == all(!(!vec3<bool>(false, global1.a, true)));
}

fn func_5(arg_0: bool) -> Struct_1 {
    var var_0 = func_2().d;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global4.c.x + global1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(135f, 1095f) * _wgslsmith_f_op_f32(min(-966f, global4.b.b.x))), _wgslsmith_f_op_f32(var_0.b.x - global1.b.x)), global4.c, select(select(vec4<bool>(var_0.a, var_0.a, true, global0.x), vec4<bool>(true, true, arg_0, true), vec4<bool>(global4.d.a, arg_0, var_0.a, global4.b.a)), select(vec4<bool>(global0.x, var_0.a, arg_0, true), !vec4<bool>(false, false, true, global4.b.a), !vec4<bool>(global1.a, false, true, false)), !any(vec4<bool>(true, true, global4.d.a, global0.x))))) + vec4<f32>(var_0.b.x, global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(395f, var_0.b.x, global1.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(317f, 157f) - _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 1000f) - _wgslsmith_f_op_f32(abs(-1365f)))))));
    let var_2 = -global3[_wgslsmith_index_u32(7815u, 14u)];
    var var_3 = max(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(1u, 47044u) & _wgslsmith_mult_u32(19632u, u_input.b.x), 38809u, 9869u, ~_wgslsmith_add_u32(58049u, 1u)), select(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), vec4<u32>(u_input.b.x, 18070u, u_input.b.x, 0u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 33540u, 1u), vec4<u32>(u_input.b.x, 38779u, 0u, 4294967295u)), any(select(global4.a, global4.a, vec3<bool>(false, global0.x, false))))), vec4<u32>(u_input.b.x, firstLeadingBit(_wgslsmith_div_u32(u_input.b.x, u_input.b.x) >> (~25295u % 32u)), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)), max(vec3<u32>(44136u, 32263u, u_input.b.x), firstLeadingBit(vec3<u32>(2960u, 49807u, u_input.b.x)))), ~57134u));
    global4 = Struct_2(global4.a, global2[_wgslsmith_index_u32(~(u_input.b.x & 1u), 31u)], _wgslsmith_f_op_vec4_f32(global4.c + global4.c), func_2().b, var_0.b.x);
    return Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(step(-307f, global4.b.b.x)), _wgslsmith_f_op_f32(select(-196f, -1163f, false)), _wgslsmith_f_op_f32(-global1.b.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global4.d.b)))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_2 {
    global4 = func_2();
    global2 = array<Struct_1, 31>();
    var var_0 = Struct_1(false, _wgslsmith_f_op_vec3_f32(select(arg_0.c.yyy, vec3<f32>(_wgslsmith_f_op_f32(-global1.b.x), -740f, arg_1.b.x), func_2().a)));
    var var_1 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2().b.b.x + -1687f)))));
    var var_2 = Struct_1(-countOneBits(_wgslsmith_mult_i32(0i, global3[_wgslsmith_index_u32(u_input.b.x, 14u)])) < u_input.a, _wgslsmith_f_op_vec3_f32(floor(var_0.b)));
    return func_2();
}

fn func_1(arg_0: Struct_2) -> u32 {
    global4 = func_6(func_2(), func_5(func_4(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(0u, 4294967295u)), vec2<u32>(u_input.b.x, u_input.b.x)), func_3(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)))), vec2<f32>(_wgslsmith_f_op_f32(sign(global4.d.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(296f, arg_0.b.b.x), 1669f)))));
    var var_0 = Struct_2(select(!(!select(arg_0.a, arg_0.a, vec3<bool>(global0.x, false, arg_0.d.a))), vec3<bool>(all(vec4<bool>(false, false, true, global0.x)), !global1.a, all(vec4<bool>(arg_0.d.a, false, global4.b.a, global4.d.a)) || false), func_6(arg_0, Struct_1(global0.x, vec3<f32>(-1224f, global1.b.x, arg_0.b.b.x)), _wgslsmith_f_op_vec2_f32(ceil(global4.c.yz))).a.x && select(true, true, global1.a)), func_6(func_6(arg_0, Struct_1(true, _wgslsmith_f_op_vec3_f32(max(global1.b, arg_0.d.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1691f, 110f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1315f, global1.b.x), global4.b.b.zx)))), func_2().d, func_6(func_6(func_6(Struct_2(vec3<bool>(false, false, arg_0.d.a), Struct_1(false, vec3<f32>(arg_0.d.b.x, global1.b.x, global4.b.b.x)), vec4<f32>(345f, global1.b.x, -1525f, 1000f), arg_0.d, arg_0.d.b.x), global2[_wgslsmith_index_u32(17675u, 31u)], arg_0.c.yy), arg_0.b, arg_0.c.xx), Struct_1(false, _wgslsmith_f_op_vec3_f32(arg_0.c.zzy - vec3<f32>(-762f, global1.b.x, 1685f))), _wgslsmith_f_op_vec2_f32(arg_0.c.wy - vec2<f32>(-769f, arg_0.b.b.x))).c.wz).b, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-func_2().c))), func_5(!(u_input.b.x > (21237u & u_input.b.x))), arg_0.c.x);
    var var_1 = vec4<i32>(~_wgslsmith_mod_i32(-2147483647i, _wgslsmith_sub_i32(func_3(vec3<u32>(13267u, 4294967295u, u_input.b.x)).x, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), u_input.b), 14u)])), firstLeadingBit(max(_wgslsmith_sub_i32(-u_input.a, global3[_wgslsmith_index_u32(1u, 14u)] << (u_input.b.x % 32u)), -2147483647i)), func_3(~reverseBits(select(vec3<u32>(1u, 4294967295u, u_input.b.x), vec3<u32>(6190u, u_input.b.x, 2436u), false))).x, u_input.a);
    let var_2 = !select(!vec4<bool>(true, true, global0.x, u_input.b.x >= u_input.b.x), select(vec4<bool>(global1.a, false, all(vec4<bool>(arg_0.a.x, global4.d.a, false, false)), true), vec4<bool>(true, true, all(vec3<bool>(false, true, global0.x)), 22638i <= u_input.a), func_2().d.a), vec4<bool>(_wgslsmith_f_op_f32(-arg_0.e) < -1000f, func_4(vec2<u32>(49343u, 4294967295u), var_1.xxw), all(select(var_0.a, vec3<bool>(var_0.b.a, global4.a.x, arg_0.a.x), var_0.a)), u_input.b.x <= 107289u));
    global0 = var_2.wxx;
    return max(~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(6818u, u_input.b.x, 17145u), vec3<u32>(26845u, 14805u, u_input.b.x) << (vec3<u32>(u_input.b.x, 1u, u_input.b.x) % vec3<u32>(32u))), vec3<u32>(4294967295u, 34812u, u_input.b.x)), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.b.x, u_input.b.x, ~(~u_input.b.x & ~1u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.b.b.x, global4.b.b.x, _wgslsmith_f_op_f32(select(-2151f, _wgslsmith_f_op_f32(-global1.b.x), global1.a))) - _wgslsmith_f_op_vec3_f32(select(global4.c.xyz, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.b.x, 355f, -1543f))), 37918u > func_1(Struct_2(global4.a, Struct_1(true, vec3<f32>(global1.b.x, global4.b.b.x, global4.b.b.x)), global4.c, global2[_wgslsmith_index_u32(u_input.b.x, 31u)], global4.c.x))))), reverseBits(~u_input.a));
}

