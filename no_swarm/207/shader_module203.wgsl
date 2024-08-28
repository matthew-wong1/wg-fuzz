struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9>;

var<private> global1: vec2<i32>;

var<private> global2: vec4<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_3) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global2.wzy, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1428f, global2.x, global2.x), global2.yyy))))))) * arg_0.a.xxz);
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3) -> Struct_2 {
    global0 = array<vec2<i32>, 9>();
    let var_0 = Struct_5(all(vec4<bool>((false || arg_0.b) & (global1.x > global1.x), false, !all(vec2<bool>(false, arg_0.b)), arg_0.b)), vec2<bool>(true, false), vec3<i32>(~u_input.a, _wgslsmith_sub_i32(-79623i, u_input.a) | _wgslsmith_dot_vec3_i32(~vec3<i32>(global1.x, -2147483647i, global1.x), select(vec3<i32>(-31412i, 2147483647i, -43857i), vec3<i32>(1i, global1.x, 43674i), false)), 37864i));
    var var_1 = _wgslsmith_f_op_f32(-arg_0.a.x);
    global2 = _wgslsmith_f_op_vec4_f32(-arg_2.a);
    let var_2 = vec4<i32>(1i, 0i, 1i, 1i);
    return Struct_2(Struct_1(false, 1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a.wwz) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(vec4<f32>(-1029f, 674f, -1000f, arg_2.a.x), arg_0.b))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.a.x, 485f, arg_2.a.x)))))), vec2<i32>(firstTrailingBit(var_2.x), ~6471i)), abs(~_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 23131u), vec2<u32>(15557u, 14592u)), vec2<u32>(4294967295u, arg_1))), all(vec2<bool>(true, true)), -_wgslsmith_mult_i32(min(i32(-1i) * -1i, 32905i), 2147483647i));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: Struct_5) -> vec2<u32> {
    var var_0 = vec2<u32>(0u, _wgslsmith_mod_u32(countOneBits(_wgslsmith_mult_u32(1u, arg_0.a.b)), 1u)) ^ ((arg_1 | (~arg_1 | vec2<u32>(arg_1.x, arg_1.x))) | firstTrailingBit(vec2<u32>(_wgslsmith_mod_u32(arg_1.x, 0u), 41169u)));
    let var_1 = -_wgslsmith_add_vec3_i32(min(vec3<i32>(26626i, ~arg_3.c.x, -1i >> (var_0.x % 32u)), arg_3.c), vec3<i32>(arg_0.d, abs(0i), 1i) ^ reverseBits(~arg_3.c));
    var_0 = countOneBits(vec2<u32>(~var_0.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(58954u, arg_0.a.b), vec2<u32>(arg_1.x, arg_0.b.x))) >> (max(min(~vec2<u32>(arg_1.x, 4294967295u), ~arg_1), (vec2<u32>(44102u, 62528u) ^ vec2<u32>(83623u, arg_0.a.b)) >> (vec2<u32>(91853u, var_0.x) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_2 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.c.x * _wgslsmith_f_op_vec3_f32(func_3(Struct_3(vec4<f32>(arg_0.a.c.x, arg_0.a.c.x, global2.x, arg_0.a.c.x), true))).x) - _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(ceil(arg_0.a.c.x)))), -264f, _wgslsmith_f_op_f32(882f - _wgslsmith_div_f32(1794f, global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_0.a.c.x)))))), arg_3.b.x);
    var var_3 = Struct_4(vec2<i32>(var_1.x, arg_3.c.x << ((_wgslsmith_sub_u32(arg_0.a.b, 4294967295u) ^ _wgslsmith_mult_u32(arg_1.x, var_0.x)) % 32u)), Struct_1(arg_3.b.x, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(21130u, 22190u, arg_1.x, arg_1.x), vec4<u32>(arg_0.b.x, 4294967295u, 4294967295u, var_0.x), arg_0.c), ~vec4<u32>(arg_1.x, 81178u, 4832u, arg_1.x)), ~func_2(Struct_3(vec4<f32>(235f, var_2.a.x, -648f, -186f), arg_3.b.x), var_0.x, Struct_3(vec4<f32>(arg_0.a.c.x, arg_0.a.c.x, global2.x, 242f), false)).a.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.yxz))), _wgslsmith_mod_vec2_i32(arg_0.a.d, arg_0.a.d)), ~vec4<u32>(~arg_0.a.b, ~max(arg_1.x, var_0.x), ~countOneBits(var_0.x), ~(~44959u)));
    return ~(~_wgslsmith_div_vec2_u32(~vec2<u32>(arg_1.x, 13147u), ~vec2<u32>(var_0.x, var_3.c.x))) >> (var_3.c.zx % vec2<u32>(32u));
}

