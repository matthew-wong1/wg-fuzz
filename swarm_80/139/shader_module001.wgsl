struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    global0 = firstTrailingBit((arg_0.d & arg_1.d.x) & ~630u);
    global0 = 4294967295u;
    let var_0 = Struct_3(Struct_1(-6277i, _wgslsmith_f_op_vec4_f32(arg_1.b + vec4<f32>(_wgslsmith_f_op_f32(arg_1.b.x + arg_1.b.x), _wgslsmith_f_op_f32(floor(-870f)), arg_1.b.x, _wgslsmith_f_op_f32(799f + 1454f))), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(arg_0.e.c.x, arg_1.c.x, arg_1.d.x, 1u)), ~(~vec4<u32>(0u, 1u, arg_0.c.c.x, arg_0.c.c.x)), select(firstLeadingBit(vec4<u32>(7762u, arg_1.d.x, arg_0.c.c.x, arg_1.c.x)), ~vec4<u32>(1u, arg_0.e.d.x, arg_0.c.c.x, 0u), all(arg_0.a))), countOneBits(firstLeadingBit(vec3<u32>(arg_1.c.x, 78421u, 4294967295u)))), Struct_2(vec4<bool>(all(vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.b)), !(!arg_0.a.x), all(select(vec3<bool>(arg_0.b, arg_0.a.x, arg_0.a.x), arg_0.a.xxz, arg_0.b)), true), all(arg_0.a.yzy), Struct_1(_wgslsmith_mod_i32(_wgslsmith_div_i32(arg_1.a, 0i), ~1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, 2200f, arg_0.c.b.x, arg_1.b.x)), reverseBits(vec4<u32>(arg_0.e.c.x, arg_0.d, 19625u, 0u)), vec3<u32>(_wgslsmith_sub_u32(arg_0.c.d.x, 0u), arg_0.e.d.x, _wgslsmith_div_u32(arg_1.c.x, 38689u))), _wgslsmith_mult_u32((arg_0.d & 36766u) >> (arg_0.e.d.x % 32u), ~_wgslsmith_mod_u32(arg_0.c.c.x, arg_0.d)), arg_1), !arg_0.a.zw, vec3<u32>(arg_1.d.x, _wgslsmith_sub_u32(arg_0.c.d.x & 13110u, abs(72581u)) ^ 49225u, 0u));
    let var_1 = var_0.b.a;
    var var_2 = 1i;
    return ~(~max(~(arg_1.c.x ^ var_0.d.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.e.c.x, var_0.b.d, arg_1.c.x, arg_1.c.x), vec4<u32>(0u, 0u, 23159u, arg_1.c.x))));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: u32) -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2, func_3(Struct_2(vec4<bool>(false, false, true, true), arg_0.x, Struct_1(u_input.b.x, vec4<f32>(arg_1, arg_1, arg_1, arg_1), vec4<u32>(26797u, 0u, arg_2, 36753u), vec3<u32>(19772u, arg_2, 9868u)), arg_2, Struct_1(1i, vec4<f32>(arg_1, -122f, 678f, arg_1), vec4<u32>(arg_2, 1u, 1u, arg_2), vec3<u32>(4294967295u, arg_2, arg_2))), Struct_1(u_input.b.x, vec4<f32>(arg_1, arg_1, arg_1, arg_1), vec4<u32>(arg_2, arg_2, arg_2, arg_2), vec3<u32>(4294967295u, 12236u, arg_2))), arg_2, 43119u), _wgslsmith_add_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(36789u, arg_2), vec2<u32>(19947u, 1u)), 1u | arg_2, _wgslsmith_mod_u32(18306u, arg_2), arg_2), ~vec4<u32>(46565u, 54938u, 4294967295u, _wgslsmith_div_u32(arg_2, 1u))));
    let var_1 = Struct_1(u_input.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1085f, arg_1, arg_1, arg_1)), false)))), abs(vec4<u32>(1u, ~59626u, arg_2, 4294967295u) & select(~vec4<u32>(4294967295u, arg_2, arg_2, var_0), select(vec4<u32>(arg_2, 4294967295u, var_0, 0u), vec4<u32>(var_0, 1472u, var_0, var_0), true), !vec4<bool>(false, arg_0.x, true, arg_0.x))), vec3<u32>(var_0, 0u, reverseBits(arg_2)));
    global0 = 109493u;
    let var_2 = 2307u;
    let var_3 = !(!select(arg_0, !(!arg_0), vec2<bool>(all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), arg_0.x)));
    return Struct_3(Struct_1(u_input.b.x, var_1.b, vec4<u32>(reverseBits(0u), ~4294967295u, var_1.c.x, var_1.c.x) | vec4<u32>(25052u, firstLeadingBit(4294967295u), _wgslsmith_clamp_u32(arg_2, var_2, var_0), 16703u ^ var_2), select(vec3<u32>(~arg_2, 72805u, ~var_0), ~min(vec3<u32>(82693u, 0u, var_1.c.x), var_1.c.xwy), var_3.x)), Struct_2(vec4<bool>(false, !all(arg_0), true, !(1u > var_2)), false, Struct_1(~(-u_input.b.x), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_1.b.x), -1802f, 998f), ~var_1.c, ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0, var_0, 57u), var_1.d)), 11699u, var_1), arg_0, vec3<u32>(var_1.c.x, ~var_0 >> (firstTrailingBit(~4294967295u) % 32u), 1u));
}

fn func_1() -> Struct_3 {
    global0 = _wgslsmith_div_u32(~(~4294967295u), abs(firstTrailingBit(abs(2746u)) & 1u));
    let var_0 = func_2(select(select(vec2<bool>(select(false, false, true), any(vec3<bool>(false, false, true))), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), false), all(vec4<bool>(true, false, true, false))), vec2<bool>(true, true), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), false))), -550f, abs(1u));
    global0 = 1u;
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.e.b.x))), var_0.a.b.x)));
    global0 = _wgslsmith_div_u32(var_0.a.c.x, ~(var_0.a.d.x >> (64979u % 32u)));
    return var_0;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(select(arg_0.a.b.x, arg_0.b.e.b.x, true));
    global0 = ~0u;
    let var_1 = func_2(vec2<bool>(func_1().a.b.x == _wgslsmith_f_op_f32(min(func_1().b.c.b.x, arg_3.e.b.x)), true), 395f, 0u).b;
    var_0 = arg_2;
    var var_2 = func_1().b;
    return ~32330u;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(vec3<u32>(select(25513u, 104107u, any(vec4<bool>(true, true, false, false))), 15113u, func_4(func_1(), func_1().b.c, func_1().a.b.x, Struct_2(vec4<bool>(false, false, false, true), false, Struct_1(58780i, vec4<f32>(1956f, 794f, 787f, 276f), vec4<u32>(46055u, 20668u, 4294967295u, 1u), vec3<u32>(0u, 51278u, 36289u)), 1u, Struct_1(u_input.b.x, vec4<f32>(419f, 1754f, -948f, 1936f), vec4<u32>(47429u, 10579u, 13707u, 9593u), vec3<u32>(5332u, 1u, 23694u))))), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 14114u, 1u), firstTrailingBit(vec3<u32>(31528u, 0u, 26834u)))), min(~u_input.a.zx, _wgslsmith_div_vec2_i32(u_input.b.yz, u_input.b.wz)), reverseBits(min(min(min(vec3<i32>(3272i, 1i, u_input.b.x), u_input.b.wwy), vec3<i32>(1i, 0i, u_input.a.x)), u_input.b.zxx)));
}

