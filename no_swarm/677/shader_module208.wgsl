struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
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

var<private> global0: array<vec2<f32>, 21>;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    var var_0 = true;
    let var_1 = Struct_3(Struct_2(select(!select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), select(false, true, 0u >= u_input.d.x))), Struct_2(vec2<bool>(select(true, false, true), any(vec4<bool>(false, true, true, false)) | true)));
    global0 = array<vec2<f32>, 21>();
    global0 = array<vec2<f32>, 21>();
    let var_2 = var_1;
    return ~(~(~u_input.c.x) ^ u_input.c.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_2) -> vec4<f32> {
    let var_0 = Struct_1(vec2<i32>(-1i) * -global1.a, u_input.a.x, -global1.a.x, vec4<u32>(select(0u, 0u, true), u_input.c.x, 1u, ~(~u_input.d.x) & _wgslsmith_mod_u32(func_3(), u_input.d.x)));
    let var_1 = Struct_3(arg_2, Struct_2(vec2<bool>(arg_2.a.x, all(select(arg_2.a, arg_2.a, arg_2.a)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -566f), arg_0.x, any(vec4<bool>(true, arg_2.a.x, true, true)))))));
    let var_3 = ~_wgslsmith_mod_i32(u_input.b, -1i);
    global0 = array<vec2<f32>, 21>();
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2, -287f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2929f)), _wgslsmith_f_op_f32(arg_0.x * -958f))))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(!vec2<bool>(u_input.e.x >= arg_2.b, false)), Struct_2(vec2<bool>(_wgslsmith_f_op_f32(arg_1 - arg_3.x) < _wgslsmith_f_op_f32(step(1000f, arg_3.x)), _wgslsmith_div_u32(25339u, global1.d.x) < arg_2.d.x)));
    return Struct_2(!select(!var_0.a.a, arg_0.a, vec2<bool>(arg_0.a.x, false)));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1440f, 1704f)))));
    var var_1 = Struct_3(func_4(Struct_2(vec2<bool>(true, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -351f) - 1f))), Struct_1(vec2<i32>(5742i, u_input.e.x), 0i, firstTrailingBit(-29305i), _wgslsmith_sub_vec4_u32(~vec4<u32>(46426u, u_input.c.x, 24558u, 4294967295u), ~vec4<u32>(11877u, u_input.c.x, 1u, 8180u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1346f, 1000f, -101f)), ~vec4<i32>(30933i, -28115i, 2147483647i, global1.a.x), Struct_2(vec2<bool>(true, false)))) + vec4<f32>(_wgslsmith_f_op_f32(-1204f + -957f), -122f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -792f)))), Struct_2(func_4(func_4(func_4(Struct_2(vec2<bool>(false, false)), -1537f, Struct_1(u_input.a.yz, 1i, global1.a.x, global1.d), vec4<f32>(-1599f, -378f, 489f, -104f)), _wgslsmith_f_op_f32(max(1000f, -1705f)), Struct_1(global1.a, u_input.b, global1.b, global1.d), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(920f, -136f, 1896f, 724f), vec4<f32>(328f, -974f, 1417f, 1108f), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-395f))), Struct_1(_wgslsmith_sub_vec2_i32(global1.a, u_input.a.zz), ~(-595i), _wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(1i, -50542i, -34466i, -56690i)), vec4<u32>(global1.d.x, 0u, global1.d.x, global1.d.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1025f, -2035f, 557f, -841f) - vec4<f32>(-600f, 282f, 472f, -352f)) * vec4<f32>(691f, 387f, -611f, 1377f))).a));
    var var_2 = Struct_1(vec2<i32>((global1.c | select(u_input.a.x, 35758i, true)) ^ ~global1.c, min(_wgslsmith_mult_i32(global1.b, _wgslsmith_mod_i32(0i, global1.a.x)), _wgslsmith_mult_i32(u_input.e.x, 8348i) & reverseBits(2147483647i))), _wgslsmith_div_i32(global1.b, -firstLeadingBit(-1i)), _wgslsmith_div_i32(min(~1i, -global1.a.x) ^ (i32(-1i) * -1i), ~2147483647i), ~(vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, 4294967295u), ~global1.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.d.x, u_input.c.x), vec2<u32>(54336u, 36039u)), u_input.c.x) & (vec4<u32>(106722u, global1.d.x, u_input.c.x, 1u) >> (~vec4<u32>(1u, global1.d.x, global1.d.x, u_input.d.x) % vec4<u32>(32u)))));
    var var_3 = ~(~global1.c);
    var_2 = Struct_1(-vec2<i32>(-1i, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_add_i32(u_input.b, var_2.a.x))), _wgslsmith_div_i32(_wgslsmith_mod_i32(var_2.b, var_2.b), max(var_2.c, global1.a.x)), global1.a.x, ~(~countOneBits(var_2.d ^ global1.d)));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(i32(-1i) * -1i, func_1());
    var var_1 = 2147483647i;
    var var_2 = u_input.a.x;
    var var_3 = func_4(func_4(Struct_2(select(func_4(Struct_2(vec2<bool>(true, false)), -792f, Struct_1(vec2<i32>(2147483647i, global1.b), -1i, u_input.b, vec4<u32>(u_input.d.x, u_input.d.x, u_input.c.x, global1.d.x)), vec4<f32>(1000f, -497f, 324f, 905f)).a, vec2<bool>(false, false), true)), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(569f, -141f, 1113f), vec3<f32>(-621f, -177f, 573f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1106f, -490f, 385f) + vec3<f32>(-665f, -2257f, -165f)), vec3<bool>(true, true, true))), vec4<i32>(func_1(), ~u_input.e.x, -2147483647i >> (u_input.d.x % 32u), 1i), func_4(Struct_2(vec2<bool>(false, false)), _wgslsmith_f_op_f32(f32(-1f) * -1428f), Struct_1(vec2<i32>(15616i, -2147483647i), -37347i, 17312i, global1.d), vec4<f32>(1f, 1f, 1f, 1f)))).x, Struct_1(vec2<i32>(u_input.a.x, -25218i) ^ global1.a, _wgslsmith_add_i32(u_input.e.x, firstTrailingBit(10360i)), ~u_input.a.x, select(_wgslsmith_clamp_vec4_u32(global1.d, vec4<u32>(0u, 1u, u_input.c.x, 4294967295u), global1.d), vec4<u32>(u_input.d.x, 1u, global1.d.x, global1.d.x), vec4<bool>(true, false, false, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(135f, -660f, 237f, -841f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -1027f, 240f, -773f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1153f, -1456f, -2711f, -1484f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(475f - _wgslsmith_f_op_f32(f32(-1f) * -294f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(519f, -649f)) - _wgslsmith_f_op_f32(f32(-1f) * -340f)), true))), Struct_1(u_input.a.yy, u_input.b, u_input.b, ~reverseBits(~global1.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-1702f, _wgslsmith_div_f32(845f, 1129f), 24488i > u_input.b)), 798f, -257f, -479f)));
    let var_4 = _wgslsmith_mult_u32(min(~1u, ~(~(global1.d.x & 1u))), countOneBits(reverseBits(_wgslsmith_div_u32(1u, 43020u))));
    let var_5 = global1.d;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(abs(0u)));
}

