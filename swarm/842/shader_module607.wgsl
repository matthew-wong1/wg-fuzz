struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 20>;

var<private> global1: Struct_2;

var<private> global2: Struct_2;

var<private> global3: vec4<u32>;

var<private> global4: Struct_1 = Struct_1(31522i, vec4<i32>(0i, 1i, 2147483647i, 28289i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(654f + 641f) - 1099f)), 1000f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(237f + 1000f), -1000f)))))));
    var var_1 = Struct_3(~(~(global3.x ^ (global3.x << (u_input.b.x % 32u)))), select(~_wgslsmith_add_vec3_u32(abs(u_input.b.yxy), global3.xyy), min(vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, 1u), 31813u, 36649u), ~select(vec3<u32>(14726u, 67947u, 37726u), vec3<u32>(global3.x, u_input.b.x, 0u), true)), (global2.a < -30087i) | (global3.x == global3.x)), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-global1.a, -77805i, ~38085i, -global4.a), ~(~global4.b)), firstLeadingBit(select(global4.b | vec4<i32>(1i, global1.a, 1i, 15747i), ~global4.b, true))));
    let var_2 = var_0.x;
    global1 = Struct_2(0i);
    let var_3 = vec2<bool>(!((_wgslsmith_dot_vec3_u32(vec3<u32>(100412u, 0u, var_1.a), vec3<u32>(23105u, 66110u, 4294967295u)) ^ ~var_1.a) != 71769u), all(vec4<bool>(true, true, true, true)));
    return var_1.b;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec2<i32>, arg_3: bool) -> i32 {
    let var_0 = Struct_3(u_input.b.x, func_3(), Struct_1(_wgslsmith_mult_i32(arg_2.x, 40692i), _wgslsmith_sub_vec4_i32(-vec4<i32>(global4.a, -2147483647i, global2.a, -2147483647i), reverseBits(~vec4<i32>(1i, u_input.a, -76900i, -2147483647i)))));
    var var_1 = vec2<i32>(firstTrailingBit(2147483647i), 0i);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-393f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-711f * 1544f))))), _wgslsmith_f_op_f32(-565f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-450f + 910f)), -701f)));
    global1 = Struct_2(_wgslsmith_mult_i32(~_wgslsmith_dot_vec3_i32(u_input.c, u_input.c) >> ((var_0.b.x >> (_wgslsmith_div_u32(global3.x, 10243u) % 32u)) % 32u), firstLeadingBit(arg_2.x)));
    var var_3 = Struct_2(i32(-1i) * -2147483647i);
    return arg_1;
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> f32 {
    let var_0 = ~vec2<u32>(11508u, ~_wgslsmith_mod_u32(~global3.x, abs(arg_1)));
    global1 = arg_0;
    var var_1 = -275f;
    var var_2 = _wgslsmith_clamp_vec3_i32(~vec3<i32>(func_2(global3.x, global1.a, vec2<i32>(2147483647i, arg_0.a), false) | firstLeadingBit(-75482i), 31121i, 2147483647i), firstTrailingBit(-global4.b.yzz), _wgslsmith_mult_vec3_i32(~vec3<i32>(global1.a, _wgslsmith_sub_i32(-1i, global2.a), ~global2.a), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(global4.b.x, -1i, -2147483647i), vec3<i32>(22857i, global4.b.x, global1.a)) >> (vec3<u32>(global3.x, 0u, arg_1) % vec3<u32>(32u)))));
    global0 = array<vec3<bool>, 20>();
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1154f) * -1000f), _wgslsmith_f_op_f32(floor(-379f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1912f + 751f), _wgslsmith_div_f32(1071f, -1245f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(2305f)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2) -> vec3<u32> {
    global2 = arg_1;
    var var_0 = Struct_1(~global4.a, vec4<i32>(11418i, 1i, _wgslsmith_mod_i32(0i, u_input.a), ~0i));
    var var_1 = ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~select(u_input.b, vec4<u32>(4294967295u, u_input.b.x, 0u, global3.x), true), ~min(vec4<u32>(u_input.b.x, u_input.b.x, 77412u, u_input.b.x), vec4<u32>(4294967295u, global3.x, 0u, 31609u))), _wgslsmith_clamp_u32(~global3.x, 16821u, u_input.b.x) & global3.x);
    let var_2 = Struct_2(_wgslsmith_dot_vec4_i32(max(~firstTrailingBit(vec4<i32>(var_0.a, arg_1.a, global2.a, global2.a)), global4.b & -var_0.b), ~(global4.b & vec4<i32>(68392i, arg_1.a, -9361i, 0i)) << (vec4<u32>(~20232u, ~41899u, 1u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(global3.x, u_input.b.x, 0u, u_input.b.x))) % vec4<u32>(32u))));
    global2 = var_2;
    return ~u_input.b.zxz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(446f - 224f), _wgslsmith_f_op_f32(func_1(Struct_2(-1i), 4294967295u)))), 1555f, -481f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(607f, 808f, -1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(662f, -952f, -189f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1147f, -718f, -113f)), vec3<f32>(-207f, -1607f, 1673f), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, global3.x), 20u)])))), Struct_2(~_wgslsmith_clamp_i32(2147483647i, ~global2.a, 2147483647i)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(Struct_2(34674i), 0u)))))));
    global4 = Struct_1(global1.a, abs(global4.b));
    let var_2 = all(!select(vec3<bool>(true, true, true), !global0[_wgslsmith_index_u32(global3.x, 20u)], select(select(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(global3.x, 20u)], true), vec3<bool>(true, true, true), true)));
    global4 = Struct_1(abs(countOneBits(_wgslsmith_add_i32(global2.a, countOneBits(global4.a)))), _wgslsmith_clamp_vec4_i32(firstTrailingBit(global4.b), vec4<i32>(global1.a, i32(-1i) * -1i, global4.b.x, -15111i), select(max(global4.b, ~global4.b), firstLeadingBit(global4.b), true)));
    var var_3 = vec2<i32>(u_input.a, 60468i);
    var_0 = global3.www;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_dot_vec3_u32(global3.xwx, func_4(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(672f, -1000f, -2066f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-428f, 651f, 507f)))), Struct_2(-6019i | var_3.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1566f, 1686f) + vec2<f32>(-1854f, -325f))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-757f, -1208f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1264f, -316f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-562f, -1000f)))))), _wgslsmith_dot_vec4_i32(-global4.b, firstLeadingBit(_wgslsmith_clamp_vec4_i32(-global4.b, select(vec4<i32>(77171i, 20857i, var_3.x, var_3.x), vec4<i32>(global4.b.x, -24442i, 1i, global4.a), vec4<bool>(var_2, var_2, false, var_2)), global4.b))));
}

