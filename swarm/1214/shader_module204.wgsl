struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<f32>(1872f, -600f, -1000f, 2275f)), vec2<i32>(44345i, i32(-2147483648)), true, 1u);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec3<i32>) -> i32 {
    return 1i;
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: f32) -> u32 {
    var var_0 = global0.a;
    global0 = Struct_2(global0.a, ~global0.b, ~(~(~global0.d)) <= 51142u, _wgslsmith_mult_u32(countOneBits(~(~31166u)), 31662u));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.a, global0.a.a)));
    global0 = Struct_2(Struct_1(vec4<f32>(-302f, _wgslsmith_f_op_f32(global0.a.a.x * _wgslsmith_f_op_f32(select(arg_2, -337f, global0.c))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -277f)))), _wgslsmith_sub_vec2_i32(global0.b, global0.b), any(!vec2<bool>(true, global0.c)), global0.d);
    let var_1 = true;
    return _wgslsmith_clamp_u32(~(~min(arg_1.x, ~arg_1.x)), global0.d, _wgslsmith_dot_vec2_u32(select(~arg_1.yx, _wgslsmith_mod_vec2_u32(arg_1.yw, arg_1.xw), false), ~min(vec2<u32>(103061u, 67557u), vec2<u32>(arg_1.x, arg_1.x))) | 36419u);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    global0 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_f_op_f32(arg_2.a.x + global0.a.a.x), global0.c)), arg_3.a.x, global0.a.a.x, _wgslsmith_f_op_f32(-1000f + 568f))), global0.b, !(90549i >= countOneBits(firstLeadingBit(global0.b.x))), func_4(~func_3(-1000f, true, vec3<i32>(-64040i, 0i, global0.b.x)), vec4<u32>(~58159u, firstLeadingBit(countOneBits(arg_0.x)), 4294967295u, 47018u), _wgslsmith_f_op_f32(arg_3.a.x * arg_2.a.x)));
    var var_0 = -1370f;
    var var_1 = global0.a;
    var var_2 = _wgslsmith_div_i32(~u_input.a, -(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(global0.b, global0.b), ~(-1i), global0.b.x ^ global0.b.x) | u_input.a));
    var_1 = global0.a;
    return all(select(vec2<bool>(true, any(vec3<bool>(false, true, global0.c))), select(vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(true, false, global0.c, global0.c))), vec2<bool>(false, true)), !(!(!vec2<bool>(false, global0.c)))));
}

fn func_5(arg_0: f32) -> Struct_2 {
    let var_0 = global0.a;
    var var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(~max(vec3<u32>(17521u, global0.d, global0.d), vec3<u32>(global0.d, global0.d, 12247u)) << ((~vec3<u32>(0u, 4294967295u, 0u) | vec3<u32>(0u, global0.d, global0.d)) % vec3<u32>(32u)), ~(vec3<u32>(global0.d, 16932u, 61141u) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(global0.d, 0u, global0.d), vec3<u32>(global0.d, global0.d, 15753u)) % vec3<u32>(32u)))), ~vec3<u32>(abs(global0.d) | select(1u, global0.d, global0.c), global0.d, _wgslsmith_sub_u32(_wgslsmith_div_u32(0u, 120855u), global0.d)));
    return Struct_2(global0.a, max(abs(firstTrailingBit(vec2<i32>(0i, -1445i))), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(global0.b, global0.b) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 24496i), vec2<i32>(-2966i, u_input.a), vec2<i32>(-29930i, u_input.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, global0.b.x), vec2<i32>(u_input.a, 28584i)) | global0.b)), global0.c, 83794u);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_3) -> i32 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.x), -729f) - global0.a.a.x), _wgslsmith_f_op_f32(trunc(940f)), arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x * arg_1.a.x) - _wgslsmith_f_op_f32(select(-764f, 792f, arg_0.x))))));
    global0 = func_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(325f, 315f), _wgslsmith_f_op_f32(ceil(-115f)), func_2(vec4<u32>(global0.d, 0u, global0.d, 1u), vec3<u32>(25387u, 67884u, global0.d), Struct_3(var_0.a.wwx), arg_1) || all(vec2<bool>(false, arg_0.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(157f - -472f), global0.c)))), true)));
    var var_1 = _wgslsmith_mult_i32(5479i, firstLeadingBit(~_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a, -4017i), global0.b.x)));
    var_1 = _wgslsmith_mult_i32(u_input.a >> (global0.d % 32u), -reverseBits(-countOneBits(-35304i)));
    var_1 = ~(-_wgslsmith_mod_i32(u_input.a, u_input.a) ^ global0.b.x) ^ (i32(-1i) * -21272i);
    return select(u_input.a, u_input.a, func_5(-156f).c) >> (_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(global0.d, ~global0.d, ~1u)), ~vec3<u32>(global0.d, global0.d, global0.d)) % 32u);
}

