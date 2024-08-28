struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 19>;

var<private> global1: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(29014u, 55961u), vec2<u32>(17497u, 4294967295u), vec2<u32>(31435u, 15383u), vec2<u32>(6173u, 14310u), vec2<u32>(25800u, 0u), vec2<u32>(54661u, 23430u), vec2<u32>(17984u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(60023u, 34937u), vec2<u32>(35078u, 42438u), vec2<u32>(50452u, 0u), vec2<u32>(27898u, 29966u), vec2<u32>(25550u, 10149u), vec2<u32>(53301u, 23395u), vec2<u32>(21650u, 9748u), vec2<u32>(0u, 64818u), vec2<u32>(4294967295u, 0u), vec2<u32>(72293u, 5584u), vec2<u32>(0u, 26346u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 24789u), vec2<u32>(22827u, 859u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 29866u), vec2<u32>(4294967295u, 1u), vec2<u32>(10242u, 20688u), vec2<u32>(92981u, 0u));

var<private> global2: array<Struct_2, 9>;

var<private> global3: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(1i, 2147483647i, i32(-2147483648), 7862i), vec4<i32>(2147483647i, 12285i, -31078i, -1i), vec4<i32>(-32463i, 0i, 11736i, 6450i), vec4<i32>(0i, 1i, 2147483647i, -6304i), vec4<i32>(-1i, 0i, -6571i, -33804i), vec4<i32>(-13865i, -27792i, 0i, -33920i), vec4<i32>(-12697i, 2147483647i, 0i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 12627i, 2147483647i, 2147483647i), vec4<i32>(7224i, 3450i, 0i, 77313i), vec4<i32>(13714i, i32(-2147483648), 0i, 1i), vec4<i32>(-1i, -10777i, i32(-2147483648), -1i), vec4<i32>(2147483647i, -1i, 18989i, 46549i), vec4<i32>(0i, 42268i, -51436i, -1i), vec4<i32>(-50001i, -17588i, 1686i, 8633i), vec4<i32>(12767i, -22541i, 1i, 43952i), vec4<i32>(-12756i, -1i, 1i, 2147483647i), vec4<i32>(-45232i, -26512i, i32(-2147483648), 27744i), vec4<i32>(55578i, 0i, 28806i, -30535i), vec4<i32>(-18707i, 2147483647i, 10152i, i32(-2147483648)), vec4<i32>(21279i, -1i, 28854i, 20442i), vec4<i32>(0i, -1i, 1i, -1i), vec4<i32>(14721i, -12816i, 2067i, 18128i), vec4<i32>(-25267i, 0i, i32(-2147483648), 6678i), vec4<i32>(0i, i32(-2147483648), 2147483647i, -34472i), vec4<i32>(-11900i, 6177i, -1i, 44395i), vec4<i32>(i32(-2147483648), -1i, 1i, -36983i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: vec2<u32>) -> u32 {
    let var_0 = ~((_wgslsmith_mod_u32(select(arg_2, 68817u, false), _wgslsmith_add_u32(arg_3.x, arg_2)) << (arg_3.x % 32u)) ^ _wgslsmith_add_u32(_wgslsmith_sub_u32(~u_input.a.x, arg_3.x), ~(~82488u)));
    var var_1 = global2[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(0u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.yyz, vec3<u32>(1u, arg_2, 4294967295u)), u_input.a.ywz)) | 38748u), 9u)];
    global1 = array<vec2<u32>, 28>();
    let var_2 = Struct_2(_wgslsmith_sub_vec3_i32(vec3<i32>(~(var_1.a.x ^ 0i), ~min(var_1.a.x, 1i), -u_input.c), u_input.b.xyx), var_1.b, arg_0, ~u_input.a);
    var_1 = Struct_2(-abs(abs(-u_input.b.zzx)), vec2<bool>(false, (_wgslsmith_f_op_f32(arg_0 * var_2.c) != 145f) & (any(var_1.b) | var_1.b.x)), _wgslsmith_f_op_f32(select(var_1.c, -256f, true)), ~u_input.a);
    return arg_3.x;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>) -> u32 {
    var var_0 = arg_0.a;
    var var_1 = func_2(-1752f, u_input.a.x <= 37007u, arg_0.b, vec2<u32>(arg_0.b, _wgslsmith_mod_u32(7719u, arg_0.b)));
    var var_2 = Struct_1(1i, 7703i);
    var_1 = u_input.a.x;
    var_0 = arg_0.a;
    return ~arg_0.b;
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -244f) - 1459f)))))));
    return select(select(vec3<bool>(true || all(vec2<bool>(true, true)), true, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, 64620i, -9594i), vec4<i32>(u_input.b.x, u_input.c, 1i, u_input.c)) > ~0i), select(vec3<bool>(true, true, true), vec3<bool>(u_input.c <= u_input.c, all(vec4<bool>(true, false, true, true)), all(vec2<bool>(false, false))), vec3<bool>(true, true, all(vec4<bool>(false, false, false, true)))), vec3<bool>(false, all(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))))), !vec3<bool>(select(u_input.a.x < u_input.a.x, true, true), true, false), vec3<bool>(all(vec3<bool>(true, true, true)), true, true));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: i32, arg_3: vec4<bool>) -> Struct_5 {
    global1 = array<vec2<u32>, 28>();
    global1 = array<vec2<u32>, 28>();
    var var_0 = Struct_4(vec2<i32>(_wgslsmith_mod_i32(arg_2 >> (firstLeadingBit(1u) % 32u), -5800i), -582i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-404f - -540f) * _wgslsmith_f_op_f32(-1034f - 1000f)), 369f)));
    return Struct_5(!(!vec2<bool>(arg_1.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b + var_0.b), _wgslsmith_f_op_f32(abs(-1508f)))) * 611f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 28>();
    var var_0 = func_4(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(0u, firstTrailingBit(u_input.a.x)), 0u, u_input.a.x), vec3<u32>(~func_1(Struct_3(Struct_1(u_input.b.x, u_input.c), u_input.a.x, -2147483647i, vec2<i32>(2147483647i, u_input.c), vec3<bool>(true, true, true)), vec2<bool>(false, true)), abs(u_input.a.x << (u_input.a.x % 32u)), ~39446u)), !func_3(), 0i, vec4<bool>(true, true, func_3().x, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false))));
    let var_1 = min(vec3<i32>(reverseBits(min(-76306i, -1i)) << (_wgslsmith_sub_u32(~u_input.a.x, u_input.a.x) % 32u), firstTrailingBit(_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, u_input.b.x, u_input.c), u_input.b.wxy)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, ~u_input.b.x), vec2<i32>(u_input.c, 22066i) | _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.b.x), vec2<i32>(u_input.c, -1i)))), vec3<i32>(-(~(~2147483647i)), _wgslsmith_dot_vec3_i32(~u_input.b.wyz >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(13052u, 4294967295u, u_input.a.x)) % vec3<u32>(32u)), firstLeadingBit(reverseBits(vec3<i32>(0i, -1i, 264i)))), u_input.c));
    global2 = array<Struct_2, 9>();
    global3 = array<vec4<i32>, 26>();
    global2 = array<Struct_2, 9>();
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-24320i, var_1.x, i32(-1i) * -32118i, firstTrailingBit(-1i) << (~(~u_input.a.x) % 32u)), _wgslsmith_mult_vec4_i32(max(-u_input.b, global3[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec4<i32>(-2147483647i, _wgslsmith_clamp_i32(firstTrailingBit(3521i), 34833i, reverseBits(var_1.x)), -u_input.b.x, -2147483647i)));
    var var_3 = !(!vec4<bool>(var_0.a.x, select(true, false && var_0.a.x, false), true, func_4(u_input.a.wxy, select(vec3<bool>(false, var_0.a.x, false), vec3<bool>(var_0.a.x, var_0.a.x, true), var_0.a.x), -18318i, !vec4<bool>(true, var_0.a.x, var_0.a.x, false)).a.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -(var_1 ^ max(u_input.b.ywy, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, var_1.x, 0i), var_1))), u_input.a);
}

