struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: vec3<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(false, false, false, true, true, false, false, true, true, false, true, true, false, true, true, true, false, false, true, false, true, true, true, true, true, true, true, false, true, true, true, false);

var<private> global1: u32 = 90493u;

var<private> global2: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(Struct_3(true, Struct_1(88813i, vec3<f32>(109f, -950f, 763f), vec3<bool>(true, false, true), 32389u), Struct_2(36940i, Struct_1(32273i, vec3<f32>(935f, 457f, -388f), vec3<bool>(true, true, false), 40155u))), vec2<u32>(0u, 47564u), vec3<bool>(false, true, true), Struct_3(false, Struct_1(1i, vec3<f32>(-2073f, 1000f, 424f), vec3<bool>(true, true, false), 31995u), Struct_2(1i, Struct_1(-39777i, vec3<f32>(-864f, -989f, -431f), vec3<bool>(true, true, false), 0u)))));

var<private> global3: Struct_3 = Struct_3(true, Struct_1(29982i, vec3<f32>(101f, 580f, -297f), vec3<bool>(true, false, true), 4294967295u), Struct_2(11700i, Struct_1(36413i, vec3<f32>(-906f, -1172f, -896f), vec3<bool>(false, false, false), 1u)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    global2 = array<Struct_4, 1>();
    global2 = array<Struct_4, 1>();
    var var_0 = 0i;
    let var_1 = global3.b.c.yx;
    let var_2 = ~vec2<u32>(~global3.c.b.d, ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(10335u, 75282u, global3.b.d, 14563u)), vec4<u32>(0u, 1u, 1u, 4294967295u)));
    return select(29164u, _wgslsmith_dot_vec4_u32((vec4<u32>(0u, 15967u, var_2.x, var_2.x) & max(vec4<u32>(14358u, var_2.x, var_2.x, 1u), vec4<u32>(4294967295u, 0u, var_2.x, var_2.x))) << (countOneBits(vec4<u32>(var_2.x, 23692u, var_2.x, var_2.x) >> (vec4<u32>(var_2.x, u_input.a, 14664u, 9849u) % vec4<u32>(32u))) % vec4<u32>(32u)), abs(countOneBits(~vec4<u32>(global3.b.d, var_2.x, 0u, var_2.x)))), !any(global3.c.b.c));
}

