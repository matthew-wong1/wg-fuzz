struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(4539i, 35663i);

var<private> global1: array<vec2<i32>, 8>;

var<private> global2: array<Struct_4, 20>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>) -> f32 {
    var var_0 = 23314i;
    var_0 = countOneBits(~u_input.d);
    let var_1 = vec4<i32>(~((_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(51757u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)]) | firstTrailingBit(0i)) >> (_wgslsmith_add_u32(28246u, abs(u_input.a.x)) % 32u)), 23039i, arg_0.x, select(arg_0.x, u_input.d, any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false))));
    let var_2 = Struct_2(!select(vec3<bool>(true, true, false), vec3<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(false, true, false, true)), true), (arg_1.x < 123f) == true));
    let var_3 = Struct_2(select(!select(var_2.a, vec3<bool>(false, true, var_2.a.x), var_2.a.x), !select(var_2.a, select(var_2.a, vec3<bool>(var_2.a.x, false, true), true), !vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x)), vec3<bool>(var_2.a.x, !var_2.a.x, true)));
    return _wgslsmith_f_op_f32(-arg_1.x);
}

fn func_4(arg_0: vec3<bool>) -> vec3<bool> {
    let var_0 = Struct_2(arg_0);
    global0 = select(_wgslsmith_sub_vec2_i32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(28198u), reverseBits(u_input.a.x)), 8u)], ~vec2<i32>(60392i, u_input.d)) & vec2<i32>(-u_input.d, _wgslsmith_sub_i32(~(-10233i), ~u_input.d)), firstLeadingBit(vec2<i32>(-(~(-35707i)), min(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.d, 1i), vec3<i32>(-2147483647i, u_input.d, u_input.d)), -global0.x))), true);
    global0 = global1[_wgslsmith_index_u32(u_input.c.x, 8u)];
    var var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(22946u, ~_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(17577u, 0u)), 4294967295u, _wgslsmith_div_u32(1u, u_input.c.x) ^ _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, u_input.a.x))), u_input.a), 20u)];
    let var_2 = false;
    return select(select(var_0.a, vec3<bool>(true || var_2, !select(var_2, var_2, var_2), arg_0.x && false), arg_0.x), select(select(!select(arg_0, vec3<bool>(var_0.a.x, var_2, true), arg_0), !(!arg_0), arg_0), vec3<bool>(true, false, _wgslsmith_f_op_f32(max(1196f, -765f)) > _wgslsmith_f_op_f32(-var_1.b.x)), select(all(vec4<bool>(false, true, true, false)), select(false, all(arg_0.yy), true), all(!var_0.a.zy))), vec3<bool>(!var_0.a.x, true, !any(select(var_0.a.yx, vec2<bool>(true, true), vec2<bool>(false, false)))));
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_3 {
    let var_0 = reverseBits(u_input.a.x);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), func_4(vec3<bool>(1188f >= _wgslsmith_f_op_f32(func_3(vec3<i32>(0i, -12006i, 32211i), vec3<f32>(-1000f, 891f, -1000f))), false, select(true, any(vec3<bool>(true, arg_0, arg_0)), any(vec2<bool>(arg_0, false))))), 1i, any(select(!vec2<bool>(false, arg_0), vec2<bool>(any(vec2<bool>(arg_0, true)), any(vec4<bool>(arg_0, true, false, arg_0))), vec2<bool>(!arg_0, true))), u_input.d);
    return Struct_3(Struct_2(select(var_1.b, select(var_1.b, vec3<bool>(true, arg_0, false), var_1.b.x), any(!vec4<bool>(true, var_1.b.x, false, var_1.b.x)))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -57533i, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(82307i, -32486i, arg_1, -40093i), vec4<i32>(1i, arg_1, -19537i, 26029i)), _wgslsmith_add_i32(-1i, arg_1)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, -14923i, var_1.e), vec3<i32>(-2147483647i, u_input.d, -2147483647i)), var_1.e, -24377i, -27781i)), global0.x & firstLeadingBit(1i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, 205f) - vec2<f32>(3022f, 590f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a, var_1.a), vec2<f32>(var_1.a, 1483f), var_1.b.xy)), true)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1107f, -892f))), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(138f, var_1.a), vec2<f32>(var_1.a, -849f)))))));
}

