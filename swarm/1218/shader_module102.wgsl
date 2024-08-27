struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31>;

var<private> global1: vec3<i32> = vec3<i32>(35135i, i32(-2147483648), -39615i);

var<private> global2: i32;

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<f32>(1284f, -1014f, 1000f, 420f), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec2<bool>(false, true), 1u), Struct_1(vec4<f32>(-980f, -2028f, 707f, 164f), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec2<bool>(false, true), 14924u), Struct_1(vec4<f32>(-545f, 2855f, -278f, 402f), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec2<bool>(false, false), 4294967295u), Struct_1(vec4<f32>(1619f, -839f, 432f, 463f), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec2<bool>(true, false), 43839u), Struct_1(vec4<f32>(1578f, 416f, 731f, 1381f), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec2<bool>(false, false), 0u), Struct_1(vec4<f32>(-1000f, 1418f, 159f, -1093f), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec2<bool>(false, true), 45518u), Struct_1(vec4<f32>(-1095f, -1375f, 1350f, -2028f), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec2<bool>(false, true), 4294967295u), Struct_1(vec4<f32>(1500f, -996f, 706f, 1259f), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec2<bool>(true, true), 39950u), Struct_1(vec4<f32>(1014f, -371f, 864f, -1824f), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec2<bool>(true, true), 0u), Struct_1(vec4<f32>(909f, -361f, 1242f, -466f), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec2<bool>(true, true), 4294967295u), Struct_1(vec4<f32>(-1000f, 325f, 507f, 1000f), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec2<bool>(true, true), 1u), Struct_1(vec4<f32>(-304f, -134f, 289f, -3548f), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec2<bool>(true, false), 34357u), Struct_1(vec4<f32>(1000f, 215f, -1428f, 2922f), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec2<bool>(true, false), 19431u), Struct_1(vec4<f32>(-525f, 958f, 369f, -536f), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec2<bool>(false, false), 44079u), Struct_1(vec4<f32>(-472f, 1480f, -848f, 753f), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec2<bool>(false, false), 1u), Struct_1(vec4<f32>(-499f, -406f, -886f, -1226f), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec2<bool>(false, true), 20412u), Struct_1(vec4<f32>(-2085f, 531f, 1017f, 240f), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec2<bool>(true, true), 1u), Struct_1(vec4<f32>(-2054f, 450f, -717f, -1013f), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec2<bool>(false, true), 1u), Struct_1(vec4<f32>(-1211f, 499f, -705f, 2325f), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec2<bool>(false, true), 39501u), Struct_1(vec4<f32>(-1000f, -957f, -584f, 527f), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec2<bool>(false, true), 1u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    global0 = array<u32, 31>();
    var var_0 = vec4<i32>(i32(-1i) * -(global1.x | 38723i), -global1.x, 2147483647i, global1.x);
    var var_1 = _wgslsmith_f_op_f32(max(-276f, global3.a.x));
    let var_2 = _wgslsmith_f_op_f32(-arg_0.a.x);
    let var_3 = select(arg_0.e, ~(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(arg_0.e, 31u)], 124180u), u_input.d.x)), !(!arg_0.c.x));
    return vec4<bool>(!(global3.b.x & (!arg_0.d.x || !global3.b.x)), global3.d.x, all(vec2<bool>(global3.d.x, arg_0.a.x != _wgslsmith_f_op_f32(step(global3.a.x, global3.a.x)))), arg_0.c.x);
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(countOneBits(reverseBits(u_input.b.zww)), _wgslsmith_sub_vec3_i32(u_input.b.xxz, vec3<i32>(global1.x, firstTrailingBit(30508i), u_input.b.x >> (global3.e % 32u)))), u_input.b.zxx);
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(global3.a)), select(!func_3(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(52815u, 31u)], 17817u), 20u)]), select(func_3(global4[_wgslsmith_index_u32(reverseBits(u_input.a), 20u)]), global3.c, any(!global3.b.xx)), _wgslsmith_f_op_f32(-861f * _wgslsmith_f_op_f32(-384f - 307f)) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -408f)))), select(!(!vec4<bool>(global3.b.x, true, global3.d.x, true)), select(!vec4<bool>(false, false, false, global3.b.x), select(vec4<bool>(global3.b.x, true, global3.b.x, false), select(vec4<bool>(global3.d.x, true, global3.b.x, global3.b.x), global3.b, global3.d.x), global3.c.x), global3.d.x), select(vec4<bool>(global3.c.x, global3.d.x, true, false), !func_3(global4[_wgslsmith_index_u32(global3.e, 20u)]), vec4<bool>(global3.d.x, !global3.c.x, global3.d.x, false))), global3.b.wx, ~firstTrailingBit(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.a, 1u, u_input.a, global0[_wgslsmith_index_u32(global3.e, 31u)]))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global3.a, _wgslsmith_div_vec4_f32(vec4<f32>(-153f, 265f, global3.a.x, 2109f), global3.a)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global3.a.x, 379f, global3.a.x) + vec4<f32>(global3.a.x, -860f, 857f, global3.a.x)), _wgslsmith_f_op_vec4_f32(sign(global3.a))), vec4<f32>(global3.a.x, -153f, _wgslsmith_f_op_f32(global3.a.x * 970f), _wgslsmith_f_op_f32(min(global3.a.x, global3.a.x))), vec4<bool>(global3.e <= global3.e, global3.c.x | false, any(global3.c.xz), false)))), !(!global3.c), global3.c, global3.c.yw, 0u);
    global2 = global1.x;
    let var_2 = -u_input.b.www;
    return global3.a.x;
}

