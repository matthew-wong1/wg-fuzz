struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<i32>(51246i, 45406i, 2147483647i, 34i), vec4<u32>(0u, 119974u, 8692u, 0u), vec3<i32>(59103i, 37465i, i32(-2147483648)), vec2<bool>(false, true)), Struct_1(vec4<i32>(-12049i, 2147483647i, 2147483647i, 1i), vec4<u32>(0u, 0u, 0u, 20758u), vec3<i32>(-7681i, -22419i, 30985i), vec2<bool>(true, false)), Struct_1(vec4<i32>(-27817i, 8134i, 38835i, i32(-2147483648)), vec4<u32>(0u, 1u, 1u, 4294967295u), vec3<i32>(-1i, -1i, -632i), vec2<bool>(true, false)), Struct_1(vec4<i32>(-5656i, 34152i, 0i, 7846i), vec4<u32>(26124u, 4294967295u, 19351u, 37210u), vec3<i32>(0i, -27350i, -377i), vec2<bool>(false, false)), Struct_1(vec4<i32>(10621i, 7633i, -11263i, 10826i), vec4<u32>(2328u, 26139u, 4294967295u, 31594u), vec3<i32>(65188i, 1i, 2147483647i), vec2<bool>(true, true)), Struct_1(vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 7545i), vec4<u32>(1u, 21379u, 37313u, 1u), vec3<i32>(-11490i, 0i, -73053i), vec2<bool>(false, true)), Struct_1(vec4<i32>(36650i, -1i, 0i, -68257i), vec4<u32>(67703u, 16557u, 62734u, 0u), vec3<i32>(2147483647i, 2147483647i, -68239i), vec2<bool>(false, false)), Struct_1(vec4<i32>(0i, -4838i, 16113i, 2147483647i), vec4<u32>(8095u, 1u, 23505u, 24789u), vec3<i32>(-32828i, 2147483647i, 1i), vec2<bool>(true, false)), Struct_1(vec4<i32>(1513i, 1i, 1i, 0i), vec4<u32>(131798u, 68295u, 4294967295u, 36880u), vec3<i32>(-15934i, 46057i, -3905i), vec2<bool>(true, true)), Struct_1(vec4<i32>(-1i, i32(-2147483648), 30328i, 24341i), vec4<u32>(4294967295u, 34930u, 64951u, 22181u), vec3<i32>(i32(-2147483648), 33175i, -10829i), vec2<bool>(true, false)), Struct_1(vec4<i32>(1i, -93017i, -1i, -1i), vec4<u32>(46004u, 0u, 25967u, 0u), vec3<i32>(-1i, i32(-2147483648), 27616i), vec2<bool>(true, true)), Struct_1(vec4<i32>(2147483647i, 24524i, i32(-2147483648), -28034i), vec4<u32>(0u, 4294967295u, 45695u, 15746u), vec3<i32>(2147483647i, 29571i, 17117i), vec2<bool>(false, true)), Struct_1(vec4<i32>(2147483647i, 1i, 31457i, -14303i), vec4<u32>(0u, 17163u, 107913u, 4294967295u), vec3<i32>(i32(-2147483648), -3035i, -2903i), vec2<bool>(true, true)), Struct_1(vec4<i32>(61519i, 1i, 6765i, i32(-2147483648)), vec4<u32>(25045u, 33620u, 1u, 1u), vec3<i32>(30551i, 1i, -23033i), vec2<bool>(false, false)), Struct_1(vec4<i32>(0i, -1i, -53997i, 2147483647i), vec4<u32>(65659u, 1u, 38168u, 3114u), vec3<i32>(-1i, 0i, 2147483647i), vec2<bool>(false, false)), Struct_1(vec4<i32>(i32(-2147483648), -38669i, 1i, 0i), vec4<u32>(56628u, 43821u, 1u, 1u), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec2<bool>(false, true)), Struct_1(vec4<i32>(11044i, -28960i, 15143i, -9566i), vec4<u32>(33231u, 0u, 19268u, 4294967295u), vec3<i32>(1i, i32(-2147483648), -2881i), vec2<bool>(false, true)), Struct_1(vec4<i32>(47458i, -54653i, 0i, 1i), vec4<u32>(40893u, 1053u, 1u, 4294967295u), vec3<i32>(2147483647i, 2147483647i, 1i), vec2<bool>(false, true)), Struct_1(vec4<i32>(44405i, 9408i, 1i, -20757i), vec4<u32>(0u, 68453u, 0u, 1u), vec3<i32>(2147483647i, 2147483647i, -1i), vec2<bool>(false, true)), Struct_1(vec4<i32>(1i, 2147483647i, 1i, -1i), vec4<u32>(123846u, 3047u, 21520u, 0u), vec3<i32>(-1i, 12810i, -18957i), vec2<bool>(true, true)), Struct_1(vec4<i32>(-34265i, 1i, 1i, 3726i), vec4<u32>(45605u, 4294967295u, 75642u, 4294967295u), vec3<i32>(45778i, i32(-2147483648), 0i), vec2<bool>(false, true)), Struct_1(vec4<i32>(-59797i, 1i, 1i, -1i), vec4<u32>(1u, 4294967295u, 14914u, 1u), vec3<i32>(12554i, 0i, 35381i), vec2<bool>(true, true)));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>, arg_3: vec4<i32>) -> vec4<u32> {
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-750f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-661f)) * _wgslsmith_f_op_f32(280f * -2089f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(732f, -178f)))));
    var var_1 = Struct_1(~_wgslsmith_clamp_vec4_i32(arg_0.a, select(u_input.c << (arg_2 % vec4<u32>(32u)), arg_0.a, 26098u > arg_2.x), -abs(vec4<i32>(-16804i, 13012i, 4217i, 15022i))), abs(arg_2), min(~_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(u_input.a, -1i, 0i)), firstLeadingBit(arg_0.a.yxw)), max(-vec3<i32>(13199i, 35085i, arg_3.x), u_input.c.wyw)), select(arg_0.d, select(arg_0.d, vec2<bool>(true, true), !arg_0.d.x), ~firstTrailingBit(6026u) <= arg_2.x));
    var var_2 = (~arg_0.b << (~countOneBits(vec4<u32>(54307u, 51188u, 56961u, 4452u)) % vec4<u32>(32u))) & _wgslsmith_mod_vec4_u32(arg_0.b, vec4<u32>(arg_2.x, 30397u, 47494u, u_input.d));
    return abs(arg_2);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(vec4<i32>(select(1i, arg_0.a.x, _wgslsmith_f_op_f32(872f - -609f) == _wgslsmith_f_op_f32(step(-555f, 1057f))), -7636i, 1i, reverseBits(abs(arg_1.a.x))), ~_wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 1u, 1u, 33172u), arg_1.b), ~func_3(global0[_wgslsmith_index_u32(u_input.d, 22u)], arg_1.a.x, arg_1.b, vec4<i32>(-33192i, 44076i, u_input.c.x, arg_1.c.x))), vec3<i32>(~(0i), 11478i, 20004i), arg_0.d);
    global0 = array<Struct_1, 22>();
    let var_1 = arg_1.b;
    let var_2 = !select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.d.x, var_0.d.x, arg_1.d.x, false), vec4<bool>(arg_0.d.x, true, false, true), true), var_0.d.x), select(select(vec4<bool>(false, false, true, false), vec4<bool>(arg_1.d.x, arg_1.d.x, arg_0.d.x, false), vec4<bool>(arg_1.d.x, false, false, arg_0.d.x)), vec4<bool>(var_0.d.x, arg_0.d.x, true, var_0.d.x), select(vec4<bool>(false, true, arg_0.d.x, arg_1.d.x), vec4<bool>(arg_1.d.x, false, true, false), vec4<bool>(true, false, false, arg_1.d.x))), select(vec4<bool>(true, arg_1.d.x, arg_1.d.x, true), select(vec4<bool>(var_0.d.x, true, arg_0.d.x, true), vec4<bool>(var_0.d.x, false, arg_1.d.x, arg_1.d.x), vec4<bool>(true, arg_0.d.x, true, var_0.d.x)), all(arg_1.d))), vec4<bool>(!var_0.d.x, arg_0.d.x, false, false), vec4<bool>(true, !(!arg_1.d.x), arg_0.d.x, any(select(vec4<bool>(var_0.d.x, false, arg_1.d.x, true), vec4<bool>(true, false, arg_1.d.x, false), vec4<bool>(false, true, true, false)))));
    global0 = array<Struct_1, 22>();
    return !vec4<bool>(!((arg_1.c.x | 451i) > min(arg_1.c.x, -11301i)), arg_1.d.x, true, arg_0.d.x);
}

