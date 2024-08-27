struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 8> = array<u32, 8>(41644u, 41900u, 4294967295u, 48267u, 1u, 31307u, 66488u, 0u);

var<private> global2: Struct_2;

var<private> global3: f32;

var<private> global4: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(1229f, -875f, 350f), vec3<f32>(-1161f, 160f, 830f), vec3<f32>(1280f, -1756f, -521f), vec3<f32>(133f, 1066f, -113f), vec3<f32>(1000f, 1060f, 1369f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(all(select(!vec2<bool>(global2.c.x, false), global2.c.yz, true)), global1[_wgslsmith_index_u32(4294967295u, 8u)], Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), _wgslsmith_mult_u32(1u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, global2.b), ~u_input.b), 8u)]), !select(select(vec4<bool>(true, global2.c.x, global2.c.x, false), vec4<bool>(global2.c.x, false, global2.c.x, global2.c.x), global2.c.x), select(vec4<bool>(false, global2.c.x, global2.c.x, global2.c.x), global2.c, global2.c.x), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-462f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(abs(241f))), global2.a) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(4294967295u, 5u)])))), reverseBits((_wgslsmith_clamp_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 8u)], 8u)], global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(global2.b, 8u)]), u_input.b, vec3<u32>(18781u, 26972u, u_input.b.x)) << (~vec3<u32>(0u, u_input.b.x, 0u) % vec3<u32>(32u))) & _wgslsmith_clamp_vec3_u32(select(u_input.b, vec3<u32>(0u, global2.b, u_input.b.x), vec3<bool>(false, false, true)), reverseBits(vec3<u32>(0u, global1[_wgslsmith_index_u32(27531u, 8u)], u_input.b.x)), u_input.b)));
    global0 = Struct_1(-566f);
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_0.d.zy), var_0.d.xy));
    var_1 = vec2<f32>(var_0.d.x, global0.a);
    var var_2 = global2.c.xxx;
    return _wgslsmith_f_op_f32(max(-701f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.a)) + _wgslsmith_f_op_f32(exp2(global2.a))))))));
}

