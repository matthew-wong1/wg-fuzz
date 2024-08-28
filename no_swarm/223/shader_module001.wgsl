struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31>;

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 33996u, 29835u, 57651u);

var<private> global2: Struct_4 = Struct_4(Struct_2(1u, Struct_1(-927f, vec2<f32>(-362f, -529f), vec4<u32>(4294967295u, 932u, 1u, 13348u), -1i, -14082i)), vec3<u32>(1u, 4294967295u, 131454u), Struct_1(-779f, vec2<f32>(618f, -222f), vec4<u32>(377u, 49079u, 34795u, 4294967295u), -21763i, -34943i), vec4<u32>(37029u, 18421u, 27767u, 35812u), -1i);

var<private> global3: array<vec4<i32>, 3>;

var<private> global4: Struct_1;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_sub_i32(1i, countOneBits(firstTrailingBit(u_input.a.x)));
    var var_1 = Struct_2(43687u, Struct_1(257f, vec2<f32>(-584f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1592f * 293f)))), max(vec4<u32>(1u, max(1u, 21098u), ~u_input.b, 12604u), ~global2.d), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.e, u_input.a.x), -u_input.a.yz), _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 14708u, global1.x), global1.yyx), 31u)], vec3<i32>(-1i, -2147483647i, global4.d) ^ u_input.a.yxy)), var_0));
    let var_2 = var_1.b;
    var var_3 = all(select(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), !select(vec2<bool>(false, true), vec2<bool>(true, false), true), global2.a.b.a != 1912f), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), true), any(vec2<bool>(true, false)))), false));
    let var_4 = _wgslsmith_f_op_f32(-global2.c.b.x);
    return ~(max(global1.x, u_input.b) ^ u_input.b);
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    let var_0 = u_input.a.xw & vec2<i32>(-global2.c.e, -global2.c.e);
    let var_1 = vec3<f32>(global4.b.x, 843f, -557f);
    let var_2 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(~firstLeadingBit(~u_input.a.x), -41387i, ~_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a.xzz, vec3<i32>(global2.e, global4.e, -2147483647i), global0[_wgslsmith_index_u32(91914u, 31u)]), vec3<i32>(var_0.x, global2.a.b.e, -32449i))), var_0.x);
    global4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.c.a)) - 1320f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1468f, global4.b.x) - var_1.x)) * global2.a.b.b.x), vec2<f32>(var_1.x, var_1.x), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 18713u), ~global1.yw), ~_wgslsmith_dot_vec2_u32(global2.c.c.zz, global2.c.c.zx), abs(_wgslsmith_mult_u32(20067u, 52281u)), ~arg_0.x) ^ global2.a.b.c, global2.e, u_input.a.x);
    var var_3 = func_3();
    return global4.e;
}

fn func_1() -> f32 {
    var var_0 = global2.c;
    let var_1 = global4.c.xx;
    let var_2 = firstLeadingBit(~(~_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global4.c.x, global1.x, 46659u), vec3<u32>(u_input.b, global4.c.x, 0u)), var_0.c.zzw | vec3<u32>(41259u, 37837u, global2.b.x))));
    let var_3 = var_2.zz;
    let var_4 = ~vec3<i32>(u_input.a.x, u_input.a.x, _wgslsmith_sub_i32(-37312i, abs(global2.c.d))) ^ vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(var_0.e, -global2.a.b.e), global2.c.e), _wgslsmith_clamp_i32(-82397i, ~countOneBits(var_0.e), -22640i), ~func_2(reverseBits(var_3)));
    return _wgslsmith_div_f32(1f, 1f);
}

fn func_4(arg_0: f32, arg_1: vec4<f32>) -> Struct_1 {
    global0 = array<vec3<i32>, 31>();
    global0 = array<vec3<i32>, 31>();
    global1 = select(vec4<u32>(1u, 18593u, global1.x, ~global1.x), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(global2.a.a, 26412u, 4294967295u, 4294967295u), vec4<u32>(13209u, 1u, u_input.b, 50723u)), ~_wgslsmith_clamp_vec4_u32(global4.c, vec4<u32>(0u, u_input.b, global4.c.x, 4294967295u), global2.d)), false) | _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(global2.a.b.c ^ vec4<u32>(global2.a.b.c.x, u_input.b, global2.b.x, global1.x), vec4<u32>(1u, global2.a.b.c.x, 1u, 1u)), vec4<u32>(u_input.b, 1u | global1.x, max(global2.b.x, 1u), 60496u)), global4.c);
    var var_0 = global2.a;
    let var_1 = var_0.b;
    return Struct_1(var_0.b.b.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global2.a.b.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1075f, 227f))) * global2.a.b.b), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.zy)), var_1.b))), var_1.c, _wgslsmith_mult_i32(select(-8925i, ~0i | u_input.a.x, _wgslsmith_f_op_f32(-global2.c.a) > arg_1.x), -_wgslsmith_div_i32(_wgslsmith_div_i32(-1i, 4914i), reverseBits(global4.d))), ~var_0.b.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), false)));
    global2 = Struct_4(global2.a, abs(vec3<u32>(reverseBits(~2048u), ~global1.x, countOneBits(global4.c.x >> (global1.x % 32u)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -598f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c.a, _wgslsmith_f_op_f32(global4.b.x - global4.b.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.a.b.a, 142f), vec2<f32>(610f, global4.b.x))))), global4.c, -55233i, 0i), ~global4.c, _wgslsmith_add_i32(-1i, min((u_input.a.x | global2.a.b.e) | ~global4.e, -_wgslsmith_mult_i32(global2.e, global4.e))));
    var var_1 = func_4(_wgslsmith_div_f32(_wgslsmith_div_f32(global4.a, _wgslsmith_f_op_f32(floor(global2.c.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1246f, 209f) + _wgslsmith_f_op_f32(global4.a + global4.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4.a, -984f, 360f, -906f)))) + vec4<f32>(_wgslsmith_div_f32(global2.a.b.a, _wgslsmith_f_op_f32(func_1())), -687f, _wgslsmith_f_op_f32(-global4.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-110f * 876f)))));
    let var_2 = Struct_2(~1u, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.b.b.x, -645f) - global2.c.b), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.a, -143f)))) * vec2<f32>(_wgslsmith_f_op_f32(round(var_1.a)), _wgslsmith_f_op_f32(ceil(global4.a)))), global4.c, global2.c.d, _wgslsmith_clamp_i32(-35720i, i32(-1i) * -13280i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-72652i, 708i), u_input.a.yy), var_1.e))));
    var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -195f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.a - var_1.b.x) - _wgslsmith_f_op_f32(-1202f + global2.c.b.x)), -683f, var_1.b.x, _wgslsmith_f_op_f32(global4.b.x + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_1.a, 1088f, -615f)))))));
    var_1 = global2.c;
    let var_3 = global2.a.b.c;
    var var_4 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b ^ ~4294967295u);
}

