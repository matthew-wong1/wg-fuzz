struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: f32,
    c: Struct_3,
    d: f32,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<i32>(55667i, 53937i), Struct_3(vec3<bool>(false, false, true), vec4<u32>(20419u, 4294967295u, 4294967295u, 1u), vec4<f32>(1008f, 1000f, 278f, 1404f), vec2<bool>(true, false)));

var<private> global1: array<vec2<bool>, 7>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32) -> vec2<bool> {
    let var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(-878f)), global0.b.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b.c.xy) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.b.c.x, global0.b.c.x), vec2<f32>(-347f, 392f)))), _wgslsmith_f_op_f32(-global0.b.c.x) > 1210f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -593f) * _wgslsmith_div_f32(949f, _wgslsmith_f_op_f32(max(global0.b.c.x, 241f))))), global0.b, 265f, Struct_4(global0.a, global0.b));
    global1 = array<vec2<bool>, 7>();
    let var_1 = ~(-2147483647i);
    let var_2 = -2147483647i;
    var var_3 = var_0.c.a;
    return select(vec2<bool>(all(vec3<bool>(true, true, !var_3.x)), var_0.c.b.x > ~firstLeadingBit(u_input.a)), select(vec2<bool>(var_0.e.b.a.x, global0.b.d.x), select(vec2<bool>(any(global0.b.a), true), vec2<bool>(true, true), !all(vec4<bool>(false, var_3.x, false, false))), select(select(global0.b.d, select(global0.b.a.yx, var_3.zy, vec2<bool>(var_0.e.b.d.x, true)), var_3.x), global0.b.a.yx, vec2<bool>(any(vec2<bool>(true, global0.b.a.x)), var_3.x == var_3.x))), vec2<bool>(true, any(!select(vec2<bool>(false, global0.b.d.x), global1[_wgslsmith_index_u32(global0.b.b.x, 7u)], true))));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: u32) -> f32 {
    let var_0 = global0.b;
    var var_1 = Struct_2(-(vec2<i32>(-1i) * -vec2<i32>(global0.a.x, 1i)), Struct_1(select(vec2<bool>(false, true), func_3(1u), global0.b.a.xy), vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(-1232f + arg_1), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(arg_1 - 846f)), -295f)), vec4<bool>(global0.b.a.x, false, !(!global0.b.d.x), (var_0.b.x <= var_0.b.x) & true), Struct_1(!global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(var_0.b, vec4<u32>(72385u, u_input.a, arg_0.x, arg_0.x))), 7u)], _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b.c)), vec4<f32>(_wgslsmith_f_op_f32(global0.b.c.x * -248f), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-global0.b.c.x), global0.b.c.x)))));
    var var_2 = vec2<u32>(_wgslsmith_add_u32(firstLeadingBit(u_input.a), var_0.b.x), arg_0.x) << (vec2<u32>(_wgslsmith_mult_u32(var_0.b.x, 4294967295u), ~_wgslsmith_mult_u32(0u, 4294967295u) | ~(~arg_0.x)) % vec2<u32>(32u));
    global1 = array<vec2<bool>, 7>();
    let var_3 = any(vec3<bool>(global0.b.a.x, var_0.d.x, min(1u, var_0.b.x & u_input.a) < firstLeadingBit(countOneBits(17652u))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1522f)))), var_1.b.b.x), -1386f));
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: vec3<f32>, arg_3: vec4<bool>) -> Struct_4 {
    var var_0 = u_input.a;
    var var_1 = abs(-_wgslsmith_div_i32(~(arg_0.e.a.x >> (1u % 32u)), 0i));
    let var_2 = false;
    var var_3 = any(!vec3<bool>(~0i <= _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 2147483647i, 2147483647i), vec4<i32>(arg_0.e.a.x, arg_0.e.a.x, global0.a.x, 7945i)), func_3(u_input.a).x || false, arg_3.x | true));
    var var_4 = global0.b.c.x;
    return Struct_4(-(~(-(~vec2<i32>(-18402i, -18118i)))), Struct_3(select(arg_3.zyx, !vec3<bool>(var_2, var_2, true), select(vec3<bool>(false, true, true), select(vec3<bool>(true, global0.b.a.x, global0.b.d.x), global0.b.a, arg_3.x), 439f > arg_2.x)), abs(vec4<u32>(global0.b.b.x ^ 14375u, 32850u & global0.b.b.x, _wgslsmith_dot_vec2_u32(global0.b.b.xw, vec2<u32>(1u, global0.b.b.x)), ~5923u)), arg_0.e.b.c, !vec2<bool>(arg_3.x, !var_2)));
}

