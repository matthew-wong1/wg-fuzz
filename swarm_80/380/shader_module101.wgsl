struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(-21030i, i32(-2147483648)), vec2<i32>(-1i, -1i), vec2<i32>(0i, -24353i), vec2<i32>(-25161i, 44032i), vec2<i32>(7411i, 0i), vec2<i32>(5394i, i32(-2147483648)), vec2<i32>(44761i, -569i), vec2<i32>(-29586i, 4515i), vec2<i32>(21028i, 1i), vec2<i32>(0i, 0i));

var<private> global1: array<Struct_1, 21>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<u32>) -> f32 {
    let var_0 = Struct_1(true, abs(_wgslsmith_mult_u32(abs(min(51705u, arg_0.b)), min(4294967295u, _wgslsmith_clamp_u32(4294967295u, u_input.b, 4294967295u)))), !arg_1.c && true, true, true);
    return -684f;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> f32 {
    var var_0 = arg_0;
    let var_1 = Struct_2(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1193f, 1000f))), _wgslsmith_f_op_f32(f32(-1f) * -363f)))), false, _wgslsmith_sub_i32(-var_0.d, arg_0.d));
    let var_2 = Struct_1(arg_0.c, arg_0.a, select(select(_wgslsmith_sub_i32(49707i, 2147483647i), var_0.d, any(vec3<bool>(true, arg_2, arg_0.c))), (-62425i >> (var_0.a % 32u)) & -arg_0.d, !all(vec2<bool>(var_0.c, var_1.c))) == 1i, arg_0.c, arg_2);
    let var_3 = var_0.a;
    var_0 = var_1;
    return -1786f;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(max(u_input.b, abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(21409u, 0u), u_input.a.zx))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(6929u, -478f, true, -45039i), _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(29277u, 21u)], Struct_2(0u, 1660f, true, 13117i), global1[_wgslsmith_index_u32(86118u, 21u)], u_input.a.xyw)), true))), _wgslsmith_f_op_f32(-606f + _wgslsmith_f_op_f32(-1f))), !(true & (true || any(vec2<bool>(false, false)))), _wgslsmith_add_i32(1i, 1i));
    let var_1 = vec4<u32>(var_0.a, 16189u, var_0.a << (51264u % 32u), ~_wgslsmith_mod_u32(~(4294967295u >> (var_0.a % 32u)), ~var_0.a & ~35151u));
    var var_2 = select(select(vec4<bool>(var_0.c, any(vec3<bool>(var_0.c, true, false)), false, all(vec3<bool>(true, var_0.c, var_0.c)) == (var_0.c | var_0.c)), select(!select(vec4<bool>(true, var_0.c, var_0.c, true), vec4<bool>(true, var_0.c, var_0.c, var_0.c), vec4<bool>(true, var_0.c, false, var_0.c)), select(!vec4<bool>(false, var_0.c, true, var_0.c), vec4<bool>(var_0.c, var_0.c, var_0.c, false), !vec4<bool>(var_0.c, true, false, var_0.c)), !select(vec4<bool>(var_0.c, var_0.c, var_0.c, true), vec4<bool>(var_0.c, true, var_0.c, var_0.c), false)), all(!select(vec4<bool>(var_0.c, true, true, var_0.c), vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c), var_0.c))), !select(select(!vec4<bool>(false, var_0.c, var_0.c, var_0.c), select(vec4<bool>(true, var_0.c, var_0.c, false), vec4<bool>(var_0.c, var_0.c, true, var_0.c), var_0.c), !var_0.c), !vec4<bool>(var_0.c, var_0.c, var_0.c, true), select(select(vec4<bool>(true, true, var_0.c, var_0.c), vec4<bool>(var_0.c, true, var_0.c, true), vec4<bool>(true, var_0.c, true, false)), !vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c), all(vec2<bool>(var_0.c, true)))), any(select(vec4<bool>(!var_0.c, var_0.b != 925f, var_0.c, false), !(!vec4<bool>(var_0.c, true, var_0.c, false)), !(!var_0.c))));
    let var_3 = Struct_2(u_input.a.x, -1000f, any(select(select(select(vec4<bool>(var_2.x, var_0.c, true, var_0.c), vec4<bool>(false, var_2.x, var_0.c, var_2.x), vec4<bool>(false, false, var_0.c, true)), vec4<bool>(var_2.x, var_0.c, false, var_0.c), false), vec4<bool>(false & var_2.x, all(vec4<bool>(false, var_2.x, false, var_0.c)), var_2.x, false), !vec4<bool>(false, var_0.c, true, false))), _wgslsmith_mod_i32(_wgslsmith_mult_i32(~_wgslsmith_mod_i32(var_0.d, -3797i), _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, var_0.d, -1i, var_0.d), ~vec4<i32>(var_0.d, var_0.d, 2147483647i, var_0.d))), 0i));
    let var_4 = var_0.b;
    return Struct_1(false, abs(_wgslsmith_div_u32(35944u, 27027u)), var_2.x, all(vec4<bool>(!(!var_3.c), false && any(var_2.xy), !(!var_0.c), all(var_2.zz))), true);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-466f)), _wgslsmith_f_op_f32(1462f + 654f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_2(33939u, 697f, false, -2147483647i), 404f, arg_1.d)), _wgslsmith_f_op_f32(-470f - -1440f))), 1289f, _wgslsmith_f_op_f32(sign(-162f)))));
    var var_1 = any(!select(select(!vec3<bool>(false, arg_1.d, arg_1.a), !vec3<bool>(arg_1.e, arg_1.a, false), !vec3<bool>(arg_1.c, false, true)), select(vec3<bool>(true, arg_1.d, arg_1.e), select(vec3<bool>(arg_1.c, true, false), vec3<bool>(true, arg_1.d, arg_1.c), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, arg_1.d), false)), u_input.a.x == func_2().b));
    global1 = array<Struct_1, 21>();
    let var_2 = Struct_2(~(~abs(~1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), arg_1.c && false, -7594i);
    var var_3 = var_2.b;
    return 33394i;
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    let var_0 = vec2<u32>(abs(~u_input.a.x), 9812u);
    global1 = array<Struct_1, 21>();
    let var_1 = true;
    var var_2 = Struct_1(var_1, 28833u, true, false, var_1);
    let var_3 = func_5(var_2.b, func_2(), 4294967295u) & 21751i;
    return min(((~0u ^ _wgslsmith_dot_vec3_u32(arg_0, arg_0)) & select(~var_2.b, min(var_2.b, 38440u), !var_2.e)) | var_2.b, min(1u, abs(0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 21>();
    var var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(select(_wgslsmith_mod_vec3_u32(firstLeadingBit(u_input.a.yyx), countOneBits(vec3<u32>(0u, u_input.b, 4294967295u))), u_input.a.wzy, all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)))), vec3<u32>(4294967295u, ~_wgslsmith_add_u32(u_input.b, u_input.b), 4294967295u)), min(select(vec3<u32>(u_input.b, 21669u, u_input.b), u_input.a.xwz, select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))) | u_input.a.zzy, vec3<u32>(func_1(vec3<u32>(34866u, u_input.a.x, u_input.b)), u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, 0u), ~vec4<u32>(58536u, u_input.a.x, u_input.a.x, u_input.b)))));
    let var_1 = any(select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), true), true), vec4<bool>(false, true, firstTrailingBit(61280i) < ~(-61668i), false), vec4<bool>(true, true, countOneBits(u_input.b) != ~4294967295u, ~var_0.x >= var_0.x)));
    global1 = array<Struct_1, 21>();
    let var_2 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<u32>(~u_input.a.x, 1u, ~var_0.x, 0u), u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -813f) + _wgslsmith_f_op_f32(f32(-1f) * -690f)), _wgslsmith_f_op_f32(trunc(1f)))), 327f), ((u_input.b >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 101843u), vec3<u32>(var_0.x, 51060u, 1667u)) % 32u)) >> (_wgslsmith_dot_vec4_u32(max(u_input.a, u_input.a), firstTrailingBit(vec4<u32>(0u, u_input.b, 13851u, 32118u))) % 32u)) | min(37276u, firstLeadingBit(var_0.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1253f), -521f, 1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1415f, 1054f, 355f), vec3<f32>(982f, 1864f, -121f), true)))))), vec3<i32>(_wgslsmith_sub_i32(~_wgslsmith_add_i32(12323i, 1i), -_wgslsmith_add_i32(257i, 1i)), func_5(_wgslsmith_mod_u32(var_0.x, var_0.x), global1[_wgslsmith_index_u32(~90363u, 21u)], firstTrailingBit(28620u)) >> ((min(var_2, var_2) >> (~0u % 32u)) % 32u), 1i));
}

