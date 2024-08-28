struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(1304f, 38572u, Struct_2(-1120f, vec4<f32>(-1871f, 1963f, 1000f, -1393f), 736f), 1u);

var<private> global1: f32 = 1000f;

var<private> global2: f32;

var<private> global3: array<bool, 16> = array<bool, 16>(false, false, false, true, false, true, false, false, false, true, true, false, true, false, true, true);

var<private> global4: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> f32 {
    var var_0 = ~(u_input.b | 9145i) << (global0.b % 32u);
    var_0 = i32(-1i) * -(~6560i);
    var_0 = countOneBits(u_input.a.x);
    var_0 = u_input.b;
    var var_1 = Struct_1(~(vec2<u32>(u_input.c.x, _wgslsmith_div_u32(u_input.c.x, u_input.d)) & (u_input.c.yy | ~vec2<u32>(global0.b, 45648u))));
    return global0.a;
}

fn func_3(arg_0: f32) -> vec2<bool> {
    let var_0 = ~u_input.c.x;
    return select(vec2<bool>(global3[_wgslsmith_index_u32(~(min(14672u, global0.d) << (_wgslsmith_add_u32(u_input.c.x, 10133u) % 32u)), 16u)], all(select(select(vec3<bool>(global3[_wgslsmith_index_u32(78588u, 16u)], true, global3[_wgslsmith_index_u32(var_0, 16u)]), vec3<bool>(global3[_wgslsmith_index_u32(global0.d, 16u)], global3[_wgslsmith_index_u32(var_0, 16u)], true), global3[_wgslsmith_index_u32(global0.d, 16u)]), !vec3<bool>(true, global3[_wgslsmith_index_u32(56122u, 16u)], global3[_wgslsmith_index_u32(4382u, 16u)]), global3[_wgslsmith_index_u32(63882u, 16u)]))), select(select(!select(vec2<bool>(false, true), vec2<bool>(global3[_wgslsmith_index_u32(global0.d, 16u)], global3[_wgslsmith_index_u32(1u, 16u)]), true), !select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 16u)], global3[_wgslsmith_index_u32(0u, 16u)]), vec2<bool>(global3[_wgslsmith_index_u32(u_input.d, 16u)], global3[_wgslsmith_index_u32(var_0, 16u)]), vec2<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 16u)], global3[_wgslsmith_index_u32(global0.b, 16u)])), select(!vec2<bool>(global3[_wgslsmith_index_u32(global0.b, 16u)], false), select(vec2<bool>(global3[_wgslsmith_index_u32(var_0, 16u)], true), vec2<bool>(true, true), vec2<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 16u)], global3[_wgslsmith_index_u32(4294967295u, 16u)])), false)), select(!vec2<bool>(global3[_wgslsmith_index_u32(22083u, 16u)], global3[_wgslsmith_index_u32(58777u, 16u)]), select(select(vec2<bool>(false, global3[_wgslsmith_index_u32(2010u, 16u)]), vec2<bool>(global3[_wgslsmith_index_u32(144962u, 16u)], false), global3[_wgslsmith_index_u32(var_0, 16u)]), select(vec2<bool>(global3[_wgslsmith_index_u32(global0.b, 16u)], global3[_wgslsmith_index_u32(u_input.c.x, 16u)]), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 16u)], global3[_wgslsmith_index_u32(1u, 16u)]), true), all(vec4<bool>(global3[_wgslsmith_index_u32(34195u, 16u)], true, global3[_wgslsmith_index_u32(global0.b, 16u)], global3[_wgslsmith_index_u32(var_0, 16u)]))), false), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(49436u, ~u_input.d), u_input.c.x << (~u_input.c.x % 32u)), 16u)]), select(vec2<bool>(global3[_wgslsmith_index_u32(~max(18330u, 1u), 16u)], any(vec2<bool>(false, global3[_wgslsmith_index_u32(1u, 16u)]))), vec2<bool>(all(!vec4<bool>(true, global3[_wgslsmith_index_u32(48979u, 16u)], global3[_wgslsmith_index_u32(u_input.c.x, 16u)], false)), !select(false, true, true)), vec2<bool>(false, global3[_wgslsmith_index_u32(countOneBits(0u), 16u)] || true)));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> vec3<f32> {
    var var_0 = vec4<i32>(1i, u_input.a.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(1i, -18180i)), vec2<i32>(1i, u_input.a.x)), u_input.a), -vec2<i32>(-u_input.a.x, i32(-1i) * -2147483647i)), 2147483647i);
    var var_1 = func_3(_wgslsmith_f_op_f32(func_2()));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-613f)), -1135f)) * _wgslsmith_f_op_f32(-global0.c.b.x))), _wgslsmith_mult_u32(1u, arg_1), Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -534f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -856f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + global0.c.a)), _wgslsmith_f_op_f32(433f + _wgslsmith_f_op_f32(max(352f, global0.a))), 736f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-111f, global0.c.b.x)))), 83966u);
    var var_3 = any(!vec2<bool>(true, var_1.x));
    let var_4 = Struct_1(~(~vec2<u32>(~u_input.c.x, _wgslsmith_add_u32(3965u, 1u))));
    return vec3<f32>(953f, var_2.a, var_2.c.c);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: bool) -> Struct_5 {
    global1 = _wgslsmith_f_op_f32(sign(arg_0.a));
    global0 = Struct_5(_wgslsmith_f_op_f32(round(global0.c.b.x)), ~1u, arg_0, (countOneBits(u_input.c.x) >> (0u % 32u)) << (global0.d % 32u));
    let var_0 = u_input.a;
    global1 = arg_1.x;
    let var_1 = arg_0;
    return Struct_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1219f)), _wgslsmith_f_op_f32(944f * var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x))) * _wgslsmith_f_op_f32(floor(arg_0.b.x))), 57618u, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + -542f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.x)) + var_1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x - arg_1.x), arg_0.b.x, var_1.c, _wgslsmith_f_op_f32(428f + arg_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-376f + _wgslsmith_f_op_f32(arg_1.x + arg_1.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(f32(-1f) * -517f)))), ~select(abs(global0.b), u_input.d, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -646f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(global0.a + global0.c.b.x), _wgslsmith_f_op_f32(global0.a * global0.a), _wgslsmith_f_op_f32(trunc(global0.a)), 639f), _wgslsmith_f_op_vec4_f32(-global0.c.b), select(select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 16u)], true, false, false), vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.d, 16u)], false, false), vec4<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 16u)], global3[_wgslsmith_index_u32(u_input.d, 16u)], true, global3[_wgslsmith_index_u32(u_input.d, 16u)])), !vec4<bool>(global3[_wgslsmith_index_u32(23329u, 16u)], global3[_wgslsmith_index_u32(u_input.c.x, 16u)], false, false), !global3[_wgslsmith_index_u32(global0.b, 16u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.a, 441f)) + -840f), global0.a)), _wgslsmith_f_op_vec3_f32(func_1(~vec2<u32>(1u, 61700u) ^ vec2<u32>(global0.d | 1u, 4198u), 1u)), global3[_wgslsmith_index_u32(~(~global0.b), 16u)]);
    global3 = array<bool, 16>();
    global4 = ~(_wgslsmith_mult_i32(-(25318i << (u_input.d % 32u)), 60i) >> (~u_input.d % 32u));
    var var_1 = select(vec4<bool>(!global3[_wgslsmith_index_u32(1u, 16u)], true, true, !any(select(vec4<bool>(global3[_wgslsmith_index_u32(1u, 16u)], global3[_wgslsmith_index_u32(63961u, 16u)], false, true), vec4<bool>(false, true, true, global3[_wgslsmith_index_u32(16344u, 16u)]), global3[_wgslsmith_index_u32(u_input.d, 16u)]))), !select(select(vec4<bool>(true, global3[_wgslsmith_index_u32(23233u, 16u)], false, global3[_wgslsmith_index_u32(u_input.d, 16u)]), vec4<bool>(global3[_wgslsmith_index_u32(global0.d, 16u)], global3[_wgslsmith_index_u32(29104u, 16u)], global3[_wgslsmith_index_u32(global0.b, 16u)], true), true), !(!vec4<bool>(global3[_wgslsmith_index_u32(0u, 16u)], false, false, global3[_wgslsmith_index_u32(u_input.c.x, 16u)])), u_input.b < _wgslsmith_mod_i32(-1i, u_input.a.x)), true != !func_3(_wgslsmith_f_op_f32(trunc(-2895f))).x);
    var_1 = vec4<bool>(select(true, all(select(select(var_1.wxw, var_1.wyx, var_1.wzy), select(var_1.zzx, var_1.xwx, var_1.wzy), vec3<bool>(false, global3[_wgslsmith_index_u32(0u, 16u)], var_1.x))), false), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, var_1.x), func_3(-265f).x)), true, true);
    global3 = array<bool, 16>();
    var var_2 = reverseBits(vec3<i32>(max(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, u_input.b, 28746i), vec4<i32>(u_input.b, 0i, -1794i, 2147483647i)), abs(vec4<i32>(u_input.b, 2147483647i, u_input.b, -60609i))), -u_input.b), 2147483647i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_0.c.b.wwy));
}

