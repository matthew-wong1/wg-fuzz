struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: f32,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<bool> {
    let var_0 = -45228i;
    let var_1 = Struct_1(0u, select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(any(vec2<bool>(false, false)), any(vec3<bool>(true, false, true)), true), vec3<bool>(any(vec2<bool>(true, true)), true, any(vec3<bool>(false, false, true)))), vec3<bool>(true, true, true), vec3<bool>(_wgslsmith_div_f32(380f, 2011f) > _wgslsmith_f_op_f32(round(717f)), any(vec4<bool>(true, true, true, true)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-109f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(142f, 680f) - _wgslsmith_f_op_f32(max(964f, -122f))))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1804f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-707f, 457f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-764f, 109f)))))), true);
    return !select(select(vec3<bool>(!var_1.e, false, true), !var_1.b, var_1.e), vec3<bool>(all(!vec4<bool>(var_1.e, false, var_1.b.x, true)), var_1.b.x, _wgslsmith_f_op_f32(min(-1704f, 1000f)) >= var_1.d.x), select(vec3<bool>(true, true, false), !(!var_1.b), var_1.b));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.d) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.c), arg_1.c)), _wgslsmith_f_op_f32(1000f - 710f))));
    global0 = array<u32, 32>();
    var var_1 = arg_1.d;
    let var_2 = max(~global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.c.x, 1763u), 32u)], abs(u_input.b.x)) >= 4294967295u;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_0.d))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), arg_3.d.x)), _wgslsmith_f_op_f32(-var_0.x)));
}

