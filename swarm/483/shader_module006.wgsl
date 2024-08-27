struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-437i);

var<private> global1: array<u32, 16>;

var<private> global2: f32 = 1221f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(546f, -676f, -1182f), vec3<f32>(-1244f, 870f, 243f), false)) + vec3<f32>(-1000f, -1101f, 227f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -236f, 568f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-300f, -1668f, 669f) - vec3<f32>(-215f, -693f, 1353f)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-522f, -447f, -1235f) + vec3<f32>(189f, 217f, -1000f))))), vec3<f32>(_wgslsmith_f_op_f32(-141f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -255f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(871f + -842f), -162f, true))))));
    global1 = array<u32, 16>();
    let var_1 = _wgslsmith_f_op_f32(var_0.x * var_0.x);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), var_1), _wgslsmith_f_op_f32(round(-753f)));
    let var_3 = _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32((arg_1.a.zy & u_input.c.wx) & ~(~vec2<u32>(u_input.c.x, 4294967295u)), ((vec2<u32>(arg_1.a.x, 72225u) >> (vec2<u32>(global1[_wgslsmith_index_u32(8687u, 16u)], u_input.c.x) % vec2<u32>(32u))) >> (vec2<u32>(arg_1.a.x, arg_1.a.x) % vec2<u32>(32u))) | abs(~vec2<u32>(17929u, 46948u))), vec2<u32>(global1[_wgslsmith_index_u32(reverseBits(u_input.c.x), 16u)], 12555u));
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -985f), _wgslsmith_f_op_f32(func_3(firstTrailingBit(-1i), arg_0))))), 1990f, Struct_1(vec4<u32>(u_input.c.x, 124096u, 1u, firstTrailingBit(~u_input.c.x)), select(arg_0.c & ~vec4<i32>(22047i, u_input.a, global0.a, global0.a), _wgslsmith_clamp_vec4_i32(arg_0.b, arg_0.b, vec4<i32>(1i, arg_0.b.x, u_input.b, global0.a)) << (firstTrailingBit(vec4<u32>(3049u, u_input.c.x, 55737u, global1[_wgslsmith_index_u32(arg_0.a.x, 16u)])) % vec4<u32>(32u)), true), reverseBits(arg_0.b), _wgslsmith_dot_vec3_i32(-arg_0.b.ywz, _wgslsmith_mult_vec3_i32(arg_0.c.yxw, arg_0.b.yyw))), 1u);
    var var_1 = arg_0.b;
    var var_2 = var_0.c.c.x;
    let var_3 = Struct_3(var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -642f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b)))), var_0.b), Struct_1(u_input.c, vec4<i32>(~reverseBits(-2147483647i), -10564i, 2147483647i, u_input.b), select(arg_0.b, vec4<i32>(~(-21286i), 1i, 1i ^ var_0.c.c.x, i32(-1i) * -43245i), arg_1.x), ~arg_0.c.x), 1u);
    var var_4 = var_3;
    return false;
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    global0 = Struct_2(reverseBits(60844i));
    let var_0 = -vec2<i32>(_wgslsmith_mod_i32(-1851i, -2147483647i), i32(-1i) * -u_input.d);
    global1 = array<u32, 16>();
    global2 = -1708f;
    var var_1 = any(select(!vec2<bool>(select(true, true, true), any(vec3<bool>(false, false, false))), vec2<bool>(true, true), true & select(true, any(vec3<bool>(false, true, true)), func_2(Struct_1(u_input.c, vec4<i32>(u_input.b, 1i, -22985i, -42039i), arg_0, 0i), vec2<bool>(false, true)))));
    return Struct_2(2147483647i);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec4<u32>) -> bool {
    global0 = arg_0;
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-769f, 2110f, 208f, -1013f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1139f, _wgslsmith_f_op_f32(floor(1554f)), _wgslsmith_div_f32(148f, -1385f), _wgslsmith_div_f32(-353f, -1000f))))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -324f))))));
    global1 = array<u32, 16>();
    let var_1 = Struct_1(vec4<u32>(select(_wgslsmith_dot_vec3_u32(u_input.c.wwx, vec3<u32>(arg_2.x, arg_2.x, arg_2.x)) >> (45614u % 32u), 22303u, true), ~reverseBits(firstTrailingBit(global1[_wgslsmith_index_u32(1361u, 16u)])), ~1u, ((global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16113u, 16u)], 16u)] ^ global1[_wgslsmith_index_u32(44242u, 16u)]) >> (_wgslsmith_add_u32(36790u, arg_2.x) % 32u)) << (4385u % 32u)), -(arg_1 | _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x, 0i, 0i, u_input.d), -vec4<i32>(26354i, u_input.a, -1i, 2147483647i))), vec4<i32>(u_input.e.x, -91589i, -23246i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(arg_0.a, 32338i)), -(~(-17463i)))), 6347i);
    return func_2(var_1, !vec2<bool>(false, !func_2(Struct_1(vec4<u32>(29453u, global1[_wgslsmith_index_u32(arg_2.x, 16u)], global1[_wgslsmith_index_u32(u_input.c.x, 16u)], 5840u), vec4<i32>(arg_0.a, global0.a, arg_0.a, -27439i), vec4<i32>(1i, 1i, 1i, -1i), arg_0.a), vec2<bool>(true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(vec4<i32>(_wgslsmith_mult_i32(5620i, -1i), -14481i, 18585i, -17395i) << ((_wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(0u, u_input.c.x, 4294967295u, 1570u)) ^ ~vec4<u32>(1u, 53537u, global1[_wgslsmith_index_u32(u_input.c.x, 16u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)])) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.e.x, global0.a, 1i, u_input.a), max(vec4<i32>(u_input.e.x, u_input.b, global0.a, global0.a), vec4<i32>(1i, 24482i, u_input.e.x, -10072i))), abs(vec4<i32>(76327i, 2147483647i, 23020i, -2147483647i))) & select(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 1i, global0.a, 2147483647i), vec4<i32>(global0.a, u_input.d, -44356i, 5203i)), min(~vec4<i32>(1i, u_input.b, u_input.b, global0.a), -vec4<i32>(u_input.e.x, 2147483647i, -2147483647i, u_input.b)), true), u_input.c << (countOneBits(u_input.c | vec4<u32>(72801u, 4294967295u, 7541u, 63716u)) % vec4<u32>(32u)));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, 411f), vec2<f32>(1181f, -273f)))), vec2<f32>(_wgslsmith_f_op_f32(-686f + 865f), _wgslsmith_f_op_f32(-602f + 766f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(251f - -776f), _wgslsmith_f_op_f32(trunc(1000f))) * _wgslsmith_f_op_f32(-945f - -122f)))), Struct_1(u_input.c, -(~vec4<i32>(2147483647i, 29639i, u_input.d, 37316i)) & _wgslsmith_div_vec4_i32(vec4<i32>(global0.a, u_input.e.x, -2220i, -24215i) >> (u_input.c % vec4<u32>(32u)), vec4<i32>(u_input.b, global0.a, global0.a, 32883i) ^ vec4<i32>(global0.a, -2147483647i, 48594i, u_input.d)), vec4<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_div_i32(-2147483647i, 66930i)), -(u_input.a >> (4294967295u % 32u)), u_input.b, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.e.x, 0i), select(u_input.e, vec2<i32>(u_input.e.x, u_input.b), false))), abs(i32(-1i) * -13956i)), global1[_wgslsmith_index_u32(abs(~_wgslsmith_mult_u32(u_input.c.x, 0u)) ^ (~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c) & u_input.c.x), 16u)]);
    let var_2 = var_1.c;
    global0 = func_1(~vec4<i32>(countOneBits(var_1.c.c.x), _wgslsmith_mult_i32(_wgslsmith_sub_i32(32304i, global0.a), var_1.c.b.x << (u_input.c.x % 32u)), var_1.c.d, (38157i ^ var_1.c.b.x) | (i32(-1i) * -9784i)));
    global1 = array<u32, 16>();
    global0 = Struct_2(2147483647i);
    global2 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-2147483647i, Struct_1(u_input.c, var_2.c, vec4<i32>(-24977i, -2147483647i, -57357i, var_2.d), var_1.c.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(min(-10644i, var_2.b.x), var_2)) + -373f)), -1000f));
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_1.a.x)))), var_1.b))), var_1.a.x, Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(25023u, var_1.d & global1[_wgslsmith_index_u32(1u, 16u)], ~global1[_wgslsmith_index_u32(53291u, 16u)], 1u), vec4<u32>(var_2.a.x, abs(0u), ~68921u, 0u)), select(var_1.c.b, select(vec4<i32>(-7122i, u_input.d, 0i, var_1.c.d), vec4<i32>(u_input.d, 18412i, var_1.c.d, -21161i), true) & var_1.c.b, select(select(vec4<bool>(false, false, var_0, true), vec4<bool>(true, var_0, var_0, true), vec4<bool>(true, false, var_0, var_0)), vec4<bool>(var_0, true, var_0, var_0), var_0 || var_0)), (select(var_1.c.c, vec4<i32>(u_input.d, var_2.b.x, global0.a, u_input.d), vec4<bool>(true, var_0, var_0, var_0)) | vec4<i32>(u_input.e.x, -38370i, var_1.c.d, -36883i)) | var_1.c.c, u_input.b), var_2.a.x);
    var var_4 = var_1.c.a.wxw;
    let x = u_input.a;
    s_output = StorageBuffer(max(select(~(4294967295u << (var_2.a.x % 32u)), 4294967295u, var_0), var_3.c.a.x), var_1.a, _wgslsmith_div_vec3_u32(~(~u_input.c.yxy) >> (u_input.c.xxy % vec3<u32>(32u)), ~vec3<u32>(0u, 102537u, 84573u) ^ var_3.c.a.zzx));
}

