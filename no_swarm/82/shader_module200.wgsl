struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
    d: vec3<f32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(true, false, false);

var<private> global1: vec3<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: f32) -> i32 {
    let var_0 = -968f;
    var var_1 = !(false && global0[_wgslsmith_index_u32(0u, 3u)]);
    var var_2 = true;
    global1 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(-arg_1.a.a.c, -2147483647i) | arg_0.a.a.c, reverseBits(0i)), _wgslsmith_add_i32(0i, arg_0.a.a.c), _wgslsmith_mod_i32(0i, min(arg_1.a.a.c >> (~1u % 32u), -global1.x)));
    let var_3 = vec2<bool>(true, arg_0.e);
    return ~_wgslsmith_mult_i32(9537i, 31525i);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>, arg_3: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_mod_i32(func_3(Struct_3(Struct_2(arg_0), u_input.a.xyx, Struct_2(arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-605f, arg_0.b, arg_0.a))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1, -461f))), all(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], false, global0[_wgslsmith_index_u32(u_input.b, 3u)], true), vec4<bool>(global0[_wgslsmith_index_u32(arg_2.x, 3u)], true, global0[_wgslsmith_index_u32(arg_2.x, 3u)], true), false))), Struct_3(Struct_2(Struct_1(632f, -501f, global1.x)), _wgslsmith_div_vec3_u32(abs(u_input.a.yzw), ~u_input.a.yyz), Struct_2(Struct_1(303f, 1000f, -9295i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(157f, 1209f, -695f))), true), -vec3<i32>(~global1.x, ~(-13422i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), global1.xx)), _wgslsmith_f_op_f32(2010f - 703f)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, global1.x, arg_0.c, 43912i), vec4<i32>(-2147483647i, global1.x, global1.x, global1.x)), vec4<i32>(global1.x, arg_0.c, arg_0.c, arg_0.c)), select(countOneBits(vec4<i32>(-1i, 13289i, arg_0.c, global1.x)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, arg_0.c, arg_0.c, -2147483647i), vec4<i32>(-1i, -1i, arg_0.c, arg_0.c)), false)), -33017i, _wgslsmith_add_i32(global1.x, 1i)));
    let var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(sign(483f)), global1.x)));
    let var_2 = !(!select(!(!vec4<bool>(arg_3.x, false, global0[_wgslsmith_index_u32(arg_2.x, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)])), !vec4<bool>(false, true, true, arg_3.x), select(select(vec4<bool>(arg_3.x, global0[_wgslsmith_index_u32(u_input.c, 3u)], true, false), vec4<bool>(global0[_wgslsmith_index_u32(arg_2.x, 3u)], global0[_wgslsmith_index_u32(arg_2.x, 3u)], true, global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec4<bool>(arg_3.x, false, true, false)), vec4<bool>(global0[_wgslsmith_index_u32(0u, 3u)], arg_3.x, true, global0[_wgslsmith_index_u32(0u, 3u)]), global0[_wgslsmith_index_u32(arg_2.x, 3u)])));
    global0 = array<bool, 3>();
    let var_3 = var_1;
    return ~arg_2.x;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_4) -> Struct_3 {
    global1 = firstLeadingBit(vec3<i32>(-_wgslsmith_dot_vec2_i32(~global1.yz, countOneBits(global1.zy)), ~global1.x, global1.x));
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    return Struct_3(Struct_2(arg_2.a.a), u_input.a.yxz, arg_2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(arg_2.a.a.a + 1881f), _wgslsmith_f_op_f32(f32(-1f) * -682f), _wgslsmith_div_f32(2435f, arg_2.a.a.a))))), false);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: f32, arg_3: f32) -> Struct_2 {
    let var_0 = func_4(func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-240f))), 1960f, firstTrailingBit(global1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3))), ~u_input.a.yy, select(vec3<bool>(true, global0[_wgslsmith_index_u32(16090u, 3u)] || global0[_wgslsmith_index_u32(u_input.c, 3u)], true), !vec3<bool>(arg_0.x, arg_0.x, true), all(arg_0))), 1u, arg_1);
    let var_1 = vec2<u32>(u_input.a.x, _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a.x, 88903u, ~4294967295u) << (~70354u % 32u), u_input.a.x));
    global1 = select(vec3<i32>(-_wgslsmith_add_i32(2147483647i, -1i), func_3(var_0, Struct_3(func_4(1u, u_input.a.x, arg_1).c, vec3<u32>(4294967295u, var_0.b.x, u_input.c), Struct_2(arg_1.a.a), func_4(129335u, u_input.a.x, arg_1).d, true), vec3<i32>(arg_1.a.a.c, -4570i, -13128i) | vec3<i32>(global1.x, -20757i, global1.x), var_0.c.a.b), -16772i), select(select(vec3<i32>(arg_1.a.a.c, 4413i, arg_1.a.a.c) >> (_wgslsmith_div_vec3_u32(vec3<u32>(55813u, 0u, 3948u), u_input.a.wxz) % vec3<u32>(32u)), vec3<i32>(~var_0.a.a.c, abs(global1.x), ~2147483647i), global0[_wgslsmith_index_u32(var_1.x, 3u)]), -(~vec3<i32>(arg_1.a.a.c, var_0.a.a.c, var_0.a.a.c)) >> (u_input.a.wxz % vec3<u32>(32u)), select(vec3<bool>(all(vec4<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 3u)], var_0.e, false)), select(global0[_wgslsmith_index_u32(2327u, 3u)], false, true), true), select(select(vec3<bool>(true, true, var_0.e), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), true), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 3u)], var_0.e, arg_0.x), !vec3<bool>(arg_0.x, true, true)), select(vec3<bool>(arg_0.x, false, global0[_wgslsmith_index_u32(1u, 3u)]), vec3<bool>(arg_0.x, false, global0[_wgslsmith_index_u32(var_1.x, 3u)]), false))), vec3<bool>(arg_1.a.a.c <= max(func_4(var_0.b.x, 12613u, Struct_4(var_0.c)).a.a.c, ~(-26377i)), true, true));
    let var_2 = select(vec4<bool>(true, true, select(true, !arg_0.x, any(vec3<bool>(true, var_0.e, var_0.e)) | func_4(4294967295u, 752u, arg_1).e), var_0.e), select(select(vec4<bool>(arg_0.x, all(arg_0), func_4(1u, 88775u, Struct_4(var_0.a)).e, all(vec4<bool>(var_0.e, var_0.e, global0[_wgslsmith_index_u32(var_0.b.x, 3u)], global0[_wgslsmith_index_u32(46513u, 3u)]))), select(vec4<bool>(true, var_0.e, true, arg_0.x), select(vec4<bool>(arg_0.x, false, global0[_wgslsmith_index_u32(u_input.b, 3u)], false), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(var_0.b.x, 3u)])), true), !vec4<bool>(var_0.e, false, arg_0.x, arg_0.x)), vec4<bool>(!any(vec3<bool>(true, false, true)), true, true, arg_0.x && true), !select(select(vec4<bool>(true, false, false, var_0.e), vec4<bool>(var_0.e, global0[_wgslsmith_index_u32(4294967295u, 3u)], false, true), vec4<bool>(var_0.e, false, false, arg_0.x)), vec4<bool>(true, false, true, true), !var_0.e)), false == !(!global0[_wgslsmith_index_u32(~19128u, 3u)]));
    let var_3 = var_2;
    return func_4(~(~(~12213u)), ~(reverseBits(_wgslsmith_sub_u32(0u, u_input.b)) & var_1.x), arg_1).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(211f, -531f, _wgslsmith_div_i32(~87459i, _wgslsmith_mult_i32(-564i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global1.x, -1i, -12905i, global1.x), vec4<i32>(global1.x, 0i, global1.x, 0i)), _wgslsmith_div_vec4_i32(vec4<i32>(global1.x, global1.x, -17262i, 19900i), vec4<i32>(0i, global1.x, 1i, -2147483647i))))));
    let var_1 = u_input.a.x;
    var var_2 = !global0[_wgslsmith_index_u32(1u, 3u)];
    let var_3 = vec4<bool>(!(!global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_1, 95344u), 3u)]), all(!(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(var_1, 3u)], global0[_wgslsmith_index_u32(var_1, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)])))), !any(vec2<bool>(false, !global0[_wgslsmith_index_u32(var_1, 3u)])), true);
    var var_4 = func_1(!(!select(!var_3.zz, vec2<bool>(true, global0[_wgslsmith_index_u32(32233u, 3u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 3u)], true), var_3.yw, global0[_wgslsmith_index_u32(u_input.b, 3u)]))), Struct_4(Struct_2(var_0)), _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(230f))) + 880f)), 1060f);
    global0 = array<bool, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-vec3<i32>(13147i, global1.x, global1.x)) | vec3<i32>(-1i, -1i, _wgslsmith_div_i32(var_0.c, global1.x))), u_input.a, _wgslsmith_f_op_f32(round(var_0.a)), var_4.a.c);
}

