struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<u32>(4294967295u, 9395u, 8278u)), Struct_1(vec3<u32>(0u, 1u, 1u)), Struct_1(vec3<u32>(4294967295u, 35613u, 637u)), Struct_1(vec3<u32>(4294967295u, 23360u, 39524u)), Struct_1(vec3<u32>(0u, 1u, 0u)), Struct_1(vec3<u32>(1u, 0u, 4294967295u)), Struct_1(vec3<u32>(1u, 4294967295u, 0u)), Struct_1(vec3<u32>(0u, 0u, 0u)), Struct_1(vec3<u32>(20101u, 0u, 4294967295u)), Struct_1(vec3<u32>(0u, 21314u, 35109u)), Struct_1(vec3<u32>(4294967295u, 1u, 0u)), Struct_1(vec3<u32>(74235u, 32083u, 4294967295u)), Struct_1(vec3<u32>(23736u, 4294967295u, 72183u)), Struct_1(vec3<u32>(2266u, 31905u, 36970u)), Struct_1(vec3<u32>(1u, 1u, 1u)), Struct_1(vec3<u32>(5203u, 0u, 7909u)), Struct_1(vec3<u32>(64448u, 0u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 0u, 27232u)), Struct_1(vec3<u32>(7825u, 20245u, 4294967295u)), Struct_1(vec3<u32>(39236u, 73125u, 1u)), Struct_1(vec3<u32>(0u, 32917u, 51115u)), Struct_1(vec3<u32>(23000u, 22552u, 1u)), Struct_1(vec3<u32>(18307u, 79664u, 4294967295u)), Struct_1(vec3<u32>(55335u, 4294967295u, 0u)), Struct_1(vec3<u32>(8345u, 38641u, 4294967295u)), Struct_1(vec3<u32>(1u, 113999u, 0u)), Struct_1(vec3<u32>(4294967295u, 1u, 59548u)), Struct_1(vec3<u32>(0u, 21497u, 1u)));

var<private> global1: array<f32, 19>;

var<private> global2: array<u32, 18>;

var<private> global3: vec4<i32>;

var<private> global4: vec4<bool> = vec4<bool>(true, false, true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> u32 {
    let var_0 = ~955u;
    global0 = array<Struct_1, 28>();
    var var_1 = select(select(vec4<bool>(all(select(vec2<bool>(false, arg_1), global4.yy, global4.zx)), true, true, global4.x & arg_1), vec4<bool>(global4.x, true, _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(58847u, 19u)])) < 1000f, !(false & arg_1)), select(!(!vec4<bool>(arg_1, false, arg_1, global4.x)), !vec4<bool>(false, arg_1, false, false), all(select(vec4<bool>(true, arg_1, arg_1, global4.x), vec4<bool>(global4.x, true, arg_1, arg_1), vec4<bool>(false, false, arg_1, false))))), vec4<bool>(-10399i >= global3.x, all(select(vec3<bool>(true, true, true), !vec3<bool>(arg_1, arg_1, false), false)), !(!arg_1), arg_1), vec4<bool>(global4.x, false, true, select(!(global4.x | true), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 19u)]) == _wgslsmith_f_op_f32(f32(-1f) * -925f), select(all(vec4<bool>(false, true, arg_1, arg_1)), global4.x, false))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-998f, _wgslsmith_f_op_f32(448f + 917f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, 54368u) >> (~u_input.c % 32u), 19u)], -1329f, all(select(var_1.zwz, vec3<bool>(var_1.x, var_1.x, arg_1), global4.x)))))), global1[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_dot_vec2_u32(select(vec2<u32>(31370u, 1u), vec2<u32>(u_input.b, 0u), global4.x), vec2<u32>(0u, 7420u))), 19u)]);
    let var_3 = select(~vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_0.x, global3.x), vec3<i32>(10686i, u_input.d, u_input.e)), _wgslsmith_add_i32(_wgslsmith_mult_i32(-1i, global3.x), arg_0.x)), global3.zx, !vec2<bool>(global4.x, true));
    return firstTrailingBit(global2[_wgslsmith_index_u32(u_input.b, 18u)]);
}

