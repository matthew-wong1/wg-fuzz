struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: f32,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec4<f32>,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(152f, 826f);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32) -> bool {
    var var_0 = Struct_1(!(!vec4<bool>(true, false, any(vec2<bool>(false, true)), any(vec2<bool>(true, true)))), vec2<bool>((-23648i >= _wgslsmith_add_i32(arg_1, 1i)) || (true == all(vec2<bool>(false, true))), select(global0.x == global0.x, true, true)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), 1542f, _wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1580f, global0.x, -1302f) + arg_0))), _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, -1002f), vec3<f32>(global0.x, -1000f, global0.x))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1723f - arg_0.x))), arg_0.x))));
    let var_1 = false;
    let var_2 = vec4<bool>(!var_1, var_0.b.x, !(!(!var_0.b.x)), any(var_0.a));
    var var_3 = 0u;
    let var_4 = Struct_5(_wgslsmith_f_op_f32(-global0.x), vec2<u32>(1u, 1u), Struct_1(select(vec4<bool>(var_0.b.x, !var_2.x, true | var_1, true), vec4<bool>(all(vec3<bool>(var_2.x, false, var_1)), all(vec4<bool>(var_0.a.x, var_0.a.x, true, var_1)), !var_2.x, var_2.x), any(var_2.yyw)), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.e.x), -1331f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1793f, 1742f, 770f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-232f, var_0.d.x, 891f), var_0.d) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 379f, var_0.d.x))))), 1f, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 10081i, -_wgslsmith_mult_i32(40404i, 0i), _wgslsmith_sub_i32(abs(12055i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, arg_1), vec2<i32>(arg_1, 51254i)))), ~abs(vec4<i32>(1i, 38i, -17493i, u_input.a)) & _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(24835i, arg_1, u_input.a, -17189i), vec4<i32>(2147483647i, -44183i, arg_1, 2147483647i)), -vec4<i32>(25178i, u_input.a, arg_1, arg_1))));
    return _wgslsmith_add_i32(~u_input.a, -46715i) >= -46822i;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: vec3<i32>, arg_3: f32) -> bool {
    let var_0 = Struct_3(vec2<i32>(max(1538i, ~(-1i)), _wgslsmith_mult_i32(u_input.a, arg_2.x)) << (~vec2<u32>(max(arg_0.x, 21551u), 64313u) % vec2<u32>(32u)));
    let var_1 = vec2<bool>(!all(!arg_1.c.a.zyy), any(arg_1.c.a.yw));
    let var_2 = Struct_2(arg_1.c.b.x, !(!select(arg_1.c.a.wzx, arg_1.c.a.yxz, arg_1.c.a.xxw)), Struct_1(arg_1.c.a, !vec2<bool>(arg_1.c.a.x, func_3(arg_1.c.d, 43695i)), -731f, arg_1.c.e, arg_1.c.d), arg_1.c);
    let var_3 = arg_1.c;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.e.xy - vec2<f32>(var_3.c, 1095f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_3, global0.x), vec2<f32>(arg_3, var_3.c)))) + arg_1.c.e.xy)) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_3.c), var_2.d.d.x), var_3.d.xz), vec2<f32>(arg_3, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(561f * -1000f)))))));
    return var_3.b.x || var_1.x;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_4) -> i32 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -523f), _wgslsmith_f_op_f32(min(arg_2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.x - -100f) * arg_2.c.x))))), ~vec2<u32>(11447u, select(1u, 4294967295u, false) | 1u), Struct_1(select(select(vec4<bool>(true, arg_2.b, arg_2.b, arg_1), vec4<bool>(true, arg_2.b, true, false), arg_1), !(!vec4<bool>(true, arg_2.b, false, false)), true), !(!vec2<bool>(arg_2.b, arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-388f))) + 952f), arg_2.c.xxw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(700f, global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1800f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.c.x, _wgslsmith_f_op_f32(-944f * global0.x)))))), _wgslsmith_div_i32(abs(1i & (2147483647i | arg_2.a.a.x)), -_wgslsmith_dot_vec2_i32(arg_2.a.a, _wgslsmith_div_vec2_i32(arg_2.a.a, vec2<i32>(1i, arg_0.a.x)))));
    var var_1 = 1493f;
    let var_2 = vec3<bool>((_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(38745i, 9727i, -2147483647i), vec3<i32>(-9761i, 27279i, 1i))) | var_0.e) < _wgslsmith_dot_vec2_i32(~select(vec2<i32>(var_0.e, arg_2.a.a.x), vec2<i32>(1i, 0i), false), max(select(vec2<i32>(11199i, -1i), vec2<i32>(u_input.a, 30563i), var_0.c.b), -arg_0.a)), all(var_0.c.a), !(!func_2(vec3<u32>(var_0.b.x, var_0.b.x, 1u) ^ vec3<u32>(38453u, 14737u, var_0.b.x), Struct_5(arg_2.c.x, vec2<u32>(var_0.b.x, var_0.b.x), Struct_1(var_0.c.a, vec2<bool>(var_0.c.b.x, false), -979f, var_0.c.e, arg_2.c.zwz), var_0.c.e.x, -3882i), vec3<i32>(arg_0.a.x, 2147483647i, var_0.e) >> (vec3<u32>(var_0.b.x, 4294967295u, 0u) % vec3<u32>(32u)), 130f)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(836f * global0.x) * var_0.c.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(378f * 430f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) * _wgslsmith_f_op_f32(-1000f + -450f)))), arg_2.c.x);
    var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), -1075f, _wgslsmith_f_op_f32(-global0.x), 1000f));
    return -arg_2.a.a.x;
}

