struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> vec4<bool> {
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    var var_0 = global0[_wgslsmith_index_u32(~u_input.b, 30u)];
    var_0 = global0[_wgslsmith_index_u32(u_input.b, 30u)];
    let var_1 = vec4<i32>(_wgslsmith_add_i32(var_0.a.x, reverseBits(firstTrailingBit(9727i))), -33120i, _wgslsmith_mult_i32(var_0.a.x, var_0.a.x), _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_0.a.x, var_0.a.x) | var_0.a.x, ~var_0.a.x), ~_wgslsmith_add_i32(var_0.a.x, ~var_0.a.x)));
    return select(vec4<bool>(~(~var_0.c) <= ~select(var_0.e.x, 7362u, true), false, var_0.d.x, true), vec4<bool>(true & !(u_input.a.x < var_0.c), true, true, (var_0.b <= _wgslsmith_div_f32(-459f, 1252f)) || var_0.d.x), vec4<bool>(var_0.d.x, true, var_0.d.x, true));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = arg_1.a.x >> (_wgslsmith_add_u32(1u, u_input.b) % 32u);
    var var_1 = ~(~u_input.b);
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(105f, arg_1.b, _wgslsmith_f_op_f32(1178f - 1462f), _wgslsmith_f_op_f32(select(arg_1.b, -1017f, arg_1.d.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, arg_1.b, arg_1.b, arg_1.b) * vec4<f32>(arg_1.b, -705f, arg_1.b, 795f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-118f, -1000f, 123f, arg_1.b), vec4<f32>(1693f, arg_1.b, arg_1.b, arg_1.b)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b, -1282f, arg_1.b, -1372f), vec4<f32>(711f, arg_1.b, arg_1.b, -581f))))))));
    var_1 = _wgslsmith_mod_u32(arg_1.e.x, u_input.a.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x)))) - arg_1.b);
    return arg_1.d.zwz;
}

fn func_2(arg_0: u32) -> vec3<bool> {
    global0 = array<Struct_1, 30>();
    var var_0 = 1u;
    var var_1 = global0[_wgslsmith_index_u32(0u, 30u)];
    return select(!(!func_3(1u, Struct_1(vec3<i32>(var_1.a.x, var_1.a.x, -2147483647i), -388f, 29278u, var_1.d, vec4<u32>(arg_0, var_1.c, var_1.c, var_1.e.x)))), vec3<bool>(select(true, true, var_1.d.x), true, true), var_1.d.x && (false & var_1.d.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.b, -141f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, arg_1.b)))))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1873f), -284f))));
    let var_1 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_0.a.x, abs(arg_1.a.x)), 38170i) | ~_wgslsmith_div_i32(arg_0.a.x, arg_1.a.x), -_wgslsmith_add_i32(_wgslsmith_mod_i32(arg_1.a.x, 46239i), arg_0.a.x) & -2147483647i, select(arg_0.a.x, arg_1.a.x, arg_0.d.x & (true && !arg_1.d.x)), arg_0.a.x);
    let var_2 = arg_2.yz;
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_1.b))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(884f, arg_1.b) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.b, var_0.x), vec2<f32>(var_0.x, var_0.x)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -1000f) - vec2<f32>(var_0.x, arg_0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-752f, -742f)))))));
    var var_3 = arg_1;
    return 31279i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    global0 = array<Struct_1, 30>();
    var var_1 = Struct_1(vec3<i32>(func_4(Struct_1(vec3<i32>(8995i, 46461i, 13515i) >> (vec3<u32>(u_input.b, var_0, var_0) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-1990f - -1110f), 0u, vec4<bool>(true, true, true, true), ~vec4<u32>(2398u, 1u, 55555u, 0u)), Struct_1(vec3<i32>(-1i, 91457i, -2147483647i), _wgslsmith_f_op_f32(ceil(-140f)), u_input.a.x, func_1(), vec4<u32>(4323u, 1u, var_0, u_input.a.x)), select(vec3<u32>(u_input.b, u_input.a.x, u_input.b) | vec3<u32>(1u, 6417u, 19862u), ~vec3<u32>(0u, var_0, var_0), func_2(u_input.a.x)), 4294967295u), -2147483647i, -24855i), _wgslsmith_f_op_f32(2530f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-313f - 780f) + 432f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), var_0, select(vec4<bool>(true, true, select(select(false, true, false), true, true), false), vec4<bool>(true, (u_input.b >> (var_0 % 32u)) != ~var_0, !any(vec3<bool>(false, true, true)), true), select(!func_1(), vec4<bool>(true, true, any(vec2<bool>(false, false)), func_1().x), false)), ~firstTrailingBit(vec4<u32>(u_input.a.x, _wgslsmith_add_u32(41972u, 3738u), 31670u, ~var_0)));
    let var_2 = vec3<bool>(func_2(reverseBits(1u | var_0)).x, !var_1.d.x, !(true & !var_1.d.x));
    var var_3 = global0[_wgslsmith_index_u32(max(var_1.c, ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(var_1.e.ywx >> (var_1.e.zzz % vec3<u32>(32u)), var_1.e.zzw), var_1.e.wwx)), 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(-12842i, _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~var_1.e, vec4<u32>(var_3.c, 85486u, ~u_input.b, var_0 ^ 41023u)), vec4<u32>(var_1.c, 18552u, var_3.c, ~(var_0 & 56017u))), ~(~(~(~vec4<u32>(u_input.a.x, 61563u, 0u, var_3.e.x)))), vec2<i32>(2147483647i, -53287i), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.a.x, var_3.a.x, -31039i, var_1.a.x), -abs(vec4<i32>(var_1.a.x, 0i, 15164i, 14542i)), vec4<i32>(reverseBits(1427i), var_1.a.x, 0i, -var_1.a.x)));
}

