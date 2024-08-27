struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<u32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
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

var<private> global0: f32 = 281f;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec4<bool>) -> vec4<u32> {
    let var_0 = ~(~vec3<u32>(~(~u_input.b), max(~u_input.b, 1u), u_input.a.x));
    let var_1 = Struct_1(max(-arg_0, vec4<i32>(arg_0.x, _wgslsmith_add_i32(1i, _wgslsmith_div_i32(-10298i, 35828i)), abs(0i) & arg_0.x, countOneBits(max(u_input.d.x, u_input.d.x)))), reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-4496i, 1793i), arg_0.yy)), ~3823u);
    let var_2 = Struct_1(min(vec4<i32>(-abs(arg_0.x), ~(u_input.d.x & 2147483647i), -4258i, 1i), vec4<i32>(38228i >> (reverseBits(var_1.c) % 32u), 0i, i32(-1i) * -arg_0.x, countOneBits(-36951i))), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(var_1.a, vec4<i32>(var_1.a.x, arg_0.x, -4855i, 11610i)) & 2147483647i, -(~var_1.a.x)), abs(vec2<i32>(1i, 1i)), var_1.a.ww), var_0.x);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-475f * -687f), _wgslsmith_f_op_f32(f32(-1f) * -734f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1377f + _wgslsmith_f_op_f32(958f * -940f))), arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1334f)) + _wgslsmith_f_op_f32(step(-180f, 1389f))), _wgslsmith_f_op_f32(min(448f, _wgslsmith_f_op_f32(-464f * 767f))))));
    var var_3 = Struct_4(1f, -abs(~(i32(-1i) * -16776i)), var_0.zz, Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.d, _wgslsmith_div_vec4_i32(var_2.a, vec4<i32>(var_1.b.x, 0i, arg_0.x, u_input.c))), _wgslsmith_sub_vec4_i32(var_1.a, -arg_0)), _wgslsmith_div_vec2_i32(u_input.d.zx, vec2<i32>(min(u_input.c, var_2.b.x), i32(-1i) * -5162i)), ~_wgslsmith_clamp_u32(u_input.a.x >> (var_0.x % 32u), _wgslsmith_add_u32(105172u, 27456u), 5035u | u_input.a.x)), select(arg_1, !select(select(vec4<bool>(true, arg_2.x, false, arg_1.x), vec4<bool>(arg_1.x, true, arg_2.x, true), arg_1), arg_2, !arg_1.x), all(vec2<bool>(true, arg_2.x | false))));
    return vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(var_0, firstLeadingBit(vec3<u32>(1u, 0u, var_2.c))), 39790u, 4057u), var_0.x, var_2.c, 32836u) ^ ((~abs(vec4<u32>(1u, 4294967295u, 1u, 0u)) >> (vec4<u32>(var_2.c, u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.c.x, 5177u, var_0.x), var_0), ~31630u) % vec4<u32>(32u))) & firstTrailingBit(min(firstLeadingBit(vec4<u32>(4294967295u, var_2.c, var_3.c.x, u_input.a.x)), select(vec4<u32>(var_2.c, 11980u, var_3.c.x, 29590u), vec4<u32>(var_2.c, 1u, var_1.c, var_2.c), vec4<bool>(arg_1.x, var_3.e.x, arg_2.x, arg_2.x)))));
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))));
    var var_1 = Struct_3(Struct_1(countOneBits(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, 18721i, u_input.d.x, -2147483647i), vec4<i32>(u_input.c, u_input.d.x, -2147483647i, -60103i))), u_input.d.yx, reverseBits(u_input.a.x ^ _wgslsmith_mult_u32(1u, u_input.a.x))), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.b, 176114u, 1u), abs(vec4<u32>(4294967295u, 75664u, u_input.b, 1u))), _wgslsmith_mult_u32(1u ^ arg_0, ~51999u), arg_0) & vec3<u32>(~_wgslsmith_mod_u32(4294967295u, arg_0), 1u, u_input.a.x), ~(~(~func_3(u_input.d, vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)))), Struct_2(-601f, 1i), Struct_1(u_input.d, u_input.d.yw, select(~min(u_input.b, u_input.b), 0u, !select(false, false, false))));
    var var_2 = Struct_3(var_1.e, ~(~_wgslsmith_mod_vec3_u32(~var_1.c.wyy, var_1.c.xzx)), vec4<u32>(arg_0, ~var_1.a.c, (var_1.c.x >> (~var_1.c.x % 32u)) & (~var_1.c.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, var_1.e.c, var_1.a.c, arg_0), var_1.c) % 32u)), _wgslsmith_mult_u32(~arg_0, 1u)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -656f), firstLeadingBit(-(var_1.e.b.x << (u_input.a.x % 32u)))), Struct_1(vec4<i32>(var_1.a.a.x, ~u_input.d.x, -(~10103i), _wgslsmith_mult_i32(var_1.d.b, _wgslsmith_div_i32(-1i, 36267i))), max(~countOneBits(u_input.d.xy), (vec2<i32>(var_1.a.b.x, 4433i) << (var_1.b.yy % vec2<u32>(32u))) << (vec2<u32>(13302u, var_1.b.x) % vec2<u32>(32u))), ~u_input.b));
    let var_3 = var_2.d.a;
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-936f * _wgslsmith_f_op_f32(var_1.d.a * var_2.d.a)), -1191f)), var_2.d.a));
    return 17015u;
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_add_i32(u_input.c, min(22992i, abs(0i)) | u_input.d.x) >> (max(~1u, 36267u) % 32u);
    var var_1 = Struct_3(Struct_1(~u_input.d, min(min(u_input.d.xz, vec2<i32>(-59150i, u_input.c)) >> (u_input.a % vec2<u32>(32u)), u_input.d.yw), 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(~1u, 4294967295u, (4294967295u & u_input.b) << (arg_2 % 32u)), vec3<u32>(4294967295u, 1u, func_3(~u_input.d, vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(true, arg_1, true, arg_1)).x)), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b, 0u, arg_2, u_input.b), ~(~vec4<u32>(u_input.a.x, arg_2, arg_2, arg_2))) ^ select(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(arg_2, u_input.a.x, arg_2, arg_2)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.b, 12990u), vec4<u32>(0u, 37641u, u_input.a.x, 4294967295u))), vec4<u32>(arg_2, 1u, 1u, ~arg_2), false), Struct_2(1165f, u_input.c), Struct_1(min(vec4<i32>(u_input.d.x, u_input.d.x, 1i, u_input.c), u_input.d << (vec4<u32>(u_input.b, 1u, 0u, u_input.b) % vec4<u32>(32u))) ^ -max(vec4<i32>(u_input.c, -2147483647i, -25998i, 1i), vec4<i32>(11413i, u_input.c, 0i, -1i)), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.d.x, u_input.c), u_input.d.x << (arg_2 % 32u)), -(i32(-1i) * -66767i)), ~(_wgslsmith_clamp_u32(u_input.b, u_input.a.x, 5252u) | arg_2)));
    var var_2 = var_1.e.a;
    var var_3 = select(!select(vec3<bool>(any(vec3<bool>(arg_1, true, true)), false, !arg_1), select(vec3<bool>(arg_1, false, true), !vec3<bool>(arg_1, false, true), vec3<bool>(true, arg_1, true)), arg_1), vec3<bool>(arg_1, ((var_1.e.c | var_1.a.c) << (1u % 32u)) >= firstLeadingBit(~var_1.e.c), select(true, _wgslsmith_f_op_f32(sign(-1574f)) > var_1.d.a, true)), any(!vec3<bool>(true, select(arg_1, arg_1, arg_1), any(vec2<bool>(true, arg_1)))));
    var_2 = var_1.a.a;
    return vec4<bool>(!any(!vec2<bool>(false, arg_1)), true, var_3.x, !(!var_3.x));
}

