struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-1i, -28222i, 2645i), vec4<f32>(1000f, 238f, 1464f, 1030f));

var<private> global1: array<bool, 8>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> u32 {
    let var_0 = global0.b.x;
    return _wgslsmith_add_u32(abs(4294967295u), ~4294967295u);
}

fn func_3() -> i32 {
    var var_0 = Struct_2(Struct_1(-global0.a, vec4<f32>(_wgslsmith_f_op_f32(global0.b.x * _wgslsmith_div_f32(432f, global0.b.x)), _wgslsmith_f_op_f32(460f * _wgslsmith_f_op_f32(-492f - 1000f)), global0.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.b.x, 1000f), 385f, global1[_wgslsmith_index_u32(0u, 8u)] && true)))), Struct_1(min(vec3<i32>(264i, u_input.a, 8746i) | reverseBits(vec3<i32>(global0.a.x, 6888i, global0.a.x)), _wgslsmith_div_vec3_i32(vec3<i32>(-39516i, 0i, 1i), abs(u_input.b.wyx))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b * global0.b)))), ~(1u ^ ((u_input.c << (u_input.e % 32u)) | 0u)));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global0.b.x, -457f))));
    var_1 = _wgslsmith_f_op_f32(sign(var_0.a.b.x));
    global1 = array<bool, 8>();
    let var_2 = select(true, global1[_wgslsmith_index_u32(var_0.c, 8u)], !global1[_wgslsmith_index_u32(var_0.c, 8u)] | all(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.e, 8u)], true, true), vec3<bool>(global1[_wgslsmith_index_u32(53908u, 8u)], global1[_wgslsmith_index_u32(var_0.c, 8u)], false), vec3<bool>(global1[_wgslsmith_index_u32(1u, 8u)], false, false)))) & !global1[_wgslsmith_index_u32(u_input.c, 8u)];
    return _wgslsmith_add_i32(reverseBits(-41038i), _wgslsmith_dot_vec2_i32(u_input.b.zx, vec2<i32>(global0.a.x << (var_0.c % 32u), -1i)));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: i32, arg_3: i32) -> u32 {
    var var_0 = Struct_3(Struct_1(abs(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-51288i, u_input.a, 0i), vec3<i32>(2147483647i, global0.a.x, u_input.a)))), global0.b), _wgslsmith_div_vec2_u32(u_input.d.yy, ~arg_1.yx), Struct_1(min(vec3<i32>(~u_input.b.x, firstTrailingBit(arg_3), arg_0), vec3<i32>(func_3(), arg_2, 35084i)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.b.x, 1667f, _wgslsmith_f_op_f32(-1132f * 814f), -355f)))), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(74502u, u_input.c, u_input.e), vec3<u32>(1735u, u_input.d.x >> (arg_1.x % 32u), countOneBits(arg_1.x))), 8u)], Struct_1(global0.a ^ (u_input.b.zxx << (~vec3<u32>(u_input.d.x, arg_1.x, arg_1.x) % vec3<u32>(32u))), global0.b));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b.x - _wgslsmith_f_op_f32(f32(-1f) * -607f)))), Struct_2(Struct_1(vec3<i32>(15359i, -2147483647i, 0i << (0u % 32u)), vec4<f32>(_wgslsmith_div_f32(1363f, var_0.e.b.x), _wgslsmith_f_op_f32(285f + var_0.c.b.x), var_0.c.b.x, _wgslsmith_f_op_f32(-var_0.c.b.x))), Struct_1(vec3<i32>(-1i, global0.a.x, _wgslsmith_mult_i32(0i, -1i)), _wgslsmith_f_op_vec4_f32(max(var_0.c.b, _wgslsmith_f_op_vec4_f32(max(global0.b, vec4<f32>(1782f, var_0.a.b.x, var_0.e.b.x, 679f)))))), _wgslsmith_mult_u32((arg_1.x >> (4294967295u % 32u)) >> (~1u % 32u), reverseBits(var_0.b.x))), Struct_2(Struct_1(u_input.b.wyx, global0.b), Struct_1(~vec3<i32>(30385i, global0.a.x, arg_3), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1144f, 681f, var_0.a.b.x, -880f)))), abs(u_input.d.x)));
    var var_2 = u_input.b;
    var var_3 = vec2<bool>(global1[_wgslsmith_index_u32(var_1.c.c, 8u)], !all(!select(vec2<bool>(var_0.d, global1[_wgslsmith_index_u32(46593u, 8u)]), vec2<bool>(false, var_0.d), global1[_wgslsmith_index_u32(var_0.b.x, 8u)])));
    var var_4 = !(!vec4<bool>(var_3.x, true, var_3.x, !any(vec2<bool>(var_3.x, false))));
    return ~_wgslsmith_add_u32(_wgslsmith_mult_u32(firstTrailingBit(38328u), select(u_input.e, 50148u, global1[_wgslsmith_index_u32(var_0.b.x | u_input.d.x, 8u)])), _wgslsmith_add_u32(3364u, countOneBits(78669u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 8>();
    var var_0 = ~reverseBits(4294967295u);
    let var_1 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, u_input.c, 22153u, 67990u) ^ (vec4<u32>(61223u, u_input.c, u_input.d.x, 59966u) & vec4<u32>(u_input.d.x, 0u, u_input.c, 23051u)), vec4<u32>(0u, u_input.e ^ u_input.c, u_input.c, func_1(global0.b.x, vec4<u32>(43766u, 81556u, u_input.d.x, 7118u)))) << (~(~(vec4<u32>(u_input.e, 0u, 0u, 25397u) << (vec4<u32>(8848u, 66801u, 33179u, 57936u) % vec4<u32>(32u)))) % vec4<u32>(32u)), select(~abs(vec4<u32>(u_input.e, 59973u, u_input.d.x, 4593u)), min(vec4<u32>(27128u, func_2(global0.a.x, u_input.d, 7293i, global0.a.x), u_input.d.x, ~u_input.c), _wgslsmith_mult_vec4_u32(min(vec4<u32>(u_input.e, u_input.e, u_input.c, u_input.d.x), vec4<u32>(u_input.c, 0u, 75117u, u_input.e)), vec4<u32>(u_input.e, 89585u, 35155u, u_input.d.x))), vec4<bool>(global1[_wgslsmith_index_u32(966u, 8u)], all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 8u)], global1[_wgslsmith_index_u32(u_input.e, 8u)], false, true)), global1[_wgslsmith_index_u32(u_input.c, 8u)], !(u_input.c != u_input.c))));
    var var_2 = Struct_2(Struct_1(~vec3<i32>(-global0.a.x, global0.a.x, -1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), 1065f, _wgslsmith_f_op_f32(step(754f, global0.b.x)), -1000f))), Struct_1(abs(firstLeadingBit(vec3<i32>(u_input.a, 0i, 0i) & vec3<i32>(global0.a.x, u_input.a, u_input.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b + global0.b) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(396f, -1273f, 429f, global0.b.x))))), _wgslsmith_clamp_u32(35116u, 22229u, var_1.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_2.a.b.yzx)))), vec3<f32>(_wgslsmith_f_op_f32(-1142f * -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-145f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(579f, global0.b.x))) * var_2.b.b.x))));
    var_2 = Struct_2(Struct_1(_wgslsmith_sub_vec3_i32(select(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, global0.a.x, u_input.b.x), global0.a), global0.a, any(vec4<bool>(global1[_wgslsmith_index_u32(6639u, 8u)], false, true, global1[_wgslsmith_index_u32(var_1.x, 8u)]))), u_input.b.wyw), vec4<f32>(var_3.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(101f)))), _wgslsmith_f_op_f32(f32(-1f) * -720f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1591f), _wgslsmith_f_op_f32(var_3.x + var_2.b.b.x)))), Struct_1(select(vec3<i32>(-u_input.a, ~u_input.a, var_2.a.a.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 1i, 1i), global0.a & vec3<i32>(global0.a.x, -224i, -1i), _wgslsmith_mod_vec3_i32(global0.a, vec3<i32>(global0.a.x, global0.a.x, -10159i))), false), vec4<f32>(-337f, _wgslsmith_f_op_f32(trunc(var_3.x)), -1888f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.b.x)))), _wgslsmith_mod_u32(var_1.x ^ 4294967295u, ~(~(~35383u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32((abs(vec3<i32>(0i, -1i, -1i)) >> (_wgslsmith_mod_vec3_u32(var_1.zxy, vec3<u32>(var_2.c, var_1.x, u_input.d.x)) % vec3<u32>(32u))) & u_input.b.xxy, global0.a), -2147483647i, abs(var_2.b.a.x), reverseBits(~var_1.x), var_2.c);
}