fn func_2(arg_0: bool, arg_1: bool) -> vec2<bool> {
    let var_0 = global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, 1u), 32u)], 32u)];
    var var_1 = Struct_1(100u, vec3<bool>(5141u != ~max(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], 47154u), arg_1 & true, arg_1 | false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(511f + _wgslsmith_f_op_f32(-1071f - 1000f))))), _wgslsmith_f_op_vec2_f32(func_4(Struct_1(~4294967295u, func_3(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(899f)), -275f), vec2<f32>(_wgslsmith_f_op_f32(492f - 133f), -1522f), _wgslsmith_div_u32(u_input.c.x, 16614u) <= _wgslsmith_add_u32(1u, u_input.b.x)), Struct_1(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b.x, 1u), global0[_wgslsmith_index_u32(~29209u, 32u)]), select(select(vec3<bool>(arg_0, arg_1, false), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, arg_1, arg_0)), vec3<bool>(true, arg_1, arg_1), func_3()), 1402f, vec2<f32>(-1424f, -1000f), func_3().x), select(vec2<bool>(arg_0, !arg_1), select(func_3().xy, vec2<bool>(true, true), func_3().yy), select(select(vec2<bool>(false, false), vec2<bool>(arg_1, false), vec2<bool>(false, arg_1)), vec2<bool>(arg_1, arg_0), global0[_wgslsmith_index_u32(u_input.c.x, 32u)] <= 4294967295u)), Struct_1(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 32u)], 32u)] >> (u_input.c.x % 32u)), !vec3<bool>(arg_0, arg_0, false), 803f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1078f, 1397f)), all(select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(true, true, arg_0, arg_1), vec4<bool>(false, arg_1, arg_0, false)))))), (u_input.b.x >> (1u % 32u)) != _wgslsmith_clamp_u32(abs(~73u), _wgslsmith_dot_vec2_u32(max(u_input.b, vec2<u32>(50406u, 4294967295u)), ~vec2<u32>(61332u, 4294967295u)), ~(~0u)));
    let var_2 = select(vec4<bool>(any(var_1.b) && any(!vec2<bool>(arg_0, var_1.b.x)), arg_1, arg_0, true), !(!select(vec4<bool>(var_1.b.x, false, arg_0, true), !vec4<bool>(false, true, var_1.b.x, true), !vec4<bool>(false, false, arg_0, var_1.b.x))), true);
    var var_3 = -1000f;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -720f) - _wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_div_f32(777f, var_1.c)));
    return func_3().zz;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -(i32(-1i) * -1i), 0i), u_input.a);
    let var_1 = Struct_1(~firstTrailingBit(4294967295u), !(!vec3<bool>(all(vec2<bool>(true, true)), true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1000f)) - vec2<f32>(1477f, -1532f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1299f, 557f))))), true);
    global0 = array<u32, 32>();
    let var_2 = vec4<bool>((global0[_wgslsmith_index_u32(var_1.a, 32u)] | _wgslsmith_div_u32(u_input.b.x, _wgslsmith_mod_u32(45986u, 34206u))) == u_input.c.x, var_1.b.x, any(select(var_1.b.yz, vec2<bool>(true, !var_1.e), select(func_2(var_1.e, var_1.e), vec2<bool>(false, true), vec2<bool>(true, var_1.b.x)))), var_1.e);
    var var_3 = any(var_1.b.xz);
    return var_1;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = ~firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(33151u, 32u)]), vec3<u32>(1u, arg_0.a, global0[_wgslsmith_index_u32(arg_0.a, 32u)])), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a, 1u, 4294967295u), vec3<u32>(1u, arg_0.a, arg_0.a))), abs(abs(vec3<u32>(arg_0.a, 21206u, global0[_wgslsmith_index_u32(arg_0.a, 32u)])))));
    global0 = array<u32, 32>();
    global0 = array<u32, 32>();
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, 1414f, arg_0.d.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-733f, arg_0.d.x, arg_0.c) + vec3<f32>(-928f, arg_0.d.x, arg_0.d.x))), vec3<f32>(-109f, _wgslsmith_f_op_f32(arg_0.c + arg_0.d.x), arg_0.d.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1725f, arg_0.d.x, -972f)))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-747f, arg_0.c, 187f) + vec3<f32>(arg_0.c, -425f, arg_0.d.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, 1000f, 414f) - vec3<f32>(948f, arg_0.c, -1746f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1040f, -254f, -504f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, arg_0.c, 1091f)), select(arg_0.b, vec3<bool>(true, true, arg_0.e), arg_0.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-615f, arg_0.d.x, arg_0.c), vec3<f32>(653f, arg_0.d.x, arg_0.c)) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c, -948f, 879f), vec3<f32>(-853f, arg_0.c, -1180f)))))))));
    global0 = array<u32, 32>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(49930u, 32u)], u_input.c.x, u_input.c.x), ~(~(~(~vec3<u32>(4294967295u, u_input.b.x, 0u)))));
    global0 = array<u32, 32>();
    var var_1 = vec2<i32>(_wgslsmith_div_i32(u_input.a.x, 0i), ~(u_input.a.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(65911i, -39131i, u_input.a.x, -37668i), vec4<i32>(u_input.a.x, 39311i, u_input.a.x, u_input.a.x))) & select(u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(14597i, -1i, 27088i), vec3<i32>(0i, u_input.a.x, u_input.a.x)), max(8627i, u_input.a.x)), false));
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_add_u32(~u_input.c.x << (~4294967295u % 32u), countOneBits(~u_input.c.x)), 23071u);
    let var_3 = func_5(func_1());
    global0 = array<u32, 32>();
    var_1 = vec2<i32>(_wgslsmith_mult_i32(firstTrailingBit(firstLeadingBit(-var_1.x)), ~(-var_1.x)), -19712i);
    var var_4 = max(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 2147483647i, u_input.a.x, 29138i), vec4<i32>(var_1.x, 1i, var_1.x, 2147483647i)) ^ var_1.x, _wgslsmith_add_i32(var_1.x, -44359i) & u_input.a.x, (var_1.x & u_input.a.x) & -61929i) | ~(-min(vec3<i32>(1i, 1i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -34149i))), select(~abs(select(vec3<i32>(-30113i, -60428i, var_1.x), vec3<i32>(1i, var_1.x, -2147483647i), var_3.b.x)), vec3<i32>(countOneBits(abs(var_1.x)), _wgslsmith_add_i32(~(-16316i), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(11487i, var_1.x))), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-61790i, var_1.x, var_1.x), reverseBits(u_input.a.x))), vec3<bool>(~var_0.x < ~var_3.a, true, true)));
    var var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(select(var_4.x, ~89676i, !var_3.e) ^ select(~(-2147483647i), 1i, select(var_5.e, false, var_3.b.x)), (i32(-1i) * -105137i) ^ _wgslsmith_div_i32(0i, 28040i >> (var_0.x % 32u)), u_input.a.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_4.x, 0i, 2147483647i, var_1.x) & vec4<i32>(0i, var_4.x, var_1.x, -2147483647i), max(vec4<i32>(0i, 0i, -1i, 2147483647i), vec4<i32>(-2147483647i, var_1.x, var_4.x, u_input.a.x)))), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.b.x, var_3.a, 26738u) | var_0), ~var_0), vec3<u32>(4294967295u, _wgslsmith_clamp_u32(4294967295u, 0u, u_input.c.x), 1u)));
}

