struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(8437i, i32(-2147483648), 1i, -1i);

var<private> global1: array<Struct_4, 13>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: vec3<i32>, arg_3: vec4<u32>) -> i32 {
    global1 = array<Struct_4, 13>();
    var var_0 = _wgslsmith_sub_i32(~arg_2.x, -6864i >> (~arg_3.x % 32u));
    let var_1 = vec2<bool>(!all(vec3<bool>(true, 25997i < arg_2.x, select(false, false, false))), arg_3.x < u_input.a);
    var var_2 = u_input.a;
    var_2 = arg_0.a.c.b;
    return -2147483647i;
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_1, arg_3: vec2<bool>) -> i32 {
    let var_0 = Struct_2(vec2<bool>(~0u < u_input.a, true), select(vec3<bool>(all(select(vec4<bool>(false, arg_3.x, arg_3.x, arg_2.a.x), vec4<bool>(false, false, false, false), true)), arg_3.x, arg_3.x), select(select(select(vec3<bool>(true, arg_2.a.x, arg_2.a.x), vec3<bool>(false, arg_2.a.x, true), vec3<bool>(true, true, arg_2.a.x)), vec3<bool>(arg_3.x, false, true), all(vec4<bool>(false, arg_3.x, arg_2.a.x, false))), select(select(vec3<bool>(arg_3.x, arg_2.a.x, arg_3.x), vec3<bool>(false, arg_2.a.x, false), vec3<bool>(true, true, true)), vec3<bool>(arg_3.x, false, arg_2.a.x), arg_2.a.x), select(vec3<bool>(true, false, arg_2.a.x), vec3<bool>(false, true, true), true)), select(!vec3<bool>(arg_2.a.x, arg_2.a.x, arg_3.x), vec3<bool>(any(vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_2.a.x)), any(arg_3), false), !select(vec3<bool>(true, arg_2.a.x, false), vec3<bool>(true, true, false), vec3<bool>(arg_2.a.x, false, false)))), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), true), countOneBits(u_input.a)), 52131u >= (_wgslsmith_sub_u32(select(arg_2.b, arg_2.b, false), max(arg_2.b, arg_2.b)) ^ 4294967295u));
    let var_1 = Struct_3(!vec3<bool>(true, all(!var_0.b), all(vec2<bool>(true, arg_3.x))), global0.x, Struct_2(vec2<bool>((-23197i | arg_1) < arg_0.x, !(!var_0.c.a.x)), var_0.b, Struct_1(arg_3, _wgslsmith_div_u32(select(108523u, 4979u, false), var_0.c.b & 39542u)), all(vec2<bool>(true, true))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -654f), -2249f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(500f, -1427f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1121f - 1565f) - 1f)))) + 1088f);
    let var_3 = global1[_wgslsmith_index_u32(40190u, 13u)];
    let var_4 = vec2<f32>(732f, 366f);
    return -43587i;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: vec2<f32>) -> bool {
    var var_0 = arg_0.c.a.x;
    let var_1 = Struct_5(select(arg_2.a.c.a, arg_0.c.a, !select(arg_0.c.a, !arg_2.a.a, !arg_2.a.a)));
    var var_2 = !(!select(vec4<bool>(all(vec4<bool>(false, arg_0.a.x, arg_2.a.c.a.x, arg_2.a.b.x)), 2147483647i > arg_1.x, var_1.a.x, all(vec4<bool>(var_1.a.x, false, true, arg_0.c.a.x))), vec4<bool>(arg_2.a.b.x, any(arg_2.a.b), all(vec4<bool>(true, false, false, true)), all(arg_2.a.b)), arg_0.a.x));
    var var_3 = 1u;
    var_2 = vec4<bool>((_wgslsmith_f_op_f32(step(-594f, _wgslsmith_f_op_f32(1149f - arg_3.x))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))) && !(_wgslsmith_add_i32(39806i, arg_0.b) <= arg_0.b), !arg_2.a.c.a.x, ~(~94491u) != u_input.a, !any(select(vec4<bool>(var_1.a.x, arg_0.c.c.a.x, true, false), vec4<bool>(true, false, var_1.a.x, arg_2.a.b.x), select(false, arg_2.a.b.x, var_1.a.x))));
    return true;
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_5(select(vec2<bool>(true && all(vec4<bool>(true, false, true, true)), any(vec4<bool>(true, false, true, true))), vec2<bool>(true, true), !vec2<bool>(global0.x != -30944i, true)));
    let var_1 = Struct_2(var_0.a, !(!(!vec3<bool>(var_0.a.x, var_0.a.x, true))), Struct_1(vec2<bool>(true, var_0.a.x), ~u_input.a), true);
    var var_2 = vec2<u32>(~(~_wgslsmith_div_u32(25969u, u_input.a) & (u_input.a << (_wgslsmith_clamp_u32(var_1.c.b, u_input.a, var_1.c.b) % 32u))), _wgslsmith_mult_u32(~(65438u | ~u_input.a), _wgslsmith_mod_u32(48747u, ~(~u_input.a))));
    let var_3 = func_5(Struct_3(!(!var_1.b), global0.x, Struct_2(vec2<bool>(true, true), vec3<bool>(!var_0.a.x, true, !var_1.b.x), var_1.c, true)), vec4<i32>(1i, func_4(~max(vec2<i32>(2147483647i, arg_0.x), vec2<i32>(global0.x, arg_0.x)), _wgslsmith_mult_i32(func_3(Struct_4(var_1), -433f, global0.www, vec4<u32>(4294967295u, u_input.a, var_2.x, 41376u)), 1i), Struct_1(var_1.a, ~var_1.c.b), !vec2<bool>(var_1.a.x, false)), 1i, abs(func_3(global1[_wgslsmith_index_u32(var_2.x, 13u)], _wgslsmith_f_op_f32(sign(-262f)), abs(global0.xww), vec4<u32>(u_input.a, 55683u, var_2.x, 4294967295u) >> (vec4<u32>(23115u, 4294967295u, 13146u, 0u) % vec4<u32>(32u))))), Struct_4(Struct_2(!var_1.b.yz, var_1.b, var_1.c, false)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(156f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(304f, 965f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-195f, 1453f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-837f, -1402f) + vec2<f32>(716f, 830f)))))));
    var var_4 = Struct_2(vec2<bool>(true, true), var_1.b, var_1.c, !any(!(!vec4<bool>(var_3, false, var_3, false))));
    return var_1;
}

