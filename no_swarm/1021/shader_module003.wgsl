struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(-303f, 1194f, 2801f), vec3<f32>(198f, 595f, 678f), vec3<f32>(1074f, -766f, 709f));

var<private> global1: array<bool, 13> = array<bool, 13>(false, true, false, false, true, false, true, true, false, true, false, true, false);

var<private> global2: Struct_1;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    var var_0 = true;
    global1 = array<bool, 13>();
    let var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(0u, _wgslsmith_clamp_u32(~u_input.a, _wgslsmith_mult_u32(4294967295u, u_input.a), ~abs(4294967295u)), 24093u), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.a, 1663u, u_input.a)), vec3<u32>(_wgslsmith_mult_u32(u_input.a, 36098u), ~u_input.a, u_input.a)), vec3<u32>(~(u_input.a >> (u_input.a % 32u)), ~u_input.a, 1u)));
    global2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.a)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global3.a, -1174f)), _wgslsmith_f_op_f32(f32(-1f) * -821f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a + -308f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b * global3.a)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a, global3.a))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-104f))))));
    global1 = array<bool, 13>();
    return _wgslsmith_f_op_f32(-1270f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2213f, global2.b)))) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-807f + _wgslsmith_f_op_f32(-global3.b)))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a - 396f) + _wgslsmith_f_op_f32(min(global2.b, global3.b)))) - 1790f));
    let var_1 = vec2<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(21007u, 13u)], func_3(), true)), true);
    let var_2 = select(select(vec4<bool>(!(u_input.a < 95980u), var_1.x, true, all(select(vec4<bool>(false, var_1.x, true, true), vec4<bool>(var_1.x, true, true, global1[_wgslsmith_index_u32(u_input.a, 13u)]), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)], true)))), !select(!vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)], true), !vec4<bool>(true, true, false, var_1.x), select(vec4<bool>(true, false, false, true), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 13u)], var_1.x, var_1.x), global1[_wgslsmith_index_u32(u_input.a, 13u)])), true), vec4<bool>(false, var_1.x, !global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a, u_input.a), 13u)], true), !(!var_1.x));
    global3 = var_0;
    var var_3 = 1i;
    return Struct_1(-2232f, 1311f);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_1(global3.a, global3.a);
    global3 = arg_2;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-global2.b), 1386f);
    var var_2 = false;
    var_0 = func_2();
    return -328f;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(210f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.a, -2152f)) * -1069f) - global3.a)) > _wgslsmith_f_op_f32(-arg_0);
    var var_1 = ~_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(27901u, u_input.a, 39527u)), ~(~(~vec3<u32>(4294967295u, u_input.a, u_input.a))), vec3<u32>(select(~18393u, ~49466u, all(vec3<bool>(false, false, false))), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 44908u, 15211u), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)), ~0u), firstTrailingBit(u_input.a)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -614f) - global3.a);
    var var_3 = abs(vec3<u32>(u_input.a, abs(~17646u), var_1.x));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(global3.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.a, 2355f)) + -132f))), _wgslsmith_f_op_f32(func_4(select(!select(vec2<bool>(global1[_wgslsmith_index_u32(var_3.x, 13u)], false), vec2<bool>(true, false), global1[_wgslsmith_index_u32(u_input.a, 13u)]), vec2<bool>(true, true), !(!vec2<bool>(global1[_wgslsmith_index_u32(var_3.x, 13u)], global1[_wgslsmith_index_u32(12993u, 13u)]))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(global3.b))), Struct_1(-726f, _wgslsmith_f_op_f32(step(1127f, global2.b))), func_2())));
    return Struct_1(_wgslsmith_f_op_f32(floor(global3.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global3.a, global3.a)))))))));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    global1 = array<bool, 13>();
    var var_0 = arg_2;
    var var_1 = select(vec2<i32>(_wgslsmith_mult_i32(2147483647i, _wgslsmith_mod_i32(0i >> (arg_0 % 32u), countOneBits(6555i))), 21936i), -min(~vec2<i32>(1i, 1i), vec2<i32>(1i, i32(-1i) * -38015i)), func_3());
    global2 = func_2();
    return arg_2;
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_1) -> vec4<u32> {
    global1 = array<bool, 13>();
    var var_0 = func_5(~u_input.a, func_2(), func_5(u_input.a, func_2(), arg_1, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global3.b, global3.a, 969f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1083f, 2126f, -837f, -702f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(arg_1.a - global2.b), arg_0.x)), 1498f, _wgslsmith_f_op_f32(func_4(!arg_0.zz, arg_1, Struct_1(659f, 406f), Struct_1(306f, -492f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(359f + -1171f) + arg_1.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, arg_1.b, arg_1.b, -434f)) * vec4<f32>(_wgslsmith_f_op_f32(-1490f + -2211f), _wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(-global3.a), -493f)), any(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(41048u, 13u)], true, global1[_wgslsmith_index_u32(1u, 13u)]), !arg_0, !vec4<bool>(arg_0.x, global1[_wgslsmith_index_u32(27893u, 13u)], global1[_wgslsmith_index_u32(16111u, 13u)], arg_0.x))))));
    global2 = func_5(13601u, func_2(), func_2(), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1255f, 324f) - _wgslsmith_f_op_f32(global3.a + -1228f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-230f + global2.b) - _wgslsmith_f_op_f32(sign(global2.b))), func_2().a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, -385f, -1476f, 109f)))) + vec4<f32>(var_0.a, 1f, var_0.b, _wgslsmith_f_op_f32(var_0.a * global3.a)))));
    var var_1 = global0[_wgslsmith_index_u32(~u_input.a & _wgslsmith_mult_u32(firstTrailingBit(u_input.a), u_input.a), 3u)];
    global1 = array<bool, 13>();
    return ~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 76105u, u_input.a, u_input.a), ~vec4<u32>(48093u, u_input.a, 22988u, 81665u)) << (~(~vec4<u32>(0u, u_input.a, u_input.a, 1937u)) % vec4<u32>(32u)), select(reverseBits(vec4<u32>(3552u, u_input.a, 4294967295u, 150787u)), ~countOneBits(vec4<u32>(u_input.a, 0u, u_input.a, 0u)), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(~33067u, 3u)] - _wgslsmith_f_op_vec3_f32(max(global0[_wgslsmith_index_u32(17326u, 3u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(813f, global3.b, -157f) * vec3<f32>(global2.a, global2.a, global3.a)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global3.b, global2.a, 819f), vec3<f32>(global2.b, global3.a, global2.b))))), true));
    let var_1 = func_6(!(!vec4<bool>(true && global1[_wgslsmith_index_u32(30539u, 13u)], true, true, !global1[_wgslsmith_index_u32(u_input.a, 13u)])), func_5(_wgslsmith_add_u32(24803u, countOneBits(u_input.a)), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1322f - 715f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(step(194f, -688f)))), func_1(921f), vec4<f32>(global3.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(396f * -1089f))), _wgslsmith_f_op_f32(-773f + _wgslsmith_f_op_f32(step(-1000f, global3.b))), _wgslsmith_f_op_f32(f32(-1f) * -661f))));
    let var_2 = Struct_1(-1351f, _wgslsmith_f_op_f32(f32(-1f) * -2440f));
    var var_3 = var_2;
    var var_4 = func_1(912f);
    global1 = array<bool, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(func_6(select(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)]), !select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], true, global1[_wgslsmith_index_u32(u_input.a, 13u)]), vec4<bool>(global1[_wgslsmith_index_u32(76067u, 13u)], true, global1[_wgslsmith_index_u32(4294967295u, 13u)], false), true), false), Struct_1(global3.b, var_3.b)).x, var_0.yz);
}

