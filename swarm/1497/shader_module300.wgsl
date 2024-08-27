struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27>;

var<private> global1: array<vec2<f32>, 30>;

var<private> global2: vec2<u32> = vec2<u32>(0u, 4294967295u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> vec2<bool> {
    global2 = max(abs(select(vec2<u32>(arg_2.b, 1u) << (vec2<u32>(4294967295u, 5558u) % vec2<u32>(32u)), ~vec2<u32>(91501u, arg_0), !vec2<bool>(global0[_wgslsmith_index_u32(53105u, 27u)], global0[_wgslsmith_index_u32(arg_0, 27u)]))) ^ vec2<u32>(firstLeadingBit(~9649u), 1u), _wgslsmith_div_vec2_u32(~(~vec2<u32>(arg_0, arg_0)), firstLeadingBit(~vec2<u32>(47630u, 49640u))) << (((reverseBits(vec2<u32>(global2.x, arg_0)) ^ ~vec2<u32>(12035u, 88486u)) << (_wgslsmith_div_vec2_u32(min(vec2<u32>(46025u, 78818u), vec2<u32>(global2.x, arg_0)), ~vec2<u32>(1u, arg_2.b)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(global2.x, 30u)], vec2<f32>(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(min(arg_2.a, arg_2.a))))))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-957f - 629f), _wgslsmith_f_op_f32(f32(-1f) * -901f)))) + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_mod_u32(0u, 1u));
    let var_2 = Struct_1(u_input.a.wwy, !select(select(!vec2<bool>(arg_1, global0[_wgslsmith_index_u32(var_1.b, 27u)]), !vec2<bool>(false, arg_1), global0[_wgslsmith_index_u32(~arg_2.b, 27u)]), vec2<bool>(true, true), true));
    global2 = abs(vec2<u32>(arg_2.b, 18997u));
    return vec2<bool>(false, true);
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = Struct_1(~select(u_input.a.wzy, u_input.a.zxx, true), !(!func_3(select(1u, global2.x, global0[_wgslsmith_index_u32(global2.x, 27u)]), global2.x != 4294967295u, Struct_2(875f, 4294967295u))));
    let var_1 = ~reverseBits(-u_input.a.x << (50879u % 32u));
    global0 = array<bool, 27>();
    let var_2 = !vec4<bool>(all(!(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(1u, 27u)]))), all(vec3<bool>(var_0.b.x & var_0.b.x, false, all(var_0.b))), false, true);
    let var_3 = abs(firstTrailingBit(_wgslsmith_dot_vec2_i32(var_0.a.xy, -(u_input.a.xw | var_0.a.yz))));
    return ~(-(~abs(var_1))) | -2147483647i;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = Struct_1(abs(max(abs(vec3<i32>(arg_1.x, var_0.a.x, 1i)) << ((vec3<u32>(global2.x, global2.x, 4294967295u) << (vec3<u32>(global2.x, 13704u, global2.x) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(arg_1.x << (22784u % 32u), -arg_2.x, min(u_input.a.x, 1i)))), vec2<bool>(all(!select(vec4<bool>(var_0.b.x, true, false, var_0.b.x), vec4<bool>(var_0.b.x, arg_0.b.x, true, var_0.b.x), vec4<bool>(true, arg_0.b.x, true, false))), false));
    global0 = array<bool, 27>();
    var_0 = Struct_1(var_0.a, vec2<bool>(true, global0[_wgslsmith_index_u32(global2.x, 27u)]));
    global2 = vec2<u32>(_wgslsmith_sub_u32(31133u, firstLeadingBit(global2.x) >> (global2.x % 32u)), global2.x);
    return Struct_1(select(select(~(~vec3<i32>(arg_2.x, 1i, var_0.a.x)), arg_0.a, vec3<bool>(func_3(1u, false, Struct_2(-862f, 0u)).x, true, false)), -(select(vec3<i32>(2147483647i, arg_0.a.x, -2147483647i), u_input.a.wzy, true) | (vec3<i32>(-5292i, var_1.a.x, -26314i) & var_0.a)), global0[_wgslsmith_index_u32(18913u >> (~(~0u) % 32u), 27u)]), var_0.b);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    global0 = array<bool, 27>();
    var var_0 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_1.b << (select(arg_0.b, 88830u, global0[_wgslsmith_index_u32(arg_1.b, 27u)]) % 32u), 0u), vec2<u32>(_wgslsmith_sub_u32(~11131u, ~arg_0.b), arg_0.b) | ~(~(vec2<u32>(arg_0.b, arg_1.b) & vec2<u32>(arg_1.b, arg_1.b))), ~(~vec2<u32>(arg_0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, 25105u, global2.x), vec3<u32>(15880u, arg_0.b, global2.x)))));
    return func_4(Struct_1(vec3<i32>(-u_input.a.x, -2147483647i, _wgslsmith_add_i32(min(u_input.a.x, u_input.a.x), u_input.a.x | u_input.a.x)), select(vec2<bool>(global0[_wgslsmith_index_u32(min(1u, 0u), 27u)], true), vec2<bool>(global0[_wgslsmith_index_u32(~1u, 27u)], false), vec2<bool>(global0[_wgslsmith_index_u32(arg_0.b, 27u)], all(vec2<bool>(global0[_wgslsmith_index_u32(12873u, 27u)], false))))), vec2<i32>(abs(~firstLeadingBit(u_input.a.x)), _wgslsmith_mod_i32(-29554i, -2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(abs(u_input.a.x), abs(min(2147483647i, u_input.a.x)), select(_wgslsmith_div_i32(u_input.a.x, -76229i), _wgslsmith_div_i32(u_input.a.x, u_input.a.x), true), func_2(arg_1.a)), u_input.a));
}

