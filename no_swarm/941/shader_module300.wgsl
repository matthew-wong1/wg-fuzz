struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

var<private> global1: Struct_2;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    let var_0 = global1.a;
    global0 = array<f32, 32>();
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.e, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(488f, _wgslsmith_f_op_f32(sign(101f))))))), -1678f));
    let var_2 = _wgslsmith_dot_vec4_u32(min(_wgslsmith_div_vec4_u32(~u_input.c, u_input.d), ~(~vec4<u32>(var_0.d, 32616u, 52673u, 33700u) & u_input.d)), vec4<u32>(~u_input.a.x, ~(~46453u), max(1u, var_0.d), ~abs(36593u)) | vec4<u32>(var_0.d, var_0.d, 3246u, 23184u & arg_0.x));
    var_1 = _wgslsmith_f_op_f32(arg_1.a.b.x * -590f);
    return -819f;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<f32>) -> Struct_2 {
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    var var_0 = _wgslsmith_div_f32(-604f, 1053f);
    let var_1 = global1.d.x;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), global0[_wgslsmith_index_u32(4294967295u, 32u)]))), global1.a.c.zx, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1355f), 1989f, arg_1.x, _wgslsmith_f_op_f32(func_3(vec2<u32>(u_input.d.x, global1.d.x), Struct_2(global1.a, vec3<i32>(global1.c, u_input.e, -21814i), -1i, global1.d, global0[_wgslsmith_index_u32(global1.d.x, 32u)]), Struct_1(-1141f, vec2<f32>(global0[_wgslsmith_index_u32(6961u, 32u)], 2313f), global1.a.c, global1.a.d)))))), ~(global1.a.d & firstLeadingBit(0u))), ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(44089i, -2147483647i, global1.c, arg_0.x), vec4<i32>(916i, 14356i, 38365i, -34756i)) | firstTrailingBit(u_input.b.x), -arg_0.x, global1.b.x), -u_input.e, firstLeadingBit(_wgslsmith_div_vec3_u32(~u_input.d.zxy, vec3<u32>(0u, 28101u, 86268u)) << (u_input.c.zzy % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(795f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1660f - -602f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_1.x))))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    let var_0 = !(!select(firstLeadingBit(2147483647i) >= ~arg_0.b.x, any(vec2<bool>(false, true)), any(vec2<bool>(true, false))));
    let var_1 = arg_0.e;
    var var_2 = select(!vec2<bool>(!(!var_0), var_0), vec2<bool>(false, any(vec2<bool>(select(true, false, false), var_0 & false))), select(select(vec2<bool>(true, true), !(!vec2<bool>(var_0, false)), select(!vec2<bool>(true, var_0), select(vec2<bool>(false, false), vec2<bool>(var_0, true), var_0), vec2<bool>(true, var_0))), vec2<bool>(!var_0 | !var_0, var_0), !(!(!vec2<bool>(true, var_0)))));
    var var_3 = vec4<u32>(~firstLeadingBit(abs(_wgslsmith_add_u32(27148u, 58791u))), 20291u, ~u_input.d.x, 73222u);
    var_2 = vec2<bool>(all(!(!select(vec4<bool>(false, true, var_0, var_0), vec4<bool>(true, false, false, var_2.x), var_0))), !var_0);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-683f)) - _wgslsmith_f_op_f32(-arg_2.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1, arg_2.b.x))) - _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(var_3.x, 32u)], -900f), arg_1.a.c.wx)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.a, -1339f)) * _wgslsmith_f_op_vec2_f32(select(arg_0.a.b, vec2<f32>(-193f, 942f), false))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(187f, arg_1.e, arg_0.e, 1283f))) + _wgslsmith_f_op_vec4_f32(floor(arg_1.a.c)))), u_input.c.x);
}

