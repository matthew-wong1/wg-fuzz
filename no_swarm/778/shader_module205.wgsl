struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 5>;

var<private> global2: array<i32, 23> = array<i32, 23>(-1i, 2147483647i, 1i, 1i, 20296i, 18478i, -1i, 30970i, -1i, -1i, 9829i, -1i, 43703i, i32(-2147483648), -1i, 22456i, -1i, 8783i, 1i, 2147483647i, 1i, -57210i, -1i);

var<private> global3: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: vec3<f32>) -> f32 {
    var var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(arg_3, arg_3, false));
    global1 = array<i32, 5>();
    var var_2 = Struct_3(Struct_1(-634f <= _wgslsmith_f_op_f32(trunc(-1700f)), select(arg_0.b, arg_0.b, select(vec3<bool>(true, false, arg_0.b.x), !arg_0.e, !arg_0.e.x)), abs(u_input.a), true, vec3<bool>(select(true, any(arg_0.b), arg_0.d), !(false & arg_0.e.x), !arg_0.d)), arg_0.d);
    var var_3 = reverseBits(_wgslsmith_clamp_vec4_i32(~vec4<i32>(0i, u_input.a, -12920i, ~(-61333i)), ~(~vec4<i32>(-60125i, 39634i, -2147483647i, global2[_wgslsmith_index_u32(var_0.x, 23u)])), abs(firstLeadingBit(vec4<i32>(-84601i, global2[_wgslsmith_index_u32(u_input.b.x, 23u)], arg_0.c, arg_0.c)))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * 606f)), _wgslsmith_f_op_f32(arg_2 - 1000f), arg_2 <= _wgslsmith_f_op_f32(abs(-712f))));
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = arg_0.b;
    var var_1 = u_input.a;
    var var_2 = arg_0;
    var_1 = select(-firstTrailingBit(-u_input.a), var_2.c, !any(vec2<bool>(var_0.x, arg_0.a))) | -(min(_wgslsmith_mult_i32(arg_0.c, arg_0.c), 1i & arg_0.c) | -(i32(-1i) * -27533i));
    var_1 = ~var_2.c >> (~u_input.b.x % 32u);
    return false;
}

fn func_2() -> Struct_2 {
    global2 = array<i32, 23>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-140f, -325f, 986f, 576f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(807f, -365f, 187f, 855f)) * vec4<f32>(1f, 1f, 1f, 1f)))));
    let var_1 = Struct_2(66182u);
    var var_2 = all(vec3<bool>(!any(vec4<bool>(true, true, false, true)), false, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x * 444f), -685f)) < -1000f));
    let var_3 = func_4(Struct_1(_wgslsmith_f_op_f32(func_3(Struct_1(false, vec3<bool>(false, false, false), global1[_wgslsmith_index_u32(var_1.a, 5u)], true, vec3<bool>(true, true, true)), var_1, var_0.x, vec3<f32>(-534f, -504f, var_0.x))) != _wgslsmith_f_op_f32(step(3427f, var_0.x)), vec3<bool>(all(vec2<bool>(false, true)), true, any(vec3<bool>(false, true, false))), -1i, any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), true)), vec3<bool>(false, u_input.b.x <= 74186u, true))) & !(2147483647i == _wgslsmith_sub_i32(-global2[_wgslsmith_index_u32(45045u, 23u)], -2147483647i));
    return Struct_2(_wgslsmith_dot_vec3_u32(select(vec3<u32>(~var_1.a, 0u, _wgslsmith_div_u32(u_input.b.x, 0u)), _wgslsmith_add_vec3_u32(u_input.b >> (vec3<u32>(77877u, global3.a, 0u) % vec3<u32>(32u)), vec3<u32>(69422u, 0u, global3.a)), false), vec3<u32>(var_1.a ^ ~u_input.b.x, 22830u, 0u)));
}

fn func_1(arg_0: bool, arg_1: bool) -> u32 {
    global2 = array<i32, 23>();
    let var_0 = vec3<i32>(8227i, reverseBits(~u_input.a), _wgslsmith_add_i32(u_input.a, -2147483647i));
    global0 = select(arg_0, true, true);
    global3 = Struct_2(4294967295u << (global3.a % 32u));
    let var_1 = func_2();
    return global3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(firstLeadingBit(select(firstLeadingBit(~u_input.b.x), _wgslsmith_mod_u32(1u, u_input.b.x & 36603u), true)), 0u, func_1(~global2[_wgslsmith_index_u32(reverseBits(global3.a), 23u)] > _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-5301i, -19288i, -11900i), vec3<i32>(1i, 1i, u_input.a)), abs(-40367i)), !((u_input.a << (0u % 32u)) >= 1i)), _wgslsmith_mod_u32(abs(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(36859u, 0u, u_input.b.x, 79793u), vec4<u32>(1u, 10051u, u_input.b.x, 1u)), _wgslsmith_div_u32(0u, 1u), _wgslsmith_mod_u32(2902u, global3.a))), 1u));
    let var_1 = Struct_3(Struct_1(true, select(vec3<bool>(any(vec2<bool>(true, false)), all(vec2<bool>(false, true)), true), vec3<bool>(true, true, all(vec4<bool>(true, false, false, false))), all(vec2<bool>(true, true))), abs(-(~0i)), all(vec4<bool>(true, true, true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), false);
    global0 = !var_1.b;
    let var_2 = global3.a >> (0u % 32u);
    let var_3 = Struct_1(false, select(!select(!var_1.a.e, !var_1.a.e, select(var_1.a.b, vec3<bool>(var_1.b, false, var_1.b), true)), vec3<bool>(var_1.b, select(var_1.a.d, var_1.a.e.x, false), (false && var_1.b) || var_1.a.e.x), select(select(select(vec3<bool>(var_1.a.e.x, var_1.b, var_1.b), var_1.a.e, vec3<bool>(false, false, var_1.b)), var_1.a.b, var_1.a.e), var_1.a.b, var_1.a.e)), abs(~1i), !(var_1.b | true), var_1.a.b);
    let var_4 = Struct_2(~(5478u >> (((40854u & global3.a) ^ ~var_0.x) % 32u)));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-710f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1256f) - _wgslsmith_f_op_f32(min(1000f, 2367f))) * 1f))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec3_u32(u_input.b, _wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_4.a, var_0.x), ~vec3<u32>(40338u, var_0.x, var_2))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-259f)))) * -1221f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -874f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2312f)))), _wgslsmith_f_op_f32(1451f - _wgslsmith_f_op_f32(292f * -1409f))), vec3<i32>(-1i) * -select(vec3<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], 1i, global2[_wgslsmith_index_u32(global3.a, 23u)]), _wgslsmith_mod_vec3_i32(vec3<i32>(-2538i, u_input.a, var_3.c), vec3<i32>(1i, 1i, var_1.a.c)), false));
}

