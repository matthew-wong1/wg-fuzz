struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: bool = false;

var<private> global2: vec2<u32>;

var<private> global3: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(22094u, vec2<bool>(true, true), vec2<f32>(148f, 1943f)), Struct_1(0u, vec2<bool>(false, false), vec2<f32>(1729f, 382f)), Struct_1(4294967295u, vec2<bool>(false, true), vec2<f32>(967f, 874f)), Struct_1(4294967295u, vec2<bool>(false, false), vec2<f32>(768f, -2056f)), Struct_1(44845u, vec2<bool>(true, false), vec2<f32>(-575f, -674f)), Struct_1(1u, vec2<bool>(false, true), vec2<f32>(335f, 970f)), Struct_1(66934u, vec2<bool>(true, false), vec2<f32>(-1052f, 1196f)), Struct_1(18529u, vec2<bool>(false, false), vec2<f32>(562f, -171f)), Struct_1(59729u, vec2<bool>(false, true), vec2<f32>(-604f, 657f)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = global3[_wgslsmith_index_u32(63939u, 9u)];
    global2 = ~_wgslsmith_mod_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a, global2.x), vec2<u32>(1u, global2.x)), vec2<u32>(4294967295u, 1u) ^ vec2<u32>(1u, u_input.b)) >> (vec2<u32>(firstLeadingBit(max(countOneBits(33498u), u_input.b)), ~var_0.a) % vec2<u32>(32u));
    var var_1 = global0[_wgslsmith_index_u32(72766u, 28u)];
    global3 = array<Struct_1, 9>();
    var var_2 = -(vec4<i32>(u_input.a.x, -1i, arg_0 & reverseBits(0i), 2147483647i) << ((abs(vec4<u32>(2010u, 59298u, global2.x, global2.x)) | max(vec4<u32>(1u, global2.x, 0u, 1u), vec4<u32>(0u, 38121u, var_0.a, 53293u))) % vec4<u32>(32u)));
    return arg_0;
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = ~(firstLeadingBit(func_3(countOneBits(u_input.c))) & max(func_3(u_input.a.x) >> (abs(global2.x) % 32u), 0i));
    var var_1 = Struct_1(64863u, !vec2<bool>(true, all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true))), _wgslsmith_f_op_vec2_f32(-arg_0));
    let var_2 = _wgslsmith_mult_vec2_u32(firstTrailingBit(~(vec2<u32>(4294967295u, 40177u) >> (vec2<u32>(u_input.b, var_1.a) % vec2<u32>(32u)))), min(vec2<u32>(70937u, abs(reverseBits(78079u))), vec2<u32>(83331u, 1u)));
    let var_3 = Struct_1(min(~0u, abs(select(101176u, _wgslsmith_mod_u32(1u, u_input.b), all(vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x))))), var_1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c), _wgslsmith_f_op_vec2_f32(-var_1.c)))) + var_1.c));
    var_1 = Struct_1(_wgslsmith_dot_vec2_u32(var_2, _wgslsmith_add_vec2_u32(var_2, ~vec2<u32>(5294u, global2.x))), vec2<bool>(true, select(var_3.b.x, true, false)), var_1.c);
    return global0[_wgslsmith_index_u32(1u, 28u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> vec2<u32> {
    var var_0 = Struct_1(arg_1.a, !(!vec2<bool>(arg_1.b.x, true)), arg_2.c);
    var var_1 = -_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, ~1i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.b, u_input.b, u_input.b, 1u) % vec4<u32>(32u)), ~vec4<i32>(u_input.a.x, -3138i, -2147483647i, u_input.a.x)) & vec4<i32>(8248i, -u_input.a.x, 50956i, func_3(-2902i)));
    let var_2 = 1u;
    var var_3 = global3[_wgslsmith_index_u32(1u, 9u)];
    global0 = array<Struct_1, 28>();
    return vec2<u32>(~0u, countOneBits(abs(u_input.b)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_u32(min(select(select(vec2<u32>(18059u, 54627u), vec2<u32>(4294967295u, 0u), vec2<bool>(true, false)), ~vec2<u32>(0u, u_input.b), true), vec2<u32>(~61036u, global2.x)), func_4(global0[_wgslsmith_index_u32(reverseBits(~13409u), 28u)], func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(482f, 423f), vec2<f32>(2098f, 1000f)))), Struct_1(_wgslsmith_mult_u32(u_input.b, u_input.b), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), _wgslsmith_div_vec2_f32(vec2<f32>(1926f, -711f), vec2<f32>(-1215f, -233f))), ~vec2<i32>(1i, 12391i))), vec2<bool>(func_2(vec2<f32>(-527f, -765f)).b.x, false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(249f, -606f))))));
    let var_1 = !(!any(select(select(vec4<bool>(var_0.b.x, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, false)), !vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x), !var_0.b.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-429f, var_0.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(417f))))), var_0.c.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.c.x, -1123f, var_0.c.x, var_0.c.x)))))) - vec4<f32>(var_0.c.x, var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-173f * var_0.c.x) + _wgslsmith_f_op_f32(ceil(var_0.c.x))), 1282f)));
    var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-345f + var_0.c.x) + var_0.c.x), var_0.c.x, _wgslsmith_f_op_f32(floor(var_0.c.x))))));
    var var_3 = Struct_1(var_0.a, !var_0.b, vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, -647f, var_1 & false)))));
    return func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.c + var_3.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.zz) + vec2<f32>(var_3.c.x, var_3.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = reverseBits(-(~min(1i, firstLeadingBit(u_input.c))));
    var_0 = Struct_1(85570u, select(!select(vec2<bool>(true, var_0.b.x), select(var_0.b, vec2<bool>(var_0.b.x, var_0.b.x), false), !var_0.b), vec2<bool>(func_2(_wgslsmith_f_op_vec2_f32(-var_0.c)).b.x, true), select(true || (var_0.c.x < var_0.c.x), var_0.b.x, var_0.b.x)), _wgslsmith_f_op_vec2_f32(floor(var_0.c)));
    var var_2 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.c.x)), _wgslsmith_f_op_f32(var_0.c.x - var_0.c.x))) - _wgslsmith_f_op_vec2_f32(max(var_0.c, _wgslsmith_f_op_vec2_f32(-func_1().c)))));
    let var_3 = ~select(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, var_2.a, var_2.a), vec4<u32>(global2.x, var_2.a, 36555u, var_2.a), vec4<u32>(global2.x, global2.x, var_2.a, var_2.a)), abs(vec4<u32>(var_2.a, var_0.a, global2.x, global2.x))), _wgslsmith_div_vec4_u32(vec4<u32>(37227u, var_0.a, 36411u, global2.x), ~vec4<u32>(var_2.a, global2.x, global2.x, global2.x)), true) << (vec4<u32>(reverseBits(~var_0.a), _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(58785u, var_0.a, 1u), vec3<u32>(105916u, 0u, 6475u)), 4294967295u), global2.x), firstTrailingBit(43319u), u_input.b) % vec4<u32>(32u));
    global0 = array<Struct_1, 28>();
    let var_4 = global3[_wgslsmith_index_u32(func_1().a, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1864f, var_0.c.x)) * _wgslsmith_f_op_f32(-var_2.c.x)), select(reverseBits(var_3), ~countOneBits(vec4<u32>(33420u, 4294967295u, 0u, 101314u)), vec4<bool>(!(var_2.b.x || false), func_1().b.x, var_0.b.x, var_4.b.x)), min(4294967295u, 4294967295u), var_0.c.x);
}

