struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: f32,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 18030i;

var<private> global1: u32 = 1u;

var<private> global2: f32;

var<private> global3: array<bool, 4> = array<bool, 4>(false, false, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec4<u32>) -> vec3<bool> {
    global1 = _wgslsmith_sub_u32(~0u, ~abs(arg_2.x));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(166f, -396f, -682f, 454f) - vec4<f32>(-383f, 342f, 430f, -1106f)), vec4<f32>(885f, -1568f, 768f, 1812f), arg_0 > 1133u)))), vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1098f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(823f * -240f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(777f, 133f)), -493f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1755f)), _wgslsmith_f_op_f32(sign(466f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-951f, -645f, 2002f, 1243f) + vec4<f32>(-1010f, -400f, -497f, 1356f)), vec4<f32>(1f, 1f, 1f, 1f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1395f, -400f, 1371f, -708f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-740f, 1697f, -1237f, -1000f), vec4<f32>(588f, 1000f, 1352f, -2544f), global3[_wgslsmith_index_u32(u_input.b.x, 4u)]))))));
    global0 = u_input.a.x;
    var var_1 = vec2<u32>(arg_0, (~(u_input.b.x & arg_0) ^ ~1u) << (3824u % 32u));
    let var_2 = arg_2;
    return !vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-516f))) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_0.x)), var_0.x)), !any(!vec3<bool>(arg_1, global3[_wgslsmith_index_u32(var_2.x, 4u)], global3[_wgslsmith_index_u32(17157u, 4u)])));
}

fn func_4(arg_0: vec3<i32>) -> vec4<bool> {
    var var_0 = vec3<bool>(any(!(!vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 4u)], global3[_wgslsmith_index_u32(u_input.b.x, 4u)], global3[_wgslsmith_index_u32(15749u, 4u)]))) && global3[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 4u)], global3[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(u_input.b.x, abs(u_input.b.x))), 4u)], all(!(!vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.b.x, 4u)], false))));
    global3 = array<bool, 4>();
    let var_1 = arg_0.zy & vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(-46271i), arg_0.x), vec2<i32>(0i, ~arg_0.x)), arg_0.x);
    global0 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-15339i, ~26524i, abs(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x & -2147483647i, -2147483647i))), var_1.x);
    let var_2 = u_input.b.yww >> (vec3<u32>(u_input.b.x, 40463u, countOneBits(4294967295u)) % vec3<u32>(32u));
    return !vec4<bool>(select(true, all(select(vec3<bool>(global3[_wgslsmith_index_u32(var_2.x, 4u)], false, global3[_wgslsmith_index_u32(var_2.x, 4u)]), vec3<bool>(false, var_0.x, false), global3[_wgslsmith_index_u32(var_2.x, 4u)])), all(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 4u)], var_0.x, global3[_wgslsmith_index_u32(var_2.x, 4u)]))), true, u_input.b.x != var_2.x, func_3(~_wgslsmith_mod_u32(96952u, 17837u), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(7549u, 32919u), ~38031u), 4u)], vec4<u32>(~4294967295u, 1u, u_input.b.x, u_input.b.x)).x);
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - arg_0)), _wgslsmith_div_f32(-345f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))) - 1f);
    var var_1 = !func_4(select(vec3<i32>(-16785i, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 2147483647i), min(0i, -2147483647i)), u_input.d, !func_3(29998u, true, u_input.b)));
    var var_2 = Struct_1(true, _wgslsmith_mult_vec4_u32(u_input.b >> (u_input.b % vec4<u32>(32u)), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(348f, _wgslsmith_div_f32(-323f, arg_0), any(vec2<bool>(var_1.x, global3[_wgslsmith_index_u32(52120u, 4u)])))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -142f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_0)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1556f) * vec2<f32>(arg_0, arg_0))), vec2<bool>(!global3[_wgslsmith_index_u32(u_input.b.x, 4u)], true))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(407f, -484f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1087f, arg_0) + vec2<f32>(-348f, 500f)))))), !select(vec2<bool>(33658u <= u_input.b.x, global3[_wgslsmith_index_u32(1u >> (u_input.b.x % 32u), 4u)]), !var_1.zz, func_4(vec3<i32>(u_input.c.x, 0i, u_input.a.x) & vec3<i32>(2147483647i, 37121i, 1i)).x));
    global2 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-var_2.c));
    let var_3 = Struct_1(global3[_wgslsmith_index_u32(0u, 4u)], ~u_input.b, -459f, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(var_2.d, var_2.d)), var_2.d))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.x) * -1574f), -1271f))), select(vec2<bool>(var_2.e.x, !select(var_1.x, var_2.e.x, true)), vec2<bool>(var_1.x, true), vec2<bool>(false, true)));
    return var_3;
}

fn func_1(arg_0: vec3<u32>) -> Struct_4 {
    let var_0 = Struct_3(Struct_2(func_2(-673f), ~(~(u_input.a >> (u_input.b % vec4<u32>(32u)))), func_2(369f)), firstLeadingBit(-select(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a), max(u_input.a, u_input.a), global3[_wgslsmith_index_u32(arg_0.x, 4u)])), !(!vec3<bool>(true && global3[_wgslsmith_index_u32(0u, 4u)], global3[_wgslsmith_index_u32(arg_0.x, 4u)], global3[_wgslsmith_index_u32(1u << (u_input.b.x % 32u), 4u)])), arg_0.zx);
    let var_1 = var_0.a.a.d.x;
    var var_2 = !var_0.c;
    let var_3 = Struct_4(Struct_2(func_2(_wgslsmith_f_op_f32(-var_1)), vec4<i32>(_wgslsmith_div_i32(-21433i, ~(-29251i)), _wgslsmith_dot_vec2_i32(min(vec2<i32>(var_0.a.b.x, 1i), vec2<i32>(-2147483647i, var_0.a.b.x)), vec2<i32>(-2147483647i, 2147483647i)), -40180i, _wgslsmith_dot_vec3_i32(u_input.c, var_0.a.b.xyx)), var_0.a.c), arg_0.x);
    let var_4 = u_input.c;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 4>();
    let var_0 = 2147483647i;
    global2 = 1060f;
    var var_1 = func_1(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(4294967295u), 4294967295u & u_input.b.x, 1u), u_input.b.wyw), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.b.wyy, ~vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)), u_input.b.x, 1u), u_input.b.x));
    let var_2 = u_input.b;
    global0 = max(_wgslsmith_add_i32(9585i, 17634i), -firstLeadingBit(u_input.a.x)) & var_1.a.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(35399i, u_input.b);
}

