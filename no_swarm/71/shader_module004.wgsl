struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(4294967295u, 39358u, 17072u, 33357u, 4294967295u, 116522u, 89181u, 17622u, 4294967295u, 1u, 8883u, 173044u, 42579u, 26875u, 1u, 38907u, 86572u, 3959u, 4294967295u, 39753u, 1u, 4294967295u, 4294967295u, 42550u, 57084u, 1u, 58408u);

var<private> global1: array<u32, 5>;

var<private> global2: array<i32, 32>;

var<private> global3: vec3<f32> = vec3<f32>(1129f, -402f, 521f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = Struct_2(arg_1.a, 15308i, abs(select(arg_1.c, arg_0, arg_1.a)) & reverseBits(abs(arg_0 ^ -39089i)), _wgslsmith_add_vec3_i32(~arg_1.d, arg_1.d));
    let var_1 = Struct_1(select(false, true, arg_1.a), _wgslsmith_f_op_vec2_f32(floor(global3.yz)), vec4<f32>(global3.x, 1503f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.x * 1340f), global3.x))), 1471f));
    global0 = array<u32, 27>();
    return vec3<bool>(!(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -646f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-327f, var_1.b.x, var_1.a)) + _wgslsmith_f_op_f32(-var_1.c.x))), true, var_0.a);
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, global3.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 705f, global3.x, -950f) * vec4<f32>(global3.x, -478f, -163f, -1199f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, -2050f, 1082f))))));
    let var_1 = any(!select(vec3<bool>(true, true, true), !func_3(-41377i, Struct_2(true, -1i, global2[_wgslsmith_index_u32(23137u, 32u)], vec3<i32>(global2[_wgslsmith_index_u32(arg_0.x, 32u)], 1i, 20344i))), func_3(global2[_wgslsmith_index_u32(~u_input.a, 32u)], Struct_2(true, global2[_wgslsmith_index_u32(35615u, 32u)], -42334i, vec3<i32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 32u)], global2[_wgslsmith_index_u32(arg_0.x, 32u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(87915u, 5u)], 32u)])))));
    global1 = array<u32, 5>();
    var var_2 = ~16210u;
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -175f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1519f, global3.x)), _wgslsmith_f_op_f32(1232f + 750f)))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(global3.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global3.x), global3.x, _wgslsmith_f_op_f32(exp2(global3.x)), global3.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1296f, 515f, -1276f, var_0.x))), any(vec4<bool>(true, var_1, false, false))))));
    return Struct_2(all(!(!(!vec3<bool>(var_1, var_1, var_1)))), (~(-11755i) | countOneBits(0i >> (u_input.a % 32u))) << (_wgslsmith_dot_vec3_u32(select(vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 5u)], arg_0.x, arg_0.x), _wgslsmith_sub_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 5u)], 3428u, global1[_wgslsmith_index_u32(12648u, 5u)]), vec3<u32>(arg_0.x, 1u, 14965u)), func_3(-98285i, Struct_2(false, 1i, global2[_wgslsmith_index_u32(arg_0.x, 32u)], vec3<i32>(global2[_wgslsmith_index_u32(60027u, 32u)], global2[_wgslsmith_index_u32(u_input.a, 32u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 32u)])))), _wgslsmith_mod_vec3_u32(select(vec3<u32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20877u, 27u)], 5u)], 4294967295u, global0[_wgslsmith_index_u32(arg_0.x, 27u)]), vec3<u32>(arg_0.x, arg_0.x, global1[_wgslsmith_index_u32(0u, 5u)]), false), ~vec3<u32>(1u, 4294967295u, 4294967295u))) % 32u), _wgslsmith_dot_vec2_i32(max(abs(firstTrailingBit(vec2<i32>(global2[_wgslsmith_index_u32(1256u, 32u)], -36909i))), firstLeadingBit(vec2<i32>(global2[_wgslsmith_index_u32(5189u, 32u)], global2[_wgslsmith_index_u32(48001u, 32u)]))), vec2<i32>(countOneBits(select(-2147483647i, global2[_wgslsmith_index_u32(0u, 32u)], var_1)), global2[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(1u, 27u)]), 32u)])), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(global2[_wgslsmith_index_u32(1u, 32u)], 9975i, 29653i)), vec3<i32>(-2147483647i, 8890i, 1i) | vec3<i32>(global2[_wgslsmith_index_u32(39269u, 32u)], -46038i, 72048i)), (vec3<i32>(25356i, global2[_wgslsmith_index_u32(4294967295u, 32u)], 1i) & vec3<i32>(global2[_wgslsmith_index_u32(arg_0.x, 32u)], 0i, 25167i)) | -vec3<i32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15907u, 5u)], 32u)], global2[_wgslsmith_index_u32(u_input.a, 32u)], global2[_wgslsmith_index_u32(7993u, 32u)])), vec3<i32>(abs(global2[_wgslsmith_index_u32(10756u, 32u)]), ~global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26318u, 5u)], 32u)], countOneBits(0i)) >> ((~vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 5u)], 4294967295u) | ~vec3<u32>(1u, 4294967295u, 1u)) % vec3<u32>(32u)), vec3<i32>(global2[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(~13055u, 27u)]), 32u)], global2[_wgslsmith_index_u32(12335u, 32u)], firstTrailingBit(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)] << (global0[_wgslsmith_index_u32(u_input.a, 27u)] % 32u), 32u)]))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: vec4<f32>) -> vec3<i32> {
    var var_0 = !vec3<bool>(false, !(!arg_1.a | (arg_1.a & arg_0.a)), !(!(!arg_1.a)));
    global3 = _wgslsmith_f_op_vec3_f32(trunc(arg_3.yzz));
    let var_1 = Struct_1(!(!all(var_0.xx)), vec2<f32>(arg_3.x, global3.x), arg_3);
    let var_2 = arg_3.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(335f - 1000f) - _wgslsmith_f_op_f32(max(-1411f, arg_3.x))), global3.x)) + _wgslsmith_f_op_f32(max(532f, _wgslsmith_f_op_f32(trunc(-956f)))));
    var_0 = vec3<bool>(true, true, var_1.a);
    return _wgslsmith_mod_vec3_i32(~firstLeadingBit(arg_0.d | vec3<i32>(-20675i, arg_0.c, 89154i)) ^ arg_1.d, _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-arg_1.c, ~12888i), -21604i, 1i >> (~global0[_wgslsmith_index_u32(1u, 27u)] % 32u)), arg_0.d));
}

