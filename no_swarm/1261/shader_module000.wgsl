struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

var<private> global1: array<Struct_3, 24>;

var<private> global2: array<bool, 26>;

var<private> global3: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(1i, -1i, 1i), vec3<i32>(0i, -32387i, 1i), vec3<i32>(1171i, 18166i, -1i), vec3<i32>(0i, -14676i, -1i), vec3<i32>(2147483647i, 0i, i32(-2147483648)), vec3<i32>(1i, 0i, -384i), vec3<i32>(20096i, 0i, -38268i), vec3<i32>(1i, 0i, 24097i), vec3<i32>(i32(-2147483648), 40841i, 1i), vec3<i32>(-1i, -1i, -1i), vec3<i32>(69924i, i32(-2147483648), 28350i), vec3<i32>(71257i, 16243i, -16358i), vec3<i32>(-36945i, 13671i, i32(-2147483648)), vec3<i32>(4237i, 19855i, 0i), vec3<i32>(-8698i, -1i, 0i), vec3<i32>(-12756i, 18693i, -55934i), vec3<i32>(-31797i, -19295i, i32(-2147483648)));

var<private> global4: vec2<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> vec4<u32> {
    global2 = array<bool, 26>();
    global0 = array<f32, 20>();
    let var_0 = 1i;
    let var_1 = global0[_wgslsmith_index_u32(16327u, 20u)];
    var var_2 = arg_1;
    return abs(min(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(29153u, u_input.c.x, 4294967295u, 43049u), vec4<u32>(4294967295u, 27870u, 1u, u_input.c.x)), firstLeadingBit(vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x))), vec4<u32>(abs(4294967295u), u_input.c.x >> (18530u % 32u), 1u, _wgslsmith_div_u32(1u, 31085u))), ~(~vec4<u32>(u_input.c.x, 42423u, 4294967295u, 29599u))));
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) ^ ~0u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.c.x, 4294967295u), u_input.c.x, ~39724u)), max(48534u, ~(u_input.c.x & u_input.c.x)), u_input.c.x >> (4294967295u % 32u)), u_input.c.x), 24u)];
    let var_1 = _wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(countOneBits(~vec4<u32>(24111u, 101707u, u_input.c.x, var_0.e)), func_3(arg_0, ~vec2<i32>(0i, -2147483647i))), vec4<u32>(~3129u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.b.x, u_input.c.x, u_input.c.x), vec4<u32>(4294967295u, 0u, 0u, var_0.e)), 1u), 1u, ~26504u), 0u, u_input.c.x));
    global0 = array<f32, 20>();
    var var_2 = Struct_1(arg_0.a, !select(!arg_0.b, arg_0.b, !(!arg_0.b)));
    global0 = array<f32, 20>();
    return 18649u;
}

