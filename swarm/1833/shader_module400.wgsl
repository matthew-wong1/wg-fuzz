struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(32791u, 85590u, 10265u);

var<private> global1: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global2: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false));

var<private> global3: Struct_1;

var<private> global4: vec2<bool>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global4 = global1[_wgslsmith_index_u32((_wgslsmith_div_u32(~93862u & u_input.a.x, 4294967295u) >> (4294967295u % 32u)) >> (1u % 32u), 21u)];
    let var_0 = Struct_1(false, global3.c, vec4<f32>(global3.c.x, global3.b.x, -2009f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global3.c.x, -250f), _wgslsmith_f_op_f32(-750f + 1547f))))), 1u, global3.e);
    let var_1 = -firstTrailingBit(~(~vec3<i32>(u_input.c, 45314i, u_input.b)) & select(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.c, u_input.b), vec3<i32>(u_input.c, u_input.c, -1i), vec3<i32>(51461i, u_input.c, u_input.c)), vec3<i32>(u_input.c, u_input.b, u_input.c), true && global4.x));
    var var_2 = 25544u;
    var var_3 = abs(vec3<u32>(69821u, _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 13685u), global0.xy), ~abs(global3.e.xx)), global0.x));
    return ~9248u;
}

fn func_4(arg_0: i32, arg_1: u32) -> i32 {
    let var_0 = !all(select(select(global1[_wgslsmith_index_u32(global3.d & 57501u, 21u)], vec2<bool>(global4.x, true), all(global2[_wgslsmith_index_u32(29736u, 24u)])), vec2<bool>(false, all(global2[_wgslsmith_index_u32(13440u, 24u)])), false));
    var var_1 = Struct_1(false, global3.c, global3.b, ~27833u, ~vec3<u32>(_wgslsmith_clamp_u32(24856u, 1u, global3.d), 43742u, arg_1));
    let var_2 = Struct_1(-2147483647i > select(u_input.b, _wgslsmith_mod_i32(-arg_0, -38532i), (global3.c.x < var_1.c.x) | (2147483647i == arg_0)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_1.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.b)), 2979u, ~var_1.e);
    var var_3 = Struct_1(!global3.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(914f, var_2.b.x, var_2.c.x, -840f), var_2.b) * _wgslsmith_f_op_vec4_f32(sign(var_2.c))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(var_1.b, global3.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1027f, -977f, -428f, var_2.b.x))))) + vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -137f))), _wgslsmith_f_op_f32(-global3.b.x), 1791f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1177f, -631f, _wgslsmith_f_op_f32(f32(-1f) * -256f), _wgslsmith_f_op_f32(global3.c.x + var_2.b.x)))), var_2.b, select(!vec4<bool>(var_1.a, global3.a, false, global4.x), !select(vec4<bool>(true, var_0, var_2.a, true), vec4<bool>(false, true, var_2.a, var_2.a), vec4<bool>(false, var_1.a, true, global3.a)), vec4<bool>(var_0, var_1.e.x <= global3.e.x, true, !var_0)))), var_2.e.x, ~(~(~(~global3.e))));
    let var_4 = u_input.d.xx;
    return arg_0;
}

fn func_2(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = u_input.d.x;
    let var_1 = -vec4<i32>(func_4(u_input.c, func_3()), 28040i, u_input.c, ~u_input.c);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1295f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(global3.c.x, _wgslsmith_f_op_f32(f32(-1f) * -2147f))))))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), global4.x)));
    global1 = array<vec2<bool>, 21>();
    global3 = Struct_1(select(!global3.a && true, global3.a, arg_0.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_2, arg_0.c.x, 1000f), global3.b) * global3.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, _wgslsmith_f_op_f32(-arg_0.c.x), arg_0.c.x, -902f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_0.c))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-135f - global3.b.x) + arg_0.c.x), _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(f32(-1f) * -883f), _wgslsmith_f_op_f32(ceil(374f))))), _wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.e.x, 2572u, _wgslsmith_sub_u32(u_input.a.x, 1u), firstTrailingBit(25574u)), ~(~vec4<u32>(arg_0.e.x, arg_0.e.x, 5697u, u_input.a.x)))), ~u_input.d);
    return var_1.wy << (_wgslsmith_clamp_vec2_u32(~vec2<u32>(46965u, _wgslsmith_sub_u32(0u, global0.x)), ~_wgslsmith_add_vec2_u32(vec2<u32>(47824u, u_input.a.x), abs(arg_0.e.yz)), global0.xx) % vec2<u32>(32u));
}

