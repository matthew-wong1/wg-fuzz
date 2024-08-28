struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14>;

var<private> global1: f32 = 677f;

var<private> global2: i32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    return !vec4<bool>(arg_1.a.x, arg_1.a.x, (arg_1.b.x >= global0[_wgslsmith_index_u32(arg_1.b.x, 14u)]) & arg_1.a.x, all(arg_1.a.wy));
}

fn func_2() -> f32 {
    var var_0 = Struct_1(!select(func_3(vec2<i32>(u_input.c, u_input.c), Struct_1(vec4<bool>(false, true, false, false), vec4<u32>(81196u, 4294967295u, 52005u, u_input.a)), _wgslsmith_clamp_u32(4294967295u, global0[_wgslsmith_index_u32(36086u, 14u)], global0[_wgslsmith_index_u32(6358u, 14u)])), func_3(-vec2<i32>(63507i, -26575i), Struct_1(vec4<bool>(false, true, true, false), vec4<u32>(1u, global0[_wgslsmith_index_u32(47273u, 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)], u_input.a)), 41564u), vec4<bool>(true, true, true, true)), select(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43762u, 14u)], 14u)], u_input.a, u_input.a), select(vec4<u32>(1u, global0[_wgslsmith_index_u32(1u, 14u)], 1u, global0[_wgslsmith_index_u32(14314u, 14u)]), vec4<u32>(44305u, global0[_wgslsmith_index_u32(7130u, 14u)], 4294967295u, 52234u), true))), firstLeadingBit(vec4<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], 4869u, _wgslsmith_sub_u32(40416u, global0[_wgslsmith_index_u32(78840u, 14u)]), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 14u)], 14u)], 14u)])), vec4<bool>(true, true, true, true)));
    var var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(63435u, global0[_wgslsmith_index_u32(0u, 14u)], ~var_0.b.x), abs(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.b.x, u_input.a), min(var_0.b.wz, vec2<u32>(1232u, u_input.b))), ~reverseBits(u_input.b), abs(17131u))));
    var var_2 = Struct_1(vec4<bool>(true, var_0.a.x, var_0.a.x, true), var_0.b);
    var var_3 = Struct_1(!vec4<bool>(func_3(max(vec2<i32>(1i, 1i), vec2<i32>(u_input.c, u_input.c)), Struct_1(vec4<bool>(var_0.a.x, var_2.a.x, false, var_0.a.x), var_0.b), 0u).x, var_2.a.x, !all(vec2<bool>(false, var_2.a.x)), var_2.a.x), var_2.b);
    global0 = array<u32, 14>();
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-134f)), 1083f));
}

