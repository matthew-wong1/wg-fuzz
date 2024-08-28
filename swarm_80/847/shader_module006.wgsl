struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(4294967295u, 15404u), vec2<u32>(4294967295u, 1u), vec2<u32>(30978u, 33952u), vec2<u32>(65460u, 4294967295u), vec2<u32>(24709u, 1u), vec2<u32>(27279u, 24980u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(74226u, 1u), vec2<u32>(22678u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(2629u, 5124u), vec2<u32>(1u, 4716u), vec2<u32>(1u, 0u), vec2<u32>(13114u, 11291u));

var<private> global1: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(vec3<f32>(-1123f, -668f, -223f), -79357i, 59525i));

var<private> global2: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(0u, 0u), vec2<u32>(0u, 17338u), vec2<u32>(22295u, 4294967295u), vec2<u32>(4294967295u, 59161u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 44634u), vec2<u32>(34221u, 5637u), vec2<u32>(29311u, 1u), vec2<u32>(4294967295u, 62755u), vec2<u32>(17949u, 1u), vec2<u32>(28585u, 4294967295u), vec2<u32>(0u, 18448u), vec2<u32>(6483u, 26784u), vec2<u32>(4294967295u, 100226u), vec2<u32>(1u, 97971u), vec2<u32>(6045u, 18751u), vec2<u32>(1u, 0u), vec2<u32>(62288u, 0u), vec2<u32>(43518u, 50692u), vec2<u32>(0u, 13743u), vec2<u32>(3901u, 1u), vec2<u32>(3756u, 82232u), vec2<u32>(30517u, 4294967295u), vec2<u32>(61833u, 77220u), vec2<u32>(1u, 13798u), vec2<u32>(21999u, 4294967295u), vec2<u32>(4294967295u, 40712u), vec2<u32>(1u, 36756u), vec2<u32>(4294967295u, 3402u), vec2<u32>(0u, 1u));

var<private> global3: Struct_2 = Struct_2(-935f, -1i, 1u, Struct_1(vec3<f32>(-394f, 185f, 345f), -1260f, vec4<i32>(66952i, 29425i, 0i, 0i), 309f, vec4<bool>(true, false, true, true)));

