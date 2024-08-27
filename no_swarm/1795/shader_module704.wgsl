struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(-550f, -1000f, -347f, -1013f, 1419f, 681f, 728f, -1302f, -630f);

var<private> global1: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32) -> vec2<f32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global1.xx)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(1u, 9u)], global1.x) + global1.ww)))), min(max(arg_0, abs(arg_0)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.e.x, arg_0), u_input.a)), true, _wgslsmith_f_op_vec2_f32(-global1.wy)), abs(i32(-1i) * -(u_input.b.x >> (u_input.c % 32u))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.x, global1.x))) - global1.zy), 1u, any(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global1.x, global1.x), global0[_wgslsmith_index_u32(arg_0, 9u)]) + global1.xz)), global0[_wgslsmith_index_u32(~18037u, 9u)]);
    let var_1 = Struct_2(var_0.a, -1i, var_0.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(651f * 730f)))));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.c.a.x, _wgslsmith_f_op_f32(1829f * var_0.c.a.x)), vec2<f32>(_wgslsmith_f_op_f32(select(-350f, -3701f, var_0.c.c)), 458f))), arg_0, true, var_1.a.d), 0i, Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global1.xz))))), ~var_1.a.b, any(select(select(vec2<bool>(false, true), vec2<bool>(var_1.c.c, var_0.c.c), vec2<bool>(var_1.a.c, var_0.c.c)), vec2<bool>(true, true), select(vec2<bool>(var_1.a.c, var_1.c.c), vec2<bool>(true, var_0.a.c), vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a.d + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-322f, -1159f))) * _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(25968u, 9u)], 883f), vec2<f32>(global0[_wgslsmith_index_u32(20307u, 9u)], -659f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var_0 = var_1;
    var var_2 = var_0.c;
    return vec2<f32>(1000f, 474f);
}

fn func_2() -> f32 {
    var var_0 = !(!(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_mult_u32(~6728u >> (u_input.e.x % 32u), 18715u))), u_input.a.x, any(vec2<bool>(max(u_input.c, 43745u) < 41055u, any(select(var_0.zx, vec2<bool>(true, false), false)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.e.x, 9u)]))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2421f * global1.x))), _wgslsmith_f_op_f32(global1.x + global0[_wgslsmith_index_u32(u_input.a.x, 9u)])));
    var var_2 = vec3<u32>(min(~1u, ~var_1.b), u_input.e.x >> (u_input.c % 32u), select(~_wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.yy), 24744u, !all(!var_0.wwy)));
    let var_3 = var_1;
    var_2 = countOneBits(~(~vec3<u32>(~u_input.e.x, var_2.x >> (var_2.x % 32u), _wgslsmith_clamp_u32(u_input.c, 4294967295u, var_1.b))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1141f, -416f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 9u)] + var_3.d.x) + var_1.d.x)));
}

fn func_1() -> f32 {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-207f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 9u)])))), global0[_wgslsmith_index_u32(u_input.e.x, 9u)]), u_input.e.x, true, _wgslsmith_f_op_vec2_f32(global1.yx + _wgslsmith_div_vec2_f32(global1.yy, global1.xz)));
    let var_1 = Struct_2(var_0, ~_wgslsmith_mod_i32(u_input.d, 1i), var_0, _wgslsmith_div_f32(1540f, var_0.a.x));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), -1616f))) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(815f, _wgslsmith_f_op_f32(f32(-1f) * -296f)))))));
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: bool) -> StorageBuffer {
    var var_0 = u_input.a.yw;
    let var_1 = Struct_1(arg_2.d, _wgslsmith_div_u32(~arg_2.b, _wgslsmith_mult_u32(~arg_0, abs(0u)) << (var_0.x % 32u)), any(!vec2<bool>(any(vec2<bool>(true, true)), !arg_3)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-231f)))), 729f) * arg_2.a));
    let var_2 = vec3<u32>(arg_0, 0u, ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(14841u, var_0.x, 18385u), ~_wgslsmith_mult_u32(0u, u_input.a.x)));
    return StorageBuffer(_wgslsmith_add_vec3_u32(abs(vec3<u32>(0u, 43131u, 1u) | u_input.a.zzx), vec3<u32>(_wgslsmith_mod_u32(30246u, 58824u), _wgslsmith_add_u32(arg_0, 1u), 111794u)), _wgslsmith_mult_vec3_i32(~(-vec3<i32>(u_input.b.x, -19899i, u_input.b.x)), select(vec3<i32>(u_input.d, -1i, -1i), _wgslsmith_mult_vec3_i32(vec3<i32>(33701i, -29369i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.d, -1i)), any(vec4<bool>(false, false, true, true)))) | _wgslsmith_add_vec3_i32(vec3<i32>(27505i, 1i, -16416i) ^ vec3<i32>(1i, u_input.b.x, u_input.d), min(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -1i, -32051i), vec3<i32>(u_input.b.x, u_input.d, u_input.b.x)), vec3<i32>(u_input.d, -49501i, -37918i))), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b, select(~vec2<i32>(1i, -36716i), u_input.b, !arg_3), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.b.x, -17498i)), vec2<i32>(u_input.b.x, -12853i))), u_input.b), vec4<f32>(696f, arg_2.a.x, global0[_wgslsmith_index_u32(~0u, 9u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_vec3_f32(-global1.xwy));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(446f - 350f)), -1208f, -1206f));
    let x = u_input.a;
    s_output = func_4(~u_input.c >> (_wgslsmith_dot_vec3_u32(~u_input.e, select(u_input.e, vec3<u32>(u_input.c, u_input.e.x, u_input.e.x), vec3<bool>(true, true, true))) % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.wxx)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(11948u, u_input.a.x), 9u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(func_1()))), _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(50837u, 4294967295u, 1u, 4294967295u))) & u_input.e.x, !(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.e.x, 9u)]) <= _wgslsmith_div_f32(-165f, global0[_wgslsmith_index_u32(u_input.e.x, 9u)])), global1.zy), true);
}