fn func_4(arg_0: i32, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = arg_1.wyy;
    let var_1 = any(vec3<bool>(var_0.x, arg_1.x, !var_0.x));
    global0 = array<Struct_1, 22>();
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(804f)) - -551f)), -259f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1234f, _wgslsmith_f_op_f32(max(895f, -238f)))), -486f))) - vec3<f32>(500f, _wgslsmith_f_op_f32(-194f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-951f)), -827f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(313f - -896f) - 1020f)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), -1103f), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -835f), _wgslsmith_f_op_f32(-546f * 944f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))))));
    return Struct_1(~vec4<i32>(min(u_input.a ^ -2147483647i, ~18600i), min(~76095i, ~15185i), firstLeadingBit(-556i), u_input.b | u_input.a), abs(vec4<u32>(~(~u_input.d), _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.d, u_input.d), max(u_input.d, u_input.d)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, 7159u), vec3<u32>(82976u, 34065u, u_input.d)), abs(1u) >> (u_input.d % 32u))), vec3<i32>(0i, _wgslsmith_mod_i32(u_input.c.x, ~2147483647i), abs(arg_0)), vec2<bool>(!(!arg_1.x | any(var_0)), arg_1.x));
}

fn func_1(arg_0: f32) -> StorageBuffer {
    var var_0 = func_4(1i, select(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), false)), select(vec4<bool>(true, true, true, true), !func_2(global0[_wgslsmith_index_u32(u_input.d, 22u)], global0[_wgslsmith_index_u32(u_input.d, 22u)]), all(vec3<bool>(true, true, true))), all(!func_2(global0[_wgslsmith_index_u32(u_input.d, 22u)], global0[_wgslsmith_index_u32(u_input.d, 22u)]).yw)));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-714f - _wgslsmith_div_f32(-1494f, _wgslsmith_f_op_f32(arg_0 - arg_0))))));
    let var_2 = select(select(vec4<bool>(true, true, true, true), !vec4<bool>(all(vec4<bool>(var_0.d.x, false, false, true)), true, true, var_0.d.x && false), -261f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) + _wgslsmith_f_op_f32(-arg_0))), vec4<bool>(all(!(!vec4<bool>(var_0.d.x, true, var_0.d.x, var_0.d.x))), true, true, arg_0 < 1000f), select(!select(!vec4<bool>(true, false, true, var_0.d.x), vec4<bool>(var_0.d.x, false, true, false), select(vec4<bool>(true, var_0.d.x, var_0.d.x, false), vec4<bool>(false, false, true, var_0.d.x), vec4<bool>(var_0.d.x, true, true, false))), vec4<bool>(all(vec4<bool>(false, true, false, var_0.d.x)) & true, true, !var_0.d.x, all(select(vec2<bool>(true, var_0.d.x), vec2<bool>(true, var_0.d.x), vec2<bool>(var_0.d.x, false)))), vec4<bool>(!var_0.d.x, !all(vec3<bool>(var_0.d.x, true, true)), true, true)));
    let var_3 = _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(~(vec2<u32>(var_0.b.x, 0u) << (_wgslsmith_clamp_vec2_u32(var_0.b.xy, vec2<u32>(var_0.b.x, 1u), var_0.b.zx) % vec2<u32>(32u))), vec2<u32>(1u, firstTrailingBit(~var_0.b.x))), vec2<u32>(var_0.b.x, ~1u), var_0.b.xw);
    var_1 = 711f;
    return StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), -850f)), arg_0), max(countOneBits(7676i), -23247i), vec3<f32>(894f, arg_0, 672f), ~(~26288u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1786f)))));
}

