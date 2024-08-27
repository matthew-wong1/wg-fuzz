struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: bool,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: vec3<bool>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
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

var<private> global0: array<bool, 10>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(121f, -971f, 1552f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1017f, 1029f))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(495f, -257f, -1494f))))), 61752i, !select(!(!vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 10u)], false, global0[_wgslsmith_index_u32(1u, 10u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], false, global0[_wgslsmith_index_u32(16205u, 10u)]), !vec3<bool>(global0[_wgslsmith_index_u32(50166u, 10u)], false, false), !global0[_wgslsmith_index_u32(arg_0.x, 10u)]), !(!global0[_wgslsmith_index_u32(arg_0.x, 10u)])), Struct_1(69669u, !vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 10u)] && true, true), all(select(select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], false), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(40190u, 10u)])), select(vec2<bool>(global0[_wgslsmith_index_u32(39861u, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 10u)], false), vec2<bool>(true, false)), vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 10u)]))), ~reverseBits(1u), _wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a.x, 24755u, u_input.a.x)), abs(u_input.a), vec3<u32>(countOneBits(16962u), ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 4294967295u), vec3<u32>(arg_0.x, u_input.a.x, u_input.a.x))))), any(vec2<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a.x, 76647u), 10u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.x, 2495u), 10u)])));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x))) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -342f), -1000f))), select(vec2<bool>(global0[_wgslsmith_index_u32(~arg_0.x << (_wgslsmith_add_u32(var_0.d.a, 37766u) % 32u), 10u)], true), select(vec2<bool>(true, any(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], false))), vec2<bool>(true, var_0.c.x), true), var_0.c.zz), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(627f)) + -565f), var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1197f + var_0.a.x), _wgslsmith_f_op_f32(abs(-448f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -242f), _wgslsmith_f_op_f32(f32(-1f) * -319f))))), Struct_1(var_0.d.d, !vec3<bool>(u_input.b > var_0.b, true, global0[_wgslsmith_index_u32(4294967295u, 10u)] == false), global0[_wgslsmith_index_u32(arg_0.x, 10u)], 13193u, vec3<u32>(62343u, abs(1u) << (_wgslsmith_clamp_u32(var_0.d.a, u_input.a.x, 1u) % 32u), 0u)), Struct_1(abs(max(var_0.d.e.x, _wgslsmith_dot_vec2_u32(u_input.a.zy, arg_0))), var_0.d.b, true, ~29833u, vec3<u32>(reverseBits(~var_0.d.d), ~_wgslsmith_mult_u32(var_0.d.d, arg_0.x), ~var_0.d.d)));
    var var_2 = all(vec4<bool>(true, !(u_input.a.x > 0u) && true, var_0.c.x, true));
    var_2 = var_1.d.b.x;
    let var_3 = var_0.d;
    return 17847u;
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(1u, _wgslsmith_add_u32(~4294967295u, 7883u), arg_0.d, _wgslsmith_add_u32(3919u, u_input.a.x) & (32043u ^ arg_0.a)) | vec4<u32>(reverseBits(func_3(arg_0.e.xz)), u_input.a.x, 83228u, 1u), ~(~vec4<u32>(8871u, u_input.a.x, arg_0.e.x, 45631u)) | countOneBits(vec4<u32>(57257u, _wgslsmith_mult_u32(u_input.a.x, 50907u), arg_0.e.x, arg_0.a)));
    var var_1 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-430f, 192f, -124f), vec3<f32>(-1154f, -1047f, 132f), false))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-487f, 766f, -338f)))), vec3<f32>(1f, 1f, 1f)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(abs(u_input.b), 0i), ~(vec2<i32>(2147483647i, u_input.b) >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)))), arg_0.b, Struct_1(arg_0.d, !arg_0.b, true | select(true, all(vec4<bool>(arg_0.c, true, true, false)), false), arg_0.e.x, ~abs(u_input.a)), global0[_wgslsmith_index_u32(40996u, 10u)]);
    global0 = array<bool, 10>();
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a) + var_1.a))), !vec2<bool>(global0[_wgslsmith_index_u32(var_1.d.d | arg_0.e.x, 10u)] & arg_0.b.x, select(any(arg_0.b), false, arg_0.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.a.x)), _wgslsmith_f_op_f32(ceil(988f)), _wgslsmith_div_f32(2659f, 2430f), var_1.a.x) + _wgslsmith_div_vec4_f32(vec4<f32>(-124f, 522f, var_1.a.x, var_1.a.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a.x, 1000f, var_1.a.x, -1000f))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -956f), -1080f, _wgslsmith_f_op_f32(var_1.a.x + 659f), _wgslsmith_f_op_f32(var_1.a.x + var_1.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-866f, -547f, 1697f, -1505f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-117f, 362f, -1135f, 1000f))), select(!vec4<bool>(var_1.d.b.x, var_1.d.b.x, arg_0.c, true), !vec4<bool>(arg_0.b.x, false, arg_0.b.x, true), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_0.x, 10u)], global0[_wgslsmith_index_u32(43929u, 10u)]), vec4<bool>(arg_0.c, true, true, true), true))))), Struct_1(0u, var_1.c, global0[_wgslsmith_index_u32(firstLeadingBit(abs(~arg_0.e.x)), 10u)], arg_0.a, vec3<u32>(min(firstTrailingBit(8219u), ~38784u), arg_0.a, func_3(vec2<u32>(0u, u_input.a.x)))), Struct_1(_wgslsmith_div_u32(1u, 4294967295u) >> (var_1.d.a % 32u), vec3<bool>(true, var_1.d.b.x, any(select(vec3<bool>(true, arg_0.c, arg_0.c), vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.e.x, 10u)], false), vec3<bool>(var_1.c.x, false, false)))), any(vec4<bool>(false, true, true, true)), arg_0.d, ~select(var_0.yzx, ~vec3<u32>(var_0.x, 0u, var_0.x), true)));
    let var_3 = Struct_1(min(arg_0.e.x, _wgslsmith_sub_u32(var_1.d.d, abs(~45716u))), arg_0.b, true | (global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2.d.d, 26566u) >> (~4294967295u % 32u), 10u)] != (~61979u == (18382u | arg_0.d))), 0u, var_1.d.e);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.c.x))) - var_2.a.x))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1745f + 1104f), 180f, _wgslsmith_f_op_f32(round(506f)))) + vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(65597u, vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(u_input.a.x, 10u)], 1u, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -316f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1131f + 1010f) - -135f))), !(!select(!arg_0, !arg_0, true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1652f, -536f)))), -1132f, -1110f, _wgslsmith_f_op_f32(f32(-1f) * -1647f)), Struct_1(1u << ((u_input.a.x >> (1u % 32u)) % 32u), select(!vec3<bool>(false, global0[_wgslsmith_index_u32(16887u, 10u)], arg_0.x), vec3<bool>(true, true, true), !vec3<bool>(global0[_wgslsmith_index_u32(33657u, 10u)], arg_0.x, true)), !global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x ^ u_input.a.x, abs(u_input.a.x)), 10u)], 0u, u_input.a), Struct_1(_wgslsmith_add_u32(_wgslsmith_div_u32(56028u, func_3(u_input.a.zx)), 35050u), vec3<bool>(true, true, all(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 10u)])) || (true & global0[_wgslsmith_index_u32(17637u, 10u)])), arg_0.x, ~u_input.a.x, _wgslsmith_sub_vec3_u32(firstTrailingBit(~vec3<u32>(u_input.a.x, 4294967295u, 104972u)), _wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<bool>(-u_input.b != -1i, !(true != any(vec2<bool>(true, false)))));
    var var_1 = Struct_3(var_0.a, 7915i, var_0.d.b, func_1(var_0.e.b.yz).d, !any(var_0.d.b));
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(max(1209f, _wgslsmith_f_op_f32(var_0.c.x * var_1.a.x))), _wgslsmith_f_op_f32(func_2(var_1.d)), _wgslsmith_f_op_f32(155f * -1338f)), _wgslsmith_div_vec3_f32(var_1.a, _wgslsmith_f_op_vec3_f32(-var_0.c.xzw)))), _wgslsmith_sub_i32(~countOneBits(firstTrailingBit(var_1.b)), var_1.b), vec3<bool>(global0[_wgslsmith_index_u32(var_0.d.d, 10u)], true, false), var_1.d, true);
    var_0 = func_1(var_1.c.zy);
    var var_2 = !var_0.d.c;
    var var_3 = ~_wgslsmith_div_i32(_wgslsmith_mult_i32(-2147483647i, -_wgslsmith_clamp_i32(-14613i, u_input.b, 1i)), _wgslsmith_mod_i32(min(u_input.b, u_input.b), countOneBits(u_input.b)) << (500u % 32u));
    let var_4 = _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_add_i32(countOneBits(-7003i), var_1.b)), -vec2<i32>(-2147483647i, ~countOneBits(var_1.b)));
    var var_5 = vec3<i32>(_wgslsmith_add_i32(var_1.b, var_4.x), firstTrailingBit(44652i | (var_1.b >> (0u % 32u))), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - -602f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(719f, _wgslsmith_f_op_f32(f32(-1f) * -1068f)) + var_1.a.x)), var_1.a.x);
}

