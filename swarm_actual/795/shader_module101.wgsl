struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-740f, 1719f, -782f);

var<private> global1: bool;

var<private> global2: array<u32, 31>;

var<private> global3: vec2<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32, arg_3: vec4<bool>) -> f32 {
    global2 = array<u32, 31>();
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2549f - 209f), global0.x)), 404f) - vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1115f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2276f) + global0.x) * 1758f), 206f));
    let var_1 = true;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0) + vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-arg_2)))), -385f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1787f)))));
    global2 = array<u32, 31>();
    return _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_2, global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x - global0.x)))), false)));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec2<u32>) -> bool {
    return arg_1.a.x;
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_3(func_4(u_input.c << (58927u % 32u), Struct_1(select(select(vec2<bool>(global3.x, false), vec2<bool>(false, true), global3.x), vec2<bool>(global3.x, global3.x), vec2<bool>(false, true)), select(select(vec3<bool>(global3.x, false, global3.x), vec3<bool>(true, false, global3.x), global3.x), select(vec3<bool>(global3.x, true, global3.x), vec3<bool>(global3.x, false, false), global3.x), global3.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(550f)), _wgslsmith_f_op_f32(max(-2073f, global0.x)))), vec3<f32>(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, false, true, true), Struct_1(vec2<bool>(global3.x, false), vec3<bool>(global3.x, true, true), 468f, vec3<f32>(global0.x, global0.x, global0.x)), 148f, vec4<bool>(global3.x, false, global3.x, false))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - global0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1296f, global0.x, _wgslsmith_f_op_f32(global0.x + -1000f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, global0.x, global0.x))))), u_input.a.zy), Struct_1(vec2<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(global3.x, true), vec2<bool>(false, global3.x)))), vec3<bool>(func_4(min(-3649i, u_input.c), Struct_1(vec2<bool>(global3.x, global3.x), vec3<bool>(global3.x, true, true), 1000f, vec3<f32>(545f, global0.x, global0.x)), _wgslsmith_div_vec3_f32(vec3<f32>(-305f, global0.x, -558f), vec3<f32>(global0.x, global0.x, global0.x)), firstLeadingBit(u_input.a.xy)), _wgslsmith_div_f32(global0.x, global0.x) > -942f, true), global0.x, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, -1000f, global0.x)))))), _wgslsmith_f_op_vec2_f32(step(global0.yx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-346f * 851f), _wgslsmith_f_op_f32(select(-158f, global0.x, global3.x)))))));
    var var_1 = Struct_1(!(!var_0.b.b.zy), vec3<bool>(false, !global3.x, all(select(var_0.b.b, !vec3<bool>(true, true, var_0.b.b.x), true))), global0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(577f, -173f, -377f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, var_0.b.c, var_0.c.x), _wgslsmith_div_vec3_f32(vec3<f32>(818f, -1079f, var_0.c.x), var_0.b.d), vec3<bool>(true, true, true))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(598f)), -464f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_1.d.x, 1454f)), _wgslsmith_f_op_f32(sign(-1000f)), true)), _wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(-1240f - var_0.c.x)))));
    var_0 = Struct_3(var_0.b.b.x, var_0.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(floor(var_0.b.c))));
    var var_3 = var_1.b.yx;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-142f * -278f))), 593f, -330f, _wgslsmith_f_op_f32(trunc(var_0.b.d.x))));
}

fn func_5(arg_0: f32, arg_1: vec3<u32>, arg_2: vec4<f32>) -> vec2<bool> {
    return vec2<bool>(true, true);
}

