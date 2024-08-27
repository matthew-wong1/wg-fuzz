struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec3<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(vec3<i32>(-1i, 0i, -21502i), Struct_1(true), Struct_1(false)), Struct_3(vec3<i32>(1i, -1i, -1i), Struct_1(true), Struct_1(true)), Struct_3(vec3<i32>(-27337i, 2147483647i, -1i), Struct_1(true), Struct_1(false)), Struct_3(vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), Struct_1(true), Struct_1(false)), Struct_3(vec3<i32>(24057i, -26784i, 11873i), Struct_1(true), Struct_1(true)), Struct_3(vec3<i32>(-40678i, -22193i, 2147483647i), Struct_1(true), Struct_1(true)), Struct_3(vec3<i32>(0i, 2147483647i, 1i), Struct_1(false), Struct_1(false)), Struct_3(vec3<i32>(-1i, 10638i, i32(-2147483648)), Struct_1(true), Struct_1(true)), Struct_3(vec3<i32>(-42346i, i32(-2147483648), 2147483647i), Struct_1(false), Struct_1(false)), Struct_3(vec3<i32>(i32(-2147483648), -2717i, 1i), Struct_1(false), Struct_1(true)), Struct_3(vec3<i32>(24819i, 11457i, i32(-2147483648)), Struct_1(false), Struct_1(false)), Struct_3(vec3<i32>(-28523i, 503i, -58443i), Struct_1(true), Struct_1(true)));

var<private> global1: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(vec3<i32>(-11617i, i32(-2147483648), -28530i), Struct_1(true), Struct_1(true)), Struct_3(vec3<i32>(10382i, 1i, 17951i), Struct_1(false), Struct_1(true)), Struct_3(vec3<i32>(i32(-2147483648), 0i, -15242i), Struct_1(true), Struct_1(true)), Struct_3(vec3<i32>(339i, -28458i, 2147483647i), Struct_1(true), Struct_1(false)), Struct_3(vec3<i32>(-8242i, -15382i, i32(-2147483648)), Struct_1(false), Struct_1(true)), Struct_3(vec3<i32>(i32(-2147483648), 1i, 0i), Struct_1(true), Struct_1(false)), Struct_3(vec3<i32>(4095i, -1i, 13947i), Struct_1(true), Struct_1(true)), Struct_3(vec3<i32>(-8479i, 0i, 1i), Struct_1(false), Struct_1(false)), Struct_3(vec3<i32>(i32(-2147483648), 0i, 0i), Struct_1(true), Struct_1(false)), Struct_3(vec3<i32>(-1i, -7711i, -14070i), Struct_1(true), Struct_1(false)), Struct_3(vec3<i32>(i32(-2147483648), 2147483647i, 243i), Struct_1(true), Struct_1(true)), Struct_3(vec3<i32>(0i, i32(-2147483648), -31673i), Struct_1(false), Struct_1(false)), Struct_3(vec3<i32>(-1i, 2147483647i, -12430i), Struct_1(true), Struct_1(true)), Struct_3(vec3<i32>(-17871i, i32(-2147483648), -1i), Struct_1(false), Struct_1(false)), Struct_3(vec3<i32>(21666i, 13259i, 36991i), Struct_1(false), Struct_1(true)), Struct_3(vec3<i32>(-6025i, -28046i, -4911i), Struct_1(false), Struct_1(false)), Struct_3(vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), Struct_1(true), Struct_1(false)), Struct_3(vec3<i32>(-11224i, 0i, 28079i), Struct_1(false), Struct_1(false)), Struct_3(vec3<i32>(25469i, 1i, -20751i), Struct_1(false), Struct_1(true)), Struct_3(vec3<i32>(-11616i, 1i, 70573i), Struct_1(true), Struct_1(true)), Struct_3(vec3<i32>(-35790i, 2147483647i, -1i), Struct_1(false), Struct_1(false)), Struct_3(vec3<i32>(53382i, 27815i, i32(-2147483648)), Struct_1(false), Struct_1(true)), Struct_3(vec3<i32>(-20660i, -1i, 2147483647i), Struct_1(false), Struct_1(false)), Struct_3(vec3<i32>(0i, -30238i, 83207i), Struct_1(false), Struct_1(false)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec3<i32>, arg_3: i32) -> bool {
    global0 = array<Struct_3, 12>();
    var var_0 = global1[_wgslsmith_index_u32(u_input.b, 24u)];
    let var_1 = _wgslsmith_mod_u32(30493u, ~_wgslsmith_clamp_u32(20148u, arg_1, u_input.b));
    global1 = array<Struct_3, 24>();
    let var_2 = Struct_1(!var_0.b.a);
    return ((abs(arg_2.x) & ~(arg_2.x & arg_3)) >> (53032u % 32u)) < firstTrailingBit(-37362i << (arg_1 % 32u));
}

