struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(194f, vec4<u32>(4294967295u, 17166u, 13678u, 47884u), 1i, 22751i);

var<private> global1: vec4<i32> = vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 37217i);

var<private> global2: array<Struct_2, 32>;

var<private> global3: Struct_3 = Struct_3(vec3<i32>(2147483647i, -1i, 2147483647i));

var<private> global4: array<vec3<i32>, 5>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * -216f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(712f))), 899f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 348f, global0.a, global0.a)))))));
    global3 = Struct_3(u_input.a);
    global0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-483f)))), vec4<u32>(0u, _wgslsmith_clamp_u32(~75194u, 85947u, reverseBits(select(global0.b.x, 46792u, false))), 1u, abs(global0.b.x)), -10828i & countOneBits(firstTrailingBit(1i)), -2147483647i);
    var var_1 = _wgslsmith_mod_i32(global1.x, global0.c >> (_wgslsmith_dot_vec3_u32(global0.b.zxw, vec3<u32>(global0.b.x, select(21521u, 27325u, false), 100850u << (0u % 32u))) % 32u));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.a)));
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-261f)), global0.a) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0.yz * vec2<f32>(1073f, 1473f))))))));
}

fn func_2(arg_0: f32) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(721f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0))) - arg_0), global0.b, 0i | global1.x, global3.a.x);
    global2 = array<Struct_2, 32>();
    var var_1 = Struct_2(~global0.b.x == ~var_0.b.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(global0.a, -249f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-429f, _wgslsmith_f_op_f32(floor(-157f))) + _wgslsmith_f_op_vec2_f32(func_3())), !select(false, true, false) & !all(vec2<bool>(true, false)))));
    let var_2 = Struct_1(353f, var_0.b, 1i, var_0.d);
    global2 = array<Struct_2, 32>();
    return Struct_3(global4[_wgslsmith_index_u32(global0.b.x & _wgslsmith_add_u32(firstTrailingBit(~51559u), _wgslsmith_dot_vec3_u32(var_0.b.xzx, ~vec3<u32>(20764u, 78485u, var_0.b.x))), 5u)]);
}

fn func_1(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: bool, arg_3: bool) -> Struct_5 {
    let var_0 = global1.yz;
    global3 = func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-156f)), arg_0.a.x)))));
    global1 = -abs(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(max(vec4<i32>(-1025i, var_0.x, global1.x, -2147483647i), vec4<i32>(-1i, var_0.x, arg_1.x, global0.d)), firstLeadingBit(vec4<i32>(arg_1.x, -3116i, 2147483647i, -55467i))), -vec4<i32>(2147483647i, 0i, global0.d, u_input.c) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(global0.b.x, 41806u, 75004u, 1u), vec4<u32>(4294967295u, global0.b.x, global0.b.x, 24671u)) % vec4<u32>(32u))));
    global2 = array<Struct_2, 32>();
    global0 = Struct_1(_wgslsmith_f_op_f32(step(-1944f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a * -141f)))))), global0.b, _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-41352i, u_input.c, global3.a.x), vec3<i32>(-2147483647i, 2147483647i, arg_1.x)), u_input.a), ~(~global3.a)), u_input.b);
    return Struct_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f + arg_0.a.x))), 1296f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.a.x, -162f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(675f, _wgslsmith_f_op_f32(select(global0.a, -405f, arg_3)), _wgslsmith_f_op_f32(select(global0.a, -613f, arg_2)), _wgslsmith_f_op_f32(arg_0.a.x * global0.a)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, 990f, arg_0.a.x, -1292f) * vec4<f32>(arg_0.a.x, 906f, global0.a, 534f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.a, global0.a, 1384f, global0.a), vec4<f32>(-1301f, global0.a, 1127f, 1654f)))))), _wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-453f + global0.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(firstTrailingBit(global1.wzx), u_input.a) << (vec3<u32>(~global0.b.x, 1u, global0.b.x) % vec3<u32>(32u));
    var var_1 = !vec4<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0.b.x), vec2<u32>(global0.b.x, 6812u)) != global0.b.x, true != (global1.x <= (u_input.b >> (global0.b.x % 32u))), global1.x > -4421i, true);
    let var_2 = vec4<f32>(-1035f, -1000f, _wgslsmith_div_f32(-135f, _wgslsmith_f_op_f32(ceil(2060f))), 1f);
    var var_3 = func_1(Struct_4(var_2.wzw), vec2<i32>(u_input.c, ~_wgslsmith_div_i32(u_input.a.x, global1.x)), any(var_1.xyw), var_1.x);
    var_1 = select(vec4<bool>(!select(true, select(var_1.x, true, var_1.x), var_1.x), (global1.x >> (1u % 32u)) != 31702i, true, false), !select(!select(vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(false, true, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), vec4<bool>(true, var_1.x, var_1.x, var_1.x), !vec4<bool>(true, true, var_1.x, true)), false);
    let var_4 = select(false, true, any(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(var_1.x, var_1.x, false, var_1.x), var_1.x))));
    global0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -252f)))), var_3.c.x)), ~(vec4<u32>(max(global0.b.x, global0.b.x), _wgslsmith_clamp_u32(global0.b.x, global0.b.x, 61232u), global0.b.x, ~88433u) | (~global0.b | ~global0.b)), -7260i, _wgslsmith_div_i32(0i, max(1i & global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 29657i, global0.d, 12716i), vec4<i32>(-1055i, 1i, u_input.c, 0i)) ^ -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(global3.a.x, min(~1u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(global0.b.x, 33984u), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.x, global0.b.x, global0.b.x), vec3<u32>(13931u, 4294967295u, global0.b.x)))) | global0.b.x, global4[_wgslsmith_index_u32(global0.b.x, 5u)], reverseBits(~firstLeadingBit(global4[_wgslsmith_index_u32(0u, 5u)])) >> ((global0.b.xwy << (global0.b.xwy % vec3<u32>(32u))) % vec3<u32>(32u)));
}