fn func_1(arg_0: vec2<bool>) -> vec3<bool> {
    let var_0 = Struct_2(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c ^ u_input.b.x, u_input.b.x, u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -41612i, u_input.c), vec3<i32>(-38232i, u_input.d, -2147483647i))), -vec4<i32>(32847i, -2147483647i, -94298i, -1i)), abs(select(u_input.c, _wgslsmith_mod_i32(u_input.c, 2147483647i), true))));
    global3 = func_5(global0.x, vec3<u32>(1u & _wgslsmith_div_u32(global2[_wgslsmith_index_u32(countOneBits(global2[_wgslsmith_index_u32(27571u, 31u)]), 31u)], u_input.a.x), 4294967295u, 1u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())))));
    let var_1 = ~(global2[_wgslsmith_index_u32(u_input.a.x, 31u)] >> (_wgslsmith_div_u32(u_input.a.x, 0u) % 32u)) ^ countOneBits(1u);
    var var_2 = 26989u;
    global1 = arg_0.x;
    return select(!select(vec3<bool>(any(arg_0), any(vec4<bool>(global3.x, false, arg_0.x, arg_0.x)), func_4(u_input.c, Struct_1(arg_0, vec3<bool>(arg_0.x, arg_0.x, true), -1740f, vec3<f32>(global0.x, global0.x, global0.x)), vec3<f32>(global0.x, 545f, global0.x), u_input.a.zz)), select(!vec3<bool>(false, false, arg_0.x), select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(true, false, false), vec3<bool>(true, arg_0.x, global3.x)), global3.x), any(select(vec3<bool>(true, true, global3.x), vec3<bool>(global3.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, global3.x)))), select(!select(vec3<bool>(true, true, false), select(vec3<bool>(false, global3.x, arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x), global3.x), vec3<bool>(true, true, arg_0.x)), !select(vec3<bool>(global3.x, arg_0.x, arg_0.x), vec3<bool>(true, true, true), vec3<bool>(false, global3.x, arg_0.x)), all(select(vec4<bool>(false, arg_0.x, true, arg_0.x), vec4<bool>(global3.x, global3.x, arg_0.x, false), vec4<bool>(arg_0.x, false, true, true)))), vec3<bool>(global3.x, false, true));
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: Struct_3) -> vec2<f32> {
    let var_0 = -1331f;
    let var_1 = arg_3.b;
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~abs(53894u) >> (~_wgslsmith_dot_vec3_u32(~u_input.a, u_input.a & u_input.a) % 32u), 15034u), 31u)];
    global1 = false;
    var var_3 = Struct_1(vec2<bool>(false, ~(31017u >> (u_input.a.x % 32u)) == 4294967295u), select(arg_2.b, vec3<bool>(true, func_1(arg_3.b.a).x, true), vec3<bool>(any(!arg_3.b.b), true, _wgslsmith_f_op_f32(-arg_3.c.x) != -2397f)), _wgslsmith_f_op_f32(max(arg_3.b.d.x, _wgslsmith_f_op_vec4_f32(func_2()).x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.d * vec3<f32>(arg_2.d.x, 1704f, var_1.d.x)) - arg_2.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_2()).xyy) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.d + arg_2.d))), vec3<bool>(global3.x, false, arg_1))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0, 713f, all(vec3<bool>(arg_0, false, arg_2.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.d.x) * _wgslsmith_f_op_f32(arg_3.b.d.x - -305f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1784f, 143f) * -1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global3.x || global3.x;
    var var_0 = _wgslsmith_div_vec2_f32(global0.yy, _wgslsmith_f_op_vec2_f32(func_6(true, global3.x, Struct_1(!(!vec2<bool>(false, global3.x)), func_1(vec2<bool>(true, true)), global0.x, vec3<f32>(_wgslsmith_f_op_f32(-2007f - global0.x), _wgslsmith_f_op_f32(global0.x * global0.x), -1000f)), Struct_3(false, Struct_1(vec2<bool>(global3.x, global3.x), select(vec3<bool>(true, true, global3.x), vec3<bool>(false, false, false), vec3<bool>(global3.x, global3.x, global3.x)), _wgslsmith_f_op_f32(step(global0.x, 578f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1033f, -801f, global0.x), vec3<f32>(global0.x, global0.x, global0.x)))), global0.zx))));
    var var_1 = Struct_3(true, Struct_1(vec2<bool>(all(vec3<bool>(global3.x, true, global3.x)), true), !vec3<bool>(false, global3.x, true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec2_f32(func_6(true && global3.x, true, Struct_1(vec2<bool>(true, global3.x), vec3<bool>(false, false, global3.x), global0.x, vec3<f32>(var_0.x, -1000f, -1506f)), Struct_3(false, Struct_1(vec2<bool>(false, true), vec3<bool>(false, global3.x, false), global0.x, vec3<f32>(301f, 501f, 695f)), global0.zy))).x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(147f + 1247f)), _wgslsmith_f_op_f32(f32(-1f) * -741f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 954f)))), global0.zz);
    var var_2 = vec2<bool>(false, false);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -424f);
    let var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.c.x, var_0.x, var_1.b.b.x)) + _wgslsmith_f_op_f32(1276f + var_3)))), var_1.c.x));
    var_1 = Struct_3(var_1.a, Struct_1(vec2<bool>(!any(vec2<bool>(var_2.x, global3.x)), var_2.x), !var_1.b.b, -2391f, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -508f), _wgslsmith_f_op_f32(f32(-1f) * -229f)), -2330f, 1010f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, 906f))), global0.xz) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(var_1.b.d.zy)), _wgslsmith_f_op_vec2_f32(var_1.b.d.yz - var_1.b.d.xy), !global3.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.yx * _wgslsmith_f_op_vec2_f32(exp2(var_1.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.yy - var_1.b.d.xz)))));
    global2 = array<u32, 31>();
    var_1 = Struct_3(any(select(vec3<bool>(false, any(vec3<bool>(var_1.b.b.x, var_2.x, true)), u_input.a.x >= 3182u), select(select(vec3<bool>(global3.x, true, false), vec3<bool>(var_2.x, var_2.x, true), var_1.b.b), !var_1.b.b, func_1(vec2<bool>(var_1.b.b.x, var_1.b.b.x))), var_2.x)), var_1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c) + _wgslsmith_f_op_vec2_f32(round(var_1.b.d.yz))), var_1.c) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(global0.xy, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.c.x, var_3)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-839f, var_1.c.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(u_input.d, firstTrailingBit(7311i)), _wgslsmith_f_op_f32(var_4 + _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.c.x))))), u_input.a.x << (~global2[_wgslsmith_index_u32(~34617u, 31u)] % 32u), 1u, _wgslsmith_f_op_f32(-var_1.c.x));
}

