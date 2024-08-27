struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(15247i, 2147483647i, 34824i);

var<private> global1: vec4<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<f32> {
    let var_0 = _wgslsmith_div_f32(-479f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -401f))));
    var var_1 = vec4<bool>(true, true, true, true);
    let var_2 = _wgslsmith_sub_i32(~abs(min(-2147483647i, u_input.b) << (_wgslsmith_sub_u32(4294967295u, u_input.a) % 32u)), ~global0.x);
    global0 = vec3<i32>(2147483647i, -(i32(-1i) * -(~u_input.c)), var_2);
    global1 = vec4<bool>(~u_input.a < u_input.a, true, true, global1.x);
    return _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1785f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + -794f), _wgslsmith_f_op_f32(-721f - -1695f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-195f * 277f)), var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1878f, -937f, -974f, 1200f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0, 1661f, -296f, var_0))))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = 1i;
    let var_1 = Struct_1(select(global1.xxw, !arg_0.a, arg_0.a), arg_0.b, vec4<i32>(-_wgslsmith_dot_vec3_i32(abs(arg_1.c.zyy), arg_0.c.wzx), 14381i, -1i, arg_0.c.x), _wgslsmith_div_vec4_f32(arg_3.d, _wgslsmith_f_op_vec4_f32(sign(arg_3.d))), _wgslsmith_div_f32(arg_0.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.b.x))))));
    var var_2 = Struct_1(select(vec3<bool>(any(vec2<bool>(false, false)), true, arg_1.c.x >= _wgslsmith_div_i32(var_1.c.x, var_1.c.x)), !vec3<bool>(true, !var_1.a.x, false | arg_3.a.x), select(select(select(vec3<bool>(false, var_1.a.x, arg_1.a.x), arg_0.a, vec3<bool>(arg_0.a.x, false, global1.x)), vec3<bool>(false, true, true), select(vec3<bool>(arg_0.a.x, arg_3.a.x, false), var_1.a, vec3<bool>(var_1.a.x, arg_3.a.x, true))), vec3<bool>(true, false, true), arg_1.a.x)), arg_0.b, -arg_3.c >> (_wgslsmith_clamp_vec4_u32(~max(vec4<u32>(u_input.a, u_input.a, 72438u, 71333u), vec4<u32>(23754u, 97274u, 4294967295u, 29947u)), ~(vec4<u32>(u_input.a, 1u, 0u, 37096u) & vec4<u32>(arg_2, u_input.a, u_input.a, 69782u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 67787u, arg_2, arg_2), vec4<u32>(80796u, arg_2, 1u, 68595u), vec4<u32>(94321u, arg_2, 84327u, 2090u))) % vec4<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1210f), _wgslsmith_f_op_f32(-var_1.e), _wgslsmith_f_op_f32(-var_1.b.x), arg_0.d.x), arg_1.d.x);
    global0 = min(_wgslsmith_add_vec3_i32(vec3<i32>(~firstLeadingBit(arg_0.c.x), ~arg_3.c.x, u_input.c), var_2.c.yyz), vec3<i32>(arg_3.c.x, ~arg_1.c.x, reverseBits(min(select(var_2.c.x, global0.x, arg_3.a.x), firstLeadingBit(2147483647i)))));
    global1 = select(vec4<bool>(!all(arg_0.a.xx), !arg_3.a.x, firstTrailingBit(countOneBits(4294967295u)) > 35996u, !select(true, false, !arg_0.a.x)), !(!(!(!vec4<bool>(arg_0.a.x, false, global1.x, arg_3.a.x)))), select(select(select(select(vec4<bool>(global1.x, false, true, false), vec4<bool>(false, true, global1.x, false), global1.x), select(vec4<bool>(arg_0.a.x, true, var_1.a.x, true), vec4<bool>(true, var_2.a.x, arg_0.a.x, true), vec4<bool>(arg_0.a.x, true, global1.x, arg_0.a.x)), true), select(!vec4<bool>(global1.x, false, false, false), vec4<bool>(true, false, true, var_1.a.x), select(vec4<bool>(false, arg_0.a.x, false, true), vec4<bool>(var_1.a.x, false, false, true), vec4<bool>(true, false, var_1.a.x, arg_1.a.x))), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, arg_0.a.x, false, false), vec4<bool>(true, var_1.a.x, var_1.a.x, global1.x))), !vec4<bool>(arg_3.a.x, arg_1.a.x, global1.x, global1.x), any(!select(vec3<bool>(var_2.a.x, true, arg_1.a.x), vec3<bool>(arg_3.a.x, arg_1.a.x, false), var_1.a))));
    return vec3<f32>(_wgslsmith_f_op_f32(-762f - -1729f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.e))), _wgslsmith_f_op_f32(max(1138f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1543f - var_1.b.x) - -1203f))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: vec2<bool>) -> vec4<i32> {
    global1 = select(vec4<bool>(all(!vec4<bool>(false, arg_1.x, global1.x, true)), !arg_1.x, true, false), vec4<bool>(true, all(global1.yxz), !((u_input.c < -1i) || arg_2.x), !arg_2.x), !select(vec4<bool>(false, true, arg_1.x, true), vec4<bool>(true, -5163i > global0.x, true, true), arg_2.x));
    var var_0 = Struct_1(select(global1.xzy, !(!(!vec3<bool>(arg_1.x, false, global1.x))), select(!select(global1.xyz, global1.wwx, false), !(!global1.xxw), any(global1.zwy))), _wgslsmith_f_op_vec3_f32(func_4(Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x))), -(vec4<i32>(global0.x, 0i, 2147483647i, 0i) << (vec4<u32>(u_input.a, u_input.a, 18005u, 33279u) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), Struct_1(!global1.yzz, vec3<f32>(-1779f, 243f, _wgslsmith_f_op_f32(min(567f, 122f))), -vec4<i32>(-958i, global0.x, u_input.b, global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -252f)), u_input.a, Struct_1(!global1.zxy, _wgslsmith_f_op_vec4_f32(func_3()).yxy, vec4<i32>(u_input.c, global0.x, -global0.x, global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1009f, arg_0.x, -484f, 228f)), 1f))), select(-vec4<i32>(27315i, 20435i, global0.x, 24008i), reverseBits(select(vec4<i32>(39245i, u_input.c, 2130i, u_input.c), vec4<i32>(u_input.c, -1i, u_input.b, global0.x), vec4<bool>(arg_2.x, global1.x, arg_2.x, true))), vec4<bool>(true, true, false | arg_1.x, true)) << (select(firstLeadingBit(vec4<u32>(4294967295u, u_input.a, 1u, 1u)), ~vec4<u32>(u_input.a, 43396u, u_input.a, u_input.a) | _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 50u, u_input.a, u_input.a), vec4<u32>(1u, 0u, 3000u, u_input.a)), !vec4<bool>(global1.x, arg_2.x, false, true)) % vec4<u32>(32u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(580f, -2288f, arg_0.x, arg_0.x), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, -631f, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, 1000f, arg_0.x, 1450f))) + vec4<f32>(-985f, _wgslsmith_f_op_f32(-739f * 616f), -170f, arg_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -280f, -1033f, arg_0.x) - vec4<f32>(-448f, arg_0.x, arg_0.x, arg_0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(873f, arg_0.x, 2240f, arg_0.x))))), -696f);
    var_0 = Struct_1(vec3<bool>(!global1.x, false, true), var_0.d.wzw, var_0.c, _wgslsmith_f_op_vec4_f32(trunc(var_0.d)), _wgslsmith_f_op_f32(f32(-1f) * -194f));
    var var_1 = reverseBits(-72446i);
    var var_2 = ~abs(select(~_wgslsmith_mod_i32(1i, 2147483647i), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(var_0.c.yww, var_0.c.ywy), _wgslsmith_mult_vec3_i32(vec3<i32>(10212i, -1i, u_input.b), vec3<i32>(var_0.c.x, var_0.c.x, 1i))), global1.x));
    return vec4<i32>(var_0.c.x, 13361i, ~_wgslsmith_mod_i32(var_0.c.x, min(-2147483647i & var_0.c.x, u_input.c | -77312i)), abs(-14752i) ^ _wgslsmith_div_i32(2147483647i, ~global0.x));
}

