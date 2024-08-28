struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<u32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 23>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<u32> {
    var var_0 = 1000f;
    let var_1 = Struct_3(Struct_1(_wgslsmith_div_u32(~1u, ~1u) << (abs(1u) % 32u), ~(-2147483647i) <= u_input.a.x, select(_wgslsmith_add_vec2_u32(min(vec2<u32>(4294967295u, 39056u), vec2<u32>(37969u, 57660u)), select(vec2<u32>(1u, 0u), vec2<u32>(20172u, 3338u), vec2<bool>(true, true))), select(~vec2<u32>(0u, 56720u), firstTrailingBit(vec2<u32>(93779u, 1u)), vec2<bool>(false, false)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), all(vec2<bool>(false, false)))), vec4<bool>(true, all(vec2<bool>(true, false)), any(vec3<bool>(false, true, false)) && true, true), -392f), abs(min(1u, 1u)), Struct_1(~1u, true, vec2<u32>(4294967295u, ~_wgslsmith_clamp_u32(0u, 0u, 4294967295u)), vec4<bool>(_wgslsmith_f_op_f32(ceil(2224f)) >= _wgslsmith_f_op_f32(-687f + -2312f), 2980f > _wgslsmith_f_op_f32(ceil(899f)), true, all(vec4<bool>(true, true, true, true))), -1280f));
    var var_2 = _wgslsmith_mod_u32(var_1.c.a, _wgslsmith_clamp_u32(~var_1.a.c.x, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.c.c.x, 0u, 72096u), vec3<u32>(72806u, var_1.c.a, var_1.a.c.x) ^ vec3<u32>(1u, var_1.c.c.x, 4294967295u)), firstTrailingBit(vec3<u32>(6975u, 35120u, var_1.c.a)) << (abs(vec3<u32>(36265u, 1u, 1u)) % vec3<u32>(32u))), 4294967295u));
    var var_3 = -u_input.c.zyx;
    global0 = array<vec2<bool>, 23>();
    return ~vec2<u32>(~1u, max(abs(var_1.a.c.x), ~51889u) | var_1.c.a);
}

fn func_2() -> vec2<bool> {
    global0 = array<vec2<bool>, 23>();
    var var_0 = false;
    var_0 = true;
    let var_1 = 0i;
    let var_2 = Struct_1(28768u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), true, _wgslsmith_clamp_vec2_u32(func_3(), vec2<u32>(min(min(24919u, 0u), _wgslsmith_mult_u32(28051u, 72436u)), countOneBits(select(18949u, 17252u, true))), vec2<u32>(1u, 1u) >> (firstTrailingBit(vec2<u32>(1u, 1u)) % vec2<u32>(32u))), vec4<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), any(vec3<bool>(true, false, all(vec4<bool>(false, false, false, true)))), true, any(vec3<bool>(false, false, true)) && false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -238f))))));
    return select(!global0[_wgslsmith_index_u32(0u, 23u)], var_2.d.xz, vec2<bool>(var_2.b, false));
}

