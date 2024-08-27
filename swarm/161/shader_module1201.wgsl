struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: Struct_3,
    d: vec4<i32>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), 3063i), vec2<i32>(-55498i, 23640i), vec2<i32>(i32(-2147483648), 47004i), vec2<i32>(73120i, 32830i), vec2<i32>(2147483647i, -30158i), vec2<i32>(2147483647i, -71884i), vec2<i32>(2147483647i, 25382i), vec2<i32>(21180i, -1i), vec2<i32>(1825i, 24391i), vec2<i32>(i32(-2147483648), 9285i), vec2<i32>(27817i, -31853i), vec2<i32>(29666i, 0i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-39719i, 46710i), vec2<i32>(28307i, -32411i), vec2<i32>(2147483647i, 0i), vec2<i32>(-9395i, 44663i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(36822i, -1i), vec2<i32>(0i, 0i), vec2<i32>(1i, 0i), vec2<i32>(9241i, -12784i), vec2<i32>(1i, -11236i), vec2<i32>(70114i, 51013i), vec2<i32>(-14902i, -35324i), vec2<i32>(53367i, i32(-2147483648)), vec2<i32>(-41757i, -13940i), vec2<i32>(6339i, -10040i), vec2<i32>(16117i, 0i));

var<private> global1: vec2<u32>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: Struct_2) -> u32 {
    let var_0 = -17017i;
    global0 = array<vec2<i32>, 30>();
    let var_1 = Struct_4((vec2<u32>(36119u, 28303u) & arg_1.c.a.yy) | ~_wgslsmith_add_vec2_u32(vec2<u32>(0u, global1.x), ~vec2<u32>(u_input.b, u_input.b)), vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, 0i, var_0, arg_1.d.x), ~arg_1.b), var_0, i32(-1i) * -_wgslsmith_mult_i32(u_input.c, arg_1.d.x), countOneBits(3806i)), arg_1.c, firstTrailingBit(vec4<i32>(u_input.c, var_0, i32(-1i) * -2147483647i, -20611i)), Struct_2(arg_1.c.b.x, arg_0));
    let var_2 = vec4<f32>(-613f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -143f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-556f * _wgslsmith_f_op_f32(round(-1144f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-964f, -1152f)))))), _wgslsmith_f_op_f32(-1654f - 1f));
    return u_input.b;
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: u32) -> bool {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-2637f)))), -2224f);
    let var_1 = 0u;
    var_0 = 1f;
    global0 = array<vec2<i32>, 30>();
    var var_2 = Struct_4(_wgslsmith_mod_vec2_u32(select(vec2<u32>(arg_2, 8906u), max(vec2<u32>(22590u, 4294967295u), vec2<u32>(0u, var_1)), arg_0.x || arg_0.x) ^ ~vec2<u32>(21807u, 0u), _wgslsmith_add_vec2_u32(~vec2<u32>(arg_2, 81951u), ~vec2<u32>(var_1, 1u))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, 0i, u_input.a.x, -11499i), vec4<i32>(u_input.a.x, -51966i, u_input.c, u_input.d.x)), vec4<i32>(45805i, -1832i, -10010i, -1i) >> (vec4<u32>(404u, u_input.b, 87898u, 4294967295u) % vec4<u32>(32u))), _wgslsmith_mod_i32(u_input.c ^ u_input.c, reverseBits(u_input.c)), ~1i, _wgslsmith_add_i32(u_input.c, -2147483647i)), -firstLeadingBit(vec4<i32>(1377i, u_input.c, 353i, 0i)) & _wgslsmith_div_vec4_i32(vec4<i32>(2145i, -2147483647i, u_input.d.x, 16880i) << (vec4<u32>(u_input.b, u_input.b, arg_1, 0u) % vec4<u32>(32u)), vec4<i32>(5619i, u_input.c, -62651i, -9372i) | vec4<i32>(-32037i, -15186i, 0i, 10861i))), Struct_3(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, arg_2, 0u), ~(~vec3<u32>(4294967295u, 4294967295u, arg_2))), select(select(vec4<bool>(false, false, true, arg_0.x), select(vec4<bool>(true, true, arg_0.x, false), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), arg_0.x), !vec4<bool>(true, false, arg_0.x, false)), vec4<bool>(false, all(arg_0), true, all(vec2<bool>(false, arg_0.x))), false), func_2(!arg_0.x, Struct_4(vec2<u32>(0u, arg_2), vec4<i32>(u_input.c, -2147483647i, 16104i, 2147483647i), Struct_3(vec3<u32>(1u, arg_2, 43439u), vec4<bool>(false, arg_0.x, arg_0.x, false), 27847u, arg_0.x), vec4<i32>(-26232i, u_input.a.x, -3877i, u_input.d.x), Struct_2(arg_0.x, true)), Struct_2(arg_0.x, arg_0.x)) & _wgslsmith_add_u32(global1.x, 1u), !(!(true || arg_0.x))), select(-vec4<i32>(u_input.a.x, _wgslsmith_add_i32(-2228i, 33948i), 22366i, max(u_input.c, u_input.c)), _wgslsmith_div_vec4_i32(-firstLeadingBit(vec4<i32>(-2147483647i, -17145i, -1i, u_input.c)), reverseBits(-vec4<i32>(140i, u_input.c, 27160i, u_input.a.x))), true), Struct_2(false, true));
    return true;
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> f32 {
    var var_0 = Struct_4(arg_1.a.zy, vec4<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c, 2147483647i, u_input.a.x, u_input.c) >> (vec4<u32>(4294967295u, arg_0, 102119u, 4294967295u) % vec4<u32>(32u)), ~(vec4<i32>(u_input.d.x, u_input.c, u_input.d.x, u_input.c) >> (vec4<u32>(global1.x, arg_1.c, global1.x, arg_1.a.x) % vec4<u32>(32u)))), 1i, _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c, -2147483647i), reverseBits(vec2<i32>(1i, 1i))))), arg_1, vec4<i32>(abs(u_input.d.x), ~19882i, u_input.a.x, -1i) & vec4<i32>(~min(u_input.d.x, 1i), -41656i, firstTrailingBit(abs(-1i)), 0i), Struct_2(!func_3(vec2<bool>(true, arg_1.d), func_2(arg_1.b.x, Struct_4(vec2<u32>(0u, 89564u), vec4<i32>(u_input.d.x, u_input.a.x, u_input.d.x, u_input.a.x), Struct_3(vec3<u32>(4294967295u, 1u, arg_0), arg_1.b, u_input.b, false), vec4<i32>(-1i, 0i, -11629i, -2147483647i), Struct_2(arg_1.b.x, true)), Struct_2(true, false)), u_input.b), arg_1.b.x));
    var_0 = Struct_4(~(select(vec2<u32>(4294967295u, 1u), vec2<u32>(var_0.c.c, var_0.a.x), var_0.e.b) & max(vec2<u32>(arg_0, arg_0), vec2<u32>(var_0.c.a.x, 0u))) | _wgslsmith_mod_vec2_u32(vec2<u32>(~var_0.c.a.x, 953u), var_0.c.a.zy), -vec4<i32>(_wgslsmith_add_i32(48134i, -2147483647i), _wgslsmith_sub_i32(1i, 11958i), firstLeadingBit(~u_input.a.x), ~_wgslsmith_mod_i32(-2147483647i, 16108i)), Struct_3(vec3<u32>(1u, ~_wgslsmith_sub_u32(4294967295u, global1.x), 30819u), arg_1.b, arg_0, arg_1.d), select(min(-var_0.b, vec4<i32>(reverseBits(-35349i), _wgslsmith_mult_i32(-32528i, var_0.d.x), 8066i, _wgslsmith_mult_i32(-2147483647i, u_input.a.x))), select(min(~vec4<i32>(u_input.a.x, var_0.d.x, var_0.b.x, var_0.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 15033i, 2147483647i, -40331i), var_0.d)), vec4<i32>(_wgslsmith_mult_i32(var_0.b.x, -25814i), ~var_0.d.x, _wgslsmith_mult_i32(var_0.d.x, 0i), _wgslsmith_mult_i32(u_input.c, var_0.b.x)), !var_0.c.b.x), any(vec4<bool>(true, var_0.e.b, any(var_0.c.b.yx), false))), Struct_2(var_0.e.b, all(!(!var_0.c.b.yy))));
    var var_1 = arg_1.b.wyz;
    let var_2 = Struct_5(Struct_3(~_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 29548u, global1.x), vec3<u32>(1u, 1u, arg_0)), select(select(var_0.c.b, arg_1.b, !vec4<bool>(arg_1.d, arg_1.d, false, false)), !var_0.c.b, !(1u < arg_0)), _wgslsmith_dot_vec3_u32(var_0.c.a, ~vec3<u32>(4294967295u, 0u, u_input.b)), !(!var_0.c.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(383f, 124f, -184f, 921f) * vec4<f32>(-1170f, -1872f, -250f, -1975f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2101f, -520f, -1258f, 1000f)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1583f, -985f, _wgslsmith_f_op_f32(min(317f, 1512f)), _wgslsmith_div_f32(-1000f, -1246f)))), _wgslsmith_dot_vec3_u32(select(vec3<u32>(864u, 39414u, 4294967295u), vec3<u32>(arg_1.a.x, arg_0, 0u), !select(vec3<bool>(var_1.x, false, var_0.e.b), var_0.c.b.xyy, var_0.c.b.www)), vec3<u32>(_wgslsmith_add_u32(~62836u, ~u_input.b), _wgslsmith_mult_u32(~1u, var_0.a.x), ~39039u)), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(var_0.c.c, arg_1.c, 0u, 0u), ~vec4<u32>(u_input.b, 4294967295u, 4294967295u, arg_0)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(53362u, 1u, 24737u, 20635u), vec4<u32>(arg_0, 40550u, var_0.c.c, 1u)), global1.x, arg_1.a.x << (arg_0 % 32u), max(15964u, var_0.c.a.x)), vec4<u32>(var_0.a.x & arg_0, ~1u, countOneBits(76593u), var_0.a.x)), _wgslsmith_div_vec4_u32(select(~vec4<u32>(1u, var_0.c.c, var_0.c.a.x, arg_1.c), min(vec4<u32>(var_0.c.c, 23557u, arg_1.a.x, arg_0), vec4<u32>(global1.x, 17260u, 4294967295u, arg_0)), !vec4<bool>(var_0.e.b, var_0.e.a, var_1.x, var_1.x)), firstTrailingBit(vec4<u32>(83649u, var_0.a.x, 38712u, global1.x)) & ~vec4<u32>(arg_1.a.x, 0u, arg_1.c, global1.x))));
    let var_3 = var_0.e;
    return -2162f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_1(_wgslsmith_sub_u32(~(~global1.x), max(_wgslsmith_mult_u32(~u_input.b, 4294967295u & u_input.b), 4294967295u)), Struct_3(abs(countOneBits(vec3<u32>(global1.x, 79951u, 47971u)) | (vec3<u32>(5229u, 135969u, u_input.b) << (vec3<u32>(u_input.b, 26198u, global1.x) % vec3<u32>(32u)))), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(false, true)), true, all(vec4<bool>(true, false, false, true)), false)), reverseBits(firstTrailingBit(52781u)), (14573i <= u_input.d.x) | true)));
    let var_1 = Struct_4(vec2<u32>(4294967295u, ~(~(global1.x << (u_input.b % 32u)))), -vec4<i32>(-13797i, min(-u_input.d.x, max(u_input.c, u_input.c)), -41780i, -56214i), Struct_3(~_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(0u, u_input.b, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(4294967295u, 38897u, global1.x))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), false), 76814u, false), -((vec4<i32>(-1i) * -vec4<i32>(0i, u_input.a.x, 1i, -1i)) << (countOneBits(vec4<u32>(u_input.b, u_input.b, global1.x, 1u)) % vec4<u32>(32u))), Struct_2(!any(vec2<bool>(true, true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false))));
    global1 = firstTrailingBit(~countOneBits(~min(vec2<u32>(4294967295u, global1.x), vec2<u32>(u_input.b, 1u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1610f, 729f, 1304f, 236f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(125f, 270f, -408f, 1888f))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1440f, 1630f, 577f, 1014f)))), var_1.c.d))))));
    var var_3 = Struct_5(var_1.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(step(1073f, var_2.x))), var_2.x, _wgslsmith_f_op_f32(func_1(_wgslsmith_div_u32(u_input.b, 14593u), Struct_3(vec3<u32>(var_1.c.a.x, 1u, var_1.c.a.x), vec4<bool>(var_1.e.a, false, var_1.c.b.x, false), u_input.b, var_1.e.a))), _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-514f - 379f)))), reverseBits(var_1.a.x), max(vec4<u32>(~(~1u), abs(1u), var_1.c.c, reverseBits(4294967295u)), vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 12586u, 0u), ~vec4<u32>(46144u, u_input.b, 1u, u_input.b)), ~101476u, select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 18309u), var_1.c.a), ~1u, !var_1.c.d), ~46746u)));
    var var_4 = _wgslsmith_f_op_f32(-var_3.b.x);
    let var_5 = func_3(vec2<bool>(true, true), min(~1u, ~0u), ~var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec3<i32>(firstLeadingBit(0i), var_1.d.x, firstLeadingBit(u_input.d.x ^ abs(-17178i))), abs(var_1.c.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_3.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1243f)), _wgslsmith_f_op_f32(-1959f * 1258f)), var_3.b.x)));
}

