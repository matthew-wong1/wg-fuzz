struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(28407u, 34962u, 25652u, 64145u, 89118u, 0u, 36221u, 30671u, 4294967295u, 1u, 0u, 93032u, 4294967295u, 23365u, 47383u, 58643u, 4294967295u, 4294967295u, 28063u, 3682u, 1u, 31862u, 27619u, 3779u);

var<private> global1: Struct_2 = Struct_2(vec4<i32>(i32(-2147483648), 0i, -40839i, i32(-2147483648)), Struct_1(29453u, -27994i, vec3<i32>(-1i, 7695i, 5380i), vec4<f32>(537f, -1085f, -1158f, -403f), false), Struct_1(10206u, 41096i, vec3<i32>(-1i, 1273i, -1i), vec4<f32>(1136f, 1000f, -1118f, 445f), false), -1i);

var<private> global2: i32 = 8875i;

var<private> global3: bool;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: u32) -> vec2<bool> {
    return vec2<bool>(any(arg_2.wyy), any(!(!arg_2.xzy)));
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = select(u_input.c.zzz, vec3<u32>(~40817u, ~abs(9376u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.b.a, global0[_wgslsmith_index_u32(51249u, 24u)]), u_input.c.xy, u_input.c.zx), u_input.a.zx | u_input.a.zz)) >> (_wgslsmith_mod_vec3_u32(firstLeadingBit(u_input.c.wwx | vec3<u32>(1u, u_input.c.x, 4294967295u)), vec3<u32>(abs(1u), ~global0[_wgslsmith_index_u32(13383u, 24u)], ~4294967295u)) % vec3<u32>(32u)), global1.c.e);
    global3 = all(vec3<bool>(select(!global1.c.e || all(vec3<bool>(global1.b.e, false, global1.c.e)), global1.b.e, false), global1.c.e, reverseBits(_wgslsmith_div_i32(u_input.b.x, -1i)) != abs(u_input.b.x)));
    var var_1 = vec3<bool>(global1.b.e, all(func_3(firstLeadingBit(global1.a.zxw) | ~vec3<i32>(1i, -1i, -582i), Struct_2(_wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, -5267i, 1i, -626i)), Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4503u, 24u)], 24u)], u_input.b.x, global1.c.c, vec4<f32>(arg_0, global1.c.d.x, global1.b.d.x, 1429f), true), Struct_1(1u, 69311i, vec3<i32>(2147483647i, global1.d, -1i), global1.c.d, true), _wgslsmith_add_i32(global1.d, global1.a.x)), vec4<bool>(global1.b.e, global1.b.e, true, any(vec3<bool>(false, global1.b.e, global1.c.e))), global1.c.a)), false);
    let var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(select(u_input.b, vec4<i32>(i32(-1i) * -26343i, firstTrailingBit(1i), _wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(u_input.b.x, 0i)), 1i), !(!vec4<bool>(var_1.x, false, var_1.x, var_1.x))), reverseBits(reverseBits(~global1.a))), u_input.b);
    global0 = array<u32, 24>();
    return Struct_2(abs(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 2147483647i, u_input.b.x, -1i), reverseBits(vec4<i32>(var_2, global1.d, u_input.b.x, var_2))), ~vec4<i32>(var_2, -1i, var_2, global1.b.b))), global1.c, Struct_1(~1u, min(global1.c.c.x >> (72702u % 32u), -u_input.b.x), vec3<i32>(countOneBits(u_input.b.x), countOneBits(~var_2), -u_input.b.x | 2147483647i), vec4<f32>(-185f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.c.d.x), _wgslsmith_f_op_f32(arg_0 - global1.b.d.x))), global1.b.d.x, _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(-arg_0), all(var_1.xy)))), !var_1.x), _wgslsmith_dot_vec3_i32(global1.a.yyz, vec3<i32>(-(~1i), var_2, _wgslsmith_dot_vec3_i32(firstLeadingBit(global1.b.c), _wgslsmith_div_vec3_i32(u_input.b.xyw, u_input.b.xzx)))));
}

