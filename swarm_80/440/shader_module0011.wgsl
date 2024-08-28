struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec2<bool>(false, false), 46217u, 0i, 58582u), Struct_3(vec2<bool>(false, false), 23311u, -1314i, 23283u), Struct_3(vec2<bool>(true, false), 1u, 9199i, 13064u), Struct_3(vec2<bool>(true, true), 0u, 1i, 0u), Struct_3(vec2<bool>(false, true), 37851u, 4334i, 9449u), Struct_3(vec2<bool>(false, false), 4294967295u, 1i, 1u), Struct_3(vec2<bool>(true, true), 86864u, i32(-2147483648), 31794u), Struct_3(vec2<bool>(false, true), 38840u, 1i, 0u), Struct_3(vec2<bool>(false, true), 4294967295u, -1i, 0u), Struct_3(vec2<bool>(false, true), 107308u, -1i, 62760u), Struct_3(vec2<bool>(false, true), 1u, 23027i, 1u), Struct_3(vec2<bool>(false, true), 46358u, i32(-2147483648), 1u), Struct_3(vec2<bool>(true, true), 0u, 30886i, 30804u), Struct_3(vec2<bool>(false, true), 48304u, -20342i, 1u), Struct_3(vec2<bool>(false, false), 4294967295u, 2147483647i, 4294967295u), Struct_3(vec2<bool>(false, true), 0u, -31371i, 1u), Struct_3(vec2<bool>(false, true), 4294967295u, -1i, 4294967295u));

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_1, 16>;

var<private> global3: vec3<f32>;

var<private> global4: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec2<bool>(true, true), 0u, -19179i, 1u), Struct_3(vec2<bool>(false, false), 39445u, 65956i, 0u), Struct_3(vec2<bool>(true, true), 6223u, i32(-2147483648), 0u), Struct_3(vec2<bool>(false, false), 67985u, 18474i, 4294967295u), Struct_3(vec2<bool>(false, true), 47985u, 2147483647i, 1u), Struct_3(vec2<bool>(false, false), 11713u, -10413i, 0u), Struct_3(vec2<bool>(true, false), 16683u, 0i, 28601u), Struct_3(vec2<bool>(true, false), 4294967295u, i32(-2147483648), 0u), Struct_3(vec2<bool>(true, true), 0u, 27041i, 15569u), Struct_3(vec2<bool>(true, true), 30117u, 2147483647i, 34102u), Struct_3(vec2<bool>(false, false), 1u, -4708i, 1u), Struct_3(vec2<bool>(true, false), 4294967295u, -52572i, 0u), Struct_3(vec2<bool>(false, true), 0u, -54765i, 0u), Struct_3(vec2<bool>(false, true), 21846u, -4037i, 1u), Struct_3(vec2<bool>(true, false), 0u, 2147483647i, 15743u), Struct_3(vec2<bool>(true, false), 0u, 39409i, 39050u), Struct_3(vec2<bool>(true, true), 4294967295u, 31795i, 4294967295u));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: f32, arg_3: vec4<f32>) -> bool {
    let var_0 = !(firstLeadingBit(-_wgslsmith_mod_i32(-1i, arg_1.x)) < -1i);
    var var_1 = global0[_wgslsmith_index_u32(abs(~4294967295u), 17u)];
    var var_2 = Struct_3(var_1.a, 19338u ^ _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_1.d, _wgslsmith_mod_u32(var_1.d, var_1.b)), var_1.d), -2147483647i, abs(~_wgslsmith_mod_u32(var_1.d, 4294967295u)) | ~var_1.b);
    let var_3 = Struct_2(var_1.b, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.b ^ var_1.b, ~1u, 1u), 16u)], var_1.a.x);
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.wyy) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-302f, var_3.b.d.x, arg_3.x)) * _wgslsmith_f_op_vec3_f32(-arg_3.xxw)) * vec3<f32>(_wgslsmith_f_op_f32(sign(var_3.b.d.x)), var_3.b.d.x, global3.x)))));
    return any(!vec3<bool>(true, all(vec2<bool>(true, false)), global1.x)) || select(true, all(vec2<bool>(!global1.x, var_2.a.x)), all(!vec3<bool>(var_1.a.x, false, var_1.a.x)));
}

