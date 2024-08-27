struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(false, 50247u, vec2<bool>(false, true), 8488i, true), Struct_1(true, 114730u, vec2<bool>(true, true), i32(-2147483648), false), Struct_1(true, 82718u, vec2<bool>(false, true), -1i, true), Struct_1(false, 57744u, vec2<bool>(false, true), 5398i, false), Struct_1(true, 0u, vec2<bool>(false, false), -3313i, false), Struct_1(false, 67677u, vec2<bool>(true, false), 83507i, true), Struct_1(false, 21989u, vec2<bool>(false, true), 0i, false), Struct_1(true, 4294967295u, vec2<bool>(false, false), 29167i, true), Struct_1(false, 26327u, vec2<bool>(true, false), 0i, true), Struct_1(false, 89324u, vec2<bool>(true, true), 29487i, true), Struct_1(true, 0u, vec2<bool>(false, false), 0i, true), Struct_1(true, 1u, vec2<bool>(false, false), -42985i, false), Struct_1(true, 36449u, vec2<bool>(true, false), 2147483647i, false), Struct_1(false, 25595u, vec2<bool>(true, false), -51021i, true), Struct_1(true, 15707u, vec2<bool>(false, false), 1i, false), Struct_1(false, 31363u, vec2<bool>(true, true), 3750i, true));

var<private> global1: vec2<i32>;

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

var<private> global3: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global4: array<Struct_2, 7>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec2<bool> {
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    global3 = array<vec2<bool>, 27>();
    global1 = countOneBits(_wgslsmith_clamp_vec2_i32(min(abs(abs(u_input.c.xx)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, arg_1.d), vec2<i32>(9761i, -2147483647i))), vec2<i32>((u_input.c.x & u_input.c.x) | abs(5932i), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(global1.x, 2147483647i, global1.x, u_input.c.x)), vec4<i32>(u_input.c.x, -2024i, 2147483647i, global1.x) ^ vec4<i32>(1i, -17420i, -27487i, arg_1.d))), vec2<i32>(2147483647i, _wgslsmith_sub_i32(-1i, -3955i) | -global1.x)));
    let var_0 = arg_1.d << (_wgslsmith_mult_u32(countOneBits(37796u), ~arg_0) % 32u);
    return select(select(select(!select(vec2<bool>(false, true), global2.yy, vec2<bool>(arg_1.e, arg_1.e)), !(!global3[_wgslsmith_index_u32(60548u, 27u)]), -27344i < ~global1.x), vec2<bool>(true, any(!vec3<bool>(arg_1.c.x, arg_1.a, false))), !(!select(arg_1.c, vec2<bool>(arg_1.a, false), false))), arg_1.c, global2.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: f32) -> vec4<i32> {
    var var_0 = Struct_1(all(vec3<bool>(true, true, !(global2.x & global2.x))), ~_wgslsmith_add_u32(~u_input.d >> (countOneBits(69894u) % 32u), u_input.b.x), !select(vec2<bool>(true, false), global3[_wgslsmith_index_u32(1u << (u_input.a.x % 32u), 27u)], global2.yx), 1i, any(!(!(!vec3<bool>(true, global2.x, true)))));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 4294967295u), 16u)];
    global3 = array<vec2<bool>, 27>();
    let var_1 = vec4<bool>(true, var_0.e, var_0.c.x, var_0.c.x);
    global2 = select(var_1.zzw, var_1.wzy, !(!(!var_0.e) || all(func_3(60011u, global0[_wgslsmith_index_u32(4294967295u, 16u)]))));
    return ~vec4<i32>(2147483647i, firstTrailingBit(var_0.d & -48818i) << (var_0.b % 32u), _wgslsmith_div_i32(arg_0.x, select(0i, var_0.d, global2.x)) | var_0.d, 31341i);
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = arg_0;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -125f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-191f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2358f)) + _wgslsmith_f_op_f32(ceil(713f)))))), _wgslsmith_f_op_f32(917f * -128f));
    var var_2 = Struct_1(false, 1u, select(vec2<bool>(arg_1.e, u_input.c.x >= arg_1.d), vec2<bool>(!all(global2.zx), (arg_0 < 1i) & arg_1.c.x), false), _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, global1.x, min(1i, 1i), arg_1.d), _wgslsmith_add_vec4_i32(~func_2(u_input.c.zy, vec3<f32>(-466f, -898f, -324f), var_1.x), func_2(vec2<i32>(arg_1.d, -40439i), vec3<f32>(771f, 3187f, -1000f), _wgslsmith_f_op_f32(var_1.x * var_1.x)))), true);
    global4 = array<Struct_2, 7>();
    let var_3 = Struct_2(firstTrailingBit(arg_1.b), vec4<i32>(15250i, global1.x, firstLeadingBit(abs(global1.x)), -9327i) | vec4<i32>(u_input.c.x, firstTrailingBit(min(-1i, -2147483647i)), var_2.d << (1u % 32u), var_2.d), _wgslsmith_mod_i32(1i, ~(~select(0i, arg_0, true))), arg_1, u_input.a.x);
    return _wgslsmith_sub_u32(var_3.e, ~3983u);
}

