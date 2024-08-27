struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: bool,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> bool {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -424f), _wgslsmith_f_op_f32(step(-334f, 501f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1699f, -778f)), true)), _wgslsmith_sub_vec4_i32(min(_wgslsmith_add_vec4_i32(vec4<i32>(-5355i, 2147483647i, u_input.b, -1i), vec4<i32>(u_input.b, -19565i, -336i, u_input.b)), vec4<i32>(0i, u_input.b, u_input.b, u_input.b)), ~vec4<i32>(u_input.b, -39360i, 48709i, u_input.b)), vec2<i32>(-u_input.b, 40879i), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1043f), _wgslsmith_f_op_f32(select(246f, -150f, false))) + vec2<f32>(-182f, _wgslsmith_div_f32(-1000f, 489f))), vec3<bool>(false, false, !all(vec2<bool>(true, true)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(594f, -1319f))) * vec2<f32>(1382f, 449f))), -_wgslsmith_add_vec4_i32(-vec4<i32>(-37929i, u_input.b, u_input.b, 28817i), vec4<i32>(440i, -5806i, 0i, u_input.b)), vec2<i32>(abs(0i), 1i) ^ -firstLeadingBit(vec2<i32>(-1973i, u_input.b)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-775f, -1114f))))), vec2<f32>(-1025f, _wgslsmith_f_op_f32(789f * -731f)))), vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), true, any(vec2<bool>(true, true)))), Struct_1(vec2<f32>(1433f, _wgslsmith_f_op_f32(881f + 1f)), max(~vec4<i32>(0i, u_input.b, u_input.b, -33903i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 24093i), vec4<i32>(2147483647i, -5628i, u_input.b, u_input.b))), vec2<i32>(i32(-1i) * -u_input.b, u_input.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(510f, 1609f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -270f))), vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), 1165f)), vec3<bool>(true, true, !any(vec2<bool>(true, true)))), ~u_input.a, true);
    var var_1 = var_0.a;
    var var_2 = _wgslsmith_clamp_vec3_i32(var_1.b.xyx, vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_0.c.b.zxw, ~vec3<i32>(var_0.b.b.x, var_0.a.c.x, 2147483647i)), var_1.b.wzx), u_input.b, max(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(var_0.b.b.zxw, vec3<i32>(2147483647i, u_input.b, u_input.b))) & 1i), _wgslsmith_sub_vec3_i32(~(var_1.b.zyw << (~vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), var_1.b.xwy));
    var_1 = var_0.c;
    var_2 = _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(_wgslsmith_clamp_i32(var_2.x, -13334i, -16608i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(u_input.b, 2147483647i)), _wgslsmith_add_i32(var_1.b.x, u_input.b))), var_0.c.b.yxy), min(-reverseBits(var_0.a.b.xxy), min(var_1.b.ywz & vec3<i32>(var_1.c.x, 24719i, 0i), select(vec3<i32>(-75566i, -1991i, var_2.x), var_1.b.yxy, vec3<bool>(false, true, var_1.e.x)))) >> (select(select(vec3<u32>(50053u, u_input.a, 23687u), vec3<u32>(4294967295u, u_input.a, 4294967295u), false) << (max(vec3<u32>(24949u, u_input.a, var_0.d), vec3<u32>(var_0.d, var_0.d, var_0.d)) % vec3<u32>(32u)), reverseBits(vec3<u32>(var_0.d, u_input.a, 1u)), var_0.a.e.x) % vec3<u32>(32u)));
    return firstTrailingBit(select(u_input.b, reverseBits(firstLeadingBit(var_2.x)), false)) <= (var_0.a.b.x | -_wgslsmith_mod_i32(-var_0.b.c.x, ~2147483647i));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_3) -> vec4<i32> {
    let var_0 = vec4<bool>(!(!(_wgslsmith_f_op_f32(-arg_2.e.x) >= _wgslsmith_f_op_f32(-1096f - arg_2.e.x))), !(!func_3()) & arg_1.x, arg_2.a, (_wgslsmith_div_i32(-28101i, -6131i) & (i32(-1i) * -u_input.b)) > abs(max(1i, 0i)));
    var var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.e.x, arg_2.e.x)))), ~(vec4<i32>(u_input.b, -5011i, u_input.b, u_input.b) | vec4<i32>(u_input.b, u_input.b, u_input.b, 0i)), _wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.b, 1i), vec2<i32>(u_input.b, -10504i)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_2.e.zz))), !vec3<bool>(true, arg_1.x, false)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.e.wz * arg_2.e.zx) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2.e.x, arg_2.e.x), arg_2.e.yy))), min(vec4<i32>(1i, -40344i, -56231i, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i))), ~(~vec2<i32>(u_input.b, 0i)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(976f, arg_2.e.x)))), !vec3<bool>(false, true, var_0.x)), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.e.x, -379f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1435f, -701f) + vec2<f32>(-815f, arg_2.e.x))), (vec4<i32>(1i, u_input.b, 9641i, u_input.b) << (vec4<u32>(u_input.a, u_input.a, 1u, 4294967295u) % vec4<u32>(32u))) << (~vec4<u32>(u_input.a, 0u, 5038u, arg_2.b) % vec4<u32>(32u)), reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-60867i, -1i))), arg_2.e.zx, select(select(arg_1.ywx, vec3<bool>(false, true, arg_2.c), vec3<bool>(false, var_0.x, true)), select(arg_1.yww, vec3<bool>(false, arg_2.c, arg_2.c), vec3<bool>(false, true, false)), arg_1.x)), abs(0u), true), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(arg_2.e.zw + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-148f, arg_2.e.x))), -(~vec4<i32>(u_input.b, 7897i, u_input.b, -2147483647i)), vec2<i32>(u_input.b, 9861i), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(arg_2.e.wx, vec2<f32>(-1444f, -310f))))), !select(arg_1.zww, vec3<bool>(false, arg_2.a, var_0.x), arg_1.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-arg_2.e.xy), vec4<i32>(~u_input.b, -u_input.b, u_input.b, u_input.b), vec2<i32>(reverseBits(u_input.b), reverseBits(17758i)), _wgslsmith_f_op_vec2_f32(min(arg_2.e.ww, _wgslsmith_div_vec2_f32(arg_2.e.zy, arg_2.e.wz))), var_0.yyy), Struct_1(_wgslsmith_f_op_vec2_f32(arg_2.e.zz - _wgslsmith_f_op_vec2_f32(sign(arg_2.e.zx))), vec4<i32>(u_input.b, ~31430i, 1i, firstTrailingBit(-1i)), vec2<i32>(66711i, abs(-36918i)), arg_2.e.yx, arg_2.d.zxx), reverseBits(~0u << (_wgslsmith_mult_u32(59401u, u_input.a) % 32u)), arg_1.x), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_2.e.x - 3039f), _wgslsmith_f_op_f32(abs(1435f)))), vec4<i32>(u_input.b, u_input.b ^ 2996i, select(-1i, ~47015i, true), u_input.b), vec2<i32>(~(-u_input.b), -34865i >> (countOneBits(1u) % 32u)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(375f, 577f)) - arg_2.e.ww), _wgslsmith_f_op_vec2_f32(-arg_2.e.wx), vec2<bool>(any(vec2<bool>(arg_1.x, arg_2.a)), var_0.x | var_0.x))), vec3<bool>(!(arg_2.e.x >= 1508f), any(select(vec3<bool>(false, false, true), var_0.zyx, var_0.xxx)), any(arg_1.xx))), countOneBits(vec4<u32>(~36192u, ~10904u, min(arg_0, u_input.a), _wgslsmith_mult_u32(u_input.a, 4294967295u))) | vec4<u32>(~1u, arg_2.b, 0u, abs(abs(arg_0))), ~4294967295u);
    var_1 = Struct_4(Struct_2(var_1.a.a, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(arg_2.e.x + 917f), 323f), vec4<i32>(max(u_input.b, var_1.b.a.c.x), _wgslsmith_dot_vec2_i32(var_1.a.a.c, var_1.c.c), reverseBits(-2147483647i), 1i), var_1.c.b.wx, vec2<f32>(_wgslsmith_f_op_f32(arg_2.e.x + arg_2.e.x), 1073f), select(select(vec3<bool>(var_1.a.b.e.x, var_0.x, false), vec3<bool>(arg_2.c, true, arg_2.a), vec3<bool>(false, false, false)), !vec3<bool>(var_0.x, false, true), arg_2.a)), var_1.b.b, ~24171u, var_1.c.e.x | (true && any(vec2<bool>(var_0.x, false)))), var_1.b, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-415f, var_1.a.a.a.x))), ~(abs(var_1.c.b) << (firstTrailingBit(var_1.d) % vec4<u32>(32u))), vec2<i32>(0i, -47130i), vec2<f32>(_wgslsmith_div_f32(var_1.c.d.x, _wgslsmith_f_op_f32(712f - arg_2.e.x)), _wgslsmith_f_op_f32(977f + 1000f)), !var_1.b.c.e), abs(var_1.d), min(4062u, ~arg_0) >> (4294967295u % 32u));
    var_1 = Struct_4(var_1.b, var_1.b, var_1.c, var_1.d | _wgslsmith_mult_vec4_u32(vec4<u32>(0u, select(16709u, 4294967295u, arg_2.a), arg_0, 4294967295u), var_1.d), arg_0);
    let var_2 = var_1.c.e.x;
    return vec4<i32>(~(-15316i), var_1.a.c.b.x, ~(-1065i), max(0i, 28527i << (~(arg_0 & 0u) % 32u)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<i32>) -> vec4<u32> {
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(~max(arg_1, vec4<i32>(-1i, arg_1.x, arg_1.x, u_input.b)), vec4<i32>(~(-4640i), -19350i, ~1757i, _wgslsmith_clamp_i32(-1i, u_input.b, u_input.b))), ~firstLeadingBit(arg_1.x), abs(arg_1.x)), ~(arg_1.zzx >> (min(firstLeadingBit(vec3<u32>(4023u, u_input.a, 4294967295u)), vec3<u32>(u_input.a, u_input.a, 0u)) % vec3<u32>(32u))));
    var var_1 = Struct_3(34284u >= u_input.a, select(75747u, _wgslsmith_add_u32(_wgslsmith_div_u32(23746u, min(4294967295u, 49123u)), u_input.a), arg_0.x), false, vec4<bool>(all(select(!vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, true)), !arg_0.x)), true, false, all(select(vec4<bool>(true, true, arg_0.x, arg_0.x), vec4<bool>(true, false, arg_0.x, arg_0.x), true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1218f, 200f, -1136f, -1724f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(177f, -482f, -259f, 1000f))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, -721f, 1786f, 644f)))));
    let var_2 = Struct_3(256f < var_1.e.x, abs(10933u), false, vec4<bool>(false, var_1.a, true, select(select(any(vec2<bool>(true, var_1.d.x)), false, var_1.a), !arg_0.x == true, true)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.x)), 1493f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(757f + var_1.e.x) + _wgslsmith_f_op_f32(397f + var_1.e.x))))));
    let var_3 = Struct_4(Struct_2(Struct_1(var_1.e.xw, vec4<i32>(arg_1.x, arg_1.x, var_0.x, u_input.b) | ~vec4<i32>(-16762i, 24566i, 1i, arg_1.x), vec2<i32>(100079i, 1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-514f, var_1.e.x)), select(vec3<bool>(true, var_2.a, true), select(vec3<bool>(var_2.c, true, false), vec3<bool>(true, arg_0.x, true), vec3<bool>(true, var_2.d.x, false)), arg_0.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-148f, -1085f))), vec4<i32>(~u_input.b, -23759i >> (var_1.b % 32u), var_0.x, u_input.b), abs(abs(vec2<i32>(-1230i, -11174i))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(835f, -170f) * vec2<f32>(var_2.e.x, 1853f)), var_1.e.yx), vec3<bool>(false, var_2.c, var_1.c)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-834f - var_1.e.x), _wgslsmith_f_op_f32(floor(-1000f))), arg_1, var_0.zy, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_2.e.zx)), _wgslsmith_f_op_vec2_f32(round(var_1.e.wy))), !var_1.d.www), u_input.a | ~4294967295u, false), Struct_2(Struct_1(var_2.e.wx, arg_1, ~func_2(0u, var_2.d, var_2).wz, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.e.x, 605f) * vec2<f32>(var_2.e.x, var_2.e.x)), var_1.e.wz)), !(!vec3<bool>(arg_0.x, false, false))), Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-841f, var_2.e.x), var_2.e.xx)), vec4<i32>(u_input.b, -1i, arg_1.x, 1i), var_0.yz >> (_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.b, u_input.a), vec2<u32>(66454u, u_input.a)) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-var_1.e.zx), var_2.d.zzw), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.e.x, 1000f)))), ~vec4<i32>(u_input.b, 32151i, arg_1.x, -2147483647i), var_0.zz, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(var_2.e.zy)))), !var_2.d.zwy), _wgslsmith_clamp_u32(_wgslsmith_div_u32(~var_2.b, ~u_input.a), reverseBits(47806u), 1u >> (1u % 32u)), var_2.c), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_div_f32(var_1.e.x, 897f), true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-757f, -507f))))), arg_1, vec2<i32>(select(var_0.x, 11713i, select(var_1.a, false, false)), u_input.b), vec2<f32>(_wgslsmith_f_op_f32(var_2.e.x - -1087f), var_1.e.x), !select(!arg_0, var_1.d.xzw, var_2.d.ywx)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b, ~0u, reverseBits(var_1.b), 9327u), ~vec4<u32>(51173u, 4294967295u, u_input.a, 1u) << (vec4<u32>(u_input.a, 0u, 7212u, 76361u) % vec4<u32>(32u))), (1u ^ reverseBits(firstTrailingBit(var_2.b))) | 0u);
    let var_4 = u_input.b;
    return select(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, var_3.d.x), var_3.d)) | firstTrailingBit(var_3.d), abs(abs(vec4<u32>(var_1.b, 52412u, u_input.a, 2709u))), !vec4<bool>(false, var_3.b.a.b.x == arg_1.x, true, any(vec4<bool>(false, var_2.c, var_2.a, true)))) ^ var_3.d;
}

