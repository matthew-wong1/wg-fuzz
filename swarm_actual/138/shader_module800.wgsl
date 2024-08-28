struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
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

var<private> global0: vec3<f32> = vec3<f32>(-243f, -105f, -1000f);

var<private> global1: array<i32, 31>;

var<private> global2: array<bool, 18>;

var<private> global3: Struct_1 = Struct_1(1u, -2896i, 974f, vec4<bool>(true, false, false, false), true);

var<private> global4: vec3<i32> = vec3<i32>(i32(-2147483648), 13183i, 0i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec4<i32>) -> vec4<bool> {
    let var_0 = Struct_1(~global3.a, 2332i, 156f, !global3.d, all(vec2<bool>(true, _wgslsmith_f_op_f32(global3.c * global3.c) > _wgslsmith_f_op_f32(353f - global3.c))));
    let var_1 = Struct_1(global3.a >> ((~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.a), vec3<u32>(57645u, 0u, global3.a)) << (_wgslsmith_div_u32(1u, firstTrailingBit(u_input.a)) % 32u)) % 32u), firstLeadingBit(13879i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(114f - 884f)))), select(vec4<bool>(all(select(vec4<bool>(global2[_wgslsmith_index_u32(26646u, 18u)], var_0.d.x, global3.e, true), vec4<bool>(true, true, var_0.e, global2[_wgslsmith_index_u32(var_0.a, 18u)]), true)), global3.d.x | var_0.e, var_0.d.x, true), vec4<bool>(true, any(select(var_0.d, vec4<bool>(global2[_wgslsmith_index_u32(22708u, 18u)], false, global2[_wgslsmith_index_u32(0u, 18u)], false), true)), true, any(select(global3.d, var_0.d, vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 18u)], var_0.d.x, true, true)))), global2[_wgslsmith_index_u32(3397u, 18u)]), false);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.c)) * global3.c), _wgslsmith_f_op_f32(-2045f - _wgslsmith_f_op_f32(587f - var_1.c))) * _wgslsmith_f_op_f32(abs(global3.c))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1000f))))));
    var var_2 = ~_wgslsmith_mult_u32(32258u, 15061u ^ var_0.a);
    global4 = arg_1.xyx;
    return !global3.d;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    global1 = array<i32, 31>();
    var var_0 = global2[_wgslsmith_index_u32(u_input.a, 18u)];
    global2 = array<bool, 18>();
    let var_1 = !select(select(!vec4<bool>(false, true, arg_0.d.x, false), func_3(-206f, vec4<i32>(global1[_wgslsmith_index_u32(8730u, 31u)], 74431i, -56811i, 4564i)), !global3.d), !select(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 18u)], arg_0.e, false, false), !vec4<bool>(false, arg_0.d.x, true, arg_0.d.x), all(vec4<bool>(global3.e, false, global3.d.x, false))), !vec4<bool>(true, arg_0.d.x, !arg_0.e, u_input.b > arg_0.a));
    let var_2 = arg_1.x;
    return Struct_1(global3.a, ~(select(reverseBits(-2147483647i), 1i, global2[_wgslsmith_index_u32(global3.a, 18u)] | false) << ((~global3.a & _wgslsmith_div_u32(u_input.a, arg_0.a)) % 32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global3.c)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x + arg_0.c)))), vec4<bool>(func_3(630f, vec4<i32>(abs(global4.x), global1[_wgslsmith_index_u32(77420u, 31u)], firstLeadingBit(10997i), abs(global1[_wgslsmith_index_u32(u_input.b, 31u)]))).x, any(!global3.d.zz), false, all(!select(var_1.zzz, arg_0.d.zyy, false))), -16534i <= min(_wgslsmith_dot_vec2_i32(-u_input.d, vec2<i32>(26798i, 2147483647i)), _wgslsmith_clamp_i32(u_input.c, 0i, 2147483647i) ^ -global3.b));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32) -> Struct_1 {
    global3 = func_2(arg_0, -_wgslsmith_clamp_vec2_i32(~arg_1.wz, global4.xy, _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, u_input.d.x), vec2<i32>(global4.x, -1i))));
    let var_0 = func_2(arg_0, global4.yy);
    return func_2(Struct_1(4294967295u, (_wgslsmith_dot_vec2_i32(global4.yx, vec2<i32>(arg_1.x, -29686i)) ^ (i32(-1i) * -13263i)) >> (106651u % 32u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-func_2(arg_0, arg_1.zz).c), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c))), false)), !var_0.d, !all(!vec4<bool>(false, false, var_0.d.x, true))), global4.zz);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<u32>) -> u32 {
    var var_0 = global3.c;
    global2 = array<bool, 18>();
    var var_1 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-906f + arg_0.c), 640f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1967f))))), vec4<i32>(-(func_2(arg_0, u_input.d).b >> (~107160u % 32u)), arg_0.b | -2147483647i, select(abs(-2147483647i >> (global3.a % 32u)), reverseBits(func_2(arg_0, global4.xy).b), any(select(global3.d, global3.d, global2[_wgslsmith_index_u32(2955u, 18u)]))), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(27957u, 31u)], ~0i)));
    global3 = arg_0;
    var_1 = !(!vec4<bool>(false, func_2(Struct_1(0u, -1i, global0.x, vec4<bool>(false, arg_0.e, arg_0.d.x, true), arg_0.d.x), vec2<i32>(7205i, 16449i)).d.x, any(vec2<bool>(true, true)), var_1.x));
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 31>();
    let var_0 = false;
    let var_1 = Struct_1(func_4(func_1(Struct_1(~u_input.b, firstTrailingBit(global1[_wgslsmith_index_u32(u_input.b, 31u)]), _wgslsmith_f_op_f32(-1000f * global0.x), select(global3.d, vec4<bool>(var_0, global3.e, true, true), global3.e), true), ~vec4<i32>(global4.x, 0i, global3.b, u_input.c), global1[_wgslsmith_index_u32(~1u << (_wgslsmith_sub_u32(61380u, global3.a) % 32u), 31u)]), firstTrailingBit(vec2<u32>(_wgslsmith_div_u32(global3.a, 0u), _wgslsmith_sub_u32(10288u, global3.a))), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(6012u, 1u, 4294967295u)), abs(vec3<u32>(u_input.b, global3.a, global3.a) >> (vec3<u32>(u_input.b, global3.a, 4294967295u) % vec3<u32>(32u))))), ~global3.b & _wgslsmith_clamp_i32(-28050i, -6824i, global3.b), -544f, global3.d, false);
    let var_2 = func_3(1714f, abs(vec4<i32>(countOneBits(-var_1.b), func_1(var_1, vec4<i32>(global3.b, global1[_wgslsmith_index_u32(var_1.a, 31u)], -39549i, 1i), _wgslsmith_div_i32(u_input.c, 13238i)).b, _wgslsmith_sub_i32(var_1.b | u_input.d.x, -30650i), global3.b))).zx;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.c, global0.x, -386f) + _wgslsmith_div_vec3_f32(vec3<f32>(-1934f, 1553f, 441f), vec3<f32>(var_1.c, -647f, -424f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1267f, var_1.c, -2540f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.c, global0.x, -2211f), vec3<f32>(-585f, var_1.c, -954f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 643f, -977f) * vec3<f32>(333f, global3.c, global0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, -1000f, global3.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, global0.x, 1000f) - vec3<f32>(570f, var_1.c, var_1.c)) * _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 1663f, 1252f), vec3<f32>(var_1.c, var_1.c, global0.x))))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1852f, var_1.c, global0.x)))), vec3<f32>(_wgslsmith_f_op_f32(-global3.c), 437f, _wgslsmith_f_op_f32(-global3.c)), func_2(func_2(func_1(Struct_1(8806u, 1i, -115f, vec4<bool>(false, var_1.d.x, false, global3.d.x), global3.e), vec4<i32>(-8733i, 9834i, 29591i, 31879i), 1i), -u_input.d), u_input.d & u_input.d).d.zwx)));
    global2 = array<bool, 18>();
    var var_4 = var_1;
    var var_5 = ~(~(-(~(~vec4<i32>(2147483647i, 2147483647i, global4.x, global4.x)))));
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(select(vec2<u32>(func_4(var_1, vec2<u32>(u_input.b, var_4.a), vec3<u32>(u_input.a, global3.a, var_1.a)), abs(global3.a)), _wgslsmith_add_vec2_u32(~vec2<u32>(13726u, 14691u), vec2<u32>(var_4.a, u_input.b) ^ vec2<u32>(u_input.a, u_input.b)), var_1.d.yx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.x, _wgslsmith_f_op_f32(-var_4.c), true))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-109f * _wgslsmith_f_op_f32(var_3.x * global0.x)) - var_3.x)));
}

