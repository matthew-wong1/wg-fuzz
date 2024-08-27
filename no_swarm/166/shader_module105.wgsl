struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(1000f, 1988f, -1880f), vec2<u32>(4294967295u, 73140u), vec3<bool>(true, false, true));

var<private> global2: Struct_5 = Struct_5(vec3<f32>(-743f, 681f, -1455f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: vec4<u32>) -> f32 {
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global1.a.x, 520f)), _wgslsmith_f_op_vec3_f32(global0.b - global1.a), select(vec3<bool>(global0.c.x, global1.c.x, global0.d.x), vec3<bool>(global1.c.x, global1.c.x, global1.c.x), global1.c))))), reverseBits(vec2<u32>(74225u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_2.yxw, vec3<u32>(arg_2.x, u_input.b, arg_2.x), arg_2.xxz), arg_2.zzy ^ vec3<u32>(arg_2.x, global1.b.x, 99491u)))), vec3<bool>(global0.d.x, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) + _wgslsmith_f_op_f32(global2.a.x + -174f)) < global1.a.x));
    global2 = Struct_5(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(arg_1.a, _wgslsmith_f_op_vec3_f32(select(arg_1.a, vec3<f32>(arg_1.a.x, arg_0.x, -1068f), global0.d)), select(!global1.c, select(global1.c, vec3<bool>(true, true, false), global1.c), true))))));
    global2 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a - global0.b) - _wgslsmith_f_op_vec3_f32(vec3<f32>(544f, arg_0.x, -1000f) - arg_1.a)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.a + global0.b), vec3<f32>(global1.a.x, -140f, global1.a.x)))));
    global0 = Struct_3(vec2<i32>(_wgslsmith_div_i32(-global0.a.x, _wgslsmith_add_i32(u_input.d, u_input.a)) << (arg_2.x % 32u), global0.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-927f, 1f)), _wgslsmith_f_op_f32(select(-373f, -132f, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(select(-1407f, arg_0.x, true)))))), select(select(global0.c, !vec4<bool>(true, global0.d.x, true, global0.c.x), all(global0.c.wxz)), select(vec4<bool>(global0.d.x, true, all(global0.c), !global1.c.x), select(vec4<bool>(global0.d.x, true, true, true), select(global0.c, global0.c, vec4<bool>(true, false, global1.c.x, true)), global1.c.x), any(global0.d)), select(!global0.c, !global0.c, true)), global1.c);
    global1 = Struct_1(arg_1.a, countOneBits(~_wgslsmith_add_vec2_u32(select(vec2<u32>(38969u, global1.b.x), vec2<u32>(1u, 77305u), vec2<bool>(global1.c.x, global0.c.x)), reverseBits(arg_2.yy))), vec3<bool>(select(any(global0.d), all(vec3<bool>(true, false, true)), false) & global0.d.x, global1.c.x, 1i == (abs(global0.a.x) << (u_input.b % 32u))));
    return 467f;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1283f, 528f)) - _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, -475f)), vec2<f32>(-854f, 343f)), Struct_5(_wgslsmith_f_op_vec3_f32(sign(global1.a))), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), vec4<u32>(global1.b.x, global1.b.x, global1.b.x, u_input.b)), vec4<u32>(0u, u_input.b, global1.b.x, global1.b.x))))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-global0.b.x), 1258f);
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(770f, _wgslsmith_f_op_f32(-var_1.x), global1.a.x))), vec2<u32>(~(_wgslsmith_div_u32(30473u, 4294967295u) ^ (u_input.b & 4294967295u)), _wgslsmith_mod_u32(1u, 25697u)), vec3<bool>(!any(global1.c.xz), global1.c.x, !(_wgslsmith_f_op_f32(max(-374f, var_1.x)) != -562f)));
    global2 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(240f, 482f)), Struct_5(global1.a), vec4<u32>(0u, global1.b.x, u_input.b, 12232u))))), _wgslsmith_f_op_f32(243f - global1.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(func_3(vec2<f32>(-617f, -109f), Struct_5(global0.b), vec4<u32>(4294967295u, 1u, 36050u, 32934u))))))));
    var_0 = -477f;
    return Struct_2(~countOneBits(~abs(vec4<u32>(u_input.b, global1.b.x, 40747u, global1.b.x))), Struct_1(_wgslsmith_f_op_vec3_f32(global0.b - global0.b), global1.b, select(global1.c, vec3<bool>(true, any(global1.c.zy), global1.c.x), true)), Struct_1(global0.b, ~global1.b, global0.c.wwy), Struct_1(_wgslsmith_f_op_vec3_f32(-global2.a), global1.b, vec3<bool>(global0.d.x, false, true)), global1.c.xz);
}

