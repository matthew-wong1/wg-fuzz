struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_2,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> u32 {
    global0 = array<Struct_2, 32>();
    let var_0 = Struct_1(_wgslsmith_sub_vec3_i32(firstTrailingBit(-u_input.c), _wgslsmith_mod_vec3_i32(vec3<i32>(16318i, u_input.a, u_input.a), vec3<i32>(u_input.a, 23440i, u_input.c.x))) ^ vec3<i32>(u_input.c.x, (16206i | u_input.c.x) >> (37379u % 32u), u_input.a), _wgslsmith_div_vec4_u32(u_input.b ^ ~(~u_input.b), min(u_input.b, u_input.b)), 844f, _wgslsmith_sub_vec4_u32(u_input.b, ~((vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) >> (u_input.b % vec4<u32>(32u))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, 0u), vec4<u32>(u_input.b.x, u_input.b.x, 1u, 14629u)) % vec4<u32>(32u)))));
    var var_1 = u_input.b.x;
    let var_2 = 21544i;
    var var_3 = vec2<bool>(true, select(all(vec4<bool>(false, -1i == var_0.a.x, true, true)), 56194u >= _wgslsmith_mult_u32(u_input.b.x, var_0.d.x << (u_input.b.x % 32u)), true));
    return ~68229u;
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<f32>) -> vec4<u32> {
    var var_0 = ~((vec4<i32>(-1i) * -select(vec4<i32>(u_input.c.x, u_input.c.x, 15819i, 15262i), vec4<i32>(6571i, -39501i, u_input.a, u_input.c.x), vec4<bool>(false, arg_0, false, arg_0))) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 55182u, u_input.b.x, u_input.b.x) ^ vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), min(vec4<u32>(u_input.b.x, u_input.b.x, 19582u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 33420u))) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(571f, -1000f, -192f, 485f), vec4<f32>(1532f, -131f, 637f, -862f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x) - vec4<f32>(arg_2.x, arg_2.x, arg_2.x, -1019f)))), vec4<f32>(-108f, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.x, arg_2.x)) - _wgslsmith_f_op_f32(exp2(arg_2.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_2.x)), _wgslsmith_div_f32(arg_2.x, arg_2.x))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x + -509f), _wgslsmith_f_op_f32(-arg_2.x)), 1504f, _wgslsmith_f_op_f32(-856f - _wgslsmith_f_op_f32(524f - arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(442f, 1000f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-598f, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(ceil(arg_2.x)), arg_2.x) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, 211f), vec4<f32>(-464f, 1423f, -1493f, -589f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-201f, arg_2.x, -247f, arg_2.x) * vec4<f32>(arg_2.x, 405f, arg_2.x, arg_2.x)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.x, var_1.x)) - 1521f), -215f, _wgslsmith_f_op_f32(var_1.x + 400f), _wgslsmith_f_op_f32(609f + var_1.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-589f, -1206f, arg_2.x, arg_2.x)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.x, -279f, -471f, var_1.x), vec4<f32>(arg_2.x, -740f, 978f, arg_2.x)))))));
    let var_2 = firstLeadingBit(u_input.b.x);
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, var_1.x, var_1.x, -445f))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1245f, var_1.x, 1000f, arg_2.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 318f, -1371f, arg_2.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-357f, arg_2.x, arg_2.x, arg_2.x)))));
    return _wgslsmith_mod_vec4_u32(u_input.b, ~u_input.b);
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_3(0u, 31361i, global0[_wgslsmith_index_u32(firstTrailingBit(max(1u, u_input.b.x)) & func_2(), 32u)], Struct_1(arg_0.www, abs(u_input.b | _wgslsmith_sub_vec4_u32(vec4<u32>(25449u, u_input.b.x, u_input.b.x, u_input.b.x), u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(259f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1324f))), func_3(all(vec4<bool>(true, true, true, true)), vec4<bool>(true, false, u_input.b.x < 34117u, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(974f, -427f, 1335f)) - vec3<f32>(-635f, 1008f, 268f)))), vec2<bool>(true, true));
    let var_1 = ~(~13389i);
    var var_2 = ~(-1i);
    global0 = array<Struct_2, 32>();
    var var_3 = var_0.d;
    return var_0.d;
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1) -> bool {
    global0 = array<Struct_2, 32>();
    var var_0 = vec4<bool>(select(all(vec4<bool>(arg_2.c >= arg_2.c, arg_1, all(vec3<bool>(false, false, arg_1)), true)), arg_1, abs(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b)) <= 33202u), false, all(!vec3<bool>(all(vec3<bool>(arg_1, arg_1, arg_1)), arg_1, any(vec3<bool>(arg_1, false, true)))), false);
    var var_1 = _wgslsmith_f_op_f32(-arg_2.c);
    return arg_2.c != arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(-1256i, 1i), u_input.c.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 1770f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-212f * -236f))))));
    let var_2 = max(u_input.b.x, 4294967295u);
    let var_3 = any(select(select(vec2<bool>(false, any(vec4<bool>(false, false, false, true))), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), true), false), vec2<bool>(all(vec4<bool>(true, true, true, true)), true), func_4(~u_input.b.wzy, !all(vec4<bool>(true, true, false, false)), func_1(-vec4<i32>(u_input.c.x, var_0, 1i, -2147483647i)))));
    let var_4 = reverseBits(func_1(min(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.a, var_0, -1i), vec4<i32>(u_input.c.x, -69280i, u_input.a, -25188i)), -vec4<i32>(u_input.a, var_0, var_0, u_input.a))).a.xy) << (_wgslsmith_mod_vec2_u32(u_input.b.zy, func_3(var_3, vec4<bool>(any(vec3<bool>(var_3, true, var_3)), var_3, var_3, var_3), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1963f, -178f, -610f), vec3<f32>(-1072f, 1201f, -1000f))))).wx) % vec2<u32>(32u));
    var var_5 = Struct_4(Struct_3(6471u, 2147483647i, global0[_wgslsmith_index_u32(reverseBits(firstTrailingBit(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x))), 32u)], Struct_1(vec3<i32>(u_input.c.x, -1i, ~u_input.c.x), min(u_input.b ^ vec4<u32>(u_input.b.x, 5363u, 0u, var_2), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(823f + -922f)), ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 27243u, var_2, u_input.b.x), u_input.b)), vec2<bool>(true, !func_4(vec3<u32>(2997u, u_input.b.x, u_input.b.x), true, Struct_1(vec3<i32>(-30358i, var_4.x, var_4.x), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 51598u), -3138f, u_input.b)))), !func_4(u_input.b.xyx, true, func_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, -11388i, -54969i, 0i), vec4<i32>(var_4.x, -24707i, -2147483647i, var_0), vec4<i32>(var_4.x, -2147483647i, u_input.c.x, 3602i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_5.a.d.c, var_5.a.d.c) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_5.a.d.c, 1304f)))) - _wgslsmith_f_op_f32(min(787f, var_5.a.d.c))));
}

