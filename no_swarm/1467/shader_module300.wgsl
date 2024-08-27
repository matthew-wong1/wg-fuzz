struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec2<bool> {
    let var_0 = vec4<i32>(-1i, i32(-1i) * -1i, -_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b.x, 0i) << (_wgslsmith_sub_u32(0u, u_input.d) % 32u), 2512i), -_wgslsmith_add_i32(_wgslsmith_add_i32(max(-22302i, -19290i), 1i), countOneBits(reverseBits(1i))));
    var var_1 = abs(var_0);
    let var_2 = vec4<u32>(abs(~(~1u)) | u_input.d, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, u_input.e, 110092u, u_input.c)), min(vec4<u32>(u_input.c, 4294967295u, u_input.e, u_input.c), vec4<u32>(u_input.e, 1u, u_input.d, u_input.c))), min(select(vec4<u32>(u_input.c, 34624u, 85816u, 30129u), vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.c), true), ~vec4<u32>(u_input.c, 47908u, 5142u, 1u))) << (u_input.e % 32u), _wgslsmith_add_u32(74611u, reverseBits(_wgslsmith_clamp_u32(15861u, u_input.d, u_input.d))) << (reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(32914u, u_input.e, u_input.c, u_input.e), ~vec4<u32>(1295u, u_input.e, u_input.e, u_input.c))) % 32u), select(_wgslsmith_mult_u32(u_input.d, ~19638u), 1u, true));
    var_1 = var_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1193f, -398f, -1168f))))))));
    return !(!(!vec2<bool>(all(vec4<bool>(false, false, true, false)), true)));
}

fn func_2() -> Struct_1 {
    return Struct_1(func_3(), func_3().x, select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false), vec3<bool>(true, true, true), func_3().x == !any(vec2<bool>(true, true))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: vec4<u32>) -> f32 {
    global0 = -u_input.a;
    let var_0 = Struct_3(Struct_2(-8735i, -1i, true && (-2147483647i >= u_input.a), -(abs(vec4<i32>(u_input.a, -2147483647i, u_input.b.x, -11314i)) | ~vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.a))), 7727i, abs(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b, u_input.b, u_input.b), ~u_input.b) & -vec2<i32>(2147483647i, -25855i)), arg_1);
    global0 = u_input.b.x;
    var var_1 = Struct_3(var_0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(min(var_0.c.x, -29538i), max(-14405i, -39381i), firstLeadingBit(85381i)) >> (_wgslsmith_sub_vec3_u32(arg_3.ywy, vec3<u32>(arg_2, 1768u, arg_0)) % vec3<u32>(32u)), -abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, var_0.b, u_input.b.x), vec3<i32>(var_0.a.d.x, var_0.c.x, u_input.a), vec3<i32>(2147483647i, u_input.b.x, -86153i)))), _wgslsmith_mod_vec2_i32(vec2<i32>(7363i, var_0.c.x), max(_wgslsmith_div_vec2_i32(var_0.c, -u_input.b), u_input.b)), func_2());
    var var_2 = 17403u;
    return -346f;
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> Struct_3 {
    global0 = u_input.a;
    let var_0 = Struct_3(arg_1, abs(-4933i << (_wgslsmith_mod_u32(19910u | u_input.e, ~4294967295u) % 32u)), _wgslsmith_div_vec2_i32(arg_1.d.zw, u_input.b), func_2());
    var var_1 = vec2<bool>(arg_1.c, func_3().x);
    global0 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(arg_1.d.zy, vec2<i32>(-1i, -2147483647i)), _wgslsmith_div_vec2_i32(var_0.c, arg_1.d.xz));
    var var_2 = var_0.a;
    return var_0;
}

fn func_1() -> bool {
    let var_0 = func_5(_wgslsmith_f_op_f32(func_4(~0u, func_2(), ~(~u_input.c), vec4<u32>(firstTrailingBit(58419u), 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.e, u_input.c), vec3<u32>(4358u, 25312u, 25756u)), ~43162u) ^ countOneBits(~vec4<u32>(4294967295u, 71661u, 45524u, 0u)))), Struct_2(25861i, _wgslsmith_div_i32(1i, u_input.b.x), !all(vec4<bool>(false, false, true, true)), vec4<i32>(-6383i, u_input.b.x, u_input.a, -(~1i))));
    let var_1 = func_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(399f)))), var_0.a).a;
    global0 = _wgslsmith_sub_i32(-1i, -2147483647i);
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1f)), 850f));
    var var_3 = min(vec2<u32>(firstLeadingBit(u_input.c), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.e, u_input.e, 250u), ~vec4<u32>(u_input.d, u_input.d, u_input.e, 43319u)) & ~(~74862u)), ~vec2<u32>(4294967295u, max(_wgslsmith_sub_u32(u_input.d, u_input.d), firstTrailingBit(u_input.d))));
    return !var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -7358i;
    let var_0 = u_input.c << (0u % 32u);
    let var_1 = abs(-u_input.b.x);
    var var_2 = vec3<bool>(true, true, func_1());
    let var_3 = _wgslsmith_mod_u32(1u, 47007u);
    let var_4 = func_5(_wgslsmith_f_op_f32(f32(-1f) * -1550f), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-361f - _wgslsmith_f_op_f32(1000f * 1504f)) - _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(min(-2010f, -1287f))))), Struct_2(-1i, var_1, true, ~vec4<i32>(u_input.a, 4341i, u_input.b.x, -1i) | func_5(239f, Struct_2(10939i, var_1, var_2.x, vec4<i32>(u_input.a, u_input.a, var_1, 0i))).a.d)).a).d;
    let var_5 = vec2<u32>(~(~u_input.d), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(min(~var_5, ~(vec2<u32>(var_5.x, var_0) << (~vec2<u32>(var_0, var_3) % vec2<u32>(32u)))), min(vec4<u32>(var_0, 4294967295u, var_0, var_3), ~((vec4<u32>(1u, var_0, var_0, var_5.x) << (vec4<u32>(var_0, 23597u, var_0, var_3) % vec4<u32>(32u))) & ~vec4<u32>(20794u, var_3, 0u, var_5.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1161f)), ~(~(var_5 << (vec2<u32>(129229u, 4294967295u) % vec2<u32>(32u)))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(105f, -742f) + 582f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -1326f)), -1084f)));
}

