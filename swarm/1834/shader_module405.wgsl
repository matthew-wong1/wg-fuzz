struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32 = 2147483647i;

var<private> global2: array<bool, 20> = array<bool, 20>(false, false, false, false, false, true, true, false, true, true, true, true, false, false, false, false, true, false, true, true);

var<private> global3: vec3<u32>;

var<private> global4: array<i32, 15> = array<i32, 15>(18564i, i32(-2147483648), 8670i, 10970i, 0i, i32(-2147483648), 14349i, 1i, 20343i, 66983i, -26668i, -1i, 2693i, 17891i, -14560i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: i32) -> i32 {
    let var_0 = Struct_1(vec3<u32>(0u, 59671u, ~_wgslsmith_clamp_u32(firstTrailingBit(14391u), 0u, ~u_input.b)), any(select(select(select(vec2<bool>(true, false), vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 20u)]), vec2<bool>(global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(global3.x, 20u)])), select(vec2<bool>(true, global2[_wgslsmith_index_u32(global3.x, 20u)]), vec2<bool>(global2[_wgslsmith_index_u32(global3.x, 20u)], false), vec2<bool>(global2[_wgslsmith_index_u32(global3.x, 20u)], true)), select(vec2<bool>(false, global2[_wgslsmith_index_u32(29262u, 20u)]), vec2<bool>(true, false), global2[_wgslsmith_index_u32(4294967295u, 20u)])), vec2<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(global3.x, 20u)], global2[_wgslsmith_index_u32(4416u, 20u)], false, false)), !global2[_wgslsmith_index_u32(24132u, 20u)]), false)), (706f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-172f)) + _wgslsmith_div_f32(-1234f, 1000f))) | global2[_wgslsmith_index_u32(4294967295u, 20u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1300f, 847f, 1319f, -1664f))) - vec4<f32>(592f, -394f, 931f, 110f)) + vec4<f32>(-1166f, _wgslsmith_f_op_f32(504f + -674f), -803f, _wgslsmith_f_op_f32(abs(881f)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -523f) + 1f), 411f, _wgslsmith_f_op_f32(-1104f + -808f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    return min(0i, -arg_0.x);
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-932f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-162f - 157f)))));
    var var_1 = func_3(vec2<i32>(_wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(u_input.c, 15u)], global4[_wgslsmith_index_u32(12950u, 15u)], 1i, global4[_wgslsmith_index_u32(u_input.d.x, 15u)]), vec4<i32>(-3567i, -4493i, 0i, global4[_wgslsmith_index_u32(global3.x, 15u)])), vec4<i32>(global4[_wgslsmith_index_u32(~38424u, 15u)], -1i, -2147483647i, 1i)), _wgslsmith_sub_i32(~global4[_wgslsmith_index_u32(4294967295u, 15u)], 0i)), global4[_wgslsmith_index_u32(74898u, 15u)], global4[_wgslsmith_index_u32(firstLeadingBit(u_input.c), 15u)]);
    let var_2 = Struct_3(global4[_wgslsmith_index_u32(0u, 15u)], Struct_1(u_input.a.wyy, all(select(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(1u, 20u)]), select(vec2<bool>(false, global2[_wgslsmith_index_u32(global3.x, 20u)]), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(u_input.a.x, 20u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(5163u, 20u)])), select(true, global2[_wgslsmith_index_u32(49030u, 20u)], global2[_wgslsmith_index_u32(59245u, 20u)]))), true, vec4<f32>(_wgslsmith_div_f32(-540f, _wgslsmith_f_op_f32(round(947f))), _wgslsmith_f_op_f32(-971f * -417f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-394f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(761f - -991f)))));
    var var_3 = _wgslsmith_mult_i32(firstTrailingBit(global4[_wgslsmith_index_u32(abs(~var_2.b.a.x), 15u)]), _wgslsmith_add_i32(global4[_wgslsmith_index_u32(97851u, 15u)], ~min(global4[_wgslsmith_index_u32(min(var_2.b.a.x, 40547u), 15u)], global4[_wgslsmith_index_u32(var_2.b.a.x, 15u)] << (var_2.b.a.x % 32u))));
    var var_4 = Struct_2(global2[_wgslsmith_index_u32(27296u, 20u)]);
    return -136f;
}

fn func_1() -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, _wgslsmith_add_u32(~global3.x, u_input.c) | abs(global3.x), u_input.d.x, ~u_input.b), u_input.a), 20u)];
    var var_1 = Struct_3(global4[_wgslsmith_index_u32(u_input.b, 15u)], Struct_1(((vec3<u32>(4294967295u, global3.x, 28865u) ^ u_input.d) << (~u_input.a.xyx % vec3<u32>(32u))) << (u_input.a.yyz % vec3<u32>(32u)), abs(global4[_wgslsmith_index_u32(u_input.b, 15u)] << (u_input.d.x % 32u)) > global4[_wgslsmith_index_u32(max(0u, ~u_input.c), 15u)], !global2[_wgslsmith_index_u32(18062u, 20u)], _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1604f, -1030f, 364f, 1104f)) + vec4<f32>(-1751f, 1672f, 207f, 1409f)), vec4<f32>(_wgslsmith_f_op_f32(func_2()), -1195f, _wgslsmith_div_f32(-682f, -1805f), _wgslsmith_f_op_f32(select(-578f, -372f, global2[_wgslsmith_index_u32(0u, 20u)])))))));
    global2 = array<bool, 20>();
    var var_2 = var_1.b.d.xzy;
    let var_3 = Struct_2(true);
    return 42278u;
}

