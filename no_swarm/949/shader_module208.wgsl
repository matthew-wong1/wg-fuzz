struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 14>;

var<private> global1: i32 = 61469i;

var<private> global2: array<vec2<f32>, 27>;

var<private> global3: array<vec2<i32>, 32>;

var<private> global4: array<u32, 10> = array<u32, 10>(4294967295u, 4294967295u, 20612u, 30810u, 4294967295u, 10157u, 1u, 67024u, 74104u, 78316u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(select(_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x)), ~vec3<i32>(1i, u_input.d.x, -2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.d.x, u_input.d.x), vec3<i32>(-5206i, u_input.d.x, u_input.d.x))), firstTrailingBit(countOneBits(vec3<i32>(-8119i, u_input.d.x, -65086i))), vec3<bool>(true, true, true)) & ~(vec3<i32>(-1i) * -vec3<i32>(u_input.d.x, u_input.d.x, -40109i)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1221f, -1012f, -361f)))))), u_input.d.x, all(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-918f)) * _wgslsmith_div_f32(271f, -1014f)), 584f, !all(vec2<bool>(false, true))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1400f, var_0.e, 502f, 629f) - vec4<f32>(var_0.e, var_0.b.x, -671f, var_0.b.x)))))));
    let var_2 = ~u_input.b;
    global0 = array<vec2<f32>, 14>();
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_0.b + vec3<f32>(var_1.x, -273f, var_1.x)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1401f, -1964f, var_0.e) + var_0.b)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(round(-989f)), _wgslsmith_f_op_f32(floor(var_1.x)), var_0.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1230f, 339f, 1677f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-640f, var_0.e, 1291f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.ywy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(564f, -397f, var_0.b.x)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(568f, -1000f, var_1.x), var_1.zzy))))));
    return -44896i;
}

