struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: i32;

var<private> global2: i32 = 22572i;

var<private> global3: Struct_4;

var<private> global4: Struct_3;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: bool) -> i32 {
    let var_0 = global3.a.a.x;
    global4 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a.x, global3.a.c, -782f) * vec3<f32>(global4.a.x, -1025f, -1010f)), vec3<f32>(global3.a.c, global4.a.x, global3.a.c), global3.a.e.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1725f, 1046f, global4.a.x)))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.c, global3.a.c, -1247f, -451f) - vec4<f32>(global4.a.x, -500f, -956f, 925f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global4.a.x)) * _wgslsmith_f_op_f32(-global3.a.c)), -105f, global3.a.c, global3.a.c) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global4.a.x, global4.a.x, -969f))))));
    let var_2 = reverseBits(48462i);
    global2 = -1i;
    return global3.a.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> f32 {
    global2 = func_3(firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), ~21390u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 3805u, 9213u), vec3<u32>(60210u, 4294967295u, u_input.a.x), arg_0.e), select(vec3<u32>(u_input.a.x, 51812u, u_input.c.x), vec3<u32>(u_input.a.x, u_input.c.x, 1u), vec3<bool>(true, false, arg_0.e.x))))), true);
    let var_0 = _wgslsmith_dot_vec3_i32(global3.a.a.wzw, arg_0.a.wyw);
    var var_1 = any(vec4<bool>(all(vec4<bool>(true, true, global3.a.e.x, arg_0.e.x)) && any(!vec2<bool>(global3.a.e.x, arg_0.e.x)), !all(select(vec2<bool>(global3.a.e.x, global3.a.e.x), arg_0.e.yz, global3.a.e.x)), any(vec2<bool>(true, true)), false));
    var var_2 = Struct_4(Struct_1(arg_0.a & vec4<i32>(i32(-1i) * -1i, countOneBits(var_0), _wgslsmith_mod_i32(0i, arg_0.b), _wgslsmith_add_i32(u_input.b, var_0)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, 25258i), var_0 | 2147483647i), ~(-1i), countOneBits(_wgslsmith_dot_vec3_i32(global3.a.a.yyw, global3.a.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1053f)), _wgslsmith_sub_vec3_i32(max(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.b, -2147483647i), vec3<i32>(var_0, 74189i, 26800i)), ~global3.a.a.zzw), ~vec3<i32>(global3.a.d.x, -21841i, 2147483647i)), vec3<bool>(1i != global3.a.a.x, arg_0.e.x, ~1u >= abs(u_input.a.x))));
    let var_3 = Struct_4(Struct_1(firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, arg_0.a.x, 2147483647i, 12802i) & vec4<i32>(var_2.a.a.x, global3.a.b, u_input.b, var_0), vec4<i32>(13458i, global3.a.d.x, 2147483647i, var_2.a.b))), _wgslsmith_mult_i32(-2147483647i, countOneBits(u_input.b)), _wgslsmith_f_op_f32(step(var_2.a.c, 1728f)), var_2.a.d, vec3<bool>(true, global3.a.e.x, global3.a.e.x)));
    return _wgslsmith_f_op_f32(ceil(arg_0.c));
}

fn func_1(arg_0: Struct_4) -> Struct_4 {
    var var_0 = global3.a;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.c * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(global3.a, vec2<f32>(var_0.c, arg_0.a.c))), var_0.c))) + 688f));
    var_1 = _wgslsmith_f_op_f32(trunc(global3.a.c));
    var var_2 = vec4<u32>(u_input.a.x, 4294967295u, ~0u, countOneBits(abs(1u)));
    let var_3 = countOneBits(vec2<u32>(countOneBits(~(var_2.x | 4294967295u)), ~u_input.c.x ^ ~(1u >> (1u % 32u))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global3.a.e.x;
    var var_1 = global3.a.e.x;
    let var_2 = func_1(Struct_4(Struct_1(-vec4<i32>(u_input.b, -25766i, -38282i, -68427i), ~1140i, _wgslsmith_f_op_f32(-762f + _wgslsmith_f_op_f32(floor(global3.a.c))), select(firstTrailingBit(vec3<i32>(global3.a.b, 2125i, u_input.b)), max(vec3<i32>(2147483647i, u_input.b, 47949i), global3.a.d), !vec3<bool>(false, true, var_0)), !global3.a.e)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1497f, 264f, global4.a.x, global3.a.c) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(2359f, 557f, 541f, 1296f)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.x, 1000f, global3.a.c, global4.a.x)), vec4<f32>(global3.a.c, var_2.a.c, global3.a.c, global4.a.x))))));
    let var_4 = Struct_1(select(firstTrailingBit(global3.a.a), global3.a.a & global3.a.a, var_2.a.e.x) | vec4<i32>(global3.a.b, _wgslsmith_mod_i32(-global3.a.d.x, global3.a.d.x), reverseBits(reverseBits(global3.a.a.x)), u_input.b), ~(func_3(1u, var_3.x > var_3.x) & var_2.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1233f)), _wgslsmith_f_op_f32(-global3.a.c)))) * _wgslsmith_f_op_f32(f32(-1f) * -1007f)), abs(global3.a.d), global3.a.e);
    var var_5 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -911f))) * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.a.c))))))), 471f, -547f);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(abs(vec4<u32>(27455u, 31132u, 4294967295u, 62848u)) | vec4<u32>(1u, u_input.a.x, u_input.c.x, u_input.a.x))), ~(~_wgslsmith_mod_u32(~u_input.c.x, u_input.a.x)), ~(~firstLeadingBit(~vec4<u32>(8617u, 14677u, 21928u, u_input.c.x))), _wgslsmith_mod_vec2_u32(~u_input.c, ~(~vec2<u32>(u_input.c.x, u_input.a.x))), ~(abs(~u_input.c.x) & abs(~0u)));
}

