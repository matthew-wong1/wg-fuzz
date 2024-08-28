struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(1185i, 2147483647i, 0i), 1u, 897f, vec2<i32>(0i, i32(-2147483648)), true);

var<private> global2: array<Struct_2, 13>;

var<private> global3: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> vec3<i32> {
    let var_0 = Struct_3(global2[_wgslsmith_index_u32(71749u, 13u)]);
    var var_1 = var_0.a.a.c;
    global0 = arg_1.x;
    let var_2 = -reverseBits((var_0.a.a.d & vec2<i32>(40712i, arg_0)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(0u, global1.b), ~vec2<u32>(global1.b, 1u)) % vec2<u32>(32u)));
    global2 = array<Struct_2, 13>();
    return max(select(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-15730i, 27162i, u_input.a), vec3<i32>(-1i, global1.d.x, -2147483647i))), _wgslsmith_mod_vec3_i32(~(vec3<i32>(0i, global1.a.x, arg_0) | var_0.a.a.a), -vec3<i32>(2147483647i, 15913i, 55098i)), select(!(!arg_1), vec3<bool>(global1.e, false, !global1.e), !(true || var_0.a.a.e))), vec3<i32>(_wgslsmith_clamp_i32(var_0.a.a.a.x, -6201i, u_input.a), var_2.x & (-2147483647i | firstTrailingBit(u_input.b)), ~_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, 17468i, 32979i, arg_0), -vec4<i32>(-2147483647i, var_2.x, var_0.a.a.d.x, u_input.b))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: vec4<f32>, arg_3: i32) -> f32 {
    var var_0 = (firstLeadingBit(23999u) >> (global1.b % 32u)) ^ (min(global1.b, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.b, global1.b), vec2<u32>(global1.b, 1u))) ^ firstLeadingBit(14889u));
    var var_1 = abs(arg_0.x);
    let var_2 = global2[_wgslsmith_index_u32(0u, 13u)];
    var var_3 = ~vec4<u32>(var_2.a.b, ~reverseBits(~var_2.a.b), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2.a.b, var_2.c, global1.b), ~vec4<u32>(4294967295u, 21456u, 64880u, var_2.a.b)), var_2.c), 4294967295u);
    return 1339f;
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(round(arg_1.e.x));
    var var_1 = !select(global1.e, all(!vec3<bool>(arg_0, false, false)), false);
    var var_2 = arg_1.d;
    global3 = true;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(func_4(-_wgslsmith_mult_vec2_i32(-global1.d, -vec2<i32>(global1.a.x, arg_1.a.a.x)), func_3(-(~35027i), !(!vec3<bool>(true, arg_1.b, arg_1.b))), _wgslsmith_f_op_vec4_f32(ceil(arg_1.d)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, select(1i, -2147483647i, arg_0), i32(-1i) * -1i, 1i), abs(vec4<i32>(-1i, u_input.b, global1.d.x, 2147483647i))))), _wgslsmith_f_op_f32(abs(var_0)));
    return Struct_1(vec3<i32>(-1i) * -select(reverseBits(global1.a), _wgslsmith_div_vec3_i32(vec3<i32>(-17453i, u_input.b, 2147483647i), vec3<i32>(-2147483647i, arg_1.a.a.x, -1i)), true), global1.b, -650f, vec2<i32>(reverseBits(-(u_input.b | 32922i)), 2147483647i), !global1.e);
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    let var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(arg_0.a.b, global1.b), 13u)];
    return Struct_3(Struct_2(func_2(true, arg_0), false, _wgslsmith_div_u32(~arg_0.c, firstLeadingBit(1u)) >> (_wgslsmith_div_u32(28314u, 4294967295u) % 32u), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1381f, global1.c), _wgslsmith_f_op_f32(round(global1.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.e.x, global1.c, false)), func_2(true, Struct_2(var_0.a, false, 65824u, vec4<f32>(-702f, -210f, -1448f, arg_0.a.c), var_0.d.wy)).c), var_0.a.c, global1.c), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c - arg_0.a.c)), 757f)));
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_5(Struct_2(arg_1.a.a, global1.e, arg_1.a.c, arg_1.a.d, vec2<f32>(1085f, global1.c))).a).a.d.x * _wgslsmith_div_f32(305f, _wgslsmith_f_op_f32(exp2(global1.c)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-246f, _wgslsmith_f_op_f32(307f + arg_1.a.a.c), _wgslsmith_f_op_f32(-797f * 696f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, -987f, 560f)))) - vec3<f32>(929f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * global1.c)), arg_1.a.e.x));
    var var_2 = func_5(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.b, _wgslsmith_mult_u32(~1u, arg_1.a.a.b) | 33383u), 13u)]).a.a;
    let var_3 = arg_0.x;
    let var_4 = ~global1.d;
    return arg_1.a.a;
}

fn func_1() -> f32 {
    global0 = !global1.e;
    let var_0 = func_6(global1.a, func_5(Struct_2(func_2(false, Struct_2(Struct_1(global1.a, 18260u, global1.c, global1.d, false), global1.e, 22380u, vec4<f32>(global1.c, global1.c, global1.c, -1000f), vec2<f32>(global1.c, global1.c))), global1.e, 4294967295u, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(346f, global1.c, -1849f, -796f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, -326f, 151f, global1.c) - vec4<f32>(928f, global1.c, 207f, global1.c)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2185f, global1.c), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.c, -215f))), !vec2<bool>(global1.e, global1.e))))));
    let var_1 = Struct_3(func_5(func_5(func_5(global2[_wgslsmith_index_u32(~var_0.b, 13u)]).a).a).a);
    var var_2 = _wgslsmith_f_op_f32(-var_0.c);
    let var_3 = _wgslsmith_sub_vec3_i32(-vec3<i32>(23477i, func_3(2147483647i, vec3<bool>(var_0.e, false, var_0.e)).x << (4294967295u % 32u), 2147483647i), vec3<i32>(2147483647i, var_1.a.a.a.x, var_1.a.a.d.x));
    return -740f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(global1.b, 13u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_0.d)));
    var var_2 = Struct_2(var_0.a, true, var_0.a.b, var_0.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.e.x, var_1.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zy) + var_1.yw))) * var_0.e));
    var_0 = global2[_wgslsmith_index_u32(4294967295u, 13u)];
    let var_3 = var_0.a.a;
    global3 = var_0.a.b <= global1.b;
    var var_4 = select(!(u_input.a >= _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, var_2.a.a.x, 9334i, var_3.x), vec4<i32>(var_3.x, global1.a.x, var_2.a.d.x, 1022i) ^ vec4<i32>(-39078i, -30372i, 33503i, -41127i))), true, !global1.e);
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-675f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(f32(-1f) * -1812f)), _wgslsmith_f_op_f32(ceil(-148f)), var_1.x) * vec4<f32>(-1623f, func_6(~var_0.a.a, func_5(global2[_wgslsmith_index_u32(var_0.a.b, 13u)])).c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.d.x, -748f) * 926f), -713f)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d) + vec4<f32>(func_2(global1.e, Struct_2(var_0.a, true, global1.b, vec4<f32>(1104f, 1298f, var_1.x, 1000f), var_0.e)).c, var_1.x, _wgslsmith_div_f32(848f, var_2.a.c), 1290f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-552f, 1313f);
}

