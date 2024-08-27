struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

var<private> global1: Struct_3;

var<private> global2: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(4294967295u, 22019u), vec2<u32>(4294967295u, 52784u), vec2<u32>(37514u, 4294967295u), vec2<u32>(11248u, 13914u), vec2<u32>(57742u, 0u), vec2<u32>(7842u, 40154u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 32965u), vec2<u32>(14877u, 1u), vec2<u32>(28909u, 4294967295u), vec2<u32>(52328u, 15616u), vec2<u32>(18799u, 97816u), vec2<u32>(16650u, 52246u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 27845u), vec2<u32>(14607u, 35654u), vec2<u32>(19959u, 1u), vec2<u32>(70897u, 51546u), vec2<u32>(38975u, 0u));

var<private> global3: array<vec4<i32>, 5>;

var<private> global4: f32;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> i32 {
    global2 = array<vec2<u32>, 21>();
    let var_0 = ~min(abs(firstLeadingBit(min(arg_1, arg_1))), arg_1);
    let var_1 = ~firstTrailingBit(abs(countOneBits(u_input.d.x >> (u_input.b.x % 32u))));
    global4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) - global1.b.x), -1000f))), arg_0);
    global4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * arg_0), -657f)), arg_0, all(vec2<bool>(false, false))));
    return var_0.x;
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: vec3<i32>, arg_3: vec3<i32>) -> Struct_2 {
    global3 = array<vec4<i32>, 5>();
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-2147483647i, arg_3.x) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, 19854i, 3844i), vec3<i32>(43043i, arg_2.x, 1i)), -2147483647i, _wgslsmith_mult_i32(firstLeadingBit(1i), -1i)), _wgslsmith_div_vec3_i32(max(vec3<i32>(-19692i, 22701i, arg_2.x), vec3<i32>(12193i, u_input.c, arg_2.x)), arg_2)), vec3<i32>(arg_3.x, 1i, u_input.c));
    global4 = global1.b.x;
    let var_1 = global1.a;
    global4 = _wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(f32(-1f) * -619f));
    return Struct_2(global1.a.a);
}