fn func_3() -> i32 {
    let var_0 = vec2<i32>(~_wgslsmith_add_i32(max(~u_input.c.x, u_input.d.x | u_input.c.x), firstTrailingBit(~u_input.c.x)), u_input.d.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1103f))))));
    let var_2 = Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~_wgslsmith_mod_u32(u_input.b, 43854u)), ~u_input.b), 24u)], any(vec4<bool>(false, true, any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))), all(vec2<bool>(true, true)))), vec3<bool>(select(true, true, true), !(!(-2147483647i > var_0.x)), false), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(min(vec2<u32>(u_input.b, 49443u), vec2<u32>(u_input.b, u_input.b)), abs(vec2<u32>(30570u, u_input.b))), ~reverseBits(vec2<u32>(u_input.b, 34260u))) << (_wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(1451u, u_input.b)), vec2<u32>(~u_input.b, ~42389u)) % 32u), 24u)]);
    global0 = array<Struct_3, 12>();
    var var_3 = !select(select(!(!vec4<bool>(false, true, var_2.a.c.a, var_2.c.x)), !vec4<bool>(true, var_2.d.c.a, var_2.d.c.a, true), select(vec4<bool>(var_2.a.b.a, false, false, var_2.d.c.a), select(vec4<bool>(var_2.c.x, false, true, var_2.b), vec4<bool>(false, true, var_2.d.b.a, true), false), true || var_2.b)), !(!(!vec4<bool>(var_2.d.b.a, true, false, false))), select(select(!vec4<bool>(true, var_2.a.c.a, false, false), select(vec4<bool>(var_2.c.x, true, false, true), vec4<bool>(var_2.b, true, true, var_2.b), vec4<bool>(var_2.b, true, false, var_2.a.c.a)), select(vec4<bool>(true, true, var_2.d.c.a, false), vec4<bool>(var_2.a.b.a, false, var_2.c.x, false), vec4<bool>(false, var_2.c.x, false, var_2.d.b.a))), select(vec4<bool>(false, false, var_2.b, true), select(vec4<bool>(var_2.c.x, false, var_2.d.b.a, false), vec4<bool>(var_2.b, false, false, true), vec4<bool>(true, false, var_2.d.c.a, true)), select(vec4<bool>(true, var_2.c.x, var_2.c.x, false), vec4<bool>(true, true, false, var_2.a.b.a), vec4<bool>(var_2.c.x, false, var_2.d.c.a, var_2.a.b.a))), (u_input.b >> (u_input.b % 32u)) < 14745u));
    return ~(-(~_wgslsmith_clamp_i32(var_0.x & -396i, countOneBits(29388i), 2147483647i >> (u_input.b % 32u))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(func_3(), -countOneBits(-u_input.a));
    let var_1 = vec3<bool>(false, arg_0, false);
    let var_2 = arg_0;
    var var_3 = u_input.b;
    let var_4 = 2181f;
    return Struct_1(true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(-2736f)), -1172f, -262f, _wgslsmith_f_op_f32(floor(-820f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1823f, 1780f, -138f, 1228f), vec4<f32>(-1000f, 1120f, 1052f, -988f))))), u_input.b <= u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(386f, -1231f, -756f, 629f) * vec4<f32>(1000f, 2277f, -189f, -1092f)))))));
    var var_1 = _wgslsmith_mult_vec4_i32(~_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a, -38064i, u_input.d.x, 2147483647i), ~(vec4<i32>(u_input.c.x, u_input.c.x, u_input.d.x, -11499i) << (vec4<u32>(71305u, u_input.b, u_input.b, 1u) % vec4<u32>(32u)))), ~(-vec4<i32>(_wgslsmith_clamp_i32(23417i, u_input.c.x, u_input.c.x), -u_input.c.x, u_input.d.x, ~u_input.d.x)));
    global1 = array<Struct_3, 24>();
    var var_2 = 1u;
    var var_3 = vec3<f32>(130f, _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))) - var_0.x))), -1574f);
    var var_4 = func_2(all(vec3<bool>(!(u_input.b < 0u), any(vec2<bool>(true, false)), func_1(-1i, ~1u, abs(vec3<i32>(2147483647i, -2147483647i, var_1.x)), ~(-1i)))));
    let var_5 = Struct_2(((~u_input.b ^ 1u) | u_input.b) & abs(reverseBits(_wgslsmith_sub_u32(u_input.b, 23086u))), !(true && var_4.a), _wgslsmith_div_vec4_u32(vec4<u32>(~u_input.b, u_input.b, ~4294967295u, u_input.b) | vec4<u32>(u_input.b, max(22611u, 0u), _wgslsmith_div_u32(u_input.b, 2482u), ~27512u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, ~u_input.b, u_input.b | 4294967295u, _wgslsmith_add_u32(u_input.b, u_input.b)), vec4<u32>(u_input.b, max(35138u, 0u), 0u, _wgslsmith_mult_u32(0u, u_input.b)))), Struct_1(select(func_2(all(vec2<bool>(var_4.a, false))).a, _wgslsmith_f_op_f32(f32(-1f) * -1670f) >= var_3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(4294967295u, u_input.b, u_input.b)) >= _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, 16446u, u_input.b), vec4<u32>(42719u, 93635u, 4294967295u, u_input.b)))));
    let var_6 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -(-2598i << (max(u_input.b, var_5.c.x) % 32u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.yy, var_3.xy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-583f, var_0.x)))) * var_3.xy), var_5.c.zxz, reverseBits(countOneBits(vec3<u32>(79244u, var_5.a, var_5.a) | _wgslsmith_sub_vec3_u32(var_5.c.xyw, vec3<u32>(u_input.b, 4294967295u, u_input.b)))));
}

