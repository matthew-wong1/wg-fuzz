struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: Struct_3,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 3>;

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(643f, 0u, vec4<f32>(-997f, 350f, -572f, -114f), 474f);

var<private> global3: bool = true;

var<private> global4: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(vec2<u32>(8439u, 68813u), 2147483647i, Struct_3(vec4<f32>(114f, -1329f, 881f, 446f)), vec2<i32>(28345i, 5979i), vec2<u32>(0u, 0u)), Struct_4(vec2<u32>(4294967295u, 1u), -48735i, Struct_3(vec4<f32>(-315f, -2338f, -406f, -210f)), vec2<i32>(i32(-2147483648), 1i), vec2<u32>(21283u, 4294967295u)), Struct_4(vec2<u32>(0u, 38128u), 31049i, Struct_3(vec4<f32>(536f, 1922f, 413f, 1000f)), vec2<i32>(1i, 2147483647i), vec2<u32>(1u, 49891u)), Struct_4(vec2<u32>(1u, 1u), 0i, Struct_3(vec4<f32>(300f, -330f, 428f, -1686f)), vec2<i32>(i32(-2147483648), 1i), vec2<u32>(0u, 0u)), Struct_4(vec2<u32>(1u, 20821u), i32(-2147483648), Struct_3(vec4<f32>(176f, -273f, -611f, 219f)), vec2<i32>(1i, 2147483647i), vec2<u32>(4294967295u, 91937u)), Struct_4(vec2<u32>(1u, 1u), -30195i, Struct_3(vec4<f32>(-553f, 1630f, 1333f, 499f)), vec2<i32>(-1i, -21711i), vec2<u32>(2421u, 3817u)), Struct_4(vec2<u32>(4294967295u, 0u), 10636i, Struct_3(vec4<f32>(1807f, 998f, 145f, 162f)), vec2<i32>(3013i, i32(-2147483648)), vec2<u32>(1u, 32514u)), Struct_4(vec2<u32>(4294967295u, 20500u), i32(-2147483648), Struct_3(vec4<f32>(189f, 517f, 1250f, 1002f)), vec2<i32>(-8843i, -2193i), vec2<u32>(30044u, 3949u)), Struct_4(vec2<u32>(4294967295u, 14946u), -8814i, Struct_3(vec4<f32>(-776f, -325f, -166f, 269f)), vec2<i32>(i32(-2147483648), 2147483647i), vec2<u32>(0u, 4294967295u)), Struct_4(vec2<u32>(11783u, 25652u), 2147483647i, Struct_3(vec4<f32>(-2092f, 692f, -369f, -782f)), vec2<i32>(i32(-2147483648), 0i), vec2<u32>(1u, 20374u)), Struct_4(vec2<u32>(44238u, 38984u), -2354i, Struct_3(vec4<f32>(-2009f, 996f, 1300f, 249f)), vec2<i32>(17951i, -17200i), vec2<u32>(1u, 2052u)), Struct_4(vec2<u32>(4294967295u, 4294967295u), 1i, Struct_3(vec4<f32>(701f, 239f, -622f, 304f)), vec2<i32>(1i, 0i), vec2<u32>(39568u, 56317u)), Struct_4(vec2<u32>(4294967295u, 4294967295u), 2812i, Struct_3(vec4<f32>(1554f, 1565f, -830f, -1000f)), vec2<i32>(i32(-2147483648), -1i), vec2<u32>(0u, 741u)), Struct_4(vec2<u32>(0u, 1u), i32(-2147483648), Struct_3(vec4<f32>(711f, -201f, -2822f, 322f)), vec2<i32>(-13476i, i32(-2147483648)), vec2<u32>(8598u, 92907u)), Struct_4(vec2<u32>(52734u, 85618u), 8220i, Struct_3(vec4<f32>(1139f, 1315f, 517f, -363f)), vec2<i32>(i32(-2147483648), 2147483647i), vec2<u32>(45697u, 0u)), Struct_4(vec2<u32>(0u, 26036u), 54115i, Struct_3(vec4<f32>(603f, -268f, 268f, -2234f)), vec2<i32>(37334i, -3333i), vec2<u32>(44968u, 4294967295u)), Struct_4(vec2<u32>(856u, 83719u), 28608i, Struct_3(vec4<f32>(726f, -717f, -358f, 175f)), vec2<i32>(78335i, 5845i), vec2<u32>(0u, 2511u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: vec4<bool>) -> bool {
    var var_0 = abs(firstTrailingBit(~vec3<i32>(1i, 2147483647i, -1i)) & ~abs(vec3<i32>(-1i, 2147483647i, -2147483647i)));
    var var_1 = Struct_2(Struct_1(806f, abs(55066u), global1.c, 1447f));
    let var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32(~(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, u_input.a.x, 0u, u_input.a.x), vec4<u32>(global1.b, 36346u, global2.b, 5178u)) << (vec4<u32>(64927u, global1.b, arg_0.x, var_1.a.b) % vec4<u32>(32u))), ~vec4<u32>(483u, ~0u, 1u, countOneBits(var_1.a.b))), 0u, ~global1.b);
    var var_3 = _wgslsmith_add_u32(~1u, abs(arg_1.c.a.b));
    global3 = arg_1.a.x;
    return 1u == arg_0.x;
}

fn func_2(arg_0: vec4<u32>) -> vec3<bool> {
    var var_0 = any(vec4<bool>(true, true | (true || func_3(arg_0.yzy, Struct_5(vec3<bool>(true, false, true), global1.c.xw, Struct_2(Struct_1(436f, 68498u, global2.c, 642f)), global2.a), vec4<bool>(false, true, true, true))), true, false));
    return !(!vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), -1041f < global2.c.x, false));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> vec2<i32> {
    global3 = all(!select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), func_2(vec4<u32>(46785u, 4294967295u, 89370u, 1u)), true)));
    global1 = Struct_1(520f, arg_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_0.c, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -268f), _wgslsmith_f_op_f32(-global1.d), 649f, _wgslsmith_f_op_f32(min(global1.a, global1.d)))))), _wgslsmith_f_op_f32(-442f + -1688f));
    global4 = array<Struct_4, 17>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-751f, global2.a, arg_0.d, 269f) * global1.c) + _wgslsmith_f_op_vec4_f32(-global2.c)), vec4<f32>(-930f, _wgslsmith_f_op_f32(step(global1.c.x, arg_0.c.x)), 1f, 620f)))));
    let var_1 = 143f;
    return min(vec2<i32>(_wgslsmith_mod_i32(abs(1i), firstLeadingBit(max(2147483647i, -6409i))), _wgslsmith_sub_i32(~(~(-6572i)), 33226i)), abs(vec2<i32>(1i, ~(~0i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(global1.b, global1.b, global2.b ^ _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, global1.b), 0u & global1.b));
    let var_1 = _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-8372i, 58943i), 0i), ~(-1i), _wgslsmith_clamp_i32(i32(-1i) * -1i, 2147483647i, firstTrailingBit(45306i))), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i))), vec3<i32>(1i, 1i, 1i) & vec3<i32>(min(1i, abs(2147483647i)), firstTrailingBit(1i), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-36440i, -1i), vec2<i32>(20729i, -64585i)), func_1(Struct_1(-573f, 1030u, vec4<f32>(675f, global2.c.x, global2.d, 204f), -1000f), var_0.x))));
    var var_2 = var_1.x;
    var var_3 = var_1.yz;
    let x = u_input.a;
    s_output = StorageBuffer(10009i);
}