fn func_2(arg_0: Struct_1) -> i32 {
    global2 = array<vec2<f32>, 27>();
    let var_0 = ~_wgslsmith_sub_vec3_u32(countOneBits(u_input.a.zxw | min(u_input.a.ywx, vec3<u32>(u_input.c, u_input.a.x, global4[_wgslsmith_index_u32(u_input.a.x, 10u)]))), u_input.a.wyx & _wgslsmith_div_vec3_u32(~u_input.a.wxw, vec3<u32>(global4[_wgslsmith_index_u32(13510u, 10u)], u_input.a.x, 4294967295u) | u_input.a.zwy));
    let var_1 = _wgslsmith_dot_vec2_i32(-u_input.d, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-31203i, 2147483647i, -u_input.d.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(40316i, 0i, arg_0.c) ^ arg_0.a, _wgslsmith_mod_vec3_i32(vec3<i32>(24421i, 2147483647i, u_input.d.x), arg_0.a), arg_0.a)), reverseBits(-2147483647i)));
    global1 = -25626i;
    var var_2 = -vec4<i32>(36270i, -9494i, i32(-1i) * -25262i, func_3() << (4294967295u % 32u));
    return firstTrailingBit(_wgslsmith_clamp_i32(var_2.x, _wgslsmith_mod_i32(-arg_0.c, -var_2.x) | ~var_2.x, arg_0.a.x));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = any(select(!select(select(vec2<bool>(true, true), vec2<bool>(arg_1.d, true), vec2<bool>(false, arg_1.d)), !vec2<bool>(true, arg_1.d), arg_1.d | arg_1.d), vec2<bool>(arg_1.d, false), !(!(!vec2<bool>(false, arg_1.d)))));
    global0 = array<vec2<f32>, 14>();
    var var_1 = arg_1.b;
    let var_2 = _wgslsmith_f_op_f32(min(632f, var_1.x));
    var var_3 = arg_1;
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: i32) -> bool {
    global2 = array<vec2<f32>, 27>();
    let var_0 = func_4(-min(~func_2(Struct_1(vec3<i32>(arg_0, arg_0, arg_0), vec3<f32>(472f, -1000f, 1016f), -1i, true, 2461f)), _wgslsmith_sub_i32(-7098i, firstLeadingBit(arg_1))), Struct_1(_wgslsmith_add_vec3_i32(~vec3<i32>(arg_0, arg_0, 0i), vec3<i32>(arg_1, 29753i, arg_0) << (vec3<u32>(global4[_wgslsmith_index_u32(u_input.a.x, 10u)], u_input.b, u_input.c) % vec3<u32>(32u))) >> (~(~u_input.a.yzy) % vec3<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -437f)), _wgslsmith_f_op_f32(f32(-1f) * -422f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(203f, 789f))))), -(_wgslsmith_mult_i32(arg_1, -65566i) ^ firstTrailingBit(arg_1)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(664f + 123f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-340f, -788f) + -849f))), max(_wgslsmith_div_i32(abs(arg_1), arg_0) << (~(u_input.c | 4294967295u) % 32u), min(2147483647i, 35936i)));
    var var_1 = vec3<i32>(~(-1633i), reverseBits(min(-2147483647i, _wgslsmith_clamp_i32(abs(15612i), -15375i ^ arg_0, 0i))), ~(~(i32(-1i) * -1i)));
    var var_2 = u_input.a.xzw;
    let var_3 = 14444u;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.d.x, u_input.d.x) & (u_input.d.x | u_input.d.x), _wgslsmith_add_i32(23449i, u_input.d.x)), _wgslsmith_add_i32(u_input.d.x << (144u % 32u), -1947i) ^ (select(39485i, -1i, true) ^ u_input.d.x));
    var var_1 = ~firstTrailingBit(vec3<u32>(4294967295u, firstLeadingBit(~u_input.c), 45450u));
    let var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(101539u, ~(~(~1u)), _wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.wx), 16650u), abs(u_input.a));
    let var_3 = select(vec4<u32>(countOneBits(~u_input.b), ~1u | (global4[_wgslsmith_index_u32(var_1.x, 10u)] & var_2.x), select(~47595u, ~0u, func_4(u_input.d.x, Struct_1(vec3<i32>(u_input.d.x, -23118i, u_input.d.x), vec3<f32>(-1554f, -651f, -1050f), 1417i, true, 1000f), -35015i).d), firstLeadingBit(1u)) << (~u_input.a % vec4<u32>(32u)), vec4<u32>(~(~firstLeadingBit(var_1.x)), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, var_2.x, 9948u, var_1.x), vec4<u32>(var_2.x, 27860u, 1u, 44740u))) << (~(~var_2.x) % 32u), ~max(72571u, 52269u), 4294967295u), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), !func_4(u_input.d.x, Struct_1(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<f32>(277f, -322f, -326f), -3845i, true, -1000f), 0i).d), !func_1(u_input.d.x, u_input.d.x) || (abs(0i) == _wgslsmith_div_i32(u_input.d.x, u_input.d.x))));
    let var_4 = Struct_1(countOneBits(select(select(vec3<i32>(u_input.d.x, u_input.d.x, -2147483647i), vec3<i32>(-1i, u_input.d.x, -50246i), vec3<bool>(false, true, true)) & _wgslsmith_mult_vec3_i32(vec3<i32>(79959i, u_input.d.x, u_input.d.x), vec3<i32>(u_input.d.x, -46643i, 1i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, 1i, u_input.d.x), func_4(u_input.d.x, Struct_1(vec3<i32>(5979i, 29318i, 0i), vec3<f32>(608f, 1173f, -1602f), u_input.d.x, false, 154f), 32267i).a), !(39090u >= var_3.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(878f, 129f, -479f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-435f, -1610f, -217f)))))), -abs(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1i, u_input.d.x, u_input.d.x), _wgslsmith_mult_i32(u_input.d.x, u_input.d.x))), any(vec4<bool>(true, false && all(vec4<bool>(true, false, true, false)), true, true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_5 = func_4(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x ^ var_4.a.x, abs(9233i), ~(-41264i)), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(var_4.a, vec3<i32>(var_4.c, 57648i, -57209i), var_4.a), var_4.a)), ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 35090i, u_input.d.x, -4029i), vec4<i32>(var_4.a.x, 1i, -9062i, -8312i)), -u_input.d.x, -var_4.c)), func_4(_wgslsmith_mult_i32(min(var_4.c, 0i), -2147483647i), Struct_1(-(~var_4.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(349f, -481f, var_4.b.x), vec3<f32>(1820f, var_4.e, 1331f), vec3<bool>(true, true, true))) - vec3<f32>(var_4.b.x, var_4.e, var_4.e)), 1i, select(!var_4.d, false, var_4.d), var_4.b.x), -select(1i, -2760i, var_4.d)), abs(-48548i));
    let var_6 = 4294967295u ^ _wgslsmith_sub_u32(u_input.c, ~0u >> (u_input.a.x % 32u));
    var var_7 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.x | 25486u, _wgslsmith_div_u32(~4294967295u << (~(~var_1.x) % 32u), var_6)), 10u)];
    let var_8 = func_4(-2147483647i, Struct_1(abs(vec3<i32>(-33387i, var_5.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(15617i, 0i)))), _wgslsmith_f_op_vec3_f32(var_5.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_5.b))), 1i, select(!var_4.d, false, var_5.d), _wgslsmith_f_op_f32(round(1389f))), select(var_4.a.x, var_4.c, any(!vec3<bool>(var_4.d, var_5.d, true))) & 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(-3894i, abs(reverseBits(min(vec4<i32>(var_5.c, 2147483647i, u_input.d.x, var_8.c), vec4<i32>(-24497i, -1i, 2147483647i, var_8.a.x))) >> (countOneBits(~var_2) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.e) * _wgslsmith_f_op_f32(-var_5.b.x))) - _wgslsmith_f_op_f32(ceil(934f))));
}

