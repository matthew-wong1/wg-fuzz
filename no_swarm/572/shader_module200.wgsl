struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = 280f;

var<private> global2: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, 215f))));
    let var_1 = Struct_3(any(vec2<bool>(true, global2.a.x)), max(~min(_wgslsmith_mod_vec4_u32(vec4<u32>(39256u, 4294967295u, 4294967295u, u_input.a), vec4<u32>(global0.d, global2.c.x, 4294967295u, 40136u)), ~vec4<u32>(u_input.a, 0u, global0.d, global2.c.x)), max(reverseBits(vec4<u32>(global0.d, global2.c.x, u_input.a, global2.c.x)), abs(vec4<u32>(global0.d, 10241u, u_input.a, global2.d))) & _wgslsmith_mod_vec4_u32(~vec4<u32>(global0.c.x, u_input.a, global0.c.x, 4294967295u), ~vec4<u32>(global2.c.x, global0.c.x, 27047u, global2.d))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - arg_0.x)), arg_0.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(405f, 1441f, 2326f), vec3<f32>(arg_0.x, 1049f, -1267f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(510f, arg_0.x, 1000f), vec3<f32>(631f, arg_0.x, arg_0.x)))))), !(!global2.e.wzx))), ~(~countOneBits(vec4<u32>(u_input.a, global0.c.x, global0.d, 61476u)) ^ ~_wgslsmith_add_vec4_u32(vec4<u32>(18866u, 1u, global0.d, u_input.a), vec4<u32>(global0.c.x, 41114u, global2.d, global2.c.x))));
    let var_2 = Struct_1(vec4<bool>(any(!(!global0.a)), _wgslsmith_dot_vec3_i32(u_input.c.xxw, ~u_input.c.zxz) > _wgslsmith_dot_vec4_i32(u_input.c, -vec4<i32>(2147483647i, u_input.c.x, global2.b, u_input.b)), firstTrailingBit(global2.b) <= ~firstLeadingBit(50414i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), ~(-1i), var_1.b.zwy, ~global0.d, global0.a);
    var var_3 = Struct_2(Struct_1(!select(vec4<bool>(true, false, false, true), vec4<bool>(global0.a.x, var_1.a, false, var_1.a), var_2.e.x | true), global0.b, ~(vec3<u32>(global0.c.x, 0u, var_2.d) & _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.c.x, 1u, global0.d), var_2.c)), 0u, vec4<bool>(true, true, false, false)));
    global2 = Struct_1(var_2.e, 1i, var_3.a.c, ~_wgslsmith_div_u32(9918u, _wgslsmith_dot_vec2_u32(global2.c.zx, _wgslsmith_sub_vec2_u32(vec2<u32>(var_3.a.d, 56748u), var_1.b.yy))), !select(select(var_2.a, !var_3.a.e, select(vec4<bool>(false, false, var_1.a, true), var_3.a.a, var_3.a.e)), vec4<bool>(var_1.a & false, true, true, 17330u <= global2.d), select(global2.e, select(var_3.a.e, var_3.a.a, global0.a), arg_0.x >= 1000f)));
    return !var_2.e;
}

