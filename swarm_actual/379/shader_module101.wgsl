struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec3<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-arg_3);
    global1 = all(select(!vec4<bool>(true, arg_0, arg_0, arg_0), select(select(vec4<bool>(true, arg_0, true, arg_1.c), vec4<bool>(arg_0, arg_1.a, arg_0, arg_1.a), true), select(vec4<bool>(arg_1.a, true, arg_0, true), vec4<bool>(false, true, true, arg_0), vec4<bool>(arg_1.c, true, false, arg_1.c)), arg_0), arg_0)) & !all(select(!vec3<bool>(false, false, arg_0), vec3<bool>(arg_1.a, false, arg_1.c), true));
    global1 = select(all(select(vec3<bool>(true, arg_0, 4294967295u == arg_1.b), vec3<bool>(arg_1.b >= 52043u, select(true, true, true), true), arg_1.c)), !arg_1.a, true);
    let var_1 = Struct_2(any(vec2<bool>(true, true)), arg_1.b, all(select(!(!vec2<bool>(arg_1.c, false)), select(select(vec2<bool>(arg_1.a, true), vec2<bool>(arg_0, true), vec2<bool>(false, false)), select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, false), false), !vec2<bool>(arg_0, arg_0)), select(select(vec2<bool>(arg_1.a, false), vec2<bool>(true, true), arg_1.c), vec2<bool>(false, false), u_input.b.x < u_input.b.x))));
    var var_2 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.a.x, 7520i, 2147483647i), firstLeadingBit(vec4<i32>(u_input.b.x, arg_2.x, arg_2.x, arg_2.x))), arg_2.x), ~vec3<i32>(_wgslsmith_div_i32(-13800i, u_input.b.x), arg_2.x, _wgslsmith_div_i32(37371i, arg_2.x))), -814f);
    return _wgslsmith_div_vec2_u32(vec2<u32>(~var_1.b, var_1.b), ~vec2<u32>(~arg_1.b, countOneBits(arg_1.b))) & (_wgslsmith_sub_vec2_u32(select(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.b, arg_1.b), vec2<u32>(arg_1.b, 24491u)), _wgslsmith_mult_vec2_u32(vec2<u32>(55933u, var_1.b), vec2<u32>(28939u, 0u)), vec2<bool>(arg_0, true)), _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(arg_1.b, 12550u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.b, arg_1.b), vec2<u32>(4294967295u, 0u), vec2<u32>(33869u, 12342u)))) | _wgslsmith_mult_vec2_u32(~max(vec2<u32>(74298u, var_1.b), vec2<u32>(var_1.b, 1u)), vec2<u32>(arg_1.b, arg_1.b) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.b, 43780u), vec2<u32>(0u, var_1.b), vec2<u32>(50826u, 0u)) % vec2<u32>(32u))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec2<i32>) -> vec3<f32> {
    global0 = array<Struct_2, 26>();
    let var_0 = ~(_wgslsmith_mult_vec4_i32(~vec4<i32>(2147483647i, -19583i, arg_3.x, 0i), vec4<i32>(~(-40721i), _wgslsmith_mult_i32(arg_3.x, 1i), u_input.a.x ^ -1i, -2147483647i >> (arg_1.b % 32u))) ^ -max(vec4<i32>(arg_3.x, arg_3.x, -44892i, 2147483647i), vec4<i32>(0i, u_input.b.x, 2147483647i, arg_3.x) >> (vec4<u32>(15651u, 1u, arg_0.x, arg_0.x) % vec4<u32>(32u))));
    global1 = arg_1.a;
    global1 = !arg_1.c;
    let var_1 = vec3<i32>(1i >> (arg_0.x % 32u), 1i, _wgslsmith_mult_i32(-1i, _wgslsmith_add_i32(_wgslsmith_div_i32(var_0.x, 72010i), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(var_0, vec4<i32>(var_0.x, u_input.b.x, -93776i, 2147483647i)), vec4<i32>(28970i, 0i, u_input.a.x, u_input.b.x)))));
    return _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(-582f, _wgslsmith_f_op_f32(1f * 1383f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, 266f))) + -462f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -917f) * 693f) - 161f))));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(67051u, 26u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_4(~abs(vec2<u32>(var_0.b, 4294967295u) | vec2<u32>(var_0.b, var_0.b)), Struct_2(var_0.a, _wgslsmith_clamp_u32(~var_0.b, 4294967295u, select(var_0.b, var_0.b, false)), false), abs(func_3(false, Struct_2(var_0.c, var_0.b, var_0.a), vec2<i32>(-50493i, 0i), vec3<f32>(-352f, 983f, arg_0.b))) ^ (select(vec2<u32>(var_0.b, 0u), vec2<u32>(2286u, var_0.b), vec2<bool>(true, false)) | _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, var_0.b), vec2<u32>(5732u, var_0.b), vec2<u32>(var_0.b, var_0.b))), vec2<i32>(~19748i, arg_0.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, arg_0.b, arg_0.b)))))));
    global1 = var_0.a;
    var var_2 = _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_vec3_f32(func_4(vec2<u32>(var_0.b, max(var_0.b, var_0.b) | 39159u), global0[_wgslsmith_index_u32(~firstTrailingBit(~var_0.b), 26u)], ~(firstTrailingBit(vec2<u32>(var_0.b, var_0.b)) >> (~vec2<u32>(19366u, 1u) % vec2<u32>(32u))), -_wgslsmith_sub_vec2_i32(~u_input.b, vec2<i32>(u_input.a.x, 1i)))).x));
    var var_3 = var_0.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_0.b))))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(Struct_1(vec3<i32>(u_input.a.x, u_input.b.x, 1i), 214f))), _wgslsmith_f_op_f32(f32(-1f) * -680f))) - _wgslsmith_f_op_vec3_f32(func_4(vec2<u32>(arg_3.b, 1u), arg_1, ~vec2<u32>(99623u, 21747u), _wgslsmith_sub_vec2_i32(u_input.b, u_input.a))).x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1118f * -527f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 193f)))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(12422u, _wgslsmith_mod_u32(~6613u, 42017u), ~reverseBits(1583u), 4294967295u), vec4<u32>(1u, 1u, 1u, 1u))), 26u)];
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(137f, -223f)), 517f, _wgslsmith_f_op_f32(293f * _wgslsmith_f_op_f32(floor(-1123f))))), vec3<f32>(_wgslsmith_f_op_f32(func_1(vec4<bool>(!var_0.c, all(vec2<bool>(true, var_0.c)), true, true), global0[_wgslsmith_index_u32(var_0.b << (~var_0.b % 32u), 26u)], Struct_2(var_0.a, var_0.b, any(vec4<bool>(false, false, var_0.a, true))), global0[_wgslsmith_index_u32(0u, 26u)])), _wgslsmith_f_op_f32(func_1(select(vec4<bool>(true, var_0.c, var_0.a, true), select(vec4<bool>(var_0.a, true, true, false), vec4<bool>(var_0.c, var_0.c, var_0.a, false), var_0.a), vec4<bool>(var_0.a, true, var_0.c, true)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(var_0.b), var_0.b), 26u)], global0[_wgslsmith_index_u32(var_0.b, 26u)], global0[_wgslsmith_index_u32(var_0.b, 26u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1122f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-655f - 1448f)))));
    var var_2 = 4294967295u;
    var var_3 = global0[_wgslsmith_index_u32(var_0.b, 26u)];
    global1 = true;
    var var_4 = Struct_1(abs(vec3<i32>(-1i, u_input.b.x, ~(u_input.b.x ^ u_input.a.x))), var_1.x);
    var var_5 = 98539u;
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