fn func_1(arg_0: bool, arg_1: bool) -> u32 {
    var var_0 = any(select(global2[_wgslsmith_index_u32(select(max(global3.e.x, 0u), abs(global0.x), all(global2[_wgslsmith_index_u32(0u, 24u)])) & ~1u, 24u)], !select(global2[_wgslsmith_index_u32(1u, 24u)], !global2[_wgslsmith_index_u32(global3.e.x, 24u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.d.x), 24u)]), !(!vec3<bool>(true, global3.a, arg_1))));
    let var_1 = abs(countOneBits(_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b, -2362i) | vec2<i32>(u_input.c, 0i)), _wgslsmith_sub_vec2_i32(func_2(Struct_1(true, global3.c, global3.c, 4294967295u, global3.e)), firstLeadingBit(vec2<i32>(u_input.c, 37476i))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(-3193i, 2147483647i), vec2<i32>(1i, u_input.b)))));
    let var_2 = false;
    let var_3 = global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(6653u, 4294967295u) << (~vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u)), select(max(u_input.d.yz, vec2<u32>(u_input.a.x, 3833u)), vec2<u32>(global0.x, u_input.a.x) | vec2<u32>(43401u, global3.e.x), arg_0)), reverseBits(vec2<u32>(14697u, global0.x)) << (vec2<u32>(u_input.d.x, ~u_input.a.x) % vec2<u32>(32u))), ~select(func_3(), abs(global0.x), false)), 21u)];
    var var_4 = Struct_1(!all(select(select(global2[_wgslsmith_index_u32(global0.x, 24u)], vec3<bool>(var_3.x, false, true), var_3.x), vec3<bool>(var_2, true, arg_1), !vec3<bool>(var_3.x, global3.a, false))), vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.b.x))), _wgslsmith_f_op_f32(-1314f - global3.c.x), global3.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.c.x + -840f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.x)), global3.c.x, _wgslsmith_f_op_f32(select(global3.b.x, -723f, var_3.x)))), reverseBits(_wgslsmith_add_u32(27668u, u_input.d.x)), global3.e);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 21>();
    var var_0 = vec3<u32>(4294967295u, _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(global3.e.x, global3.e.x), u_input.d.yz), ~(global3.e.x ^ global0.x)) | u_input.d.x, _wgslsmith_add_u32(func_1(global4.x, false), ~74253u));
    let var_1 = global3.a;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1475f + global3.b.x), _wgslsmith_f_op_f32(trunc(-427f))) - 212f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1f, -601f))))), 1000f, global3.c.x);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - 580f)), _wgslsmith_f_op_f32(-global3.c.x))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.c.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-304f, var_2.x, var_2.x, -143f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, _wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(global3.b.x + global3.b.x), _wgslsmith_f_op_f32(-var_2.x))))), global3.c, select(~1u, firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.d.x, var_0.x, global3.e.x, 22150u))), global3.a), _wgslsmith_div_vec3_u32(select(min(vec3<u32>(20065u, 0u, u_input.a.x), global3.e), global3.e, any(select(vec2<bool>(global3.a, global3.a), vec2<bool>(false, global3.a), false))), abs(~(global3.e & global3.e))));
    global4 = select(select(global1[_wgslsmith_index_u32(4294967295u, 21u)], vec2<bool>(true, abs(u_input.c) > u_input.b), select(select(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.x, var_0.x), 21u)], !vec2<bool>(false, global3.a), !vec2<bool>(true, global3.a)), select(global1[_wgslsmith_index_u32(120257u, 21u)], vec2<bool>(true, true), select(global1[_wgslsmith_index_u32(var_3.d, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)], false)), vec2<bool>(false, select(var_3.a, var_3.a, global4.x)))), !(!vec2<bool>(false, global3.a)), vec2<bool>(-_wgslsmith_sub_i32(u_input.c, 2147483647i) > 0i, !(!global3.a)));
    global2 = array<vec3<bool>, 24>();
    let var_4 = Struct_1(!((38603u << (func_1(global4.x, var_3.a) % 32u)) < global3.d), vec4<f32>(-1536f, -721f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_2.x, global3.b.x)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global3.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(-336f, 443f, global3.c.x, -1061f) * global3.b))))), u_input.d.x, vec3<u32>(17968u, var_0.x, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<i32>(reverseBits(u_input.c), abs(-1i), _wgslsmith_div_i32(u_input.c, u_input.b)) << (u_input.d % vec3<u32>(32u))), global3.c);
}

