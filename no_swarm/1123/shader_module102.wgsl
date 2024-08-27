struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), -57679i), vec2<f32>(-826f, -123f), vec2<u32>(9111u, 1u), -1i)), 0u, vec3<bool>(true, true, true), vec3<u32>(18805u, 6182u, 0u));

var<private> global1: array<i32, 32>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: Struct_4) -> vec3<bool> {
    let var_0 = ~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(11567u, arg_2.d.x, 4294967295u, 8285u), ~vec4<u32>(arg_2.d.x, global0.a.a.c.x, global0.b, arg_2.b))));
    let var_1 = ~countOneBits(-1i) > ~abs(arg_0.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.a.a.b.x + -442f), _wgslsmith_f_op_f32(global0.a.a.b.x * -710f), _wgslsmith_f_op_f32(ceil(1272f)), _wgslsmith_f_op_f32(f32(-1f) * -924f)))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.b.x)), arg_2.a.a.b.x, -1472f, _wgslsmith_f_op_f32(arg_2.a.a.b.x + _wgslsmith_f_op_f32(round(-179f)))))));
    var var_3 = global0.a.a.b.x;
    var_3 = _wgslsmith_div_f32(178f, _wgslsmith_f_op_f32(f32(-1f) * -1148f));
    return vec3<bool>(all(vec4<bool>(!(2147483647i >= arg_2.a.a.a.x), 76262u < ~arg_2.b, arg_2.c.x, arg_2.c.x)), (-global0.a.a.d | _wgslsmith_dot_vec3_i32(arg_0.xzw, arg_0.zzw)) < (_wgslsmith_mult_i32(-arg_0.x, u_input.a.x) & _wgslsmith_div_i32(arg_0.x, ~27165i)), true);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>) -> i32 {
    var var_0 = arg_0.a;
    return -15338i;
}

