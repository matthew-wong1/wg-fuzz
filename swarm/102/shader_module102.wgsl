struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14> = array<f32, 14>(331f, 670f, 1000f, -336f, 319f, -689f, 1590f, -981f, 254f, -670f, 766f, -380f, -1584f, -217f);

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-92029i, false, 1i), Struct_1(-38523i, false, 36949i), Struct_1(-64324i, false, 3638i), Struct_1(2147483647i, true, -57673i), Struct_1(-45536i, false, -21214i), Struct_1(0i, false, 1i), Struct_1(866i, true, 2147483647i), Struct_1(-59714i, true, -31878i), Struct_1(i32(-2147483648), true, -49190i), Struct_1(2147483647i, true, 1i), Struct_1(41558i, false, -1i), Struct_1(1i, false, -1i), Struct_1(7279i, false, -45980i), Struct_1(28634i, false, -25266i), Struct_1(2147483647i, true, 1i), Struct_1(60858i, false, 0i), Struct_1(0i, true, -1i), Struct_1(-1i, false, i32(-2147483648)), Struct_1(-1i, true, 2147483647i), Struct_1(-10251i, true, 2147483647i), Struct_1(0i, false, 0i), Struct_1(-29607i, true, 1i), Struct_1(66756i, false, -15506i), Struct_1(i32(-2147483648), true, -19530i), Struct_1(29344i, false, i32(-2147483648)), Struct_1(1i, true, -4665i), Struct_1(-26388i, false, -36338i), Struct_1(-17776i, true, 4749i), Struct_1(-1240i, true, -10447i));

var<private> global2: Struct_2;

