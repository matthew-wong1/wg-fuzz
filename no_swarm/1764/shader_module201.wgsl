struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: vec2<bool>,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: array<u32, 12>;

var<private> global3: Struct_1 = Struct_1(vec4<f32>(-1614f, 958f, -1466f, -1288f), true);

var<private> global4: vec2<i32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec3<i32> {
    let var_0 = true;
    let var_1 = arg_0;
    let var_2 = arg_1;
    let var_3 = select(u_input.a.x, global4.x, global3.b);
    let var_4 = Struct_2(select(_wgslsmith_add_vec4_u32(arg_1.a, ~(~arg_1.a)), ~_wgslsmith_sub_vec4_u32(arg_1.a, ~arg_1.a), vec4<bool>(all(global1.yy), false, true, !(!global1.x))));
    return _wgslsmith_add_vec3_i32(firstTrailingBit(~u_input.a.zzx), countOneBits(_wgslsmith_sub_vec3_i32(~u_input.a.xwy, _wgslsmith_mult_vec3_i32(vec3<i32>(var_3, 8640i, u_input.a.x), u_input.a.yzx)) >> (~reverseBits(vec3<u32>(u_input.b.x, var_1.a.x, 19622u)) % vec3<u32>(32u))));
}

fn func_2() -> Struct_3 {
    var var_0 = ~_wgslsmith_sub_vec3_i32(func_3(Struct_2(vec4<u32>(0u, u_input.b.x, 1u, global2[_wgslsmith_index_u32(u_input.c, 12u)]) >> (vec4<u32>(0u, 5817u, 25959u, global2[_wgslsmith_index_u32(40709u, 12u)]) % vec4<u32>(32u))), Struct_2(countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.c)))), vec3<i32>(~u_input.a.x, ~0i, 1i) >> (_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.b.x), vec3<u32>(96257u, u_input.b.x, 28315u)), vec3<u32>(49537u, 3911u, 0u) >> (vec3<u32>(1u, u_input.c, 48691u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-451f)))), 481f, global0.a.x, _wgslsmith_f_op_f32(-1529f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * _wgslsmith_f_op_f32(step(global3.a.x, global3.a.x)))))));
    global3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(243f)), _wgslsmith_f_op_f32(sign(-1000f)), global3.b || true)) * _wgslsmith_f_op_f32(-740f - _wgslsmith_f_op_f32(global0.a.x - 580f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1088f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1470f * global3.a.x)), global0.a.x), false);
    return Struct_3(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17423u, 12u)], 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20839u, 12u)], 12u)], 27253u, 4294967295u) ^ (vec4<u32>(55446u, 4294967295u, u_input.b.x, 16271u) ^ vec4<u32>(4294967295u, u_input.b.x, u_input.c, u_input.b.x)), _wgslsmith_mult_vec4_u32(~vec4<u32>(71926u, global2[_wgslsmith_index_u32(1u, 12u)], 1u, global2[_wgslsmith_index_u32(u_input.c, 12u)]), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, 59074u), vec4<u32>(1u, 15173u, 4294967295u, global2[_wgslsmith_index_u32(0u, 12u)])))), _wgslsmith_div_u32(72358u, ~u_input.b.x), 0u), -34750i, global1.zz, _wgslsmith_add_vec4_u32(~(~vec4<u32>(11898u, global2[_wgslsmith_index_u32(30197u, 12u)], global2[_wgslsmith_index_u32(u_input.c, 12u)], u_input.c) >> (vec4<u32>(47738u, 52787u, u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 12u)], 12u)]) % vec4<u32>(32u))), firstLeadingBit(vec4<u32>(_wgslsmith_sub_u32(u_input.c, 1u), ~57863u, u_input.b.x, ~u_input.b.x))), -select(_wgslsmith_add_i32(38735i, var_0.x) & 2147483647i, 1i, false));
}

fn func_1(arg_0: vec2<f32>) -> vec4<f32> {
    var var_0 = global0.a;
    let var_1 = func_2();
    var var_2 = ~(~(~1u));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-204f - _wgslsmith_f_op_f32(-1547f - var_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x)))), _wgslsmith_div_f32(var_0.x, -518f), global3.a.x, _wgslsmith_f_op_f32(floor(var_0.x)));
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: Struct_2) -> vec3<bool> {
    global2 = array<u32, 12>();
    var var_0 = ~vec3<i32>(i32(-1i) * -1i, u_input.a.x, firstLeadingBit(u_input.a.x));
    var_0 = firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, firstTrailingBit(global4.x | arg_2.e)), _wgslsmith_mult_i32(func_3(Struct_2(arg_2.d), arg_3).x << (~31462u % 32u), -21169i), _wgslsmith_dot_vec3_i32(-max(vec3<i32>(-2147483647i, -1i, var_0.x), vec3<i32>(-34793i, -31367i, -16377i)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.wxz, vec3<i32>(arg_2.e, 1i, global4.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.b, var_0.x, -49335i), u_input.a.xxx)))));
    global2 = array<u32, 12>();
    let var_1 = arg_2;
    return select(!select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(global3.b, false, false), global1.x & global1.x), vec3<bool>(4294967295u < global2[_wgslsmith_index_u32(4294967295u, 12u)], global0.b, any(vec3<bool>(false, arg_2.c.x, global3.b)))), !vec3<bool>(var_1.c.x, true, !all(vec2<bool>(var_1.c.x, global1.x))), select(vec3<bool>(all(!vec3<bool>(global3.b, true, var_1.c.x)), _wgslsmith_f_op_f32(-global0.a.x) >= global0.a.x, all(func_2().c)), vec3<bool>(var_1.c.x, all(vec2<bool>(global3.b, arg_2.c.x)), true), true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(vec3<bool>(global1.x, true, true), select(func_4(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 60022u, 4294967295u), vec3<u32>(1u, global2[_wgslsmith_index_u32(7476u, 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 12u)], 12u)], 12u)], 12u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec2<f32>(global0.a.x, -654f)))), func_2(), Struct_2(vec4<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 12u)], 12u)], u_input.c, 0u) & vec4<u32>(11619u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 4294967295u, 10255u))), !vec3<bool>(!global1.x, global0.b, true | global0.b), false), global1.x);
    var var_0 = vec2<bool>(true, select(false, !(!(!global3.b)), !(!(!global3.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(countOneBits(~(u_input.c & global2[_wgslsmith_index_u32(1u, 12u)])), select(~(10940u >> (global2[_wgslsmith_index_u32(u_input.c, 12u)] % 32u)), 19899u, global1.x), min(~0u, abs(~20417u))));
}