fn func_2() -> Struct_2 {
    let var_0 = 89266u;
    global0 = Struct_1(select(global0.a, !vec4<bool>(select(false, global0.a.x, false), all(global2.a.wyw), true, true), !func_3(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(189f, 1931f))))), reverseBits(firstLeadingBit(1i)), global2.c, min(~1u, _wgslsmith_add_u32(_wgslsmith_div_u32(53956u, abs(var_0)), firstTrailingBit(~5500u))), !global0.a);
    return Struct_2(Struct_1(vec4<bool>((true & global0.e.x) & !global0.e.x, true, true, func_3(vec2<f32>(-714f, 783f)).x), _wgslsmith_mod_i32((i32(-1i) * -2147483647i) ^ (global2.b & global2.b), global0.b), global2.c, _wgslsmith_add_u32(~(1u | u_input.a), ~global0.d), global0.a));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = func_2().a;
    global0 = func_2().a;
    return Struct_1(arg_0.a.a, -45422i, _wgslsmith_div_vec3_u32(~countOneBits(vec3<u32>(14197u, arg_1.b.x, 43546u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_0.a.c.x, 7008u), arg_0.a.c)) << (global0.c % vec3<u32>(32u)), 98930u, vec4<bool>((_wgslsmith_dot_vec3_i32(vec3<i32>(global2.b, var_0.b, -16446i), vec3<i32>(-10001i, -7932i, global0.b)) >= _wgslsmith_div_i32(global0.b, global2.b)) | (reverseBits(global0.d) >= countOneBits(39674u)), var_0.a.x, _wgslsmith_dot_vec4_u32(arg_1.b, vec4<u32>(48723u, 13975u, 1u, global2.c.x)) == ~(~global2.c.x), !(!arg_2.x)));
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = 1115f;
    global1 = var_0;
    global0 = func_4(func_2(), Struct_3(func_2().a.a.x, vec4<u32>(~global0.d, 0u, global2.c.x, func_2().a.d), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1289f, var_0, _wgslsmith_f_op_f32(-var_0)))), ~max(~vec4<u32>(0u, u_input.a, global0.d, 57314u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, 1u, 4294967295u, global0.c.x), vec4<u32>(4294967295u, global2.d, arg_0, 105854u)))), vec4<bool>(true, any(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - vec2<f32>(var_0, 2101f)))), true, !func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, 803f), vec2<f32>(1135f, -915f), vec2<bool>(false, global2.a.x)))).x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 3116f))));
    let var_1 = vec4<bool>(global2.e.x, true, global2.a.x, (global2.a.x != global2.e.x) & !any(global2.a.wx));
    var var_2 = -(~countOneBits(vec3<i32>(global2.b, -2147483647i, 1i) ^ ~vec3<i32>(global2.b, 1i, 0i)));
    return 1874f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.a.x;
    let var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(~(~global0.d), 0u, (_wgslsmith_mod_u32(global0.d, u_input.a) >> (0u % 32u)) ^ (~1u ^ firstTrailingBit(global0.d)), 38105u), ~(~(vec4<u32>(u_input.a, 1u, global0.d, 1u) ^ vec4<u32>(global0.d, global0.d, global2.d, global0.c.x))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(~44692u, ~1u, global2.d << (5074u % 32u), ~36367u), ~reverseBits(vec4<u32>(u_input.a, 51237u, u_input.a, global0.d))) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(~(~global0.d))) + -1000f);
    global1 = 744f;
    var var_3 = all(global0.a);
    let var_4 = vec3<f32>(2138f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-573f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1258f * _wgslsmith_f_op_f32(1000f + -765f)) + _wgslsmith_f_op_f32(-2800f - _wgslsmith_f_op_f32(select(-1210f, 509f, global2.a.x)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-177f))))))));
    var var_5 = Struct_3(select(true, true, !((global0.a.x && global2.e.x) == any(global0.a.wyz))), ~vec4<u32>(1u, ~(~28743u), 1u, min(u_input.a, _wgslsmith_div_u32(0u, 16134u))), _wgslsmith_f_op_vec3_f32(step(var_4, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.x, _wgslsmith_f_op_f32(sign(2480f)), _wgslsmith_f_op_f32(var_4.x * var_4.x)) * vec3<f32>(1068f, _wgslsmith_div_f32(var_4.x, var_4.x), _wgslsmith_f_op_f32(select(-808f, var_4.x, false)))))), _wgslsmith_add_vec4_u32(~vec4<u32>(reverseBits(12410u), global2.d, _wgslsmith_sub_u32(27455u, 1u), _wgslsmith_mod_u32(global0.c.x, 1u)), _wgslsmith_mod_vec4_u32(countOneBits(_wgslsmith_mod_vec4_u32(var_1, var_1)), vec4<u32>(21603u | var_1.x, _wgslsmith_sub_u32(62673u, global0.c.x), u_input.a, 77449u))));
    let var_6 = vec4<i32>(-1i, -_wgslsmith_add_i32(u_input.b, global2.b >> ((var_5.d.x | 94902u) % 32u)), ~0i, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(abs(66740i ^ u_input.b) ^ 0i, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 1i, var_6.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_6.x, -1i, 35343i), u_input.c.zzz, u_input.c.zwx)), abs(-1i)), 1i, ~(~abs(~0u)), 64278u);
}