fn func_5(arg_0: Struct_1) -> f32 {
    var var_0 = select(select(select(!(!vec4<bool>(true, false, arg_0.a.x, false)), vec4<bool>(arg_0.d.x >= arg_0.b.x, !arg_0.a.x, u_input.a < 0u, arg_0.a.x), !vec4<bool>(global1.x, true, global1.x, arg_0.a.x)), vec4<bool>(u_input.a <= firstLeadingBit(34318u), !global1.x, select(1000f > arg_0.b.x, u_input.a > u_input.a, true), !arg_0.a.x), arg_0.a.x), !vec4<bool>(false, !any(vec4<bool>(arg_0.a.x, arg_0.a.x, false, true)), !global1.x || (arg_0.b.x < arg_0.e), any(select(vec4<bool>(true, false, true, true), vec4<bool>(arg_0.a.x, false, false, true), arg_0.a.x))), !vec4<bool>(any(select(global1.yyw, global1.xyx, global1.x)), all(vec4<bool>(arg_0.a.x, global1.x, arg_0.a.x, global1.x)), all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, global1.x, arg_0.a.x), arg_0.a.x)), arg_0.a.x));
    let var_1 = global1.x;
    var_0 = !vec4<bool>(any(!arg_0.a), var_0.x, !global1.x, global1.x);
    let var_2 = select(select(select(select(!vec4<bool>(true, var_0.x, global1.x, true), !vec4<bool>(false, true, arg_0.a.x, true), true), !vec4<bool>(global1.x, true, true, false), !(!vec4<bool>(false, arg_0.a.x, false, arg_0.a.x))), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1000f) <= _wgslsmith_f_op_f32(-arg_0.d.x), all(vec2<bool>(false, true)), true, any(vec4<bool>(false, true, global1.x, true))), select(vec4<bool>(1000f >= arg_0.e, !var_0.x, arg_0.a.x, !global1.x), !select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(arg_0.a.x, var_0.x, arg_0.a.x, true), vec4<bool>(var_0.x, false, false, true)), select(!vec4<bool>(var_0.x, true, false, true), vec4<bool>(global1.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), false))), select(select(!(!vec4<bool>(global1.x, arg_0.a.x, var_0.x, false)), vec4<bool>(all(vec2<bool>(arg_0.a.x, arg_0.a.x)), global1.x, global1.x, arg_0.a.x), !vec4<bool>(false, arg_0.a.x, false, var_0.x)), !(!(!vec4<bool>(var_0.x, false, arg_0.a.x, true))), true), !vec4<bool>(any(!vec4<bool>(var_0.x, var_0.x, global1.x, var_0.x)), all(arg_0.a.zz), any(!vec3<bool>(global1.x, false, global1.x)), true));
    var_0 = !select(select(!var_2, vec4<bool>(false, true, true, var_2.x), _wgslsmith_sub_u32(u_input.a, 0u) <= firstTrailingBit(u_input.a)), select(vec4<bool>(!var_2.x, var_0.x, !var_0.x, false), select(!var_2, select(vec4<bool>(var_0.x, true, global1.x, arg_0.a.x), vec4<bool>(false, global1.x, var_0.x, false), vec4<bool>(false, false, false, true)), vec4<bool>(var_2.x, true, false, var_0.x)), var_2), true);
    return _wgslsmith_f_op_f32(step(154f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.e, _wgslsmith_f_op_f32(arg_0.b.x * arg_0.d.x)))))));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(vec3<bool>(true, select(!(!global1.x), global1.x, true), !global1.x), vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(711f, 321f) + -1000f), _wgslsmith_f_op_f32(func_5(Struct_1(select(global1.zzw, vec3<bool>(false, global1.x, true), vec3<bool>(global1.x, false, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(552f, -960f, -461f)), func_2(vec2<f32>(-1036f, -433f), vec2<bool>(global1.x, false), global1.zz), _wgslsmith_f_op_vec4_f32(vec4<f32>(501f, 847f, 1022f, -1972f) - vec4<f32>(611f, 193f, 1000f, 969f)), _wgslsmith_f_op_f32(f32(-1f) * -757f))))), abs(vec4<i32>(max(global0.x, 27430i) & -1i, u_input.c, -_wgslsmith_clamp_i32(-2147483647i, -14094i, global0.x), -_wgslsmith_add_i32(global0.x, arg_0.x))), vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-100f * -1944f), _wgslsmith_f_op_f32(-1076f * 508f))), _wgslsmith_f_op_f32(abs(553f)), -793f), _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(global1.xwz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1253f, -114f, 449f)), vec4<i32>(arg_0.x, -17724i, u_input.b, -1i), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -763f, 220f, -1000f))), _wgslsmith_div_f32(-1000f, -1012f)), Struct_1(select(global1.ywx, vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, global1.x, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1413f, -365f, 1828f) * vec3<f32>(1074f, 871f, 1000f)), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, 0i, arg_0.x, 4413i), vec4<i32>(2147483647i, arg_0.x, 2147483647i, global0.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(332f, 763f, -1222f, 1415f))), _wgslsmith_f_op_f32(395f - -548f)), select(46328u, 24865u, false) >> (u_input.a % 32u), Struct_1(global1.zwx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(713f, -1000f, -783f)), vec4<i32>(global0.x, global0.x, -3954i, global0.x) << (vec4<u32>(4294967295u, 18407u, 4294967295u, 0u) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1108f, 342f, -1138f, 1944f)), _wgslsmith_f_op_f32(1471f - -796f)))).x, _wgslsmith_f_op_f32(func_5(Struct_1(select(global1.zzy, global1.yyx, global1.zxw), _wgslsmith_f_op_vec3_f32(-vec3<f32>(571f, 460f, 1564f)), ~vec4<i32>(-34218i, 9988i, arg_0.x, global0.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1047f, -1079f, 2959f, 508f))), _wgslsmith_f_op_f32(trunc(-674f)))))));
    var var_1 = all(select(select(select(select(global1.wzz, vec3<bool>(var_0.a.x, false, true), true), vec3<bool>(var_0.a.x, global1.x, var_0.a.x), select(global1.wzx, var_0.a, var_0.a.x)), select(!var_0.a, !vec3<bool>(global1.x, global1.x, var_0.a.x), select(vec3<bool>(global1.x, global1.x, true), global1.yzw, vec3<bool>(false, var_0.a.x, false))), true & !var_0.a.x), vec3<bool>(!any(vec2<bool>(false, global1.x)), !any(vec2<bool>(false, var_0.a.x)), all(select(var_0.a.xx, vec2<bool>(false, global1.x), vec2<bool>(true, false)))), vec3<bool>(min(var_0.c.x, -1i) > ~global0.x, true, false)));
    global0 = vec3<i32>(_wgslsmith_mod_i32(max(_wgslsmith_mult_i32(-27380i, -1800i) ^ firstLeadingBit(var_0.c.x), -_wgslsmith_div_i32(0i, 23926i)), 44792i), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(-var_0.c, vec4<i32>(0i, global0.x, var_0.c.x, u_input.c)), (u_input.b | global0.x) ^ arg_0.x, ~(~var_0.c.x)), var_0.c.wwx), global0.x ^ abs(min(arg_0.x, global0.x)));
    global0 = var_0.c.yyx;
    var var_2 = vec3<f32>(806f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e - var_0.e) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d.x - 994f), _wgslsmith_f_op_f32(-1474f - -1306f)))), _wgslsmith_f_op_f32(var_0.d.x * -1316f));
    return var_0;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32, arg_3: vec4<f32>) -> i32 {
    let var_0 = Struct_1(select(vec3<bool>(all(select(vec4<bool>(false, global1.x, false, arg_0.a.x), vec4<bool>(false, false, global1.x, true), arg_0.a.x)), func_1(arg_0.c.yy).a.x, global1.x), global1.xxw, select(true, true, global1.x)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1597f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-359f - _wgslsmith_f_op_f32(ceil(-949f)))), -1492f), ~(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(arg_0.c, vec4<i32>(arg_2, u_input.b, global0.x, u_input.b)), arg_0.c) << (~(~vec4<u32>(arg_1.x, u_input.a, arg_1.x, u_input.a)) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_3)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-2293f, 1721f, arg_3.x, arg_0.d.x) - vec4<f32>(arg_0.e, arg_0.b.x, arg_0.b.x, arg_0.e))))), 420f);
    global0 = ~(~arg_0.c.wxz);
    global1 = !vec4<bool>(false, any(select(var_0.a.xx, var_0.a.yz, arg_0.a.x)), arg_0.a.x, !(_wgslsmith_add_i32(-1i, 0i) >= var_0.c.x));
    global1 = !(!select(vec4<bool>(true, global1.x, false, func_1(arg_0.c.ww).a.x), select(select(vec4<bool>(global1.x, false, true, arg_0.a.x), vec4<bool>(var_0.a.x, arg_0.a.x, false, false), vec4<bool>(false, global1.x, global1.x, global1.x)), vec4<bool>(false, global1.x, global1.x, arg_0.a.x), all(vec4<bool>(global1.x, var_0.a.x, var_0.a.x, global1.x))), false));
    global0 = vec3<i32>(-min(arg_2, _wgslsmith_mod_i32(func_1(vec2<i32>(global0.x, arg_2)).c.x, -2147483647i)), 1i, 2147483647i);
    return ~(-42581i);
}

