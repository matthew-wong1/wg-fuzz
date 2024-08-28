struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: Struct_4,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 6>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: u32, arg_3: f32) -> i32 {
    var var_0 = min(-vec2<i32>(firstLeadingBit(abs(global1[_wgslsmith_index_u32(14499u, 6u)])), _wgslsmith_clamp_i32(1i, -1993i, 1i)), ~(~(~vec2<i32>(arg_1, 2147483647i))));
    let var_1 = !select(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), true), select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), true), vec3<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), true)), all(vec2<bool>(true, true)), true));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -763f) - -693f)))));
    var var_3 = ~vec3<u32>(1u, arg_2, _wgslsmith_dot_vec3_u32(~u_input.a, firstTrailingBit(vec3<u32>(4294967295u, 16217u, arg_0)))) >> (u_input.a % vec3<u32>(32u));
    var_3 = max(max(vec3<u32>(6467u, (arg_2 << (arg_0 % 32u)) << (~u_input.b % 32u), arg_0), ~reverseBits(vec3<u32>(arg_2, var_3.x, var_3.x))), vec3<u32>(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.b, var_3.x, arg_0, 32352u), u_input.c, vec4<bool>(false, var_1.x, var_1.x, true)), firstTrailingBit(vec4<u32>(arg_2, 99471u, 0u, u_input.a.x))), arg_2, arg_0 >> (arg_0 % 32u)));
    return -1i;
}

