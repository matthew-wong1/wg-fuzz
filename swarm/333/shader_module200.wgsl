struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: bool,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-909f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.a * -479f), -1000f)))) - -594f);
    global0 = array<i32, 24>();
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-1i, arg_1.c.d.x) | vec2<i32>(42269i, -9744i)), _wgslsmith_add_vec2_i32(vec2<i32>(23610i, -32162i) | arg_1.c.a.zx, vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], 46630i))) & (1i | global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, max(12730u, 0u)), 24u)]), _wgslsmith_div_i32(-1i, abs(u_input.a)), 2147483647i);
    let var_2 = any(select(!vec2<bool>(!arg_0.x, true), vec2<bool>(false, true), ~(~16678u) == _wgslsmith_dot_vec3_u32(~vec3<u32>(37269u, 21285u, 2316u), vec3<u32>(10622u, 54251u, 4294967295u))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, -551f), vec3<f32>(-440f, arg_1.c.c, arg_1.b)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, 2091f, var_0))))))), arg_0.x, false, countOneBits(min(_wgslsmith_mult_vec3_i32(arg_1.c.d.zxy, arg_1.c.a.wwz), vec3<i32>(u_input.b, 2147483647i, 1i) & arg_1.c.a.xxw) >> (~vec3<u32>(0u, 48971u, 38364u) % vec3<u32>(32u))), Struct_1(reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(11215i, u_input.a, 7445i, 11517i) & vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(0u, 24u)], 2620i, 1i), abs(vec4<i32>(-1i, arg_1.d.x, arg_1.d.x, arg_1.d.x)))), false && all(vec2<bool>(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -294f)), -_wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], arg_1.d.x, u_input.a, global0[_wgslsmith_index_u32(4294967295u, 24u)]), abs(arg_1.c.a))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1878f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1754f + var_3.a.x)))))));
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -878f)) - _wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)), Struct_3(-2135f, 924f, Struct_1(vec4<i32>(16916i, global0[_wgslsmith_index_u32(0u, 24u)], u_input.b, u_input.b), false, -752f, vec4<i32>(-1i, 36332i, 1i, -2147483647i)), vec2<i32>(10844i, global0[_wgslsmith_index_u32(28435u, 24u)]))))))), Struct_1(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(12260i, 1i, 5467i, global0[_wgslsmith_index_u32(0u, 24u)])), vec4<i32>(~global0[_wgslsmith_index_u32(85155u, 24u)], firstLeadingBit(-2147483647i), 2147483647i, global0[_wgslsmith_index_u32(~4294967295u, 24u)])), false, _wgslsmith_f_op_f32(-215f * _wgslsmith_f_op_f32(f32(-1f) * -1038f)), vec4<i32>(1i, _wgslsmith_mod_i32(20342i, u_input.a), global0[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(43513u, 81862u)), 24u)], _wgslsmith_add_i32(u_input.b << (21549u % 32u), -global0[_wgslsmith_index_u32(1u, 24u)]))), vec2<i32>(countOneBits(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, -2147483647i, 2147483647i), -vec3<i32>(global0[_wgslsmith_index_u32(25202u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)], 4707i))), -36847i));
    var var_1 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-920f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b)))));
    let var_2 = _wgslsmith_f_op_f32(var_0.c.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + -948f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -145f) + var_0.c.c)));
    var var_3 = -1i;
    global0 = array<i32, 24>();
    return Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(107f, _wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-873f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2))))), ~(~0u));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_2) -> f32 {
    var var_0 = select(~arg_1.b, arg_1.b, _wgslsmith_add_u32(0u, min(0u, arg_1.b) ^ arg_1.b) > reverseBits(~1u));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(func_2().a.x * _wgslsmith_f_op_f32(trunc(-450f))), arg_2.e.c, arg_2.e, vec2<i32>(select(select(u_input.a, arg_2.e.a.x, true), min(0i, global0[_wgslsmith_index_u32(120994u, 24u)]), false), reverseBits(abs(7459i))) | firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(arg_2.e.a, vec4<i32>(arg_2.d.x, -11037i, arg_2.d.x, global0[_wgslsmith_index_u32(arg_1.b, 24u)])), firstTrailingBit(-54012i))));
    var_0 = func_2().b;
    var var_2 = vec3<i32>(~_wgslsmith_dot_vec3_i32(select(arg_2.d | var_1.c.d.zzw, arg_2.e.d.zyz, vec3<bool>(arg_0, false, arg_0)), vec3<i32>(u_input.a, firstLeadingBit(u_input.b), select(62514i, var_1.c.a.x, var_1.c.b))), _wgslsmith_mod_i32(-21096i, arg_2.d.x | -21935i), _wgslsmith_mod_i32(~u_input.a, -2147483647i));
    global0 = array<i32, 24>();
    return arg_2.e.c;
}