fn func_4(arg_0: f32, arg_1: u32) -> vec3<f32> {
    let var_0 = global4[_wgslsmith_index_u32(~8032u, 7u)];
    global2 = select(!(!vec3<bool>(all(vec4<bool>(var_0.d.c.x, var_0.d.c.x, false, var_0.d.c.x)), !global2.x, false)), !select(!vec3<bool>(global2.x, false, false), !vec3<bool>(var_0.d.a, false, true), select(select(vec3<bool>(var_0.d.c.x, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, var_0.d.a, false), true)), any(!select(!vec3<bool>(global2.x, true, var_0.d.c.x), vec3<bool>(global2.x, true, false), var_0.d.a)));
    var var_1 = abs(reverseBits(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, -2147483647i) >> ((vec2<u32>(4294967295u, 1u) ^ u_input.b) % vec2<u32>(32u)), ~countOneBits(u_input.c.yx))));
    global2 = select(!(!vec3<bool>(all(global2.xx), func_3(arg_1, Struct_1(var_0.d.a, u_input.b.x, var_0.d.c, global1.x, var_0.d.e)).x, global2.x)), vec3<bool>(global2.x, global2.x || ((-18366i & global1.x) > ~66735i), (true && !var_0.d.e) & true), all(select(select(!vec4<bool>(global2.x, true, true, false), select(vec4<bool>(global2.x, var_0.d.e, global2.x, false), vec4<bool>(global2.x, var_0.d.c.x, false, false), vec4<bool>(global2.x, global2.x, var_0.d.a, global2.x)), vec4<bool>(global2.x, var_0.d.a, global2.x, true)), select(vec4<bool>(false, true, true, false), select(vec4<bool>(var_0.d.e, true, var_0.d.e, true), vec4<bool>(false, false, false, false), vec4<bool>(var_0.d.e, global2.x, true, true)), false), !select(vec4<bool>(global2.x, global2.x, var_0.d.a, false), vec4<bool>(var_0.d.c.x, global2.x, var_0.d.c.x, global2.x), vec4<bool>(true, global2.x, true, true)))));
    global4 = array<Struct_2, 7>();
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-893f, -930f, 530f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(589f, 707f, arg_0))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, 1058f, 1000f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(648f, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-510f, arg_0, arg_0) + vec3<f32>(arg_0, 523f, arg_0)))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1000f, _wgslsmith_f_op_f32(round(1074f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1628f, arg_0, 1808f) * vec3<f32>(arg_0, arg_0, arg_0)))) - vec3<f32>(_wgslsmith_f_op_f32(arg_0 + -594f), -693f, arg_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(select(836f, 1f, true & global2.x)), (max(_wgslsmith_div_u32(u_input.b.x, u_input.d), ~0u) << (~func_1(u_input.c.x, Struct_1(false, 4294967295u, vec2<bool>(false, global2.x), u_input.c.x, global2.x)) % 32u)) & ~u_input.b.x));
    let var_2 = abs(u_input.b.x);
    var_0 = u_input.c.x <= global1.x;
    let var_3 = 9465u;
    var var_4 = select(!vec4<bool>(true, true, global2.x, false), select(!vec4<bool>(all(vec4<bool>(global2.x, global2.x, global2.x, global2.x)), false, var_3 > var_2, false), !select(vec4<bool>(true, false, global2.x, global2.x), vec4<bool>(true, true, true, true), select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(global2.x, global2.x, global2.x, global2.x), global2.x)), func_3(~var_2 ^ 4294967295u, global0[_wgslsmith_index_u32(var_2, 16u)]).x), vec4<bool>(u_input.b.x != ~var_2, !((470f == var_1.x) & global2.x), global2.x, ~(-1i >> (0u % 32u)) >= _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.c.x, -14928i, 2147483647i), vec4<i32>(1i, 1i, -2147483647i, 34422i)), vec4<i32>(global1.x, global1.x, global1.x, 0i) << (vec4<u32>(92234u, u_input.b.x, 37058u, u_input.b.x) % vec4<u32>(32u)))));
    let var_5 = _wgslsmith_add_vec3_u32(~(~abs(u_input.a)), u_input.a) & u_input.a;
    var var_6 = Struct_2(~var_2 & ~u_input.b.x, _wgslsmith_div_vec4_i32(vec4<i32>(~(~(-36018i)), _wgslsmith_div_i32(~global1.x, reverseBits(global1.x)), ~reverseBits(0i), max(u_input.c.x, -2147483647i)), abs(countOneBits(vec4<i32>(-1i, u_input.c.x, 0i, u_input.c.x)) >> (~vec4<u32>(var_2, 47481u, var_2, 4294967295u) % vec4<u32>(32u)))), firstTrailingBit(-global1.x), global0[_wgslsmith_index_u32(47825u, 16u)], u_input.d);
    var var_7 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(~0u, ~(~(~10858u))), _wgslsmith_add_u32(var_2, var_2)), 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(~var_7.d, -var_6.b);
}

