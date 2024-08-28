struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<bool>(false, true, false, true), true), Struct_1(vec4<bool>(false, false, false, false), false), Struct_1(vec4<bool>(false, true, true, true), true), Struct_1(vec4<bool>(false, false, false, false), true), Struct_1(vec4<bool>(true, true, false, true), false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>) -> vec4<bool> {
    var var_0 = vec4<u32>(1u, 0u, u_input.b, 0u);
    var_0 = ~min(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(0u, var_0.x, var_0.x, 1u)), vec4<u32>(var_0.x, 34101u, 28424u, 64851u) ^ vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u)) >> (firstTrailingBit(vec4<u32>(var_0.x, 4294967295u, u_input.b, 1u)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u)), countOneBits(vec4<u32>(24078u, var_0.x, 46363u, var_0.x))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 16978u, u_input.b, var_0.x), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 26041u, 4585u, 55165u), vec4<u32>(20015u, u_input.b, 4294967295u, 1u))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, var_0.x, u_input.b, u_input.b), ~vec4<u32>(0u, u_input.b, 29956u, 84831u))));
    let var_1 = _wgslsmith_mod_u32(~u_input.b, abs(~9931u)) ^ max(u_input.b, u_input.b);
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    return arg_1.a;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> vec2<bool> {
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    return !arg_2.c.a.yz;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec3<u32>) -> vec4<bool> {
    global0 = array<Struct_1, 5>();
    let var_0 = arg_1;
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_1 = ~_wgslsmith_mult_i32(min(1i, i32(-1i) * -1i), _wgslsmith_mult_i32(u_input.a, -46867i) << (1u % 32u)) & _wgslsmith_mult_i32(firstTrailingBit(max(-15060i, u_input.a)) & u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.c, u_input.c), reverseBits(vec2<i32>(-52779i, u_input.c) << (var_0.a.a.xz % vec2<u32>(32u)))));
    return !vec4<bool>(true, false & select(true, true, any(vec3<bool>(var_0.a.b.x, false, false))), false, !arg_0.x);
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = !select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), func_2(_wgslsmith_f_op_f32(-1639f * 480f), global0[_wgslsmith_index_u32(~4294967295u, 5u)], vec4<i32>(-1i, -1i, -47153i, -29373i) & vec4<i32>(-2147483647i, -1i, -3774i, u_input.a)), !func_2(293f, Struct_1(vec4<bool>(false, false, true, true), false), vec4<i32>(u_input.c, -30258i, u_input.a, u_input.a))), func_4(select(func_3(vec4<i32>(15106i, -16331i, -2147483647i, 85248i), Struct_2(vec3<u32>(23708u, 0u, u_input.b), vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(58768u, 5u)]), Struct_2(vec3<u32>(u_input.b, u_input.b, 5742u), vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(u_input.b, 5u)]), -469f), select(vec2<bool>(false, false), vec2<bool>(true, true), false), true), Struct_3(Struct_2(vec3<u32>(u_input.b, u_input.b, 47987u), vec3<bool>(false, false, true), Struct_1(vec4<bool>(true, false, true, true), true))), ~firstLeadingBit(vec3<u32>(1u, u_input.b, 9970u))));
    global0 = array<Struct_1, 5>();
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x + arg_0.x)) * arg_0);
    var var_2 = Struct_2(~select(~(vec3<u32>(u_input.b, u_input.b, 14481u) >> (vec3<u32>(1u, u_input.b, 54673u) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.b, 4294967295u, u_input.b)), vec3<u32>(u_input.b, 1u, u_input.b)), var_0.wzz), var_0.zxx, Struct_1(select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(var_0.x, true, true, var_0.x), true), !var_0.x));
    var var_3 = global0[_wgslsmith_index_u32(max(0u, ~35846u), 5u)];
    return Struct_2(~(select(~vec3<u32>(0u, u_input.b, var_2.a.x), var_2.a, true) >> (var_2.a % vec3<u32>(32u))), select(var_2.c.a.yyx, var_2.b, true), global0[_wgslsmith_index_u32(u_input.b, 5u)]);
}

fn func_5(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = -755f;
    var var_1 = ~u_input.c;
    global0 = array<Struct_1, 5>();
    var var_2 = _wgslsmith_f_op_f32(-var_0);
    let var_3 = Struct_1(arg_2.c.a, arg_0.x);
    return Struct_1(!var_3.a, !arg_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    var var_0 = func_5(!vec3<bool>(abs(u_input.a) != _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(-6165i, 15988i, -21862i)), !select(false, true, true), true), _wgslsmith_f_op_f32(f32(-1f) * -239f), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-561f, 568f), vec2<f32>(182f, 1449f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(504f, 1000f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(245f, 1266f)), vec2<f32>(-271f, -2133f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-116f, 1312f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-131f, -1275f)), vec2<bool>(false, false))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -2317f) + vec2<f32>(1570f, -215f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1223f, 617f))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1010f, 232f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1482f, 1940f)))))));
    global0 = array<Struct_1, 5>();
    let var_1 = global0[_wgslsmith_index_u32(func_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1014f - -985f) * _wgslsmith_f_op_f32(-1513f - 1741f)) - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -137f))) + -507f))).a.x, 5u)];
    let var_2 = Struct_3(func_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(619f, -904f))))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1734f, -330f)) - vec2<f32>(499f, 110f)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(583f, 1553f)) * _wgslsmith_f_op_f32(f32(-1f) * -1636f)), 1000f));
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(reverseBits(~min(vec4<u32>(14625u, 11571u, 81840u, var_2.a.a.x), vec4<u32>(var_4.a.a.x, var_4.a.a.x, 4294967295u, u_input.b))), ~vec4<u32>(abs(var_2.a.a.x), u_input.b << (59201u % 32u), 64119u, ~4294967295u)), ~var_2.a.a.zz ^ _wgslsmith_div_vec2_u32(var_2.a.a.yy, vec2<u32>(func_1(vec2<f32>(-273f, 1478f)).a.x, 4294967295u << (u_input.b % 32u))), 0u);
}

