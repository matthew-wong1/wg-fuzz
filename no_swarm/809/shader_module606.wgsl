struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15>;

var<private> global1: array<Struct_1, 12>;

var<private> global2: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: bool) -> u32 {
    global2 = array<vec4<bool>, 20>();
    let var_0 = u_input.c.x;
    var var_1 = Struct_1(firstLeadingBit(vec3<i32>(83631i, abs(-29111i), abs(u_input.b))), vec4<u32>(_wgslsmith_add_u32(var_0, var_0) >> (var_0 % 32u), _wgslsmith_clamp_u32(20365u, u_input.c.x, ~_wgslsmith_mult_u32(u_input.c.x, 1u)), ~var_0, 12532u));
    var_1 = Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(-21058i, 33156i, -2147483647i), u_input.a), -(~vec3<i32>(var_1.a.x, u_input.a.x, 2147483647i))), u_input.a), vec4<u32>(_wgslsmith_div_u32(countOneBits(_wgslsmith_sub_u32(var_1.b.x, var_0)), var_0), ~_wgslsmith_dot_vec4_u32(var_1.b, var_1.b), var_0, var_1.b.x));
    var var_2 = global1[_wgslsmith_index_u32(abs(abs(var_1.b.x)), 12u)];
    return 1u;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool) -> u32 {
    global1 = array<Struct_1, 12>();
    var var_0 = ~vec2<i32>(-51972i, arg_1.a.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(68412u, 15u)] * -256f) - _wgslsmith_f_op_f32(round(585f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(arg_1.b.x, 15u)], global0[_wgslsmith_index_u32(u_input.c.x, 15u)], arg_2))))), global0[_wgslsmith_index_u32(u_input.c.x, 15u)])));
    var_0 = select(vec2<i32>(2147483647i, arg_1.a.x), ~vec2<i32>(-arg_1.a.x, arg_0.x), select(vec2<bool>(arg_2, true | arg_2), select(vec2<bool>(true, arg_2), select(vec2<bool>(false, arg_2), vec2<bool>(false, arg_2), vec2<bool>(arg_2, true)), select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, arg_2), arg_2)), true)) << ((arg_1.b.zw | reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.b.x, 7156u), vec2<u32>(u_input.c.x, arg_1.b.x), max(u_input.c, u_input.c)))) % vec2<u32>(32u));
    var var_2 = !vec2<bool>(any(select(!global2[_wgslsmith_index_u32(u_input.c.x, 20u)], vec4<bool>(true, arg_2, true, arg_2), global2[_wgslsmith_index_u32(abs(arg_1.b.x), 20u)])), all(global2[_wgslsmith_index_u32(~4294967295u, 20u)]));
    return ~(abs(0u) | firstLeadingBit(u_input.c.x));
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    var var_0 = vec2<i32>(556i, u_input.b);
    var var_1 = any(select(global2[_wgslsmith_index_u32(func_4(u_input.a.zy, global1[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 15u)]), vec2<f32>(global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(u_input.c.x, 15u)]), true), 12u)], !(-40299i < arg_0.x)), 20u)], vec4<bool>(true, !all(vec3<bool>(true, false, false)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)), all(vec2<bool>(true, true))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.c.x, 24633u), vec4<u32>(4294967295u, 71781u, u_input.c.x, 28225u)), abs(vec4<u32>(68680u, u_input.c.x, 94701u, 0u))), ~(~4294967295u)), 20u)]));
    var_0 = vec2<i32>(834i, 7375i);
    global0 = array<f32, 15>();
    global1 = array<Struct_1, 12>();
    return u_input.c.x;
}

fn func_1(arg_0: Struct_1) -> u32 {
    global2 = array<vec4<bool>, 20>();
    global0 = array<f32, 15>();
    var var_0 = arg_0;
    var var_1 = vec4<i32>(2147483647i, abs(i32(-1i) * -1i) >> (_wgslsmith_mod_u32(func_2(vec2<i32>(-2147483647i, var_0.a.x)), arg_0.b.x) % 32u), _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(var_0.a.x, 4515i), arg_0.a.x), 46040i), -var_0.a.x >> (u_input.c.x % 32u)) | reverseBits(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.x, 0i, -1i, arg_0.a.x), vec4<i32>(arg_0.a.x, arg_0.a.x, u_input.b, 34536i)) << (arg_0.b % vec4<u32>(32u)), countOneBits(vec4<i32>(u_input.a.x, arg_0.a.x, -1i, 8999i))));
    var_0 = arg_0;
    return _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(var_0.b.yxz, ~var_0.b.zyy << ((var_0.b.yzx ^ vec3<u32>(0u, 0u, u_input.c.x)) % vec3<u32>(32u)), abs(arg_0.b.xwz)), vec3<u32>(~u_input.c.x, arg_0.b.x, 1u)) | ~(~func_4(u_input.a.xy ^ vec2<i32>(u_input.b, 1i), Struct_1(var_0.a, arg_0.b), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(u_input.c.x);
    let var_1 = !global2[_wgslsmith_index_u32(60434u, 20u)];
    global2 = array<vec4<bool>, 20>();
    let var_2 = select(select(select(vec4<bool>(!var_1.x, global0[_wgslsmith_index_u32(4294967295u, 15u)] > -1940f, u_input.b != u_input.b, true), !select(var_1, global2[_wgslsmith_index_u32(0u, 20u)], var_1.x), true), !var_1, var_1.x), vec4<bool>(!(~u_input.c.x >= func_1(global1[_wgslsmith_index_u32(0u, 12u)])), false, true && var_1.x, select(var_1.x, true, any(!vec4<bool>(var_1.x, var_1.x, var_1.x, false)))), vec4<bool>(var_1.x, !var_1.x, true, any(!vec4<bool>(var_1.x, false, var_1.x, var_1.x))));
    var_0 = 2346u;
    var var_3 = select(true | var_1.x, select(true, var_2.x | true, false), var_2.x) | all(var_2.wz);
    var_3 = any(!var_1.xy);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x)) >> ((u_input.c.x | u_input.c.x) % 32u), 15u)] - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 15u)])))), global0[_wgslsmith_index_u32(1u, 15u)]);
    let var_5 = vec3<u32>(0u, u_input.c.x, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(select(_wgslsmith_mod_vec3_u32(var_5, vec3<u32>(39053u, 4294967295u, 33485u)), var_5, any(var_1.zz)), vec3<u32>(var_5.x, firstLeadingBit(138846u), var_5.x), vec3<u32>(1u, 11102u, 5861u)), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(1111u, u_input.c.x, 0u), vec3<u32>(u_input.c.x, var_5.x, 55802u), var_5))), -740f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_5.x, 15u)]), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(24637u, 15u)]))) * vec2<f32>(var_4.x, -408f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 15u)], 240f), vec2<f32>(var_4.x, -525f))))));
}

