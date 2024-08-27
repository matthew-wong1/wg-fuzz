struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 26> = array<i32, 26>(32424i, 18882i, -13574i, -1i, -18021i, -41884i, 39328i, i32(-2147483648), 12331i, 0i, -53754i, -25667i, -17412i, -41706i, 18384i, -1i, -1i, 0i, i32(-2147483648), 12393i, 31292i, 19129i, -25902i, 36616i, 1i, -1i);

var<private> global2: array<Struct_1, 22>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(601f)) + _wgslsmith_f_op_f32(f32(-1f) * -616f)), -1256f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-335f)), -351f))))) * 132f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1288f) * var_0));
    var var_2 = all(vec4<bool>(false, false, any(arg_1.zz), true));
    var_1 = _wgslsmith_f_op_f32(round(var_0));
    let var_3 = arg_1;
    return vec4<u32>(u_input.b, select(countOneBits(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, 1u) << (vec3<u32>(0u, u_input.c, u_input.c) % vec3<u32>(32u)), ~vec3<u32>(u_input.d.x, u_input.c, u_input.b))), (!var_3.x != arg_1.x) && arg_1.x), 46610u, _wgslsmith_clamp_u32(select(_wgslsmith_mult_u32(9092u, u_input.b), ~_wgslsmith_div_u32(12887u, u_input.b), _wgslsmith_f_op_f32(floor(1463f)) <= -429f), 4294967295u, 18835u));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<u32>) -> u32 {
    global0 = global2[_wgslsmith_index_u32(arg_1.x, 22u)];
    var var_0 = 48966u;
    var var_1 = 105f;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(select(-160f, _wgslsmith_f_op_f32(f32(-1f) * -528f), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1395f + -120f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-640f, 1000f, 1359f), vec3<f32>(-216f, 370f, 1046f))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-569f, -592f, 1249f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1492f, -134f, -1000f))))) - vec3<f32>(398f, _wgslsmith_f_op_f32(sign(-1159f)), _wgslsmith_f_op_f32(256f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(722f + 210f)))));
    var var_3 = var_2;
    return _wgslsmith_mult_u32(arg_0.x, u_input.d.x);
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(func_4(~max(func_3(global2[_wgslsmith_index_u32(arg_0, 22u)], vec3<bool>(true, false, false), true) | vec4<u32>(u_input.c, u_input.d.x, arg_0, 4294967295u), ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_0, 13560u, 0u), vec4<u32>(4294967295u, arg_0, u_input.d.x, arg_0))), vec3<u32>(min(arg_0 & 23826u, u_input.b), u_input.c, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.d.x, 0u, arg_0)), ~vec3<u32>(u_input.d.x, arg_0, arg_0))) & vec3<u32>(0u, ~37081u, arg_0)), 22u)];
    global2 = array<Struct_1, 22>();
    var var_1 = Struct_1(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(0i, global1[_wgslsmith_index_u32(u_input.d.x, 26u)])), u_input.a));
    let var_2 = _wgslsmith_div_vec3_i32(abs(_wgslsmith_add_vec3_i32(-vec3<i32>(0i, -34415i, var_1.a), vec3<i32>(-var_1.a, _wgslsmith_div_i32(var_0.a, global0.a), u_input.a.x))), vec3<i32>(select(-2147483647i, ~1i, all(vec2<bool>(false, false))) & reverseBits(u_input.a.x ^ 0i), ~_wgslsmith_mult_i32(8864i, u_input.a.x ^ var_1.a), _wgslsmith_clamp_i32(22609i, var_1.a, var_1.a)));
    var var_3 = ~(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(var_2.x, var_1.a, var_2.x)), ~var_2) >> (countOneBits(max(vec3<u32>(u_input.d.x, u_input.b, arg_0), vec3<u32>(0u, 1817u, 4294967295u))) % vec3<u32>(32u))) ^ var_2;
    return Struct_1(global0.a);
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = func_2(u_input.b);
    var var_1 = !(!(!any(vec2<bool>(true, arg_0))));
    var_1 = arg_0 || true;
    var_1 = false;
    var_0 = func_2(1u);
    return -2147483647i << (u_input.d.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global1 = array<i32, 26>();
    var var_1 = select(vec4<i32>(-2147483647i, -global0.a, _wgslsmith_sub_i32(u_input.a.x, -2147483647i), func_1(var_0)), select(vec4<i32>(-abs(-43339i), -40560i, -abs(35992i), i32(-1i) * -46315i), vec4<i32>(-_wgslsmith_div_i32(global1[_wgslsmith_index_u32(8301u, 26u)], 2812i), ~reverseBits(1i), -2147483647i, ~firstLeadingBit(u_input.a.x)), any(select(!vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(var_0, var_0, false, var_0), true))), select(vec4<bool>(any(vec4<bool>(var_0, false, var_0, false)), !var_0, !all(vec2<bool>(var_0, var_0)), !(var_0 == var_0)), vec4<bool>(true, false, any(vec3<bool>(true, var_0, false)), select(!var_0, var_0, var_0)), all(vec4<bool>(var_0 & var_0, all(vec4<bool>(var_0, true, false, var_0)), false && var_0, any(vec4<bool>(true, var_0, false, var_0))))));
    global2 = array<Struct_1, 22>();
    global1 = array<i32, 26>();
    let var_2 = func_2(_wgslsmith_mod_u32(u_input.d.x, u_input.b) ^ (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 20343u), vec3<u32>(u_input.c, u_input.c, u_input.b)), _wgslsmith_mod_u32(57790u, 246u)) ^ 0u));
    let var_3 = u_input.a;
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -652f) + 1170f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1410f - -272f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -1974f))))));
    let x = u_input.a;
    s_output = StorageBuffer(31826u, var_1.x, firstLeadingBit(_wgslsmith_sub_vec3_u32(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(26128u, 28638u, 0u), vec3<u32>(u_input.b, 6073u, 0u))), max(vec3<u32>(u_input.d.x, u_input.c, u_input.d.x), vec3<u32>(u_input.c, u_input.c, 8538u)) >> (~vec3<u32>(0u, u_input.c, 0u) % vec3<u32>(32u)))), u_input.a, ~u_input.c);
}

