struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<i32>(-25077i, -27934i)), Struct_1(vec2<i32>(49242i, -7512i)), Struct_1(vec2<i32>(0i, 8502i)));

var<private> global2: array<Struct_1, 22>;

var<private> global3: f32;

var<private> global4: array<u32, 32>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    global0 = array<f32, 22>();
    var var_0 = Struct_1(_wgslsmith_sub_vec2_i32(abs(~u_input.a.yx) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)], 32u)], 32u)], 4294967295u) << (vec2<u32>(99310u, 707u) % vec2<u32>(32u)), ~vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 32u)], 32u)], 1u), select(vec2<u32>(global4[_wgslsmith_index_u32(11175u, 32u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(38922u, 32u)], 32u)]), vec2<u32>(global4[_wgslsmith_index_u32(0u, 32u)], global4[_wgslsmith_index_u32(1u, 32u)]), false)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(u_input.a.xx, abs(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(u_input.a.x, -11946i))))));
    var var_1 = global2[_wgslsmith_index_u32(35247u, 22u)];
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(~41649u, 4294967295u) << ((~vec2<u32>(global4[_wgslsmith_index_u32(4294967295u, 32u)], 1u) | reverseBits(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1085u, 32u)], 32u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(23093u, 32u)], 32u)], 32u)], 32u)]))) % vec2<u32>(32u))), vec2<u32>(global4[_wgslsmith_index_u32(5775u, 32u)], global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(1u, 32u)] | global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)], firstLeadingBit(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(34239u, 32u)], 32u)], 32u)], 32u)], 32u)])), global4[_wgslsmith_index_u32(1u, 32u)], _wgslsmith_clamp_u32(_wgslsmith_div_u32(global4[_wgslsmith_index_u32(1u, 32u)], 4106u), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 32u)], 32u)] >> (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)] % 32u), 32u)], 56812u)), 32u)])), 22u)];
    let var_2 = vec4<i32>(var_0.a.x, ~countOneBits(31505i) & var_0.a.x, _wgslsmith_mult_i32(var_1.a.x, var_1.a.x), ~65668i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1050f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 22u)] + -114f))) - _wgslsmith_f_op_f32(trunc(-1000f)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: u32) -> vec2<i32> {
    var var_0 = global1[_wgslsmith_index_u32(arg_3, 3u)];
    let var_1 = Struct_1(-var_0.a);
    global4 = array<u32, 32>();
    global2 = array<Struct_1, 22>();
    global1 = array<Struct_1, 3>();
    return reverseBits(vec2<i32>(0i, u_input.a.x));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: i32) -> u32 {
    var var_0 = Struct_1(max(arg_1 ^ -_wgslsmith_div_vec2_i32(vec2<i32>(3994i, -34125i), vec2<i32>(arg_1.x, u_input.a.x)), func_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 32u)], 22u)], -650f, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 32u)], 22u)]) * vec3<f32>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)], 32u)], 32u)], 32u)], 32u)], 32u)], 22u)], 552f, -1000f)))), global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 56076u, 4294967295u, global4[_wgslsmith_index_u32(1u, 32u)]), vec4<u32>(global4[_wgslsmith_index_u32(12295u, 32u)], global4[_wgslsmith_index_u32(1u, 32u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(45589u, 32u)], 32u)], 32u)], global4[_wgslsmith_index_u32(0u, 32u)])), 32u)], 32u)], 22u)], vec3<f32>(global0[_wgslsmith_index_u32(1u, 22u)], _wgslsmith_f_op_f32(func_3()), 1279f), global4[_wgslsmith_index_u32(countOneBits(reverseBits(1u)), 32u)])));
    let var_1 = vec2<i32>(-37168i, max(arg_2, firstLeadingBit(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(19049i, 5525i, arg_1.x, 32279i)), max(vec4<i32>(u_input.a.x, 20577i, 1i, 0i), vec4<i32>(21185i, -917i, -2147483647i, 26036i))))));
    var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(-87173i, ~(-2147483647i)), _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a.x, firstTrailingBit(arg_1.x)), vec2<i32>(2892i, var_0.a.x)), -(~min(vec2<i32>(2147483647i, arg_1.x), vec2<i32>(2147483647i, var_0.a.x)))));
    var var_2 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(reverseBits(358u), select(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(6114u, 32u)], 32u)], true)), ~vec2<u32>(global4[_wgslsmith_index_u32(4294967295u, 32u)], global4[_wgslsmith_index_u32(12879u, 32u)])), vec2<u32>(select(firstLeadingBit(global4[_wgslsmith_index_u32(40002u, 32u)]), global4[_wgslsmith_index_u32(8022u, 32u)], true), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~1u, ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(7383u, 32u)], 32u)], 32u)], 32u)], 32u)], 32u)]), 32u)])), _wgslsmith_mod_vec2_u32(reverseBits(~(~vec2<u32>(17859u, 0u))), max(vec2<u32>(2091u, _wgslsmith_mod_u32(15638u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(22770u, 32u)], 32u)], 32u)])), vec2<u32>(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 32u)], 32u)], _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 32u)], 32u)]), vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(79251u, 32u)], 32u)], 32u)], 32u)], 32u)], 32u)], 4294967295u))))));
    var_0 = global1[_wgslsmith_index_u32(~51345u, 3u)];
    return 34827u;
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(func_2(true, u_input.a.yx << (vec2<u32>(1u, 1195u) % vec2<u32>(32u)), -arg_0.a.x) << (global4[_wgslsmith_index_u32(1u, 32u)] % 32u), global4[_wgslsmith_index_u32(reverseBits(29910u), 32u)], ~4294967295u, reverseBits(global4[_wgslsmith_index_u32(1u, 32u)])), _wgslsmith_div_vec4_u32(abs(~vec4<u32>(34045u, 22948u, global4[_wgslsmith_index_u32(17434u, 32u)], 4294967295u)) & (firstTrailingBit(vec4<u32>(49558u, global4[_wgslsmith_index_u32(54912u, 32u)], global4[_wgslsmith_index_u32(1u, 32u)], 0u)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(25963u, 1122u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(22281u, 32u)], 32u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)], 32u)], 32u)]), vec4<u32>(global4[_wgslsmith_index_u32(30440u, 32u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 32u)], 32u)], global4[_wgslsmith_index_u32(1u, 32u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)]), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(31117u, 32u)], 32u)], 32u)], 32u)], 32u)], 7689u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(57182u, 32u)], 32u)], 32u)], 32u)], 23121u))), reverseBits(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(17799u, 32u)], 32u)], global4[_wgslsmith_index_u32(4294967295u, 32u)], 5517u, 33754u) | ~vec4<u32>(global4[_wgslsmith_index_u32(15855u, 32u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(16554u, 32u)], 32u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(38523u, 32u)], 32u)], global4[_wgslsmith_index_u32(1u, 32u)]))));
    global1 = array<Struct_1, 3>();
    var var_1 = false;
    let var_2 = vec3<bool>(select(any(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), true, true), !(all(vec3<bool>(true, false, false)) & false), all(vec2<bool>(true || (global0[_wgslsmith_index_u32(var_0.x, 22u)] <= 2028f), true)));
    global1 = array<Struct_1, 3>();
    return vec2<u32>(4294967295u, global4[_wgslsmith_index_u32(4294967295u, 32u)]);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> vec2<u32> {
    var var_0 = 4294967295u;
    var var_1 = Struct_1(-arg_1.a);
    var var_2 = !any(vec2<bool>(all(vec2<bool>(true, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    return func_1(Struct_1(_wgslsmith_add_vec2_i32(abs(vec2<i32>(11321i, -33646i)), _wgslsmith_mult_vec2_i32(-vec2<i32>(-1i, u_input.a.x), vec2<i32>(-1i, -28003i)))));
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<u32>) -> vec3<f32> {
    var var_0 = 56496i == arg_1.a.x;
    let var_1 = _wgslsmith_clamp_u32(~((17544u >> (arg_2.x % 32u)) >> (_wgslsmith_mod_u32(arg_2.x, global4[_wgslsmith_index_u32(51160u, 32u)]) % 32u)), ~max(arg_2.x, ~arg_2.x), _wgslsmith_mult_u32(~35107u, arg_0.x)) << (0u % 32u);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-157f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(65966u, 22u)], global0[_wgslsmith_index_u32(var_1, 22u)]))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3()))))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-905f))))))));
    global1 = array<Struct_1, 3>();
    let var_3 = global1[_wgslsmith_index_u32(10214u, 3u)];
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-794f, global0[_wgslsmith_index_u32(10390u, 22u)], -1888f) - vec3<f32>(global0[_wgslsmith_index_u32(arg_0.x, 22u)], 1007f, 288f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(var_1, 22u)], 256f, var_2)))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 22u)], 1646f, global0[_wgslsmith_index_u32(5607u, 22u)])))), vec3<f32>(_wgslsmith_div_f32(var_2, -300f), _wgslsmith_f_op_f32(802f - global0[_wgslsmith_index_u32(1u, 22u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x, 22u)])))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(329f, _wgslsmith_f_op_f32(-1f), 1183f))));
}