fn func_1() -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(214f, 446f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(true, func_2(), Struct_2(vec3<f32>(1000f, -1369f, 789f), false, true, vec3<i32>(global0[_wgslsmith_index_u32(54536u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)]), Struct_1(vec4<i32>(u_input.a, -23277i, -17318i, -62153i), false, -454f, vec4<i32>(global0[_wgslsmith_index_u32(0u, 24u)], 217i, u_input.b, global0[_wgslsmith_index_u32(1u, 24u)]))))) * 1124f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1447f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -590f)))), Struct_1(~(-vec4<i32>(-1i, 1i, 0i, 0i) | vec4<i32>(-1i, 2147483647i, global0[_wgslsmith_index_u32(15533u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)])), any(select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(false, true, true, false))), -265f, _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(39829u, 24u)], -1i, 2011i, -30528i) >> (vec4<u32>(22413u, 55786u, 1458u, 58171u) % vec4<u32>(32u)), ~vec4<i32>(global0[_wgslsmith_index_u32(20400u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], u_input.b, u_input.b)), ~(~vec4<i32>(-1i, u_input.a, global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)])), abs(-vec4<i32>(57300i, 1i, 2147483647i, global0[_wgslsmith_index_u32(1u, 24u)])))), reverseBits(select(~vec2<i32>(36397i, global0[_wgslsmith_index_u32(0u, 24u)]), ~firstLeadingBit(vec2<i32>(u_input.b, global0[_wgslsmith_index_u32(13218u, 24u)])), vec2<bool>(true, true))));
    let var_1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(var_0.c.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b)))), _wgslsmith_f_op_f32(func_4(true, Struct_4(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.b, 416f, -1339f))), ~73272u), Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(-209f, -1314f, var_0.b), vec3<f32>(var_0.b, -1000f, 857f)), select(var_0.c.b, true, var_0.c.b), true, vec3<i32>(u_input.a, 38293i, -29668i), Struct_1(vec4<i32>(var_0.d.x, -1i, -1i, 2147483647i), var_0.c.b, var_0.a, vec4<i32>(-1i, 0i, global0[_wgslsmith_index_u32(1u, 24u)], var_0.d.x))))), _wgslsmith_f_op_f32(-var_0.b)), 1u);
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_1.a, vec3<f32>(var_0.b, var_0.b, -706f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1275f, var_1.a.x), _wgslsmith_f_op_f32(1279f * var_1.a.x), -627f)))), _wgslsmith_add_u32(~var_1.b, firstLeadingBit(~var_1.b << (78637u % 32u))));
    let var_3 = Struct_3(689f, _wgslsmith_f_op_f32(f32(-1f) * -231f), Struct_1(var_0.c.a, true, var_0.c.c, vec4<i32>(-1i) * -vec4<i32>(global0[_wgslsmith_index_u32(1u, 24u)], 37731i, global0[_wgslsmith_index_u32(var_1.b, 24u)], u_input.a)), var_0.d);
    let var_4 = vec3<bool>(59478i != var_3.c.d.x, var_3.b != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-828f - _wgslsmith_f_op_f32(f32(-1f) * -909f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_3.a))))), false);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c.c), _wgslsmith_f_op_f32(-var_3.c.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 24>();
    var var_0 = 14783u;
    var var_1 = Struct_4(vec3<f32>(-1280f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -422f) - _wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(f32(-1f) * -510f)), 4294967295u);
    let var_2 = select(vec3<bool>(true, true, true), select(!select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)), select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), any(vec2<bool>(false, true))), vec3<bool>(true, true, true)), all(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))), vec3<bool>(all(vec2<bool>(true, true)), 1u < _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, 2585u, var_1.b, 121447u) | vec4<u32>(4294967295u, var_1.b, var_1.b, 60687u), vec4<u32>(var_1.b, 56007u, 0u, 1u) >> (vec4<u32>(6137u, 0u, var_1.b, var_1.b) % vec4<u32>(32u))), 451f >= var_1.a.x));
    global0 = array<i32, 24>();
    var_0 = _wgslsmith_mod_u32(1u, var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, var_2.x, false, var_2.x), Struct_3(621f, 149f, Struct_1(vec4<i32>(u_input.b, 5672i, 2147483647i, 11629i), var_2.x, var_1.a.x, vec4<i32>(0i, global0[_wgslsmith_index_u32(var_1.b, 24u)], -1030i, global0[_wgslsmith_index_u32(var_1.b, 24u)])), vec2<i32>(2147483647i, 1i)))), 296f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(max(var_1.a.x, _wgslsmith_f_op_f32(-var_1.a.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1443f), _wgslsmith_f_op_f32(-var_1.a.x), -1118f, -110f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_1.a.x, -218f, var_1.a.x)) + vec4<f32>(var_1.a.x, var_1.a.x, -1138f, -835f))))), vec2<f32>(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, true, true), Struct_3(var_1.a.x, var_1.a.x, Struct_1(vec4<i32>(u_input.b, 2147483647i, -1i, 55880i), var_2.x, -311f, vec4<i32>(u_input.b, 5487i, 23917i, 2147483647i)), vec2<i32>(2147483647i, u_input.a) | vec2<i32>(global0[_wgslsmith_index_u32(var_1.b, 24u)], global0[_wgslsmith_index_u32(var_1.b, 24u)])))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.a.x, -860f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -872f) - -309f), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b, var_1.b, var_1.b), vec3<u32>(var_1.b, 4294967295u, var_1.b)) < ~var_1.b))));
}

