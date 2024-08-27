struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 31>;

var<private> global1: u32;

var<private> global2: array<bool, 2>;

var<private> global3: i32 = -15560i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> vec4<bool> {
    let var_0 = _wgslsmith_add_i32(-1i, i32(-1i) * -33545i);
    global1 = 1u;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(min(488f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-315f + arg_0) + arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) - arg_0))))), -firstTrailingBit(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d.x, -1i, 8056i), vec3<i32>(u_input.d.x, 0i, u_input.b)))), select(reverseBits(u_input.e), 27832u | reverseBits(u_input.e), ~select(u_input.e, 64577u, global2[_wgslsmith_index_u32(15408u, 2u)]) > ~_wgslsmith_div_u32(48606u, 29065u)));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.a + -1756f)));
    return select(select(select(!vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(4294967295u, 2u)]), vec4<bool>(!global2[_wgslsmith_index_u32(1u, 2u)], true, !global2[_wgslsmith_index_u32(u_input.e, 2u)], true), select(!vec4<bool>(true, global2[_wgslsmith_index_u32(var_1.c, 2u)], global2[_wgslsmith_index_u32(var_1.c, 2u)], false), !vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(var_1.c, 2u)]), false)), vec4<bool>(true, !(!global2[_wgslsmith_index_u32(53717u, 2u)]), true, all(select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 2u)], false), vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 2u)]), vec2<bool>(global2[_wgslsmith_index_u32(1u, 2u)], false)))), !all(select(vec2<bool>(true, global2[_wgslsmith_index_u32(18077u, 2u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.e, 2u)]), global2[_wgslsmith_index_u32(1u, 2u)]))), !vec4<bool>(all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], global2[_wgslsmith_index_u32(100845u, 2u)], false, global2[_wgslsmith_index_u32(1222u, 2u)])), _wgslsmith_f_op_f32(ceil(289f)) == _wgslsmith_f_op_f32(exp2(var_1.a)), !(var_2 < -653f), global2[_wgslsmith_index_u32(~1u, 2u)]), _wgslsmith_div_i32(var_1.b.x, 6621i) >= var_0);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-773f, -361f, 1317f, -442f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1326f, 976f, -1433f, 416f) + vec4<f32>(-1313f, 885f, -339f, 340f))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-218f, 346f, -1032f, -942f) - global0[_wgslsmith_index_u32(46571u, 31u)]), vec4<f32>(-882f, -1038f, 729f, 376f)))), global0[_wgslsmith_index_u32(~(~(~u_input.a.x)), 31u)])), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-569f))), ~reverseBits(countOneBits(vec3<i32>(u_input.c, -1i, -3944i))), u_input.e));
    global2 = array<bool, 2>();
    global0 = array<vec4<f32>, 31>();
    var var_1 = select(!func_3(var_0.a.x), select(!vec4<bool>(any(vec2<bool>(true, false)), global2[_wgslsmith_index_u32(var_0.b.c, 2u)], !global2[_wgslsmith_index_u32(0u, 2u)], var_0.b.a > var_0.b.a), !select(!vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(var_0.b.c, 2u)]), !vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)], false, global2[_wgslsmith_index_u32(u_input.e, 2u)]), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 2u)], true, global2[_wgslsmith_index_u32(44889u, 2u)], false)), global2[_wgslsmith_index_u32(var_0.b.c, 2u)]), false);
    var var_2 = _wgslsmith_dot_vec2_i32(select(vec2<i32>(0i, -2147483647i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.b.x, 2147483647i), vec2<i32>(-31588i, u_input.d.x))), u_input.d, !var_1.wz), ~vec2<i32>(firstLeadingBit(u_input.d.x), var_0.b.b.x));
    return Struct_3(~(~vec4<i32>(-1i, -u_input.c, 1i << (u_input.e % 32u), u_input.c)), var_0.b, vec3<u32>(var_0.b.c, 0u & ~u_input.e, 1u) << (~vec3<u32>(firstTrailingBit(var_0.b.c), abs(24665u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_0.b.c), u_input.a)) % vec3<u32>(32u)), var_0.a.x, var_0.b);
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_3, arg_3: Struct_3) -> Struct_1 {
    return Struct_1(_wgslsmith_div_f32(arg_3.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))))), vec3<i32>(-reverseBits(firstLeadingBit(arg_3.a.x)), _wgslsmith_clamp_i32(-(~arg_2.a.x), arg_3.b.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, arg_2.e.b.x, 35431i) ^ arg_2.e.b, ~vec3<i32>(2147483647i, 3489i, arg_3.b.b.x))), ~_wgslsmith_mult_i32(u_input.d.x, -40961i)), arg_2.c.x);
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<i32>(~u_input.d.x, u_input.d.x);
    let var_1 = func_4(u_input.e, ~_wgslsmith_mult_u32(u_input.e, 4294967295u), func_2(), func_2());
    let var_2 = _wgslsmith_sub_u32(~1u, _wgslsmith_div_u32(~4294967295u, u_input.a.x));
    let var_3 = Struct_2(global0[_wgslsmith_index_u32(58821u & u_input.e, 31u)], var_1);
    var var_4 = ~select(_wgslsmith_mod_vec3_u32(~vec3<u32>(3765u, var_3.b.c, var_1.c), reverseBits(vec3<u32>(var_2, u_input.e, var_2))) >> (~countOneBits(vec3<u32>(var_1.c, 0u, 1u)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(65383u, var_1.c | var_3.b.c, reverseBits(32851u)), select(_wgslsmith_add_vec3_u32(vec3<u32>(var_3.b.c, 4294967295u, var_3.b.c), vec3<u32>(4294967295u, 0u, u_input.a.x)), firstLeadingBit(vec3<u32>(var_3.b.c, u_input.e, var_1.c)), vec3<bool>(global2[_wgslsmith_index_u32(13397u, 2u)], true, false))), true);
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = array<vec4<f32>, 31>();
    global1 = _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, 1u >> (1u % 32u)), firstTrailingBit(u_input.a >> (vec2<u32>(92986u, 28770u) % vec2<u32>(32u)))), ~_wgslsmith_mult_u32(func_4(37040u | var_0.c, ~68373u, Struct_3(vec4<i32>(27309i, 1i, -33895i, 7366i), Struct_1(var_0.a, var_0.b, var_0.c), vec3<u32>(0u, u_input.a.x, 18772u), var_0.a, Struct_1(var_0.a, vec3<i32>(u_input.b, u_input.b, var_0.b.x), var_0.c)), Struct_3(vec4<i32>(-37840i, var_0.b.x, -33407i, u_input.d.x), Struct_1(-2035f, var_0.b, u_input.e), vec3<u32>(u_input.a.x, u_input.a.x, 25055u), var_0.a, Struct_1(-537f, vec3<i32>(var_0.b.x, -2147483647i, 0i), u_input.e))).c, firstLeadingBit(_wgslsmith_mult_u32(var_0.c, var_0.c))));
    global2 = array<bool, 2>();
    global3 = 50084i;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(select(u_input.a, ~firstTrailingBit(vec2<u32>(40482u, 0u)), false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) + vec2<f32>(201f, -1493f)), vec2<f32>(var_0.a, var_0.a))))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a, var_0.a), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(498f, var_0.a)))))))), _wgslsmith_div_i32(~(~u_input.c), _wgslsmith_mod_i32(u_input.d.x & 2147483647i, 4794i) & -37574i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1143f, 142f, -115f, 167f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, var_0.a, -1317f) * global0[_wgslsmith_index_u32(27971u, 31u)])) - global0[_wgslsmith_index_u32(1u, 31u)])), select(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(4169u, 1u, u_input.e)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, var_0.c, 4294967295u), vec3<u32>(u_input.a.x, var_0.c, u_input.a.x))), _wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, u_input.e), abs(vec3<u32>(0u, 17875u, 0u))), select(all(vec3<bool>(global2[_wgslsmith_index_u32(var_0.c, 2u)], false, true)), true, global2[_wgslsmith_index_u32(12242u, 2u)])) >> (vec3<u32>(~var_0.c & ~0u, ~1u, 6847u << (var_0.c % 32u)) % vec3<u32>(32u)));
}

