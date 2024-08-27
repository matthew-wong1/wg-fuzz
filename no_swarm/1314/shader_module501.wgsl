struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<u32>,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27>;

var<private> global1: Struct_1;

var<private> global2: bool = true;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec2<u32>) -> i32 {
    var var_0 = _wgslsmith_clamp_vec3_i32(select(_wgslsmith_sub_vec3_i32(vec3<i32>(7670i, u_input.c, u_input.c), min(vec3<i32>(u_input.c, -1i, u_input.c), vec3<i32>(u_input.c, u_input.c, -1i))) ^ ~abs(vec3<i32>(-59120i, 31954i, -8666i)), ~_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, u_input.c, u_input.c)), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.c, u_input.c), vec3<i32>(0i, 0i, 37536i))), !(!global0[_wgslsmith_index_u32(0u, 27u)] & true)), abs(_wgslsmith_add_vec3_i32(max(abs(vec3<i32>(-1i, 0i, u_input.c)), firstLeadingBit(vec3<i32>(u_input.c, 2147483647i, u_input.c))), vec3<i32>(_wgslsmith_mult_i32(15934i, u_input.c), -42346i, ~2147483647i))), vec3<i32>(_wgslsmith_add_i32(reverseBits(u_input.c), u_input.c ^ -1i) & min(u_input.c, -u_input.c), _wgslsmith_clamp_i32(u_input.c, abs(58744i), -u_input.c) ^ _wgslsmith_add_i32(2147483647i, abs(u_input.c)), u_input.c));
    var var_1 = global1.a.x;
    let var_2 = !any(select(select(!vec4<bool>(global0[_wgslsmith_index_u32(arg_0.c.x, 27u)], true, arg_1.b, false), vec4<bool>(global0[_wgslsmith_index_u32(19506u, 27u)], true, arg_0.b, arg_0.d.x), select(arg_0.d.x, false, false)), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 27u)], false, global1.b), !vec4<bool>(global1.d.x, arg_0.d.x, global1.d.x, global1.b), select(vec4<bool>(false, arg_0.b, arg_0.d.x, global1.d.x), vec4<bool>(false, arg_1.b, arg_1.b, false), vec4<bool>(global1.b, global0[_wgslsmith_index_u32(arg_3.x, 27u)], global0[_wgslsmith_index_u32(arg_3.x, 27u)], arg_0.d.x))), !vec4<bool>(true, arg_1.b, true, global0[_wgslsmith_index_u32(global1.a.x, 27u)])));
    var var_3 = vec4<bool>(true, !(!((false == arg_0.b) | true)), _wgslsmith_f_op_f32(exp2(arg_2)) > _wgslsmith_f_op_f32(1286f - _wgslsmith_f_op_f32(round(arg_0.e.x))), false);
    let var_4 = _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1214f), _wgslsmith_f_op_f32(-1f)))));
    return firstLeadingBit(~(-4431i));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -167f);
    let var_1 = arg_1.c.x;
    global1 = Struct_1(arg_1.a, !global0[_wgslsmith_index_u32(min(arg_2.a.x, (u_input.a ^ 4294967295u) | ~0u), 27u)], abs(firstLeadingBit(~firstLeadingBit(vec2<u32>(1u, arg_1.a.x)))), !select(arg_2.d, vec2<bool>(true, true), any(arg_2.d)), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.e.x, -1804f))), arg_2.e.x, !any(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 27u)], true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_3)), arg_3))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.e.x - arg_1.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_2.e.x, -318f)), _wgslsmith_f_op_f32(-global1.e.x))))));
    global0 = array<bool, 27>();
    var var_2 = arg_2;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_1.e)), vec4<f32>(-606f, arg_2.e.x, -213f, 1618f)) - vec4<f32>(_wgslsmith_f_op_f32(1000f + 560f), _wgslsmith_f_op_f32(f32(-1f) * -152f), _wgslsmith_f_op_f32(781f * -699f), _wgslsmith_f_op_f32(arg_3 - arg_1.e.x))))) + arg_1.e);
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec3<f32>, arg_3: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_div_i32(func_3(Struct_1(global1.a, false, vec2<u32>(0u, arg_0), vec2<bool>(false, false), global1.e), Struct_1(global1.a, true, u_input.d, global1.d, global1.e), _wgslsmith_f_op_f32(-arg_2.x), ~global1.c), arg_3.x), Struct_1(vec3<u32>(1u, 11597u, arg_0), true, ~vec2<u32>(u_input.e, 0u), select(select(global1.d, global1.d, global0[_wgslsmith_index_u32(64863u, 27u)]), vec2<bool>(false, true), select(vec2<bool>(true, true), global1.d, global1.d.x)), global1.e), Struct_1(vec3<u32>(arg_0 | global1.a.x, _wgslsmith_dot_vec3_u32(global1.a, global1.a), 17574u), global1.d.x, vec2<u32>(1u, 64480u), !(!vec2<bool>(global0[_wgslsmith_index_u32(11544u, 27u)], global1.b)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(global1.e)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-744f, arg_1, 330f, global1.e.x) + vec4<f32>(676f, arg_1, 1327f, -2807f)), !global0[_wgslsmith_index_u32(u_input.d.x, 27u)]))), _wgslsmith_f_op_f32(round(global1.e.x)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(arg_3.x, Struct_1(global1.a, false, vec2<u32>(4294967295u, 1u), vec2<bool>(global1.b, global1.d.x), vec4<f32>(282f, arg_2.x, -287f, arg_1)), Struct_1(global1.a, false, u_input.d, vec2<bool>(global1.b, global1.b), global1.e), 1399f)).x), global1.e.x, 455f), _wgslsmith_f_op_vec4_f32(select(global1.e, global1.e, vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1.a, vec3<u32>(arg_0, arg_0, 33900u)), 27u)], true, true, global0[_wgslsmith_index_u32(~u_input.a, 27u)]))))), select(select(vec4<bool>(select(true, true, global1.d.x), any(vec2<bool>(true, global0[_wgslsmith_index_u32(52671u, 27u)])), any(vec4<bool>(false, true, global0[_wgslsmith_index_u32(global1.c.x, 27u)], true)), global0[_wgslsmith_index_u32(~arg_0, 27u)]), select(vec4<bool>(global1.d.x, true, false, false), !vec4<bool>(true, global1.d.x, true, global1.d.x), true), global1.d.x), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 27u)], global1.d.x, false), select(!vec4<bool>(true, false, global1.d.x, global0[_wgslsmith_index_u32(u_input.d.x, 27u)]), select(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(12411u, 27u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 27u)], false, false, false), global1.b), false), true), select(select(true, !global0[_wgslsmith_index_u32(arg_0, 27u)], true && global0[_wgslsmith_index_u32(103516u, 27u)]), true, true))));
    global0 = array<bool, 27>();
    let var_1 = Struct_1(global1.a, true, u_input.d | _wgslsmith_mod_vec2_u32(~abs(vec2<u32>(4294967295u, arg_0)), max(vec2<u32>(arg_0, 0u), _wgslsmith_sub_vec2_u32(global1.c, vec2<u32>(u_input.e, global1.c.x)))), vec2<bool>(true, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(-var_0.x), -926f, _wgslsmith_f_op_vec4_f32(func_4(u_input.c, Struct_1(vec3<u32>(arg_0, arg_0, u_input.a), global0[_wgslsmith_index_u32(arg_0, 27u)], vec2<u32>(arg_0, arg_0), vec2<bool>(global1.d.x, false), global1.e), Struct_1(global1.a, false, vec2<u32>(arg_0, 12855u), global1.d, vec4<f32>(1431f, -358f, var_0.x, 1327f)), var_0.x)).x))));
    global2 = all(select(select(vec3<bool>(true, true, false), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 27u)], global0[_wgslsmith_index_u32(global1.c.x, 27u)], global1.b), !vec3<bool>(global1.b, true, global1.d.x)), vec3<bool>((arg_0 != 33618u) && any(vec2<bool>(global1.d.x, false)), all(vec4<bool>(global0[_wgslsmith_index_u32(54550u, 27u)], global0[_wgslsmith_index_u32(14176u, 27u)], false, global1.d.x)), true && (4294967295u >= arg_0)), !vec3<bool>(true, global1.e.x >= global1.e.x, global1.b)));
    let var_2 = Struct_1(global1.a, false, ~vec2<u32>(_wgslsmith_mod_u32(1u, ~global1.c.x), _wgslsmith_sub_u32(~781u, _wgslsmith_div_u32(arg_0, 4294967295u))), vec2<bool>(var_1.b, !all(vec2<bool>(false, var_1.b))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.e)), global1.e));
    return 0u;
}