var<private> global4: vec4<bool> = vec4<bool>(false, false, false, false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    return global3.c;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(select(_wgslsmith_mult_u32(global3.c, global3.c), 113774u, u_input.b > 12226i), select(1u, global3.c, global3.d.e.x), 6853u, ~(~global3.c)), vec4<u32>(abs(global3.c), func_3(), _wgslsmith_dot_vec3_u32(min(vec3<u32>(global3.c, global3.c, 23344u), vec3<u32>(0u, 54902u, 1381u)), vec3<u32>(903u, global3.c, global3.c) >> (vec3<u32>(global3.c, global3.c, global3.c) % vec3<u32>(32u))), global3.c)), func_3()), 15u)];
    let var_1 = Struct_2(-2837f, max(global3.b, global3.d.c.x), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(func_3(), firstLeadingBit(var_0.x), _wgslsmith_mod_u32(1u, 207u), 1392u)), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(global3.c, 7111u, var_0.x, 1u)), firstLeadingBit(~vec4<u32>(global3.c, var_0.x, var_0.x, 3122u)))), global3.d);
    var_0 = vec2<u32>(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(var_0.x, _wgslsmith_mult_u32(var_0.x, 4294967295u)), func_3()), _wgslsmith_mod_u32(2406u, ~(~var_1.c ^ firstTrailingBit(var_0.x))));
    var_0 = vec2<u32>(var_0.x, _wgslsmith_add_u32(var_1.c, var_1.c));
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-372f, _wgslsmith_f_op_f32(exp2(var_1.d.b)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.d) - _wgslsmith_f_op_f32(select(var_1.a, -636f, true)))))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(trunc(arg_1.zww)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1075f, var_1.d.a.x)), arg_1.x) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_1.x)), global3.d.a.x))))), vec4<i32>(-1i, global3.d.c.x, reverseBits(-2147483647i), 2147483647i & (u_input.b ^ reverseBits(arg_0.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-770f)))))), select(vec4<bool>(false, ~var_1.c != var_1.c, any(vec4<bool>(true, var_1.d.e.x, global4.x, false)), global4.x), !(!vec4<bool>(false, true, var_1.d.e.x, global4.x)), vec4<bool>(global4.x, false, !(!global3.d.e.x), true)));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    var var_0 = func_2(global3.d.c & (-global3.d.c | vec4<i32>(~2147483647i, global3.d.c.x, -1i & global3.d.c.x, _wgslsmith_dot_vec2_i32(arg_0.c.zx, vec2<i32>(-11934i, 0i)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global3.a, 1000f))), -457f, arg_0.d, global3.a) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1140f, -1365f, -1224f, arg_0.d))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.d.a.x, global3.d.a.x, 344f, 412f))), true || global3.d.e.x)))))).e.xy;
    var_0 = !(!global3.d.e.xy);
    let var_1 = _wgslsmith_sub_i32(firstTrailingBit(1i), arg_0.c.x);
    global4 = func_2(~(-(vec4<i32>(var_1, -2147483647i, 23415i, 22156i) >> (max(vec4<u32>(37720u, global3.c, 0u, global3.c), vec4<u32>(56303u, 41246u, 1u, global3.c)) % vec4<u32>(32u)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1511f)) + arg_0.b) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(sign(arg_0.b)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1836f) + -657f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.d)), _wgslsmith_f_op_f32(arg_0.b * global3.d.a.x))), global3.a)).e;
    var var_2 = arg_0;
    return Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.d, arg_0.d))), _wgslsmith_f_op_f32(step(arg_0.b, -167f))))), func_2(vec4<i32>(~(i32(-1i) * -2147483647i), -2147483647i, -29926i, _wgslsmith_dot_vec2_i32(vec2<i32>(global3.b, u_input.a), var_2.c.zw)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(633f, var_2.d, 327f, 566f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(114f, -800f, arg_0.a.x, arg_0.d)))))))).c.x, 4294967295u, global3.d);
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = func_4(func_2(~vec4<i32>(arg_0.x << (global3.c % 32u), global3.d.c.x, -u_input.a, u_input.a), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -861f), global3.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.d.d), _wgslsmith_f_op_f32(-global3.a)), _wgslsmith_div_f32(-1078f, _wgslsmith_f_op_f32(floor(global3.d.d))))), ~(-_wgslsmith_dot_vec4_i32(global3.d.c >> (vec4<u32>(global3.c, 30148u, global3.c, 20330u) % vec4<u32>(32u)), vec4<i32>(-17778i, 1i, 2147483647i, -2147483647i))));
    global2 = array<vec2<u32>, 30>();
    var var_1 = var_0.c;
    let var_2 = 292f;
    var var_3 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(select(784f, _wgslsmith_f_op_f32(var_0.a * var_2), false)), 933f, -2111f), _wgslsmith_mod_i32(u_input.a, firstLeadingBit(1i)), u_input.b);
    return Struct_2(_wgslsmith_f_op_f32(-1f), _wgslsmith_sub_i32(u_input.a, u_input.a), reverseBits(_wgslsmith_div_u32(global3.c, ~(global3.c & global3.c))), var_0.d);
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> bool {
    return !arg_2.d.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(global3.d.e.yw);
    global2 = array<vec2<u32>, 30>();
    var var_1 = false & !func_5(1i, _wgslsmith_f_op_f32(3128f * global3.d.a.x), func_1(abs(vec2<i32>(u_input.a, u_input.b))));
    let var_2 = Struct_3(global3.d.a, _wgslsmith_dot_vec2_i32(global3.d.c.xz << (vec2<u32>(1u, 33889u) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(select(-u_input.c.xy, global3.d.c.yz, vec2<bool>(global4.x, true)), _wgslsmith_div_vec2_i32(~vec2<i32>(2147483647i, u_input.c.x), u_input.c.yx))), _wgslsmith_mult_i32(0i, _wgslsmith_div_i32(-5990i, 1i)));
    global2 = array<vec2<u32>, 30>();
    let var_3 = Struct_4(global3.c, func_4(global3.d, _wgslsmith_div_i32(var_2.b, ~var_2.c | _wgslsmith_sub_i32(var_2.c, var_2.c))), select(func_4(func_4(func_1(vec2<i32>(0i, u_input.a)).d, -var_2.b).d, func_2(_wgslsmith_add_vec4_i32(vec4<i32>(34421i, var_2.c, 36567i, var_2.c), vec4<i32>(-1i, -14311i, u_input.a, var_2.c)), vec4<f32>(2228f, -2028f, var_2.a.x, -975f)).c.x).d.e, func_1(reverseBits(func_4(global3.d, global3.b).d.c.wy)).d.e, all(func_4(global3.d, _wgslsmith_mult_i32(global3.d.c.x, -2147483647i)).d.e)));
    let var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * var_3.b.a) * _wgslsmith_f_op_f32(var_2.a.x + var_2.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_3.b.a, func_1(_wgslsmith_clamp_vec2_i32(global3.d.c.wy, vec2<i32>(-59140i, 0i), u_input.c.zy)).a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1091f + var_2.a.x)) + -1330f)), 56962u, -func_1(global3.d.c.ww | _wgslsmith_div_vec2_i32(vec2<i32>(var_3.b.d.c.x, 2147483647i), global3.d.c.xw)).d.c.x);
}