fn func_2() -> bool {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.c, func_3(-vec4<i32>(u_input.d, u_input.d, -79205i, _wgslsmith_sub_i32(global3.x, 0i)), 1008f <= _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 19u)]))), 28u)];
    let var_1 = global4.x;
    global2 = array<u32, 18>();
    var var_2 = _wgslsmith_mod_vec3_u32(var_0.a, ~var_0.a);
    var_2 = var_0.a ^ (_wgslsmith_div_vec3_u32(~_wgslsmith_clamp_vec3_u32(var_0.a, var_0.a, vec3<u32>(var_2.x, 4294967295u, 8965u)), select(~var_0.a, ~var_0.a, global4.x && false)) ^ ~(_wgslsmith_mod_vec3_u32(vec3<u32>(86185u, 4130u, global2[_wgslsmith_index_u32(4294967295u, 18u)]), var_0.a) | _wgslsmith_div_vec3_u32(vec3<u32>(0u, 0u, var_2.x), var_0.a)));
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~42735u, global2[_wgslsmith_index_u32(~(~4294967295u), 18u)], ~(~(~countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(922u, 18u)], 18u)])))), 28u)];
    var var_1 = Struct_1(max(var_0.a, vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.a << (vec3<u32>(129250u, u_input.b, 1u) % vec3<u32>(32u)), var_0.a), var_0.a.x, _wgslsmith_dot_vec3_u32(var_0.a, vec3<u32>(27584u, 1u, var_0.a.x)) << (abs(39890u) % 32u))));
    var var_2 = var_0.a >> (~var_1.a % vec3<u32>(32u));
    global0 = array<Struct_1, 28>();
    global4 = select(vec4<bool>(~17960u <= (var_1.a.x | ~4294967295u), true, !all(!vec2<bool>(global4.x, global4.x)), any(vec4<bool>(!global4.x, true, true, var_2.x >= 4294967295u))), vec4<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~var_0.a.x, ~var_0.a.x), 18u)] > 4294967295u, select(true, global4.x, false) && true, all(select(vec2<bool>(false, global4.x), select(vec2<bool>(global4.x, global4.x), vec2<bool>(true, global4.x), false), vec2<bool>(global4.x, true)))), vec4<bool>(any(!vec2<bool>(global4.x, global4.x)) == false, false, func_2(), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(max(2244u, 4294967295u), 19u)]) <= 1366f));
    return global0[_wgslsmith_index_u32(44042u, 28u)];
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> f32 {
    var var_0 = true;
    global4 = !vec4<bool>(false, any(vec3<bool>(all(vec2<bool>(global4.x, arg_1)), all(vec4<bool>(arg_1, arg_1, false, global4.x)), true)), !(!arg_1) | arg_1, !(!any(vec4<bool>(false, arg_1, true, true))));
    global1 = array<f32, 19>();
    var var_1 = global0[_wgslsmith_index_u32(func_3(_wgslsmith_div_vec4_i32(~(vec4<i32>(global3.x, -3445i, -45511i, u_input.d) ^ abs(vec4<i32>(u_input.a.x, global3.x, u_input.d, -1i))), vec4<i32>(global3.x, 0i, u_input.d, -global3.x) >> ((max(vec4<u32>(122102u, 17909u, 4294967295u, u_input.b), vec4<u32>(u_input.c, 25067u, arg_0.a.x, u_input.c)) | (vec4<u32>(global2[_wgslsmith_index_u32(arg_2.a.x, 18u)], arg_2.a.x, 0u, arg_2.a.x) & vec4<u32>(u_input.c, 4294967295u, 1u, u_input.c))) % vec4<u32>(32u))), ~arg_0.a.x > u_input.c), 28u)];
    var_1 = global0[_wgslsmith_index_u32(min(max(_wgslsmith_mult_u32(14538u, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(0u, 18u)], _wgslsmith_clamp_u32(arg_0.a.x, 0u, u_input.b))), arg_0.a.x), _wgslsmith_div_u32(18249u, global2[_wgslsmith_index_u32(48964u, 18u)])), 28u)];
    return _wgslsmith_f_op_f32(-521f - -1024f);
}

fn func_5(arg_0: f32) -> vec4<u32> {
    var var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(0u, 18u)]), 18u)]), 19u)];
    var var_1 = 2147483647i;
    var var_2 = global3.x;
    let var_3 = 1u;
    var_2 = _wgslsmith_add_i32(1i, u_input.d ^ u_input.d);
    return ~firstTrailingBit(abs(~(~vec4<u32>(28833u, global2[_wgslsmith_index_u32(var_3, 18u)], var_3, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(global4.x == true, global4.x, false, any(vec4<bool>(false, _wgslsmith_mult_u32(4294967295u, u_input.b) < 44495u, false, global4.x)));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(reverseBits(16741u), ~u_input.b, var_0.x), 35779u) << (4294967295u % 32u), 28u)];
    let var_2 = var_1.a.x;
    var var_3 = vec3<f32>(-1390f, _wgslsmith_f_op_f32(f32(-1f) * -353f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-2324f * global1[_wgslsmith_index_u32(u_input.c, 19u)]))));
    global0 = array<Struct_1, 28>();
    var var_4 = Struct_1(~var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(func_5(_wgslsmith_f_op_f32(func_4(func_1(), (global4.x && false) | global4.x, Struct_1(~vec3<u32>(89377u, 5747u, 59568u))))), firstTrailingBit(_wgslsmith_sub_i32(-1i, _wgslsmith_mult_i32(u_input.a.x, 0i))) & max(_wgslsmith_sub_i32(global3.x & 39002i, u_input.e << (1443u % 32u)), 1i), 1u, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_3.x)), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.c, 19u)])), _wgslsmith_f_op_f32(abs(-271f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_3.x, global1[_wgslsmith_index_u32(63644u, 19u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(54168u, 19u)], -860f, var_3.x) + vec3<f32>(global1[_wgslsmith_index_u32(var_1.a.x, 19u)], 836f, 403f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(113267u, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)], 1645f) + vec3<f32>(var_3.x, global1[_wgslsmith_index_u32(4294967295u, 19u)], -2240f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(257f, var_3.x, var_3.x))))), any(!(!global4.zx)))));
}