fn func_1() -> bool {
    global1 = array<Struct_4, 13>();
    let var_0 = func_2(~vec3<i32>(~_wgslsmith_mod_i32(-3374i, -17750i), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(global0.x, 1i), global0.x, _wgslsmith_clamp_i32(global0.x, 1i, global0.x)), -1i));
    let var_1 = 6081i << (reverseBits(~u_input.a) % 32u);
    global1 = array<Struct_4, 13>();
    global0 = countOneBits(vec4<i32>(var_1, var_1, ~(~min(0i, var_1)), _wgslsmith_add_i32(i32(-1i) * -36973i, _wgslsmith_mult_i32(-1i, -6729i) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.c.b), vec2<u32>(var_0.c.b, var_0.c.b)) % 32u))));
    return !(var_0.a.x & (_wgslsmith_clamp_u32(~1u, var_0.c.b & u_input.a, ~u_input.a) > 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(~(-2147483647i) << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 4294967295u)) % 32u), _wgslsmith_dot_vec3_i32(~global0.yzy, vec3<i32>(41081i, 15468i, global0.x) ^ vec3<i32>(-12150i, -1i, global0.x))), 0i), -global0.x, global0.x, select(27854i, ~(-36085i), any(vec3<bool>(true, any(vec3<bool>(true, false, false)), func_1()))));
    var var_0 = vec3<i32>(global0.x >> (u_input.a % 32u), max(67449i, global0.x), func_4(min(global0.zz, abs(global0.wx)) & -vec2<i32>(3739i, global0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, func_3(Struct_4(Struct_2(vec2<bool>(false, false), vec3<bool>(false, false, false), Struct_1(vec2<bool>(true, false), 7909u), true)), -676f, vec3<i32>(0i, 4496i, global0.x), vec4<u32>(u_input.a, 24033u, 40402u, 4294967295u)), global0.x, _wgslsmith_div_i32(-2147483647i, global0.x)), abs(vec4<i32>(230i, global0.x, -2147483647i, global0.x)) >> (~vec4<u32>(63738u, 28545u, u_input.a, 4294967295u) % vec4<u32>(32u))), Struct_1(vec2<bool>(true, true), 4294967295u), vec2<bool>(true & func_1(), (60137i | global0.x) > (i32(-1i) * -35774i))));
    var_0 = vec3<i32>(-(~var_0.x), -global0.x, -min(0i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(1471i, 11301i), firstLeadingBit(-2147483647i))));
    let var_1 = 1u & ~u_input.a;
    global1 = array<Struct_4, 13>();
    var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, -13258i, global0.x, 84111i)), abs(-vec4<i32>(var_0.x, 0i, -2147483647i, 1i))), _wgslsmith_dot_vec2_i32(vec2<i32>(-global0.x, -24155i), -global0.yy)), vec3<i32>(~_wgslsmith_dot_vec4_i32(~vec4<i32>(-17229i, -17891i, 0i, 33380i), vec4<i32>(472i, var_0.x, 42629i, global0.x)), 2147483647i, -739i), countOneBits(global0.xxx));
    global0 = ~_wgslsmith_clamp_vec4_i32(select(~(-vec4<i32>(-2147483647i, global0.x, -16950i, var_0.x)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(0i, global0.x, var_0.x, var_0.x), _wgslsmith_div_vec4_i32(vec4<i32>(global0.x, global0.x, var_0.x, global0.x), vec4<i32>(1i, var_0.x, var_0.x, var_0.x)), reverseBits(vec4<i32>(global0.x, 1i, 2234i, -24522i))), vec4<bool>(true, all(vec2<bool>(true, true)), true, true)), _wgslsmith_mult_vec4_i32(-vec4<i32>(2147483647i, var_0.x, -1i, 0i), -vec4<i32>(-2147483647i, 0i, global0.x, -1i)) << (max(vec4<u32>(31682u, 33995u, 4294967295u, 7173u) & vec4<u32>(u_input.a, 4294967295u, 15244u, var_1), _wgslsmith_div_vec4_u32(vec4<u32>(42049u, var_1, var_1, 89959u), vec4<u32>(4294967295u, u_input.a, 1u, var_1))) % vec4<u32>(32u)), select(-vec4<i32>(1i, -1i, global0.x, -5923i) | vec4<i32>(global0.x, var_0.x, global0.x, 17783i), countOneBits(vec4<i32>(-26816i, -7277i, 0i, -19263i)), vec4<bool>(true, true, true, true)));
    global0 = vec4<i32>(67988i, 48445i, var_0.x | global0.x, ~countOneBits(global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~u_input.a, 0u, ~var_1), -(var_0.x ^ 92913i) << ((1u | ~_wgslsmith_dot_vec2_u32(vec2<u32>(14585u, u_input.a), vec2<u32>(u_input.a, var_1))) % 32u));
}