fn func_2() -> Struct_2 {
    let var_0 = ~select(-_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(0i, -1i, u_input.a, 0i), vec4<i32>(u_input.a, 0i, u_input.d, -7968i)), u_input.b), -1i, true);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1202f, global3.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + global3.x)), global3.x, global1.x != func_3(var_0, vec3<i32>(-11781i, -1i, var_0), -1541f, vec4<f32>(global3.x, 169f, -770f, global3.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-754f))))));
    let var_2 = var_1.x;
    var var_3 = Struct_2(_wgslsmith_add_u32(26650u, 1u), global2[_wgslsmith_index_u32(~89044u, 16u)], global1.x);
    var_3 = Struct_2(~95753u, Struct_1(vec4<i32>(-1i) * -(~vec4<i32>(var_3.b.a.x, u_input.d, -37681i, u_input.c)), !global1.xy, global1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.xx * global3.zz) - _wgslsmith_div_vec2_f32(var_1.xz, vec2<f32>(var_3.b.d.x, var_1.x))))), !all(vec2<bool>(true, true)));
    return Struct_2(var_3.a, Struct_1(vec4<i32>(-2147483647i, -1i ^ _wgslsmith_clamp_i32(-2147483647i, 12726i, u_input.d), 43284i, 32470i), vec2<bool>(true, var_3.c && true), global1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.yz)))), true);
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> Struct_2 {
    var var_0 = ~(~max(~(~vec4<u32>(arg_1, 77436u, 1u, 18592u)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, 0u, arg_1, 0u), vec4<u32>(arg_1, arg_1, 38928u, 42476u)), vec4<u32>(arg_1, arg_1, 61111u, arg_1))));
    global0 = array<Struct_3, 17>();
    var var_1 = global0[_wgslsmith_index_u32(arg_1, 17u)];
    global0 = array<Struct_3, 17>();
    var_1 = Struct_3(global1.ww, var_0.x, ~_wgslsmith_div_i32(1i, ~reverseBits(u_input.b.x)), _wgslsmith_dot_vec3_u32(~(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1, 25181u, 0u), vec3<u32>(1u, arg_1, 4294967295u)) ^ ~vec3<u32>(4294967295u, 18001u, var_1.b)), var_0.zyw));
    return func_2();
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<u32>) -> StorageBuffer {
    global4 = array<Struct_3, 17>();
    var var_0 = Struct_3(arg_1.b.b, arg_2.x, arg_0.x, _wgslsmith_add_u32(~(~1u), arg_2.x));
    let var_1 = arg_1;
    global1 = !vec4<bool>(!select(any(vec2<bool>(global1.x, var_1.b.b.x)), var_1.b.a.x >= u_input.b.x, !var_0.a.x), false, any(!global1.zyw), !(all(vec3<bool>(var_1.c, false, global1.x)) == false));
    var var_2 = func_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.x)))), 230f, _wgslsmith_f_op_f32(f32(-1f) * -469f)), _wgslsmith_div_u32(var_1.a, 1u)).b;
    return StorageBuffer(681f, _wgslsmith_clamp_u32(var_1.a, 16667u, ~(~(~var_0.b))), _wgslsmith_add_vec2_u32(arg_2.xz, vec2<u32>(1u, func_2().a)), min(u_input.b, arg_1.b.a ^ vec4<i32>(-u_input.a, firstLeadingBit(25551i), 1i, -var_2.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!(!(!vec4<bool>(global1.x, true, global1.x, global1.x)))), vec4<bool>(any(!vec4<bool>(true, global1.x, true, global1.x)), false, !global1.x, !(!any(vec4<bool>(global1.x, global1.x, global1.x, false)))), any(!global1.yy));
    global4 = array<Struct_3, 17>();
    let x = u_input.a;
    s_output = func_4(-min(u_input.b.zxy, vec3<i32>(i32(-1i) * -1i, _wgslsmith_add_i32(u_input.b.x, u_input.a), 1i)), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-173f, 1495f, 168f, 181f) + vec4<f32>(-825f, 836f, -318f, global3.x))), ~57703u), vec4<u32>(select(firstLeadingBit(0u), 19258u, var_0.x), func_2().a, _wgslsmith_div_u32(~1u, min(38659u, 14681u) | firstTrailingBit(89333u)), ~_wgslsmith_clamp_u32(reverseBits(4294967295u), 4294967295u, 4964u)));
}