fn func_2() -> vec3<bool> {
    global1 = global3.b.d;
    let var_0 = Struct_4(Struct_3(!(select(false, global3.b.c.x, true) && global3.a), Struct_1(_wgslsmith_sub_i32(-1i, u_input.b), global3.b.b, select(global3.c.b.c, vec3<bool>(global3.c.b.c.x, true, true), -1337f < global3.b.b.x), _wgslsmith_div_u32(0u, ~1u)), Struct_2(-12898i, global3.b)), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(20870u, 1u, u_input.a) | vec3<u32>(4294967295u, global3.b.d, global3.b.d), _wgslsmith_sub_vec3_u32(vec3<u32>(global3.b.d, 4294967295u, 16276u), vec3<u32>(0u, 5918u, global3.c.b.d)), select(vec3<u32>(4294967295u, 0u, global3.b.d), vec3<u32>(0u, 1u, 1u), vec3<bool>(true, true, global3.a))), countOneBits(vec3<u32>(1u, 0u, 59404u)) >> (~vec3<u32>(4294967295u, global3.c.b.d, 10489u) % vec3<u32>(32u))), abs(_wgslsmith_clamp_u32(~global3.b.d, ~11439u, func_3()))), global3.c.b.c, Struct_3(~67675u > ~(global3.c.b.d >> (u_input.a % 32u)), Struct_1(1i, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1526f, 772f, global3.b.b.x) + vec3<f32>(467f, 1276f, global3.c.b.b.x)), vec3<bool>(!global0[_wgslsmith_index_u32(global3.c.b.d, 32u)], true, true), 4294967295u), Struct_2(global3.b.a, global3.c.b)));
    global0 = array<bool, 32>();
    var var_1 = global3.b;
    var var_2 = -(~vec3<i32>(-2147483647i, 2147483647i, 1i));
    return !(!select(select(select(var_1.c, var_1.c, false), vec3<bool>(var_0.c.x, true, global3.b.c.x), vec3<bool>(var_0.c.x, var_1.c.x, true)), var_0.a.b.c, vec3<bool>(global3.b.c.x || global3.b.c.x, true, false)));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_2) -> Struct_3 {
    var var_0 = vec2<u32>(71944u & u_input.a, ~34963u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-1281f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -121f)))), 790f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.c.b.b.x + global3.b.b.x), -665f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-347f, arg_2.b.b.x) - 596f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(378f + global3.b.b.x) + _wgslsmith_f_op_f32(334f + global3.c.b.b.x)) + -623f)));
    let var_2 = Struct_3(false, Struct_1(-36832i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-281f, arg_2.b.b.x, -1877f)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_2.b.b), vec3<f32>(-520f, 1191f, var_1.x)))), select(select(!vec3<bool>(true, global3.c.b.c.x, arg_2.b.c.x), vec3<bool>(arg_2.b.c.x, true, arg_0.x), vec3<bool>(true, arg_2.b.c.x, true)), !func_2(), select(vec3<bool>(global0[_wgslsmith_index_u32(41369u, 32u)], false, arg_0.x), arg_2.b.c, global3.c.b.c)), 33075u), Struct_2(arg_2.b.a, global3.b));
    let var_3 = _wgslsmith_clamp_vec3_i32(vec3<i32>(~firstLeadingBit(u_input.b), -select(~2147483647i, _wgslsmith_sub_i32(global3.c.b.a, 2147483647i), !global0[_wgslsmith_index_u32(4294967295u, 32u)]), arg_2.a), _wgslsmith_mod_vec3_i32(-vec3<i32>(~var_2.c.b.a, _wgslsmith_div_i32(u_input.b, var_2.b.a), -37214i), select(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(arg_2.a, 49915i, arg_2.b.a), vec3<i32>(59451i, arg_2.a, u_input.b), global0[_wgslsmith_index_u32(var_2.c.b.d, 32u)]), vec3<i32>(u_input.b, 8321i, -36914i) << (vec3<u32>(14147u, arg_2.b.d, global3.b.d) % vec3<u32>(32u)), abs(vec3<i32>(u_input.b, 4556i, 1i))), vec3<i32>(_wgslsmith_div_i32(arg_2.b.a, var_2.b.a), -u_input.b, firstTrailingBit(arg_2.b.a)), true)), vec3<i32>(999i, u_input.b, arg_2.b.a));
    var_0 = ~(~_wgslsmith_mult_vec2_u32(~abs(vec2<u32>(var_2.c.b.d, 8951u)), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, var_2.c.b.d), vec2<u32>(47668u, arg_2.b.d)), ~vec2<u32>(global3.b.d, 0u))));
    return var_2;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_3) -> u32 {
    return _wgslsmith_dot_vec2_u32(~vec2<u32>(abs(_wgslsmith_mult_u32(1888u, arg_2.x)), _wgslsmith_div_u32(1u, ~124342u)), _wgslsmith_clamp_vec2_u32(arg_2.zz, reverseBits(arg_2.zy), ~arg_2.xz));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 1>();
    let var_0 = Struct_2(u_input.b, Struct_1(~u_input.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.b.x + global3.c.b.b.x)), global3.b.b.x, _wgslsmith_f_op_f32(-1429f - -1630f)), !(!(!global3.c.b.c)), select(func_4(func_1(vec2<bool>(true, global0[_wgslsmith_index_u32(14603u, 32u)]), global3.b.b.x, Struct_2(1i, Struct_1(global3.b.a, global3.c.b.b, vec3<bool>(global0[_wgslsmith_index_u32(37599u, 32u)], true, true), global3.b.d))), func_2().x, ~vec3<u32>(global3.c.b.d, 69293u, global3.c.b.d), Struct_3(global0[_wgslsmith_index_u32(u_input.a, 32u)], Struct_1(0i, vec3<f32>(736f, global3.b.b.x, global3.c.b.b.x), global3.c.b.c, u_input.a), global3.c)), 34631u, false)));
    var var_1 = ~global3.b.d;
    global0 = array<bool, 32>();
    let var_2 = func_1(select(!global3.b.c.zx, !var_0.b.c.yz, !(!func_1(vec2<bool>(true, false), 603f, global3.c).c.b.c.yz)), 220f, Struct_2(countOneBits(_wgslsmith_sub_i32(10141i, -11147i)) ^ _wgslsmith_mult_i32(-u_input.b, 53491i), func_1(!(!vec2<bool>(global0[_wgslsmith_index_u32(2650u, 32u)], var_0.b.c.x)), _wgslsmith_f_op_f32(ceil(func_1(vec2<bool>(var_0.b.c.x, false), var_0.b.b.x, global3.c).b.b.x)), func_1(vec2<bool>(true, global3.c.b.c.x), _wgslsmith_f_op_f32(floor(var_0.b.b.x)), var_0).c).b)).c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.b + global3.c.b.b) + vec3<f32>(1010f, var_2.b.b.x, 1160f)))), vec4<u32>(4294967295u, 1u, 24360u >> (1u % 32u), 1u));
}

