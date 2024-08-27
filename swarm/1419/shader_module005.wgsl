struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: array<vec3<i32>, 7>;

var<private> global2: Struct_2 = Struct_2(vec3<f32>(-762f, 2509f, 564f), true, Struct_1(true), Struct_1(true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: vec3<f32>) -> vec3<f32> {
    let var_0 = vec3<i32>(-1i) * -abs(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(global1[_wgslsmith_index_u32(arg_1.x, 7u)], vec3<i32>(-29978i, global0[_wgslsmith_index_u32(u_input.b.x, 19u)], u_input.a), global1[_wgslsmith_index_u32(88879u, 7u)]), vec3<i32>(-1i, global0[_wgslsmith_index_u32(arg_1.x, 19u)], u_input.a)));
    var var_1 = reverseBits(vec3<u32>(~reverseBits(firstTrailingBit(u_input.b.x)), (max(u_input.b.x, arg_1.x) | 0u) << (u_input.b.x % 32u), 0u));
    let var_2 = global2.d;
    return arg_3;
}

fn func_2(arg_0: i32) -> Struct_1 {
    global0 = array<i32, 19>();
    global2 = Struct_2(_wgslsmith_f_op_vec3_f32(global2.a * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(!vec3<bool>(global2.c.a, global2.c.a, global2.d.a), vec3<u32>(u_input.b.x, 41145u, u_input.b.x), !vec3<bool>(true, global2.c.a, true), vec3<f32>(global2.a.x, -509f, 147f))))), select(!global2.c.a, !(!global2.b), select(true, !global2.b, true)), Struct_1(true), Struct_1(global2.d.a));
    var var_0 = Struct_1(all(select(!select(vec2<bool>(global2.b, global2.d.a), vec2<bool>(true, global2.c.a), true), vec2<bool>(global2.d.a, all(vec4<bool>(false, true, false, false))), global2.b)));
    var var_1 = global2.c;
    global1 = array<vec3<i32>, 7>();
    return Struct_1(arg_0 <= ~1i);
}

