struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(270f, 351f, 440f), vec3<f32>(1000f, 255f, -205f), vec3<f32>(-293f, 1000f, -2633f), vec3<f32>(608f, -1194f, 480f), vec3<f32>(-600f, -1062f, 1038f), vec3<f32>(-223f, -620f, 1264f), vec3<f32>(-366f, 102f, -297f), vec3<f32>(204f, -320f, -1478f), vec3<f32>(-615f, -470f, -365f));

var<private> global1: Struct_3;

var<private> global2: array<u32, 17> = array<u32, 17>(378u, 37591u, 0u, 64248u, 1u, 15649u, 0u, 6468u, 0u, 8174u, 36938u, 1u, 1u, 1u, 20335u, 0u, 1u);

var<private> global3: i32 = 61570i;

var<private> global4: array<Struct_1, 32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32) -> vec4<i32> {
    global1 = Struct_3(Struct_1(abs(u_input.b.x)));
    let var_0 = -953f;
    var var_1 = false;
    global1 = Struct_3(global1.a);
    global2 = array<u32, 17>();
    return arg_0;
}

fn func_2() -> bool {
    global2 = array<u32, 17>();
    global3 = -28384i;
    global0 = array<vec3<f32>, 9>();
    global2 = array<u32, 17>();
    var var_0 = -_wgslsmith_sub_vec4_i32(vec4<i32>(1i, ~(global1.a.a & 1i), u_input.d.x, -(i32(-1i) * -4746i)), ~_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.a.a, 1i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.d.x, u_input.d.x, 28729i, -45255i)), func_3(vec4<i32>(global1.a.a, -1i, 1i, global1.a.a), 0u)));
    return false;
}

fn func_1() -> vec2<bool> {
    var var_0 = select(vec2<bool>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.a.a, global1.a.a, u_input.d.x), vec3<i32>(1i, 2147483647i, global1.a.a)), u_input.b) < (u_input.b.x & global1.a.a), func_2()), vec2<bool>(true, !func_2()), min(_wgslsmith_dot_vec4_u32(vec4<u32>(43847u, u_input.e, 56789u, 4294967295u) ^ vec4<u32>(global2[_wgslsmith_index_u32(u_input.c, 17u)], global2[_wgslsmith_index_u32(u_input.a, 17u)], u_input.c, global2[_wgslsmith_index_u32(u_input.c, 17u)]), vec4<u32>(u_input.c, 0u, u_input.a, u_input.c)), ~1u) < ~(~(~u_input.a)));
    let var_1 = ~(-_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(u_input.b, ~vec3<i32>(u_input.d.x, 2147483647i, global1.a.a)), -u_input.b << ((vec3<u32>(global2[_wgslsmith_index_u32(u_input.c, 17u)], global2[_wgslsmith_index_u32(25209u, 17u)], u_input.e) | vec3<u32>(u_input.a, u_input.c, u_input.e)) % vec3<u32>(32u))));
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~0u, u_input.a), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 90612u), 17u)]), ~reverseBits(vec2<u32>(~47341u, 0u >> (0u % 32u)))), 32u)];
    var var_3 = ~vec3<u32>(reverseBits(_wgslsmith_sub_u32(~u_input.e, _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(u_input.a, 17u)], 39228u, global2[_wgslsmith_index_u32(6749u, 17u)]))), _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.e, global2[_wgslsmith_index_u32(u_input.e, 17u)]), countOneBits(vec3<u32>(30301u, u_input.a, 1u)))), 22628u);
    global3 = abs(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, global1.a.a), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(46925i, 86840i, -10664i, global1.a.a)), _wgslsmith_div_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.b.x, 17077i), vec4<i32>(u_input.b.x, -1i, u_input.d.x, 1i)))) >> ((firstTrailingBit(4294967295u) >> (var_3.x % 32u)) % 32u));
    return !select(select(vec2<bool>(true, true), select(vec2<bool>(var_0.x, false), vec2<bool>(true, var_0.x), var_0.x), true), select(!select(vec2<bool>(true, var_0.x), vec2<bool>(false, var_0.x), var_0.x), select(vec2<bool>(false, true), !vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, false), var_0.x)), !var_0.x & true), select(vec2<bool>(!var_0.x, any(vec3<bool>(var_0.x, false, true))), select(!vec2<bool>(var_0.x, false), vec2<bool>(true, var_0.x), all(vec3<bool>(false, var_0.x, false))), _wgslsmith_f_op_f32(-275f + -774f) > _wgslsmith_f_op_f32(ceil(-822f))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 17>();
    global0 = array<vec3<f32>, 9>();
    var var_0 = false;
    let var_1 = u_input.d.x;
    var var_2 = _wgslsmith_sub_vec4_i32(~vec4<i32>(_wgslsmith_add_i32(var_1, 2147483647i) >> (u_input.e % 32u), ~_wgslsmith_mult_i32(u_input.d.x, global1.a.a), abs(-23163i), _wgslsmith_mod_i32(var_1, var_1)), vec4<i32>(-var_1, _wgslsmith_sub_i32(_wgslsmith_div_i32(-global1.a.a, var_1), firstLeadingBit(~u_input.b.x)), var_1, ((u_input.d.x ^ -32789i) >> ((global2[_wgslsmith_index_u32(u_input.a, 17u)] & global2[_wgslsmith_index_u32(u_input.a, 17u)]) % 32u)) >> (1u % 32u)));
    var_2 = -(~vec4<i32>(var_1, -29777i, _wgslsmith_dot_vec3_i32(var_2.wwx, vec3<i32>(47218i, -39528i, var_2.x)) << (select(u_input.e, u_input.e, true) % 32u), -1i));
    var_0 = all(select(select(vec2<bool>(true, all(vec4<bool>(false, false, false, true))), !func_1(), all(vec2<bool>(false, false))), vec2<bool>(true, !all(vec3<bool>(false, false, true))), !func_2()));
    var var_3 = Struct_2(Struct_1(var_2.x), global4[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 17u)], 32u)], select(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), vec3<bool>(any(vec3<bool>(true, false, false)), true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), func_1().x), true), _wgslsmith_clamp_i32(~(-global1.a.a), var_1 | 0i, ~abs(u_input.d.x)) >> (~reverseBits(u_input.e) % 32u), global2[_wgslsmith_index_u32(0u, 17u)]);
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1108f - var_4.x) + _wgslsmith_f_op_f32(f32(-1f) * -247f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x))))), countOneBits(_wgslsmith_mult_vec3_i32(-u_input.b, -u_input.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.x, 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-344f * 479f)))));
}