var<private> global3: i32 = 2147483647i;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: i32) -> f32 {
    var var_0 = ~_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(-(vec3<i32>(1i, 45188i, global2.a.a) ^ vec3<i32>(arg_1.c, 4352i, 54334i)), _wgslsmith_mult_vec3_i32(vec3<i32>(global4.a.a, global2.a.a, u_input.a), vec3<i32>(u_input.a, 38416i, 50166i)) | -vec3<i32>(1i, 2147483647i, -2147483647i)), -firstTrailingBit(vec3<i32>(arg_2, -2147483647i, global4.a.c)));
    global0 = array<f32, 14>();
    return 675f;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_4) -> i32 {
    global1 = array<Struct_1, 29>();
    let var_0 = _wgslsmith_div_u32(14517u, ~((_wgslsmith_dot_vec3_u32(global4.b.yzy, global2.b.wxy) ^ ~global4.b.x) >> (~max(global4.b.x, global4.b.x) % 32u)));
    var var_1 = Struct_2(Struct_1(-(i32(-1i) * -22419i), any(vec2<bool>(!global2.a.b, global2.a.b)), min(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(16603i, global2.a.c, global2.a.c), vec3<i32>(-1i, 0i, global4.a.c)), -vec3<i32>(global4.a.c, 25725i, u_input.a)), _wgslsmith_mult_i32(-1i, global4.a.c))), ~vec4<u32>(firstLeadingBit(countOneBits(var_0)), 42126u, _wgslsmith_div_u32(countOneBits(0u), _wgslsmith_sub_u32(var_0, var_0)), ~_wgslsmith_mult_u32(global2.b.x, 46309u)));
    var var_2 = arg_2.e;
    var var_3 = _wgslsmith_f_op_f32(arg_2.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1115f)));
    return global2.a.a;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = ~(~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(global2.b.x, ~55634u, _wgslsmith_mult_u32(global2.b.x, global4.b.x)), 0u, max(_wgslsmith_clamp_u32(36408u, global2.b.x, 1u), 13347u ^ arg_2)));
    global3 = 15233i;
    global1 = array<Struct_1, 29>();
    var var_1 = Struct_3(Struct_1(2147483647i, arg_3.a.b, -36886i), Struct_1(min(-8392i, ~global2.a.c), global2.a.b, -1i >> (1u % 32u)), arg_1.x > ~(~abs(16147u)), -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global4.a.a, global2.a.c, global4.a.a), vec3<i32>(-66187i, -12547i, 0i)), 34438i, max(25558i, 9742i)) | vec3<i32>(_wgslsmith_mult_i32(max(arg_3.a.a, arg_3.a.a), func_3(global2.a.b, 1u, Struct_4(vec2<i32>(0i, global4.a.a), global0[_wgslsmith_index_u32(arg_2, 14u)], vec3<i32>(global2.a.c, arg_3.a.c, 1i), arg_0.x, global4.a))), _wgslsmith_div_i32(global4.a.a ^ 1i, -arg_3.a.c), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i) & vec2<i32>(u_input.b, global4.a.a), vec2<i32>(-2147483647i, u_input.a))));
    var var_2 = -49588i;
    return Struct_1(1i, true, _wgslsmith_dot_vec2_i32(abs(-_wgslsmith_mod_vec2_i32(var_1.d.zx, vec2<i32>(u_input.a, global2.a.a))), vec2<i32>(u_input.b, 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 14>();
    var var_0 = !(!vec2<bool>(all(select(vec4<bool>(true, true, global4.a.b, false), vec4<bool>(global2.a.b, global4.a.b, true, false), vec4<bool>(true, global4.a.b, global4.a.b, true))), all(select(vec2<bool>(false, global2.a.b), vec2<bool>(global2.a.b, global4.a.b), vec2<bool>(global2.a.b, global4.a.b)))));
    var var_1 = Struct_3(Struct_1(global2.a.c, true | (-1641f <= _wgslsmith_f_op_f32(func_1(vec2<f32>(global0[_wgslsmith_index_u32(global4.b.x, 14u)], -1397f), Struct_1(-53909i, false, -2147483647i), -41995i))), global4.a.c), func_2(vec3<bool>(global4.a.b, var_0.x == (global4.a.c >= -23685i), global4.a.b), ~reverseBits(vec2<u32>(4294967295u, 10517u)), _wgslsmith_div_u32(16085u, global4.b.x), Struct_2(Struct_1(0i, select(true, global2.a.b, false), global4.a.a << (58076u % 32u)), _wgslsmith_div_vec4_u32(~global4.b, global4.b))), global4.a.b, countOneBits(-vec3<i32>(~u_input.a, ~u_input.b, u_input.b)));
    let var_2 = vec2<u32>(global4.b.x, max(~_wgslsmith_mult_u32(1u, reverseBits(global2.b.x)), select(global4.b.x, global4.b.x, var_1.a.b)));
    let var_3 = 22437i;
    let var_4 = Struct_4(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -var_3), ~var_1.d.xz << (_wgslsmith_div_vec2_u32(global4.b.yz, global4.b.wx) % vec2<u32>(32u))) << (abs(vec2<u32>(global4.b.x, 7351u) | vec2<u32>(4294967295u, global4.b.x)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(ceil(275f)), reverseBits(reverseBits(firstLeadingBit(vec3<i32>(-2147483647i, 32988i, 737i))) & var_1.d), any(vec3<bool>(!global2.a.b, global4.a.b, !(global4.a.a != u_input.b))), func_2(select(!(!vec3<bool>(global4.a.b, global4.a.b, false)), vec3<bool>(true, var_0.x | global2.a.b, global2.a.b), vec3<bool>(true, true, true)), vec2<u32>(6640u, 0u), ~0u, Struct_2(Struct_1(abs(-31490i), var_0.x || true, -5195i), global2.b)));
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    let var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~global4.b.wyy, vec3<i32>(reverseBits(abs(var_4.a.x)), func_3(true, _wgslsmith_add_u32(global4.b.x, global2.b.x), var_4) & ~func_3(global4.a.b, global2.b.x, var_4), firstLeadingBit(36952i)));
}

