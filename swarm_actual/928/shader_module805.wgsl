struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4> = array<f32, 4>(-1820f, -1159f, 231f, -844f);

var<private> global1: u32;

var<private> global2: array<u32, 28>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    let var_0 = all(select(vec2<bool>(_wgslsmith_f_op_f32(step(-1047f, -589f)) >= global0[_wgslsmith_index_u32(58049u, 4u)], true && (global2[_wgslsmith_index_u32(18755u, 28u)] != 16710u)), vec2<bool>(any(vec3<bool>(true, true, true)), false), false));
    var var_1 = Struct_4(Struct_3(vec2<f32>(-261f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-314f, global0[_wgslsmith_index_u32(0u, 4u)]))))), Struct_2(Struct_1(~1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-509f, global0[_wgslsmith_index_u32(50738u, 4u)], -1000f, global0[_wgslsmith_index_u32(19708u, 4u)]) * vec4<f32>(249f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 4u)], 1060f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(102379u, 28u)], 28u)], 4u)])))), -u_input.a, _wgslsmith_sub_vec3_u32(countOneBits(~u_input.c), _wgslsmith_add_vec3_u32(select(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 28u)], 28u)], u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)]), vec3<u32>(74299u, 47591u, 0u), vec3<bool>(var_0, true, false)), reverseBits(u_input.c)))), !(!(var_0 & true)) || all(vec3<bool>(var_0, true, !var_0)), Struct_2(Struct_1(_wgslsmith_mult_u32(u_input.c.x, ~global2[_wgslsmith_index_u32(1u, 28u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(1u, 4u)], 1163f, -485f, 388f), vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], 964f, global0[_wgslsmith_index_u32(42220u, 4u)], global0[_wgslsmith_index_u32(u_input.c.x, 4u)]), vec4<bool>(var_0, false, true, false))))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(81100i, u_input.a.x), min(u_input.d.yz, u_input.a.xx)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.d.x, u_input.a.x, -1i, 0i)), vec4<i32>(u_input.d.x, 0i, -17492i, u_input.a.x)), -u_input.d.x), u_input.c));
    global1 = ~(~(~1u >> ((global2[_wgslsmith_index_u32(53765u, 28u)] ^ 1u) % 32u))) >> (var_1.d.c.x % 32u);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(217f))) * global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u, 1u), 4u)]);
    var_1 = Struct_4(var_1.a, var_1.b, false, Struct_2(var_1.b.a, vec3<i32>(var_1.b.b.x, i32(-1i) * -var_1.b.b.x, -478i), vec3<u32>(_wgslsmith_add_u32(0u, _wgslsmith_dot_vec3_u32(var_1.d.c, u_input.c)), ~_wgslsmith_clamp_u32(u_input.c.x, 91271u, 17588u), 115841u << (var_1.b.c.x % 32u))));
    return select(select(vec2<bool>(var_1.c, all(!vec4<bool>(var_1.c, false, true, var_1.c))), vec2<bool>(var_0, true), any(select(select(vec4<bool>(var_1.c, true, var_0, var_1.c), vec4<bool>(var_1.c, var_1.c, var_0, false), false), !vec4<bool>(true, var_0, var_0, var_1.c), !vec4<bool>(var_1.c, true, true, var_1.c)))), !(!(!(!vec2<bool>(false, var_1.c)))), vec2<bool>(true, var_1.c | false));
}

