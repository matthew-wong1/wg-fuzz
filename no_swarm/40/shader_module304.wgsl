struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: bool,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> vec2<bool> {
    let var_0 = Struct_2(arg_0.a);
    let var_1 = 20401i;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1566f, _wgslsmith_div_f32(var_0.a.b, 376f)))), _wgslsmith_div_f32(810f, arg_0.a.b), arg_0.a.e.x));
    var var_3 = Struct_3(!(arg_1 != var_0.a.c.x), Struct_1(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a.a)))), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 64478i), vec2<i32>(0i, arg_0.a.c.x)), -countOneBits(vec2<i32>(-27047i, var_1))), !vec2<bool>(any(vec3<bool>(true, arg_0.a.d.x, true)), true), var_0.a.e), u_input.d.x, !select(vec4<bool>(827f > var_0.a.a, true, var_0.a.d.x, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, arg_2, var_0.a.d.x, false), false), vec4<bool>(0u <= u_input.a.x, false, false, true)), _wgslsmith_mod_i32(reverseBits(_wgslsmith_mod_i32(2517i, u_input.e) << (~0u % 32u)), reverseBits(countOneBits(arg_1))));
    let var_4 = !any(!arg_0.a.d) | true;
    return vec2<bool>(var_0.a.d.x, any(var_3.d.zxz));
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    var var_0 = Struct_2(Struct_1(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, 39561i), vec2<i32>(~u_input.e, _wgslsmith_add_i32(u_input.c, 1i))), !select(vec2<bool>(true, true), func_3(Struct_2(Struct_1(arg_0.x, arg_0.x, vec2<i32>(-19110i, u_input.c), vec2<bool>(false, false), arg_0)), -11810i, false), true), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)), -426f, all(vec3<bool>(false, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-327f)) * _wgslsmith_div_f32(466f, arg_0.x)), _wgslsmith_f_op_f32(arg_0.x * 889f), _wgslsmith_f_op_f32(trunc(1288f)))));
    var var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.a.e.x)), arg_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * 437f))), var_0.a.c >> (~u_input.b % vec2<u32>(32u)), !(!vec2<bool>(var_0.a.d.x, var_0.a.d.x)), arg_0)), _wgslsmith_mod_u32(max(~u_input.b.x & countOneBits(0u), abs(u_input.d.x)), 27210u), any(func_3(Struct_2(var_0.a), var_0.a.c.x, true)), select(true, true, true), Struct_2(var_0.a));
    var var_2 = all(var_0.a.d);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.e.x, var_0.a.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.e.x))))), (-vec2<i32>(var_1.a.a.c.x, 0i) << (~vec2<u32>(1u, 1u) % vec2<u32>(32u))) ^ var_0.a.c, vec2<bool>(var_1.d, any(vec2<bool>(func_3(var_1.e, u_input.c, false).x, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_0))), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-var_1.e.a.e.x), _wgslsmith_f_op_f32(max(var_1.a.a.b, -1797f)), arg_0.x)))));
    let var_4 = 9864u;
    return max(4294967295u, (((4294967295u << (var_1.b % 32u)) << (var_1.b % 32u)) ^ ~62886u) >> (var_4 % 32u));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: vec4<f32>, arg_3: bool) -> f32 {
    var var_0 = !arg_0;
    var var_1 = 265f;
    let var_2 = arg_0.x;
    var var_3 = ~_wgslsmith_div_u32(func_2(arg_2), ~31261u);
    let var_4 = any(!(!vec4<bool>(true, var_0.x, true, false)));
    return 457f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(-2375f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1366f, -1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-121f * -611f) + _wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, false), false, vec4<f32>(-325f, -288f, 1000f, 401f), true)))))), -589f);
    var var_1 = vec3<i32>(_wgslsmith_add_i32(u_input.e, _wgslsmith_dot_vec2_i32(select(vec2<i32>(55594i, -11443i), vec2<i32>(u_input.e, -2147483647i), false), -vec2<i32>(13912i, 20978i))), -(~_wgslsmith_dot_vec2_i32(vec2<i32>(52597i, u_input.c), vec2<i32>(1i, 56321i))), min(-2147483647i, -_wgslsmith_div_i32(u_input.e, u_input.c))) | vec3<i32>(11240i, ~u_input.e, _wgslsmith_div_i32(~(-37513i) << (abs(u_input.b.x) % 32u), 12864i));
    var var_2 = 163f;
    var_1 = _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(28837i, abs(8711i), 35627i), reverseBits(vec3<i32>(-32657i, u_input.c, 72373i)) << (vec3<u32>(32714u >> (u_input.a.x % 32u), 0u ^ u_input.b.x, _wgslsmith_div_u32(4294967295u, u_input.b.x)) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(firstLeadingBit(-reverseBits(vec3<i32>(var_1.x, -2147483647i, 13120i))), -select(vec3<i32>(u_input.c, 14246i, u_input.e), vec3<i32>(var_1.x, 2147483647i, -3377i), vec3<bool>(true, true, true))), -select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-30635i, u_input.e, u_input.c) ^ vec3<i32>(0i, -29363i, var_1.x), -vec3<i32>(u_input.c, u_input.e, 24605i), reverseBits(vec3<i32>(55729i, 0i, 37480i))), countOneBits(vec3<i32>(48988i, 0i, -6145i)), vec3<bool>(select(true, false, false), true, true)));
    var_1 = -reverseBits(-select(vec3<i32>(u_input.e, u_input.c, var_1.x) >> (vec3<u32>(4294967295u, 4294967295u, u_input.a.x) % vec3<u32>(32u)), ~vec3<i32>(var_1.x, var_1.x, u_input.e), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false)));
    let var_3 = _wgslsmith_mod_vec3_u32(firstTrailingBit(~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.d.x, 1u), u_input.a), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), ~vec3<u32>(4294967295u, 23713u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 48757u, 1u, u_input.a.x) >> (vec4<u32>(u_input.d.x, u_input.b.x, 1u, 11777u) % vec4<u32>(32u)), vec4<u32>(4294967295u, 0u, u_input.a.x, 4294967295u))));
    let var_4 = 885f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) - 2516f));
}

