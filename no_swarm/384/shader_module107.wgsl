struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1156f;

var<private> global1: array<Struct_4, 22>;

var<private> global2: vec2<bool>;

var<private> global3: vec2<bool>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 912f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1237f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1181f))))));
    var var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(min(u_input.c, vec2<i32>(13462i, u_input.a)), u_input.c), vec2<i32>(arg_0.d, -2147483647i)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(9240i, u_input.c.x), u_input.c, vec2<i32>(u_input.c.x, arg_0.a)), vec2<i32>(arg_0.a, 50077i) & u_input.c) | u_input.a, -_wgslsmith_mod_i32(arg_0.d, -1i), 33249i), vec4<i32>(reverseBits(_wgslsmith_sub_i32(-55833i, ~u_input.a)), ~23544i, ~(~arg_0.d), -1i));
    let var_2 = false;
    var var_3 = arg_0.b;
    var var_4 = Struct_3(Struct_1(-58843i, vec4<u32>(max(24209u, u_input.b), ~arg_0.b.x, ~arg_0.b.x, arg_0.b.x) << (_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_0.c, 24605u, var_3.x), arg_0.b), vec4<u32>(arg_0.b.x, 11475u, 4229u, var_3.x)) % vec4<u32>(32u)), abs(arg_0.b.x), u_input.a), (arg_0.b << (vec4<u32>(~4294967295u, u_input.b | 0u, firstLeadingBit(arg_0.b.x), 4294967295u & var_3.x) % vec4<u32>(32u))) & _wgslsmith_clamp_vec4_u32(select(vec4<u32>(17850u, 8796u, 39469u, 4294967295u) << (arg_0.b % vec4<u32>(32u)), vec4<u32>(u_input.b, var_3.x, var_3.x, 27967u), var_2), (vec4<u32>(arg_0.c, 0u, 25123u, 19054u) << (vec4<u32>(u_input.b, 0u, var_3.x, var_3.x) % vec4<u32>(32u))) << ((arg_0.b << (arg_0.b % vec4<u32>(32u))) % vec4<u32>(32u)), max(~arg_0.b, _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.b, 36729u), arg_0.b))), Struct_2(~(~23671u), ~(-2147483647i), Struct_1(max(-33152i, ~(-2147483647i)), ~arg_0.b, abs(~arg_0.b.x), _wgslsmith_dot_vec2_i32(u_input.c, var_1.wz)), Struct_1(u_input.c.x, ~vec4<u32>(var_3.x, 98319u, var_3.x, 4428u), arg_0.c, var_1.x)));
    return var_0.x;
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: f32) -> vec4<bool> {
    var var_0 = -u_input.c.x;
    global3 = vec2<bool>(!(!(_wgslsmith_f_op_f32(floor(arg_3)) == _wgslsmith_f_op_f32(func_3(Struct_1(13599i, vec4<u32>(0u, 38653u, 35142u, 4294967295u), 0u, arg_2.a.d))))), true | (all(!vec3<bool>(false, true, global3.x)) & (u_input.b > select(0u, arg_2.b.x, false))));
    let var_1 = select(!(!select(select(vec4<bool>(global3.x, global3.x, true, global2.x), vec4<bool>(global3.x, false, global3.x, global3.x), vec4<bool>(global3.x, global3.x, false, false)), !vec4<bool>(global3.x, true, global3.x, false), arg_3 < 1291f)), vec4<bool>(select(!global2.x, true & (global2.x || true), global2.x), !(!(global2.x & global2.x)), true, true), all(!(!(!vec3<bool>(global3.x, global3.x, false)))));
    var var_2 = ~_wgslsmith_mult_i32(arg_2.c.d.a & ~(arg_1.x ^ arg_2.a.a), _wgslsmith_sub_i32(firstTrailingBit(-2147483647i), arg_2.a.a));
    let var_3 = global1[_wgslsmith_index_u32(arg_2.c.c.c << (_wgslsmith_mult_u32(~8875u, u_input.b) % 32u), 22u)];
    return !vec4<bool>(false, true, (28933i != -arg_1.x) || any(!vec3<bool>(true, false, global2.x)), var_3.a.x);
}