fn func_2(arg_0: vec4<i32>) -> vec3<i32> {
    global0 = true;
    var var_0 = Struct_3(vec3<i32>(arg_0.x, global1[_wgslsmith_index_u32(~0u ^ _wgslsmith_div_u32(u_input.b, 20076u), 6u)] ^ countOneBits(_wgslsmith_div_i32(-2147483647i, 1i)), arg_0.x), Struct_2(vec2<bool>(true, true), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), vec2<i32>(1i, global1[_wgslsmith_index_u32(u_input.c.x, 6u)])), arg_0.xw), Struct_1(vec2<u32>(u_input.b, _wgslsmith_sub_u32(u_input.a.x, 5639u)), 109302u), vec3<bool>(true, !any(vec3<bool>(false, true, false)), any(vec2<bool>(false, false)))), Struct_1(vec2<u32>(u_input.b, 1u >> (_wgslsmith_add_u32(u_input.a.x, 113694u) % 32u)), ~u_input.b), Struct_1(~(~(~vec2<u32>(56538u, u_input.c.x))), ~1u), !vec3<bool>(true, any(vec4<bool>(true, true, true, true)), func_3(u_input.a.x, -21593i, 4369u, 1000f) != select(arg_0.x, -32454i, false)));
    var var_1 = select(select(!vec4<bool>(false | var_0.b.d.x, any(vec3<bool>(var_0.b.a.x, true, var_0.b.d.x)), false, var_0.b.d.x), vec4<bool>(false, var_0.e.x, var_0.e.x, var_0.c.b >= _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.c.b, 2692u), u_input.a)), var_0.e.x), select(vec4<bool>(true, select(all(var_0.e), any(var_0.b.d), arg_0.x > 31223i), (var_0.b.b.x | var_0.b.b.x) < arg_0.x, all(!var_0.b.d)), !select(!vec4<bool>(false, var_0.b.d.x, false, true), select(vec4<bool>(false, true, true, var_0.e.x), vec4<bool>(var_0.b.d.x, var_0.b.a.x, var_0.e.x, false), var_0.b.a.x), !var_0.e.x), all(select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.b.d.x, var_0.e.x, true, true), true))), var_0.e.x);
    var var_2 = Struct_5(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~max(u_input.c.x, 20486u), ~1u), 6u)], Struct_4(43040u, Struct_2(vec2<bool>(any(vec3<bool>(false, var_0.e.x, true)), true), ~arg_0.wx, var_0.d, vec3<bool>(false, 0u != u_input.c.x, select(var_1.x, true, var_1.x)))), Struct_4(93751u, var_0.b), vec3<i32>(arg_0.x, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(var_0.c.b, u_input.b), _wgslsmith_sub_u32(1u, var_0.c.a.x)), 6u)], arg_0.x));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2323f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1563f + 553f) - _wgslsmith_f_op_f32(f32(-1f) * -2026f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(118f)) * _wgslsmith_f_op_f32(923f - 221f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1204f)))));
    return _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-_wgslsmith_add_i32(var_0.b.b.x, 0i), -var_0.a.x, 0i), abs(-arg_0.wxy | max(arg_0.yyy, vec3<i32>(-26642i, 1i, var_2.a)))), ~var_2.d);
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_3(func_2(-vec4<i32>(-1i, -arg_3.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -18605i, arg_3.b.x, 0i), vec4<i32>(0i, arg_3.b.x, -1i, 0i)), 17912i)), arg_3, arg_3.c, arg_3.c, select(select(arg_3.d, arg_3.d, true), vec3<bool>(true, true, true), true));
    let var_1 = Struct_5(-35692i, Struct_4(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, 0u), reverseBits(arg_0.x)), Struct_2(!(!vec2<bool>(true, arg_3.d.x)), -var_0.b.b, var_0.b.c, vec3<bool>(!var_0.e.x, var_0.e.x || var_0.e.x, false))), Struct_4(abs(firstTrailingBit(min(0u, 1u))), var_0.b), vec3<i32>(~arg_1, global1[_wgslsmith_index_u32(max(max(~1u, min(28495u, arg_0.x)), arg_2.x), 6u)], -7760i));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-390f * 620f), _wgslsmith_f_op_f32(547f + 1192f))), 1f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(153f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -488f)))) * _wgslsmith_f_op_f32(1000f + -112f)));
    var_0 = Struct_3(~var_1.d >> (u_input.a % vec3<u32>(32u)), var_0.b, Struct_1(~(~arg_2.zz ^ vec2<u32>(0u, 1u)), u_input.c.x), arg_3.c, !select(select(!vec3<bool>(arg_3.a.x, true, var_0.b.d.x), vec3<bool>(var_1.b.b.a.x, var_1.b.b.d.x, var_1.c.b.a.x), false && var_1.c.b.a.x), !vec3<bool>(true, false, var_0.e.x), arg_3.d));
    global0 = arg_3.d.x;
    return abs(1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(~(~0u), _wgslsmith_mod_u32(func_1(vec3<u32>(4294967295u, u_input.c.x, 26780u), global1[_wgslsmith_index_u32(53894u, 6u)], vec4<u32>(u_input.b, u_input.c.x, u_input.b, u_input.c.x), Struct_2(vec2<bool>(true, false), vec2<i32>(42546i, 0i), Struct_1(u_input.c.zy, 0u), vec3<bool>(false, false, false))), ~44642u), u_input.c.x, u_input.c.x) >> (vec4<u32>(4294967295u, ~(~u_input.a.x), ~52871u, ~u_input.c.x) % vec4<u32>(32u)));
    var var_1 = ~vec2<u32>(1u, u_input.c.x);
    global1 = array<i32, 6>();
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1240f);
    global0 = any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !vec4<bool>(true, true, true, var_2 >= var_2)));
    global1 = array<i32, 6>();
    global1 = array<i32, 6>();
    let var_3 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(39185i, -12719i), 4923i), abs(global1[_wgslsmith_index_u32(u_input.b, 6u)]));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(firstTrailingBit(_wgslsmith_add_u32(abs(1u), ~61793u)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, var_0.x, 42915u), var_0.wyz), u_input.c.wwx)), vec3<u32>(u_input.c.x & var_1.x, var_1.x >> (0u % 32u), reverseBits(~6766u)), _wgslsmith_clamp_u32(((var_0.x & 0u) << (_wgslsmith_add_u32(0u, var_0.x) % 32u)) << (~1u % 32u), ~18674u << (max(var_0.x << (u_input.c.x % 32u), 21436u) % 32u), _wgslsmith_dot_vec2_u32(u_input.c.wz, vec2<u32>(737u, var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-304f, _wgslsmith_f_op_f32(step(var_2, -1151f)))))), var_2), _wgslsmith_add_u32(29130u, _wgslsmith_add_u32(~1u, _wgslsmith_add_u32(firstTrailingBit(1u), 0u))));
}

