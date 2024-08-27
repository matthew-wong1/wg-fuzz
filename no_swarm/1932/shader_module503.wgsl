struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false));

var<private> global1: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(-1161f, 1518f, -472f, -350f), vec4<f32>(-1104f, 1403f, 1554f, 464f), vec4<f32>(-352f, 1582f, -1339f, 530f), vec4<f32>(-1219f, 117f, -501f, 225f), vec4<f32>(349f, -1000f, -357f, 807f), vec4<f32>(-138f, -1483f, 424f, -618f), vec4<f32>(-453f, 272f, -978f, -558f), vec4<f32>(1832f, 1071f, 1592f, -246f));

var<private> global2: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(0u, 1u, 64615u), vec3<u32>(30502u, 0u, 21345u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(84257u, 25247u, 0u), vec3<u32>(1u, 0u, 29311u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 0u, 29736u), vec3<u32>(44393u, 43634u, 4294967295u), vec3<u32>(0u, 21323u, 74576u), vec3<u32>(89767u, 42474u, 4037u), vec3<u32>(1u, 41068u, 77610u), vec3<u32>(74413u, 4294967295u, 11642u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(62249u, 11766u, 3412u), vec3<u32>(40453u, 8382u, 9932u), vec3<u32>(0u, 1269u, 0u), vec3<u32>(1u, 66619u, 59000u), vec3<u32>(9177u, 24187u, 18376u), vec3<u32>(1u, 30235u, 43113u), vec3<u32>(4294967295u, 0u, 15003u), vec3<u32>(1u, 95205u, 1u), vec3<u32>(1u, 32915u, 0u), vec3<u32>(35746u, 0u, 0u), vec3<u32>(1u, 1u, 0u), vec3<u32>(44384u, 0u, 33325u), vec3<u32>(50395u, 4294967295u, 4294967295u), vec3<u32>(0u, 56562u, 93468u));

var<private> global3: vec4<f32> = vec4<f32>(180f, 687f, 1971f, -410f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global1 = array<vec4<f32>, 8>();
    let var_0 = _wgslsmith_f_op_vec3_f32(round(arg_0.c));
    return vec3<bool>(any(!global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(u_input.a, 28u)], vec3<u32>(1u, u_input.a, 4342u)), 12u)]), true, _wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, firstTrailingBit(0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(88819u, 1u, u_input.a, arg_0.d.x) ^ vec4<u32>(u_input.a, arg_0.d.x, arg_0.d.x, 0u), ~vec4<u32>(15634u, 4294967295u, u_input.a, u_input.a))) == u_input.a);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global3.x, vec4<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))), !any(func_3(Struct_1(1000f, vec4<bool>(false, true, true, false), global3.yww, vec2<u32>(u_input.a, 4294967295u), vec3<i32>(-16811i, 19896i, u_input.c)))), select(true, true & (u_input.c != u_input.b.x), true), !any(vec3<bool>(true, false, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(global3.x - 189f), global3.x))), vec2<u32>(~(~u_input.a), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(u_input.a, 21576u)), vec2<u32>(0u, u_input.a)), _wgslsmith_add_vec2_u32(min(vec2<u32>(36112u, 26641u), vec2<u32>(u_input.a, u_input.a)), abs(vec2<u32>(0u, 1u))))), u_input.b);
    let var_1 = !any(vec2<bool>(_wgslsmith_f_op_f32(sign(793f)) <= _wgslsmith_f_op_f32(floor(1657f)), any(select(vec3<bool>(var_0.b.x, true, var_0.b.x), vec3<bool>(true, var_0.b.x, false), var_0.b.x))));
    global0 = array<vec3<bool>, 12>();
    let var_2 = ~(~(select(1u, min(69239u, u_input.a), var_0.b.x | true) << (var_0.d.x % 32u)));
    var var_3 = func_3(var_0);
    return var_0;
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = vec3<i32>(firstTrailingBit(_wgslsmith_mod_i32(func_2().e.x, -33667i)), i32(-1i) * -1i, -_wgslsmith_mult_i32(_wgslsmith_mult_i32(var_0.e.x, u_input.b.x), ~arg_1) & u_input.d);
    var var_2 = ~(u_input.a >> (0u % 32u));
    var var_3 = var_0;
    global2 = array<vec3<u32>, 28>();
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    global1 = array<vec4<f32>, 8>();
    let var_0 = _wgslsmith_sub_vec2_i32(-_wgslsmith_clamp_vec2_i32(func_1(_wgslsmith_mod_u32(4294967295u, u_input.a), _wgslsmith_dot_vec3_i32(arg_0.e, u_input.b)).e.yx, u_input.b.yy, -(~vec2<i32>(-1188i, arg_0.e.x))), func_2().e.zz);
    var var_1 = arg_0.e.x;
    var var_2 = false;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -573f)), !vec4<bool>(!arg_1.a.b.x, true, arg_0.b.x | arg_0.b.x, arg_0.b.x), vec3<f32>(_wgslsmith_f_op_f32(min(global3.x, arg_0.a)), -504f, _wgslsmith_f_op_f32(trunc(-1140f))), vec2<u32>(~1u, 34436u), max(vec3<i32>(18078i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.e.x, u_input.b.x, u_input.d, -2147483647i), vec4<i32>(-2147483647i, 1i, 1i, -24798i)), ~(-1i)), func_2().e)), arg_0.c);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~u_input.d, reverseBits(reverseBits(-1i)), false || any(vec4<bool>(true, true, true, true)));
    var var_1 = abs(~select(vec4<u32>(4294967295u, 31794u, 79030u, u_input.a), vec4<u32>(81602u, 7855u, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), true)) & ~select(countOneBits(~vec4<u32>(u_input.a, u_input.a, u_input.a, 7613u)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) ^ (vec4<u32>(u_input.a, 5274u, u_input.a, 20090u) & vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<bool>(true, true, true, true));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-global3.x)) * -1293f), -573f)) * -292f);
    var var_3 = firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_1.wxz, var_1.xxz), 81925u));
    var var_4 = func_4(func_1(var_1.x, ~_wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, u_input.c), u_input.c)), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-644f))), vec4<bool>(true, true, true, true), global3.yyx, var_1.wx, vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.d), vec2<i32>(u_input.b.x, -1i)), u_input.c & u_input.d, u_input.b.x)), global3.xxz));
    let var_5 = false;
    var var_6 = Struct_2(Struct_1(global3.x, func_4(func_2(), Struct_2(Struct_1(var_2, vec4<bool>(var_5, true, var_5, true), vec3<f32>(-1000f, 221f, global3.x), vec2<u32>(151449u, var_1.x), var_4.e), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.x, global3.x, -174f), var_4.c, true)))).b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_4.a), _wgslsmith_f_op_f32(var_4.c.x - var_2), _wgslsmith_f_op_f32(940f - 447f))), abs(var_1.zx), _wgslsmith_mult_vec3_i32(u_input.b, _wgslsmith_mult_vec3_i32(max(var_4.e, vec3<i32>(91294i, u_input.d, 22163i)), countOneBits(vec3<i32>(var_4.e.x, u_input.d, u_input.b.x))))), global3.wwz);
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.x);
}

