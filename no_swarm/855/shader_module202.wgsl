struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: f32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2> = array<u32, 2>(89323u, 0u);

var<private> global1: vec2<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = -2147483647i < u_input.b;
    var_0 = all(select(select(vec3<bool>(global1.x, any(vec2<bool>(global1.x, global1.x)), false), !select(vec3<bool>(false, true, false), vec3<bool>(global1.x, true, true), vec3<bool>(false, false, false)), true), vec3<bool>(false, (global1.x != global1.x) && all(vec4<bool>(true, false, false, true)), !global1.x), vec3<bool>(false, true, all(vec2<bool>(true, true)))));
    var_0 = false;
    var var_1 = firstLeadingBit(vec4<i32>(max(reverseBits(-15905i) >> (~global0[_wgslsmith_index_u32(u_input.d.x, 2u)] % 32u), u_input.c), -50613i, 1i, _wgslsmith_mult_i32(~(-u_input.c), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, 0i, u_input.a, 9990i), vec4<i32>(u_input.b, u_input.b, 1i, u_input.c)), vec4<i32>(u_input.c, u_input.b, 0i, 47214i)))));
    let var_2 = Struct_3(Struct_1(u_input.a, ~(max(vec4<i32>(u_input.b, 0i, var_1.x, var_1.x), vec4<i32>(58078i, 2147483647i, -29505i, var_1.x)) | vec4<i32>(-42648i, u_input.c, -2000i, u_input.b)), vec3<i32>((-2147483647i & var_1.x) ^ var_1.x, u_input.c, ~(-48013i) >> ((4294967295u << (global0[_wgslsmith_index_u32(u_input.d.x, 2u)] % 32u)) % 32u)), u_input.d, vec3<u32>(u_input.d.x, countOneBits(93847u), ~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19826u, 2u)], 2u)] ^ global0[_wgslsmith_index_u32(u_input.d.x, 2u)]))));
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = global1.x;
    global1 = select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, true, true)), all(vec3<bool>(false, true, any(vec4<bool>(global1.x, global1.x, global1.x, true))))), select(global1.x, _wgslsmith_sub_i32(u_input.c, _wgslsmith_sub_i32(1i, 12847i)) == -u_input.b, false));
    var var_1 = Struct_2(any(!vec3<bool>(func_3(), global1.x, true)), u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(727f + -1268f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(1166f - -335f))))), vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -588f) * 2392f) + -1190f), -123f));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.x), var_1.c)) - -1701f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.c)))));
    global0 = array<u32, 2>();
    return Struct_1(-1i, vec4<i32>(var_1.b, _wgslsmith_mult_i32(u_input.a, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-2147483647i, u_input.b, var_1.b), vec3<i32>(var_1.b, -38450i, 0i), vec3<bool>(var_1.a, var_1.a, var_1.a)), ~vec3<i32>(u_input.c, var_1.b, u_input.c))), ~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 2147483647i, u_input.a, 0i), vec4<i32>(-25674i, -2147483647i, u_input.a, var_1.b)), -vec4<i32>(u_input.b, u_input.c, 0i, var_1.b)), -_wgslsmith_mult_i32(u_input.c, -1i) | _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, var_1.b, 5584i, -19472i), vec4<i32>(u_input.a, u_input.a, var_1.b, -1i)), 1i << (1u % 32u))), -select(select(-vec3<i32>(var_1.b, 0i, 2147483647i), abs(vec3<i32>(u_input.a, -2147483647i, 2147483647i)), !vec3<bool>(false, var_1.a, var_1.a)), vec3<i32>(var_1.b, abs(1776i), abs(u_input.a)), select(!vec3<bool>(global1.x, var_1.a, var_1.a), !vec3<bool>(false, var_1.a, var_1.a), true)), min(~vec3<u32>(14370u, u_input.d.x, _wgslsmith_dot_vec2_u32(u_input.d.yy, u_input.d.xz)), vec3<u32>(45608u, ~_wgslsmith_add_u32(u_input.d.x, global0[_wgslsmith_index_u32(u_input.d.x, 2u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 2u)], 2u)])), vec3<u32>(0u, global0[_wgslsmith_index_u32(u_input.d.x, 2u)], _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.d.x, 2u)] ^ 28335u, 4294967295u)) >> (_wgslsmith_add_vec3_u32(~u_input.d, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10336u, 2u)], 2u)], u_input.d.x) >> (u_input.d % vec3<u32>(32u)), u_input.d, u_input.d)) % vec3<u32>(32u)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<u32, 2>();
    let var_0 = max(vec4<u32>(u_input.d.x, ~u_input.d.x, 4294967295u, _wgslsmith_dot_vec4_u32(min(vec4<u32>(arg_0, u_input.d.x, 33614u, 108210u) & vec4<u32>(arg_1.e.x, arg_0, 0u, u_input.d.x), vec4<u32>(17146u, 0u, 1u, 59383u)), ~firstLeadingBit(vec4<u32>(25033u, u_input.d.x, 57316u, global0[_wgslsmith_index_u32(arg_2.d.x, 2u)])))), select(vec4<u32>(countOneBits(13402u), 29222u, firstLeadingBit(reverseBits(arg_1.e.x)), arg_2.d.x), ~(vec4<u32>(arg_2.e.x, arg_0, arg_0, 1u) >> ((vec4<u32>(0u, 7480u, 0u, 5282u) ^ vec4<u32>(arg_0, 4294967295u, u_input.d.x, u_input.d.x)) % vec4<u32>(32u))), !(!global1.x && any(vec2<bool>(false, global1.x)))));
    var var_1 = vec2<bool>(true, all(vec3<bool>(firstTrailingBit(arg_0) <= _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 19572u, arg_1.d.x), var_0.xxy), !(arg_1.b.x != 23818i), any(vec3<bool>(global1.x, global1.x, global1.x)))));
    var var_2 = _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(4294967295u, arg_0, ~u_input.d.x)), firstLeadingBit(~vec3<u32>(_wgslsmith_sub_u32(0u, arg_1.d.x), abs(71764u), global0[_wgslsmith_index_u32(arg_1.d.x, 2u)] ^ arg_2.e.x)));
    var var_3 = Struct_3(arg_2);
    return arg_2;
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: vec2<u32>, arg_3: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-133f * arg_3), _wgslsmith_div_f32(arg_3, 569f))), -1851f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(sign(arg_3)), arg_3), _wgslsmith_div_vec2_f32(vec2<f32>(arg_3, -123f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_3, arg_3)))))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x + arg_3)))), _wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-614f, 1000f))))), -1077f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -2001f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(var_0.x - arg_3)) + _wgslsmith_f_op_f32(-arg_3))));
    global1 = vec2<bool>((arg_2.x << (77144u % 32u)) != countOneBits(0u), true);
    let var_2 = Struct_2(true, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(func_2().b, (vec4<i32>(-19268i, u_input.c, -1i, arg_0.a.a) | arg_0.a.b) << (firstLeadingBit(vec4<u32>(u_input.d.x, 29988u, 0u, 115888u)) % vec4<u32>(32u))), reverseBits(-2742i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-254f, var_0.x)), -520f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 + arg_3)))), _wgslsmith_f_op_vec3_f32(var_1.zzz * _wgslsmith_f_op_vec3_f32(-var_1.xyx)));
    var var_3 = Struct_3(func_4(69593u, arg_0.a, arg_0.a));
    return Struct_2(true, func_4(0u, arg_0.a, func_2()).a, var_1.x, var_1.yyx);
}