fn func_4(arg_0: f32) -> Struct_1 {
    var var_0 = all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(false, true, true, true)), u_input.b <= u_input.b, false, true), false), !vec4<bool>(select(false, false, false), true, true, true), false));
    let var_1 = Struct_1(func_3(select(~(-vec2<i32>(u_input.c, 16172i)), abs(reverseBits(vec2<i32>(u_input.c, u_input.c))), true), Struct_1(vec4<bool>(any(vec4<bool>(true, true, false, true)), all(vec3<bool>(true, true, false)), any(vec4<bool>(true, false, true, false)), true), select(~vec4<u32>(0u, u_input.b, global0[_wgslsmith_index_u32(u_input.a, 14u)], 10440u), ~vec4<u32>(global0[_wgslsmith_index_u32(71918u, 14u)], u_input.a, 0u, 1u), vec4<bool>(true, true, true, true))), ~firstLeadingBit(u_input.a) ^ u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(21553u, ~(2969u << (u_input.a % 32u)), 1u, max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64490u, 14u)], 14u)], 14u)], 14u)], 0u) | ~u_input.b), select((vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(95647u, 14u)], 14u)], 11103u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)], 1u) << (vec4<u32>(global0[_wgslsmith_index_u32(18704u, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)], u_input.b, 4294967295u) % vec4<u32>(32u))) | (vec4<u32>(4294967295u, 26661u, u_input.b, u_input.b) ^ vec4<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(u_input.a, 14u)], u_input.a)), vec4<u32>(~global0[_wgslsmith_index_u32(28459u, 14u)], 4294967295u, max(4294967295u, 15719u), _wgslsmith_mod_u32(1u, 4294967295u)), func_3(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(-2147483647i, u_input.c)), Struct_1(vec4<bool>(true, false, false, true), vec4<u32>(24824u, u_input.a, u_input.a, 26622u)), 4294967295u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)] % 32u)))));
    let var_2 = var_1;
    var_0 = any(var_1.a.zxx);
    global0 = array<u32, 14>();
    return Struct_1(vec4<bool>(!(!(false != var_1.a.x)), false, all(select(!var_2.a, vec4<bool>(var_2.a.x, true, var_2.a.x, false), !var_2.a.x)), false), ~_wgslsmith_div_vec4_u32(var_1.b, _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, var_1.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b.x, 60471u, var_2.b.x, global0[_wgslsmith_index_u32(1u, 14u)]), vec4<u32>(var_1.b.x, 1u, u_input.b, 55042u)))));
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    global2 = _wgslsmith_dot_vec2_i32(select(vec2<i32>(-u_input.c, u_input.c & u_input.c), abs(firstLeadingBit(~vec2<i32>(u_input.c, u_input.c))), !arg_0.x), _wgslsmith_mod_vec2_i32(-max(-vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.c)), -(~vec2<i32>(u_input.c, 39947i))));
    let var_0 = func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(197f)))))));
    global0 = array<u32, 14>();
    global2 = u_input.c;
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-803f, -1269f) * _wgslsmith_f_op_f32(608f * 3004f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1000f)), 1404f)))), _wgslsmith_f_op_f32(f32(-1f) * -531f)));
    return 44078u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<bool>(true, true, true, true), vec4<u32>(u_input.a, _wgslsmith_div_u32(u_input.b, func_1(vec2<bool>(true, true))), abs(u_input.b), _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(29037u, u_input.b)), _wgslsmith_sub_vec2_u32(select(vec2<u32>(29197u, global0[_wgslsmith_index_u32(u_input.b, 14u)]), vec2<u32>(u_input.b, 27927u), vec2<bool>(true, false)), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 14u)], 14u)], 2985u))))));
    var var_1 = var_0.a.x;
    var_1 = true;
    let var_2 = vec4<i32>(min(u_input.c, _wgslsmith_dot_vec3_i32(max(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, -10909i, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(20676i, u_input.c, -67478i)), vec3<i32>(u_input.c, u_input.c, u_input.c)), abs(min(vec3<i32>(u_input.c, u_input.c, -2147483647i), vec3<i32>(u_input.c, 2147483647i, 710i))))), _wgslsmith_add_i32(_wgslsmith_div_i32(-u_input.c, u_input.c) >> (51059u % 32u), -1i), 2147483647i, ~u_input.c);
    var var_3 = var_0.b.yyx >> (var_0.b.zzx % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.yx, ~var_2.x ^ _wgslsmith_add_i32(_wgslsmith_mult_i32(var_2.x, _wgslsmith_add_i32(-2147483647i, u_input.c)), var_2.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1301f, -1271f, -630f), vec3<f32>(239f, 1000f, 1000f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-778f, 2466f, 2158f) * vec3<f32>(906f, -1000f, -955f)))) + vec3<f32>(_wgslsmith_f_op_f32(max(-550f, _wgslsmith_f_op_f32(floor(2189f)))), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-116f, 1000f))))), _wgslsmith_sub_u32(func_1(select(var_0.a.wz, vec2<bool>(true, false), false)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, var_0.b.x), func_4(-687f).b.zyz)) & var_3.x);
}

