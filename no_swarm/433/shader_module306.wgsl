struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: Struct_4;

var<private> global2: i32 = -1i;

var<private> global3: vec4<u32> = vec4<u32>(1u, 1u, 20338u, 67605u);

var<private> global4: Struct_3;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = vec3<f32>(-1708f, -1910f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(799f)), -1475f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-893f - 1000f)))))));
    global2 = _wgslsmith_mult_i32(~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(1u), global1.a.b.x) ^ ~1u, 27u)], countOneBits(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i, global0[_wgslsmith_index_u32(12554u, 27u)], -9224i) | vec3<i32>(-14717i, global0[_wgslsmith_index_u32(44630u, 27u)], global0[_wgslsmith_index_u32(global4.a.x, 27u)]), vec3<i32>(global0[_wgslsmith_index_u32(global3.x, 27u)], 2147483647i, -1i), all(vec2<bool>(false, false))), vec3<i32>(1i, 1i, 1i))));
    global1 = Struct_4(Struct_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(global1.a.a.x, u_input.a), ~0u, 1u), global1.a.a, global4.a >> (~global3.wyx % vec3<u32>(32u))), vec2<u32>(~global4.d.x << (min(45249u, u_input.a) % 32u), ~(~global1.a.d.x)), any(select(vec2<bool>(global1.a.c, false), !vec2<bool>(global4.c, global4.c), !vec2<bool>(global1.a.c, false))), global1.a.d));
    global4 = global1.a;
    let var_1 = Struct_1(!select(!(!vec2<bool>(true, global1.a.c)), select(select(vec2<bool>(true, global1.a.c), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(global1.a.c, true), global4.c), vec2<bool>(global4.c, global4.c)), true), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], 15192i << (global1.a.a.x % 32u), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(10100u, 27u)], min(-global0[_wgslsmith_index_u32(global1.a.d.x, 27u)], -31291i), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(60072u, _wgslsmith_sub_u32(global3.x, 0u)), 27u)]), _wgslsmith_add_i32(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(global1.a.a.x, 77230u), 27u)], 0i)), _wgslsmith_sub_vec2_u32(global1.a.d.xy, _wgslsmith_div_vec2_u32(~vec2<u32>(1u, global1.a.d.x), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(37686u, 4294967295u), vec2<u32>(1u, 1u)), ~global4.d.x))));
    return 1604f;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), arg_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1871f, arg_1.x, false)))))), _wgslsmith_f_op_f32(max(1091f, _wgslsmith_div_f32(-1000f, arg_1.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))));
    var var_1 = global1.a;
    var var_2 = Struct_4(Struct_3(global1.a.d << (_wgslsmith_div_vec3_u32(abs(vec3<u32>(3252u, 15743u, global1.a.a.x)), firstTrailingBit(global1.a.d)) % vec3<u32>(32u)), _wgslsmith_clamp_vec2_u32(~global1.a.d.yz, ~abs(vec2<u32>(global1.a.a.x, var_1.a.x)), ~_wgslsmith_add_vec2_u32(global3.zw, global3.ww)), global4.c, abs(reverseBits(var_1.d))));
    let var_3 = Struct_2(Struct_1(vec2<bool>(_wgslsmith_mod_u32(global4.b.x, 0u) <= ~0u, any(!vec4<bool>(global4.c, false, false, false))), -_wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(global4.a.x, 27u)], global0[_wgslsmith_index_u32(19265u, 27u)], 1i, global0[_wgslsmith_index_u32(var_1.d.x, 27u)]), vec4<i32>(10200i, 25114i, -1i, global0[_wgslsmith_index_u32(0u, 27u)])) << ((vec4<u32>(6402u, 23302u, var_2.a.b.x, 4294967295u) | vec4<u32>(u_input.a, global1.a.b.x, 4294967295u, global3.x)) % vec4<u32>(32u)), var_2.a.a.xx), Struct_1(select(select(vec2<bool>(global1.a.c, true), vec2<bool>(false, false), !vec2<bool>(var_2.a.c, global1.a.c)), vec2<bool>(all(vec2<bool>(false, false)), false), var_1.c), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0 | 2147483647i, arg_0, -1i, reverseBits(2147483647i)), -vec4<i32>(arg_0, -6173i, global0[_wgslsmith_index_u32(66930u, 27u)], global0[_wgslsmith_index_u32(19142u, 27u)])), vec2<u32>(16834u, 4294967295u)), Struct_1(select(!select(vec2<bool>(false, var_2.a.c), vec2<bool>(false, true), vec2<bool>(global4.c, true)), vec2<bool>(all(vec4<bool>(true, false, var_2.a.c, var_1.c)), any(vec3<bool>(true, global1.a.c, var_1.c))), vec2<bool>(false, global1.a.c)), _wgslsmith_add_vec4_i32(max(abs(vec4<i32>(2147483647i, 1i, -2147483647i, 44810i)), _wgslsmith_div_vec4_i32(vec4<i32>(11282i, 966i, global0[_wgslsmith_index_u32(0u, 27u)], -29483i), vec4<i32>(global0[_wgslsmith_index_u32(95464u, 27u)], 2147483647i, -2147483647i, arg_0))), max(vec4<i32>(arg_0, -53909i, -2147483647i, arg_0), -vec4<i32>(884i, -21245i, arg_0, -1i))), _wgslsmith_clamp_vec2_u32(var_2.a.a.xy, _wgslsmith_clamp_vec2_u32(vec2<u32>(global3.x, global4.d.x), min(vec2<u32>(global4.d.x, u_input.a), global1.a.a.zy), countOneBits(global1.a.a.yx)), _wgslsmith_div_vec2_u32(var_1.d.yy, vec2<u32>(var_1.d.x, 67067u)) | abs(var_1.a.yx))), Struct_1(!select(vec2<bool>(true, true), vec2<bool>(var_2.a.c, true), var_2.a.c), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], arg_0, global0[_wgslsmith_index_u32(var_1.b.x, 27u)], 0i), vec4<i32>(arg_0, global0[_wgslsmith_index_u32(0u, 27u)], arg_0, 48609i), vec4<bool>(global1.a.c, var_2.a.c, global1.a.c, false)), _wgslsmith_clamp_vec4_i32(vec4<i32>(11868i, 2147483647i, global0[_wgslsmith_index_u32(139325u, 27u)], -1i), vec4<i32>(20709i, 18694i, 2147483647i, global0[_wgslsmith_index_u32(20463u, 27u)]), vec4<i32>(arg_0, global0[_wgslsmith_index_u32(4294967295u, 27u)], 1i, 33999i))), reverseBits(vec4<i32>(arg_0, arg_0, arg_0, arg_0))), _wgslsmith_clamp_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(67383u, 0u), vec2<u32>(24804u, var_2.a.a.x), var_2.a.b), vec2<u32>(0u, _wgslsmith_dot_vec2_u32(var_2.a.b, vec2<u32>(global1.a.d.x, 0u))), vec2<u32>(~var_1.a.x, firstTrailingBit(var_1.a.x)))), _wgslsmith_f_op_f32(-1f));
    global0 = array<i32, 27>();
    return ~var_3.b.c.x;
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_2, arg_3: vec4<u32>) -> vec2<bool> {
    var var_0 = countOneBits(min(abs(vec4<i32>(global0[_wgslsmith_index_u32(57932u, 27u)], -50510i, 7045i, 0i)) ^ arg_2.a.b, ~vec4<i32>(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(arg_2.b.c.x, 27u)], arg_2.b.b.x, arg_2.d.b.x) & arg_2.c.b) >> (~arg_3 % vec4<u32>(32u)));
    var_0 = arg_2.c.b;
    let var_1 = Struct_3(vec3<u32>(~13209u, ~firstTrailingBit(global4.a.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.a.a.x, u_input.a), _wgslsmith_sub_vec2_u32(global1.a.d.yy, vec2<u32>(global4.d.x, global3.x)))) & vec3<u32>(global4.a.x, func_2(var_0.x, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2.e, 2326f, 474f)))), arg_0.a.a.x), vec2<u32>(global4.b.x, abs(firstLeadingBit(func_2(global0[_wgslsmith_index_u32(arg_0.a.a.x, 27u)], vec3<f32>(arg_2.e, arg_2.e, 553f))))), !(~u_input.a <= 4294967295u), arg_3.wyx);
    var var_2 = Struct_1(arg_2.b.a, firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.d.b.x, 73602i, 29272i, var_0.x), ~vec4<i32>(arg_2.c.b.x, var_0.x, 25344i, var_0.x))) & (~(arg_2.b.b << (vec4<u32>(global3.x, 4294967295u, global4.b.x, 0u) % vec4<u32>(32u))) << (min(~arg_3, _wgslsmith_div_vec4_u32(vec4<u32>(global1.a.b.x, 2902u, var_1.a.x, 4294967295u), arg_3)) % vec4<u32>(32u))), arg_3.yz >> (vec2<u32>(u_input.a, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(arg_3, vec4<u32>(15477u, 64282u, arg_2.a.c.x, 46831u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 40129u), vec2<u32>(0u, arg_3.x)), reverseBits(arg_3.x))) % vec2<u32>(32u)));
    var var_3 = global4.c;
    return vec2<bool>(any(vec4<bool>(arg_0.a.c | arg_0.a.c, global1.a.c, any(vec3<bool>(true, true, true)), select(false, var_2.a.x, true))) & !all(vec4<bool>(global1.a.c, global4.c, arg_2.c.a.x, var_1.c)), !arg_2.b.a.x);
}

