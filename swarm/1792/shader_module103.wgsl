struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(5874u, 4294967295u, 63059u, 4294967295u, 4294967295u, 6870u, 3399u, 31390u, 79794u, 4294967295u, 0u);

var<private> global1: array<f32, 6>;

var<private> global2: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec4<u32>(1u, 0u, 0u, 73864u), Struct_1(vec2<u32>(0u, 15068u), vec2<f32>(291f, -1152f), vec4<i32>(i32(-2147483648), 2147483647i, 1i, -51614i), vec3<u32>(49992u, 1u, 4294967295u))), Struct_2(vec4<u32>(7967u, 27289u, 1u, 4294967295u), Struct_1(vec2<u32>(10902u, 4294967295u), vec2<f32>(-172f, -335f), vec4<i32>(i32(-2147483648), 1i, -27614i, 0i), vec3<u32>(1u, 32072u, 1u))), Struct_2(vec4<u32>(46801u, 13909u, 15764u, 34544u), Struct_1(vec2<u32>(0u, 4294967295u), vec2<f32>(1388f, 531f), vec4<i32>(27843i, -12959i, 1i, -2071i), vec3<u32>(0u, 1u, 0u))), Struct_2(vec4<u32>(0u, 6648u, 0u, 4294967295u), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<f32>(-1000f, 2003f), vec4<i32>(-1i, -5475i, -9673i, -1i), vec3<u32>(4294967295u, 2113u, 30884u))), Struct_2(vec4<u32>(18287u, 23677u, 0u, 11554u), Struct_1(vec2<u32>(4294967295u, 0u), vec2<f32>(-1017f, 623f), vec4<i32>(26594i, -59871i, i32(-2147483648), 8998i), vec3<u32>(35061u, 0u, 4294967295u))), Struct_2(vec4<u32>(0u, 49244u, 1u, 0u), Struct_1(vec2<u32>(4294967295u, 1u), vec2<f32>(-695f, 2035f), vec4<i32>(-1651i, 44090i, -89526i, -1i), vec3<u32>(943u, 1u, 4294967295u))), Struct_2(vec4<u32>(4294967295u, 1u, 60801u, 18829u), Struct_1(vec2<u32>(44779u, 1u), vec2<f32>(1202f, -593f), vec4<i32>(1i, 1444i, 2147483647i, 2147483647i), vec3<u32>(1u, 63920u, 1u))), Struct_2(vec4<u32>(19843u, 1u, 23164u, 1u), Struct_1(vec2<u32>(0u, 23681u), vec2<f32>(-1587f, -654f), vec4<i32>(-1i, -6720i, -12679i, i32(-2147483648)), vec3<u32>(6918u, 1u, 28031u))), Struct_2(vec4<u32>(19173u, 0u, 4294967295u, 85151u), Struct_1(vec2<u32>(8129u, 1u), vec2<f32>(1186f, 951f), vec4<i32>(-4044i, 7985i, -1081i, 0i), vec3<u32>(3818u, 26444u, 50899u))));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> f32 {
    global0 = array<u32, 11>();
    global2 = array<Struct_2, 9>();
    global2 = array<Struct_2, 9>();
    var var_0 = ~u_input.b;
    global0 = array<u32, 11>();
    return 1168f;
}