fn func_1() -> vec3<bool> {
    var var_0 = select(func_2(), !(!(!global0[_wgslsmith_index_u32(11437u, 23u)])), select(!select(global0[_wgslsmith_index_u32(21894u, 23u)], select(vec2<bool>(false, false), vec2<bool>(true, false), false), true), vec2<bool>(all(vec4<bool>(true, false, true, false)), true), true));
    var var_1 = Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(2620u, 4294967295u, 48435u), reverseBits(vec3<u32>(4294967295u, 1u, 39577u)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, 6929u), vec3<u32>(0u, 18908u, 0u)))), all(vec4<bool>(!(!var_0.x), true, true, select(false, false, var_0.x))), vec2<u32>(~29564u, 1u), !select(select(select(vec4<bool>(false, false, true, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, true)), vec4<bool>(var_0.x, false, true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, var_0.x, false), select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(false, var_0.x, true, var_0.x), false), true), select(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(false, var_0.x, var_0.x, true)), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, true, var_0.x, var_0.x), false))), 2209f);
    var var_2 = Struct_1(var_1.a, any(func_2()), _wgslsmith_mod_vec2_u32(var_1.c, firstLeadingBit(firstLeadingBit(countOneBits(vec2<u32>(2537u, var_1.c.x))))), vec4<bool>(all(select(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(~67096u, 23u)], vec2<bool>(true, false))), false, true, true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-321f))))));
    let var_3 = firstTrailingBit(select(firstLeadingBit(abs(min(vec4<u32>(4294967295u, 63511u, var_1.a, 1u), vec4<u32>(0u, 91093u, 1u, var_2.c.x)))), vec4<u32>(var_1.c.x, var_1.c.x, max(43698u, var_1.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a, var_1.c.x, var_1.c.x), vec3<u32>(50741u, 0u, var_2.c.x))) << (_wgslsmith_div_vec4_u32(vec4<u32>(var_2.c.x, var_2.c.x, 1u, 0u) & vec4<u32>(var_2.c.x, var_1.c.x, 0u, 78835u), firstLeadingBit(vec4<u32>(26095u, var_2.c.x, 14126u, 1u))) % vec4<u32>(32u)), var_1.d));
    var_2 = Struct_1(abs(var_2.c.x), select(false, true, true || !any(vec4<bool>(false, true, true, false))), ~vec2<u32>(1u, _wgslsmith_dot_vec4_u32(abs(var_3), countOneBits(vec4<u32>(var_2.c.x, 1u, 17140u, var_2.c.x)))), var_1.d, 1f);
    return select(select(!select(!vec3<bool>(var_2.b, var_0.x, var_0.x), !var_1.d.zxz, select(var_2.d.zzy, var_1.d.xzx, false)), var_2.d.xzx, select(var_2.d.yzy, var_1.d.zxx, !var_1.d.xzy)), var_2.d.yzx, select(false, !func_2().x, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-191f)) - -793f), -1426f, any(func_1()))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -177f), _wgslsmith_f_op_f32(step(630f, 1000f)))))))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_0.x)))), _wgslsmith_f_op_f32(exp2(var_0.x)), var_0.x, _wgslsmith_f_op_f32(-var_0.x))), Struct_1(_wgslsmith_add_u32(reverseBits(~1u), ~4294967295u >> (0u % 32u)), any(vec2<bool>(func_1().x, true)), ~(~(~vec2<u32>(42703u, 33477u))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-608f))))), 0u);
    let var_2 = vec2<i32>(-_wgslsmith_add_i32(14532i, -1i), firstLeadingBit(1i));
    var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a)))))), Struct_1(1u, all(vec4<bool>(true, true, var_1.b.b, var_1.b.b)), _wgslsmith_mult_vec2_u32(~vec2<u32>(25778u, var_1.c), reverseBits(var_1.b.c)) ^ abs(min(vec2<u32>(var_1.b.c.x, 24662u), vec2<u32>(0u, var_1.b.a))), select(vec4<bool>(!var_1.b.b, true, true, var_1.b.b), select(!var_1.b.d, !var_1.b.d, any(vec4<bool>(var_1.b.d.x, false, var_1.b.b, var_1.b.d.x))), var_1.b.d), 1330f), _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(0u), var_1.b.a, _wgslsmith_clamp_u32(~43278u, select(29955u, 4294967295u, var_1.b.b), 4294967295u), abs(var_1.b.c.x)), ~vec4<u32>(var_1.c, ~24903u, var_1.c, var_1.c)));
    let var_3 = vec4<u32>(~((~var_1.c | 0u) >> (reverseBits(var_1.b.c.x) % 32u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(18326u, var_1.b.a, 41410u), max(vec3<u32>(var_1.b.a, var_1.c, 85169u), vec3<u32>(var_1.c, 8058u, 1u))), ~vec3<u32>(4294967295u, var_1.b.c.x, var_1.c)), ~4294967295u, 28944u << (_wgslsmith_mod_u32(_wgslsmith_add_u32(var_1.b.c.x, var_1.c), countOneBits(1u)) % 32u)), ~35176u, 11975u);
    var var_4 = Struct_3(var_1.b, 51962u, Struct_1(~(~(~var_3.x)), all(var_1.b.d.xw) | any(!vec4<bool>(var_1.b.b, var_1.b.b, false, var_1.b.b)), vec2<u32>(~_wgslsmith_div_u32(1u, var_3.x), _wgslsmith_clamp_u32(~64005u, _wgslsmith_clamp_u32(3651u, var_3.x, 18788u), ~var_3.x)), vec4<bool>(var_1.b.b, any(vec4<bool>(var_1.b.d.x, false, false, var_1.b.d.x)), var_1.b.b & var_1.b.d.x, func_1().x), _wgslsmith_f_op_f32(var_1.b.e + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.b.e * var_0.x))))));
    var var_5 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(1i | var_2.x), var_4.a.e);
}

