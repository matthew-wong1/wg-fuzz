struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: vec3<f32>,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(false, Struct_3(vec2<i32>(-23234i, i32(-2147483648)), false, vec3<f32>(-409f, -1061f, 219f), Struct_2(Struct_1(vec2<i32>(0i, 1i), -14219i)), -1000f), false), Struct_4(false, Struct_3(vec2<i32>(-2614i, 19723i), true, vec3<f32>(-1432f, -850f, -1025f), Struct_2(Struct_1(vec2<i32>(12527i, i32(-2147483648)), i32(-2147483648))), -147f), true), Struct_4(false, Struct_3(vec2<i32>(12508i, -1i), false, vec3<f32>(-1000f, -791f, 486f), Struct_2(Struct_1(vec2<i32>(-1i, 1i), 8346i)), -1492f), false), Struct_4(true, Struct_3(vec2<i32>(-1i, -21112i), true, vec3<f32>(626f, -261f, -1486f), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -25468i), -59855i)), 518f), true), Struct_4(false, Struct_3(vec2<i32>(i32(-2147483648), 1i), false, vec3<f32>(-1235f, 182f, -405f), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 21323i), 7696i)), 692f), true), Struct_4(true, Struct_3(vec2<i32>(i32(-2147483648), -33633i), true, vec3<f32>(1000f, -825f, 474f), Struct_2(Struct_1(vec2<i32>(18719i, 1i), -12236i)), -1000f), true), Struct_4(true, Struct_3(vec2<i32>(-19787i, 0i), false, vec3<f32>(-723f, -623f, -1236f), Struct_2(Struct_1(vec2<i32>(1i, 10388i), 27870i)), -318f), false), Struct_4(false, Struct_3(vec2<i32>(i32(-2147483648), 8328i), false, vec3<f32>(-249f, -955f, 617f), Struct_2(Struct_1(vec2<i32>(-65567i, 0i), 25717i)), -1530f), true), Struct_4(false, Struct_3(vec2<i32>(-40687i, -18503i), false, vec3<f32>(709f, -189f, -1422f), Struct_2(Struct_1(vec2<i32>(15148i, 1i), i32(-2147483648))), 110f), true), Struct_4(false, Struct_3(vec2<i32>(i32(-2147483648), 1i), true, vec3<f32>(995f, -600f, 460f), Struct_2(Struct_1(vec2<i32>(0i, 17426i), 2147483647i)), 654f), false), Struct_4(true, Struct_3(vec2<i32>(16102i, 0i), false, vec3<f32>(1653f, 543f, 1351f), Struct_2(Struct_1(vec2<i32>(-1241i, -49735i), 2147483647i)), -776f), true), Struct_4(true, Struct_3(vec2<i32>(2147483647i, -15353i), true, vec3<f32>(693f, 1000f, -347f), Struct_2(Struct_1(vec2<i32>(25899i, 1i), -58259i)), 865f), false), Struct_4(true, Struct_3(vec2<i32>(-43735i, 1i), false, vec3<f32>(234f, -1349f, -245f), Struct_2(Struct_1(vec2<i32>(2147483647i, -5195i), -4086i)), -1848f), false), Struct_4(false, Struct_3(vec2<i32>(-1i, -1i), false, vec3<f32>(-1459f, -897f, 976f), Struct_2(Struct_1(vec2<i32>(2147483647i, -1i), -33238i)), -2566f), false), Struct_4(false, Struct_3(vec2<i32>(i32(-2147483648), -25961i), false, vec3<f32>(1868f, -1328f, 789f), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 1i), -8629i)), -1000f), false), Struct_4(true, Struct_3(vec2<i32>(i32(-2147483648), 19970i), true, vec3<f32>(-753f, -278f, 2200f), Struct_2(Struct_1(vec2<i32>(56381i, i32(-2147483648)), -51849i)), 1000f), true), Struct_4(false, Struct_3(vec2<i32>(-28266i, 1i), true, vec3<f32>(253f, 287f, 1613f), Struct_2(Struct_1(vec2<i32>(-1i, -10395i), 1i)), -1106f), true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec2<u32> {
    let var_0 = ~4294967295u;
    let var_1 = ~var_0;
    var var_2 = i32(-1i) * -12246i;
    let var_3 = true;
    global0 = _wgslsmith_f_op_f32(step(-1341f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1191f), _wgslsmith_f_op_f32(777f + 623f)))) * _wgslsmith_f_op_f32(f32(-1f) * -755f))));
    return ~vec2<u32>(0u, u_input.b);
}