fn func_5(arg_0: Struct_1) -> vec2<u32> {
    return vec2<u32>(~_wgslsmith_mult_u32(0u, 1u), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~select(func_5(func_1(Struct_2(145f, global2.x), Struct_2(-258f, 4294967295u))) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(global2.x, 16057u), min(vec2<u32>(9597u, 4294967295u), vec2<u32>(1u, global2.x))) % vec2<u32>(32u)), ~_wgslsmith_mod_vec2_u32(func_5(Struct_1(vec3<i32>(-24721i, u_input.a.x, u_input.a.x), vec2<bool>(global0[_wgslsmith_index_u32(41261u, 27u)], global0[_wgslsmith_index_u32(19930u, 27u)]))), vec2<u32>(global2.x, global2.x)), vec2<bool>(_wgslsmith_mult_i32(u_input.a.x, 1i) > ~u_input.a.x, !(global0[_wgslsmith_index_u32(1u, 27u)] & global0[_wgslsmith_index_u32(1869u, 27u)])));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(656f, 403f, -116f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1558f, 324f, 856f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1233f, -355f, 531f))))), vec3<bool>(false, all(vec2<bool>(global0[_wgslsmith_index_u32(global2.x, 27u)], global0[_wgslsmith_index_u32(global2.x, 27u)])), _wgslsmith_f_op_f32(step(2687f, 697f)) < _wgslsmith_f_op_f32(min(2242f, -282f))))));
    let var_1 = _wgslsmith_add_i32(u_input.a.x, _wgslsmith_sub_i32(firstLeadingBit(i32(-1i) * -u_input.a.x), -u_input.a.x));
    var var_2 = Struct_1(~(~abs(u_input.a.wzy)), vec2<bool>(!(false && global0[_wgslsmith_index_u32(0u, 27u)]) | true, 1000f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    var var_3 = !all(select(var_2.b, func_3(~0u, global0[_wgslsmith_index_u32(firstLeadingBit(1u), 27u)], Struct_2(-1000f, global2.x)), var_2.b));
    let var_4 = Struct_2(var_0.x, 0u);
    var var_5 = -(i32(-1i) * -(~(i32(-1i) * -2147483647i)));
    var_2 = func_1(Struct_2(-1422f, ~4294967295u), Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_4.a))), -1155f)), ~max(~var_4.b, ~global2.x)));
    var var_6 = func_4(Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, abs(-13569i)), func_4(Struct_1(-vec3<i32>(1i, u_input.a.x, 2147483647i), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(var_4.b, 27u)])), vec2<i32>(-1i) * -vec2<i32>(var_2.a.x, 1i), u_input.a).b), ~var_2.a.yy, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(select(vec3<u32>(_wgslsmith_sub_u32(global2.x, var_4.b), var_4.b, ~63006u), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u) >> (vec3<u32>(69158u, var_4.b, 0u) % vec3<u32>(32u)), abs(vec3<u32>(0u, var_4.b, global2.x))), global0[_wgslsmith_index_u32(~var_4.b, 27u)] || any(var_2.b)), ~max(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_4.b, 1u, 69071u), vec3<u32>(1u, global2.x, global2.x), vec3<u32>(14552u, global2.x, 35679u)), reverseBits(vec3<u32>(24281u, 0u, global2.x)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(-2017f, var_0.x), var_4.a))), vec2<f32>(var_4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_vec2_f32(select(global1[_wgslsmith_index_u32(var_4.b, 30u)], vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-654f, var_0.x))), 1f), all(vec2<bool>(true, !var_6.b.x)))));
}

