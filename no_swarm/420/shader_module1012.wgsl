struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

var<private> global1: Struct_1;

var<private> global2: vec4<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<i32> {
    var var_0 = global1.c.x;
    var var_1 = Struct_1(global1.e, ~select(vec2<u32>(1u, 38729u), global1.b, !vec2<bool>(global1.c.x, global1.c.x)) >> (~global1.e.wx % vec2<u32>(32u)), !(!vec4<bool>(all(vec2<bool>(false, global1.c.x)), global1.c.x, any(global1.c.zx), all(vec3<bool>(global1.c.x, global1.c.x, false)))), vec2<i32>(_wgslsmith_sub_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 1i), vec2<i32>(global1.d.x, 1i))), reverseBits(max(u_input.d, 1i))), ~(abs(u_input.b) << (u_input.b % vec4<u32>(32u))));
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(115f, -295f, 1303f)))))))));
    let var_3 = _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(~global0[_wgslsmith_index_u32(4294967295u, 11u)], global2.x), countOneBits(global2.zw)), _wgslsmith_mod_vec2_u32(~(vec2<u32>(global2.x, 4294967295u) << (vec2<u32>(9300u, 0u) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(~var_1.a.yx, _wgslsmith_mod_vec2_u32(u_input.b.yy, var_1.a.xw)))) << (abs(reverseBits(vec2<u32>(_wgslsmith_mult_u32(var_1.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.x, 11u)], 11u)]), 82864u))) % vec2<u32>(32u));
    var_1 = Struct_1(_wgslsmith_add_vec4_u32(select(vec4<u32>(_wgslsmith_div_u32(2930u, 1u), _wgslsmith_div_u32(4294967295u, u_input.a.x), ~u_input.a.x, _wgslsmith_dot_vec4_u32(global1.e, u_input.b)), _wgslsmith_mult_vec4_u32(abs(global1.a), vec4<u32>(u_input.b.x, 4294967295u, 1u, 1u)), vec4<bool>(true, all(vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x)), all(vec3<bool>(false, false, var_1.c.x)), global1.d.x > var_1.d.x)), ~u_input.b), vec2<u32>(~abs(abs(u_input.c.x)), ~global2.x), global1.c, vec2<i32>(-1i) * -(vec2<i32>(global1.d.x, global1.d.x) & vec2<i32>(u_input.e, var_1.d.x)), global1.e);
    return global1.d;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: i32) -> vec2<i32> {
    global0 = array<u32, 11>();
    global2 = u_input.b;
    let var_0 = func_3();
    global0 = array<u32, 11>();
    global1 = Struct_1(vec4<u32>(45593u & global0[_wgslsmith_index_u32(1u, 11u)], _wgslsmith_clamp_u32(max(~107310u, global0[_wgslsmith_index_u32(~4294967295u, 11u)]), global0[_wgslsmith_index_u32(0u, 11u)] | _wgslsmith_dot_vec3_u32(global1.a.yyy, vec3<u32>(global1.e.x, 37957u, global2.x)), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(114817u, 4294967295u)), abs(u_input.a.zx))), ~(~_wgslsmith_sub_u32(global1.b.x, global0[_wgslsmith_index_u32(global1.e.x, 11u)])), ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global2.x, global0[_wgslsmith_index_u32(41570u, 11u)]), vec2<u32>(0u, 11785u)), ~u_input.b.zy)), vec2<u32>(firstTrailingBit(_wgslsmith_clamp_u32(reverseBits(global2.x), ~global1.b.x, global2.x)), global2.x), global1.c, vec2<i32>(1i, max(global1.d.x, arg_2)), _wgslsmith_mult_vec4_u32(u_input.b, ~u_input.b));
    return vec2<i32>(abs(85009i & select(2147483647i, arg_0.x, false)), 31160i);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: f32) -> Struct_1 {
    let var_0 = ~u_input.a.x << (u_input.c.x % 32u);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-130f)))) * -2376f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1523f * arg_1.x)))), 754f);
    var var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, -56914i), vec2<i32>(-15986i, global1.d.x)) << (~arg_0.x % 32u), 65051i), vec2<i32>(-1i) * -firstLeadingBit(func_2(vec2<i32>(-1i, u_input.e), global2.wyz, arg_2.x)));
    let var_3 = 23403u;
    global2 = u_input.b;
    return Struct_1(~(~u_input.b), global2.yz, select(!global1.c, !global1.c, vec4<bool>(any(select(global1.c, global1.c, vec4<bool>(global1.c.x, false, true, false))), true, all(global1.c.zy), any(vec2<bool>(true, false)))), global1.d, abs(~vec4<u32>(~var_3, countOneBits(global0[_wgslsmith_index_u32(39787u, 11u)]), 0u, arg_0.x & 1u)));
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(select(1f, -1000f, arg_0.c.x));
    global1 = Struct_1(~vec4<u32>(firstTrailingBit(func_1(arg_0.b, vec3<f32>(1332f, -511f, 1229f), vec4<i32>(arg_0.d.x, -25694i, global1.d.x, -1i), -125f).b.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(7035u, 11u)], global1.a.x), countOneBits(vec3<u32>(0u, 1u, 4294967295u))), ~global2.x, 1u), global2.xz, vec4<bool>(global1.c.x, global1.c.x, all(vec3<bool>(global1.c.x, !global1.c.x, true)), false), ~min(arg_0.d, global1.d), u_input.b);
    global2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(reverseBits(_wgslsmith_sub_vec4_u32(u_input.b, arg_0.e & vec4<u32>(0u, 3544u, u_input.c.x, arg_0.b.x))), u_input.b, vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(global2.x, global1.a.x, 51612u), abs(4294967295u)), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(arg_0.e.x >> (21865u % 32u), 11u)], 1u), _wgslsmith_dot_vec4_u32(abs(global1.a), vec4<u32>(u_input.c.x, 47668u, global2.x, 87804u)), global2.x)), select(~u_input.b, u_input.b, select(!global1.c, !select(global1.c, vec4<bool>(arg_0.c.x, false, false, global1.c.x), vec4<bool>(arg_0.c.x, false, arg_0.c.x, true)), select(vec4<bool>(global1.c.x, global1.c.x, arg_0.c.x, global1.c.x), !vec4<bool>(global1.c.x, arg_0.c.x, arg_0.c.x, false), true))), ~(firstTrailingBit(global1.a & vec4<u32>(0u, global2.x, 0u, 1u)) ^ ~firstTrailingBit(arg_0.e)));
    var var_1 = Struct_2(Struct_1(u_input.b, u_input.c, arg_0.c, _wgslsmith_mod_vec2_i32(global1.d, ~abs(vec2<i32>(global1.d.x, u_input.e))), vec4<u32>(_wgslsmith_add_u32(global1.e.x, 42956u) & ~global0[_wgslsmith_index_u32(3227u, 11u)], ~(~global0[_wgslsmith_index_u32(16036u, 11u)]), ~(~23891u), _wgslsmith_div_u32(~u_input.c.x, global2.x))), Struct_1(vec4<u32>(_wgslsmith_add_u32(0u & global1.b.x, 1u), ~_wgslsmith_mult_u32(global1.b.x, 4294967295u), 0u, abs(_wgslsmith_sub_u32(139442u, 42019u))), global1.b ^ ~global2.yz, global1.c, arg_0.d, arg_0.a), arg_0);
    let var_2 = ~(~vec2<i32>(~u_input.e, arg_0.d.x) | select(arg_0.d, var_1.a.d, func_1(var_1.a.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(651f, var_0, var_0) * vec3<f32>(var_0, -954f, -1491f)), select(vec4<i32>(-1i, 2147483647i, u_input.e, u_input.d), vec4<i32>(arg_0.d.x, u_input.d, arg_0.d.x, 0i), true), var_0).c.wy));
    return _wgslsmith_mult_vec4_u32(~abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(26339u, 1u, 121471u, 0u), vec4<u32>(arg_0.a.x, global1.b.x, 0u, u_input.c.x))), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(max(~vec4<u32>(27366u, global0[_wgslsmith_index_u32(var_1.b.b.x, 11u)], 4294967295u, global0[_wgslsmith_index_u32(u_input.b.x, 11u)]), ~vec4<u32>(26417u, global1.a.x, 22092u, arg_0.b.x)), var_1.c.e), select(_wgslsmith_sub_vec4_u32(var_1.c.e, global1.a), ~var_1.c.e, select(select(global1.c, vec4<bool>(arg_0.c.x, var_1.b.c.x, false, arg_0.c.x), global1.c.x), vec4<bool>(false, true, true, global1.c.x), arg_0.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~vec4<u32>(global2.x ^ 4294967295u, _wgslsmith_clamp_u32(global1.a.x, ~(1u | u_input.b.x), 2239u), 4294967295u, ~abs(global1.b.x));
    global2 = global1.e;
    global1 = Struct_1(~_wgslsmith_mod_vec4_u32(func_4(func_1(vec2<u32>(4294967295u, global1.e.x), vec3<f32>(634f, -2695f, 1413f), vec4<i32>(2147483647i, global1.d.x, -2147483647i, -4521i), 457f)), func_4(Struct_1(u_input.b, vec2<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), global1.c, vec2<i32>(27794i, 27305i), global1.e))), ~select(vec2<u32>(~global0[_wgslsmith_index_u32(u_input.c.x, 11u)], _wgslsmith_dot_vec4_u32(global1.e, vec4<u32>(55244u, 1u, 4294967295u, global2.x))), vec2<u32>(16117u, 59895u), !select(vec2<bool>(global1.c.x, false), global1.c.zz, vec2<bool>(true, global1.c.x))), select(!select(vec4<bool>(global1.c.x, global1.c.x, global1.c.x, false), global1.c, global1.c), !vec4<bool>(true, true, false, global1.c.x), any(vec3<bool>(true, global1.c.x, global1.c.x)) && true), countOneBits(global1.d) & vec2<i32>(-2147483647i, global1.d.x >> (1u % 32u)), ~vec4<u32>(_wgslsmith_mult_u32(firstTrailingBit(80749u), global1.b.x << (50494u % 32u)), global2.x, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global1.e.x, 11u)], ~global0[_wgslsmith_index_u32(2314u, 11u)]), _wgslsmith_mod_u32(2317u ^ global1.e.x, 22651u)));
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1232f, -500f)))), vec2<f32>(1f, 1f), vec2<bool>(true, firstTrailingBit(global1.d.x) != _wgslsmith_div_i32(u_input.d, u_input.e))))));
    let var_1 = 58871u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_div_f32(251f, _wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -910f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1142f * -707f), _wgslsmith_f_op_f32(1405f + var_0.x))))), vec3<u32>(min(~func_1(u_input.b.wy, vec3<f32>(373f, var_0.x, var_0.x), vec4<i32>(u_input.d, 2147483647i, u_input.d, u_input.e), 418f).b.x, global2.x), max(814u, global1.e.x), ~(~1u)), vec2<i32>(4085i & abs(u_input.e), min(_wgslsmith_clamp_i32(-264i ^ u_input.e, 1i, -2147483647i), func_3().x)), firstTrailingBit(select(firstLeadingBit(select(global0[_wgslsmith_index_u32(1u, 11u)], 35187u, global1.c.x)), ~_wgslsmith_clamp_u32(83036u, global2.x, global1.a.x), global1.c.x)));
}