fn func_2(arg_0: i32) -> vec3<i32> {
    let var_0 = global2[_wgslsmith_index_u32(u_input.b, 17u)];
    let var_1 = _wgslsmith_mod_vec2_u32(countOneBits(select(countOneBits(vec2<u32>(8136u, 8817u)), func_3(), !all(vec2<bool>(false, global1.x)))), abs(~_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b, u_input.a), ~vec2<u32>(u_input.a, u_input.a))));
    global0 = 218f;
    return ~(-(~(-vec3<i32>(1i, 2147483647i, 51923i))) | vec3<i32>(-4108i, arg_0, _wgslsmith_sub_i32(_wgslsmith_div_i32(arg_0, -28892i), 27629i)));
}

fn func_1() -> Struct_4 {
    var var_0 = vec3<i32>(-1i) * -(~(-(~vec3<i32>(1849i, 5320i, -1i))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(535f, 308f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -366f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-842f, 471f))))))));
    var_0 = min(_wgslsmith_mult_vec3_i32(select(-(~vec3<i32>(2147483647i, var_0.x, -71209i)), _wgslsmith_div_vec3_i32(vec3<i32>(30894i, var_0.x, var_0.x), vec3<i32>(var_0.x, var_0.x, -2147483647i)) << (~vec3<u32>(40756u, u_input.b, u_input.b) % vec3<u32>(32u)), any(!vec4<bool>(false, false, global1.x, true))), countOneBits((vec3<i32>(1i, -1i, var_0.x) | vec3<i32>(-2147483647i, var_0.x, 0i)) ^ reverseBits(vec3<i32>(-1i, 2147483647i, -31165i)))), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(1i, 0i, -18860i) | vec3<i32>(var_0.x, var_0.x, 23047i)), min(vec3<i32>(var_0.x, -30412i, var_0.x), func_2(2147483647i)), vec3<i32>(-1i, _wgslsmith_clamp_i32(var_0.x, -66051i, var_0.x), var_0.x)), firstTrailingBit(vec3<i32>(-1i) * -vec3<i32>(var_0.x, var_0.x, var_0.x))));
    let var_2 = Struct_3(vec2<i32>(_wgslsmith_add_i32(-var_0.x, var_0.x), var_0.x), var_1.x > var_1.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(var_1.x, -1397f), _wgslsmith_f_op_f32(step(var_1.x, -2172f)), -277f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -1003f, var_1.x)), vec3<f32>(var_1.x, var_1.x, 1369f), !global1.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -499f, var_1.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_1.x, -132f) + vec3<f32>(-1564f, -2023f, -693f))), vec3<f32>(var_1.x, _wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -739f)))), Struct_2(Struct_1(var_0.yy, -8474i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.x, -37973i), vec3<i32>(29383i, -1i, var_0.x)))), 101f);
    var var_3 = Struct_2(Struct_1(vec2<i32>(-1i) * -var_0.zz, -1i));
    return Struct_4(!var_2.b | true, var_2, var_2.b);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: bool) -> vec3<f32> {
    global1 = !vec4<bool>(global1.x, (_wgslsmith_f_op_f32(arg_0.b.e + -408f) > _wgslsmith_f_op_f32(-633f + arg_0.b.e)) != true, !(func_1().b.b && arg_0.b.b), false);
    global2 = array<Struct_4, 17>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.c.x) - _wgslsmith_f_op_f32(449f - _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.c.x, arg_0.b.c.x)))));
    let var_0 = true;
    let var_1 = 0i;
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(arg_0.b.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.b.c, vec3<f32>(-695f, _wgslsmith_f_op_f32(arg_0.b.e - arg_0.b.e), _wgslsmith_f_op_f32(ceil(-362f))), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(max(_wgslsmith_add_u32(~60379u, 17870u) & u_input.a, 1u), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_4(func_1(), Struct_2(func_1().b.d.a), -func_1().b.a, true)), _wgslsmith_mult_vec3_u32(firstLeadingBit(min(_wgslsmith_sub_vec3_u32(vec3<u32>(23563u, u_input.b, 0u), vec3<u32>(u_input.b, u_input.b, u_input.a)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.a, u_input.b), vec3<u32>(u_input.b, u_input.a, u_input.a), vec3<u32>(4294967295u, 4294967295u, 4294967295u)))), min(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, 81451u) | vec3<u32>(u_input.b, u_input.b, u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 70490u, u_input.b), vec3<u32>(u_input.a, 14351u, u_input.a))), min(~vec3<u32>(u_input.a, 1u, u_input.b), vec3<u32>(u_input.a, 15808u, 7130u) & vec3<u32>(31082u, 21527u, 13099u)))), func_1().b.a);
}

