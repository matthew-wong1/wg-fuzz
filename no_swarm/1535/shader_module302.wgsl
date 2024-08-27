struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
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

var<private> global0: array<i32, 2>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<bool> {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1f))))));
    var var_2 = Struct_1(_wgslsmith_mult_vec3_i32(~select(-vec3<i32>(0i, -7738i, -24059i), ~vec3<i32>(-1i, global0[_wgslsmith_index_u32(4294967295u, 2u)], -20909i), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x ^ global0[_wgslsmith_index_u32(0u, 2u)], _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, 17557i), vec3<i32>(var_0, u_input.b.x, 15777i)), u_input.b.x), abs(vec3<i32>(-33009i, u_input.a.x, var_0)) | vec3<i32>(6254i, var_0, 2147483647i))));
    var var_3 = Struct_1(var_2.a);
    var var_4 = Struct_1(vec3<i32>(-1i) * -var_3.a);
    return select(vec3<bool>(!(!all(vec2<bool>(false, true))), select(all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)), 1000f <= _wgslsmith_f_op_f32(round(549f)), true && (u_input.c <= 4294967295u)), !(true && any(vec4<bool>(false, true, true, false)))), !vec3<bool>(select(all(vec3<bool>(false, false, true)), true, any(vec2<bool>(false, true))), select(false, var_4.a.x >= 30689i, true), all(select(vec2<bool>(false, false), vec2<bool>(true, true), true))), !select(vec3<bool>(true, false, 2147483647i == var_4.a.x), vec3<bool>(true, true, true), select(true, false, false) || true));
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = func_3();
    let var_1 = arg_0;
    var var_2 = vec4<bool>(true, true, !var_0.x, -1167f < _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-433f + 552f), -1131f), 607f)));
    let var_3 = ~0u;
    let var_4 = Struct_1(reverseBits(_wgslsmith_add_vec3_i32(~arg_0.a, arg_0.a)));
    return -605f;
}

fn func_4(arg_0: f32, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(vec3<i32>(_wgslsmith_clamp_i32(-8565i, i32(-1i) * -global0[_wgslsmith_index_u32(0u, 2u)], ~(-2147483647i)), u_input.b.x, reverseBits(firstLeadingBit(global0[_wgslsmith_index_u32(14648u, 2u)]) & (u_input.a.x << (u_input.d.x % 32u)))));
    var var_1 = vec3<u32>(~(~countOneBits(0u)), u_input.d.x, select(u_input.d.x, u_input.c, true & all(vec2<bool>(false, true)))) ^ select(_wgslsmith_sub_vec3_u32(abs(u_input.d.wzx), _wgslsmith_div_vec3_u32(max(vec3<u32>(0u, 0u, 20473u), vec3<u32>(u_input.d.x, 24153u, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, 46679u, u_input.c), u_input.d.zwy))), u_input.d.xyz, !func_3());
    var var_2 = Struct_1(~var_0.a);
    let var_3 = true;
    var var_4 = Struct_1(~vec3<i32>(3071i, ~var_2.a.x & -10691i, var_2.a.x ^ ~var_0.a.x));
    return Struct_1(_wgslsmith_mult_vec3_i32(-(~select(var_0.a, var_4.a, false)), select((var_2.a ^ vec3<i32>(-2147483647i, 36708i, -63683i)) << ((vec3<u32>(u_input.d.x, u_input.c, var_1.x) | vec3<u32>(1u, u_input.d.x, 1u)) % vec3<u32>(32u)), vec3<i32>(2147483647i, i32(-1i) * -2147483647i, var_2.a.x), _wgslsmith_f_op_f32(-arg_1.x) >= 137f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-729f + 1079f))))), vec3<f32>(785f, _wgslsmith_f_op_f32(func_2(arg_2)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + -954f)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 645f, 206f, _wgslsmith_f_op_f32(f32(-1f) * -1021f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 149f, _wgslsmith_f_op_f32(529f * _wgslsmith_f_op_f32(-594f - -318f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_2)))))));
    let var_2 = var_0;
    var var_3 = Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-50782i, i32(-1i) * -2147483647i, _wgslsmith_div_i32(max(23406i, 1i), ~arg_0.x)), var_2.a));
    var var_4 = _wgslsmith_div_u32(~(~u_input.d.x), u_input.c);
    return arg_2;
}

fn func_5(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = array<i32, 2>();
    var var_0 = firstLeadingBit(arg_0);
    var var_1 = Struct_1(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(arg_2.a, arg_2.a), firstTrailingBit(firstLeadingBit(_wgslsmith_mod_vec3_i32(var_0.xzz, arg_0.yyz)))));
    var_0 = arg_0 ^ countOneBits(_wgslsmith_mod_vec4_i32(~(vec4<i32>(1i, -1i, 1i, var_0.x) ^ arg_0), ~_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.a.x, arg_2.a.x, -28281i, u_input.a.x), vec4<i32>(arg_0.x, arg_0.x, arg_2.a.x, global0[_wgslsmith_index_u32(1u, 2u)]))));
    var var_2 = Struct_1(~vec3<i32>(_wgslsmith_clamp_i32(abs(1i), _wgslsmith_add_i32(arg_2.a.x, global0[_wgslsmith_index_u32(4294967295u, 2u)]), arg_0.x << (4294967295u % 32u)), abs(arg_1 | arg_1), -2147483647i));
    return ~(~u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(func_5(vec4<i32>(select(u_input.a.x, -1i, false), 1i, -1i, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.c, 2u)], u_input.a.x)), firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 2u)]), Struct_1(vec3<i32>(-1i, global0[_wgslsmith_index_u32(78698u, 2u)], global0[_wgslsmith_index_u32(u_input.c, 2u)]) << (vec3<u32>(u_input.d.x, u_input.d.x, u_input.c) % vec3<u32>(32u))), func_1(vec3<i32>(2147483647i, 7613i, -22098i) ^ vec3<i32>(23139i, -2147483647i, global0[_wgslsmith_index_u32(u_input.c, 2u)]), ~global0[_wgslsmith_index_u32(u_input.c, 2u)], Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 2u)], 2147483647i, u_input.b.x)))) << (2347u % 32u));
}