fn func_1(arg_0: vec4<f32>) -> Struct_4 {
    global4 = global1.a;
    global3 = _wgslsmith_div_vec4_u32(~(~(~vec4<u32>(1u, 0u, global3.x, 314u))), vec4<u32>(global4.b.x, 0u, _wgslsmith_mod_u32(reverseBits(u_input.a), 6166u), countOneBits(~15659u))) | ~vec4<u32>(~global4.a.x, global3.x, firstTrailingBit(4294967295u), ~(global4.b.x ^ u_input.a));
    let var_0 = Struct_1(!select(func_4(Struct_4(Struct_3(vec3<u32>(global4.b.x, 1u, global1.a.d.x), global4.b, true, vec3<u32>(4294967295u, 79324u, global3.x))), func_2(23411i, vec3<f32>(arg_0.x, arg_0.x, -132f)), Struct_2(Struct_1(vec2<bool>(global4.c, false), vec4<i32>(43768i, global0[_wgslsmith_index_u32(1u, 27u)], -2147483647i, 2147483647i), vec2<u32>(52140u, global4.b.x)), Struct_1(vec2<bool>(global1.a.c, global4.c), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], -2147483647i, -13360i, 1i), vec2<u32>(1u, 1u)), Struct_1(vec2<bool>(global4.c, global4.c), vec4<i32>(1i, global0[_wgslsmith_index_u32(u_input.a, 27u)], global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(global3.x, 27u)]), global4.b), Struct_1(vec2<bool>(false, global1.a.c), vec4<i32>(0i, global0[_wgslsmith_index_u32(4294967295u, 27u)], 7304i, 2147483647i), global4.a.yz), 371f), ~vec4<u32>(global4.b.x, global3.x, 1u, 85523u)), vec2<bool>(false, true), vec2<bool>(true, true)), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(firstLeadingBit(-1i), 20346i), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u, _wgslsmith_clamp_u32(49061u, global1.a.a.x, global3.x)), 27u)], -global0[_wgslsmith_index_u32(global1.a.a.x, 27u)], 3576i), vec4<i32>(min(_wgslsmith_mult_i32(-16593i, -23956i), global0[_wgslsmith_index_u32(global3.x, 27u)]), -7278i, global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(~u_input.a, 27u)])), abs(~_wgslsmith_sub_vec2_u32(global4.d.yz, vec2<u32>(4294967295u, 12121u) >> (vec2<u32>(global4.d.x, global3.x) % vec2<u32>(32u)))));
    var var_1 = Struct_2(Struct_1(vec2<bool>((var_0.b.x ^ var_0.b.x) > var_0.b.x, true), var_0.b, min(global1.a.a.yx, countOneBits(vec2<u32>(1u, 344u)))), Struct_1(select(var_0.a, func_4(Struct_4(Struct_3(vec3<u32>(global1.a.b.x, global3.x, 1u), vec2<u32>(0u, 13706u), true, global4.a)), ~global1.a.b.x, Struct_2(var_0, var_0, var_0, Struct_1(vec2<bool>(global1.a.c, global4.c), var_0.b, vec2<u32>(global3.x, 29529u)), arg_0.x), vec4<u32>(global4.d.x, var_0.c.x, global1.a.d.x, global4.b.x)), !vec2<bool>(global1.a.c, var_0.a.x)), var_0.b, ~vec2<u32>(~global4.a.x, ~12967u)), Struct_1(vec2<bool>(true, global4.c != any(vec3<bool>(false, global4.c, global1.a.c))), vec4<i32>(0i, i32(-1i) * -2147483647i, -23012i, 74162i), global4.a.yz), Struct_1(vec2<bool>(var_0.a.x, select(any(var_0.a), all(vec3<bool>(false, false, global1.a.c)), true)), _wgslsmith_mult_vec4_i32(select(vec4<i32>(global0[_wgslsmith_index_u32(var_0.c.x, 27u)], var_0.b.x, var_0.b.x, 2147483647i), var_0.b ^ var_0.b, !vec4<bool>(global4.c, false, false, false)), max(~var_0.b, vec4<i32>(var_0.b.x, global0[_wgslsmith_index_u32(1u, 27u)], var_0.b.x, var_0.b.x))), vec2<u32>(1u, global1.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)));
    let var_2 = select(!select(!vec3<bool>(false, var_0.a.x, false), vec3<bool>(var_1.a.a.x, true, all(var_1.a.a)), vec3<bool>(var_0.a.x, arg_0.x > 472f, false | var_0.a.x)), select(select(!(!vec3<bool>(global1.a.c, false, true)), vec3<bool>(true, all(vec2<bool>(global1.a.c, true)), !var_0.a.x), 1i > _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(0u, 27u)], -2147483647i)), vec3<bool>(var_0.a.x, any(vec4<bool>(global4.c, true, true, var_0.a.x)), var_1.c.a.x), select(select(vec3<bool>(true, false, global1.a.c), !vec3<bool>(global4.c, var_0.a.x, true), vec3<bool>(var_0.a.x, global4.c, global1.a.c)), select(select(vec3<bool>(var_0.a.x, var_1.b.a.x, true), vec3<bool>(true, true, true), global1.a.c), select(vec3<bool>(global4.c, true, global4.c), vec3<bool>(global1.a.c, var_1.b.a.x, false), vec3<bool>(var_1.d.a.x, false, false)), global1.a.c), var_1.d.a.x && var_0.a.x)), any(!(!select(vec3<bool>(var_0.a.x, false, false), vec3<bool>(true, global4.c, var_0.a.x), global4.c))));
    return Struct_4(Struct_3(global1.a.d, select((global4.a.zy ^ global1.a.a.yx) & ~global1.a.a.zx, var_0.c, true), var_1.e < 1207f, ~_wgslsmith_div_vec3_u32(global3.zyw, vec3<u32>(u_input.a, 0u, global3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(369f, -271f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1624f)) * -788f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-830f, 1f))), -666f));
    var var_0 = 28606u;
    global0 = array<i32, 27>();
    var var_1 = !(!vec2<bool>(false, global0[_wgslsmith_index_u32(~u_input.a, 27u)] <= -global0[_wgslsmith_index_u32(0u, 27u)]));
    var var_2 = Struct_1(select(func_4(func_1(vec4<f32>(1017f, -232f, 1050f, -1109f)), 1u, Struct_2(Struct_1(vec2<bool>(false, global1.a.c), vec4<i32>(5585i, 1i, 1i, 67185i), global3.wy), Struct_1(vec2<bool>(false, var_1.x), vec4<i32>(1i, global0[_wgslsmith_index_u32(4294967295u, 27u)], 30203i, global0[_wgslsmith_index_u32(0u, 27u)]), vec2<u32>(u_input.a, u_input.a)), Struct_1(vec2<bool>(false, true), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], -44322i, 4967i, global0[_wgslsmith_index_u32(13895u, 27u)]), global1.a.b), Struct_1(vec2<bool>(var_1.x, global4.c), vec4<i32>(25085i, -66478i, 0i, global0[_wgslsmith_index_u32(0u, 27u)]), vec2<u32>(29465u, 72251u)), _wgslsmith_f_op_f32(select(-1105f, 1132f, var_1.x))), min(countOneBits(vec4<u32>(u_input.a, 32585u, global1.a.d.x, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a, global1.a.d.x, global4.b.x), vec4<u32>(global4.d.x, global3.x, 26117u, u_input.a)))), select(select(vec2<bool>(true, true), !vec2<bool>(global1.a.c, var_1.x), func_4(Struct_4(global1.a), 7040u, Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(0i, -64398i, global0[_wgslsmith_index_u32(global3.x, 27u)], 1i), vec2<u32>(1u, 40213u)), Struct_1(vec2<bool>(var_1.x, global1.a.c), vec4<i32>(global0[_wgslsmith_index_u32(global1.a.d.x, 27u)], global0[_wgslsmith_index_u32(global4.d.x, 27u)], global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(global3.x, 27u)]), global4.b), Struct_1(vec2<bool>(true, true), vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a, 27u)], 0i, global0[_wgslsmith_index_u32(u_input.a, 27u)]), vec2<u32>(1u, global4.b.x)), Struct_1(vec2<bool>(global4.c, false), vec4<i32>(-26336i, 0i, -2147483647i, global0[_wgslsmith_index_u32(0u, 27u)]), vec2<u32>(126778u, 1u)), 250f), vec4<u32>(u_input.a, 11474u, 17939u, 1u))), func_4(func_1(vec4<f32>(1214f, -966f, -599f, -1000f)), abs(global1.a.b.x), Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(-1i, 0i, -3111i, global0[_wgslsmith_index_u32(global1.a.d.x, 27u)]), global3.wy), Struct_1(vec2<bool>(true, global1.a.c), vec4<i32>(global0[_wgslsmith_index_u32(global3.x, 27u)], 0i, global0[_wgslsmith_index_u32(global4.d.x, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)]), vec2<u32>(17632u, global3.x)), Struct_1(vec2<bool>(true, global1.a.c), vec4<i32>(global0[_wgslsmith_index_u32(global1.a.d.x, 27u)], 2581i, global0[_wgslsmith_index_u32(1u, 27u)], -2147483647i), global4.d.yx), Struct_1(vec2<bool>(false, false), vec4<i32>(-15775i, global0[_wgslsmith_index_u32(global4.a.x, 27u)], global0[_wgslsmith_index_u32(53349u, 27u)], global0[_wgslsmith_index_u32(0u, 27u)]), vec2<u32>(global3.x, global3.x)), -1204f), select(vec4<u32>(43507u, 1u, 4294967295u, global3.x), vec4<u32>(global1.a.a.x, 3417u, 8416u, 4294967295u), vec4<bool>(true, false, false, true))), vec2<bool>(true, true)), false), abs(select(vec4<i32>(0i, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(12373u, global3.x), 27u)], min(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(global1.a.d.x, 27u)]), global0[_wgslsmith_index_u32(global4.a.x, 27u)] & global0[_wgslsmith_index_u32(global4.a.x, 27u)]), -vec4<i32>(global0[_wgslsmith_index_u32(52177u, 27u)], global0[_wgslsmith_index_u32(global3.x, 27u)], 0i, 0i), true)), vec2<u32>(~(~(31739u | global3.x)), reverseBits(global3.x)));
    var var_3 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1522f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1151f + 404f), _wgslsmith_f_op_f32(f32(-1f) * -518f), global4.c)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-284f - -384f), _wgslsmith_f_op_f32(f32(-1f) * -288f)))));
    global2 = max(~global0[_wgslsmith_index_u32(max(countOneBits(33926u), abs(global3.x)), 27u)] & global0[_wgslsmith_index_u32(firstTrailingBit(func_1(vec4<f32>(-381f, 231f, -1387f, 2009f)).a.a.x), 27u)], 2147483647i);
    var var_4 = !(!(_wgslsmith_f_op_f32(f32(-1f) * -210f) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(241f + 251f)))));
    let var_5 = global0[_wgslsmith_index_u32(1u, 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1205f, -347f, -105f, 1686f)))) * vec4<f32>(-705f, _wgslsmith_div_f32(1121f, 1697f), _wgslsmith_f_op_f32(round(-1405f)), _wgslsmith_f_op_f32(f32(-1f) * -891f))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -751f))), _wgslsmith_f_op_f32(sign(-1812f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(555f))))), 1186i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(548f - -1882f), _wgslsmith_f_op_f32(f32(-1f) * -668f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1751f * -2645f)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(sign(-560f)))))));
}