fn func_1() -> vec4<bool> {
    var var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(firstTrailingBit(~9810u), 22340u), 46104u), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), countOneBits(vec2<u32>(1u, 54845u))), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(6421u, 26594u)), func_4(func_2(Struct_3(vec4<f32>(498f, global2.x, global2.x, global2.x), true), 15423u, Struct_3(vec4<f32>(global2.x, global2.x, 395f, global2.x), false)), ~vec2<u32>(0u, 1u), vec4<i32>(-40187i, global1.x, global1.x, u_input.a), Struct_5(true, vec2<bool>(true, false), vec3<i32>(global1.x, -2147483647i, 17964i))))));
    let var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(0u, var_0.x)) | _wgslsmith_mult_vec2_u32(vec2<u32>(72222u, 44633u) & vec2<u32>(4294967295u, var_0.x), vec2<u32>(1u, 1u)), (~vec2<u32>(var_0.x, 4294967295u) ^ (vec2<u32>(34611u, 112u) & vec2<u32>(var_0.x, 4294967295u))) | (~vec2<u32>(0u, 31777u) >> (~vec2<u32>(4294967295u, var_0.x) % vec2<u32>(32u)))), _wgslsmith_add_u32(var_0.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.x, var_0.x >> (var_0.x % 32u)), ~(~var_0.x))));
    let var_2 = _wgslsmith_clamp_i32(u_input.a, 4361i, global1.x);
    global0 = array<vec2<i32>, 9>();
    global1 = -global0[_wgslsmith_index_u32(50249u, 9u)];
    return select(select(vec4<bool>(true, select(true, false, all(vec3<bool>(true, true, false))), true, func_2(Struct_3(vec4<f32>(-2344f, global2.x, 241f, 436f), false), var_0.x, Struct_3(vec4<f32>(-580f, global2.x, 1486f, 1516f), true)).a.a && true), select(vec4<bool>(true, true, any(vec2<bool>(true, true)), all(vec3<bool>(false, false, true))), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true))), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), true)), select(vec4<bool>(func_2(Struct_3(vec4<f32>(global2.x, 1395f, global2.x, global2.x), true), firstTrailingBit(1u), Struct_3(vec4<f32>(1000f, global2.x, global2.x, global2.x), true)).c, all(vec3<bool>(false, true, false)) | (global1.x < 2147483647i), !any(vec4<bool>(false, false, false, false)), all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false))), !vec4<bool>(any(vec3<bool>(false, false, true)), true, true, -2806i != var_2), any(vec4<bool>(true, true, true, true))), vec4<bool>(select(true, true, all(vec3<bool>(false, false, false))) || any(vec2<bool>(false, false)), true, any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(true, true, false))), !all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true))));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: f32) -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, 739f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, arg_3, -1611f, global2.x), vec4<f32>(global2.x, -843f, -1000f, global2.x)))))))), func_1().x);
    global0 = array<vec2<i32>, 9>();
    let var_1 = select(vec4<u32>(_wgslsmith_mod_u32(~1u, _wgslsmith_sub_u32(24925u, 1u)), 4294967295u, 29336u, select(~66624u, 0u, false)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(~59628u, 1u, min(96433u, 64411u), 1u)), ~vec4<u32>(15306u, 1u, _wgslsmith_mult_u32(65232u, 0u), ~1u)), arg_2);
    return !arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(true, vec2<bool>(func_5(vec3<bool>(true, false, any(vec4<bool>(true, false, false, true))), vec4<bool>(all(vec2<bool>(true, false)), true, false, true), func_1(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_f32(global2.x, global2.x))), all(func_1().yxy)), ~vec3<i32>(_wgslsmith_div_i32(abs(u_input.a), 2147483647i), min(_wgslsmith_div_i32(u_input.a, -21364i), 2147483647i), u_input.a));
    global1 = ~vec2<i32>(global1.x, -79560i) | vec2<i32>(~(-2147483647i), ~1i);
    var var_1 = -336f;
    var var_2 = ~select(_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(11132u, 7151u, 1u), vec3<u32>(1u, 1u, 6712u)), _wgslsmith_dot_vec2_u32(vec2<u32>(27672u, 4294967295u), vec2<u32>(4294967295u, 21785u)))), ~1u, !any(!var_0.b));
    var var_3 = func_2(Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - 1000f)), 557f, global2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.x)))), var_0.a), ~1u, Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, global2.x, global2.x, 817f))), vec4<f32>(global2.x, 581f, global2.x, 489f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(696f, -466f, 401f, global2.x) + vec4<f32>(global2.x, global2.x, -1000f, global2.x))))), (!var_0.b.x || var_0.a) | any(vec4<bool>(true, true, true, true)))).a;
    var var_4 = vec2<u32>(_wgslsmith_add_u32(reverseBits(4294967295u), func_4(func_2(Struct_3(vec4<f32>(464f, global2.x, -915f, var_3.c.x), var_3.a), abs(69087u), Struct_3(vec4<f32>(global2.x, global2.x, var_3.c.x, 2663f), var_0.a)), ~vec2<u32>(4294967295u, var_3.b), countOneBits(-vec4<i32>(var_0.c.x, 2147483647i, 0i, 1i)), Struct_5(true, var_0.b, vec3<i32>(-22361i, global1.x, 67193i))).x), 31570u);
    let var_5 = var_3.b;
    var_3 = Struct_1(true, min(~func_2(Struct_3(vec4<f32>(var_3.c.x, 223f, 129f, -946f), var_0.a), ~0u, Struct_3(vec4<f32>(var_3.c.x, -1017f, -2195f, var_3.c.x), true)).a.b, ~_wgslsmith_clamp_u32(~var_3.b, ~4294967295u, func_4(Struct_2(Struct_1(var_0.a, 1u, vec3<f32>(857f, var_3.c.x, global2.x), vec2<i32>(u_input.a, 1538i)), vec2<u32>(var_3.b, 1u), var_0.a, var_3.d.x), vec2<u32>(43710u, 13347u), vec4<i32>(0i, u_input.a, 1i, 22668i), var_0).x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -403f)), _wgslsmith_f_op_f32(min(-602f, _wgslsmith_f_op_f32(-var_3.c.x))), _wgslsmith_f_op_f32(-var_3.c.x)))), var_3.d);
    global1 = func_2(Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.c.x, -486f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2120f * global2.x) + _wgslsmith_f_op_f32(f32(-1f) * -1434f)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -507f) * func_2(Struct_3(vec4<f32>(819f, global2.x, global2.x, global2.x), false), var_3.b, Struct_3(vec4<f32>(global2.x, var_3.c.x, -145f, global2.x), var_0.a)).a.c.x)), true), var_3.b, Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-282f, -450f, -1383f, global2.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 1613f, 442f, -3293f)))), any(vec2<bool>(true, all(vec3<bool>(var_3.a, var_3.a, var_3.a)))))).a.d;
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-34242i) << (var_4.x % 32u)), select(-_wgslsmith_div_vec3_i32(-vec3<i32>(-2147483647i, -31096i, -40899i), _wgslsmith_add_vec3_i32(var_0.c, vec3<i32>(-2839i, 9361i, var_3.d.x))), vec3<i32>(-1i, abs(max(-1i, var_3.d.x)), u_input.a), var_3.a), vec2<f32>(1531f, _wgslsmith_f_op_f32(ceil(-882f))), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-1i, -13248i), var_3.d));
}

