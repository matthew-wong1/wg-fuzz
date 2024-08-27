struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22>;

var<private> global1: array<i32, 5> = array<i32, 5>(i32(-2147483648), 25142i, 1i, 62954i, -62914i);

var<private> global2: Struct_2 = Struct_2(false, 14930u);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: vec3<bool>) -> u32 {
    global2 = global0[_wgslsmith_index_u32(~firstTrailingBit(4294967295u & _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 67820u) << (arg_0.zz % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, arg_1), vec2<u32>(global2.b, u_input.a)))), 22u)];
    let var_0 = vec3<u32>(abs(_wgslsmith_add_u32(reverseBits(arg_0.x), min(0u << (0u % 32u), ~21754u))), arg_1, ~4294967295u);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~max(var_0.zy << (~vec2<u32>(arg_0.x, u_input.a) % vec2<u32>(32u)), arg_0.yy), _wgslsmith_clamp_vec2_u32(~arg_0.xz, ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 0u), var_0.zx), vec2<u32>(~(4294967295u | arg_1), ~1u))), 22u)];
    global2 = Struct_2(!(!var_1.a), _wgslsmith_div_u32(~4294967295u, countOneBits(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, 0u), 1u))));
    global2 = global0[_wgslsmith_index_u32(~4294967295u, 22u)];
    return var_0.x;
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1866f);
    global1 = array<i32, 5>();
    global2 = Struct_2(!any(vec2<bool>(global2.a, false)) || false, func_3(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, global2.b, 4294967295u) ^ vec4<u32>(global2.b, 13371u, global2.b, 51167u), ~select(vec4<u32>(u_input.a, u_input.a, 4294967295u, 24307u), vec4<u32>(global2.b, global2.b, global2.b, global2.b), vec4<bool>(true, true, global2.a, global2.a))), select(~1u, 1u, global2.b < u_input.a), !(!(!vec3<bool>(global2.a, true, global2.a)))));
    let var_1 = false;
    let var_2 = 0i;
    return true;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-global1[_wgslsmith_index_u32(arg_3.b, 5u)], _wgslsmith_div_i32(select(global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(25679u, 5u)], true), _wgslsmith_sub_i32(39747i, global1[_wgslsmith_index_u32(u_input.a, 5u)])), 39206i, max(global1[_wgslsmith_index_u32(u_input.a, 5u)] << (u_input.a % 32u), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(global2.b, 5u)], -2147483647i))) >> (~(~_wgslsmith_div_vec4_u32(vec4<u32>(global2.b, 6370u, 2554u, 1u), vec4<u32>(u_input.a, global2.b, global2.b, u_input.a))) % vec4<u32>(32u)), vec4<i32>(-1i, 29464i, -12782i, _wgslsmith_sub_i32(-reverseBits(0i), 1i)));
    var var_1 = Struct_1(!arg_2.zz, -368f);
    return Struct_1(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - -880f));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = func_4(-871f, func_2(global1[_wgslsmith_index_u32(~10552u, 5u)]), arg_1, Struct_2(true == all(arg_3.a), _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(u_input.a, 0u, 0u, 82102u)), abs(~vec4<u32>(u_input.a, 1u, 3246u, arg_0.x)))));
    var var_1 = Struct_2(false, abs(min(26281u, global2.b & global2.b)) | (arg_0.x << ((_wgslsmith_mult_u32(global2.b, global2.b) & arg_2.b) % 32u)));
    let var_2 = arg_3;
    let var_3 = Struct_1(!arg_3.a, _wgslsmith_f_op_f32(-1515f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1526f)), 779f)));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.b, 227f, arg_3.b))), vec3<f32>(var_2.b, arg_3.b, -112f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, 1592f, var_2.b))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.b, var_0.b, var_0.b), vec3<f32>(var_2.b, 1000f, arg_3.b), false))))));
    return ~vec3<i32>(global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(arg_0.yx, firstLeadingBit(arg_0.xy))), 5u)], -9153i, global1[_wgslsmith_index_u32(0u, 5u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = Struct_1(vec2<bool>(max(~(-6125i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global1[_wgslsmith_index_u32(u_input.a, 5u)], global1[_wgslsmith_index_u32(global2.b, 5u)]), vec3<i32>(-34203i, global1[_wgslsmith_index_u32(u_input.a, 5u)], 2147483647i))) <= _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(108585u, 5u)], abs(2147483647i)), !all(select(vec4<bool>(false, global2.a, global2.a, true), vec4<bool>(global2.a, global2.a, global2.a, true), global2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1220f))));
    var var_2 = _wgslsmith_clamp_i32(firstLeadingBit(2147483647i), select(-2147483647i, min(_wgslsmith_dot_vec2_i32(-vec2<i32>(33345i, -18648i), _wgslsmith_mult_vec2_i32(vec2<i32>(3255i, global1[_wgslsmith_index_u32(4294967295u, 5u)]), vec2<i32>(1i, 32010i))), ~min(-59090i, global1[_wgslsmith_index_u32(u_input.a, 5u)])), -global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, 0u), 5u)] == global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(89679u), _wgslsmith_div_u32(global2.b, 4294967295u)), 5u)]), _wgslsmith_dot_vec3_i32(max(_wgslsmith_add_vec3_i32(vec3<i32>(-34209i, global1[_wgslsmith_index_u32(global2.b, 5u)], global1[_wgslsmith_index_u32(u_input.a, 5u)]), _wgslsmith_sub_vec3_i32(vec3<i32>(-6764i, global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(42836u, 5u)]), vec3<i32>(-15099i, global1[_wgslsmith_index_u32(25925u, 5u)], -10586i))), ~func_1(vec3<u32>(u_input.a, 57551u, 47139u), vec3<bool>(global2.a, true, var_1.a.x), global0[_wgslsmith_index_u32(u_input.a, 22u)], Struct_1(vec2<bool>(false, true), var_1.b))), ~vec3<i32>(1i, global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(global2.b, 5u)]) & select(min(vec3<i32>(global1[_wgslsmith_index_u32(global2.b, 5u)], global1[_wgslsmith_index_u32(12995u, 5u)], global1[_wgslsmith_index_u32(0u, 5u)]), vec3<i32>(2960i, 59305i, 0i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, global1[_wgslsmith_index_u32(global2.b, 5u)], global1[_wgslsmith_index_u32(10775u, 5u)]), vec3<i32>(1i, 2147483647i, global1[_wgslsmith_index_u32(0u, 5u)])), vec3<bool>(global2.a, true, true))));
    let var_3 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b)))))), !(-_wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.a, 5u)], -37266i) < (_wgslsmith_dot_vec2_i32(vec2<i32>(-22411i, 1156i), vec2<i32>(25997i, 1i)) & _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(global2.b, 5u)], global1[_wgslsmith_index_u32(global2.b, 5u)], 30009i))), select(!(!vec3<bool>(global2.a, var_1.a.x, var_1.a.x)), select(vec3<bool>(var_1.a.x, false, !var_1.a.x), !select(vec3<bool>(true, false, var_1.a.x), vec3<bool>(var_1.a.x, true, var_1.a.x), vec3<bool>(var_1.a.x, global2.a, true)), func_4(_wgslsmith_f_op_f32(var_1.b * -1155f), true, !vec3<bool>(global2.a, true, var_1.a.x), global0[_wgslsmith_index_u32(u_input.a, 22u)]).a.x), select(vec3<bool>(true, 42456u <= u_input.a, true), !vec3<bool>(false, var_1.a.x, true), -351f > _wgslsmith_f_op_f32(var_1.b * var_1.b))), global0[_wgslsmith_index_u32(0u, 22u)]);
    var_1 = Struct_1(var_1.a, var_3.b);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(global2.b, u_input.a, 79905u, 1u)) & ~(vec4<u32>(38289u, global2.b, global2.b, u_input.a) >> (vec4<u32>(u_input.a, 20269u, 18143u, 1682u) % vec4<u32>(32u))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 27954u, u_input.a, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, u_input.a), select(vec4<u32>(1u, u_input.a, u_input.a, global2.b), vec4<u32>(1u, global2.b, 4294967295u, 1u), vec4<bool>(var_1.a.x, true, false, global2.a)))), max(4294967295u, global2.b & _wgslsmith_div_u32(u_input.a, ~u_input.a)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(countOneBits(4294967295u), global2.b, _wgslsmith_add_u32(1u, global2.b)), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, global2.b), vec3<u32>(13370u, global2.b, u_input.a))), (max(vec3<u32>(0u, u_input.a, 27693u), vec3<u32>(global2.b, global2.b, u_input.a)) << (vec3<u32>(global2.b, global2.b, 0u) % vec3<u32>(32u))) ^ vec3<u32>(~global2.b, abs(u_input.a), ~42404u)), vec3<u32>(u_input.a, 47509u, ~firstTrailingBit(~4294967295u)), ~u_input.a);
}