fn func_1() -> u32 {
    global0 = array<bool, 6>();
    let var_0 = Struct_3(func_3(vec3<i32>(func_2(_wgslsmith_f_op_f32(sign(global1.b.x)), ~vec2<i32>(u_input.c, 11103i)), u_input.c, -44904i), all(select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 6u)], false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], false, global0[_wgslsmith_index_u32(104708u, 6u)]), vec3<bool>(global0[_wgslsmith_index_u32(15431u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(u_input.a.x, 6u)])), !vec3<bool>(false, false, global1.a.a.x), global0[_wgslsmith_index_u32(firstLeadingBit(24716u), 6u)])), vec3<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(0i, u_input.c), _wgslsmith_clamp_vec2_i32(vec2<i32>(25427i, -31997i), vec2<i32>(-16007i, u_input.c), vec2<i32>(u_input.c, u_input.c))), ~(u_input.c | 1i)), vec3<i32>(min(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, 0i), vec3<i32>(u_input.c, 2147483647i, 34569i))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.c, -33770i), _wgslsmith_add_i32(u_input.c, 68425i)), -u_input.c)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, global1.b.x, -333f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1191f, 585f, global1.b.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, global1.b.x, global1.b.x) + _wgslsmith_f_op_vec3_f32(exp2(global1.b)))))), vec3<u32>(~u_input.b.x, ~(32877u ^ ~u_input.b.x), u_input.b.x));
    var var_1 = Struct_4(Struct_1(global1.c, ~select(u_input.b.x, global1.c.x, true), vec4<i32>(-428i, u_input.c, -1i, _wgslsmith_mult_i32(-1i, u_input.c) & u_input.c), abs(_wgslsmith_clamp_u32(0u, 1u, 1u) >> (73651u % 32u))), 34961u);
    let var_2 = Struct_3(Struct_2(var_0.a.a), var_0.b, ~select(vec3<u32>(global1.c.x, ~1u, countOneBits(4294967295u)), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(4294967295u, u_input.b.x, 144081u)), vec3<u32>(1u, var_0.c.x, var_1.a.b)), vec3<bool>(select(global0[_wgslsmith_index_u32(global1.c.x, 6u)], global0[_wgslsmith_index_u32(1u, 6u)], true), false, all(global1.a.a))));
    global2 = array<vec2<u32>, 21>();
    return _wgslsmith_div_u32(~(~select(4294967295u, abs(var_1.b), u_input.c < -12618i)), (_wgslsmith_dot_vec2_u32(~var_2.c.zz, ~global1.c.xx) >> (_wgslsmith_mod_u32(u_input.d.x, select(var_1.b, 24525u, false)) % 32u)) | global1.c.x);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> i32 {
    global4 = global1.b.x;
    global3 = array<vec4<i32>, 5>();
    var var_0 = global1.c.x;
    let var_1 = Struct_1(_wgslsmith_sub_vec3_u32(firstTrailingBit(global1.c) ^ countOneBits(vec3<u32>(70558u, arg_0, 51125u)), firstLeadingBit(vec3<u32>(4294967295u, arg_2.a.x, 22041u))) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(reverseBits(33036u), u_input.a.x | 23530u, arg_2.b), u_input.d.xyw), _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(global2[_wgslsmith_index_u32(33687u ^ arg_0, 21u)], countOneBits(global1.c.yz)), ~(arg_2.a.xz >> (reverseBits(vec2<u32>(1u, u_input.d.x)) % vec2<u32>(32u)))), _wgslsmith_clamp_vec4_i32(min(~vec4<i32>(2147483647i, -13160i, u_input.c, 22241i) ^ _wgslsmith_mult_vec4_i32(arg_2.c, vec4<i32>(arg_2.c.x, u_input.c, arg_1.c.x, arg_2.c.x)), ~vec4<i32>(arg_2.c.x, -1i, arg_1.c.x, -18995i)), vec4<i32>(_wgslsmith_dot_vec3_i32(min(arg_2.c.wxy, vec3<i32>(arg_2.c.x, -7826i, -1i)), vec3<i32>(arg_1.c.x, arg_1.c.x, 48028i)), _wgslsmith_clamp_i32(-2147483647i >> (arg_3.x % 32u), u_input.c, arg_2.c.x), ~21251i, arg_1.c.x), -vec4<i32>(u_input.c, -16333i, -19633i, firstLeadingBit(u_input.c))), select(1u, _wgslsmith_div_u32(abs(arg_1.a.x), max(arg_1.a.x, arg_2.a.x)), all(vec3<bool>(global0[_wgslsmith_index_u32(16489u, 6u)], false, true))) & ~4294967295u);
    let var_2 = arg_1.d & _wgslsmith_mult_u32(countOneBits(0u), 20099u);
    return i32(-1i) * -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(~u_input.c, func_4(_wgslsmith_mod_u32(8787u, 1u), Struct_1(u_input.d.yxw, 1u, global3[_wgslsmith_index_u32(17242u, 5u)], select(~4294967295u, countOneBits(global1.c.x), global0[_wgslsmith_index_u32(1u, 6u)])), Struct_1(u_input.d.xxw, ~(~global1.c.x), reverseBits(vec4<i32>(14978i, u_input.c, -1i, u_input.c)), func_1() << (~64368u % 32u)), vec4<u32>(_wgslsmith_sub_u32(global1.c.x, 1u), abs(0u >> (u_input.d.x % 32u)), 0u, 2276u)), -27771i);
    let var_1 = Struct_2(select(global1.a.a, global1.a.a, true));
    global1 = Struct_3(global1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b * global1.b) - vec3<f32>(870f, global1.b.x, _wgslsmith_f_op_f32(-454f * global1.b.x))), vec3<u32>(~(u_input.a.x >> (4294967295u % 32u)) & 4294967295u, ~1u >> (global1.c.x % 32u), ~u_input.b.x));
    var var_2 = Struct_4(Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(~42144u, ~u_input.a.x, abs(1u)), vec3<u32>(countOneBits(4294967295u), 1u, _wgslsmith_sub_u32(34951u, 1u))), u_input.a.x << (global1.c.x % 32u), global3[_wgslsmith_index_u32(global1.c.x, 5u)], 59176u ^ global1.c.x), ~(~u_input.a.x));
    let var_3 = Struct_2(vec2<bool>(u_input.d.x < ~var_2.a.a.x, true));
    let var_4 = Struct_1(min(var_2.a.a, _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(global1.c.x, var_2.a.a.x), u_input.b.x, global1.c.x), global1.c << (u_input.d.yxw % vec3<u32>(32u)))), 1u, _wgslsmith_div_vec4_i32(vec4<i32>(~var_2.a.c.x, 2147483647i | ~var_0.x, max(abs(2147483647i), 20930i), 1i), min(~firstTrailingBit(vec4<i32>(var_2.a.c.x, var_2.a.c.x, 50266i, u_input.c)), ~vec4<i32>(1i, 11123i, 1i, -1i))), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2897f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(592f)), global1.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1861f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-857f, 1801f, false))))), ~(-u_input.c) <= ~(~var_4.c.x))));
}