fn func_1() -> u32 {
    var var_0 = Struct_1(vec3<u32>(1u, 15112u, ~36205u >> (u_input.d.x % 32u)) >> (reverseBits(_wgslsmith_clamp_vec3_u32(countOneBits(global1.a), _wgslsmith_mult_vec3_u32(global1.a, global1.a), min(global1.a, vec3<u32>(u_input.e, u_input.e, 15793u)))) % vec3<u32>(32u)), true, ~countOneBits(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, u_input.b, u_input.a), vec3<u32>(u_input.d.x, u_input.b, 4294967295u)), func_2(u_input.a, 192f, global1.e.xww, vec3<i32>(u_input.c, 26389i, u_input.c)))), vec2<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(global0[_wgslsmith_index_u32(13276u, 27u)], true, global0[_wgslsmith_index_u32(54510u, 27u)]), global1.b)), select(global0[_wgslsmith_index_u32(~u_input.d.x, 27u)], global1.d.x, true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.e + global1.e))), global1.e));
    global0 = array<bool, 27>();
    var_0 = Struct_1(~var_0.a, any(var_0.d), _wgslsmith_sub_vec2_u32(vec2<u32>(abs(~4294967295u), 0u), vec2<u32>(~var_0.a.x, global1.c.x)), vec2<bool>(any(select(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 27u)], false, global1.b, global0[_wgslsmith_index_u32(u_input.a, 27u)]), vec4<bool>(var_0.b, true, false, var_0.b), vec4<bool>(var_0.d.x, true, global1.b, global1.d.x)), !vec4<bool>(var_0.d.x, false, true, true), global0[_wgslsmith_index_u32(20759u, 27u)])), global1.d.x), var_0.e);
    var var_1 = -644f;
    let var_2 = Struct_1(max(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 5610u, var_0.c.x), var_0.a)), var_0.a) ^ vec3<u32>(firstLeadingBit(var_0.c.x) & (var_0.c.x << (var_0.a.x % 32u)), 60530u, 0u), false, var_0.c >> (min(~vec2<u32>(var_0.a.x, 29686u) << (var_0.c % vec2<u32>(32u)), firstLeadingBit(max(var_0.a.zz, var_0.c))) % vec2<u32>(32u)), select(vec2<bool>(false, true), select(var_0.d, !select(global1.d, global1.d, var_0.d), vec2<bool>(any(vec4<bool>(false, true, var_0.d.x, true)), var_0.c.x == 4294967295u)), !(!global1.d)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e.x - _wgslsmith_f_op_f32(-856f + -1126f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.e.x, var_0.e.x) - _wgslsmith_f_op_f32(floor(var_0.e.x))) - _wgslsmith_f_op_f32(f32(-1f) * -538f)), -804f, _wgslsmith_f_op_f32(trunc(global1.e.x))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 27>();
    global1 = Struct_1(global1.a, any(vec2<bool>(_wgslsmith_add_i32(u_input.c, -9316i) == -u_input.c, global1.b)), global1.a.yy, !vec2<bool>(!all(vec3<bool>(false, global1.b, false)), true && global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 42597u), 27u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e.x, _wgslsmith_f_op_f32(abs(1117f)), 1000f, 543f)));
    let var_0 = Struct_1(vec3<u32>(~(~_wgslsmith_dot_vec2_u32(global1.a.xy, global1.c)), ~(~max(67435u, global1.c.x)), ~select(abs(global1.c.x), func_1(), global1.b)), true, abs(u_input.d), vec2<bool>(global1.b, (global1.a.x >> (~0u % 32u)) == global1.c.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global1.e, _wgslsmith_f_op_vec4_f32(select(global1.e, vec4<f32>(global1.e.x, global1.e.x, 1163f, -1715f), false))) * vec4<f32>(_wgslsmith_f_op_f32(round(global1.e.x)), _wgslsmith_f_op_f32(round(-702f)), _wgslsmith_f_op_f32(max(global1.e.x, 772f)), _wgslsmith_f_op_f32(-global1.e.x))), vec4<f32>(_wgslsmith_f_op_f32(min(global1.e.x, -386f)), _wgslsmith_f_op_f32(floor(-1226f)), -497f, _wgslsmith_f_op_f32(select(-1322f, _wgslsmith_f_op_vec4_f32(func_4(u_input.c, Struct_1(global1.a, global0[_wgslsmith_index_u32(48763u, 27u)], global1.a.xz, global1.d, global1.e), Struct_1(vec3<u32>(global1.c.x, 1u, global1.c.x), global0[_wgslsmith_index_u32(85274u, 27u)], vec2<u32>(global1.c.x, global1.c.x), vec2<bool>(global1.b, true), vec4<f32>(-550f, 132f, 631f, 397f)), global1.e.x)).x, select(global1.b, global0[_wgslsmith_index_u32(u_input.a, 27u)], false))))));
    global1 = Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(56542u, 46710u, u_input.a)), ~global1.a, select(var_0.a, global1.a, vec3<bool>(global1.d.x, var_0.d.x, var_0.b))), var_0.a >> (vec3<u32>(global1.a.x, 1430u, u_input.a) % vec3<u32>(32u))) << (max(global1.a, global1.a) % vec3<u32>(32u)), !global1.b, vec2<u32>(65891u, _wgslsmith_clamp_u32(~firstTrailingBit(4294967295u), 0u, firstTrailingBit(35213u))), !select(select(global1.d, var_0.d, select(var_0.d, var_0.d, vec2<bool>(global1.d.x, true))), vec2<bool>(global1.d.x, true), true), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.e.x, 661f)) - 1f))), var_0.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(var_0.e.x - global1.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - _wgslsmith_f_op_f32(var_0.e.x * global1.e.x)) + -317f)));
    let var_1 = vec2<i32>(func_3(Struct_1(vec3<u32>(~u_input.a, 6962u, ~global1.c.x), true, _wgslsmith_mult_vec2_u32(u_input.d, ~global1.a.zz), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.e | 1u, 27u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_0.e, vec4<f32>(global1.e.x, var_0.e.x, -1182f, global1.e.x))) * var_0.e)), Struct_1(_wgslsmith_div_vec3_u32(min(var_0.a, vec3<u32>(u_input.a, u_input.b, 4294967295u)), vec3<u32>(global1.a.x, global1.a.x, var_0.a.x)), !(1i != u_input.c), firstTrailingBit(~vec2<u32>(1u, 19236u)), select(global1.d, select(global1.d, global1.d, var_0.d), var_0.d), var_0.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))) + 1000f), ~(~(vec2<u32>(global1.a.x, u_input.e) ^ global1.a.xz))), u_input.c);
    global0 = array<bool, 27>();
    var var_2 = _wgslsmith_f_op_f32(-1315f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1493f + _wgslsmith_f_op_f32(global1.e.x * global1.e.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_vec4_f32(func_4(u_input.c, var_0, Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.a.x, global1.c.x, 0u), ~global1.a), !(!global1.b), vec2<u32>(func_2(var_0.c.x, -628f, global1.e.yzw, vec3<i32>(-8408i, u_input.c, var_1.x)), ~u_input.a), !vec2<bool>(false, global1.d.x), var_0.e), -404f)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e.x - _wgslsmith_div_f32(1950f, _wgslsmith_f_op_f32(step(372f, -295f))))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.e.x, _wgslsmith_f_op_f32(select(-616f, _wgslsmith_f_op_f32(594f - -664f), true))))));
}