fn func_1(arg_0: f32) -> u32 {
    global2 = array<i32, 32>();
    var var_0 = !select(vec2<bool>(true, true), vec2<bool>(true, true), false);
    var var_1 = -func_4(func_2(select(~vec2<u32>(u_input.a, 9239u), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], u_input.a) & vec2<u32>(0u, 16048u), global0[_wgslsmith_index_u32(0u, 27u)] > 45544u)), Struct_2(true, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(91696u, 32u)]) << (vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(0u, 5u)]) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(47976u, 5u)], 32u)]), vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 32u)], -1i))), ~abs(global2[_wgslsmith_index_u32(34590u, 32u)]), firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(19384u, 32u)], -12810i, -1i), vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 32u)], global2[_wgslsmith_index_u32(27620u, 32u)])))), 181f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, global3.x, 2025f, global3.x)))) - vec4<f32>(-567f, _wgslsmith_f_op_f32(trunc(139f)), _wgslsmith_f_op_f32(-global3.x), -771f)));
    global0 = array<u32, 27>();
    let var_2 = Struct_1(false, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global3.yy * global3.xx))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(413f, 955f, -391f, 1000f), vec4<f32>(global3.x, arg_0, global3.x, arg_0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2005f, -1338f, 999f, 1137f)))));
    return global1[_wgslsmith_index_u32(u_input.a, 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23685u, 27u)], 27u)], 32u)], 0i), min(vec4<i32>(global2[_wgslsmith_index_u32(73251u, 32u)], global2[_wgslsmith_index_u32(1u, 32u)], global2[_wgslsmith_index_u32(10099u, 32u)], 11466i), vec4<i32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 32u)], -27469i, global2[_wgslsmith_index_u32(4925u, 32u)], -14599i))), _wgslsmith_mult_vec4_i32(-vec4<i32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45376u, 5u)], 5u)], 32u)], -1588i, 0i, 61740i), -vec4<i32>(global2[_wgslsmith_index_u32(1u, 32u)], 1i, -19825i, global2[_wgslsmith_index_u32(4294967295u, 32u)]))) << (vec4<u32>(~(~func_1(-855f)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(144762u, 4294967295u, (global0[_wgslsmith_index_u32(1u, 27u)] << (global0[_wgslsmith_index_u32(60214u, 27u)] % 32u)) ^ _wgslsmith_add_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 5u)], global1[_wgslsmith_index_u32(0u, 5u)])), 27u)], 91636u, firstTrailingBit(~(~global1[_wgslsmith_index_u32(55146u, 5u)]))) % vec4<u32>(32u));
    global2 = array<i32, 32>();
    let var_1 = global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.a, 27u)], 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(select(-var_0.wyx, var_0.zyz, true)));
}