fn func_1(arg_0: u32) -> vec2<bool> {
    global0 = array<u32, 24>();
    global1 = func_2(856f);
    var var_0 = Struct_1(22515u, 70882i, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.d.x + 1237f) * 1584f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * -182f), 530f, global1.b.d.x > global1.b.d.x)))).b.c, vec4<f32>(global1.b.d.x, global1.b.d.x, _wgslsmith_f_op_f32(-global1.b.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.d.x)))), any(vec3<bool>(any(select(vec3<bool>(true, global1.b.e, true), vec3<bool>(false, false, global1.b.e), vec3<bool>(global1.c.e, global1.c.e, global1.b.e))), true, global1.b.e)));
    let var_1 = 1694f;
    return vec2<bool>(func_2(_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(global1.b.d.x - func_2(var_0.d.x).c.d.x))).c.e, false);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_2 {
    global2 = -reverseBits(global1.a.x);
    var var_0 = !(!select(!arg_1, arg_1, (arg_1.x || arg_1.x) != (arg_1.x && true)));
    var var_1 = global1.b.c;
    var var_2 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(650f))), _wgslsmith_f_op_f32(389f * arg_2.d.x))).c;
    let var_3 = arg_0.x;
    return func_2(var_2.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 314f;
    global1 = func_4(firstTrailingBit(-vec2<i32>(0i, 1i)), select(select(vec2<bool>(!global1.b.e, false), func_1(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 40152u))), vec2<bool>(global1.c.e | global1.b.e, false)), vec2<bool>(global1.b.e, true), global1.c.e), Struct_1(~1u, global1.a.x, abs(vec3<i32>(~u_input.b.x, _wgslsmith_mod_i32(global1.c.c.x, 1i), 2147483647i ^ u_input.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(global1.b.d.x)), _wgslsmith_div_f32(521f, global1.b.d.x), 686f, _wgslsmith_f_op_f32(228f * global1.b.d.x))), false));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global1.c.d.x))))) - global1.b.d.x), global1.c.d.x, global1.c.e));
    var var_2 = Struct_1(select(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 79117u)), vec2<u32>(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 26373u), ~global1.b.a)), _wgslsmith_mult_u32(firstTrailingBit(u_input.a.x), 0u), global1.c.e), global1.b.b, ~(u_input.b.xzz & select(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, global1.b.c.x, u_input.b.x), vec3<i32>(1i, u_input.b.x, u_input.b.x)), _wgslsmith_div_vec3_i32(global1.a.xyw, global1.c.c), select(vec3<bool>(false, false, true), vec3<bool>(true, true, global1.c.e), vec3<bool>(global1.c.e, true, global1.c.e)))), vec4<f32>(var_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.c.d.x, var_1)) - _wgslsmith_f_op_f32(select(829f, global1.b.d.x, true))))), -731f, func_2(1537f).c.d.x), global1.a.x > abs(global1.c.c.x));
    var_2 = Struct_1(74873u, _wgslsmith_div_i32(var_2.b, _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(global1.a, vec4<i32>(1i, 2147483647i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, global1.d, global1.a.x, global1.c.b)), select(vec4<i32>(-12005i, global1.b.c.x, -29944i, u_input.b.x) & u_input.b, firstLeadingBit(global1.a), false))), vec3<i32>(5141i, _wgslsmith_div_i32(0i, -2147483647i), reverseBits(firstLeadingBit(-1i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_2.d)) + vec4<f32>(_wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.b.d.x, 1115f))), global1.c.d.x, _wgslsmith_f_op_f32(abs(-523f)))), any(!vec2<bool>(global1.c.e, u_input.c.x < 90571u)));
    let var_3 = select(vec2<bool>(var_2.e, true), vec2<bool>(true, func_2(_wgslsmith_f_op_f32(f32(-1f) * -550f)).c.e), select(!(!vec2<bool>(false, var_2.e)), vec2<bool>(true, true), global1.b.e));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.b.x, 3820i), var_2.c.x, _wgslsmith_dot_vec3_u32(~u_input.a, vec3<u32>(min(global0[_wgslsmith_index_u32(4294967295u, 24u)] << (4294967295u % 32u), ~40894u), 62788u, firstLeadingBit(7121u))), vec4<u32>(4294967295u, ~(~min(1u, global1.b.a)), _wgslsmith_mult_u32(_wgslsmith_div_u32(~4294967295u, _wgslsmith_sub_u32(53682u, 48808u)), ~firstLeadingBit(1u)), select(_wgslsmith_div_u32(~1947u, _wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.yz)), _wgslsmith_div_u32(u_input.a.x, 112130u), true)));
}

