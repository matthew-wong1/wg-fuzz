struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<Struct_4, 25>;

var<private> global2: array<bool, 18>;

var<private> global3: array<bool, 6> = array<bool, 6>(true, true, true, true, false, true);

var<private> global4: vec3<f32> = vec3<f32>(-322f, 788f, -1408f);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<i32>) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(arg_0.x, 25u)];
    global2 = array<bool, 18>();
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~8094u), 25u)];
    let var_2 = vec4<f32>(global4.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-115f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1560f) + _wgslsmith_f_op_f32(-var_1.b.x)) * _wgslsmith_f_op_f32(step(var_0.a.a.a, var_0.a.a.a))))), var_0.b.x);
    let var_3 = Struct_4(Struct_3(Struct_1(901f, max(1u, u_input.c.x) & _wgslsmith_dot_vec4_u32(u_input.e, u_input.e)), var_1.a.b, (-2147483647i << (var_0.a.a.b % 32u)) << (~(~66971u) % 32u), vec2<bool>(all(vec3<bool>(true, var_1.a.d.x, false)), var_2.x <= 1000f)), var_1.b);
    return ~(~reverseBits(u_input.c.x));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: u32) -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.e, u_input.e), _wgslsmith_mult_vec4_u32(vec4<u32>(~(~4322u), 10168u, _wgslsmith_dot_vec2_u32(~vec2<u32>(65053u, arg_2), u_input.e.xy >> (vec2<u32>(u_input.e.x, 4294967295u) % vec2<u32>(32u))), countOneBits(~u_input.e.x)), vec4<u32>(abs(_wgslsmith_sub_u32(47103u, u_input.c.x)), _wgslsmith_dot_vec2_u32(arg_1, select(arg_1, vec2<u32>(23716u, 70100u), false)), arg_2, countOneBits(arg_2)))), 25u)];
    global3 = array<bool, 6>();
    global2 = array<bool, 18>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.a.a, 837f) * -2113f), _wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(sign(-1188f))))), 15505u);
    let var_2 = var_0.a.b;
    return Struct_2(var_2.a);
}

fn func_1() -> vec3<bool> {
    global2 = array<bool, 18>();
    let var_0 = Struct_3(Struct_1(-663f, ~select(u_input.c.x, u_input.e.x, true)), func_3(vec3<i32>(-31595i, _wgslsmith_mod_i32(~1i, u_input.b), 0i), vec2<u32>(0u, 32032u), ~4294967295u << (func_2(vec3<u32>(4294967295u, u_input.c.x, u_input.e.x), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.a.x), vec2<i32>(-439i, -23855i))) % 32u)), _wgslsmith_sub_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -1i), u_input.d.yw)), abs(firstTrailingBit(u_input.d.x))), !select(select(!vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.e.x, 6u)]), select(vec2<bool>(false, false), vec2<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 6u)], global3[_wgslsmith_index_u32(4294967295u, 6u)]), vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.c.x, 6u)])), false), vec2<bool>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e.x, 4294967295u), 6u)], true), global2[_wgslsmith_index_u32(func_2(vec3<u32>(109648u, 74100u, 4294967295u), vec2<i32>(2147483647i, 2147483647i)), 18u)] & (global3[_wgslsmith_index_u32(u_input.c.x, 6u)] & global3[_wgslsmith_index_u32(19734u, 6u)])));
    global4 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(-1009f - var_0.a.a), _wgslsmith_f_op_f32(-var_0.a.a)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.a.a, var_0.a.a, var_0.a.a))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(365f, global4.x, var_0.a.a) - vec3<f32>(1000f, 316f, -516f)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(sign(-1076f)), -921f, -3112f)))))));
    var var_1 = var_0.a;
    var var_2 = var_0.d;
    return !(!select(vec3<bool>(var_0.d.x, global3[_wgslsmith_index_u32(46933u, 6u)], u_input.b < -2147483647i), !vec3<bool>(false, global2[_wgslsmith_index_u32(38811u, 18u)], global3[_wgslsmith_index_u32(0u, 6u)]), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(u_input.e.x, _wgslsmith_sub_u32(~u_input.c.x, ~(~u_input.c.x)));
    var var_1 = all(func_1());
    var var_2 = ~_wgslsmith_add_u32(~(~(u_input.e.x & var_0)), u_input.c.x);
    var var_3 = Struct_3(Struct_1(304f, var_0), func_3(~_wgslsmith_mult_vec3_i32(~vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), u_input.a), u_input.c, ~select(var_0, ~56105u, false)), u_input.d.x, !select(select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 6u)], false), func_1().xy, select(vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 18u)]), vec2<bool>(global3[_wgslsmith_index_u32(32336u, 6u)], global3[_wgslsmith_index_u32(69167u, 6u)]), vec2<bool>(global2[_wgslsmith_index_u32(var_0, 18u)], false))), select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 6u)], global2[_wgslsmith_index_u32(4294967295u, 18u)]), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 6u)], true), any(vec4<bool>(true, global3[_wgslsmith_index_u32(var_0, 6u)], true, global3[_wgslsmith_index_u32(16440u, 6u)]))), select(vec2<bool>(false, global2[_wgslsmith_index_u32(var_0, 18u)]), !vec2<bool>(global2[_wgslsmith_index_u32(var_0, 18u)], false), func_1().x)));
    var var_4 = Struct_3(var_3.a, func_3(_wgslsmith_div_vec3_i32(~firstTrailingBit(vec3<i32>(var_3.b.a.x, 42443i, -32932i)), var_3.b.a), ~(u_input.c >> (~u_input.c % vec2<u32>(32u))), func_2(vec3<u32>(~var_0, ~42346u, 1u), _wgslsmith_clamp_vec2_i32(var_3.b.a.yx, vec2<i32>(u_input.b, var_3.c) | vec2<i32>(var_3.c, -13945i), u_input.a.yx))), var_3.b.a.x | abs(~(-1i)), !var_3.d);
    var var_5 = var_4.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, u_input.c.x), 1u), _wgslsmith_mult_u32(~4294967295u, abs(0u)), u_input.c.x << (~1u % 32u), _wgslsmith_sub_u32(_wgslsmith_div_u32(0u, u_input.c.x), 101269u)), ~firstLeadingBit(0i), _wgslsmith_sub_u32(~_wgslsmith_mod_u32(var_4.a.b, u_input.e.x & var_3.a.b), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(26508u), 1u >> (var_4.a.b % 32u)), u_input.e.yy)));
}