fn func_3(arg_0: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_div_u32(max(~(~reverseBits(0u)), 1u), ~(~56768u));
    var var_1 = Struct_2(~vec4<u32>(~max(u_input.a.x, u_input.e.x), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], _wgslsmith_div_u32(global0[_wgslsmith_index_u32(53586u, 11u)], u_input.d.x)), ~(u_input.a.x >> (u_input.e.x % 32u)), global0[_wgslsmith_index_u32(~u_input.d.x, 11u)]), Struct_1(u_input.d, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 6u)]), vec2<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 11u)], 6u)], global1[_wgslsmith_index_u32(1u, 6u)]))))), firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(19092i, 38413i), reverseBits(arg_0.x), u_input.b.x, arg_0.x)), ~(~vec3<u32>(34827u, u_input.e.x, u_input.e.x) << ((vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], 4294967295u, global0[_wgslsmith_index_u32(1u, 11u)]) << (vec3<u32>(3424u, u_input.d.x, u_input.d.x) % vec3<u32>(32u))) % vec3<u32>(32u)))));
    var var_2 = _wgslsmith_dot_vec4_i32(arg_0 & _wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(17138i, arg_0.x, -1i, u_input.c)), ~arg_0), var_1.b.c);
    var var_3 = vec3<u32>(~_wgslsmith_clamp_u32(22847u, _wgslsmith_sub_u32(~u_input.e.x, 1u), 1u), _wgslsmith_div_u32(4294967295u, ~1u), 35253u << (var_1.a.x % 32u));
    let var_4 = Struct_1(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~reverseBits(vec2<u32>(78306u, 69066u)), ~_wgslsmith_mult_vec2_u32(var_1.a.yz, vec2<u32>(global0[_wgslsmith_index_u32(var_3.x, 11u)], var_1.a.x))), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(30602u, 55019u) & vec2<u32>(u_input.d.x, global0[_wgslsmith_index_u32(0u, 11u)])), vec2<u32>(~0u, abs(u_input.a.x)))), _wgslsmith_f_op_vec2_f32(-var_1.b.b), var_1.b.c, select(var_1.b.d << (var_1.a.zyz % vec3<u32>(32u)), vec3<u32>(firstLeadingBit(14954u), var_3.x, firstLeadingBit(~global0[_wgslsmith_index_u32(4294967295u, 11u)])), true));
    return !(!any(vec4<bool>(true, true, true, true)));
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-2610f + _wgslsmith_f_op_f32(abs(2053f))), 1f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 6u)] * global1[_wgslsmith_index_u32(u_input.a.x, 6u)])));
    var var_1 = Struct_1(select(vec2<u32>(u_input.d.x, 4294967295u), select(~u_input.a, u_input.e, !(!vec2<bool>(arg_0, false))), !(!func_3(vec4<i32>(u_input.c, 2147483647i, u_input.b.x, u_input.c)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 1u), 6u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 6u)] + var_0.x)))), -vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, u_input.c) | u_input.c, u_input.c, _wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.b.yy), countOneBits(u_input.b.xz)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -1i), u_input.b.zy)), vec3<u32>(global0[_wgslsmith_index_u32(abs(31670u), 11u)], max(~global0[_wgslsmith_index_u32(56217u, 11u)], u_input.e.x) ^ (~0u & select(global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(48160u, 11u)], true)), 75269u));
    var var_2 = Struct_1(~(firstTrailingBit(_wgslsmith_mod_vec2_u32(var_1.a, vec2<u32>(var_1.d.x, global0[_wgslsmith_index_u32(17228u, 11u)]))) ^ (countOneBits(vec2<u32>(44749u, 18930u)) ^ abs(u_input.a))), var_1.b, vec4<i32>(~(~(-1i)) & max(reverseBits(u_input.b.x), -var_1.c.x), -1i, countOneBits(_wgslsmith_div_i32(-19580i, var_1.c.x ^ var_1.c.x)), u_input.b.x), abs(~var_1.d));
    var var_3 = reverseBits(~reverseBits(var_2.d));
    let var_4 = max(vec2<u32>(u_input.d.x, var_2.d.x), var_3.zz);
    return global2[_wgslsmith_index_u32(var_1.a.x ^ var_2.d.x, 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true);
    global2 = array<Struct_2, 9>();
    global2 = array<Struct_2, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, u_input.b.yx, vec4<u32>(min(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.d.x), 11u)], ~4294967295u) << (_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.e.x, global0[_wgslsmith_index_u32(0u, 11u)], 0u, 4294967295u), vec4<u32>(var_0.b.d.x, 1u, 20842u, var_0.a.x)), vec4<u32>(1u, 39989u, 58186u, global0[_wgslsmith_index_u32(u_input.e.x, 11u)])) % 32u), ~countOneBits(~1u), ~_wgslsmith_dot_vec2_u32(var_0.b.a, u_input.d), ~global0[_wgslsmith_index_u32(u_input.e.x ^ var_0.a.x, 11u)]), 869f);
}