fn func_7(arg_0: vec3<i32>, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2024f, 230f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-342f, -150f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(364f, -1106f)), !global1.yw))))));
    let var_1 = vec4<i32>(_wgslsmith_add_i32(arg_1, ~_wgslsmith_dot_vec3_i32(max(arg_0, arg_0), vec3<i32>(arg_0.x, arg_0.x, arg_1))), min(global0.x, 1i), -2147483647i, func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)), -836f), vec2<bool>(all(vec4<bool>(true, false, global1.x, true)), !(global1.x && true)), vec2<bool>(global1.x, global1.x)).x);
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(451f, -138f, 1000f)) * vec3<f32>(var_0.x, -489f, 652f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1259f, 1112f, -432f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(661f, -261f, var_0.x)))), _wgslsmith_f_op_vec4_f32(func_3()).ywz)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-150f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x))), func_1(~vec2<i32>(2147483647i, 72591i) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))).b.x), abs(global0.x) >= arg_0.x));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))))), _wgslsmith_f_op_f32(min(602f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1121f)))))), -262f);
    var var_4 = Struct_1(global1.xyz, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(273f, -2467f, var_2.x), vec3<f32>(1005f, var_2.x, var_2.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1263f, 1352f, var_0.x) * vec3<f32>(var_3.x, var_2.x, var_0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, -827f, -338f) - vec3<f32>(-1000f, var_3.x, var_0.x)))))), select(~vec4<i32>(u_input.c, -58005i, 1i, u_input.c), vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, -27441i), vec2<i32>(global0.x, var_1.x))), _wgslsmith_dot_vec3_i32(~arg_0, arg_0), -4072i, -min(var_1.x, -1i)), !select(!vec4<bool>(false, global1.x, true, global1.x), select(vec4<bool>(false, true, true, false), vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(global1.x, global1.x, global1.x, false)), global1.x || global1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, -402f, var_2.x)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.x, -1764f, var_3.x, 257f), vec4<f32>(-719f, -738f, var_2.x, -1386f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(132f, var_3.x, var_2.x, 834f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(173f, 1496f, 1376f, 1156f) - vec4<f32>(var_2.x, var_3.x, var_0.x, 1000f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(385f - -570f), -637f, _wgslsmith_f_op_f32(-var_2.x), -1901f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * _wgslsmith_f_op_f32(var_3.x - var_3.x)));
    return func_1(var_4.c.zz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(vec3<i32>(_wgslsmith_add_i32(-(~global0.x), u_input.b), -2147483647i & global0.x, func_6(func_1(~vec2<i32>(2147483647i, 1i)), _wgslsmith_div_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, 67529u)), u_input.b, vec4<f32>(_wgslsmith_f_op_f32(sign(-247f)), _wgslsmith_f_op_f32(829f + -1524f), -200f, _wgslsmith_div_f32(791f, -333f)))), -58265i);
    let var_1 = ~(~16875u) == (~(~4294967295u) >> ((_wgslsmith_add_u32(min(u_input.a, u_input.a), u_input.a) & ~(~0u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(-2230i);
}