fn func_4(arg_0: u32) -> vec3<i32> {
    var var_0 = Struct_3(-(~global4[_wgslsmith_index_u32(countOneBits(reverseBits(arg_0)), 15u)]), Struct_1(vec3<u32>(~0u, global3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, u_input.d.x, global3.x, u_input.b), u_input.a)), global2[_wgslsmith_index_u32(select(_wgslsmith_add_u32(u_input.b, abs(4294967295u)), ~4294967295u, select(!global2[_wgslsmith_index_u32(u_input.a.x, 20u)], 1i == global4[_wgslsmith_index_u32(u_input.b, 15u)], true)), 20u)], any(select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(11533u, 20u)], true), vec4<bool>(global2[_wgslsmith_index_u32(80832u, 20u)], false, global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(46296u, 20u)]), global2[_wgslsmith_index_u32(27876u, 20u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(17193u, 20u)], false), false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1373f + 574f), 911f, _wgslsmith_f_op_f32(1148f + 868f), _wgslsmith_f_op_f32(f32(-1f) * -1661f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -379f, 1163f, -514f) * vec4<f32>(-1000f, -153f, 108f, 488f))))));
    let var_1 = Struct_2(!global2[_wgslsmith_index_u32(min(~68752u, 7185u), 20u)]);
    var_0 = Struct_3(func_3(_wgslsmith_mod_vec2_i32(~vec2<i32>(-77622i, 44761i), -(vec2<i32>(0i, var_0.a) ^ vec2<i32>(-23737i, global4[_wgslsmith_index_u32(global3.x, 15u)]))), var_0.a, var_0.a << (arg_0 % 32u)), var_0.b);
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.d.x) + var_0.b.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.d.x + 1245f) + _wgslsmith_div_f32(var_0.b.d.x, -1000f)))), vec2<f32>(_wgslsmith_f_op_f32(-216f + _wgslsmith_f_op_f32(-var_0.b.d.x)), var_0.b.d.x));
    var var_3 = var_1;
    return vec3<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-48315i, global4[_wgslsmith_index_u32(u_input.c, 15u)], var_0.a, -12734i) & vec4<i32>(32636i, -2147483647i, var_0.a, global4[_wgslsmith_index_u32(4294967295u, 15u)]), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, global4[_wgslsmith_index_u32(var_0.b.a.x, 15u)], 22799i, var_0.a), vec4<i32>(-28215i, -1i, global4[_wgslsmith_index_u32(var_0.b.a.x, 15u)], var_0.a)), true) ^ -_wgslsmith_sub_vec4_i32(vec4<i32>(1i, global4[_wgslsmith_index_u32(global3.x, 15u)], 78847i, global4[_wgslsmith_index_u32(1u, 15u)]), vec4<i32>(9782i, 2147483647i, var_0.a, 15843i)), -((vec4<i32>(var_0.a, var_0.a, var_0.a, -1i) << (u_input.a % vec4<u32>(32u))) >> (u_input.a % vec4<u32>(32u)))), -global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.b.a.x, arg_0, max(0u, ~u_input.d.x)), 15u)], -23215i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 20>();
    var var_0 = select(vec3<i32>(~abs(global4[_wgslsmith_index_u32(1u, 15u)]), i32(-1i) * -3633i, -1i), -reverseBits(-firstLeadingBit(vec3<i32>(-25024i, -28676i, -1i))), !vec3<bool>(any(select(vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 20u)], true), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 20u)], true), global2[_wgslsmith_index_u32(global3.x, 20u)])), true & any(vec4<bool>(false, global2[_wgslsmith_index_u32(15783u, 20u)], global2[_wgslsmith_index_u32(u_input.b, 20u)], false)), true && global2[_wgslsmith_index_u32(global3.x | 9562u, 20u)]));
    global4 = array<i32, 15>();
    var var_1 = u_input.a.x;
    var var_2 = 1u;
    var_0 = func_4(~func_1());
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-891f * -1082f), _wgslsmith_f_op_f32(-1000f - 1454f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(2584f, 914f)), _wgslsmith_f_op_f32(step(-368f, -558f)), global3.x != global3.x))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-331f, _wgslsmith_f_op_f32(step(-1268f, -460f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(636f, 1748f) - -1376f) * 1f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(max(-vec3<i32>(12043i, 0i, global4[_wgslsmith_index_u32(u_input.c, 15u)]) >> (min(vec3<u32>(global3.x, global3.x, u_input.c), vec3<u32>(u_input.b, 15019u, 0u)) % vec3<u32>(32u)), vec3<i32>(1i, ~49234i, _wgslsmith_sub_i32(-13267i, global4[_wgslsmith_index_u32(global3.x, 15u)]))), max(countOneBits(~vec3<i32>(var_0.x, var_0.x, 32846i)), _wgslsmith_div_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 15u)], 2147483647i, var_0.x) >> (u_input.d % vec3<u32>(32u)), vec3<i32>(1i, 0i, 1i) >> (u_input.d % vec3<u32>(32u))))), abs(~max(0i, 24800i) ^ _wgslsmith_sub_i32(global4[_wgslsmith_index_u32(~10720u, 15u)], reverseBits(-44779i))));
}

