struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<bool>(true, false), vec4<f32>(759f, -1488f, -498f, -444f), vec3<bool>(false, true, false), -787f), vec3<u32>(91764u, 102869u, 1u), 5266u);

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_4, 14>;

var<private> global3: array<u32, 25>;

var<private> global4: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    global2 = array<Struct_4, 14>();
    var var_0 = Struct_5(Struct_1(select(vec2<bool>(true, true), global0.a.a, false), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(global0.a.b, global0.a.b))), global0.a.b)), select(!global0.a.c, select(!global0.a.c, vec3<bool>(global0.a.a.x, true, global0.a.c.x), false), any(vec4<bool>(global0.a.a.x, true, false, global0.a.a.x))), _wgslsmith_f_op_f32(-1267f + _wgslsmith_f_op_f32(-global0.a.b.x))));
    var var_1 = true;
    let var_2 = select(-5941i, _wgslsmith_clamp_i32(max(~_wgslsmith_mult_i32(global1.x, -44175i), _wgslsmith_mod_i32(global1.x, global1.x << (33012u % 32u))), abs(min(~(-2147483647i), -1i)), global1.x), false);
    global1 = select(-(~(~vec4<i32>(0i, global1.x, 1i, var_2))), _wgslsmith_add_vec4_i32(abs(~vec4<i32>(-1i, -8658i, 33181i, global1.x)), vec4<i32>(-(~global1.x), _wgslsmith_dot_vec3_i32(global1.xyy, global1.wzw), firstLeadingBit(50181i), -1i)), vec4<bool>(4294967295u > abs(_wgslsmith_sub_u32(u_input.a.x, 1u)), any(var_0.a.c), true, select(select(false, true, var_0.a.a.x) && !global0.a.c.x, !(0u == u_input.a.x), all(!vec4<bool>(var_0.a.a.x, false, false, global0.a.a.x)))));
    return _wgslsmith_f_op_f32(sign(var_0.a.b.x));
}