fn func_5(arg_0: f32, arg_1: vec4<u32>) -> i32 {
    let var_0 = !(!any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)));
    let var_1 = ~u_input.b;
    let var_2 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, 466f))) * vec2<f32>(111f, arg_0)), _wgslsmith_add_vec4_i32(vec4<i32>(var_1, u_input.b, var_1, u_input.b), max(vec4<i32>(var_1, u_input.b, u_input.b, -35625i), vec4<i32>(var_1, 45041i, u_input.b, var_1))), (vec2<i32>(27111i, var_1) >> (vec2<u32>(59485u, 32201u) % vec2<u32>(32u))) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), vec2<f32>(2589f, _wgslsmith_f_op_f32(min(arg_0, 348f))), !(!vec3<bool>(true, var_0, true))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1041f, -577f), vec2<f32>(-1900f, 1741f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_0) - vec2<f32>(arg_0, 2095f))), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, u_input.b, u_input.b, 1i), ~_wgslsmith_sub_vec2_i32(vec2<i32>(var_1, var_1), vec2<i32>(11748i, u_input.b)), vec2<f32>(-1488f, _wgslsmith_div_f32(751f, 1282f)), select(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, true, var_0), vec3<bool>(false, true, var_0)), !vec3<bool>(var_0, var_0, var_0), var_0)), Struct_1(vec2<f32>(1f, 1f), ~(vec4<i32>(u_input.b, var_1, 13098i, -13750i) ^ vec4<i32>(u_input.b, 0i, u_input.b, 1i)), _wgslsmith_div_vec2_i32(vec2<i32>(var_1, -2147483647i) >> (vec2<u32>(arg_1.x, 4294967295u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(-70542i, 0i), vec2<i32>(62927i, 1i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, 688f), vec2<f32>(-672f, -1375f), true)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-370f, arg_0)))), select(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, false, false), vec3<bool>(var_0, true, var_0)), !vec3<bool>(var_0, false, var_0), !var_0)), arg_1.x, all(vec2<bool>(true, u_input.a < arg_1.x))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1944f, arg_0) - vec2<f32>(arg_0, arg_0)))), max(reverseBits(vec4<i32>(u_input.b, -1i, u_input.b, u_input.b)), vec4<i32>(var_1, 37367i, var_1, u_input.b)), -vec2<i32>(0i, var_1), vec2<f32>(arg_0, arg_0), !select(vec3<bool>(false, true, var_0), vec3<bool>(false, false, true), vec3<bool>(var_0, false, true))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), vec2<f32>(1075f, arg_0)) * _wgslsmith_div_vec2_f32(vec2<f32>(-255f, -136f), vec2<f32>(-464f, arg_0))), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1, u_input.b, 1i, u_input.b), vec4<i32>(-23212i, 1i, 27140i, -75852i)), ~vec4<i32>(u_input.b, -42008i, -1i, var_1)), vec2<i32>(~109i, ~var_1), vec2<f32>(_wgslsmith_f_op_f32(trunc(356f)), _wgslsmith_f_op_f32(arg_0 * -317f)), !vec3<bool>(false, false, var_0)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(202f, arg_0) - vec2<f32>(-1525f, arg_0))), vec4<i32>(-84711i, -26145i, func_2(20155u, vec4<bool>(true, var_0, true, var_0), Struct_3(true, arg_1.x, true, vec4<bool>(false, var_0, false, var_0), vec4<f32>(arg_0, 1795f, arg_0, arg_0))).x, 15005i), ~vec2<i32>(u_input.b, var_1) | max(vec2<i32>(-2147483647i, -1i), vec2<i32>(u_input.b, -26382i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1833f, -1186f) - vec2<f32>(arg_0, arg_0))), select(vec3<bool>(true, var_0, true), !vec3<bool>(var_0, var_0, var_0), !vec3<bool>(false, var_0, true))), arg_1.x, func_3() & ((3647u == u_input.a) | var_0)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(357f)) * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -258f)))), ~(~min(vec4<i32>(u_input.b, -48187i, var_1, u_input.b), vec4<i32>(u_input.b, 10763i, var_1, 13612i))), ~vec2<i32>(select(-16214i, u_input.b, var_0), var_1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(158f, 1027f)))), select(vec3<bool>(!var_0, true, any(vec3<bool>(var_0, var_0, false))), vec3<bool>(var_0, true, any(vec3<bool>(var_0, var_0, true))), all(!vec2<bool>(var_0, var_0)))), ~(~vec4<u32>(_wgslsmith_sub_u32(arg_1.x, arg_1.x), u_input.a, arg_1.x, 59769u)), ~20897u);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + arg_0))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(435f)), 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_f_op_f32(1200f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -574f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)))));
    var var_4 = _wgslsmith_f_op_f32(-arg_0);
    return i32(-1i) * -var_2.c.c.x;
}

