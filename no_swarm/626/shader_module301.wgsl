struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: array<bool, 20> = array<bool, 20>(false, true, false, false, false, false, false, false, true, true, true, true, false, false, false, true, false, true, false, false);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_3) -> u32 {
    var var_0 = Struct_1(true, arg_3.e.b.b ^ -(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, arg_1.b.b.x, -8291i, arg_2.c.e), vec4<i32>(arg_2.c.e, arg_0.e, arg_1.d.b.x, 36118i), arg_0.d.b) & abs(arg_0.b.b)), abs(u_input.a.x));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.d, 487f) + arg_2.b.x))), _wgslsmith_f_op_f32(max(517f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * arg_2.a))), -1311f, -678f);
    var var_2 = _wgslsmith_div_i32(-arg_3.c.a.x, max(_wgslsmith_dot_vec2_i32(arg_2.c.c >> (u_input.a % vec2<u32>(32u)), vec2<i32>(reverseBits(-83094i), -43783i)), -6647i));
    let var_3 = arg_2.c;
    var var_4 = Struct_2(vec2<i32>(arg_1.d.b.x, 1i), Struct_1(false, vec4<i32>(-select(arg_0.d.b.x, arg_3.c.d.b.x, arg_0.d.a), var_0.b.x, var_3.d.b.x, -1i), 0u), vec2<i32>(abs(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(var_0.b.x, -38772i, arg_0.b.b.x), i32(-1i) * -1i, -15959i)), arg_1.a.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * arg_2.a) * _wgslsmith_f_op_f32(sign(-811f))) <= -1598f, vec4<i32>(-abs(arg_0.d.b.x), var_0.b.x, -21346i, -(i32(-1i) * -2147483647i)), arg_0.b.c), reverseBits(_wgslsmith_dot_vec2_i32(select(vec2<i32>(var_0.b.x, var_3.d.b.x) >> (vec2<u32>(arg_1.d.c, arg_2.c.b.c) % vec2<u32>(32u)), -vec2<i32>(arg_0.e, arg_3.c.e), !vec2<bool>(false, arg_0.b.a)), vec2<i32>(2147483647i, var_0.b.x))));
    return 4294967295u;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_mod_vec2_i32(((arg_0.b.wx << (vec2<u32>(u_input.a.x, arg_1) % vec2<u32>(32u))) | _wgslsmith_sub_vec2_i32(arg_0.b.zw, arg_0.b.wy)) | _wgslsmith_div_vec2_i32(arg_0.b.yx ^ vec2<i32>(arg_0.b.x, arg_0.b.x), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.b.x, 39705i), arg_0.b.xx)), vec2<i32>(-2147483647i, arg_0.b.x)), Struct_1(!any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a.x, 20u)])), firstTrailingBit(arg_0.b), ~(~1u)), arg_0.b.xx | arg_0.b.zz, Struct_1(func_3(Struct_2(arg_0.b.yx, arg_0, vec2<i32>(16404i, arg_0.b.x), Struct_1(false, arg_0.b, arg_0.c), arg_0.b.x), Struct_2(vec2<i32>(31327i, 0i), Struct_1(arg_0.a, arg_0.b, arg_1), vec2<i32>(arg_0.b.x, -37095i), Struct_1(true, vec4<i32>(arg_0.b.x, 41641i, arg_0.b.x, arg_0.b.x), 0u), arg_0.b.x), Struct_3(534f, vec3<f32>(-1000f, 932f, -148f), Struct_2(arg_0.b.zx, Struct_1(false, vec4<i32>(24600i, -1i, -1i, arg_0.b.x), 0u), vec2<i32>(arg_0.b.x, 1i), Struct_1(global0[_wgslsmith_index_u32(11819u, 20u)], arg_0.b, arg_1), arg_0.b.x), -131f, Struct_2(arg_0.b.wx, arg_0, vec2<i32>(-2147483647i, arg_0.b.x), arg_0, 22187i)), Struct_3(348f, vec3<f32>(-376f, 546f, 1115f), Struct_2(vec2<i32>(12556i, 9869i), arg_0, vec2<i32>(2147483647i, 1i), Struct_1(false, vec4<i32>(1i, arg_0.b.x, arg_0.b.x, 1i), 35134u), arg_0.b.x), -144f, Struct_2(vec2<i32>(arg_0.b.x, arg_0.b.x), Struct_1(false, vec4<i32>(2147483647i, arg_0.b.x, arg_0.b.x, 1i), 28932u), arg_0.b.zz, arg_0, arg_0.b.x))) <= firstTrailingBit(1u), vec4<i32>(0i, max(i32(-1i) * -2147483647i, ~60746i), _wgslsmith_add_i32(countOneBits(0i), 2147483647i), -13819i), arg_1), -9119i);
    let var_1 = ~(~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(var_0.d.c, var_0.d.c)), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.c, arg_1), u_input.a, vec2<u32>(4294967295u, var_0.b.c)), ~vec2<u32>(45131u, 20088u)), u_input.a));
    var var_2 = arg_0;
    var_2 = Struct_1(!(!global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(58126u, reverseBits(1u), 4294967295u), 20u)]), var_0.d.b, ~_wgslsmith_dot_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(63536u, 2719u, var_1.x, var_1.x), vec4<u32>(0u, 0u, 0u, var_1.x))), vec4<u32>(arg_0.c, var_1.x, 0u, u_input.a.x) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, var_2.c, u_input.a.x), vec4<u32>(0u, 1u, u_input.a.x, 1u))));
    var var_3 = select(firstTrailingBit(~(select(vec3<u32>(arg_1, var_1.x, arg_1), vec3<u32>(34228u, var_0.d.c, var_0.b.c), false) & countOneBits(vec3<u32>(var_1.x, 4294967295u, 1u)))), min(_wgslsmith_mod_vec3_u32(vec3<u32>(firstLeadingBit(var_0.d.c), 1u, _wgslsmith_mult_u32(0u, 65495u)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.c, 93351u, var_2.c), vec3<u32>(var_2.c, 851u, 26402u)) & vec3<u32>(4294967295u, 38775u, u_input.a.x)), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.c, 0u, var_1.x), vec3<u32>(4294967295u, var_1.x, 116152u)))), false);
    return var_0.b;
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = select(vec3<bool>(true, all(select(!vec3<bool>(true, true, arg_0.a), select(vec3<bool>(arg_0.a, arg_0.a, true), vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0.c, 20u)], false), global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 20u)], true), vec3<bool>(false, false, arg_0.a), vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 20u)], false)))), any(select(!vec2<bool>(arg_0.a, global0[_wgslsmith_index_u32(43067u, 20u)]), vec2<bool>(false, arg_0.a), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], true)))), vec3<bool>(arg_0.a, true, true), vec3<bool>(~arg_0.c == 0u, true, any(select(select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 20u)], false, arg_0.a), vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), !vec3<bool>(true, arg_0.a, global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.c, 20u)], true, false), vec3<bool>(true, arg_0.a, true), true)))));
    global0 = array<bool, 20>();
    let var_1 = -arg_0.b.x;
    global0 = array<bool, 20>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2251f * -640f)) + _wgslsmith_f_op_f32(-1433f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -988f)))) + _wgslsmith_div_f32(-2071f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-719f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1238f), -174f)))));
    return _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a) >> (68555u % 32u), firstTrailingBit(_wgslsmith_mod_u32(u_input.a.x, arg_0.c)), _wgslsmith_add_u32(func_3(Struct_2(vec2<i32>(arg_0.b.x, var_1), Struct_1(false, vec4<i32>(-1i, 0i, var_1, var_1), 1u), vec2<i32>(var_1, 0i), arg_0, var_1), Struct_2(arg_0.b.zy, arg_0, vec2<i32>(56653i, var_1), Struct_1(false, vec4<i32>(arg_0.b.x, arg_0.b.x, var_1, arg_0.b.x), arg_0.c), arg_0.b.x), Struct_3(800f, vec3<f32>(766f, -341f, 1765f), Struct_2(vec2<i32>(2147483647i, arg_0.b.x), arg_0, arg_0.b.wz, arg_0, arg_0.b.x), -848f, Struct_2(vec2<i32>(-1i, -24628i), arg_0, vec2<i32>(0i, arg_0.b.x), Struct_1(false, vec4<i32>(var_1, 0i, 2147483647i, arg_0.b.x), u_input.a.x), -32660i)), Struct_3(705f, vec3<f32>(340f, 125f, 879f), Struct_2(arg_0.b.zy, arg_0, arg_0.b.xw, arg_0, 22091i), 410f, Struct_2(vec2<i32>(5121i, var_1), Struct_1(arg_0.a, arg_0.b, u_input.a.x), arg_0.b.xy, arg_0, var_1))), 4294967295u)) | vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c, 1u, 1u), ~vec3<u32>(arg_0.c, 0u, 1u)), u_input.a.x, u_input.a.x), countOneBits(_wgslsmith_sub_vec3_u32(max(~vec3<u32>(22028u, arg_0.c, 0u), vec3<u32>(4294967295u, u_input.a.x, 4294967295u)), abs(vec3<u32>(11376u, 1u, 84483u)))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_sub_u32(arg_1.c, _wgslsmith_dot_vec3_u32(func_4(func_2(Struct_1(true, arg_1.b, arg_0.e.d.c), 82593u)), _wgslsmith_mod_vec3_u32(func_4(func_2(arg_1, u_input.a.x)), max(vec3<u32>(4294967295u, arg_1.c, arg_1.c), firstLeadingBit(vec3<u32>(arg_0.e.d.c, u_input.a.x, u_input.a.x))))));
    let var_1 = arg_0.e;
    let var_2 = var_1;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(878f, -1627f, arg_0.d, arg_0.d) + vec4<f32>(1000f, -863f, 726f, arg_0.a)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.a, 1822f, 944f, arg_0.d))), !vec4<bool>(arg_1.a, arg_1.a, arg_1.a, true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1845f, -387f, arg_0.a, arg_0.a)))))));
    var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.x - arg_0.d))), 959f) - -795f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(713f)), 1000f, false))) - -629f), -854f, _wgslsmith_f_op_f32(ceil(157f)));
    return func_2(Struct_1(true, var_1.d.b, reverseBits(min(~arg_0.e.b.c, ~u_input.a.x))), _wgslsmith_mod_u32(arg_1.c >> (var_1.d.c % 32u), u_input.a.x));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec4<i32>) -> i32 {
    let var_0 = all(!vec3<bool>(any(vec4<bool>(false, arg_0.x, arg_1.a, global0[_wgslsmith_index_u32(4294967295u, 20u)])), true, func_1(Struct_3(arg_2.x, arg_2, Struct_2(vec2<i32>(24322i, 17789i), Struct_1(false, arg_3, arg_1.c), arg_3.zx, arg_1, 2992i), 1275f, Struct_2(vec2<i32>(-13254i, 0i), Struct_1(false, vec4<i32>(0i, arg_3.x, -1i, 1i), arg_1.c), arg_1.b.xy, arg_1, arg_3.x)), func_1(Struct_3(-1394f, arg_2, Struct_2(arg_3.xy, Struct_1(false, vec4<i32>(arg_1.b.x, -27783i, -2147483647i, arg_1.b.x), u_input.a.x), arg_3.zx, arg_1, arg_3.x), arg_2.x, Struct_2(arg_1.b.yx, arg_1, arg_1.b.yx, arg_1, 1i)), arg_1)).a));
    var var_1 = !all(select(!(!vec4<bool>(true, false, arg_1.a, arg_0.x)), !select(vec4<bool>(var_0, arg_1.a, true, true), vec4<bool>(arg_1.a, true, arg_1.a, arg_1.a), vec4<bool>(true, true, var_0, true)), !vec4<bool>(global0[_wgslsmith_index_u32(1581u, 20u)], false, false, var_0)));
    let var_2 = arg_0.x;
    var var_3 = arg_3.x | abs(_wgslsmith_mult_i32(select(func_2(Struct_1(true, vec4<i32>(-29874i, 2147483647i, -1i, -35322i), arg_1.c), u_input.a.x).b.x, -47240i, u_input.a.x > u_input.a.x), 1i));
    let var_4 = Struct_2(arg_3.yw, Struct_1(any(!vec2<bool>(arg_0.x, true)), vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(26045i, 29993i, -33054i), arg_1.b.yww), -85582i, ~arg_1.b.x, arg_1.b.x), _wgslsmith_mult_u32(1u, 540u)), vec2<i32>(firstLeadingBit(arg_1.b.x), arg_1.b.x), func_1(Struct_3(-1556f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, 364f)), Struct_2(arg_1.b.xx | vec2<i32>(-2147483647i, 0i), arg_1, arg_3.ww, func_2(Struct_1(global0[_wgslsmith_index_u32(45596u, 20u)], vec4<i32>(29309i, 1i, arg_3.x, 1642i), u_input.a.x), 0u), arg_1.b.x), arg_2.x, Struct_2(vec2<i32>(arg_3.x, arg_1.b.x), func_2(Struct_1(true, arg_3, u_input.a.x), u_input.a.x), vec2<i32>(arg_3.x, arg_1.b.x), arg_1, -2147483647i >> (u_input.a.x % 32u))), Struct_1(var_2, vec4<i32>(arg_1.b.x ^ arg_3.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b.x, -2147483647i), vec2<i32>(1i, -6530i)), -arg_3.x, 1i), ~_wgslsmith_clamp_u32(u_input.a.x, arg_1.c, 0u))), arg_1.b.x);
    return -var_4.b.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 20>();
    let var_0 = -(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, -9240i), vec3<i32>(19430i, -1i, -5846i)), 6608i), func_5(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], false), func_1(Struct_3(-640f, vec3<f32>(-1381f, 1560f, 1093f), Struct_2(vec2<i32>(7929i, -4154i), Struct_1(true, vec4<i32>(2147483647i, -2147483647i, 18756i, 22177i), 1u), vec2<i32>(1i, -27246i), Struct_1(global0[_wgslsmith_index_u32(5130u, 20u)], vec4<i32>(25959i, 1i, -2147483647i, -2147483647i), 29541u), -1i), -546f, Struct_2(vec2<i32>(-29545i, -18065i), Struct_1(false, vec4<i32>(-64249i, -16384i, 81098i, 11853i), 0u), vec2<i32>(-30252i, 1i), Struct_1(false, vec4<i32>(52341i, 2147483647i, 1i, 2147483647i), u_input.a.x), 1i)), Struct_1(false, vec4<i32>(13223i, -1i, 1i, -2147483647i), u_input.a.x)), _wgslsmith_div_vec3_f32(vec3<f32>(-333f, 1400f, 813f), vec3<f32>(-875f, 215f, -2054f)), -vec4<i32>(2147483647i, 37919i, -1i, -2147483647i))) >> (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u)));
    var var_1 = u_input.a.x;
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-(~func_5(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), Struct_1(global0[_wgslsmith_index_u32(23628u, 20u)], vec4<i32>(-2147483647i, var_0.x, var_0.x, 1i), 4294967295u), vec3<f32>(237f, 160f, -1421f), vec4<i32>(var_0.x, -1i, var_0.x, var_0.x))), -((9889i | var_0.x) | -var_0.x), _wgslsmith_mod_i32(-_wgslsmith_mult_i32(2802i, var_0.x), 22640i), var_0.x), ~(-vec4<i32>(var_0.x, -16820i, var_0.x, ~var_0.x)));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -516f);
    let var_4 = any(select(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 20u)], true, false)), !select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(10283u, 20u)], true, global0[_wgslsmith_index_u32(1u, 20u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), global0[_wgslsmith_index_u32(abs(0u), 20u)]), any(vec3<bool>(false, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3));
}

