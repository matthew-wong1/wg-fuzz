struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 4294967295u;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_5) -> bool {
    global1 = global0.e.x;
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-1727f)), arg_0.a.d))), 33972u);
    var var_1 = Struct_1(arg_0.a.a, vec4<bool>(global0.b.x, true, arg_0.a.b.x, arg_0.a.b.x), vec3<i32>(~(~_wgslsmith_mod_i32(arg_0.a.c.x, 13958i)), arg_0.a.c.x, _wgslsmith_mult_i32(abs(i32(-1i) * -2147483647i), u_input.d)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a.x - 109f))) + var_0.a.x))), vec3<u32>(reverseBits((0u << (u_input.a.x % 32u)) & 1u), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.b, 0u, u_input.c.x), _wgslsmith_sub_vec3_u32(global0.a.yzx, vec3<u32>(4294967295u, 19285u, 4294967295u))), _wgslsmith_sub_u32(var_0.b, _wgslsmith_add_u32(59279u, 3302u))), reverseBits(countOneBits(global0.a.x))));
    let var_2 = Struct_5(arg_0.a);
    var var_3 = _wgslsmith_add_i32(1i, 0i);
    return var_2.a.b.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec3<f32>) -> vec2<f32> {
    let var_0 = global0.b.x;
    let var_1 = ~abs(global0.e);
    let var_2 = Struct_2(arg_0.a, arg_0.b);
    global0 = Struct_1(~abs(vec4<u32>(81864u, arg_0.a.e.x, 23580u, 71588u)) << (vec4<u32>(~(~var_2.a.a.x), 4294967295u, global0.e.x, 93546u) % vec4<u32>(32u)), vec4<bool>((all(vec2<bool>(arg_0.a.b.x, var_2.a.b.x)) != select(true, false, false)) & func_3(Struct_5(Struct_1(global0.a, global0.b, var_2.b.wzy, 493f, vec3<u32>(4294967295u, 42838u, 1u)))), all(select(vec2<bool>(true, false), var_2.a.b.xx, arg_1.yx)) | (true & all(vec2<bool>(global0.b.x, var_2.a.b.x))), true, select(all(vec2<bool>(arg_0.a.b.x, false)), global0.b.x, true)), max(vec3<i32>(_wgslsmith_add_i32(-u_input.d, 0i), u_input.d, select(1i, u_input.d, select(var_2.a.b.x, false, false))), _wgslsmith_mod_vec3_i32(global0.c, global0.c)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1451f + _wgslsmith_f_op_f32(exp2(var_2.a.d))))), ~var_1);
    var var_3 = Struct_4(Struct_3(arg_2.zx, _wgslsmith_add_u32(arg_0.a.a.x, var_1.x) ^ var_1.x), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(var_2.a.c, -arg_0.a.c), firstLeadingBit(firstTrailingBit(vec3<i32>(-1i, u_input.d, u_input.d)))), ~vec2<u32>(abs(firstTrailingBit(109995u)), u_input.a.x), 266f);
    return vec2<f32>(_wgslsmith_f_op_f32(421f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(626f + _wgslsmith_f_op_f32(min(arg_0.a.d, 609f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.x))))), var_2.a.d);
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: bool) -> Struct_3 {
    let var_0 = _wgslsmith_add_u32(_wgslsmith_sub_u32(~1u, reverseBits(0u)), _wgslsmith_div_u32(global0.e.x, 8089u));
    global1 = var_0;
    let var_1 = Struct_5(Struct_1(vec4<u32>(arg_0 >> (global0.a.x % 32u), min(~var_0, 16016u), ~_wgslsmith_dot_vec2_u32(arg_1.c, u_input.c.wx), 13343u), vec4<bool>(false, false, true, false), global0.c, _wgslsmith_f_op_f32(-global0.d), vec3<u32>(~select(global0.a.x, global0.e.x, false), u_input.a.x, var_0)));
    global1 = 1u;
    global1 = var_1.a.e.x;
    return Struct_3(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(Struct_1(firstTrailingBit(global0.a), !global0.b, vec3<i32>(0i, global0.c.x, u_input.d) << (var_1.a.e % vec3<u32>(32u)), _wgslsmith_f_op_f32(min(-1000f, global0.d)), _wgslsmith_mult_vec3_u32(u_input.c.yzy, vec3<u32>(4294967295u, arg_1.a.b, 46184u))), vec4<i32>(-1i, arg_1.b.x, 2147483647i, -2147483647i) >> (global0.a % vec4<u32>(32u))), global0.b.xyy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(204f, 455f, arg_1.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2123f, global0.d, global0.d)))))), 1u);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_3, arg_3: u32) -> vec3<u32> {
    let var_0 = arg_3 >> (1u % 32u);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(215f, _wgslsmith_f_op_f32(min(arg_1, 482f)), -252f, _wgslsmith_div_f32(760f, -799f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_2.a.x, arg_1, -1406f) + vec4<f32>(global0.d, global0.d, 680f, 832f)) * vec4<f32>(arg_2.a.x, global0.d, 283f, arg_1)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-395f, 1021f, -751f, -304f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1189f, arg_1, 299f, 1583f)))))));
    let var_2 = select(select(!vec2<bool>(true, all(global0.b.xw)), !global0.b.zw, global0.b.zx), vec2<bool>(global0.b.x, global0.b.x), !(!select(global0.b.x & true, arg_1 >= global0.d, true)));
    global0 = Struct_1(vec4<u32>(~30941u, ~(~(66913u << (0u % 32u))), var_0, arg_2.b), vec4<bool>(func_3(Struct_5(Struct_1(vec4<u32>(0u, 1u, 1u, arg_3), global0.b, global0.c, -2340f, vec3<u32>(4294967295u, 1u, global0.e.x)))), var_2.x, global0.b.x && true, true), reverseBits(~_wgslsmith_mult_vec3_i32(global0.c, -vec3<i32>(u_input.d, u_input.d, u_input.d))), global0.d, vec3<u32>(113979u, func_1(3390u, Struct_4(Struct_3(vec2<f32>(710f, 381f), 4294967295u), global0.c, ~vec2<u32>(var_0, 4294967295u), -582f), !global0.b.x).b, 4294967295u));
    let var_3 = arg_2;
    return ~abs(select(u_input.a.zxy, select(_wgslsmith_add_vec3_u32(u_input.b.ywy, global0.a.zzw), global0.e & vec3<u32>(9157u, 22908u, global0.e.x), !global0.b.wyy), !var_2.x));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_5) -> Struct_1 {
    let var_0 = select(firstTrailingBit(global0.c.x), 25943i, any(global0.b)) & (firstTrailingBit(global0.c.x) | global0.c.x);
    global1 = _wgslsmith_clamp_u32(~arg_2.a.b, abs(func_4(func_4(arg_1.c.x, -698f, arg_2.a, arg_3.a.a.x).x, _wgslsmith_f_op_f32(min(-1946f, arg_1.d)), func_1(47775u, Struct_4(arg_2.a, arg_2.b, vec2<u32>(arg_3.a.a.x, arg_2.c.x), arg_1.a.a.x), global0.b.x), global0.a.x).x | ~u_input.c.x), ~(~(arg_1.c.x | arg_2.c.x)));
    global1 = arg_2.c.x;
    var var_1 = _wgslsmith_f_op_f32(select(1410f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_2(Struct_1(global0.a, vec4<bool>(true, false, false, global0.b.x), vec3<i32>(var_0, -45208i, var_0), 214f, vec3<u32>(arg_3.a.e.x, 46146u, 38143u)), vec4<i32>(arg_1.b.x, global0.c.x, global0.c.x, u_input.d)), global0.b.xzz, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1444f, -733f, global0.d) - vec3<f32>(global0.d, 768f, -577f)))).x), _wgslsmith_div_f32(1000f, arg_2.a.a.x)), !arg_3.a.b.x));
    let var_2 = abs(_wgslsmith_add_i32(~arg_1.b.x, arg_1.b.x | (arg_2.b.x & ~0i)));
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec2<i32>(~global0.c.x, _wgslsmith_mod_i32(~(-14682i), (-54138i & u_input.d) ^ ~u_input.d));
    global0 = func_5(select(~(~global0.a.zww), _wgslsmith_mod_vec3_u32(func_4(u_input.c.x, global0.d, func_1(global0.e.x, Struct_4(Struct_3(vec2<f32>(-1000f, 1584f), global0.e.x), global0.c, global0.e.zy, global0.d), global0.b.x), ~u_input.a.x), _wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 1u, u_input.c.x), abs(vec3<u32>(u_input.b.x, global0.a.x, 33614u)), ~u_input.b.wzw)), global0.b.wzz), Struct_4(Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.d, global0.d), vec2<f32>(1280f, -153f), global0.b.ww)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.d))), max(13402u, 10878u)), vec3<i32>(select(firstTrailingBit(-41367i), -25134i, true), i32(-1i) * -17571i, 31881i), _wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, 0u), countOneBits(countOneBits(u_input.c.xz))), global0.d), Struct_4(Struct_3(vec2<f32>(_wgslsmith_f_op_f32(round(global0.d)), 1296f), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 1u), global0.a.zy)), global0.c, ~(~global0.a.xw << ((u_input.b.zx >> (u_input.a.wx % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_div_f32(global0.d, global0.d)), Struct_5(Struct_1(~vec4<u32>(global0.e.x, global0.a.x, 8878u, global0.a.x) & ~global0.a, vec4<bool>(global0.b.x, true, global0.b.x, any(vec2<bool>(global0.b.x, global0.b.x))), vec3<i32>(-1i) * -global0.c, 230f, _wgslsmith_div_vec3_u32(u_input.a.wxy, _wgslsmith_mult_vec3_u32(global0.e, u_input.a.xxw)))));
    global0 = func_5(vec3<u32>(0u, 9271u, u_input.a.x), Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.d, -995f)))), u_input.a.x), _wgslsmith_add_vec3_i32(vec3<i32>(~global0.c.x, _wgslsmith_add_i32(u_input.d, -1i), -12290i), vec3<i32>(-1i) * -global0.c), firstTrailingBit(~(~global0.a.yw)), -101f), Struct_4(func_1(4294967295u, Struct_4(func_1(u_input.c.x, Struct_4(Struct_3(vec2<f32>(1328f, 485f), 40087u), global0.c, u_input.a.zw, 1000f), true), select(global0.c, vec3<i32>(u_input.d, global0.c.x, var_0.x), global0.b.x), _wgslsmith_mod_vec2_u32(global0.e.yx, vec2<u32>(5474u, global0.a.x)), _wgslsmith_f_op_f32(global0.d * global0.d)), ~u_input.a.x != u_input.b.x), global0.c, global0.a.wx, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1022f + global0.d))))), Struct_5(func_5(~(~vec3<u32>(1u, global0.e.x, 1u)), Struct_4(func_1(1u, Struct_4(Struct_3(vec2<f32>(global0.d, 1232f), 8831u), vec3<i32>(u_input.d, global0.c.x, -19731i), u_input.c.xw, -882f), global0.b.x), ~global0.c, vec2<u32>(0u, global0.a.x), _wgslsmith_div_f32(-835f, 960f)), Struct_4(func_1(4294967295u, Struct_4(Struct_3(vec2<f32>(global0.d, -482f), global0.e.x), global0.c, vec2<u32>(1u, global0.a.x), global0.d), false), vec3<i32>(23545i, var_0.x, u_input.d), vec2<u32>(9422u, 1u), _wgslsmith_f_op_f32(global0.d - -1021f)), Struct_5(Struct_1(vec4<u32>(global0.e.x, 20166u, global0.a.x, 4294967295u), global0.b, vec3<i32>(0i, global0.c.x, global0.c.x), global0.d, global0.e)))));
    let var_1 = !global0.b.x;
    var_0 = countOneBits(func_5(_wgslsmith_div_vec3_u32(vec3<u32>(32373u, 4294967295u, _wgslsmith_add_u32(5975u, u_input.c.x)), ~(~vec3<u32>(54871u, 0u, global0.a.x))), Struct_4(func_1(1u, Struct_4(Struct_3(vec2<f32>(global0.d, -310f), u_input.c.x), vec3<i32>(u_input.d, u_input.d, 41022i), global0.e.xx, 243f), !global0.b.x), vec3<i32>(var_0.x, var_0.x, global0.c.x) | vec3<i32>(-1684i, 39026i, -43754i), vec2<u32>(global0.e.x >> (global0.e.x % 32u), _wgslsmith_div_u32(u_input.b.x, 1u)), _wgslsmith_f_op_f32(-1501f * _wgslsmith_f_op_f32(-1484f + -2942f))), Struct_4(func_1(u_input.a.x, Struct_4(Struct_3(vec2<f32>(237f, 292f), u_input.b.x), global0.c, vec2<u32>(u_input.a.x, u_input.c.x), 1000f), true), countOneBits(-vec3<i32>(global0.c.x, var_0.x, 63470i)), _wgslsmith_add_vec2_u32(abs(global0.a.zx), vec2<u32>(global0.e.x, 0u)), 150f), Struct_5(func_5(vec3<u32>(4294967295u, 1u, 47859u), Struct_4(Struct_3(vec2<f32>(global0.d, -1128f), global0.a.x), global0.c, vec2<u32>(global0.a.x, global0.e.x), 1000f), Struct_4(Struct_3(vec2<f32>(-1967f, global0.d), 7404u), vec3<i32>(u_input.d, 767i, 14156i), u_input.a.xx, global0.d), Struct_5(Struct_1(global0.a, vec4<bool>(true, global0.b.x, var_1, true), global0.c, -1267f, u_input.c.zxz))))).c.yx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -999f), vec2<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.c.x, func_1(firstTrailingBit(1u), Struct_4(Struct_3(vec2<f32>(global0.d, global0.d), 0u), vec3<i32>(u_input.d, -15874i, global0.c.x), vec2<u32>(u_input.c.x, 27242u), global0.d), global0.c.x < 1i).b)), _wgslsmith_mod_vec4_i32((-vec4<i32>(-15309i, -7633i, -2147483647i, 4201i) | countOneBits(vec4<i32>(var_0.x, 0i, -1i, -1i))) | -vec4<i32>(global0.c.x, 13892i, var_0.x, -16660i), vec4<i32>(6228i, u_input.d, abs(-1i), ~global0.c.x)));
}