fn func_1(arg_0: vec4<i32>) -> vec3<i32> {
    global2 = Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, global1.a.x, -112f)));
    let var_0 = global0.b.x;
    var var_1 = func_2();
    var var_2 = global0.c;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return reverseBits(arg_0.yzz) ^ ~(min(arg_0.xzw, _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.x, 0i, 16255i), arg_0.xyz)) ^ (abs(vec3<i32>(2523i, global0.a.x, u_input.c.x)) << ((vec3<u32>(global1.b.x, 73977u, 0u) | vec3<u32>(u_input.b, var_1.c.b.x, u_input.b)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.b.x - 1360f), 1f, global2.a.x, _wgslsmith_f_op_f32(abs(2799f)))))));
    var var_1 = -_wgslsmith_add_vec3_i32(-(~(-vec3<i32>(1088i, 15107i, 68519i))), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-7518i, u_input.d, 0i), firstTrailingBit(vec3<i32>(global0.a.x, global0.a.x, global0.a.x))), func_1(abs(vec4<i32>(-39026i, global0.a.x, -40234i, 0i)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(global2.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_0.xwz - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, global1.a.x, global1.a.x) * vec3<f32>(1000f, global1.a.x, 1684f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1.a, global2.a) + _wgslsmith_f_op_vec3_f32(-global0.b)))) * vec3<f32>(864f, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x * global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-166f * -1000f))))));
    var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-global1.a.x), 203f));
    let var_3 = global1.c.x;
    var_2 = var_0.xxw;
    let var_4 = 1u;
    global0 = Struct_3(~reverseBits(var_1.yz), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1010f * -1000f)), _wgslsmith_f_op_f32(round(-1605f))) * vec3<f32>(_wgslsmith_f_op_f32(var_0.x * -204f), 1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.b.x + 1579f))))), !global0.c, vec3<bool>(!global0.c.x, -33823i > _wgslsmith_mult_i32(abs(global0.a.x), abs(-49453i)), ~global0.a.x < _wgslsmith_sub_i32(66195i, 0i)));
    var_1 = max(vec3<i32>(~(~(~var_1.x)), func_1(_wgslsmith_div_vec4_i32(vec4<i32>(-13567i, 7980i, 10288i, global0.a.x) << (vec4<u32>(u_input.b, 78412u, var_4, 7801u) % vec4<u32>(32u)), vec4<i32>(13920i, u_input.d, -15372i, var_1.x))).x, global0.a.x), ~firstLeadingBit(~vec3<i32>(1i, var_1.x, u_input.a)) << (~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b, 4294967295u) & vec3<u32>(1884u, global1.b.x, 1u), firstLeadingBit(vec3<u32>(19917u, 30374u, 0u))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(firstLeadingBit(global0.a.x), global0.a.x) ^ _wgslsmith_add_i32(i32(-1i) * -341i, -1i & abs(global0.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b.yz + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global1.a.zy + vec2<f32>(-1253f, -708f)), var_0.xz)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global0.b.xz - vec2<f32>(global1.a.x, -348f))))) * vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1451f))))), reverseBits(vec4<u32>(~(~var_4), var_4, ~firstTrailingBit(global1.b.x), 4294967295u)));
}

