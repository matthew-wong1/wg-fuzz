struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(0i, 37320i, 8994i, 38079i, -10528i, 1i, -9610i, -1i, 1i, -62337i, 2147483647i, -12471i, -272i, 2147483647i, -5959i, 1i, -10380i, 2347i, 2147483647i, i32(-2147483648));

var<private> global1: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(-18236i), Struct_3(i32(-2147483648)));

var<private> global2: array<Struct_3, 17>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = max(~(~vec4<u32>(u_input.a.x, 65230u, u_input.a.x, u_input.a.x) | firstLeadingBit(vec4<u32>(49803u, 1u, u_input.a.x, 3401u))), vec4<u32>(u_input.a.x, u_input.a.x << (17869u % 32u), _wgslsmith_div_u32(abs(66012u), u_input.a.x), ~u_input.a.x)) << (~(~vec4<u32>(u_input.a.x, ~u_input.a.x, 4294967295u, 1937u)) % vec4<u32>(32u));
    let var_1 = all(!(!vec4<bool>(arg_0, !arg_0, arg_0, any(vec3<bool>(arg_0, false, false)))));
    let var_2 = u_input.c.zz ^ vec2<i32>(min(global0[_wgslsmith_index_u32(1u, 20u)], -(~global0[_wgslsmith_index_u32(57956u, 20u)])), (~global0[_wgslsmith_index_u32(u_input.a.x, 20u)] >> (var_0.x % 32u)) ^ ~(-global0[_wgslsmith_index_u32(1u, 20u)]));
    var var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.c.x, u_input.c.x, global0[_wgslsmith_index_u32(var_0.x, 20u)]) << (abs(var_0.xzy) % vec3<u32>(32u)), -countOneBits(vec3<i32>(1i, var_2.x, global0[_wgslsmith_index_u32(1u, 20u)]))), _wgslsmith_sub_vec3_i32(-u_input.c.xxz, u_input.c.xyw)) >= u_input.c.x;
    let var_4 = ~(~firstLeadingBit(_wgslsmith_add_vec3_u32(select(var_0.zyz, var_0.xxx, vec3<bool>(arg_0, false, true)), vec3<u32>(var_0.x, u_input.a.x, u_input.a.x))));
    return var_0.x & 19724u;
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    var var_0 = vec3<u32>(18633u, 42635u << (arg_0.x % 32u), _wgslsmith_sub_u32(33384u, 0u));
    global1 = array<Struct_3, 2>();
    var_0 = arg_0.zwy & (vec3<u32>(_wgslsmith_div_u32(~var_0.x, ~19175u), ~func_3(true), func_3(any(vec4<bool>(true, true, true, true)))) << (arg_0.zxx % vec3<u32>(32u)));
    var var_1 = vec4<bool>((((i32(-1i) * -1i) | ~u_input.b) << (arg_0.x % 32u)) != u_input.c.x, true, true, true);
    global0 = array<i32, 20>();
    return 0u;
}

fn func_1() -> f32 {
    global1 = array<Struct_3, 2>();
    var var_0 = _wgslsmith_mod_u32(u_input.a.x, ~u_input.a.x) | 1u;
    let var_1 = ~vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, 17776u) | _wgslsmith_mult_u32(1u, u_input.a.x ^ 0u), abs(func_2(~vec4<u32>(u_input.a.x, 7389u, 45976u, 1u))), ~(~_wgslsmith_div_u32(0u, u_input.a.x)));
    var var_2 = -533f;
    let var_3 = !select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), true)), select(vec4<bool>(all(vec4<bool>(true, true, true, false)), true, true, true), vec4<bool>(true, true, all(vec4<bool>(true, false, false, true)), true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -906f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1126f)))), _wgslsmith_add_i32(_wgslsmith_mult_i32(62973i, global0[_wgslsmith_index_u32(u_input.a.x, 20u)] << (0u % 32u)), (global0[_wgslsmith_index_u32(0u, 20u)] | 1i) << (73279u % 32u)) <= (u_input.c.x & 1i)));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec3<f32>) -> f32 {
    let var_0 = ~(~abs(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], 2147483647i))) & -19682i;
    global0 = array<i32, 20>();
    var var_1 = select(!select(vec2<bool>(arg_1 <= arg_2.x, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), !any(vec3<bool>(true, true, false))), vec2<bool>(~u_input.a.x >= reverseBits(u_input.a.x), _wgslsmith_f_op_f32(floor(arg_1)) >= -586f), !select(vec2<bool>(any(vec4<bool>(false, true, false, false)), true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), false))));
    var var_2 = Struct_2(Struct_1(vec3<bool>(true, all(select(vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(false, true, true, var_1.x))), var_1.x), !select(!vec3<bool>(false, var_1.x, false), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, false, var_1.x), vec3<bool>(false, var_1.x, var_1.x)), false)));
    var var_3 = u_input.c.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -826f) * arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 20>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_4(~(~0i), _wgslsmith_f_op_f32(f32(-1f) * -117f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -252f), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(floor(1790f)))))), _wgslsmith_f_op_f32(-492f * 724f));
    global1 = array<Struct_3, 2>();
    let var_1 = Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), _wgslsmith_f_op_f32(-760f + var_0.x) > -2502f, u_input.a.x > u_input.a.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -136f) + vec2<f32>(var_0.x, var_0.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, var_0.x))))));
    global1 = array<Struct_3, 2>();
    var var_3 = Struct_1(!select(var_1.a.a, vec3<bool>(all(vec2<bool>(var_1.a.a.x, var_1.a.b.x)), true, !var_1.a.b.x), global0[_wgslsmith_index_u32(~4294967295u, 20u)] != ~(-16529i)), select(select(vec3<bool>(50895u > u_input.a.x, all(vec3<bool>(false, var_1.a.b.x, var_1.a.a.x)), var_2.x < -1206f), select(select(vec3<bool>(var_1.a.a.x, false, false), vec3<bool>(false, var_1.a.a.x, var_1.a.b.x), var_1.a.b.x), var_1.a.a, vec3<bool>(false, false, var_1.a.a.x)), any(vec3<bool>(false, var_1.a.a.x, var_1.a.b.x))), !var_1.a.a, var_1.a.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(-max(_wgslsmith_dot_vec4_i32(vec4<i32>(20252i, global0[_wgslsmith_index_u32(u_input.a.x, 20u)], -40254i, global0[_wgslsmith_index_u32(63253u, 20u)]), _wgslsmith_clamp_vec4_i32(vec4<i32>(57276i, 1i, global0[_wgslsmith_index_u32(u_input.a.x, 20u)], -14924i), vec4<i32>(u_input.c.x, 67520i, -24679i, 0i), u_input.c)), abs(-u_input.c.x)), firstTrailingBit(vec2<i32>(1i >> (u_input.a.x % 32u), 0i)), _wgslsmith_clamp_vec2_u32(vec2<u32>(7719u, min(7729u, 4294967295u) ^ countOneBits(u_input.a.x)), vec2<u32>(u_input.a.x, u_input.a.x), reverseBits(_wgslsmith_mult_vec2_u32(u_input.a, u_input.a))), u_input.c.x);
}