fn func_1(arg_0: vec2<u32>, arg_1: f32) -> Struct_1 {
    global2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(global2.a.x * -1000f), -212f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1090f, 872f, -340f))))) * _wgslsmith_f_op_vec3_f32(-global2.a)), any(vec4<bool>(false, global2.d.a | (global2.c.a != global2.d.a), !global2.c.a, (true && global2.b) && true)), func_2(1i), func_2(~_wgslsmith_dot_vec2_i32(-vec2<i32>(4628i, u_input.a), vec2<i32>(2147483647i, u_input.a) & vec2<i32>(u_input.a, -2147483647i))));
    global0 = array<i32, 19>();
    var var_0 = 919f;
    var var_1 = func_2(1i);
    var var_2 = false;
    return Struct_1(-32521i != ~(-(-2147483647i << (arg_0.x % 32u))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_2(vec3<f32>(849f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(472f + _wgslsmith_f_op_f32(-global2.a.x))), _wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) + _wgslsmith_f_op_f32(-global2.a.x)))), !arg_1.b, global2.c, global2.c);
    return Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(global2.a.x)), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-965f + -174f) - _wgslsmith_f_op_f32(f32(-1f) * -316f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(global2.a + global2.a))) - vec3<f32>(-1269f, -803f, 979f))), !(u_input.b.x <= arg_2.x), var_0.c, func_1(~min(vec2<u32>(1u, u_input.b.x), vec2<u32>(1u, 0u)) >> (_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(55636u, 4294967295u), vec2<u32>(arg_2.x, 45457u)), vec2<u32>(0u, arg_2.x)) % vec2<u32>(32u)), global2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(_wgslsmith_sub_u32(((47014u ^ u_input.b.x) >> (u_input.b.x % 32u)) << (0u % 32u), u_input.b.x), Struct_2(_wgslsmith_f_op_vec3_f32(max(global2.a, global2.a)), all(vec2<bool>(any(vec4<bool>(global2.b, false, false, global2.d.a)), global2.b)), global2.d, func_1(_wgslsmith_sub_vec2_u32(u_input.b.zy, _wgslsmith_mod_vec2_u32(u_input.b.xx, u_input.b.zz)), _wgslsmith_f_op_f32(-global2.a.x))), u_input.b.zz, global2.c.a);
    global1 = array<vec3<i32>, 7>();
    var var_0 = select(vec2<bool>(u_input.b.x >= 1u, all(select(vec3<bool>(global2.c.a, false, false), select(vec3<bool>(global2.c.a, false, global2.d.a), vec3<bool>(true, global2.c.a, false), global2.c.a), global2.b))), select(vec2<bool>(!(!global2.d.a), any(select(vec3<bool>(global2.d.a, true, false), vec3<bool>(global2.c.a, true, false), global2.c.a))), !select(select(vec2<bool>(global2.d.a, global2.c.a), vec2<bool>(global2.d.a, true), vec2<bool>(false, false)), select(vec2<bool>(true, global2.b), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, global2.d.a), vec2<bool>(false, global2.b), false)), all(select(select(vec2<bool>(global2.b, global2.b), vec2<bool>(true, global2.c.a), global2.d.a), select(vec2<bool>(false, true), vec2<bool>(global2.c.a, false), global2.c.a), select(vec2<bool>(true, global2.c.a), vec2<bool>(global2.c.a, false), vec2<bool>(false, false))))), !(!select(select(vec2<bool>(global2.c.a, false), vec2<bool>(global2.b, false), true), vec2<bool>(true, true), func_4(u_input.b.x, Struct_2(global2.a, false, global2.d, global2.c), vec2<u32>(u_input.b.x, u_input.b.x), false).d.a)));
    var var_1 = countOneBits(global1[_wgslsmith_index_u32(~abs(u_input.b.x), 7u)]);
    var var_2 = func_1(reverseBits(~u_input.b.xx), _wgslsmith_f_op_f32(global2.a.x * _wgslsmith_f_op_vec3_f32(func_3(select(vec3<bool>(var_0.x, false, global2.b), select(vec3<bool>(var_0.x, true, true), vec3<bool>(global2.b, false, true), vec3<bool>(true, false, true)), select(global2.b, true, true)), select(vec3<u32>(u_input.b.x, u_input.b.x, 1u), u_input.b, select(global2.d.a, global2.d.a, true)), !select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(global2.d.a, false, global2.d.a), vec3<bool>(true, global2.b, true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, global2.a.x, global2.a.x) - vec3<f32>(594f, global2.a.x, global2.a.x)), _wgslsmith_f_op_vec3_f32(select(global2.a, vec3<f32>(global2.a.x, global2.a.x, global2.a.x), global2.b))))).x));
    let var_3 = Struct_1(true);
    let var_4 = func_4(u_input.b.x, func_4(u_input.b.x >> (30144u % 32u), Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global2.a))), !var_2.a, var_3, Struct_1(global2.a.x < global2.a.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(21568u, ~u_input.b.x), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x) | u_input.b.yz, ~vec2<u32>(u_input.b.x, 31759u))), func_2(u_input.a).a), vec2<u32>(4294967295u, firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(7927u, 50289u, 71291u), u_input.b), reverseBits(195u)))), (~global0[_wgslsmith_index_u32(1u, 19u)] < (_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, -44135i, -23142i), global1[_wgslsmith_index_u32(u_input.b.x, 7u)]) | 1i)) || (true & (func_2(var_1.x).a && true))).d;
    let x = u_input.a;
    s_output = StorageBuffer(63659u, u_input.b.zx, 13680u >> (_wgslsmith_mult_u32(select(4294967295u, ~1u, false), ~70094u) % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.yx, vec2<u32>(4379u, 17523u)), u_input.b.xz), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(198f)) + global2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.x, global2.a.x))))));
}

