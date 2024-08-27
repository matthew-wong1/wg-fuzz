struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    let var_0 = 4294967295u <= u_input.b;
    var var_1 = vec4<bool>(true | select(true, any(vec3<bool>(true, var_0, var_0)) & var_0, select(true, var_0, false) | any(vec3<bool>(true, var_0, var_0))), true, all(!(!select(vec3<bool>(var_0, true, var_0), vec3<bool>(true, var_0, var_0), var_0))), all(select(!vec2<bool>(true, var_0), !vec2<bool>(true, var_0), false)) & !select(true, var_0, var_0));
    var var_2 = select(var_1.x & (u_input.b == _wgslsmith_div_u32(u_input.b << (56546u % 32u), abs(u_input.b))), var_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-586f))))) < -2894f);
    var var_3 = select(var_1.xz, var_1.zz, var_1.x);
    var_3 = vec2<bool>(var_0, true);
    return 10719i;
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0;
    let var_1 = Struct_1(_wgslsmith_sub_vec3_i32(var_0.a, _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.a.x, 6153i, arg_0.a.x), ~vec3<i32>(var_0.d.x, 1191i, arg_0.a.x)), u_input.a.ywz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-592f + _wgslsmith_f_op_f32(var_0.b - 364f)))) - arg_0.b), 2147483647i | func_3(), -u_input.a.wyy, select(select(vec2<bool>(true, false), arg_0.e, select(vec2<bool>(true, true), select(arg_0.e, vec2<bool>(false, true), var_0.e), select(var_0.e, var_0.e, var_0.e.x))), var_0.e, var_0.e.x));
    let var_2 = var_1;
    var var_3 = vec3<bool>(var_0.e.x, all(select(vec2<bool>(arg_0.e.x, var_1.e.x), !var_0.e, select(!var_1.e, select(vec2<bool>(var_2.e.x, false), var_1.e, vec2<bool>(true, var_2.e.x)), var_2.e.x))), !(!(arg_0.c == var_1.a.x)) || true);
    let var_4 = _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(firstTrailingBit(30414u), _wgslsmith_clamp_u32(4294967295u, 0u, 1u), 0u, ~41765u)), vec4<u32>(4294967295u ^ ~u_input.b, 16590u, u_input.b, 4294967295u)) <= ~(~(~u_input.b));
    return -2514f;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: vec4<u32>) -> vec3<i32> {
    return vec3<i32>(-u_input.a.x, u_input.a.x, i32(-1i) * -25170i);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32) -> f32 {
    var var_0 = arg_1;
    let var_1 = Struct_1(arg_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(303f, 1318f)) * arg_2), ~countOneBits(2147483647i), select(func_4(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 44986i, var_0.d.x, -21397i) ^ vec4<i32>(u_input.a.x, 3988i, arg_1.d.x, -20501i), u_input.a | vec4<i32>(arg_1.d.x, var_0.d.x, 0i, 2147483647i)), vec3<f32>(arg_2, _wgslsmith_f_op_f32(func_2(arg_1)), _wgslsmith_f_op_f32(max(-544f, -2008f))), vec4<u32>(u_input.b, u_input.b, u_input.b, 2904u) | vec4<u32>(53308u, u_input.b, 1955u, 56723u)), var_0.d & ~vec3<i32>(-2180i, 0i, 2147483647i), !any(select(vec2<bool>(arg_1.e.x, var_0.e.x), vec2<bool>(false, false), true))), !(!(!arg_1.e)));
    let var_2 = vec4<bool>(true, arg_1.e.x || true, var_1.e.x, true);
    var var_3 = vec3<u32>(~_wgslsmith_add_u32(_wgslsmith_mod_u32(countOneBits(0u), 42205u), ~min(u_input.b, 2322u)), ~abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.b, 8552u, 20808u), vec4<u32>(u_input.b, 1u, u_input.b, u_input.b))), countOneBits(1u));
    let var_4 = Struct_1(-(vec3<i32>(-1i) * -(~vec3<i32>(var_0.a.x, 1629i, -2147483647i))), var_1.b, var_1.c & -1i, _wgslsmith_mod_vec3_i32(select(var_1.a, u_input.a.yzx, !all(var_2.xzy)), ~vec3<i32>(-9857i, -36625i, arg_1.a.x) ^ arg_1.d), vec2<bool>(var_2.x, 3204u > _wgslsmith_mult_u32(var_3.x, var_3.x & u_input.b)));
    return -172f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(550f, 580f, 2285f) - vec3<f32>(-1393f, -1941f, -434f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1699f, -1707f, -284f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1622f, 214f, 1357f) - vec3<f32>(1000f, 968f, -1108f))))), Struct_1(vec3<i32>(~u_input.a.x, -49567i, u_input.a.x) << (((vec3<u32>(u_input.b, u_input.b, 52183u) >> (vec3<u32>(u_input.b, 14496u, u_input.b) % vec3<u32>(32u))) | countOneBits(vec3<u32>(12150u, 33828u, 42745u))) % vec3<u32>(32u)), -338f, -u_input.a.x & (~(-1466i) ^ u_input.a.x), _wgslsmith_add_vec3_i32(~u_input.a.xxw, -vec3<i32>(u_input.a.x, -32710i, u_input.a.x)), vec2<bool>(!select(true, true, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-2120f)), 2317f))));
    let var_1 = select(!(~(~u_input.b) <= u_input.b), !all(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), false))));
    var var_2 = Struct_1(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.a.x, _wgslsmith_add_i32(0i, u_input.a.x), ~21351i)), _wgslsmith_clamp_vec3_i32(u_input.a.xzw, countOneBits(u_input.a.xxw), reverseBits(vec3<i32>(1889i, 0i, -2147483647i))) >> (_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(72692u, 25150u, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, 35339u), vec3<u32>(u_input.b, u_input.b, 23006u))) % vec3<u32>(32u)), countOneBits(countOneBits(func_4(vec4<i32>(u_input.a.x, -24306i, u_input.a.x, 0i), vec3<f32>(-901f, 1090f, -728f), vec4<u32>(u_input.b, u_input.b, 58018u, u_input.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-445f * var_0)), ~(-13792i), -firstTrailingBit(_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a.x, 2147483647i, 69764i), abs(u_input.a.wxy))), vec2<bool>(any(select(select(vec3<bool>(false, true, var_1), vec3<bool>(false, true, false), vec3<bool>(var_1, false, var_1)), vec3<bool>(true, false, true), true)), select(!var_1, all(select(vec2<bool>(false, var_1), vec2<bool>(var_1, var_1), var_1)), any(!vec4<bool>(var_1, false, var_1, false)))));
    let var_3 = true;
    var_2 = Struct_1(((max(u_input.a.wzz, vec3<i32>(0i, u_input.a.x, -2147483647i)) & func_4(vec4<i32>(56876i, -28883i, u_input.a.x, 16006i), vec3<f32>(var_2.b, var_0, var_2.b), vec4<u32>(u_input.b, u_input.b, 30937u, u_input.b))) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.b, u_input.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 0u, 1u), vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(1u, 3808u, 22519u)), ~vec3<u32>(u_input.b, 24021u, u_input.b)) % vec3<u32>(32u))) ^ reverseBits(var_2.d), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, -804f, var_2.b) + vec3<f32>(var_2.b, var_0, 1102f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -1007f, var_2.b) + vec3<f32>(-899f, 731f, var_0)))), Struct_1(-vec3<i32>(var_2.a.x, 387i, 54020i) ^ -vec3<i32>(9158i, var_2.d.x, var_2.c), -1888f, select(-u_input.a.x, 1i >> (u_input.b % 32u), any(vec2<bool>(var_1, false))), vec3<i32>(2147483647i >> (u_input.b % 32u), countOneBits(-1i), var_2.c), var_2.e), var_0)), var_2.a.x, (~_wgslsmith_mult_vec3_i32(var_2.a, vec3<i32>(u_input.a.x, 1i, var_2.c)) | _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, var_2.d.x, u_input.a.x), select(u_input.a.zyw, u_input.a.xwx, var_3))) & _wgslsmith_div_vec3_i32(abs(var_2.a), vec3<i32>(var_2.a.x, select(u_input.a.x, u_input.a.x, true), -53532i)), vec2<bool>(true, !var_2.e.x));
    let var_4 = vec4<i32>(var_2.c << (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(36398u, 0u), min(vec2<u32>(u_input.b, u_input.b), vec2<u32>(53045u, 2380u))), vec2<u32>(~u_input.b, 1u)) % 32u), _wgslsmith_dot_vec2_i32(var_2.d.xx, -vec2<i32>(-var_2.a.x, min(-2147483647i, u_input.a.x))), reverseBits(_wgslsmith_sub_i32(_wgslsmith_add_i32(var_2.a.x, u_input.a.x) << (u_input.b % 32u), -_wgslsmith_mult_i32(var_2.a.x, 1i))), 53142i);
    var_2 = Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(var_4.x, var_4.x, u_input.a.x), var_4.yww, u_input.a.xzx), abs(max(vec3<i32>(var_4.x, u_input.a.x, 11080i), vec3<i32>(-9048i, u_input.a.x, -23098i)))), (-16345i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(4294967295u, 4294967295u, 1u, u_input.b)) % 32u)) << (0u % 32u), select(1i, var_4.x, !(!var_2.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-853f * 958f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_2.b)))))), var_2.c, vec3<i32>(u_input.a.x, var_4.x, min(func_4(vec4<i32>(-1i, 2147483647i, var_4.x, var_4.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_2.b)), vec4<u32>(u_input.b, 1u, u_input.b, u_input.b)).x, -1i)), select(var_2.e, vec2<bool>(var_3 == any(vec2<bool>(false, false)), var_3), !select(!vec2<bool>(var_1, var_2.e.x), vec2<bool>(var_3, var_2.e.x), vec2<bool>(true, var_3))));
    let var_5 = Struct_1(_wgslsmith_mod_vec3_i32(var_2.a, _wgslsmith_div_vec3_i32((vec3<i32>(var_2.a.x, u_input.a.x, -2161i) << (vec3<u32>(u_input.b, 0u, 61729u) % vec3<u32>(32u))) << (abs(vec3<u32>(u_input.b, u_input.b, 33084u)) % vec3<u32>(32u)), countOneBits(vec3<i32>(2147483647i, -16214i, -1i)))), var_2.b, select(~1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, -23803i, var_2.d.x, var_2.d.x), vec4<i32>(-1i) * -vec4<i32>(var_4.x, var_4.x, 21363i, var_4.x)), !var_3), var_4.zzx ^ -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -63431i, var_4.x), countOneBits(u_input.a.ywz)), vec2<bool>(true, any(!select(vec3<bool>(var_2.e.x, true, var_3), vec3<bool>(false, false, var_2.e.x), var_2.e.x))));
    let var_6 = !(var_0 < var_2.b) || var_2.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, _wgslsmith_f_op_f32(sign(-699f)), var_5.b, _wgslsmith_f_op_f32(-var_0)) * vec4<f32>(_wgslsmith_div_f32(var_5.b, 237f), _wgslsmith_f_op_f32(-var_5.b), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(124f * 478f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.b, -606f, 227f, -1229f), vec4<f32>(-1145f, 268f, var_2.b, var_0)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.b, var_0, var_5.b, -390f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -227f, -1000f, 553f))))))), firstTrailingBit((var_5.a & var_5.d) << (~abs(vec3<u32>(u_input.b, 20076u, u_input.b)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.b), var_2.b)) + _wgslsmith_f_op_f32(trunc(var_5.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1086f, var_0, var_2.e.x)), var_2.b))))));
}