fn func_1(arg_0: bool) -> vec2<u32> {
    var var_0 = func_5(Struct_3(func_4(~(global0[_wgslsmith_index_u32(u_input.d.x, 2u)] & 0u), func_2(), Struct_1(u_input.b, vec4<i32>(u_input.a, -2475i, u_input.c, 2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, -1i, u_input.a), vec3<i32>(8629i, u_input.a, u_input.c)), vec3<u32>(16852u, global0[_wgslsmith_index_u32(7779u, 2u)], 24348u), max(u_input.d, u_input.d)))), 4616u, u_input.d.yx, -779f);
    global1 = select(!select(select(!vec2<bool>(arg_0, arg_0), !vec2<bool>(false, arg_0), vec2<bool>(var_0.a, arg_0)), vec2<bool>(true, true), vec2<bool>(true, func_3())), !vec2<bool>(select(true, select(true, arg_0, global1.x), !global1.x), true | all(vec2<bool>(false, var_0.a))), var_0.a);
    var var_1 = reverseBits(vec2<u32>(10220u, ~u_input.d.x));
    global0 = array<u32, 2>();
    let var_2 = Struct_3(func_2());
    return vec2<u32>(~_wgslsmith_mod_u32(func_2().d.x, 22835u), ~37483u);
}

fn func_6(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: vec4<f32>) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + arg_2.x)), arg_2.x)), -789f), arg_2.x, arg_2.x);
    let var_1 = ~(~max(u_input.d.x, 4294967295u)) & _wgslsmith_add_u32(~8908u | arg_1.x, 0u);
    var var_2 = Struct_4(firstTrailingBit(~_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-78149i, arg_0.x, arg_0.x, u_input.a)), vec4<i32>(arg_0.x, arg_0.x, -1i, -853i) & vec4<i32>(u_input.b, 7827i, arg_0.x, 606i), -vec4<i32>(u_input.a, u_input.b, u_input.a, arg_0.x))), reverseBits(-(u_input.a >> (countOneBits(4294967295u) % 32u))), !global1.x);
    let var_3 = func_5(Struct_3(func_2()), 4294967295u ^ (0u & ~u_input.d.x), vec2<u32>(3053u, ~12373u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(step(-1000f, -1365f)))))));
    let var_4 = var_2.a.xxx;
    return 0u > arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(vec2<bool>(func_6(vec3<i32>(reverseBits(1i), _wgslsmith_sub_i32(u_input.c, 0i), u_input.a), countOneBits(func_1(global1.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1839f, 2556f, -329f, -172f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1017f, 1147f, -271f, 280f) * vec4<f32>(-326f, 1126f, 434f, 1441f)), !vec4<bool>(true, global1.x, true, global1.x)))), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, u_input.a, -2147483647i), countOneBits(vec3<i32>(18834i, u_input.a, -13851i))) != u_input.a), select(vec2<bool>(true, false), !select(select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, true), vec2<bool>(true, global1.x)), !vec2<bool>(global1.x, global1.x), select(vec2<bool>(global1.x, false), vec2<bool>(false, global1.x), vec2<bool>(global1.x, true))), true), (595f > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1718f)), _wgslsmith_f_op_f32(251f + -420f)))) & !global1.x);
    global1 = !vec2<bool>(true, func_6(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.c, -2147483647i), vec3<i32>(-1i, 2147483647i, 48514i)), vec2<u32>(global0[_wgslsmith_index_u32(36405u, 2u)], u_input.d.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(216f, -161f, -1175f, -733f), vec4<f32>(350f, -202f, -1594f, -742f)))) | global1.x);
    let var_0 = Struct_3(func_4(_wgslsmith_sub_u32(u_input.d.x, global0[_wgslsmith_index_u32(min(u_input.d.x & 1u, countOneBits(global0[_wgslsmith_index_u32(50944u, 2u)])), 2u)]), func_2(), func_4(_wgslsmith_add_u32(37451u, global0[_wgslsmith_index_u32(4294967295u, 2u)] >> (38742u % 32u)), Struct_1(u_input.b ^ u_input.c, vec4<i32>(9236i, u_input.c, -15632i, u_input.b), vec3<i32>(u_input.b, 1i, u_input.c), u_input.d, ~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28954u, 2u)], 2u)], global0[_wgslsmith_index_u32(29091u, 2u)], 0u)), func_4(~14770u, Struct_1(-1i, vec4<i32>(36838i, u_input.c, 36271i, u_input.a), vec3<i32>(-2147483647i, u_input.c, u_input.b), vec3<u32>(u_input.d.x, 52551u, 9751u), vec3<u32>(u_input.d.x, u_input.d.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 2u)], 2u)])), func_2()))));
    let var_1 = global1.x;
    var var_2 = !select(!select(select(vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(false, true, true, true), global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), select(vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(global1.x, true, global1.x, true), global1.x)), !select(!vec4<bool>(false, global1.x, global1.x, global1.x), select(vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(global1.x, global1.x, global1.x, false), global1.x), !vec4<bool>(global1.x, true, global1.x, true)), global1.x);
    global0 = array<u32, 2>();
    var var_3 = _wgslsmith_f_op_f32(trunc(func_5(var_0, u_input.d.x, var_0.a.e.yx, _wgslsmith_f_op_f32(ceil(1f))).d.x));
    let var_4 = var_0.a;
    var var_5 = func_4(u_input.d.x, Struct_1(-_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_4.b.x, 33161i), vec2<i32>(var_0.a.a, 2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.a, 7542i, var_0.a.c.x), var_0.a.c)), func_2().b, vec3<i32>(-1i) * -(var_4.c | var_0.a.c), vec3<u32>(~var_4.e.x & (27209u >> (0u % 32u)), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_0.a.d.x, var_4.d.x), 36506u, _wgslsmith_add_u32(u_input.d.x, var_0.a.e.x)), _wgslsmith_div_u32(var_0.a.d.x, _wgslsmith_mult_u32(var_4.e.x, 1u))), firstLeadingBit(vec3<u32>(var_4.e.x, global0[_wgslsmith_index_u32(u_input.d.x, 2u)], 3280u)) & firstLeadingBit(u_input.d)), Struct_1(1i, ~select(-vec4<i32>(var_4.a, var_4.b.x, -2147483647i, var_4.c.x), reverseBits(vec4<i32>(var_4.b.x, 2147483647i, var_4.c.x, var_0.a.a)), vec4<bool>(var_2.x, false, true, global1.x)), vec3<i32>(-max(u_input.b, -32670i), -34012i, ~firstLeadingBit(0i)), u_input.d, countOneBits(vec3<u32>(0u ^ var_4.d.x, 0u, 70791u))));
    let x = u_input.a;
    s_output = StorageBuffer(select(select(u_input.d.yx, vec2<u32>(29706u, 0u), !var_2.ww), vec2<u32>(select(4294967295u, 4294967295u, var_2.x), u_input.d.x), func_3()) << (~vec2<u32>(0u, abs(16566u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(319f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1316f)))))), ~vec2<u32>(~(~var_0.a.e.x), ~33403u), 796f);
}