fn func_5(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_4, arg_3: f32) -> Struct_1 {
    let var_0 = min(-(u_input.d.zy | vec2<i32>(arg_2.d.b.x, u_input.c)), countOneBits(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(-u_input.d.xw, vec2<i32>(u_input.c, 1i)), firstLeadingBit(_wgslsmith_mult_vec2_i32(arg_2.d.b, u_input.d.wx)))));
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3))))))));
    var var_1 = _wgslsmith_f_op_f32(-arg_3);
    var var_2 = Struct_1(vec4<i32>(u_input.c, -2147483647i, _wgslsmith_div_i32(max(u_input.d.x << (4294967295u % 32u), u_input.c), -_wgslsmith_dot_vec4_i32(u_input.d, u_input.d)), ~_wgslsmith_add_i32(var_0.x, 0i)), vec2<i32>(abs((2147483647i ^ var_0.x) << (0u % 32u)), ~45509i), u_input.b);
    let var_3 = _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(select(-1175f, _wgslsmith_f_op_f32(abs(-1073f)), true)));
    return arg_2.d;
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(sign(-462f)))), _wgslsmith_f_op_f32(f32(-1f) * -808f))))), u_input.c, ~vec2<u32>(~25449u, 75664u >> (u_input.a.x % 32u)), func_5(func_4(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -265f), -395f, _wgslsmith_f_op_f32(abs(-756f))), arg_0.x, func_2(30407u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(647f, -848f)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-463f)), _wgslsmith_div_f32(350f, -397f), true))), Struct_4(_wgslsmith_f_op_f32(step(-874f, 2108f)), _wgslsmith_sub_i32(abs(u_input.d.x), _wgslsmith_sub_i32(28118i, 0i)), vec2<u32>(14333u, u_input.a.x), Struct_1(u_input.d, vec2<i32>(-45664i, u_input.c), _wgslsmith_mult_u32(u_input.b, u_input.a.x)), vec4<bool>(arg_0.x, false, !arg_0.x, !arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2546f - 920f), _wgslsmith_f_op_f32(f32(-1f) * -149f)) + -369f)), select(select(!select(vec4<bool>(false, true, arg_0.x, true), vec4<bool>(true, false, true, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, false)), !(!vec4<bool>(arg_0.x, false, arg_0.x, false)), vec4<bool>(arg_0.x & arg_0.x, true, true, !arg_0.x)), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -529f, 578f)) * vec3<f32>(968f, 711f, 1000f)), all(select(vec4<bool>(arg_0.x, true, false, arg_0.x), vec4<bool>(true, arg_0.x, false, arg_0.x), true)), 0u), arg_0.x));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1079f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a + var_0.a), _wgslsmith_f_op_f32(var_0.a - var_0.a)))))), -35876i, (select(~u_input.a, u_input.a, vec2<bool>(var_0.e.x, arg_0.x)) << (var_0.c % vec2<u32>(32u))) | _wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(var_0.c, vec2<u32>(22167u, 81587u)), func_3(-vec4<i32>(0i, -531i, -30751i, 26028i), vec4<bool>(var_0.e.x, var_0.e.x, arg_0.x, var_0.e.x), vec4<bool>(true, false, true, false)).yx), func_5(vec4<bool>(!var_0.e.x & func_4(vec3<f32>(var_0.a, var_0.a, 222f), var_0.e.x, var_0.c.x).x, arg_0.x, true, select(43900u >= var_0.d.c, var_0.e.x, !arg_0.x)), var_0.a, Struct_4(var_0.a, firstLeadingBit(~u_input.c), vec2<u32>(0u, 40159u), var_0.d, select(select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), var_0.e, vec4<bool>(true, true, true, false)), vec4<bool>(arg_0.x, true, false, var_0.e.x), var_0.e)), _wgslsmith_f_op_f32(max(614f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))))), var_0.e);
    var var_2 = ~_wgslsmith_mult_vec4_u32(~(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d.c, var_0.d.c, 1u, var_1.d.c), vec4<u32>(var_1.d.c, var_1.c.x, var_1.d.c, 50211u)) >> (min(vec4<u32>(var_0.d.c, 0u, var_1.c.x, 56889u), vec4<u32>(44621u, 1u, var_0.d.c, var_0.d.c)) % vec4<u32>(32u))), vec4<u32>(var_0.d.c, 12291u, 4294967295u, 4294967295u));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -597f);
    global0 = 710f;
    return var_1.b;
}

