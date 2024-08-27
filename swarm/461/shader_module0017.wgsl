struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: Struct_1 = Struct_1(-2022f);

var<private> global3: array<u32, 12> = array<u32, 12>(55535u, 28081u, 28818u, 39203u, 4294967295u, 0u, 1u, 0u, 58103u, 0u, 0u, 19695u);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32) -> vec4<f32> {
    global2 = Struct_1(813f);
    global1 = select(vec2<bool>(true, true), vec2<bool>(global1.x, any(select(select(vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, true, true, global1.x)), select(vec4<bool>(true, global1.x, false, true), vec4<bool>(global1.x, true, global1.x, false), vec4<bool>(false, global1.x, false, global1.x)), true))), (_wgslsmith_add_i32(-u_input.c, u_input.c) & ((-33404i << (global3[_wgslsmith_index_u32(93221u, 12u)] % 32u)) ^ -906i)) > ~arg_0);
    return _wgslsmith_div_vec4_f32(vec4<f32>(global0.a, _wgslsmith_f_op_f32(max(global2.a, global0.a)), global0.a, global0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-557f, global2.a, 1829f, global2.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global0.a, -1000f, global0.a)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1217f, global0.a)) + _wgslsmith_f_op_f32(1383f - global2.a)), _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a * 1000f))), _wgslsmith_f_op_f32(-global2.a))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec2<bool> {
    var var_0 = arg_0;
    let var_1 = arg_0;
    var var_2 = 0u;
    global0 = Struct_1(1896f);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(37840i)));
    return vec2<bool>(true | select(false & any(vec3<bool>(true, false, global1.x)), !(global1.x & false), true), global1.x);
}

fn func_1() -> f32 {
    global1 = select(!select(select(vec2<bool>(true, true), select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, true), true), vec2<bool>(global1.x, global1.x)), select(select(vec2<bool>(false, true), vec2<bool>(global1.x, true), global1.x), !vec2<bool>(true, global1.x), vec2<bool>(true, global1.x)), !(!vec2<bool>(true, global1.x))), !(!select(!vec2<bool>(true, global1.x), func_2(Struct_1(global0.a), -1000f), true)), !select(select(!vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x), !vec2<bool>(global1.x, global1.x)), vec2<bool>(true, all(vec3<bool>(global1.x, global1.x, false))), !func_2(Struct_1(935f), 513f)));
    var var_0 = abs(_wgslsmith_mod_i32(-5087i, _wgslsmith_sub_i32(-u_input.b.x, u_input.b.x)) ^ _wgslsmith_clamp_i32(-1i, i32(-1i) * -1i, -1i));
    global0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(-19920i, u_input.a), vec2<i32>(38097i, u_input.b.x)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1997f))))));
    global2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(~u_input.c)).x * global0.a)));
    var_0 = _wgslsmith_clamp_i32(-255i, u_input.b.x << (_wgslsmith_dot_vec2_u32(u_input.e.yy, vec2<u32>(_wgslsmith_sub_u32(u_input.e.x, 28704u), global3[_wgslsmith_index_u32(u_input.d.x, 12u)] & 1u)) % 32u), _wgslsmith_dot_vec4_i32(-(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.c, u_input.a), vec4<i32>(-1i, -12841i, u_input.a, u_input.a))), countOneBits(vec4<i32>(u_input.b.x, u_input.c, u_input.b.x >> (global3[_wgslsmith_index_u32(1u, 12u)] % 32u), abs(-14033i)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-369f * -585f)));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1) -> vec4<u32> {
    global0 = Struct_1(arg_1.x);
    let var_0 = 14252u;
    var var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(~select(vec2<u32>(global3[_wgslsmith_index_u32(56975u, 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)]), u_input.d, vec2<bool>(false, true)), u_input.d), 4294967295u);
    let var_2 = abs(~vec3<u32>(firstLeadingBit(max(var_0, 3645u)), ~reverseBits(1u), 4294967295u >> (var_0 % 32u)));
    var var_3 = max(~(select(~u_input.e, ~vec4<u32>(global3[_wgslsmith_index_u32(var_1.x, 12u)], 25956u, 4294967295u, 0u), false) << (u_input.e % vec4<u32>(32u))), firstTrailingBit(u_input.e));
    return ~vec4<u32>(_wgslsmith_dot_vec2_u32(var_2.zz, vec2<u32>(var_0, u_input.d.x) & _wgslsmith_div_vec2_u32(var_2.zy, vec2<u32>(u_input.d.x, 59259u))), _wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_add_u32(var_2.x, var_3.x)), 22896u), _wgslsmith_clamp_u32(~_wgslsmith_add_u32(0u, global3[_wgslsmith_index_u32(var_0, 12u)]), u_input.e.x, ~1u), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(_wgslsmith_f_op_f32(-global0.a));
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 2474f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * global2.a))))));
    global0 = Struct_1(_wgslsmith_f_op_f32(-global2.a));
    var var_1 = global1.x;
    var_1 = true;
    let var_2 = _wgslsmith_clamp_vec3_u32(abs(u_input.e.xyy), u_input.e.zzx, _wgslsmith_mod_vec3_u32(min(u_input.e.wzz, u_input.e.yzx), u_input.e.ywx));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(global1.x && false, vec4<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-global0.a)), global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + -1059f), global0.a), Struct_1(_wgslsmith_f_op_f32(sign(var_0.x)))), -331f, -10854i);
}