fn func_7(arg_0: vec3<f32>, arg_1: Struct_1) -> StorageBuffer {
    global0 = array<f32, 22>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_0))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_0, _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, -1273f, global0[_wgslsmith_index_u32(24140u, 22u)]), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, 929f, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 32u)], 22u)]), vec3<f32>(477f, 995f, 246f))))))));
    global0 = array<f32, 22>();
    global2 = array<Struct_1, 22>();
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1733f * -601f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(974f, arg_0.x))))));
    return StorageBuffer(-1868f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(1u, 22u)], 450f, -1843f, 360f), vec4<f32>(-166f, arg_0.x, 744f, -473f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-234f, 564f, -183f, -1511f) - vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], 1018f, -387f, -214f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 22>();
    let var_0 = 2147483647i;
    global1 = array<Struct_1, 3>();
    var var_1 = countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(1440i, u_input.a.x & var_0, u_input.a.x, u_input.a.x), ~(~vec4<i32>(var_0, 0i, 48792i, 0i))));
    global1 = array<Struct_1, 3>();
    global1 = array<Struct_1, 3>();
    let var_2 = global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(43549u, 32u)], 22u)];
    global3 = -383f;
    global1 = array<Struct_1, 3>();
    let x = u_input.a;
    s_output = func_7(_wgslsmith_f_op_vec3_f32(func_6(func_5(Struct_1(var_2.a >> (vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 32u)], 32u)], 32u)], 32u)], global4[_wgslsmith_index_u32(4294967295u, 32u)]) % vec2<u32>(32u))), Struct_1(var_2.a), func_1(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(87698u, 32u)] ^ global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(71613u, 32u)], 32u)], 32u)], 32u)], 3u)])), global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 32u)], 3u)], vec3<u32>(global4[_wgslsmith_index_u32(abs(0u | global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 32u)], 32u)]), 32u)], countOneBits(max(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(32955u, 32u)], 32u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(84061u, 32u)], 32u)])), _wgslsmith_dot_vec2_u32(~vec2<u32>(30344u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 32u)], 32u)]), ~vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(23717u, 32u)], 32u)], global4[_wgslsmith_index_u32(45742u, 32u)]))))), Struct_1(~abs(var_1.wy) << (vec2<u32>(0u, func_5(Struct_1(vec2<i32>(24842i, 0i)), Struct_1(var_2.a), vec2<u32>(10224u, 18147u)).x) % vec2<u32>(32u))));
}

