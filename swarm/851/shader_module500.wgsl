struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec2<f32>) -> vec4<bool> {
    let var_0 = true;
    var var_1 = _wgslsmith_dot_vec4_i32(arg_2, reverseBits(_wgslsmith_add_vec4_i32(-vec4<i32>(-22654i, arg_2.x, 6538i, -24695i), -arg_2)));
    let var_2 = arg_0.c.yx;
    return vec4<bool>(any(vec3<bool>(false, !(arg_1.a == global0[_wgslsmith_index_u32(0u, 18u)]), false)), all(vec3<bool>(true, !(true | var_0), !(-612f == arg_3.x))), all(arg_1.b.yxz), arg_1.b.x);
}

fn func_2() -> vec3<f32> {
    var var_0 = true;
    var_0 = any(!(!vec4<bool>(any(vec2<bool>(false, true)), true, false, true)));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f)));
    var var_2 = Struct_1(u_input.b, !(!func_3(Struct_1(1u, vec4<bool>(true, true, false, true), vec3<i32>(2147483647i, u_input.c, 23679i), vec3<bool>(false, false, true)), Struct_1(u_input.d, vec4<bool>(true, false, false, true), vec3<i32>(-2147483647i, -2147483647i, 18915i), vec3<bool>(false, true, false)), vec4<i32>(u_input.c, u_input.e, u_input.e, u_input.e), vec2<f32>(var_1, var_1))), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -5800i), vec2<i32>(-2147483647i, -29775i))), u_input.c), -(~select(7138i, -35997i, false)), u_input.e), !(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), func_3(Struct_1(0u, vec4<bool>(false, true, true, true), vec3<i32>(20997i, -19953i, u_input.e), vec3<bool>(false, false, true)), Struct_1(4294967295u, vec4<bool>(false, true, false, true), vec3<i32>(-2147483647i, 18487i, u_input.e), vec3<bool>(false, false, false)), vec4<i32>(2147483647i, -14724i, 2147483647i, 2147483647i), vec2<f32>(var_1, var_1)).xxx)));
    var var_3 = var_1;
    return vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-997f, var_1))), var_1);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec4<bool>) -> vec4<i32> {
    let var_0 = u_input.c;
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(1541f + -200f), 1f, -1627f), _wgslsmith_f_op_vec3_f32(func_2()), select(select(vec3<bool>(true, true, false), arg_2.zzw, arg_2.zzz), vec3<bool>(arg_2.x, arg_2.x, false), vec3<bool>(arg_2.x, false, arg_2.x)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1518f), _wgslsmith_f_op_f32(abs(1113f)), 682f)))))));
    let var_2 = arg_2.zw;
    let var_3 = -519f;
    let var_4 = !vec2<bool>(true, var_2.x);
    return select(_wgslsmith_mult_vec4_i32(min(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, var_0, arg_0, u_input.c), vec4<i32>(-1i, 38296i, 24346i, -13394i))), _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, var_0, -2147483647i, 2147483647i)), vec4<i32>(1i, var_0, -5105i, 0i))), vec4<i32>(1i, -1i, abs(2147483647i), arg_0) >> ((_wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.d, 18u)], 9076u, 1u, u_input.a), vec4<u32>(0u, 4294967295u, 4294967295u, u_input.b)) | ~vec4<u32>(1u, 2286u, u_input.a, 70615u)) % vec4<u32>(32u))), select(vec4<i32>(-42698i, -21641i >> ((u_input.d ^ 1u) % 32u), abs(abs(6339i)), _wgslsmith_mod_i32(-45245i, -2147483647i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(477u, 18u)], u_input.a, 17960u), vec3<u32>(global0[_wgslsmith_index_u32(0u, 18u)], 10951u, 1u)) % 32u)), vec4<i32>(-23503i, 45163i, -u_input.e, ~(-31224i)), select(arg_2, !vec4<bool>(false, true, true, var_4.x), select(!arg_2, vec4<bool>(var_2.x, true, false, false), true))), arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -11358i, ~0i), -vec3<i32>(0i, -1i, 0i)) ^ _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, -1i, u_input.c, u_input.e), reverseBits(vec4<i32>(u_input.e, u_input.c, 47072i, -2147483647i))), -func_1(u_input.e, u_input.c, vec4<bool>(true, true, false, false))), ~(-2147483647i), _wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(12137i, u_input.c, -5069i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, 1i, u_input.e), vec3<i32>(u_input.c, -2147483647i, 0i)), func_1(u_input.e, -1i, vec4<bool>(false, true, false, true)).xwz), select(vec3<i32>(u_input.c, 30682i, u_input.e) >> (vec3<u32>(u_input.a, 1u, 1u) % vec3<u32>(32u)), vec3<i32>(abs(57469i), u_input.c, 2267i), true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-102f, 1201f, -453f)))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(round(382f)), _wgslsmith_f_op_f32(-816f - -441f), _wgslsmith_f_op_f32(183f - 207f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-604f, 1252f, -1377f))) + vec3<f32>(_wgslsmith_f_op_f32(-1501f * 136f), 798f, 483f))))));
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_clamp_i32(-36550i, i32(-1i) * -var_0.x, u_input.c), 12186i), vec3<i32>(_wgslsmith_mod_i32(-38626i, 22928i), -(~(-22054i) << (u_input.b % 32u)), func_1(u_input.c, u_input.e, select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true)).x));
    var var_3 = select(~(vec2<u32>(~global0[_wgslsmith_index_u32(u_input.d, 18u)], 6352u) << (vec2<u32>(countOneBits(4294967295u), u_input.a) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(u_input.b, 1u), vec2<u32>(27393u, global0[_wgslsmith_index_u32(73092u, 18u)])), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(917u, global0[_wgslsmith_index_u32(u_input.d, 18u)]))), abs(~vec2<u32>(42225u, global0[_wgslsmith_index_u32(u_input.a, 18u)]))), u_input.a), !all(func_3(Struct_1(global0[_wgslsmith_index_u32(0u, 18u)], vec4<bool>(false, true, true, false), vec3<i32>(11028i, var_0.x, -3419i), vec3<bool>(true, true, false)), Struct_1(4294967295u, vec4<bool>(true, true, true, false), vec3<i32>(var_2, var_2, var_0.x), vec3<bool>(true, true, false)), vec4<i32>(var_2, 2147483647i, 2147483647i, var_0.x), vec2<f32>(-819f, var_1.x))) || (u_input.e <= u_input.e));
    var var_4 = abs(max(vec3<i32>(0i, select(var_2, 26239i, true), u_input.c) | firstLeadingBit(vec3<i32>(var_0.x, 35367i, var_2) & vec3<i32>(46179i, -32473i, var_0.x)), func_1(var_2 << (0u % 32u), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(var_0.x, 79823i, 1i, var_0.x)), -vec4<i32>(var_2, var_2, -2147483647i, 0i)), vec4<bool>(true, true, true, true)).ywx));
    var var_5 = Struct_1(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 1u, var_3.x, var_3.x), vec4<u32>(u_input.d, 22127u, 1648u, 34450u) >> (vec4<u32>(19012u, 21734u, 1u, var_3.x) % vec4<u32>(32u))) >> (45257u % 32u), !select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, true, false)), 0u >= var_3.x, true, true), (var_3.x < 4294967295u) & false), -func_1(var_4.x, -(u_input.c | -28630i), vec4<bool>(true, true, true, true)).zzw, vec3<bool>(any(func_3(Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], vec4<bool>(true, true, true, true), vec3<i32>(var_2, -2873i, u_input.c), vec3<bool>(true, true, true)), Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 18u)], 18u)], vec4<bool>(true, false, false, false), vec3<i32>(u_input.c, var_0.x, 29010i), vec3<bool>(true, true, true)), vec4<i32>(var_4.x, var_0.x, u_input.e, 10505i), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) - vec2<f32>(var_1.x, var_1.x)))), true, _wgslsmith_f_op_vec3_f32(func_2()).x >= var_1.x));
    let var_6 = var_5.c;
    var_0 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, firstTrailingBit(var_6.x << (u_input.d % 32u))), var_2), ~(-var_6.x), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(min(~_wgslsmith_mult_i32(12527i, 61936i), var_4.x), _wgslsmith_div_i32(_wgslsmith_clamp_i32(-2147483647i, var_6.x, -1i), _wgslsmith_div_i32(_wgslsmith_mod_i32(14076i, -1i), ~var_0.x))), _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(u_input.d, u_input.b, global0[_wgslsmith_index_u32(10923u, 18u)]))), vec3<u32>(65017u, firstLeadingBit(_wgslsmith_div_u32(var_3.x, var_5.a)), ~1u)));
}