fn func_1() -> Struct_1 {
    global1 = Struct_2(func_4(func_2(vec2<i32>(15975i, u_input.e & global1.c), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.e, 1772f, global0[_wgslsmith_index_u32(29468u, 32u)]), global1.a.c.yzw))), Struct_2(Struct_1(1000f, _wgslsmith_f_op_vec2_f32(select(global1.a.c.wy, global1.a.b, vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -285f, -1000f, global1.e)), 1u), ~abs(global1.b), u_input.b.x, global1.d, _wgslsmith_f_op_f32(-global1.a.c.x)), Struct_1(global0[_wgslsmith_index_u32(global1.a.d, 32u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(-888f, global1.a.b.x) + _wgslsmith_f_op_vec2_f32(-global1.a.b)), global1.a.c, global1.d.x)), vec3<i32>(-1i) * -vec3<i32>(~0i, global1.c, _wgslsmith_clamp_i32(global1.c, global1.c, 84i)), 1i, func_2(~(global1.b.xy | ~vec2<i32>(-4207i, -9000i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.d.x, 32u)], global1.a.b, vec4<f32>(global0[_wgslsmith_index_u32(69790u, 32u)], -937f, global1.e, 2197f), u_input.a.x), global1.b, 1i, global1.d, global1.a.a), Struct_2(Struct_1(1803f, global1.a.b, vec4<f32>(-124f, -333f, -300f, -342f), 11496u), vec3<i32>(2147483647i, 19517i, 39416i), 9566i, vec3<u32>(4294967295u, 13233u, u_input.c.x), 331f), global1.a).c.wwy - global1.a.c.zyz) - global1.a.c.wzy)).d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1f))))));
    var var_0 = vec3<i32>(6429i, ~(-51237i), _wgslsmith_add_i32(global1.c, 16419i | -global1.c));
    let var_1 = u_input.d.x;
    global0 = array<f32, 32>();
    var_0 = select(vec3<i32>(var_0.x, global1.c, min(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_0.x, global1.c, u_input.b.x), select(global1.b.x, -2147483647i, true)), -2147483647i)), abs(vec3<i32>(-53785i, ~(~(-4040i)), _wgslsmith_div_i32(~var_0.x, -24822i))), all(vec2<bool>(any(vec3<bool>(true, true, true)), !(-1293f > global0[_wgslsmith_index_u32(global1.a.d, 32u)]))));
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-global1.a.c);
    global1 = Struct_2(func_1(), vec3<i32>(u_input.e, -1i, min(max(abs(u_input.e), max(global1.c, u_input.e)), firstLeadingBit(global1.c ^ 1i))), u_input.e, firstLeadingBit(vec3<u32>(~global1.d.x, global1.d.x << (u_input.d.x % 32u), u_input.d.x) & global1.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-global1.e))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(822f + var_0.x) + -1000f)))));
    var var_1 = global1.d.x;
    let var_2 = global1.a;
    var var_3 = global1.a;
    var_3 = global1.a;
    var var_4 = var_3.d;
    let var_5 = -1000f;
    var_3 = Struct_1(-1521f, var_0.xz, func_2(-global1.b.yy >> (~countOneBits(vec2<u32>(88225u, 0u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(112f, global1.a.a, 898f)), var_3.c.zwz))).a.c, 15736u);
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(-50169i, 1i)), u_input.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yz)), select(vec3<i32>(-1i, ~abs(u_input.e), ~global1.c | 64692i), vec3<i32>(global1.c, _wgslsmith_div_i32(_wgslsmith_sub_i32(36146i, 896i), -2147483647i), 72642i), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)))), _wgslsmith_mod_vec3_u32(vec3<u32>(min(min(1u, var_3.d), global1.a.d), abs(1u), ~global1.d.x), _wgslsmith_div_vec3_u32(~(~u_input.a), ~firstTrailingBit(vec3<u32>(1u, var_3.d, 71183u)))), _wgslsmith_div_vec4_i32((-vec4<i32>(u_input.b.x, 1429i, -7391i, global1.c) | vec4<i32>(70139i, global1.c, 30177i, global1.c)) | _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, global1.c, global1.c, 39189i), vec4<i32>(-9509i, u_input.b.x, global1.c, global1.c)), reverseBits(-select(vec4<i32>(u_input.e, u_input.b.x, -2147483647i, u_input.e), vec4<i32>(u_input.b.x, 0i, u_input.e, global1.c), vec4<bool>(false, false, false, true)))));
}

