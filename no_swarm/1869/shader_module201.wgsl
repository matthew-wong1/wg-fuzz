struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 7> = array<vec2<bool>, 7>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global1: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: vec4<f32>, arg_3: vec4<i32>) -> u32 {
    let var_0 = arg_2.x;
    return u_input.b.x;
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec2<bool> {
    let var_0 = -vec3<i32>(-2696i, -2557i, countOneBits(arg_1));
    var var_1 = ~(-min(arg_0.b.x, _wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_1, -13326i), var_0.x)));
    global0 = array<vec2<bool>, 7>();
    var_1 = min(reverseBits(0i), -52592i);
    global0 = array<vec2<bool>, 7>();
    return vec2<bool>((abs(1u) & _wgslsmith_add_u32(u_input.c, u_input.a ^ 0u)) != (abs(u_input.a) ^ ~1u), true == any(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), true)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_1 {
    global1 = ~arg_1.d.b.x;
    global0 = array<vec2<bool>, 7>();
    let var_0 = u_input.c;
    let var_1 = arg_1;
    global1 = abs(var_1.d.b.x);
    return Struct_1(vec4<f32>(arg_1.d.a.x, arg_2.x, -1056f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1155f) + -1177f))), vec3<i32>(abs(min(-44215i, countOneBits(u_input.d))), -32205i, 38903i << (~_wgslsmith_mod_u32(u_input.a, var_1.a) % 32u)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = func_4((vec3<u32>(~u_input.c, 51121u, ~u_input.b.x) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.b.x, u_input.b.x) & vec3<u32>(u_input.c, 59977u, 1641u), max(vec3<u32>(u_input.b.x, u_input.a, u_input.b.x), vec3<u32>(u_input.c, u_input.c, u_input.c))) % vec3<u32>(32u))) ^ (~vec3<u32>(u_input.b.x, u_input.b.x, u_input.a) & vec3<u32>(u_input.b.x, func_2(vec4<u32>(1u, 19435u, 0u, u_input.a), arg_1.a.x, vec4<f32>(arg_1.a.x, -271f, -243f, arg_1.a.x), vec4<i32>(u_input.d, -3377i, -36064i, 4959i)), u_input.b.x)), Struct_2(abs(u_input.c), !(!vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x)), all(select(arg_0.a.yx, !vec2<bool>(arg_0.a.x, arg_0.a.x), func_3(arg_1, arg_2.b.x))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.a.x, arg_1.a.x, arg_1.a.x, 1103f), arg_1.a)), arg_1.b)), _wgslsmith_f_op_vec3_f32(-arg_1.a.ywz));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(543f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(812f + arg_2.a.x)))))));
    let var_2 = !(arg_1.a.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)));
    let var_3 = _wgslsmith_mod_i32(max(countOneBits(_wgslsmith_sub_i32(59899i, 17787i)), arg_2.b.x), ~(-2147483647i)) >> (_wgslsmith_sub_u32(u_input.b.x, 1u) % 32u);
    var var_4 = select(!select(vec3<bool>(arg_0.a.x, select(var_2, true, false), arg_1.b.x != 2147483647i), arg_0.a, any(select(vec2<bool>(true, arg_0.a.x), global0[_wgslsmith_index_u32(u_input.c, 7u)], arg_0.a.xx))), arg_0.a, arg_0.a);
    return select(vec3<bool>(true, arg_0.a.x, func_3(Struct_1(arg_1.a, _wgslsmith_mod_vec3_i32(vec3<i32>(16372i, -2147483647i, 1804i), arg_1.b)), var_3).x), !select(arg_0.a, vec3<bool>(true, true, !var_4.x), !select(arg_0.a, arg_0.a, true)), vec3<bool>(all(!(!arg_0.a.zz)), !all(arg_0.a), false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 7>();
    global1 = 40809i;
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(611f - 488f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, 425f)) + _wgslsmith_f_op_f32(-440f * 207f)), 424f))), (min(abs(vec3<i32>(-63951i, u_input.d, u_input.d)), abs(vec3<i32>(-1i, 2147483647i, u_input.d))) << (vec3<u32>(49633u, u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.c, 1u, 2813u), vec4<u32>(u_input.b.x, 1189u, 4294967295u, u_input.a))) % vec3<u32>(32u))) ^ vec3<i32>(-(~u_input.d), _wgslsmith_mod_i32(u_input.d, -36364i), u_input.d | 32131i));
    let var_1 = vec3<bool>(any(func_1(Struct_4(vec3<bool>(false, false, false)), var_0, var_0)), reverseBits(min(min(u_input.a, 1u), 4294967295u & u_input.b.x)) >= 1u, !func_1(Struct_4(vec3<bool>(true, false, true)), Struct_1(var_0.a, vec3<i32>(63508i, 2147483647i, var_0.b.x)), var_0).x && all(vec3<bool>(true, false, func_3(var_0, 1i).x)));
    global0 = array<vec2<bool>, 7>();
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a.x, var_0.a.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-559f, var_0.a.x) - vec2<f32>(var_0.a.x, var_0.a.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a.x, var_0.a.x), vec2<f32>(119f, var_0.a.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) + var_0.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(func_4(vec3<u32>(4294967295u, u_input.c, 0u), Struct_2(8032u, vec4<bool>(false, var_1.x, true, false), var_1.x, var_0), vec3<f32>(var_0.a.x, var_2.x, -503f)).a.x))))), ~u_input.c, vec2<f32>(-236f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))), vec4<u32>(~u_input.b.x, u_input.c, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 14203u, 1u, 59995u), vec4<u32>(u_input.c, u_input.a, 46753u, u_input.c), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)) >> (vec4<u32>(u_input.a, u_input.b.x, 6903u, u_input.b.x) % vec4<u32>(32u)), vec4<u32>(u_input.a, u_input.b.x ^ u_input.c, 1u, u_input.b.x)), abs(1u)));
}