fn func_1() -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 31u)] == reverseBits(_wgslsmith_sub_u32(51465u, global0[_wgslsmith_index_u32(0u, 31u)]));
    var var_1 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(select(vec3<u32>(4294967295u, global3.e, u_input.a), _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), u_input.d.xyz), all(global3.b)) << (min(vec3<u32>(global0[_wgslsmith_index_u32(24988u, 31u)], 1u, 4294967295u), select(u_input.d.yyw, u_input.d.yxy, global3.b.x)) % vec3<u32>(32u))), vec3<u32>(global3.e, 65082u >> (_wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(global3.e, 31u)]) % 32u), global0[_wgslsmith_index_u32(~u_input.c, 31u)])), 20u)];
    var var_2 = u_input.b.zxy << (~_wgslsmith_div_vec3_u32(vec3<u32>(~var_1.e, _wgslsmith_sub_u32(1u, var_1.e), var_1.e), u_input.d.yxz) % vec3<u32>(32u));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    var var_4 = false;
    return var_2.x;
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = ~(~u_input.d.wx | ~_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(u_input.d.xw, u_input.d.zw), ~u_input.d.zy));
    global0 = array<u32, 31>();
    var var_1 = global1.x;
    var var_2 = !arg_3.c.zz;
    var var_3 = u_input.d.yzw;
    return Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.a) + _wgslsmith_f_op_vec4_f32(global3.a + vec4<f32>(752f, 2102f, -772f, arg_3.a.x))), arg_3.a, select(vec4<bool>(false, all(vec2<bool>(false, true)), select(true, var_2.x, true), true), select(!vec4<bool>(true, var_2.x, var_2.x, arg_3.d.x), func_3(Struct_1(global3.a, global3.b, vec4<bool>(false, var_2.x, var_2.x, arg_3.c.x), vec2<bool>(var_2.x, true), 4294967295u)), global3.b), vec4<bool>(true, global3.c.x, select(var_2.x, var_2.x, arg_3.b.x), 4294967295u != u_input.d.x)))), vec4<bool>(true, true, !global3.b.x, global3.c.x), !vec4<bool>(true, any(arg_3.c.wxx), true, any(arg_3.d)), vec2<bool>(arg_3.c.x, all(!(!global3.c.yxx))), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(arg_1.xw, firstLeadingBit(reverseBits(vec2<u32>(var_3.x, 18786u)))), abs(~arg_1.zz)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 31>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3.a.x, -1532f))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.a.wx)) + global3.a.zz))));
    let var_1 = func_4(-_wgslsmith_mod_i32(-_wgslsmith_sub_i32(0i, u_input.e), _wgslsmith_clamp_i32(-6216i, _wgslsmith_sub_i32(-13437i, 21276i), global1.x)), u_input.d, func_1(), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global3.a * _wgslsmith_f_op_vec4_f32(step(global3.a, global3.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1340f, -574f, global3.a.x, 1165f)), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.d.x, 31u)], 40685u) > min(5611u, global3.e))), global3.b, vec4<bool>(true, true, true, true), !vec2<bool>(var_0.x == -116f, !global3.b.x), _wgslsmith_mod_u32(1u, ~(~u_input.d.x))));
    var var_2 = select(func_4(abs(func_1()), vec4<u32>(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a, 4294967295u), 31u)], 0u, _wgslsmith_mult_u32(1u & u_input.d.x, _wgslsmith_mult_u32(31188u, 1u)), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(0u, 31u)], u_input.c)), abs(global1.x), Struct_1(_wgslsmith_div_vec4_f32(global3.a, _wgslsmith_f_op_vec4_f32(trunc(var_1.a))), vec4<bool>(!global3.c.x, global3.c.x, var_1.c.x, true), !(!global3.b), !(!vec2<bool>(var_1.b.x, false)), firstTrailingBit(firstTrailingBit(global3.e)))).d.x, !(!all(vec3<bool>(false, global3.b.x, false))), var_1.d.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_4(2147483647i, vec4<u32>(global3.e, u_input.a, 1u, global3.e), u_input.e, global4[_wgslsmith_index_u32(global3.e, 20u)]).a.zyy) - global3.a.xyz), global3.a.xxz));
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_div_vec2_u32(max(u_input.d.xy, vec2<u32>(0u, 42992u)), ~u_input.d.xx), select(firstLeadingBit(u_input.d.zy), u_input.d.yy, global3.a.x <= -1403f), global3.d), var_0.x);
}

