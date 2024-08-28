struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, -19945i, -3720i, -31913i);

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: array<vec2<i32>, 12>;

var<private> global3: vec4<bool>;

var<private> global4: f32 = -2455f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: bool, arg_1: i32) -> i32 {
    var var_0 = global3.xx;
    global1 = !(!(!global3.xxw));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-454f, 2589f))));
    let var_2 = firstLeadingBit(vec3<u32>(~(~35104u), 76408u, ~0u) ^ select(u_input.d.zxx, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.c.x, 24282u, 35498u), u_input.c), u_input.d.x, abs(u_input.d.x)), vec3<bool>(global1.x, true, any(vec4<bool>(var_0.x, false, true, global1.x)))));
    var var_3 = -vec4<i32>(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, firstTrailingBit(_wgslsmith_add_i32(global0.x, u_input.a))), i32(-1i) * -1i, firstLeadingBit(global0.x ^ -2147483647i), 1i);
    return 1i;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    let var_0 = ~global0.x;
    var var_1 = vec4<i32>(i32(-1i) * -(~(~var_0)), ~(-1i), ~abs(~(u_input.a << (u_input.d.x % 32u))), -1i);
    var var_2 = global3.x;
    global0 = select(countOneBits(vec4<i32>(-var_1.x, ~var_0, 1i, -44237i)) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, arg_0), vec3<u32>(arg_1.c, 58626u, u_input.c.x)), abs(vec3<u32>(arg_0, u_input.d.x, arg_1.c))), ~0u, arg_1.c, max(u_input.c.x, arg_1.c)) % vec4<u32>(32u)), select(vec4<i32>(~firstLeadingBit(-1i), select(_wgslsmith_sub_i32(var_1.x, var_0), var_0, all(global1.yy)), ~global0.x, -305i), ~max(firstLeadingBit(vec4<i32>(var_1.x, 76925i, -5301i, -2147483647i)), vec4<i32>(-2147483647i, var_1.x, 4750i, -2147483647i)), true), global1.x);
    let var_3 = u_input.c;
    return Struct_2(!global1.x);
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec2<u32>) -> bool {
    var var_0 = _wgslsmith_clamp_vec3_u32(~select(vec3<u32>(1u, 0u, arg_3.x), u_input.d.www, !vec3<bool>(global3.x, global3.x, false)) >> (_wgslsmith_mult_vec3_u32(min(u_input.c.zzy, vec3<u32>(arg_3.x, 10045u, arg_3.x) >> (u_input.d.wyz % vec3<u32>(32u))), vec3<u32>(u_input.c.x, 0u, 1u) | ~u_input.d.yxw) % vec3<u32>(32u)), select(vec3<u32>(25581u, max(arg_3.x ^ 4294967295u, u_input.c.x), arg_3.x), abs(u_input.c.xxw) >> (~(~vec3<u32>(arg_3.x, 6511u, u_input.c.x)) % vec3<u32>(32u)), arg_0 < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), vec3<u32>(~13770u, ~arg_3.x, countOneBits(reverseBits(~0u))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -202f)), arg_0), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1589f)), _wgslsmith_f_op_f32(exp2(arg_1.x))))))), -250f);
    var var_2 = func_3(~max(~_wgslsmith_mod_u32(115333u, u_input.d.x), firstTrailingBit(arg_3.x) << (~arg_3.x % 32u)), Struct_1(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, _wgslsmith_div_i32(2147483647i, _wgslsmith_mod_i32(global0.x, global0.x))), -1923f, 70905u ^ var_0.x, _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(arg_0, arg_0)), global0.x), -13339i);
    var_2 = Struct_2(!var_2.a);
    let var_3 = global3.ywy;
    return var_3.x;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = vec2<bool>(global1.x, global1.x);
    global2 = array<vec2<i32>, 12>();
    global2 = array<vec2<i32>, 12>();
    var var_1 = 1i;
    global0 = arg_0;
    return vec4<bool>(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1102f) + _wgslsmith_f_op_f32(f32(-1f) * -918f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, arg_1.c, arg_1.a.d, 1107f) * vec4<f32>(arg_1.a.b, arg_1.b, arg_1.c, arg_1.b)))), func_3(arg_1.a.c, arg_1.a, _wgslsmith_div_i32(func_2(true, arg_1.a.e), global0.x)), select(~(~vec2<u32>(u_input.d.x, 0u)), vec2<u32>(40056u, 54488u) << (firstTrailingBit(vec2<u32>(40591u, arg_1.d)) % vec2<u32>(32u)), global1.yy)), false, arg_1.e, true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<bool>(global3.x & global1.x, all(!func_1(vec4<i32>(u_input.b, u_input.a, u_input.a, -17571i), Struct_3(Struct_1(1i, -787f, 0u, 677f, global0.x), -1345f, 1000f, u_input.d.x, false))) || !(global1.x & global1.x), global1.x, any(func_1(vec4<i32>(-28679i, u_input.a, u_input.b, u_input.a) >> (vec4<u32>(u_input.c.x, 47466u, u_input.d.x, 4294967295u) % vec4<u32>(32u)), Struct_3(Struct_1(-55164i, -441f, 1u, 967f, global0.x), -700f, 1224f, 0u, global1.x)).wxz));
    global2 = array<vec2<i32>, 12>();
    global1 = global3.wyx;
    var var_0 = _wgslsmith_div_f32(1005f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1094f, 383f)))));
    let var_1 = -1000f;
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1))))), -157f)));
    var var_2 = Struct_1(2147483647i << (u_input.c.x % 32u), var_1, 5218u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~1u, 14974u, ~max(1u, 1u), ~0u), 9645u, u_input.a, vec4<i32>(-17749i, min(_wgslsmith_add_i32(global0.x ^ -1i, var_2.e), 26822i), func_2(true, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, 1i, u_input.a), global0.wyz) & (i32(-1i) * -16268i)), var_2.e), -global0.x);
}