fn func_1() -> vec4<i32> {
    let var_0 = vec4<i32>(~2147483647i, _wgslsmith_mod_i32(0i, func_5(_wgslsmith_f_op_f32(max(-754f, -581f)), func_4(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), func_2(u_input.a, vec4<bool>(false, false, false, false), Struct_3(false, u_input.a, true, vec4<bool>(true, true, false, true), vec4<f32>(1678f, 1812f, 1396f, 1880f)))))), -32913i, u_input.b);
    var var_1 = firstLeadingBit(~vec4<i32>(~firstTrailingBit(54402i), _wgslsmith_sub_i32(-31111i, _wgslsmith_clamp_i32(64692i, var_0.x, -1i)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_0.yyw, var_0.wwz), var_0.wwz), _wgslsmith_add_i32(-15171i, 0i)));
    return ~var_0 | -var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, _wgslsmith_add_i32(u_input.b, 0i), u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(28438i, -2147483647i, 7719i), vec3<i32>(u_input.b, 77549i, 2147483647i))), func_1());
    let var_1 = vec4<bool>((func_3() | true) || all(vec3<bool>(true, true, true)), select(select(_wgslsmith_div_i32(2147483647i, -2147483647i), -u_input.b, true) >= _wgslsmith_add_i32(var_0.x, 2147483647i), true, true), !all(vec3<bool>(true, false, true)), false);
    var var_2 = Struct_3(true, 55925u, var_1.x, select(!vec4<bool>(true, var_1.x, select(var_1.x, false, false), any(vec3<bool>(false, var_1.x, false))), var_1, !vec4<bool>(true, var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -477f, 234f, -619f)) + vec4<f32>(1f, 1f, 1f, 1f))) * vec4<f32>(-323f, _wgslsmith_f_op_f32(trunc(2014f)), -2470f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-128f)) + _wgslsmith_f_op_f32(-525f + 186f)))));
    var_2 = Struct_3(true, var_2.b, all(var_2.d.yxx), !var_2.d, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_2.e))));
    let var_3 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(22363u, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, var_2.b), var_2.d) | ~vec4<u32>(u_input.a, 0u, var_2.b, 0u), ~vec4<u32>(var_2.b, var_2.b, 24270u, 0u)), vec4<u32>(2045u ^ ~u_input.a, _wgslsmith_add_u32(_wgslsmith_add_u32(1u, 1u), reverseBits(var_2.b)), 62877u, 4294967295u << (_wgslsmith_sub_u32(u_input.a, 4294967295u) % 32u)));
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_2.e.zyz), var_2.e, reverseBits(u_input.a), 1u, _wgslsmith_mod_vec4_u32(select(vec4<u32>(~u_input.a, 1u, max(var_3.x, 15182u), u_input.a), var_3, var_2.d), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 11671u, u_input.a, 24224u), vec4<u32>(45263u, var_2.b, 9154u, 0u)), vec4<u32>(~var_3.x, firstLeadingBit(39593u), 1u | u_input.a, 0u))));
}

