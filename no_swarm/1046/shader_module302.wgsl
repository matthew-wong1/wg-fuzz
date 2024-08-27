struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 18>;

var<private> global1: array<vec4<u32>, 19> = array<vec4<u32>, 19>(vec4<u32>(4294967295u, 39820u, 4294967295u, 46668u), vec4<u32>(2831u, 1u, 4294967295u, 1u), vec4<u32>(1u, 142940u, 104312u, 35842u), vec4<u32>(1u, 1u, 0u, 60819u), vec4<u32>(47529u, 1u, 0u, 8725u), vec4<u32>(14499u, 1u, 1u, 40406u), vec4<u32>(0u, 1u, 0u, 1u), vec4<u32>(1u, 1u, 0u, 4294967295u), vec4<u32>(0u, 4294967295u, 15124u, 4294967295u), vec4<u32>(4294967295u, 36678u, 40320u, 19079u), vec4<u32>(48636u, 29541u, 31169u, 4294967295u), vec4<u32>(1u, 208u, 14520u, 1u), vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec4<u32>(93043u, 4294967295u, 0u, 1u), vec4<u32>(40496u, 780u, 0u, 1u), vec4<u32>(4294967295u, 3898u, 4294967295u, 35596u), vec4<u32>(29543u, 28331u, 27064u, 81281u), vec4<u32>(8714u, 60705u, 1u, 4294967295u), vec4<u32>(380u, 90516u, 11507u, 9350u));

var<private> global2: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>) -> u32 {
    global2 = vec2<bool>((~(~arg_1.c.b) ^ 82400u) == arg_2.x, global2.x);
    var var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, arg_1.c.b, 1u, 4294967295u), ~firstLeadingBit(global1[_wgslsmith_index_u32(9092u, 19u)])) & 5080u, _wgslsmith_clamp_u32(arg_1.c.b, ~countOneBits(54244u), arg_2.x), u_input.b);
    let var_1 = arg_1.a | reverseBits(0i);
    global2 = vec2<bool>(false, any(!vec3<bool>(!arg_1.b, any(vec2<bool>(arg_1.b, global2.x)), global2.x)));
    var var_2 = Struct_1(arg_0.a, ~(~1u) | (arg_0.b << ((abs(101891u) | countOneBits(arg_2.x)) % 32u)));
    return arg_0.b;
}

fn func_2(arg_0: u32, arg_1: Struct_5) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-766f)) + _wgslsmith_f_op_f32(f32(-1f) * -699f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - 1023f) - _wgslsmith_f_op_f32(f32(-1f) * -372f)), -1928f));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), var_0.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, -1237f))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-713f * 2188f))))))), 685u);
    var var_3 = -56451i;
    var var_4 = Struct_2(u_input.a, true, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1865f)), ~arg_0));
    return var_4.b;
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> i32 {
    global0 = array<Struct_5, 18>();
    global0 = array<Struct_5, 18>();
    let var_0 = 2147483647i;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1018f, _wgslsmith_f_op_f32(-arg_0)))))), arg_1.a.a, u_input.e);
    global0 = array<Struct_5, 18>();
    return 2147483647i;
}

fn func_4(arg_0: vec2<i32>, arg_1: i32) -> bool {
    global0 = array<Struct_5, 18>();
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-648f, -1000f)), 569f)))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(575f - _wgslsmith_div_f32(var_0, var_0))) * 1f)));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(~firstLeadingBit(~73602u), ~1u), _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, 71267u, 0u) ^ vec3<u32>(u_input.c, 4294967295u, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.c, u_input.e), vec3<u32>(61504u, u_input.c, 1u))), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.e, 63976u) >> (vec3<u32>(1u, 0u, u_input.e) % vec3<u32>(32u)), countOneBits(vec3<u32>(0u, u_input.b, u_input.e))), select(vec3<u32>(u_input.e, u_input.c, u_input.b) << (vec3<u32>(u_input.b, u_input.e, u_input.e) % vec3<u32>(32u)), ~vec3<u32>(u_input.e, 4294967295u, u_input.b), global2.x)))), 18u)];
    global0 = array<Struct_5, 18>();
    return !(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(arg_0.x, -44181i), _wgslsmith_mod_i32(u_input.d.x, -27085i)), vec2<i32>(_wgslsmith_mult_i32(arg_1, -32332i), _wgslsmith_clamp_i32(arg_1, arg_0.x, arg_1))) <= (_wgslsmith_add_i32(1i, 19067i) << (u_input.c % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 18>();
    global1 = array<vec4<u32>, 19>();
    let var_0 = select(vec4<bool>(true, func_2(abs(func_1(Struct_1(121f, u_input.b), Struct_2(u_input.a, global2.x, Struct_1(-346f, u_input.c)), global1[_wgslsmith_index_u32(u_input.b, 19u)])), global0[_wgslsmith_index_u32(1u, 18u)]), any(vec2<bool>(global2.x, any(vec2<bool>(global2.x, true)))), func_4(u_input.d.zx, func_3(-1608f, Struct_4(Struct_1(-874f, u_input.c), vec3<i32>(21359i, -2147483647i, u_input.a)))) | global2.x), select(vec4<bool>(global2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.c), vec2<u32>(u_input.b, u_input.c)) > func_1(Struct_1(-339f, u_input.c), Struct_2(u_input.a, true, Struct_1(-923f, 50999u)), vec4<u32>(u_input.e, 102118u, u_input.c, 4294967295u)), !func_2(0u, global0[_wgslsmith_index_u32(u_input.b, 18u)]), false), vec4<bool>(false, !global2.x, true, func_2(u_input.b, Struct_5(u_input.d, vec3<u32>(1u, u_input.c, 0u))) | true), !vec4<bool>(select(global2.x, false, global2.x), true, !global2.x, false && global2.x)), select(!(!(!vec4<bool>(false, global2.x, true, false))), vec4<bool>(~(-28484i) >= _wgslsmith_sub_i32(22163i, u_input.d.x), global2.x, false, false), select(!(!vec4<bool>(global2.x, true, global2.x, global2.x)), vec4<bool>(true, global2.x, global2.x, global2.x), !vec4<bool>(false, global2.x, global2.x, true))));
    var var_1 = Struct_5(_wgslsmith_mod_vec3_i32(-min(u_input.d, u_input.d), u_input.d) ^ max(vec3<i32>(-1i, -2147483647i, 1i), u_input.d), vec3<u32>(1u, _wgslsmith_div_u32(55463u, ~0u), 0u) >> (vec3<u32>(~(25962u ^ u_input.e), min(70758u, ~u_input.e), u_input.c) % vec3<u32>(32u)));
    global2 = var_0.yz;
    let var_2 = Struct_5(u_input.d, vec3<u32>(1u, 61091u, ~var_1.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1938f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1337f, -677f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-805f, _wgslsmith_f_op_f32(f32(-1f) * -225f), true)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-579f * 701f)), _wgslsmith_f_op_f32(f32(-1f) * -311f))))));
}

