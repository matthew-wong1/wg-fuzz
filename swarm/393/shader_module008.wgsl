struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: array<f32, 11> = array<f32, 11>(1409f, 691f, -1303f, 480f, -373f, -926f, 566f, -873f, -1422f, -1577f, -1153f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.a.x, 11u)])) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 11u)])), -630f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1023f * -1060f))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], -819f, global1[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec3<f32>(372f, -710f, 918f))), vec3<f32>(global1[_wgslsmith_index_u32(23195u, 11u)], 751f, 429f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-898f, 649f, 2312f)))), select(select(vec3<bool>(true, false, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)], true), global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 3u)], true, true), !vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], true)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(1u, 11u)], -492f, global1[_wgslsmith_index_u32(u_input.a.x, 11u)]) * vec3<f32>(-1709f, 863f, 1643f))))))));
    global0 = array<bool, 3>();
    var var_1 = (~(~vec3<u32>(0u, u_input.a.x, 1u)) ^ ~vec3<u32>(0u, 1u, ~u_input.a.x)) ^ ~((select(vec3<u32>(23817u, 166802u, u_input.a.x), vec3<u32>(123057u, 5150u, 4294967295u), vec3<bool>(false, false, false)) ^ vec3<u32>(u_input.a.x, u_input.a.x, 58748u)) >> (vec3<u32>(~1u, ~u_input.a.x, 9230u) % vec3<u32>(32u)));
    global1 = array<f32, 11>();
    global1 = array<f32, 11>();
    return vec2<f32>(-338f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(424f, var_0.x))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x + -806f)))))));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(57090u, 11u)]), _wgslsmith_f_op_f32(f32(-1f) * -545f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(~31948i))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, global1[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec2<f32>(global1[_wgslsmith_index_u32(32872u, 11u)], global1[_wgslsmith_index_u32(0u, 11u)])))))));
    var var_1 = Struct_3(-17791i, Struct_2(Struct_1(reverseBits(u_input.b.x)), ~u_input.a.x, true, Struct_1(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b.x, 8963i), 32810i)), u_input.c), ~select(vec4<u32>(52103u, 1u, _wgslsmith_mult_u32(1674u, u_input.a.x), firstLeadingBit(0u)), ~vec4<u32>(u_input.a.x, 4294967295u, 9918u, u_input.a.x) & ~vec4<u32>(29990u, 4294967295u, u_input.a.x, 13313u), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)], false), select(vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)], true, true), false), !vec4<bool>(global0[_wgslsmith_index_u32(27169u, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)], false))), vec3<u32>(u_input.a.x, u_input.a.x << (1u % 32u), u_input.a.x));
    let var_2 = var_1.b.a;
    var var_3 = ~u_input.a.x;
    var_3 = _wgslsmith_add_u32(firstTrailingBit(var_1.b.b), 606u) & _wgslsmith_mod_u32(_wgslsmith_mod_u32(2425u & u_input.a.x, min(~u_input.a.x, 4294967295u)), 4294967295u);
    return ~(-(~var_2.a));
}

fn func_1() -> Struct_3 {
    let var_0 = vec3<i32>(func_2(), u_input.b.x, 19098i);
    var var_1 = u_input.a.x == ~_wgslsmith_div_u32(u_input.a.x, u_input.a.x);
    var var_2 = u_input.a;
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(u_input.a.x), _wgslsmith_mod_u32(92504u, u_input.a.x) | u_input.a.x) & var_2.x, 3u)] && all(select(vec3<bool>(true, false, true), select(!vec3<bool>(global0[_wgslsmith_index_u32(var_2.x, 3u)], false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, global0[_wgslsmith_index_u32(var_2.x, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), false), all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(11411u, 3u)]))), false));
    let var_4 = vec2<f32>(global1[_wgslsmith_index_u32(~3366u, 11u)], global1[_wgslsmith_index_u32(~(1u >> (var_2.x % 32u)), 11u)]);
    return Struct_3(_wgslsmith_dot_vec2_i32(~(-vec2<i32>(u_input.c, u_input.b.x)), firstLeadingBit(firstTrailingBit(u_input.b.zx >> (vec2<u32>(u_input.a.x, var_2.x) % vec2<u32>(32u))))), Struct_2(Struct_1(func_2()), ~var_2.x, any(vec4<bool>(!global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(select(var_2.x, 0u, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), 3u)], var_3, all(vec4<bool>(var_3, var_3, true, var_3)))), Struct_1(u_input.b.x), -24297i), max(~(~(vec4<u32>(u_input.a.x, var_2.x, 16807u, var_2.x) << (vec4<u32>(var_2.x, var_2.x, var_2.x, u_input.a.x) % vec4<u32>(32u)))), ~(~vec4<u32>(43631u, 0u, u_input.a.x, 6063u))), (~_wgslsmith_div_vec3_u32(vec3<u32>(var_2.x, var_2.x, 29934u), vec3<u32>(var_2.x, u_input.a.x, 33572u)) & _wgslsmith_mult_vec3_u32(select(vec3<u32>(4294967295u, var_2.x, 1u), vec3<u32>(var_2.x, u_input.a.x, u_input.a.x), vec3<bool>(false, true, var_3)), min(vec3<u32>(1029u, var_2.x, u_input.a.x), vec3<u32>(51423u, u_input.a.x, 29533u)))) >> (vec3<u32>(~(~var_2.x), _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(var_2.x, var_2.x)), var_2.x) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2, arg_3: u32) -> StorageBuffer {
    global0 = array<bool, 3>();
    var var_0 = Struct_1(~u_input.b.x);
    var var_1 = arg_2.a;
    var_1 = arg_0.b.d;
    let var_2 = vec2<bool>(any(vec4<bool>(true, !(arg_0.a < var_1.a), !global0[_wgslsmith_index_u32(~0u, 3u)], any(!vec2<bool>(false, arg_2.c)))), !global0[_wgslsmith_index_u32(~arg_3, 3u)] && (select(false | arg_2.c, any(vec3<bool>(global0[_wgslsmith_index_u32(arg_3, 3u)], true, arg_2.c)), all(vec4<bool>(arg_0.b.c, arg_2.c, false, arg_0.b.c))) == (var_0.a <= var_0.a)));
    return StorageBuffer(~vec2<i32>(min(-1i, u_input.c) >> ((arg_3 ^ 1u) % 32u), var_1.a), ~(-var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 3>();
    let var_0 = !global0[_wgslsmith_index_u32(u_input.a.x >> (38569u % 32u), 3u)];
    var var_1 = ~u_input.a;
    global1 = array<f32, 11>();
    var var_2 = 1589f;
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1555f, -395f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(81136u, 11u)]), _wgslsmith_f_op_f32(f32(-1f) * -671f))))));
    global1 = array<f32, 11>();
    global0 = array<bool, 3>();
    let x = u_input.a;
    s_output = func_4(func_1(), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(-2147483647i)).x + 855f) + var_3.x))), func_1().b, (~(~u_input.a.x) >> (45997u % 32u)) >> (func_1().b.b % 32u));
}