fn func_1() -> Struct_4 {
    let var_0 = -(~vec4<i32>(u_input.a, countOneBits(i32(-1i) * -69638i), u_input.a, func_4(Struct_3(vec2<i32>(-2147483647i, -2147483647i)), func_2(vec3<u32>(4294967295u, 0u, 42535u), Struct_5(global0.x, vec2<u32>(4294967295u, 40373u), Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(true, false), global0.x, vec3<f32>(536f, 368f, -823f), vec3<f32>(global0.x, 766f, -799f)), 748f, 11190i), vec3<i32>(u_input.a, -2147483647i, -2147483647i), global0.x), Struct_4(Struct_3(vec2<i32>(40106i, u_input.a)), false, vec4<f32>(global0.x, global0.x, global0.x, 787f)))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-855f, global0.x), vec2<f32>(global0.x, 1240f)))) - vec2<f32>(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(select(-2440f, 1545f, true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-917f, global0.x)))));
    var var_1 = -(~_wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, -25517i), -var_0.x & -2147483647i));
    var var_2 = !select(vec4<bool>(true, true, select(all(vec3<bool>(true, true, false)), true, true), all(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), false), vec4<bool>(false, false, true, false), true), true), true);
    let var_3 = Struct_1(vec4<bool>(true, select(var_2.x, all(vec4<bool>(var_2.x, true, var_2.x, var_2.x)) | (var_2.x & true), !all(vec4<bool>(false, true, var_2.x, false))), true, any(select(vec2<bool>(var_2.x, var_2.x), var_2.xx, var_2.yz))), var_2.zz, global0.x, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(floor(-125f)), 153f, global0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1022f, -1239f, -2148f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(578f, global0.x, -325f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-312f, 151f, 422f) + vec3<f32>(global0.x, -1000f, 111f))))));
    return Struct_4(Struct_3(select(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(2147483647i, -32804i)), vec2<i32>(var_0.x, -2147483647i)), vec2<i32>(u_input.a, var_0.x), true)), false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, global0.x, global0.x, global0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(-296f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-478f, _wgslsmith_f_op_f32(step(268f, -528f)))))), _wgslsmith_f_op_f32(-314f * global0.x));
    let var_2 = select(firstLeadingBit(~firstTrailingBit(~0u)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(11199u, 70157u), vec2<u32>(0u, 4294967295u))), abs(reverseBits(max(4294967295u, 63401u))), 53296u), !(!(-u_input.a > -var_0.a.a.x)));
    var var_3 = var_0;
    var var_4 = var_3.a.a & _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, ~var_0.a.a.x), var_0.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.wwx, abs(_wgslsmith_dot_vec3_u32(max(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 16807u, var_2), vec3<u32>(var_2, var_2, var_2)), vec3<u32>(var_2, 44957u, 1u)), _wgslsmith_clamp_vec3_u32(min(vec3<u32>(5009u, var_2, 4226u), vec3<u32>(0u, 24606u, var_2)), ~vec3<u32>(var_2, 1u, 11094u), ~vec3<u32>(var_2, 0u, 11830u)))), global0.x, abs(_wgslsmith_div_vec2_u32(vec2<u32>(var_2, 3416u), ~vec2<u32>(17956u, 0u))) ^ (~min(vec2<u32>(1u, var_2), vec2<u32>(var_2, var_2)) >> (_wgslsmith_mult_vec2_u32(select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(var_2, 20310u), var_0.b), min(vec2<u32>(var_2, 10638u), vec2<u32>(var_2, 24499u))) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 547f, var_3.c.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_0.c))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(917f, 142f, var_0.c.x, global0.x) * var_3.c)))));
}