fn func_1(arg_0: i32) -> vec4<bool> {
    let var_0 = func_4(Struct_5(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global0.b.c.x)))), _wgslsmith_f_op_f32(func_2(global0.b.b.wxx, _wgslsmith_f_op_f32(-global0.b.c.x), _wgslsmith_mult_u32(15006u, 59475u)))), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(-622f, global0.b.c.x))), Struct_3(select(vec3<bool>(global0.b.d.x, true, global0.b.d.x), vec3<bool>(true, true, true), true), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 51344u, 36901u), global0.b.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b.c - vec4<f32>(-267f, -126f, 1814f, 955f)) * vec4<f32>(1351f, global0.b.c.x, 183f, global0.b.c.x)), func_3(0u)), global0.b.c.x, Struct_4(global0.a, global0.b)), _wgslsmith_f_op_f32(f32(-1f) * -2979f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.b.c.x, -2161f, global0.b.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b.c.xxx)), false)), select(select(select(!vec4<bool>(false, global0.b.d.x, true, global0.b.d.x), vec4<bool>(false, global0.b.d.x, false, global0.b.a.x), !vec4<bool>(true, false, true, global0.b.a.x)), select(!vec4<bool>(false, global0.b.a.x, global0.b.d.x, global0.b.a.x), !vec4<bool>(global0.b.d.x, true, global0.b.d.x, global0.b.d.x), vec4<bool>(global0.b.d.x, false, true, global0.b.d.x)), all(global0.b.d)), !select(!vec4<bool>(global0.b.a.x, true, global0.b.d.x, true), select(vec4<bool>(global0.b.a.x, false, global0.b.a.x, true), vec4<bool>(global0.b.a.x, false, global0.b.d.x, global0.b.d.x), true), !vec4<bool>(true, global0.b.d.x, global0.b.a.x, global0.b.a.x)), !vec4<bool>(select(true, true, global0.b.a.x), all(vec3<bool>(true, true, global0.b.a.x)), all(global0.b.a), true)));
    global1 = array<vec2<bool>, 7>();
    return !select(!vec4<bool>(var_0.b.a.x, global0.b.c.x != -1571f, false, false), vec4<bool>(-42941i > var_0.a.x, !(!global0.b.d.x), var_0.b.a.x, !(798f <= var_0.b.c.x)), !vec4<bool>(true, true, var_0.b.d.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 7>();
    let var_0 = !select(vec4<bool>(global0.b.a.x, false, true, global0.b.a.x), func_1(i32(-1i) * -global0.a.x), vec4<bool>(global0.b.a.x, func_3(~global0.b.b.x).x, global0.b.a.x, false));
    global1 = array<vec2<bool>, 7>();
    let var_1 = var_0.yzy;
    var var_2 = Struct_4(firstTrailingBit(vec2<i32>(-1i) * -global0.a), Struct_3(var_1, _wgslsmith_mod_vec4_u32(~vec4<u32>(global0.b.b.x, u_input.a, u_input.a, global0.b.b.x) & global0.b.b, ~(~global0.b.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -346f, global0.b.c.x, 1256f)), _wgslsmith_f_op_vec4_f32(select(global0.b.c, global0.b.c, vec4<bool>(true, var_1.x, global0.b.a.x, global0.b.d.x))))), !func_4(Struct_5(vec2<f32>(global0.b.c.x, global0.b.c.x), global0.b.c.x, global0.b, global0.b.c.x, Struct_4(global0.a, Struct_3(var_1, global0.b.b, vec4<f32>(414f, global0.b.c.x, global0.b.c.x, global0.b.c.x), vec2<bool>(var_0.x, true)))), global0.b.c.x, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.b.c.x, global0.b.c.x, global0.b.c.x))), var_0).b.a.yy));
    var var_3 = Struct_1(vec2<bool>(all(vec3<bool>(func_4(Struct_5(global0.b.c.zx, global0.b.c.x, Struct_3(vec3<bool>(true, var_2.b.d.x, var_2.b.a.x), global0.b.b, global0.b.c, var_2.b.a.zy), -1000f, Struct_4(vec2<i32>(5858i, -5294i), global0.b)), -186f, vec3<f32>(global0.b.c.x, global0.b.c.x, 335f), vec4<bool>(true, var_1.x, global0.b.a.x, false)).b.d.x, func_4(Struct_5(var_2.b.c.wy, -112f, var_2.b, 1052f, Struct_4(var_2.a, var_2.b)), 978f, var_2.b.c.yyw, var_0).b.a.x, true)), var_2.b.d.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b.c + vec4<f32>(var_2.b.c.x, 1000f, -324f, var_2.b.c.x)), _wgslsmith_f_op_vec4_f32(-var_2.b.c)) * vec4<f32>(_wgslsmith_f_op_f32(122f * global0.b.c.x), _wgslsmith_f_op_f32(1418f + global0.b.c.x), _wgslsmith_f_op_f32(-global0.b.c.x), -325f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1075f - var_2.b.c.x), _wgslsmith_f_op_f32(global0.b.c.x * global0.b.c.x), _wgslsmith_f_op_f32(-var_2.b.c.x), _wgslsmith_f_op_f32(-global0.b.c.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-463f, -1167f, -1000f, -423f) - var_2.b.c)), !((var_2.b.b.x <= 0u) || true))));
    let var_4 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_3.b.yz, var_3.b.xy))), vec2<f32>(var_2.b.c.x, 1330f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -146f)))))), Struct_3(vec3<bool>(true, false, true), vec4<u32>(~var_2.b.b.x, 55249u, _wgslsmith_div_u32(3410u, 41340u) << (var_2.b.b.x % 32u), _wgslsmith_mult_u32(31777u, 0u)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_2.b.c))))), var_0.zw), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -690f), 1337f, global0.a.x <= var_2.a.x)), func_4(Struct_5(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_3.b.wy), vec2<f32>(global0.b.c.x, 1966f))), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-var_2.b.c.x), all(vec4<bool>(var_0.x, true, false, false)))), func_4(Struct_5(vec2<f32>(1577f, global0.b.c.x), 1024f, Struct_3(var_0.wxy, var_2.b.b, global0.b.c, vec2<bool>(var_3.a.x, true)), var_3.b.x, Struct_4(global0.a, Struct_3(var_1, vec4<u32>(4294967295u, var_2.b.b.x, var_2.b.b.x, global0.b.b.x), vec4<f32>(-744f, 371f, 444f, 1000f), global0.b.d))), var_2.b.c.x, _wgslsmith_f_op_vec3_f32(global0.b.c.yww + var_2.b.c.yxy), var_0).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -360f) - global0.b.c.x), func_4(Struct_5(var_3.b.yx, var_2.b.c.x, Struct_3(vec3<bool>(false, false, global0.b.d.x), global0.b.b, vec4<f32>(361f, -154f, -1502f, -1131f), var_1.yy), var_3.b.x, Struct_4(vec2<i32>(var_2.a.x, 35213i), Struct_3(vec3<bool>(var_0.x, false, var_3.a.x), var_2.b.b, global0.b.c, global0.b.d))), var_3.b.x, _wgslsmith_f_op_vec3_f32(ceil(global0.b.c.xzz)), vec4<bool>(var_0.x, global0.b.a.x, false, var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.b.c.x))), global0.b.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_3.b.zxw, vec3<f32>(-440f, var_2.b.c.x, var_2.b.c.x))) * var_3.b.wwy), var_0));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.e.a.x | ~var_2.a.x, -1i, vec2<i32>(-_wgslsmith_mod_i32(~(-1i), -35202i), ~(-var_2.a.x | (i32(-1i) * -2147483647i))), vec4<f32>(714f, -1297f, -651f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_2.b.c.x)), _wgslsmith_f_op_f32(step(-2358f, -439f)))), _wgslsmith_f_op_f32(var_4.a.x - var_2.b.c.x)))), -select(~abs(vec3<i32>(global0.a.x, 38301i, var_4.e.a.x)), ~(-vec3<i32>(47984i, 27058i, var_4.e.a.x)), var_4.c.a.x));
}

