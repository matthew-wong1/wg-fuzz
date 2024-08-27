struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

var<private> global2: array<u32, 27>;

var<private> global3: vec4<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(abs(-1000f));
    global0 = Struct_1(true, select(select(vec4<bool>(global0.d || false, true, 40681u <= arg_0, true), arg_2.b, false), vec4<bool>(arg_2.d, _wgslsmith_f_op_f32(step(-1355f, var_0)) > _wgslsmith_f_op_f32(abs(1252f)), !global1.b.b.x, global0.d), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(global2[_wgslsmith_index_u32(16588u, 27u)], global2[_wgslsmith_index_u32(arg_0, 27u)], 1u)) != 6076u), global0.c, !arg_2.b.x);
    var var_1 = global1.b.b;
    let var_2 = min(vec2<i32>(global3.x >> (_wgslsmith_mod_u32(1u, abs(global2[_wgslsmith_index_u32(u_input.b, 27u)])) % 32u), 52709i), vec2<i32>(global1.b.c, -_wgslsmith_div_i32(arg_2.c, -1i)) >> (abs(_wgslsmith_sub_vec2_u32(arg_1, arg_1) << (vec2<u32>(arg_1.x, 11253u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global3 = -vec4<i32>(0i, -12338i, ~1i | _wgslsmith_div_i32(667i, -global0.c), max(1i, -countOneBits(var_2.x)));
    return select(select(-2147483647i, global0.c, select(true, arg_2.b.x, true)) << (_wgslsmith_add_u32(arg_0, 27254u) % 32u), global1.c, all(vec4<bool>(all(global1.b.b.xw), var_0 >= -692f, !(!arg_2.a), all(!vec4<bool>(false, var_1.x, false, arg_2.b.x)))));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> vec4<bool> {
    let var_0 = vec3<u32>(47959u, ~_wgslsmith_clamp_u32(~(~1u), u_input.a & 104505u, 94451u), 0u);
    let var_1 = vec3<i32>(func_3(~_wgslsmith_sub_u32(var_0.x, 49666u << (1u % 32u)), vec2<u32>(~4294967295u, var_0.x), global1.b), _wgslsmith_clamp_i32(countOneBits(global1.c), -_wgslsmith_mod_i32(global0.c, ~(-2147483647i)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_0.x, global0.c) & abs(global0.c), global0.c)), firstLeadingBit(arg_0.x));
    var var_2 = global1.b;
    global3 = vec4<i32>(global1.c | global1.b.c, arg_0.x, 1i, -(1i << (var_0.x % 32u))) >> (abs(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(33160u, var_0.x, global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(1u, 27u)])), vec4<u32>(56364u ^ u_input.a, ~0u, u_input.c, select(4294967295u, 1u, var_2.d)))) % vec4<u32>(32u));
    let var_3 = Struct_2(vec4<bool>(global1.a.x, true, global0.a, !all(var_2.b) && true), Struct_1(0i < _wgslsmith_add_i32(global1.c, var_2.c), select(global1.b.b, vec4<bool>(any(var_2.b.xy), true, all(global0.b.yx), global0.a), vec4<bool>(var_2.b.x, false, global0.a, global1.a.x)), -1i, any(!(!var_2.b))), reverseBits(var_2.c), vec4<bool>(_wgslsmith_f_op_f32(abs(arg_1)) >= -599f, false && (_wgslsmith_f_op_f32(717f + arg_1) < 901f), true, true));
    return !(!vec4<bool>(all(!vec2<bool>(false, global1.a.x)), false, true | !global1.a.x, (36486u << (1u % 32u)) <= ~global2[_wgslsmith_index_u32(var_0.x, 27u)]));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> Struct_2 {
    var var_0 = global1.b;
    var var_1 = all(vec2<bool>(all(vec3<bool>(arg_3 <= global3.x, arg_2 < -214f, any(vec3<bool>(true, global0.b.x, global1.a.x)))), arg_2 < arg_2));
    global0 = Struct_1(var_0.a, vec4<bool>(all(select(vec3<bool>(var_0.d, true, arg_1.d), !arg_1.b.xww, true)), !all(func_2(vec3<i32>(1757i, -39661i, 10488i), arg_2)), all(vec2<bool>(true & var_0.b.x, true)), func_2(select(global3.zzx, min(global3.xxw, global3.zzz), !global0.b.wxz), _wgslsmith_f_op_f32(f32(-1f) * -2362f)).x), _wgslsmith_div_i32(~global0.c, 2147483647i), !(!var_0.a));
    return Struct_2(select(global0.b, vec4<bool>(all(vec3<bool>(arg_1.d, true, global0.d)), arg_1.a, arg_1.d, global1.a.x || any(vec2<bool>(arg_1.b.x, var_0.a))), select(arg_1.b, !global0.b, arg_1.d)), Struct_1(!(false | (952u <= arg_0)), global0.b, -(i32(-1i) * -var_0.c), true), _wgslsmith_sub_i32(-2147483647i, global1.c), func_2(~vec3<i32>(-43358i, -var_0.c, ~arg_3), _wgslsmith_f_op_f32(max(arg_2, 431f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(u_input.b, global1.b, 393f, global3.x);
    let var_0 = countOneBits(global2[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 27u)]);
    let var_1 = ~abs(var_0) >> (countOneBits(~max(1u, 13920u)) % 32u);
    let var_2 = global0.c;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(420f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -496f) * _wgslsmith_f_op_f32(max(-511f, 767f))), _wgslsmith_f_op_f32(-1557f * 797f))))) + -1821f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, 735f, var_3))))), _wgslsmith_mod_vec2_i32(~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.b.c, 39730i), global3.xw), -1i), ~(~(global3.zz & vec2<i32>(global1.c, -1i)))), u_input.c, var_0, 1u);
}

