struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(4294967295u, vec3<i32>(51203i, 18836i, 2147483647i), vec2<u32>(1u, 1u), vec2<bool>(false, false), 37940u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = arg_0.d.x;
    return Struct_1(_wgslsmith_add_u32(_wgslsmith_mult_u32(~global1.e, ~arg_0.c.x), global1.a), _wgslsmith_mod_vec3_i32(~select(global1.b << (vec3<u32>(1u, arg_0.e, global1.c.x) % vec3<u32>(32u)), select(arg_0.b, vec3<i32>(global1.b.x, arg_0.b.x, -1i), global1.d.x), true), ~select(global1.b & vec3<i32>(-1930i, u_input.a, global1.b.x), arg_0.b | vec3<i32>(-1i, 39631i, -23434i), !global1.d.x)), select(global1.c, countOneBits(abs(vec2<u32>(0u, 35009u))) | ~global1.c, !select(!vec2<bool>(arg_0.d.x, global1.d.x), arg_0.d, true)), global1.d, select(~arg_0.a, 78682u, all(!(!vec4<bool>(global1.d.x, arg_0.d.x, global1.d.x, false)))));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: bool) -> i32 {
    var var_0 = select(select(select(vec3<bool>(true, global1.d.x, any(vec4<bool>(false, global1.d.x, global1.d.x, global1.d.x))), vec3<bool>(func_1(Struct_1(arg_1, vec3<i32>(global1.b.x, global1.b.x, 10197i), global1.c, vec2<bool>(false, false), arg_0.x)).d.x, global1.d.x, arg_2), vec3<bool>(global1.d.x, all(vec3<bool>(true, arg_2, true)), !arg_2)), vec3<bool>(global1.d.x | (global1.d.x | false), arg_2, any(vec3<bool>(false, true, arg_2))), !(!select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(global1.d.x, arg_2, global1.d.x), vec3<bool>(true, true, global1.d.x)))), !select(select(select(vec3<bool>(arg_2, arg_2, global1.d.x), vec3<bool>(arg_2, global1.d.x, false), true), select(vec3<bool>(global1.d.x, false, global1.d.x), vec3<bool>(false, arg_2, false), vec3<bool>(false, true, arg_2)), true), !vec3<bool>(arg_2, arg_2, false), min(37241u, 15881u) == _wgslsmith_mult_u32(4294967295u, arg_0.x)), select(select(vec3<bool>(any(vec3<bool>(arg_2, false, true)), all(vec3<bool>(global1.d.x, true, false)), select(true, global1.d.x, global1.d.x)), !select(vec3<bool>(false, global1.d.x, arg_2), vec3<bool>(true, arg_2, true), vec3<bool>(false, false, false)), select(!arg_2, !arg_2, arg_2)), vec3<bool>(any(!vec2<bool>(arg_2, false)), !any(vec2<bool>(arg_2, arg_2)), global1.d.x), arg_2));
    global0 = !var_0.x;
    var var_1 = vec3<i32>(-(~global1.b.x), -45569i, ~global1.b.x);
    var_1 = global1.b;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(622f, 1000f, 228f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-866f, 832f, 409f)))))));
    return (var_1.x & (countOneBits(40793i) & ~(-u_input.a))) ^ (~global1.b.x << (arg_0.x % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>, arg_3: u32) -> vec2<u32> {
    global1 = arg_0;
    global1 = arg_0;
    var var_0 = Struct_1(1u, reverseBits(vec3<i32>(func_3(_wgslsmith_add_vec2_u32(global1.c, vec2<u32>(1u, 68552u)), _wgslsmith_mod_u32(arg_0.a, global1.a), global1.d.x), max(abs(arg_1), reverseBits(1i)), u_input.a)), global1.c, vec2<bool>(arg_0.d.x != select(any(vec3<bool>(arg_0.d.x, false, true)), true, false), any(vec2<bool>(any(vec4<bool>(false, false, false, arg_0.d.x)), true))), _wgslsmith_sub_u32(~arg_3, _wgslsmith_add_u32(abs(_wgslsmith_mult_u32(19114u, 123478u)), 7792u)));
    let var_1 = _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 28789i, 1i), vec3<i32>(_wgslsmith_mod_i32(2147483647i, var_0.b.x), -1i, _wgslsmith_sub_i32(-9018i, arg_1))), _wgslsmith_add_vec3_i32(global1.b, global1.b), select(-vec3<i32>(arg_1, var_0.b.x, 84053i) & (var_0.b >> (vec3<u32>(var_0.a, 4294967295u, 1u) % vec3<u32>(32u))), var_0.b, true)) ^ func_1(Struct_1(arg_3, vec3<i32>(-23454i, arg_1, arg_0.b.x), arg_0.c, vec2<bool>(true, true), ~arg_3 ^ var_0.c.x)).b;
    var var_2 = select(vec4<bool>(true, any(select(!vec4<bool>(arg_0.d.x, false, false, false), vec4<bool>(false, false, true, arg_0.d.x), any(vec4<bool>(global1.d.x, true, true, true)))), any(!vec4<bool>(false, false, true, var_0.d.x)), _wgslsmith_sub_i32(arg_1, i32(-1i) * -50035i) < -arg_0.b.x), !select(select(vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x), vec4<bool>(false, global1.d.x, false, false), any(vec4<bool>(true, arg_0.d.x, false, arg_0.d.x))), !(!vec4<bool>(global1.d.x, false, false, global1.d.x)), var_0.d.x), select(select(vec4<bool>(func_1(Struct_1(arg_3, arg_0.b, global1.c, arg_0.d, 31016u)).d.x, global1.d.x, all(vec4<bool>(global1.d.x, true, false, true)), arg_0.d.x), vec4<bool>(arg_3 <= 28229u, true, true && arg_0.d.x, true), true), !(!vec4<bool>(global1.d.x, false, arg_0.d.x, var_0.d.x)), func_1(arg_0).d.x & global1.d.x));
    return abs(firstTrailingBit(_wgslsmith_sub_vec2_u32(~var_0.c, max(vec2<u32>(arg_3, arg_3) | arg_0.c, vec2<u32>(0u, 69105u) >> (vec2<u32>(4294967295u, var_0.a) % vec2<u32>(32u))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = vec4<u32>(_wgslsmith_dot_vec2_u32(max(~countOneBits(vec2<u32>(arg_1.a, global1.a)), ~vec2<u32>(48063u, 44072u) << (abs(arg_1.c) % vec2<u32>(32u))), func_4(arg_1, select(func_3(vec2<u32>(arg_1.e, 23146u), arg_1.a, arg_1.d.x), countOneBits(1i), any(vec3<bool>(global1.d.x, true, global1.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(601f, 1139f), vec2<f32>(804f, 2989f))), 3098u)), reverseBits(7771u & arg_1.e), ~(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(735u, arg_0.e, 19380u, arg_0.a), vec4<u32>(arg_0.e, arg_0.e, 35590u, 6537u)), ~vec4<u32>(global1.a, arg_0.a, 89716u, 0u))), reverseBits(arg_1.a));
    global0 = true;
    var var_1 = Struct_1(_wgslsmith_clamp_u32(select(_wgslsmith_sub_u32(global1.c.x, global1.a) >> (1u % 32u), ~(~global1.a), !func_1(Struct_1(1u, global1.b, vec2<u32>(4294967295u, 81935u), arg_1.d, 16305u)).d.x), ~(~abs(15515u)), 14139u), ~arg_0.b, arg_0.c, vec2<bool>(true, true), var_0.x);
    var var_2 = Struct_1(1u | ~_wgslsmith_dot_vec3_u32(~vec3<u32>(1499u, 80219u, var_0.x), ~vec3<u32>(1u, arg_1.e, arg_0.c.x)), arg_1.b & vec3<i32>(var_1.b.x, -2147483647i, global1.b.x), abs(vec2<u32>(~_wgslsmith_dot_vec3_u32(var_0.zwx, var_0.yzy), 74345u)), arg_0.d, ~(~arg_1.e));
    var_0 = select(vec4<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(28091u, 39703u, 4294967295u), _wgslsmith_sub_vec3_u32(var_0.wwz, var_0.wzz), vec3<bool>(arg_1.d.x, true, false)), max(~var_0.xzw, var_0.yyz)), ~var_2.e, _wgslsmith_dot_vec2_u32(global1.c, ~arg_1.c << (abs(arg_1.c) % vec2<u32>(32u))), var_2.e), (vec4<u32>(arg_0.a, arg_1.e, global1.c.x, 1u) >> (vec4<u32>(83368u, ~55484u, ~var_2.e, ~arg_0.c.x) % vec4<u32>(32u))) >> (~(select(vec4<u32>(var_2.c.x, 4294967295u, 62752u, 21241u), vec4<u32>(global1.a, 9579u, var_0.x, var_1.c.x), true) >> (vec4<u32>(22803u, 30716u, 37860u, var_1.e) % vec4<u32>(32u))) % vec4<u32>(32u)), false);
    return vec4<u32>(var_2.e, func_4(Struct_1(~35499u, arg_1.b << (vec3<u32>(var_0.x, 4018u, var_2.c.x) % vec3<u32>(32u)), ~arg_1.c, vec2<bool>(true, true), 27950u & arg_1.e), min(firstTrailingBit(var_1.b.x), -2109i), _wgslsmith_f_op_vec2_f32(vec2<f32>(-958f, 1000f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(617f, 167f), vec2<f32>(-1805f, -1404f), false))), _wgslsmith_add_u32(var_2.e, _wgslsmith_mult_u32(var_1.a, var_2.e))).x, 4294967295u, abs(_wgslsmith_div_u32(28761u, 4294967295u)) ^ firstTrailingBit(~global1.a)) << (vec4<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(7555u, 1253u), arg_1.c.x, ~74688u), var_0.yzx), 1u, abs(var_1.e)) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(func_2(Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(global1.c.x, global1.a, 1u), vec3<u32>(7304u, global1.a, 1u)), global1.b, global1.c, vec2<bool>(!global1.d.x, false), 1u), func_1(Struct_1(global1.a, _wgslsmith_div_vec3_i32(vec3<i32>(global1.b.x, -1i, global1.b.x), vec3<i32>(-7703i, u_input.a, global1.b.x)), select(global1.c, global1.c, false), vec2<bool>(true, true), global1.a))), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.a, 53423u, global1.e, _wgslsmith_mult_u32(1u, 25593u)), select(~vec4<u32>(global1.c.x, global1.c.x, 0u, 32850u), vec4<u32>(global1.a, 35416u, 1u, 2705u), true && global1.d.x) ^ ~(vec4<u32>(global1.e, global1.a, 11007u, 4294967295u) << (vec4<u32>(74886u, 4294967295u, global1.e, global1.a) % vec4<u32>(32u)))));
    global1 = Struct_1(~(~(select(0u, global1.c.x, false) | 1u)), global1.b, _wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 21734u), ~func_4(Struct_1(var_0.x, vec3<i32>(0i, -39873i, global1.b.x), vec2<u32>(global1.a, var_0.x), vec2<bool>(global1.d.x, global1.d.x), 74875u), abs(-46637i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1365f, 468f)), _wgslsmith_div_u32(0u, global1.c.x))), vec2<bool>(true, true), var_0.x);
    var var_1 = select(global1.d, vec2<bool>(true, any(vec2<bool>(!global1.d.x, all(vec2<bool>(true, global1.d.x))))), !(!all(!vec3<bool>(global1.d.x, false, false))));
    global0 = true;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    global1 = func_1(Struct_1(_wgslsmith_clamp_u32(0u, 52517u, min(func_2(Struct_1(96186u, vec3<i32>(-2147483647i, global1.b.x, -30254i), var_0.yz, global1.d, 42850u), Struct_1(1u, vec3<i32>(-2147483647i, global1.b.x, global1.b.x), vec2<u32>(var_0.x, 0u), vec2<bool>(var_1.x, false), var_0.x)).x, firstLeadingBit(1u))), abs(global1.b >> (~var_0.xyw % vec3<u32>(32u))), ~abs(~var_0.xw), select(vec2<bool>(var_1.x, true), vec2<bool>(true, true), var_1.x), var_0.x));
    global1 = func_1(func_1(func_1(Struct_1(68872u << (var_0.x % 32u), global1.b ^ global1.b, global1.c, !global1.d, 1u))));
    global0 = any(!global1.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(469f, _wgslsmith_f_op_f32(-787f + 1318f)))), i32(-1i) * -min(~3576i, _wgslsmith_add_i32(-1i, -13327i)), -591f, firstLeadingBit(var_0.zwx), _wgslsmith_dot_vec3_u32(var_0.zzy, ~(abs(vec3<u32>(4294967295u, global1.a, 11492u)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(global1.c.x, var_0.x, global1.e), var_0.wyz) % vec3<u32>(32u)))));
}