fn func_2() -> Struct_4 {
    let var_0 = !global0.a.a;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.a.b.x)), _wgslsmith_div_f32(-770f, 171f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 25u)], 13165u) & vec2<u32>(0u, global0.b.x))) * -749f))));
    var var_2 = vec4<bool>(false, 1f >= var_1, var_0.x, global0.a.a.x);
    let var_3 = vec4<i32>(firstTrailingBit(-1i), _wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(global1.zw, global1.yy) >> (~max(34276u, global3[_wgslsmith_index_u32(1382u, 25u)]) % 32u), -global1.x, _wgslsmith_dot_vec3_i32(~select(vec3<i32>(global1.x, -1i, 2147483647i), global1.yxz, var_2.wwx), vec3<i32>(global1.x, 7390i, ~global1.x))), reverseBits(~global1.x), 21677i);
    var var_4 = Struct_1(select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(var_2.x, true), var_0), vec2<bool>(var_2.x, true)), var_0, vec2<bool>(!var_0.x, var_0.x | var_0.x)), !vec2<bool>(true, var_2.x), any(vec2<bool>(true, var_2.x | var_0.x))), global0.a.b, select(!(!var_2.yxy), vec3<bool>(false, global0.a.c.x, select(true, !var_0.x, !var_2.x)), !(!vec3<bool>(global0.a.c.x, true, var_0.x))), var_1);
    return Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global0.a.b)), _wgslsmith_f_op_vec4_f32(round(global0.a.b))))), _wgslsmith_f_op_vec4_f32(global0.a.b * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.d, global0.a.b.x, -631f, var_4.d), var_4.b, select(vec4<bool>(var_4.a.x, var_0.x, false, var_0.x), vec4<bool>(global0.a.a.x, var_0.x, false, var_0.x), vec4<bool>(false, var_4.a.x, var_0.x, true)))))), Struct_3(_wgslsmith_f_op_vec4_f32(-var_4.b)), !global0.a.c.x);
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    global1 = vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, global1.x, 19203i, -21077i), _wgslsmith_sub_vec4_i32(vec4<i32>(20566i, global1.x, global1.x, -1i), vec4<i32>(global1.x, 0i, -2147483647i, global1.x))), _wgslsmith_div_i32(~(-global1.x), _wgslsmith_clamp_i32(-34913i, 59552i, reverseBits(global1.x))), min(global1.x, -2147483647i), 2147483647i) >> (_wgslsmith_div_vec4_u32(~vec4<u32>(1u, reverseBits(0u), global0.b.x, firstTrailingBit(1u)), _wgslsmith_add_vec4_u32(countOneBits(~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.c, 25u)], 25u)], 70526u, 0u, global0.c)), countOneBits(abs(vec4<u32>(global3[_wgslsmith_index_u32(28399u, 25u)], global0.b.x, 0u, 4294967295u))))) % vec4<u32>(32u));
    var var_0 = abs(select(_wgslsmith_add_vec3_u32(vec3<u32>(58436u, u_input.a.x << (u_input.a.x % 32u), abs(u_input.a.x)), vec3<u32>(~56479u, _wgslsmith_mod_u32(0u, global0.b.x), 24867u)), vec3<u32>(u_input.a.x, u_input.a.x, 27848u), !arg_0.c));
    var var_1 = select(vec4<i32>(abs(global1.x), -83812i, global1.x, global1.x), vec4<i32>(~(-4873i & firstTrailingBit(global1.x)), ~global1.x, _wgslsmith_sub_i32(firstLeadingBit(31956i), abs(global1.x)) >> (4294967295u % 32u), ~_wgslsmith_mult_i32(global1.x, -12007i)), !(!select(select(vec4<bool>(global0.a.c.x, arg_0.c, arg_0.c, global0.a.c.x), vec4<bool>(false, arg_0.c, arg_0.c, global0.a.c.x), true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, arg_0.c), vec4<bool>(true, false, arg_0.c, false)), vec4<bool>(false, true, false, arg_0.c))));
    var var_2 = -2147483647i;
    global2 = array<Struct_4, 14>();
    return Struct_1(!(!vec2<bool>(global0.a.b.x < 760f, true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global0.a.b))), _wgslsmith_f_op_vec4_f32(-arg_0.a), !select(select(vec4<bool>(true, global0.a.c.x, arg_0.c, false), vec4<bool>(arg_0.c, false, true, false), vec4<bool>(true, true, true, global0.a.c.x)), !vec4<bool>(false, global0.a.c.x, arg_0.c, false), all(global0.a.c.yy)))), !global0.a.c, _wgslsmith_f_op_f32(1010f + _wgslsmith_div_f32(global0.a.d, _wgslsmith_f_op_f32(ceil(global0.a.b.x)))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec4<i32>) -> f32 {
    var var_0 = ~_wgslsmith_sub_u32(~(~32219u), firstLeadingBit(firstLeadingBit(1u)) << (select(_wgslsmith_add_u32(64481u, u_input.a.x), global0.c, global0.c > global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 25u)], 25u)]) % 32u));
    let var_1 = vec3<u32>(~1051u, u_input.a.x, _wgslsmith_mult_u32(~(~global3[_wgslsmith_index_u32(~44315u, 25u)]), 4294967295u));
    global4 = 0i;
    let var_2 = Struct_2(func_4(func_2()), ~(~(vec3<u32>(13671u, 24426u, 1u) << (_wgslsmith_add_vec3_u32(var_1, vec3<u32>(var_1.x, 6071u, 0u)) % vec3<u32>(32u)))), _wgslsmith_sub_u32(~global3[_wgslsmith_index_u32(global0.b.x, 25u)], 0u));
    let var_3 = abs(arg_2.x);
    return 546f;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: vec2<u32>, arg_3: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_clamp_u32(~48544u, abs(~global0.b.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, global0.c, global0.c), global0.b) % 32u)), u_input.a.x ^ countOneBits(1u)) >> (arg_2.x % 32u);
    global4 = 2147483647i;
    global4 = global1.x;
    global0 = Struct_2(func_4(func_2()), global0.b, arg_2.x);
    global3 = array<u32, 25>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(global0.a.a, Struct_5(Struct_1(!select(global0.a.c.xy, vec2<bool>(true, global0.a.c.x), global0.a.c.zz), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global0.a.b * vec4<f32>(global0.a.d, global0.a.b.x, global0.a.b.x, global0.a.d)), _wgslsmith_f_op_vec4_f32(-global0.a.b), all(global0.a.c.xx))), global0.a.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_3(vec4<f32>(global0.a.b.x, 1058f, 1000f, 900f)), global0.a.c.yy, vec4<i32>(global1.x, 17502i, global1.x, 3608i))), _wgslsmith_f_op_f32(1140f * -140f)))), abs(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.a.x), ~vec2<u32>(0u, 9299u)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 60016u), _wgslsmith_mod_vec2_u32(global0.b.zz, vec2<u32>(global0.c, 65195u))))), Struct_4(vec4<f32>(global0.a.d, 1053f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-620f - 1000f), -354f)), _wgslsmith_f_op_f32(-global0.a.b.x)), func_2().b, global0.a.a.x));
    let var_1 = var_0.c;
    global3 = array<u32, 25>();
    let var_2 = Struct_2(Struct_1(select(vec2<bool>(false, func_4(Struct_4(var_0.b.a, Struct_3(vec4<f32>(var_0.a.x, 1338f, var_0.a.x, 147f)), false)).c.x), vec2<bool>(true, func_5(vec2<bool>(false, global0.a.a.x), Struct_5(global0.a), global0.b.xz, Struct_4(vec4<f32>(-730f, var_0.b.a.x, var_0.b.a.x, 2111f), Struct_3(global0.a.b), true)).c), global0.a.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.b.x, global0.a.d, 1000f, var_0.a.x))) - vec4<f32>(_wgslsmith_div_f32(-1000f, var_0.a.x), func_4(Struct_4(var_0.b.a, Struct_3(vec4<f32>(global0.a.d, 1261f, 509f, var_0.b.a.x)), var_0.c)).b.x, -718f, var_0.a.x)), global0.a.c, 592f), global0.b, firstTrailingBit(global3[_wgslsmith_index_u32(select(0u, reverseBits(~global3[_wgslsmith_index_u32(u_input.a.x, 25u)]), true), 25u)]));
    var var_3 = global0.a;
    var var_4 = ~(~countOneBits(~vec4<u32>(1u, 21593u, global0.c, global0.b.x)));
    global3 = array<u32, 25>();
    var var_5 = vec3<u32>(~select(var_4.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_4.x, u_input.a.x, 12534u, 4016u), vec4<u32>(var_2.b.x, var_4.x, var_2.b.x, global0.b.x)), !any(vec2<bool>(var_0.c, true))), global3[_wgslsmith_index_u32(countOneBits(reverseBits(global3[_wgslsmith_index_u32(~1u, 25u)])), 25u)], _wgslsmith_div_u32(global0.c, global0.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.wzw, countOneBits(global1.x) | (global1.x ^ 30200i), ~global1.x & global1.x, _wgslsmith_mod_i32(global1.x, -1i), (vec3<u32>(u_input.a.x, firstLeadingBit(4294967295u), ~29816u) ^ ~(vec3<u32>(1u, var_2.c, 1u) >> (vec3<u32>(22182u, u_input.a.x, 1u) % vec3<u32>(32u)))) & (vec3<u32>(reverseBits(1u), global3[_wgslsmith_index_u32(var_4.x, 25u)] >> (15631u % 32u), ~u_input.a.x) ^ ~(vec3<u32>(var_2.c, 34908u, var_4.x) & var_2.b)));
}

