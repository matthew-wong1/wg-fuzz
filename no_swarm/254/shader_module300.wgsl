struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: Struct_2,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 32>;

var<private> global1: vec2<u32> = vec2<u32>(24501u, 4294967295u);

var<private> global2: array<vec2<i32>, 23>;

var<private> global3: array<Struct_2, 2>;

var<private> global4: i32 = -29506i;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32) -> vec4<u32> {
    let var_0 = (-2147483647i | arg_1.e) & countOneBits((-26080i ^ u_input.c.x) ^ arg_1.e);
    global4 = var_0;
    global1 = u_input.b;
    let var_1 = arg_0.x;
    var var_2 = true;
    return vec4<u32>(_wgslsmith_sub_u32(u_input.a, 4294967295u), ~35029u, arg_1.d, 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<u32>) -> Struct_4 {
    var var_0 = abs(-_wgslsmith_div_i32(i32(-1i) * -36481i, u_input.c.x << (30620u % 32u)) & u_input.c.x);
    var var_1 = firstTrailingBit(~(-abs(vec4<i32>(-10971i, u_input.c.x, -12180i, -1i))));
    global3 = array<Struct_2, 2>();
    var var_2 = _wgslsmith_clamp_vec3_u32(select(arg_1.xxz, countOneBits(arg_1.xww), false & !arg_0.x), vec3<u32>(57748u, 4294967295u, max(arg_1.x, 0u)), arg_1.wxz);
    let var_3 = ~select(vec4<i32>(firstLeadingBit(min(-20443i, 4924i)), var_1.x, var_1.x, -_wgslsmith_sub_i32(var_1.x, var_1.x)), -firstLeadingBit(vec4<i32>(u_input.c.x, 0i, var_1.x, u_input.c.x)), all(!select(vec4<bool>(true, true, arg_0.x, arg_0.x), vec4<bool>(true, false, arg_0.x, true), arg_0.x)));
    return Struct_4(1f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-687f, 1555f, 2322f), vec3<f32>(-1650f, -408f, -2331f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(213f, 1000f, 443f) + vec3<f32>(554f, 146f, 1391f))), vec3<f32>(_wgslsmith_f_op_f32(-206f - -504f), _wgslsmith_f_op_f32(floor(-1341f)), _wgslsmith_f_op_f32(f32(-1f) * -289f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2116f, _wgslsmith_f_op_f32(min(1004f, -551f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_2(~abs(vec2<i32>(var_3.x, u_input.c.x)), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(23194i, u_input.c.x, 7453i, -68464i), vec4<i32>(var_1.x, var_1.x, 1i, var_3.x)), 0u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 427f, -1621f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-466f, 1000f, -906f))), 26929u << ((global1.x << (5722u % 32u)) % 32u), _wgslsmith_div_i32(min(-22785i, var_1.x), abs(var_1.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-358f)))), _wgslsmith_add_u32(34971u, ~(~61738u))), _wgslsmith_mult_u32(~_wgslsmith_div_u32(var_2.x, ~arg_1.x), 12978u), Struct_3(Struct_1(_wgslsmith_sub_vec4_i32(~var_3, _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, 13790i, 55203i, var_3.x), var_3)), _wgslsmith_mod_u32(4294967295u, global1.x), vec3<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(floor(137f)), -278f), _wgslsmith_div_u32(~global1.x, _wgslsmith_div_u32(80716u, arg_1.x)), _wgslsmith_sub_i32(var_1.x, _wgslsmith_mod_i32(1i, 16844i))), _wgslsmith_dot_vec3_i32(var_1.yzz, vec3<i32>(~(-2147483647i), _wgslsmith_clamp_i32(6994i, -1i, u_input.c.x), u_input.c.x)), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2213i, -1i), -vec2<i32>(u_input.c.x, 0i)), -max(var_3.zy, vec2<i32>(var_3.x, -9366i)))));
}

fn func_1() -> Struct_3 {
    var var_0 = vec2<f32>(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -855f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-167f, -1653f))))))));
    global0 = array<vec2<bool>, 32>();
    let var_1 = func_3(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), firstLeadingBit(~(~vec4<u32>(10586u, 42921u, 1u, 0u)) ^ func_2(vec4<f32>(-1523f, -1058f, 1188f, var_0.x), Struct_1(vec4<i32>(u_input.c.x, -2147483647i, 2147483647i, 0i), global1.x, vec3<f32>(-607f, 186f, var_0.x), 1u, u_input.c.x), _wgslsmith_f_op_f32(-381f + var_0.x))));
    let var_2 = var_1.c.b.c;
    global1 = ~(~(~u_input.b));
    return func_3(vec3<bool>(true, any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), false))), !(_wgslsmith_f_op_f32(step(var_2.x, 1238f)) >= 1501f)), vec4<u32>(min(4294967295u, (global1.x ^ 1u) >> (11912u % 32u)), ~(~1u), ~var_1.e.a.d, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 44108u, global1.x, 0u), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.b.x, u_input.a, 4294967295u, 4294967295u)), ~vec4<u32>(38089u, var_1.d, u_input.b.x, var_1.d))))).e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = select(!vec3<bool>(_wgslsmith_f_op_f32(-var_0.a.c.x) == _wgslsmith_f_op_f32(f32(-1f) * -2820f), select(true, false, false) | false, true), vec3<bool>(true, false, true & any(vec3<bool>(false, false, true))), any(select(global0[_wgslsmith_index_u32(1u >> (1u % 32u), 32u)], vec2<bool>(false, true), any(vec4<bool>(true, true, true, false)))) || false);
    global1 = _wgslsmith_div_vec2_u32(vec2<u32>(31900u, _wgslsmith_mod_u32(28205u | u_input.a, global1.x)) >> (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_clamp_u32(~13679u, global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(2664u, 0u, 4294967295u, 590u), vec4<u32>(global1.x, 4294967295u, var_0.a.d, 16487u))), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.c.x, var_0.a.c.x, var_0.a.c.x, -569f) - vec4<f32>(839f, 1188f, 1120f, var_0.a.c.x)), Struct_1(var_0.a.a, 1u, vec3<f32>(-1906f, var_0.a.c.x, var_0.a.c.x), global1.x, -62592i), _wgslsmith_f_op_f32(-var_0.a.c.x)).x) & _wgslsmith_clamp_vec2_u32(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(-1961f, var_0.a.c.x, -755f, var_0.a.c.x), vec4<f32>(var_0.a.c.x, -508f, var_0.a.c.x, var_0.a.c.x)), Struct_1(vec4<i32>(u_input.c.x, u_input.c.x, 2907i, 6992i), global1.x, var_0.a.c, global1.x, 46469i), -137f).xy, ~vec2<u32>(34957u, 54305u), u_input.b));
    var var_2 = var_1.x;
    var var_3 = func_3(vec3<bool>(false, !(var_0.a.c.x <= var_0.a.c.x) && !(42853u <= global1.x), select(true, var_1.x & (false | var_1.x), var_1.x)), func_2(vec4<f32>(var_0.a.c.x, -1230f, 1488f, func_1().a.c.x), var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.c.x + 370f) + 344f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(556f + var_0.a.c.x)))));
    let var_4 = Struct_1(var_0.a.a, 20586u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.a.c, vec3<f32>(var_3.a, var_3.a, 1652f), vec3<bool>(false, var_1.x, var_1.x))), vec3<f32>(var_3.a, 893f, -2243f)) * var_3.b) + var_3.b), var_3.c.b.b, 11516i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3.a));
}

