struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: bool,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13> = array<f32, 13>(-172f, 831f, 712f, -249f, -238f, 731f, 869f, -1120f, 1434f, 2056f, -500f, -872f, 1031f);

var<private> global1: Struct_3;

var<private> global2: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(-21021i, i32(-2147483648)), vec2<i32>(2147483647i, -14304i), vec2<i32>(43046i, 3723i), vec2<i32>(47036i, 2446i), vec2<i32>(0i, 0i), vec2<i32>(35586i, 1i), vec2<i32>(-95363i, 2147483647i), vec2<i32>(-2870i, -1i), vec2<i32>(15502i, -5373i), vec2<i32>(-3055i, 2023i), vec2<i32>(i32(-2147483648), -2080i), vec2<i32>(-53716i, -51806i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2) -> u32 {
    global2 = array<vec2<i32>, 12>();
    var var_0 = -438f;
    global1 = Struct_3(~(~1u), global1.b, Struct_2(vec3<u32>(arg_1.c, ~_wgslsmith_mod_u32(global1.b.c, u_input.c.x), 1u << (arg_1.c % 32u)), -2147483647i, abs(91263u), -global1.b.d, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(181f - global0[_wgslsmith_index_u32(global1.c.a.x, 13u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~global1.a, 13u)]), _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.e.x)));
    global2 = array<vec2<i32>, 12>();
    var var_1 = _wgslsmith_f_op_f32(-951f * global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global1.c.c, 4294967295u, arg_1.a.x, 0u), vec4<u32>(22417u, 116128u, 75395u, u_input.d) ^ vec4<u32>(global1.c.a.x, global1.c.a.x, 24407u, global1.a)), select(max(vec4<u32>(global1.a, global1.b.a.x, 5699u, 0u), vec4<u32>(5790u, arg_1.c, 25584u, 12664u)), ~vec4<u32>(4294967295u, u_input.d, u_input.d, global1.a), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false))) << (_wgslsmith_clamp_u32(4294967295u, ~16470u, 40098u) % 32u), 13u)]);
    return 14078u;
}

fn func_3() -> vec3<bool> {
    var var_0 = ~(abs(~vec2<u32>(global1.c.c, u_input.d)) << (global1.c.a.zz % vec2<u32>(32u)));
    global0 = array<f32, 13>();
    var var_1 = vec3<u32>(0u | var_0.x, global1.c.c, firstTrailingBit(reverseBits(_wgslsmith_clamp_u32(82066u, _wgslsmith_add_u32(global1.b.c, global1.a), 74994u))));
    var var_2 = _wgslsmith_f_op_vec2_f32(min(global1.b.e.xy, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global1.b.e.wx), _wgslsmith_f_op_vec2_f32(-global1.b.e.zz)))), global1.c.e.yz)));
    var_1 = global1.b.a;
    return select(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), vec3<bool>(true, true, 1u < _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.c.x, var_0.x), var_1.x, var_0.x & u_input.a)), !vec3<bool>(false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), true));
}

fn func_1() -> Struct_4 {
    let var_0 = select(!select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), !(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false))), select(vec3<bool>(func_2(vec2<bool>(true, false), Struct_2(global1.c.a, -73250i, u_input.a, -1i, global1.c.e)) <= ~u_input.d, true, _wgslsmith_f_op_f32(1000f + 670f) < _wgslsmith_f_op_f32(-global1.b.e.x)), func_3(), true));
    global1 = Struct_3(~(_wgslsmith_mult_u32(11273u, _wgslsmith_add_u32(1u, u_input.d)) >> (~(global1.b.a.x | global1.c.c) % 32u)), Struct_2(vec3<u32>(global1.c.a.x, select(4294967295u, _wgslsmith_dot_vec2_u32(u_input.c, global1.c.a.zy), false), _wgslsmith_clamp_u32(63245u, 0u, 4294967295u) >> (global1.a % 32u)), -1i, 1u, -(-26851i | global1.b.d) & ~(i32(-1i) * -12177i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 13u)], -626f, -278f, global0[_wgslsmith_index_u32(1u, 13u)])))), Struct_2(~_wgslsmith_mult_vec3_u32(global1.c.a, global1.b.a), abs(max(-6031i, _wgslsmith_add_i32(-54214i, 0i))), u_input.d, ~1i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.c.x, 13u)]))), _wgslsmith_div_f32(1094f, -442f), -762f, _wgslsmith_f_op_f32(step(global1.b.e.x, global0[_wgslsmith_index_u32(global1.b.c, 13u)])))));
    var var_1 = global1.b;
    var_1 = Struct_2(var_1.a, u_input.b, global1.c.c, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.b, 1i, var_1.b, var_1.b), vec4<i32>(var_1.b, u_input.b, global1.b.b, -2147483647i)), abs(vec4<i32>(-32914i, 14739i, 10746i, 60865i))), _wgslsmith_add_i32(1i, _wgslsmith_add_i32(1i, var_1.b)), _wgslsmith_div_i32(-1i, -2147483647i | var_1.d)), ~select(vec3<i32>(-40416i, global1.c.d, 18686i), vec3<i32>(6358i, u_input.b, global1.c.d), var_0.x)), global1.b.e);
    let var_2 = ~_wgslsmith_add_vec2_u32(vec2<u32>(2521u, ~min(var_1.c, 0u)), ~(var_1.a.yy ^ _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.c, u_input.d), global1.c.a.xz)));
    return Struct_4(global1.c, var_1.e, var_0.x, Struct_3(~_wgslsmith_sub_u32(global1.c.c << (var_1.a.x % 32u), ~global1.a), Struct_2(min(~global1.b.a, var_1.a), _wgslsmith_sub_i32(-17656i, global1.c.d), countOneBits(1u), ~global1.b.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.x, global1.c.e.x, global0[_wgslsmith_index_u32(1u, 13u)], 997f)), _wgslsmith_f_op_vec4_f32(global1.c.e * vec4<f32>(global0[_wgslsmith_index_u32(56355u, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)], -825f, global1.b.e.x)))), global1.c), ~4965u & _wgslsmith_add_u32(~21810u, var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstLeadingBit(vec2<u32>(_wgslsmith_add_u32(~global1.b.a.x, 1u), 1u << (u_input.a % 32u)));
    var var_1 = func_1();
    var var_2 = global1.b.e.x;
    var var_3 = vec2<bool>(true, false);
    var var_4 = ~41787u;
    let var_5 = _wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec2_i32(-select(vec2<i32>(var_1.a.b, -1i), global2[_wgslsmith_index_u32(abs(var_0.x), 12u)], func_3().zz), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(31708u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 50549u, 0u), vec3<u32>(global1.b.c, 1u, global1.c.a.x))), _wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(u_input.d, global1.a)) ^ vec2<u32>(var_0.x, var_1.a.a.x)), 12u)]));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.a, 1u), min(vec4<u32>(var_1.a.c, 1u, 54056u, 4294967295u), vec4<u32>(u_input.d, u_input.c.x, var_0.x, 1u)))), 1u);
}