fn func_4(arg_0: vec4<bool>) -> vec3<i32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.c.x, 0i), abs(vec4<i32>(-2147483647i, u_input.a, u_input.c.x, 17966i))), ~vec4<u32>(u_input.b, 1u, 4294967295u, u_input.b), u_input.b, -abs(-14256i)))));
    let var_0 = reverseBits(u_input.b);
    let var_1 = _wgslsmith_div_u32(u_input.b, ~var_0);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-870f * -561f), _wgslsmith_f_op_f32(func_3(Struct_1(41105i, vec4<u32>(10479u, var_1, 50637u, 4294967295u), 1u, u_input.c.x))))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -362f), 1000f)))), _wgslsmith_f_op_f32(500f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-754f + 1000f), -467f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2315f)))))));
    var var_2 = Struct_1(max(u_input.a, -(~0i)) >> (20725u % 32u), vec4<u32>(abs(~(1u ^ var_0)), 4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), max(vec2<u32>(4294967295u, u_input.b), vec2<u32>(var_1, 4294967295u))), var_0), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 70319u, var_0), abs(vec3<u32>(var_0, 98627u, 0u))), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(var_1, 4294967295u)))) >> (max(var_0, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(37105u, u_input.b, u_input.b, u_input.b), vec4<u32>(var_0, 26477u, u_input.b, u_input.b)), ~vec4<u32>(40273u, u_input.b, var_1, 0u))) % 32u), u_input.a);
    return ~min(vec3<i32>(11600i, var_2.d, 20806i), -vec3<i32>(var_2.d, 2147483647i, u_input.a)) << ((select(abs(firstLeadingBit(var_2.b.wyy)), vec3<u32>(var_1, 22019u, u_input.b) | ~vec3<u32>(var_2.b.x, 1u, u_input.b), true) | ~(~var_2.b.xwy)) % vec3<u32>(32u));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(~2147483647i, -u_input.a, u_input.a), func_4(func_2(u_input.a, vec4<i32>(1i, u_input.c.x, -47252i, -78940i), Struct_3(Struct_1(u_input.c.x, vec4<u32>(35202u, u_input.b, u_input.b, u_input.b), u_input.b, -55378i), vec4<u32>(48769u, u_input.b, 4294967295u, u_input.b), Struct_2(u_input.b, u_input.c.x, Struct_1(-1i, vec4<u32>(1u, u_input.b, 17900u, 16258u), u_input.b, 72521i), Struct_1(u_input.c.x, vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), u_input.b, u_input.a))), 1620f))), vec3<i32>(u_input.a, _wgslsmith_clamp_i32(~(-17021i), -3180i, -2147483647i), -max(u_input.c.x, -2331i))), countOneBits(vec4<u32>(u_input.b >> (u_input.b % 32u), u_input.b, 63712u, firstLeadingBit(~u_input.b))), u_input.b, u_input.a);
    let var_1 = max(select(vec2<u32>(_wgslsmith_clamp_u32(firstLeadingBit(0u), _wgslsmith_mod_u32(u_input.b, 84539u), max(var_0.c, var_0.c)), 4294967295u), var_0.b.yx, all(func_2(_wgslsmith_add_i32(-62560i, u_input.c.x), ~vec4<i32>(u_input.a, 0i, u_input.c.x, 2147483647i), Struct_3(var_0, vec4<u32>(4294967295u, 55169u, 98631u, 34338u), Struct_2(1u, 1i, Struct_1(-31565i, vec4<u32>(36082u, var_0.c, var_0.b.x, 4294967295u), 3163u, -1i), var_0)), -936f).zwz)), _wgslsmith_sub_vec2_u32(countOneBits(var_0.b.zz), var_0.b.wy) ^ vec2<u32>(u_input.b ^ _wgslsmith_clamp_u32(13839u, 86040u, var_0.c), min(6599u >> (var_0.b.x % 32u), 29740u)));
    var var_2 = vec2<u32>(~(~var_0.c) >> (~7323u % 32u), ~4294967295u) << (var_0.b.wz % vec2<u32>(32u));
    let var_3 = Struct_2(13855u, u_input.c.x, var_0, var_0);
    global3 = vec2<bool>((-1i | ~func_4(vec4<bool>(arg_0, false, false, false)).x) > var_3.d.d, 61315u <= _wgslsmith_dot_vec3_u32(~(var_0.b.wyx & vec3<u32>(27252u, 10290u, var_3.d.c)), abs(var_0.b.yww)));
    return Struct_1(select(abs(func_4(select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(false, true, global2.x, true), arg_0)).x), 24077i, !all(select(vec3<bool>(false, false, arg_0), vec3<bool>(false, arg_0, global2.x), vec3<bool>(arg_0, global2.x, global3.x)))), firstLeadingBit(abs(~select(vec4<u32>(4294967295u, 1u, 30239u, 4294967295u), vec4<u32>(var_0.b.x, var_3.a, 23465u, u_input.b), vec4<bool>(false, true, arg_0, true)))), 24038u, 5707i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(u_input.b, u_input.b | u_input.b, ~98356u, u_input.b);
    var var_1 = Struct_4(select(select(!vec4<bool>(global2.x, true, true, true), vec4<bool>(!global3.x, all(vec3<bool>(false, global3.x, global2.x)), global3.x, all(vec2<bool>(global3.x, false))), vec4<bool>(select(false, global3.x, global2.x), global2.x, !global3.x, global2.x)), !select(!vec4<bool>(global3.x, global3.x, global3.x, true), !vec4<bool>(false, global2.x, global3.x, true), global2.x), select(vec4<bool>(global2.x, true, u_input.b == 5921u, global3.x), !select(vec4<bool>(false, false, true, global3.x), vec4<bool>(true, global2.x, true, global3.x), vec4<bool>(global3.x, global2.x, global3.x, true)), true)), func_1(any(!select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(global3.x, false, global2.x), true))), -u_input.c.x, u_input.b & ~min(~1u, u_input.b));
    var_1 = global1[_wgslsmith_index_u32(abs(39078u), 22u)];
    global1 = array<Struct_4, 22>();
    var var_2 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(~_wgslsmith_mult_i32(0i, -2147483647i), _wgslsmith_mult_i32(-(~u_input.a), u_input.c.x)), 1u, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-363f)), _wgslsmith_div_f32(177f, 1551f), _wgslsmith_div_f32(465f, -1177f), _wgslsmith_f_op_f32(step(-1000f, 1000f)))))));
}