fn func_2() -> Struct_4 {
    global2 = array<u32, 28>();
    var var_0 = Struct_2(Struct_1(global2[_wgslsmith_index_u32(3272u, 28u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(19544u, 4u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 28u)], 4u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 4u)], -1143f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, 1486f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], 4u)], 403f), vec4<f32>(global0[_wgslsmith_index_u32(65324u, 4u)], global0[_wgslsmith_index_u32(38411u, 4u)], -904f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], 4u)])))))), vec3<i32>(-2147483647i, -4166i, u_input.d.x), vec3<u32>(u_input.c.x, max(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), 81779u), ~(global2[_wgslsmith_index_u32(1u, 28u)] >> (u_input.c.x % 32u))), firstLeadingBit(u_input.c.x | _wgslsmith_mod_u32(u_input.b, 0u))));
    var var_1 = -(i32(-1i) * -2147483647i);
    var var_2 = Struct_2(Struct_1(1u, vec4<f32>(var_0.a.b.x, _wgslsmith_div_f32(1000f, var_0.a.b.x), global0[_wgslsmith_index_u32(~firstTrailingBit(u_input.b), 4u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_0.a.b.x)), -644f)))), var_0.b, countOneBits(vec3<u32>(max(10088u, u_input.c.x), 148272u, select(1u, 1u, false))) >> (var_0.c % vec3<u32>(32u)));
    let var_3 = Struct_2(Struct_1(firstLeadingBit(_wgslsmith_dot_vec2_u32(var_0.c.yy, vec2<u32>(10192u, 0u)) << (var_2.c.x % 32u)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(-1000f, var_2.a.b.x), 235f, -449f, global0[_wgslsmith_index_u32(63346u, 4u)]), vec4<f32>(_wgslsmith_f_op_f32(158f + global0[_wgslsmith_index_u32(52681u, 4u)]), _wgslsmith_div_f32(643f, -663f), -121f, global0[_wgslsmith_index_u32(~u_input.c.x, 4u)])))), vec3<i32>(var_2.b.x, -_wgslsmith_div_i32(reverseBits(var_2.b.x), u_input.a.x | u_input.a.x), -1i), var_2.c);
    return Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.b.x, var_2.a.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1843f, global0[_wgslsmith_index_u32(70695u, 4u)])), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), func_3(), vec2<bool>(true, true))))), var_3, true, var_3);
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: f32) -> i32 {
    var var_0 = func_2().a.a.x;
    var var_1 = abs(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~(~75724u), _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(56988u, u_input.c.x, u_input.b), 28u)], countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1.b.a.a, 28u)], 28u)], 28u)]), func_2().b.a.a), global2[_wgslsmith_index_u32(~0u, 28u)]), 0u));
    var var_2 = func_3();
    let var_3 = _wgslsmith_f_op_f32(func_2().d.a.b.x + arg_2);
    var var_4 = arg_1.d.a;
    return arg_0;
}

fn func_1() -> vec3<f32> {
    var var_0 = firstTrailingBit(u_input.b);
    var var_1 = vec3<i32>(max(u_input.a.x >> (~1u % 32u), func_4(u_input.d.x, func_2(), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 4u)] * global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 4u)]))), -1i, -57551i);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(0u, 4u)]))), 907f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(60491u, 28u)], 4u)] - 300f))))));
    var var_3 = _wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i, _wgslsmith_add_i32(firstTrailingBit(var_1.x), -1i)) | 1i, _wgslsmith_div_i32(1i, func_2().d.b.x));
    let var_4 = 1000f;
    return _wgslsmith_f_op_vec3_f32(min(func_2().d.a.b.xyw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_4, global0[_wgslsmith_index_u32(u_input.b, 4u)]), vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 4u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 4u)], global0[_wgslsmith_index_u32(u_input.b, 4u)])))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1446f, -1366f, 2109f), vec3<f32>(143f, 690f, 1226f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 28>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2157f, global0[_wgslsmith_index_u32(u_input.c.x, 4u)], global0[_wgslsmith_index_u32(u_input.b, 4u)])))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-2406f, -1000f, global0[_wgslsmith_index_u32(1u, 4u)]), vec3<f32>(global0[_wgslsmith_index_u32(24469u, 4u)], 1000f, 109f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(2287f, -505f, 151f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(786f, global0[_wgslsmith_index_u32(u_input.b, 4u)], global0[_wgslsmith_index_u32(u_input.c.x, 4u)]), vec3<f32>(1000f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 4u)], global0[_wgslsmith_index_u32(0u, 4u)])))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_f_op_vec3_f32(-vec3<f32>(424f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1471u, 28u)], 28u)], 4u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 28u)], 4u)])))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_2 = !vec3<bool>(~(-36783i) < (-u_input.d.x | (-2147483647i | u_input.a.x)), any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true))) | func_3().x, !any(vec4<bool>(false, false, true, false)) || (true || func_2().c));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~u_input.b & max(1u, global2[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(66482u, 28u)], 28u)]), 28u)]), max(min(-u_input.d, func_2().d.b), vec3<i32>(-1i, -u_input.d.x, u_input.a.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 48383u, u_input.c.x, global2[_wgslsmith_index_u32(32378u, 28u)]), vec4<u32>(38939u, global2[_wgslsmith_index_u32(0u, 28u)], u_input.b, 91684u)) % 32u))), vec3<u32>(max(4294967295u, u_input.b) ^ abs(global2[_wgslsmith_index_u32(u_input.c.x, 28u)]), _wgslsmith_add_u32(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(58465u, 28u)], 28u)]) >> (global2[_wgslsmith_index_u32(4294967295u, 28u)] % 32u), 1u) >> (vec3<u32>(_wgslsmith_mod_u32(~11453u, _wgslsmith_add_u32(43555u, 51347u)), abs(21156u), 7967u) % vec3<u32>(32u)), _wgslsmith_mult_i32(select(u_input.d.x, ~u_input.a.x, all(vec3<bool>(false, var_2.x, false)) != func_2().c), 265i));
}