fn func_2(arg_0: f32) -> f32 {
    global0 = Struct_1(global2.a);
    var var_0 = _wgslsmith_f_op_f32(func_3());
    let var_1 = reverseBits(u_input.c ^ abs(firstLeadingBit(firstTrailingBit(vec2<i32>(u_input.c.x, -24814i)))));
    var var_2 = Struct_4(-1000f, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.b, ~countOneBits(4294967295u << (global2.b % 32u))), 8u)], _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, ~(117878u >> (global1[_wgslsmith_index_u32(u_input.b.x, 8u)] % 32u)), 69791u, 42519u), ~(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u)) << (abs(~vec4<u32>(1u, global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)], u_input.b.x)) % vec4<u32>(32u)), vec4<u32>(3166u, u_input.b.x, countOneBits(~global1[_wgslsmith_index_u32(1u, 8u)]), 1u)), !global2.c.x && !(_wgslsmith_f_op_f32(-arg_0) >= 223f));
    let var_3 = Struct_2(-339f, min(_wgslsmith_dot_vec4_u32(~var_2.c >> (vec4<u32>(7827u, 12908u, global2.b, u_input.b.x) % vec4<u32>(32u)), firstLeadingBit(~vec4<u32>(u_input.b.x, 0u, u_input.b.x, var_2.b))), 0u), select(vec4<bool>(!(global2.c.x && true), true, false, all(vec2<bool>(true, false))), vec4<bool>(true, global2.c.x, false, global2.c.x), vec4<bool>(all(select(global2.c.zyw, vec3<bool>(global2.c.x, true, global2.c.x), global2.c.x)), var_2.d, all(!global2.c.xx), u_input.b.x < 52091u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.a)))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>) -> u32 {
    global2 = Struct_2(-1357f, reverseBits(_wgslsmith_mod_u32(~(~arg_2.x), arg_2.x)), vec4<bool>(false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.a))) <= -500f, any(vec3<bool>(global2.c.x, true, false)), !global2.c.x | global2.c.x));
    let var_0 = all(vec3<bool>(!((global2.c.x && true) || (u_input.c.x < 54371i)), any(!vec2<bool>(false, global2.c.x)), 12259i > (~40885i & _wgslsmith_mod_i32(u_input.c.x, 41328i))));
    global3 = 1697f;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0)))))), ~49067u, arg_2, true);
    var var_2 = 37926u;
    return var_1.c.x;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: bool) -> Struct_3 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a + global2.a)), _wgslsmith_f_op_f32(-383f * -1107f))) + _wgslsmith_div_f32(698f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(569f - 175f), _wgslsmith_f_op_f32(2038f + global2.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -850f), global0.a)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.d.x)))));
    let var_1 = vec3<bool>(true, arg_0.a | !all(global2.c.zw), !(31524u > firstLeadingBit(arg_0.e.x)));
    let var_2 = -_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(u_input.c.x, -225i, 0i)), vec3<i32>(25303i, -1i, u_input.c.x) << (u_input.b % vec3<u32>(32u))) ^ -abs(vec3<i32>(0i, u_input.a, u_input.c.x)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, -1i, u_input.a), ~vec3<i32>(u_input.c.x, u_input.a, u_input.a)));
    var var_3 = _wgslsmith_mult_vec2_i32(-var_2.yx, u_input.c);
    var var_4 = arg_0;
    return Struct_3(!((_wgslsmith_dot_vec3_i32(var_2, var_2) <= u_input.a) != select(any(var_4.c.c.yw), !global2.c.x, false)), _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, global2.b), vec2<u32>(arg_0.c.b, arg_1.x) >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))), _wgslsmith_mult_u32(min(arg_1.x >> (arg_0.b % 32u), ~u_input.b.x), select(u_input.b.x, u_input.b.x, true) ^ arg_0.c.b)), Struct_2(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-global0.a)), 0u, !arg_0.c.c), vec3<f32>(var_0.x, 1058f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2456f), 1465f))), ~u_input.b << (countOneBits(arg_0.e) % vec3<u32>(32u)));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: i32, arg_3: Struct_3) -> vec4<i32> {
    let var_0 = 1293f;
    global2 = arg_1.c;
    var var_1 = func_5(Struct_3(true, ~1u, arg_1.c, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(global2.a * var_0), -496f, 651f))), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3.e.x, 3711u, 4294967295u), arg_3.e, u_input.b))), vec4<u32>(14650u, ~(arg_1.e.x >> (global2.b % 32u)), func_4(_wgslsmith_f_op_f32(func_2(var_0)), Struct_1(1978f), ~vec4<u32>(19993u, global1[_wgslsmith_index_u32(0u, 8u)], arg_1.c.b, 6072u)) & abs(~arg_3.e.x), ~abs(global1[_wgslsmith_index_u32(50178u, 8u)]) & ~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global2.b, 8u)], global1[_wgslsmith_index_u32(19642u, 8u)])), true);
    let var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(-var_1.d.x);
    return ~vec4<i32>(3191i, abs(arg_0), 34064i, ~(-5006i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(u_input.c.x, u_input.a, -(~(~_wgslsmith_div_i32(u_input.c.x, u_input.a))), 0i);
    global3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1485f)) - global2.a)));
    var var_1 = _wgslsmith_add_vec4_i32(~(~_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -1i, var_0.x, -6552i), vec4<i32>(-16670i, -9969i, u_input.c.x, 11554i))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(var_0, func_1(u_input.c.x, Struct_3(global2.c.x, global2.b, Struct_2(global2.a, u_input.b.x, global2.c), global4[_wgslsmith_index_u32(global2.b, 5u)], vec3<u32>(global1[_wgslsmith_index_u32(245u, 8u)], u_input.b.x, 125905u)), u_input.c.x, Struct_3(false, u_input.b.x, Struct_2(-738f, global2.b, vec4<bool>(false, global2.c.x, global2.c.x, true)), global4[_wgslsmith_index_u32(0u, 5u)], u_input.b))), var_0.x), var_0.x, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-var_0.x, i32(-1i) * -1i), 2147483647i & u_input.c.x, _wgslsmith_sub_i32(-u_input.a, i32(-1i) * -46096i)), i32(-1i) * -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(u_input.c.x, countOneBits(~16240i)), var_0.zxx, u_input.c.x);
}

