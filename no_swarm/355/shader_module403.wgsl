struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22>;

var<private> global1: array<i32, 6> = array<i32, 6>(1i, 2147483647i, -1i, 2147483647i, 28428i, 10587i);

var<private> global2: vec2<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec3<f32>) -> u32 {
    global1 = array<i32, 6>();
    let var_0 = ~(~arg_1.c.wwy);
    var var_1 = vec4<bool>(all(arg_1.a.yy), global0[_wgslsmith_index_u32(arg_1.c.x, 22u)], global0[_wgslsmith_index_u32(26978u, 22u)], !(!global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 0u, arg_1.c.x), var_0), 22u)]));
    var_1 = vec4<bool>(all(!vec3<bool>(true, true, var_1.x)), false, any(vec4<bool>(all(var_1.zx), all(arg_1.a.yzz), all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 22u)], true)), true)), (0u >> (countOneBits(global2.x) % 32u)) <= ~86982u);
    let var_2 = max(abs(select(~(-vec4<i32>(u_input.b, u_input.b, global1[_wgslsmith_index_u32(0u, 6u)], 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, global1[_wgslsmith_index_u32(4294967295u, 6u)], u_input.b, -24346i), firstTrailingBit(vec4<i32>(56827i, u_input.c.x, 27108i, -297i))), select(arg_1.a, !vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 22u)], false, arg_1.a.x, global0[_wgslsmith_index_u32(5087u, 22u)]), !global0[_wgslsmith_index_u32(global2.x, 22u)]))), _wgslsmith_add_vec4_i32(~vec4<i32>(2147483647i, 15022i, u_input.b, -1i) << (max(arg_1.c, vec4<u32>(37047u, 27898u, arg_1.d.x, arg_1.c.x)) % vec4<u32>(32u)), firstLeadingBit(select(vec4<i32>(u_input.c.x, global1[_wgslsmith_index_u32(var_0.x, 6u)], 0i, global1[_wgslsmith_index_u32(2178u, 6u)]), vec4<i32>(60833i, global1[_wgslsmith_index_u32(arg_0, 6u)], global1[_wgslsmith_index_u32(arg_0, 6u)], global1[_wgslsmith_index_u32(global2.x, 6u)]), arg_1.a))) >> (reverseBits(arg_1.c) % vec4<u32>(32u)));
    return ~select(47960u, 0u, true);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    global0 = array<bool, 22>();
    let var_0 = _wgslsmith_div_vec3_i32(-firstTrailingBit(-_wgslsmith_div_vec3_i32(arg_1.d.zyz, vec3<i32>(arg_1.a, arg_0.x, arg_1.d.x))), reverseBits(u_input.c));
    global2 = arg_2.c.zx;
    let var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_div_i32(38935i, arg_0.x), 5149i, var_0.x), ~vec3<i32>(-(arg_2.b.x & -1i), -_wgslsmith_add_i32(arg_2.a, u_input.c.x), arg_1.b.x));
    global1 = array<i32, 6>();
    return Struct_1(-1i, (vec2<i32>(-59232i, _wgslsmith_mod_i32(arg_2.b.x, -24390i)) >> (vec2<u32>(~8310u, ~0u) % vec2<u32>(32u))) << (arg_2.c.zz % vec2<u32>(32u)), vec3<u32>(63629u, ~(~arg_3.x), func_3(arg_2.c.x, Struct_2(vec4<bool>(true, global0[_wgslsmith_index_u32(global2.x, 22u)], false, false), vec3<f32>(-1899f, -173f, 474f), countOneBits(vec4<u32>(17696u, arg_3.x, 6747u, 0u)), max(vec2<u32>(global2.x, arg_1.c.x), arg_3.yx)), vec3<f32>(_wgslsmith_f_op_f32(-497f * -1312f), _wgslsmith_f_op_f32(141f + 349f), -477f))), arg_2.d);
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec4<bool> {
    global0 = array<bool, 22>();
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1452f, 698f) * vec2<f32>(2167f, 1650f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(140f, 700f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(192f, 213f) + vec2<f32>(486f, -1013f))))), !select(select(vec2<bool>(false, false), vec2<bool>(arg_1, true), false), select(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.c.x, 22u)], global0[_wgslsmith_index_u32(1u, 22u)]), vec2<bool>(global0[_wgslsmith_index_u32(global2.x, 22u)], global0[_wgslsmith_index_u32(1u, 22u)]), true), true))));
    global1 = array<i32, 6>();
    global2 = _wgslsmith_mod_vec2_u32(~(arg_0.c.zx & ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, arg_0.c.x), vec2<u32>(arg_0.c.x, 1086u))), arg_0.c.zz);
    global1 = array<i32, 6>();
    return select(vec4<bool>(global0[_wgslsmith_index_u32(countOneBits(~(~1u)), 22u)], true, true, !(true | (353f > var_0.x))), vec4<bool>(any(select(select(vec4<bool>(false, false, arg_1, false), vec4<bool>(false, arg_1, true, arg_1), false), vec4<bool>(global0[_wgslsmith_index_u32(global2.x, 22u)], true, global0[_wgslsmith_index_u32(6105u, 22u)], false), select(vec4<bool>(arg_1, false, global0[_wgslsmith_index_u32(4294967295u, 22u)], arg_1), vec4<bool>(arg_1, global0[_wgslsmith_index_u32(arg_0.c.x, 22u)], false, arg_1), vec4<bool>(true, false, true, true)))), global0[_wgslsmith_index_u32(~reverseBits(0u), 22u)], false, true), select(!select(!vec4<bool>(arg_1, false, false, true), !vec4<bool>(arg_1, arg_1, true, arg_1), -781f < var_0.x), !vec4<bool>(false, global1[_wgslsmith_index_u32(100674u, 6u)] == 0i, true, false), vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(arg_0.c.x, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)]), true)), false, true & global0[_wgslsmith_index_u32(77077u << (arg_0.c.x % 32u), 22u)], arg_1)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: u32, arg_3: vec4<u32>) -> vec2<i32> {
    var var_0 = Struct_2(arg_1.b.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), 467f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(408f))))), vec4<u32>(8003u, arg_3.x, 1u, arg_1.b.d.x), min(vec2<u32>(1u, 23706u & ~arg_2), max(~(~vec2<u32>(arg_1.b.c.x, 4294967295u)), ~max(arg_1.b.c.wz, arg_1.b.d))));
    global1 = array<i32, 6>();
    var var_1 = ~arg_2;
    global0 = array<bool, 22>();
    var_0 = Struct_2(!select(func_4(func_2(u_input.c, Struct_1(22683i, arg_1.d, vec3<u32>(arg_2, arg_1.b.c.x, 0u), vec4<i32>(global1[_wgslsmith_index_u32(33323u, 6u)], arg_1.d.x, arg_1.d.x, u_input.b)), Struct_1(global1[_wgslsmith_index_u32(arg_3.x, 6u)], arg_1.d, vec3<u32>(arg_2, 39370u, 59896u), vec4<i32>(38886i, 0i, arg_1.d.x, u_input.c.x)), var_0.c), all(arg_1.b.a.yz)), func_4(Struct_1(global1[_wgslsmith_index_u32(arg_3.x, 6u)], vec2<i32>(global1[_wgslsmith_index_u32(74649u, 6u)], u_input.b), vec3<u32>(arg_1.b.c.x, 4294967295u, 3944u), vec4<i32>(8402i, global1[_wgslsmith_index_u32(0u, 6u)], u_input.c.x, -1i)), all(vec4<bool>(false, true, arg_1.a, false))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(8799u, arg_2), vec2<u32>(arg_1.b.c.x, arg_1.b.c.x)), 6u)] > -22065i), _wgslsmith_f_op_vec3_f32(var_0.b * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.b.b), vec3<f32>(1000f, -211f, 163f))))), var_0.c << (_wgslsmith_add_vec4_u32(arg_3, vec4<u32>(arg_3.x ^ arg_3.x, countOneBits(arg_2), 11655u, global2.x)) % vec4<u32>(32u)), ~arg_1.b.d);
    return vec2<i32>(9641i, 1039i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 22>();
    let var_0 = ~(~func_1(vec2<f32>(1f, 1f), Struct_3(any(vec4<bool>(global0[_wgslsmith_index_u32(17746u, 22u)], global0[_wgslsmith_index_u32(global2.x, 22u)], global0[_wgslsmith_index_u32(25940u, 22u)], global0[_wgslsmith_index_u32(global2.x, 22u)])), Struct_2(vec4<bool>(true, global0[_wgslsmith_index_u32(61406u, 22u)], global0[_wgslsmith_index_u32(global2.x, 22u)], true), vec3<f32>(226f, 177f, 907f), vec4<u32>(125431u, global2.x, global2.x, global2.x), vec2<u32>(global2.x, global2.x)), !vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(global2.x, 22u)]), vec2<i32>(global1[_wgslsmith_index_u32(global2.x, 6u)], 28120i)), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, global2.x, 0u), vec3<u32>(global2.x, global2.x, 4294967295u))), ~vec4<u32>(27001u, 0u, 1u, 0u)));
    var var_1 = global2.x;
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(abs(global2.x), 22u)], Struct_2(vec4<bool>(global0[_wgslsmith_index_u32(func_2(u_input.c, Struct_1(-2147483647i, vec2<i32>(0i, 2147483647i), vec3<u32>(global2.x, 1510u, global2.x), vec4<i32>(u_input.a, -32600i, var_0.x, 2147483647i)), Struct_1(17443i, vec2<i32>(var_0.x, 53168i), vec3<u32>(global2.x, global2.x, 4294967295u), vec4<i32>(-30217i, -27765i, global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(13153u, 6u)])), vec4<u32>(65067u, 4294967295u, 833u, global2.x)).c.x >> ((global2.x ^ 55690u) % 32u), 22u)], !(global0[_wgslsmith_index_u32(global2.x, 22u)] & false), global0[_wgslsmith_index_u32(min(4294967295u, global2.x), 22u)] && false, 1u >= _wgslsmith_div_u32(global2.x, global2.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2194f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1056f)) * _wgslsmith_f_op_f32(min(-1596f, 1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1026f, -600f), _wgslsmith_f_op_f32(step(1000f, -554f))))), vec4<u32>(~1u, _wgslsmith_div_u32(firstLeadingBit(global2.x), 80451u), _wgslsmith_add_u32(global2.x, global2.x ^ global2.x), _wgslsmith_dot_vec4_u32(max(vec4<u32>(global2.x, global2.x, 4294967295u, 4294967295u), vec4<u32>(global2.x, 28577u, 4294967295u, global2.x)), vec4<u32>(1u, global2.x, global2.x, global2.x) >> (vec4<u32>(15340u, global2.x, global2.x, 28567u) % vec4<u32>(32u)))), vec2<u32>(_wgslsmith_clamp_u32(global2.x, 6405u, _wgslsmith_div_u32(global2.x, global2.x)), 1u)), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(5105u, 22264u), 22u)], true & !global0[_wgslsmith_index_u32(~1u, 22u)], global0[_wgslsmith_index_u32(~(~(~global2.x)), 22u)], true), _wgslsmith_mod_vec2_i32(vec2<i32>(abs(~var_0.x), abs(global1[_wgslsmith_index_u32(36921u, 6u)] & -53502i)), var_0));
    var var_3 = min(select(var_2.d, vec2<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.c.x), func_1(var_2.b.b.xz, Struct_3(true, Struct_2(var_2.c, var_2.b.b, var_2.b.c, vec2<u32>(var_2.b.d.x, global2.x)), var_2.b.a, u_input.c.zy), 1u, var_2.b.c).x), true) ^ var_0, firstLeadingBit(firstTrailingBit(~var_2.d) ^ ~(~u_input.c.yz)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d << (_wgslsmith_mult_vec2_u32(var_2.b.c.xy, _wgslsmith_add_vec2_u32(var_2.b.c.yw, var_2.b.c.wz) | vec2<u32>(global2.x, global2.x)) % vec2<u32>(32u)), global2.x, global2.x, select(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.b.d.x, global2.x), var_2.b.d)), vec2<u32>(_wgslsmith_mod_u32(var_2.b.d.x, global2.x), 0u >> (global2.x % 32u)), false) & countOneBits(vec2<u32>(global2.x, global2.x) ^ var_2.b.c.wy), ~(~(-vec4<i32>(-40995i, -2147483647i, var_2.d.x, 0i))));
}