fn func_2() -> f32 {
    let var_0 = Struct_1(global0.a.a.a, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-728f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.b.x))), vec2<f32>(585f, -1000f), !global0.c.xx)), vec2<u32>(reverseBits(_wgslsmith_div_u32(global0.b, 35622u) << ((4294967295u << (global0.a.a.c.x % 32u)) % 32u)), global0.a.a.c.x), func_4(Struct_4(Struct_2(global0.a.a), ~(~1u), func_3(vec4<i32>(1i, -41350i, -215i, 18864i), select(global0.c, global0.c, global0.c), Struct_4(Struct_2(global0.a.a), 1u, vec3<bool>(global0.c.x, true, global0.c.x), vec3<u32>(global0.a.a.c.x, global0.b, global0.d.x))), select(_wgslsmith_mod_vec3_u32(global0.d, global0.d), _wgslsmith_clamp_vec3_u32(global0.d, vec3<u32>(0u, global0.d.x, 1u), vec3<u32>(global0.b, global0.b, global0.b)), global0.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a.b.x, 214f, global0.a.a.b.x) + vec3<f32>(global0.a.a.b.x, global0.a.a.b.x, 820f))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(404f, -1648f, -243f))))));
    global1 = array<i32, 32>();
    let var_1 = global0.a.a.a.x;
    let var_2 = Struct_4(Struct_2(Struct_1(select(~vec4<i32>(0i, -2147483647i, 1i, var_0.d), ~vec4<i32>(33710i, global0.a.a.d, 1178i, global1[_wgslsmith_index_u32(var_0.c.x, 32u)]), vec4<bool>(true, true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(ceil(-332f)), var_0.b.x), firstTrailingBit(~vec2<u32>(var_0.c.x, global0.b)), ~(-67126i))), 1u << (~_wgslsmith_sub_u32(~global0.b, countOneBits(49245u)) % 32u), vec3<bool>(true, all(global0.c), !(!global0.c.x != false)), global0.d);
    let var_3 = var_0.d;
    return 496f;
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> bool {
    let var_0 = _wgslsmith_sub_u32(select(global0.b, firstTrailingBit(firstLeadingBit(global0.a.a.c.x)), false), _wgslsmith_mod_u32(~abs(global0.b), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 1u, 1u, global0.b), vec4<u32>(global0.b, 24390u, global0.b, 27248u), vec4<bool>(false, arg_1.x, true, arg_0)), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.a.c.x, 0u, 66605u, 31015u), vec4<u32>(12146u, global0.b, global0.d.x, 14355u))), global0.b)));
    let var_1 = abs(-_wgslsmith_clamp_vec4_i32(min(vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 32u)], -46i, u_input.a.x), global0.a.a.a), -(vec4<i32>(-38766i, 43117i, global1[_wgslsmith_index_u32(58588u, 32u)], 3938i) >> (vec4<u32>(var_0, 31053u, 20423u, global0.b) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.a.a.d, u_input.a.x, -75093i, -478i), vec4<i32>(-861i, global0.a.a.d, global0.a.a.a.x, global1[_wgslsmith_index_u32(global0.d.x, 32u)])), select(vec4<i32>(u_input.a.x, 51983i, u_input.a.x, -42614i), global0.a.a.a, vec4<bool>(arg_1.x, true, arg_1.x, false)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), 921f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.b.x))));
    var var_3 = Struct_3(global0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(389f, -1291f, _wgslsmith_f_op_f32(global0.a.a.b.x + _wgslsmith_f_op_f32(var_2.x - global0.a.a.b.x)), 946f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-658f, var_2.x, global0.a.a.b.x, var_2.x) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, -1999f, -1682f, var_2.x)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(154f, -1220f, global0.a.a.b.x, 1000f)))))), ~global0.d, 294f);
    let var_4 = Struct_2(global0.a.a);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a.a.b.x - _wgslsmith_f_op_f32(global0.a.a.b.x - -1607f)))))));
    var var_1 = vec3<bool>(all(!select(global0.c, !global0.c, !vec3<bool>(global0.c.x, false, global0.c.x))), global0.c.x, global0.d.x < 0u);
    let var_2 = global0.a;
    let var_3 = (func_1(false, !select(vec2<bool>(var_1.x, true), global0.c.xy, global0.c.zx)) | func_1(select(true, global0.c.x, var_1.x), !global0.c.yx)) && var_1.x;
    let var_4 = any(select(!select(!vec4<bool>(false, true, var_3, true), !vec4<bool>(var_3, var_1.x, false, true), all(vec4<bool>(false, true, false, var_1.x))), !vec4<bool>(true, false, global0.c.x, !var_3), select(select(vec4<bool>(var_1.x, true, false, false), select(vec4<bool>(true, var_3, global0.c.x, var_1.x), vec4<bool>(true, var_3, var_3, true), global0.c.x), any(vec4<bool>(true, true, var_1.x, var_3))), vec4<bool>(var_1.x || var_3, var_1.x, var_3, global0.c.x), all(!vec2<bool>(true, var_3)))));
    var_1 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(min(0u, 1u), 1u), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0 - var_0), var_0, _wgslsmith_f_op_f32(ceil(var_2.a.b.x))) * vec3<f32>(var_2.a.b.x, global0.a.a.b.x, _wgslsmith_f_op_f32(-global0.a.a.b.x))))), u_input.a.x, vec4<i32>(0i, 5335i, global0.a.a.d, var_2.a.d) >> (vec4<u32>(_wgslsmith_mod_u32(~0u, 47729u), ~1u, ~(23404u & var_2.a.c.x), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(15324u, global0.d.x, var_2.a.c.x, 4294967295u), vec4<u32>(61237u, var_2.a.c.x, global0.b, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(global0.d.x, 4294967295u, var_2.a.c.x, var_2.a.c.x), vec4<u32>(730u, 4294967295u, 53409u, 4294967295u)))) % vec4<u32>(32u)), _wgslsmith_div_vec2_i32(~global0.a.a.a.xx, _wgslsmith_mult_vec2_i32(u_input.a ^ -vec2<i32>(global0.a.a.d, global0.a.a.d), -(~global0.a.a.a.xy))));
}