fn func_5(arg_0: bool, arg_1: Struct_3) -> f32 {
    var var_0 = arg_1.a.a.x;
    let var_1 = u_input.b.x;
    var var_2 = arg_1.d.x;
    var var_3 = (16503i << (var_1 % 32u)) >= -805i;
    global2 = array<Struct_4, 20>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x + arg_1.d.x)) * _wgslsmith_f_op_f32(step(arg_1.d.x, _wgslsmith_f_op_f32(arg_1.d.x * arg_1.d.x)))))) - 363f);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(arg_1.x + arg_1.x);
    global1 = array<vec2<i32>, 8>();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(any(vec4<bool>(true, true, true, true)), func_2(all(vec2<bool>(true, true)), arg_2.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + arg_1.x) - arg_1.x)));
    let var_1 = arg_0.x;
    global0 = ~vec2<i32>(reverseBits(_wgslsmith_div_i32(2147483647i, arg_2.x) << (select(36130u, 37374u, false) % 32u)), global0.x);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(143f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_f32(func_5(true, Struct_3(Struct_2(vec3<bool>(false, true, false)), vec4<i32>(-2147483647i, 1i, arg_2.x, arg_2.x), global0.x, vec2<f32>(arg_1.x, arg_1.x)))))), _wgslsmith_div_f32(_wgslsmith_div_f32(-274f, -281f), _wgslsmith_f_op_f32(sign(702f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, arg_2.x, 5095i), vec3<i32>(-2147483647i, global0.x, -42353i), vec3<i32>(-8539i, 2147483647i, u_input.d)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.x, arg_1.x, arg_1.x)))))))));
}

fn func_6(arg_0: Struct_2, arg_1: f32) -> i32 {
    var var_0 = !arg_0.a.x;
    var var_1 = vec4<u32>(4294967295u, u_input.c.x, 1u, u_input.a.x);
    return _wgslsmith_dot_vec4_i32(abs(~vec4<i32>(global0.x, -2147483647i, global0.x, _wgslsmith_div_i32(-29173i, -2147483647i))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(abs(abs(vec4<i32>(0i, -2147483647i, u_input.d, -1i))), -max(vec4<i32>(u_input.d, u_input.d, global0.x, u_input.d), vec4<i32>(-32821i, 2147483647i, -2147483647i, global0.x))), -(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, u_input.d, global0.x, global0.x), vec4<i32>(u_input.d, 2147483647i, 1i, 22293i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_2(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1((vec3<u32>(43975u, 1u, 38971u) >> (u_input.a.ywz % vec3<u32>(32u))) ^ vec3<u32>(u_input.a.x, 0u, u_input.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(102f, 1000f, -2142f, 244f))), -vec2<i32>(-1i, global0.x))) + 408f));
    var var_1 = u_input.a.x;
    let var_2 = Struct_3(Struct_2(func_2(-787i < _wgslsmith_mult_i32(global0.x, u_input.d), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 10528i, 2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, -20548i, var_0), vec3<i32>(35944i, var_0, global0.x)))).a.a), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(firstTrailingBit(var_0), var_0), _wgslsmith_add_i32(u_input.d, u_input.d), ~14241i, ~(global0.x | u_input.d)), select(vec4<i32>(1i, -4321i, abs(global0.x), _wgslsmith_div_i32(global0.x, -61314i)), vec4<i32>(firstTrailingBit(u_input.d), abs(global0.x), var_0, var_0 ^ var_0), any(vec2<bool>(false, false)))), var_0, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-145f * -375f)) * _wgslsmith_div_f32(-1645f, _wgslsmith_f_op_f32(805f - -961f))), _wgslsmith_f_op_f32(1089f + _wgslsmith_f_op_f32(f32(-1f) * -207f))));
    global1 = array<vec2<i32>, 8>();
    let var_3 = var_2.a;
    var var_4 = countOneBits(-8987i);
    let var_5 = global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(max(u_input.a.x, u_input.b.x), 1u | u_input.c.x, ~0u), u_input.a.x, 28694u) >> (select(abs(22199u), 1u, 4294967295u != _wgslsmith_mod_u32(u_input.b.x, u_input.a.x)) % 32u), 20u)];
    global1 = array<vec2<i32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d, u_input.b.x, u_input.a.x, -765f);
}

