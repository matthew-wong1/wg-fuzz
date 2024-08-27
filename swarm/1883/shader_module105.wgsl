struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec4<bool>, 16>;

var<private> global2: i32 = i32(-2147483648);

var<private> global3: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(19471u, 0u), vec2<u32>(0u, 4815u), vec2<u32>(31246u, 63953u), vec2<u32>(14358u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(26553u, 30427u), vec2<u32>(9615u, 0u), vec2<u32>(1u, 16085u), vec2<u32>(48401u, 0u), vec2<u32>(10648u, 1u), vec2<u32>(0u, 1u), vec2<u32>(27268u, 54543u), vec2<u32>(1u, 1932u), vec2<u32>(58381u, 4294967295u), vec2<u32>(30209u, 1u), vec2<u32>(17443u, 1u), vec2<u32>(27224u, 4294967295u), vec2<u32>(71089u, 4294967295u), vec2<u32>(26668u, 0u), vec2<u32>(1791u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 79829u), vec2<u32>(50765u, 17025u), vec2<u32>(30857u, 1u), vec2<u32>(0u, 42846u), vec2<u32>(0u, 22202u), vec2<u32>(4294967295u, 1u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> i32 {
    return -1i;
}

fn func_1() -> bool {
    global1 = array<vec4<bool>, 16>();
    let var_0 = ~_wgslsmith_sub_vec4_i32(u_input.b ^ -(~vec4<i32>(-1i, u_input.b.x, u_input.c, global0.x)), _wgslsmith_clamp_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(21763i, u_input.b.x, global0.x, u_input.b.x), vec4<i32>(global0.x, -2147483647i, u_input.b.x, -2147483647i)), vec4<i32>(global0.x, global0.x, 46811i, global0.x), u_input.a >= 0u), ~vec4<i32>(-39431i, global0.x, 31393i, 0i), ~select(u_input.b, u_input.b, false)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-361f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1536f), _wgslsmith_f_op_f32(f32(-1f) * -812f))), (u_input.d != u_input.d) && false))) < _wgslsmith_f_op_f32(-1f);
    let var_2 = func_2();
    global3 = array<vec2<u32>, 27>();
    return var_1;
}

fn func_3(arg_0: Struct_4) -> u32 {
    var var_0 = !(!vec3<bool>(select(all(global1[_wgslsmith_index_u32(76302u, 16u)]), arg_0.b, true), true, any(!global1[_wgslsmith_index_u32(u_input.a, 16u)])));
    global2 = firstTrailingBit(-32678i | u_input.c);
    let var_1 = true;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, 748f)) - _wgslsmith_div_f32(-706f, 394f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-763f, -1133f))) - _wgslsmith_div_f32(-537f, 1124f)), arg_0.b, all(vec3<bool>(any(vec2<bool>(var_0.x, var_1)), ~u_input.e.x != 21036u, var_0.x)), vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, _wgslsmith_add_i32(u_input.c, -31930i), arg_0.a.x << (u_input.a % 32u), 1i), _wgslsmith_mult_u32(firstLeadingBit(~countOneBits(1u)), _wgslsmith_div_u32(reverseBits(~92530u), _wgslsmith_sub_u32(u_input.a, u_input.e.x) | (u_input.d & u_input.d))));
    let var_3 = Struct_2(Struct_1(-599f, u_input.e.x >= 0u, false, vec4<i32>(_wgslsmith_clamp_i32(0i, 1i, -2147483647i), var_2.d.x, _wgslsmith_mult_i32(34591i, var_2.d.x), u_input.c), ~u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, -268f, var_2.a, var_2.a))))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(select(-587f, var_2.a, true)), -285f, -373f, var_2.a)))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_2.a)))), _wgslsmith_f_op_f32(floor(-1155f)))), select(all(vec3<bool>(var_1, false, arg_0.b)), !(var_2.e == 26034u), arg_0.b), true, vec4<i32>(-u_input.b.x, global0.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(global0.x, u_input.c, -1i), abs(vec3<i32>(1i, global0.x, 0i))), _wgslsmith_mult_i32(var_2.d.x, 1i) << (var_2.e % 32u)), 1u));
    return _wgslsmith_mult_u32(~(~var_2.e), ~var_2.e);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32) -> bool {
    global1 = array<vec4<bool>, 16>();
    let var_0 = Struct_5(!arg_0.b.x);
    let var_1 = Struct_4(vec3<i32>(-arg_1.d.x, _wgslsmith_dot_vec2_i32(arg_1.d.xy & ~vec2<i32>(-1i, -3959i), arg_1.d.zw >> (u_input.e % vec2<u32>(32u))), ~(~abs(u_input.c))), u_input.d < 69001u);
    global3 = array<vec2<u32>, 27>();
    var var_2 = Struct_4(arg_1.d.yxx, arg_1.c);
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec2<bool>(true, func_1()));
    let var_1 = ~((firstTrailingBit(~u_input.b.zw) & _wgslsmith_clamp_vec2_i32(max(vec2<i32>(-12813i, global0.x), u_input.b.zw), vec2<i32>(2147483647i, u_input.c), vec2<i32>(global0.x, -13018i))) | reverseBits(u_input.b.yz));
    var_0 = all(vec4<bool>(true || ((22706i > global0.x) | false), false, false, true));
    var var_2 = false;
    let var_3 = !vec2<bool>(func_4(Struct_3(Struct_1(-613f, true, false, u_input.b, u_input.e.x), vec2<bool>(true, true), func_3(Struct_4(u_input.b.xzx, false)), Struct_2(Struct_1(-889f, true, false, vec4<i32>(-2147483647i, -1i, var_1.x, -36389i), 75510u), vec4<f32>(-1843f, 1952f, -1000f, -478f), Struct_1(161f, false, true, vec4<i32>(global0.x, global0.x, u_input.b.x, -1i), u_input.a))), Struct_1(_wgslsmith_f_op_f32(select(438f, 260f, false)), false, false, vec4<i32>(-1i, -2147483647i, var_1.x, var_1.x) >> (vec4<u32>(u_input.d, u_input.d, u_input.a, u_input.d) % vec4<u32>(32u)), ~75215u), u_input.a), select(false, !func_1(), false));
    let var_4 = _wgslsmith_div_vec3_u32(~(~(vec3<u32>(4294967295u, u_input.d, 0u) << (~vec3<u32>(1u, 32203u, 66838u) % vec3<u32>(32u)))), firstTrailingBit(vec3<u32>(reverseBits(func_3(Struct_4(vec3<i32>(6449i, u_input.c, var_1.x), var_3.x))), 0u, 1u)));
    let var_5 = _wgslsmith_f_op_f32(select(-1676f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1742f + _wgslsmith_f_op_f32(select(-588f, 228f, true)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-260f, -543f)) * _wgslsmith_f_op_f32(trunc(-327f)))))), ((32893i & u_input.c) >= ~var_1.x) & var_3.x));
    global2 = -global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(3769u, ~114976u, vec3<f32>(1227f, 1097f, 1034f));
}