fn func_6(arg_0: vec2<i32>, arg_1: u32) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -646f), _wgslsmith_f_op_f32(f32(-1f) * -1865f))))))));
    let var_0 = u_input.a;
    global0 = 412f;
    var var_1 = !(!vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, any(func_4(vec3<f32>(918f, 1299f, -1247f), true, 1u))));
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-467f + _wgslsmith_f_op_f32(select(-767f, -172f, false))), _wgslsmith_f_op_f32(800f + _wgslsmith_f_op_f32(ceil(-623f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + -1087f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1194f, 763f) * vec2<f32>(-1000f, 331f))), vec2<f32>(-301f, _wgslsmith_f_op_f32(f32(-1f) * -211f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(297f, 410f) * vec2<f32>(-296f, -305f)) - vec2<f32>(_wgslsmith_f_op_f32(-756f + 674f), 561f))));
    return Struct_1(vec4<i32>(min(arg_0.x, -2147483647i), -(abs(-1i) & _wgslsmith_sub_i32(u_input.c, u_input.d.x)), 1i, u_input.d.x), vec2<i32>(-23832i, ~abs(u_input.d.x)), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_0 = Struct_3(func_6(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(0i, u_input.c), func_1(vec3<bool>(false, false, false))), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.d.yz, vec2<i32>(-1i, u_input.d.x)), 1i)), u_input.a.x), ~(~vec3<u32>(0u, ~4294967295u, 71431u)), ~(~vec4<u32>(u_input.b, 19101u, 107601u, u_input.a.x)) << (~(~vec4<u32>(u_input.a.x, 0u, u_input.b, u_input.b) | vec4<u32>(13663u, 23904u, 34215u, u_input.a.x)) % vec4<u32>(32u)), Struct_2(_wgslsmith_f_op_f32(-515f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(440f)), _wgslsmith_f_op_f32(428f + -724f), false))), _wgslsmith_dot_vec4_i32(vec4<i32>(-29327i, 0i, 0i, -2147483647i), _wgslsmith_add_vec4_i32(u_input.d, u_input.d)) >> (u_input.a.x % 32u)), func_6(~u_input.d.wx, 0u));
    global0 = _wgslsmith_div_f32(872f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.d.a))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.a * _wgslsmith_f_op_f32(-1417f - var_0.d.a)));
    let var_1 = vec2<u32>(_wgslsmith_dot_vec4_u32(var_0.c << (~vec4<u32>(18012u, 48280u, var_0.b.x, var_0.c.x) % vec4<u32>(32u)), ~select(vec4<u32>(56017u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.b, u_input.a.x, 48850u, 77799u), vec4<bool>(false, true, false, true))), 42788u) << (~u_input.a % vec2<u32>(32u));
    let var_2 = Struct_4(var_0.d.a, u_input.d.x, var_0.b.zy, Struct_1(firstTrailingBit(select(var_0.e.a, vec4<i32>(var_0.e.a.x, 70505i, var_0.e.b.x, 41011i) >> (var_0.c % vec4<u32>(32u)), vec4<bool>(true, true, true, true))), vec2<i32>(1i, -var_0.d.b) ^ -vec2<i32>(u_input.c, var_0.d.b), func_6(vec2<i32>(var_0.e.a.x, var_0.a.b.x), var_1.x).c), vec4<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.c, u_input.d.x, -65302i), -vec4<i32>(-1i, var_0.a.a.x, var_0.a.a.x, 1i)) <= ~_wgslsmith_clamp_i32(var_0.e.a.x, 0i, u_input.c), true, true, false));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a, _wgslsmith_f_op_f32(var_0.d.a * 714f))))));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.d.a), _wgslsmith_f_op_f32(1182f + var_2.a), all(func_4(vec3<f32>(_wgslsmith_f_op_f32(-2118f - var_2.a), 557f, _wgslsmith_f_op_f32(step(1000f, 2470f))), any(vec4<bool>(false, true, false, var_2.e.x)), var_2.c.x).yzy)));
    let x = u_input.a;
    s_output = StorageBuffer(max(countOneBits(func_3(func_5(var_2.e, var_2.a, Struct_4(496f, var_0.a.a.x, u_input.a, Struct_1(u_input.d, u_input.d.wz, var_2.d.c), var_2.e), 376f).a, select(var_2.e, vec4<bool>(false, true, var_2.e.x, false), var_2.e), vec4<bool>(false, var_2.e.x, false, true)).x), 39362u));
}