fn func_6(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: vec3<bool>) -> vec2<i32> {
    let var_0 = ~global0.d;
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a.a)))), arg_1.yz, !global0.c, global0.d);
    global0 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(global0.a.a)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(518f, arg_2.a.x, 590f, arg_2.a.x), global0.a.a, vec4<bool>(true, global0.c, global0.c, true))), true)), _wgslsmith_div_vec4_f32(global0.a.a, _wgslsmith_div_vec4_f32(vec4<f32>(-895f, global0.a.a.x, arg_2.a.x, arg_2.a.x), global0.a.a)))), ~(~(-_wgslsmith_sub_vec2_i32(vec2<i32>(global0.b.x, 0i), vec2<i32>(arg_0.x, 0i)))), ~arg_1.x != -(~global0.b.x), ~84299u | var_0);
    global0 = Struct_2(func_5(_wgslsmith_f_op_f32(round(1000f))).a, ~vec2<i32>(min(~2147483647i, -2147483647i), -(global0.b.x ^ arg_0.x)), false, var_0 >> (~select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, var_0), vec3<u32>(4294967295u, 0u, global0.d)), ~var_0, false) % 32u));
    var var_1 = global0.c;
    return ~(select(vec2<i32>(0i, -3972i) | max(vec2<i32>(global0.b.x, u_input.a), vec2<i32>(global0.b.x, 1i)), vec2<i32>(u_input.a, 55782i) & ~vec2<i32>(arg_1.x, -9602i), func_2(~vec4<u32>(4294967295u, var_0, var_0, var_0), vec3<u32>(1u, global0.d, 0u) & vec3<u32>(global0.d, 52443u, global0.d), Struct_3(arg_2.a), arg_2)) | global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    global0 = Struct_2(global0.a, func_6(firstTrailingBit(vec4<i32>(2147483647i, -1i, global0.b.x, -13247i)), vec3<i32>(func_1(vec2<bool>(global0.c, true), Struct_3(global0.a.a.wzy)), u_input.a, 10429i), Struct_3(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.a.a.x, 758f, global0.a.a.x), vec3<f32>(global0.a.a.x, global0.a.a.x, global0.a.a.x)))), select(vec3<bool>(global0.c, global0.c, global0.c), vec3<bool>(global0.c, global0.c, true), !vec3<bool>(true, global0.c, true))) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(global0.d, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.d, global0.d, 63520u), vec4<u32>(65506u, 43615u, 21005u, 0u))), reverseBits(~vec2<u32>(4294967295u, var_0))) % vec2<u32>(32u)), false & global0.c, 17852u);
    var var_1 = !(!(!vec4<bool>(!global0.c, u_input.a > global0.b.x, true, global0.a.a.x <= 362f)));
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1359f, 894f, _wgslsmith_f_op_f32(floor(868f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a.x, global0.a.a.x, global0.a.a.x, global0.a.a.x)))))), _wgslsmith_clamp_vec2_i32(abs(global0.b) | vec2<i32>(i32(-1i) * -1434i, -1i >> (global0.d % 32u)), global0.b, select(vec2<i32>(_wgslsmith_sub_i32(-17144i, u_input.a), select(2147483647i, 0i, global0.c)), min(select(vec2<i32>(70095i, u_input.a), vec2<i32>(u_input.a, -39413i), var_1.zw), vec2<i32>(0i, -2147483647i)), !select(var_1.zz, var_1.zx, false))), true, ~(~(~37713u)));
    let var_2 = Struct_4(global0.a);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a.x)), var_2.a.a.x)), _wgslsmith_f_op_f32(abs(var_2.a.a.x)));
    var var_4 = var_2;
    var var_5 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.a.x, _wgslsmith_f_op_f32(-1243f * _wgslsmith_div_f32(var_4.a.a.x, 1148f)), _wgslsmith_f_op_f32(sign(global0.a.a.x)), 1650f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(~vec4<u32>(global0.d, global0.d, 32682u, 0u)) >> (~countOneBits(vec4<u32>(11495u, global0.d, var_0, global0.d)) % vec4<u32>(32u))), global0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))));
}