fn func_1() -> bool {
    let var_0 = vec3<bool>(((u_input.c.x | u_input.c.x) & func_2(Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 20u)], global0[_wgslsmith_index_u32(19003u, 20u)], 193f), vec4<bool>(true, global2[_wgslsmith_index_u32(7313u, 26u)], global2[_wgslsmith_index_u32(57577u, 26u)], global4.x)))) < ~1u, !(u_input.c.x != _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.c.x))), true);
    let var_1 = any(vec3<bool>(var_0.x, (u_input.a.x & 1i) > max(_wgslsmith_mult_i32(1265i, 16427i), select(u_input.b, -1i, global4.x)), global4.x));
    global1 = array<Struct_3, 24>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(43226u, 20u)], 1556f, global0[_wgslsmith_index_u32(1u, 20u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1053f, global0[_wgslsmith_index_u32(39576u, 20u)], global0[_wgslsmith_index_u32(u_input.c.x, 20u)])))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-271f, global0[_wgslsmith_index_u32(43675u, 20u)], global0[_wgslsmith_index_u32(u_input.c.x, 20u)]), vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 20u)], global0[_wgslsmith_index_u32(u_input.c.x, 20u)], global0[_wgslsmith_index_u32(u_input.c.x, 20u)]))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0[_wgslsmith_index_u32(7751u, 20u)], 635f, 509f))), !global2[_wgslsmith_index_u32(1u, 26u)])) * vec3<f32>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 20u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 20u)] * global0[_wgslsmith_index_u32(4294967295u, 20u)]), _wgslsmith_f_op_f32(-1709f - global0[_wgslsmith_index_u32(u_input.c.x, 20u)]))), select(!(!vec3<bool>(var_1, global4.x, var_1)), var_0, true))), select(!vec4<bool>(all(vec2<bool>(false, false)), var_1, true, var_0.x), select(select(vec4<bool>(false, global4.x, false, global4.x), select(vec4<bool>(true, true, false, global4.x), vec4<bool>(var_1, var_1, var_1, true), var_1), !vec4<bool>(true, global4.x, var_1, var_1)), select(vec4<bool>(global4.x, false, false, true), select(vec4<bool>(global2[_wgslsmith_index_u32(38037u, 26u)], var_0.x, var_1, true), vec4<bool>(true, global4.x, true, var_1), false), select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 26u)], var_0.x, var_1), vec4<bool>(false, false, global2[_wgslsmith_index_u32(15203u, 26u)], var_0.x), vec4<bool>(false, global4.x, true, false))), !vec4<bool>(false, var_0.x, false, true)), select(select(!vec4<bool>(var_0.x, var_0.x, true, global4.x), select(vec4<bool>(var_0.x, false, true, global4.x), vec4<bool>(var_0.x, var_0.x, true, var_1), vec4<bool>(var_1, true, true, false)), true), !select(vec4<bool>(true, true, var_0.x, false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 26u)], global2[_wgslsmith_index_u32(12217u, 26u)], true, global2[_wgslsmith_index_u32(19431u, 26u)]), vec4<bool>(true, true, var_1, true)), vec4<bool>(var_1, false || var_0.x, true, true))));
    var var_3 = ~_wgslsmith_add_vec3_u32(firstLeadingBit(countOneBits(~vec3<u32>(55249u, u_input.c.x, u_input.c.x))), select(vec3<u32>(~u_input.c.x, _wgslsmith_clamp_u32(1u, 0u, 15517u), u_input.c.x >> (53976u % 32u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), any(select(vec2<bool>(false, var_1), var_2.b.xx, var_0.zx))));
    return 20978u != var_3.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> vec3<u32> {
    let var_0 = u_input.a;
    let var_1 = -845f;
    var var_2 = ~_wgslsmith_clamp_u32(1u, func_2(Struct_1(arg_0.a, arg_1)), select(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, 42213u, u_input.c.x), vec4<u32>(u_input.c.x, 0u, 100070u, 26507u)), _wgslsmith_mult_u32(93650u, u_input.c.x), !arg_1.x)) & u_input.c.x;
    var var_3 = select(vec3<bool>(arg_0.b.x, true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), ~(~vec4<u32>(1u, u_input.c.x, 66866u, u_input.c.x))), 26u)]), select(!(!select(vec3<bool>(global4.x, global4.x, false), arg_1.wzy, vec3<bool>(true, global2[_wgslsmith_index_u32(53927u, 26u)], false))), !select(select(arg_0.b.xyx, arg_0.b.zzw, arg_1.zww), !vec3<bool>(arg_1.x, arg_1.x, global2[_wgslsmith_index_u32(u_input.c.x, 26u)]), vec3<bool>(global2[_wgslsmith_index_u32(1u, 26u)], false, arg_0.b.x)), any(!vec2<bool>(false, global4.x))), select(!select(vec3<bool>(false, true, arg_0.b.x), !arg_0.b.wxx, all(vec2<bool>(arg_1.x, false))), !vec3<bool>(arg_0.b.x, true, !arg_0.b.x), vec3<bool>(global2[_wgslsmith_index_u32((u_input.c.x << (16393u % 32u)) & ~u_input.c.x, 26u)], true, !arg_0.b.x)));
    var_2 = _wgslsmith_div_u32(~107344u, _wgslsmith_dot_vec4_u32(max(~vec4<u32>(1u, 1u, 1u, 1u), countOneBits(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)) & vec4<u32>(u_input.c.x, u_input.c.x, 31130u, 1u)), vec4<u32>(~u_input.c.x, ~4294967295u, ~min(u_input.c.x, 4294967295u), u_input.c.x)));
    return ~(vec3<u32>(u_input.c.x, ~u_input.c.x, u_input.c.x) & _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(1u, 4294967295u, 1u)), countOneBits(vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u) >> (vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x) % vec3<u32>(32u))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(0u, u_input.c.x, 19907u), vec3<u32>(u_input.c.x, u_input.c.x, 69737u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~countOneBits(u_input.c.x), 1u), 17u)];
    var_0 = (vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, var_0.x, 8869i), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, 92471u), 17u)])) ^ global3[_wgslsmith_index_u32(u_input.c.x, 17u)];
    let var_1 = select(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, global0[_wgslsmith_index_u32(0u, 20u)]))), vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, 13381u), 26u)], !global2[_wgslsmith_index_u32(8087u, 26u)], global4.x && global4.x, true)), vec4<bool>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(30020u, 20u)] - global0[_wgslsmith_index_u32(u_input.c.x, 20u)]) == _wgslsmith_f_op_f32(step(483f, global0[_wgslsmith_index_u32(u_input.c.x, 20u)])), global2[_wgslsmith_index_u32(firstTrailingBit(u_input.c.x), 26u)], !any(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.c.x, 26u)], true)), func_1())), ~vec3<u32>(87770u << (u_input.c.x % 32u), 39235u, ~(~4294967295u)), true);
    let var_2 = Struct_1(vec3<f32>(-1921f, _wgslsmith_f_op_f32(f32(-1f) * -2159f), _wgslsmith_f_op_f32(f32(-1f) * -364f)), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true | global2[_wgslsmith_index_u32(var_1.x, 26u)], !global4.x, !global2[_wgslsmith_index_u32(51763u, 26u)], all(vec4<bool>(global4.x, true, global4.x, false)))));
    var var_3 = var_2.b.zzz;
    let var_4 = vec2<bool>(var_3.x, (i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(10539i, 9177i), var_0.xx)) <= var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, _wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, var_2.a.x), _wgslsmith_f_op_f32(-var_2.a.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(~var_1.x, 20u)], 1154f, global0[_wgslsmith_index_u32(u_input.c.x, 20u)], -1244f) * vec4<f32>(_wgslsmith_f_op_f32(var_2.a.x - 2139f), _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(var_2.a.x + -652f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 20u)]))))), vec4<u32>(u_input.c.x, ~(_wgslsmith_div_u32(14882u, u_input.c.x) ^ 0u), _wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x) ^ vec4<u32>(0u, var_1.x, 0u, 4294967295u)), vec4<u32>(u_input.c.x, 22021u, _wgslsmith_sub_u32(var_1.x, 1u), u_input.c.x | u_input.c.x)), 4294967295u));
}

