struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(1274f), Struct_4(-202f), Struct_4(-1013f), Struct_4(-222f), Struct_4(360f), Struct_4(450f), Struct_4(-392f));

var<private> global1: vec2<u32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_2(vec2<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), !(all(vec2<bool>(false, true)) && any(vec2<bool>(true, true)))), 366f, Struct_1(global1.x, ~(-36213i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-257f, -641f, 824f))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(676f)), _wgslsmith_f_op_f32(f32(-1f) * -1212f), -1000f)), vec2<u32>(_wgslsmith_mult_u32(global1.x, u_input.a.x), _wgslsmith_add_u32(~global1.x, ~u_input.d.x)), (7497u <= ~u_input.d.x) & true));
    global0 = array<Struct_4, 7>();
    let var_1 = u_input.d.x >> (((31163u << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), max(vec2<u32>(4294967295u, u_input.d.x), var_0.c.d)) % 32u)) << (var_0.c.a % 32u)) % 32u);
    let var_2 = Struct_1(~56178u, u_input.c, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.c.x, -1329f, 1000f), vec3<f32>(var_0.c.c.x, var_0.c.c.x, var_0.c.c.x))), _wgslsmith_f_op_vec3_f32(var_0.c.c - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.b, var_0.b, 719f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_0.c.c))))), ~var_0.c.d, !(!(var_0.c.e | true)));
    let var_3 = Struct_5(0u);
    return firstLeadingBit(~((u_input.a.zz & vec2<u32>(global1.x, 84677u)) << (var_2.d % vec2<u32>(32u))));
}

fn func_2() -> u32 {
    global1 = vec2<u32>(~u_input.a.x, 70274u);
    var var_0 = global0[_wgslsmith_index_u32(u_input.d.x, 7u)];
    let var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.c), ~(~vec2<i32>(u_input.c, -1i))), _wgslsmith_add_i32(0i, _wgslsmith_mod_i32(1i, -2147483647i)), u_input.c, -_wgslsmith_add_i32(~(~u_input.b.x), _wgslsmith_sub_i32(-u_input.b.x, _wgslsmith_add_i32(-1i, 2147483647i))));
    global1 = ~abs(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(4294967295u, global1.x, global1.x))), vec2<u32>(max(global1.x, u_input.a.x), 0u >> (u_input.d.x % 32u))));
    let var_2 = max(_wgslsmith_dot_vec2_u32(u_input.d, countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, global1.x), u_input.a.yy))), _wgslsmith_add_u32(abs(_wgslsmith_mod_u32(global1.x, 0u)), firstTrailingBit(_wgslsmith_mod_u32(4294967295u, u_input.a.x)))) << (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.zx, ~u_input.d) << (~u_input.d % vec2<u32>(32u)), ((vec2<u32>(global1.x, 32854u) & vec2<u32>(18467u, global1.x)) >> (func_3() % vec2<u32>(32u))) << (((vec2<u32>(58966u, 0u) << (u_input.a.yx % vec2<u32>(32u))) << (select(vec2<u32>(1u, 3974u), vec2<u32>(1u, 6910u), vec2<bool>(false, true)) % vec2<u32>(32u))) % vec2<u32>(32u))) % 32u);
    return 0u;
}

fn func_1() -> i32 {
    global1 = ~vec2<u32>(global1.x, ~((global1.x & global1.x) ^ _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(global1.x, 0u))));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-152f, 676f, -248f) + vec3<f32>(245f, -281f, 794f)) - vec3<f32>(776f, -330f, 1386f)) - vec3<f32>(-887f, _wgslsmith_f_op_f32(trunc(205f)), _wgslsmith_div_f32(-1388f, 656f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -635f), 637f, _wgslsmith_f_op_f32(ceil(-170f))))), !vec3<bool>(false, any(vec3<bool>(false, false, true)), true))));
    let var_1 = Struct_1(~func_2(), ~u_input.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-314f, -321f, var_0.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -934f) * vec3<f32>(var_0.x, -480f, -432f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, 229f, var_0.x), vec3<f32>(-959f, 258f, 2402f), vec3<bool>(false, false, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-652f, var_0.x, -429f)), vec3<bool>(false, true, false)))))), u_input.a.xz, true);
    var_0 = _wgslsmith_f_op_vec3_f32(var_1.c + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.c))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.c.x)));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-19386i, 1i, min(u_input.c, _wgslsmith_add_i32(-u_input.c, func_1())), _wgslsmith_add_i32(u_input.b.x, _wgslsmith_mult_i32((u_input.c << (27438u % 32u)) << ((u_input.a.x | 4294967295u) % 32u), -7755i)));
    global1 = u_input.d | u_input.a.yz;
    global1 = min(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a.zz, _wgslsmith_add_vec2_u32(vec2<u32>(global1.x, 1u), select(vec2<u32>(u_input.a.x, global1.x), vec2<u32>(67175u, u_input.d.x), false)), ~vec2<u32>(0u, global1.x)), vec2<u32>(_wgslsmith_sub_u32(u_input.d.x, u_input.d.x), global1.x)), func_3());
    let var_1 = Struct_2(vec2<bool>(true, true), _wgslsmith_f_op_f32(trunc(251f)), Struct_1(0u, -29817i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(2136f, 581f, 117f), vec3<f32>(1532f, -1184f, -1166f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(326f, 318f, -800f))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1088f, -890f, -1391f))))), vec2<u32>(_wgslsmith_mod_u32(1u, ~global1.x), _wgslsmith_clamp_u32(1u, ~4294967295u, 18547u)), any(vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, select(var_1.c.d & vec2<u32>(u_input.d.x, u_input.d.x), var_1.c.d, select(var_1.a, vec2<bool>(false, var_1.a.x), var_1.a)) | ~min(countOneBits(u_input.a.yx), vec2<u32>(62042u, global1.x)), 1i ^ -countOneBits(func_1()));
}

