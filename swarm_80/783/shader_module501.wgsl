struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(-11211i, -8243i, 2147483647i), 1u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    global1 = Struct_1(select(vec3<i32>(global1.a.x, ~global0.a.x, global1.a.x), vec3<i32>(~(global1.a.x ^ -10146i), 1i, _wgslsmith_add_i32(global0.a.x, global1.a.x) | _wgslsmith_add_i32(global0.a.x, global0.a.x)), any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)) & true), abs(~(~global0.b)));
    var var_0 = true & (any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true))) || true);
    var var_1 = Struct_1(-vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-9516i, 53415i, global0.a.x, global0.a.x), vec4<i32>(-33616i, -2147483647i, 1708i, global1.a.x)), ~vec4<i32>(global0.a.x, global0.a.x, 2147483647i, -7236i)), -19363i, global1.a.x), 27687u);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(827f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-512f)) + _wgslsmith_f_op_f32(-1000f + 718f)))), _wgslsmith_f_op_f32(max(-1401f, _wgslsmith_f_op_f32(-152f + _wgslsmith_div_f32(-1000f, -1378f))))));
    var var_3 = vec4<i32>(_wgslsmith_clamp_i32(29095i, abs(_wgslsmith_mult_i32(-22534i, 22327i)), 1i) << (1u % 32u), global0.a.x, -53812i, -26977i);
    return !all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), !all(vec3<bool>(false, true, false))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>) -> vec4<i32> {
    global1 = Struct_1(vec3<i32>(global1.a.x, -17364i, global1.a.x), u_input.b.x);
    var var_0 = select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, func_3()), true || func_3()), true);
    global1 = Struct_1(global1.a, ~u_input.a.x);
    let var_1 = vec2<bool>(false, true);
    let var_2 = !any(select(select(select(vec3<bool>(var_1.x, false, true), vec3<bool>(var_1.x, var_0.x, var_1.x), vec3<bool>(true, var_0.x, var_0.x)), !vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_0.x, var_0.x, false)), vec3<bool>(true, var_0.x && false, false), vec3<bool>(all(vec4<bool>(var_1.x, var_0.x, true, false)), any(vec4<bool>(false, var_0.x, false, false)), true)));
    return ~vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(global1.a.x, 0i, 26924i), ~vec3<i32>(2147483647i, 1i, 2147483647i)) >> (~max(global1.b, 55079u) % 32u), _wgslsmith_add_i32(41507i, _wgslsmith_mod_i32(global1.a.x, ~1i)), _wgslsmith_dot_vec3_i32(abs(~global0.a), global0.a), global0.a.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = true;
    global1 = arg_2.a;
    return Struct_1(-global1.a, arg_2.a.b);
}

fn func_1() -> Struct_1 {
    let var_0 = global1.a.x;
    global0 = Struct_1(global0.a, countOneBits(_wgslsmith_clamp_u32(1u, ~1u, global1.b)));
    let var_1 = u_input.b;
    let var_2 = global1.b;
    let var_3 = global1.a.x;
    return func_4(~(~(func_2(vec3<f32>(-2307f, 1120f, -183f), vec2<u32>(var_1.x, u_input.b.x)) & _wgslsmith_add_vec4_i32(vec4<i32>(8975i, 37298i, 19869i, global1.a.x), vec4<i32>(global0.a.x, global1.a.x, global0.a.x, global0.a.x)))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(923f * 966f), 1090f), 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1984f) + _wgslsmith_f_op_f32(trunc(-1116f)))), -1000f), Struct_2(Struct_1(vec3<i32>(_wgslsmith_mult_i32(global0.a.x, -29943i), 2147483647i, global0.a.x), 64740u), global1.a.xx, Struct_1(-(global1.a & vec3<i32>(global1.a.x, global1.a.x, global1.a.x)), ~(~4294967295u)), -(~32519i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = ~vec3<i32>(_wgslsmith_add_i32(i32(-1i) * -77614i, ~1i), countOneBits(i32(-1i) * -40679i), ~firstLeadingBit(41795i) & min(-1i, global1.a.x & global0.a.x));
    global0 = func_4(select(~firstTrailingBit(vec4<i32>(1i, global1.a.x, var_0.x, 2147483647i)), vec4<i32>(~(-1i), countOneBits(-3905i), firstTrailingBit(5302i), _wgslsmith_div_i32(-46745i, global1.a.x)) | vec4<i32>(~2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, global0.a.x, global0.a.x, global0.a.x), vec4<i32>(global0.a.x, global0.a.x, global0.a.x, 1i)), _wgslsmith_mult_i32(var_0.x, global0.a.x), 2147483647i), any(vec4<bool>(select(true, false, true), true, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1085f, 180f, 923f)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(161f, -297f, 2017f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(558f, -565f, 691f)))))), Struct_2(Struct_1(var_0, ~(~6494u)), vec2<i32>(global1.a.x, func_4(vec4<i32>(global1.a.x, -1i, global1.a.x, 16822i) & vec4<i32>(global1.a.x, -39658i, -27186i, var_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-164f, -2415f, 1000f) - vec3<f32>(-1155f, -841f, 1239f)), Struct_2(Struct_1(global0.a, global0.b), global1.a.xx, Struct_1(global1.a, global1.b), -1i)).a.x), Struct_1(-firstLeadingBit(vec3<i32>(global1.a.x, global1.a.x, global1.a.x)), 1u), -25404i));
    let var_1 = func_4(-vec4<i32>(var_0.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(19084i, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.x, -1i, var_0.x), var_0)), func_1().a.x, func_1().a.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(460f, 417f, true))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1322f))) + 238f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, -1000f)), -253f)), Struct_2(func_4(vec4<i32>(_wgslsmith_clamp_i32(var_0.x, 395i, 1i), var_0.x, ~0i, -1i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1263f, -102f, 135f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(133f, 654f, -739f)), true)), Struct_2(Struct_1(vec3<i32>(global0.a.x, var_0.x, 2147483647i), 28326u), -vec2<i32>(-2147483647i, -66834i), Struct_1(global1.a, global1.b), global0.a.x)), global1.a.zy >> (vec2<u32>(~u_input.a.x, max(global1.b, global0.b)) % vec2<u32>(32u)), Struct_1(~reverseBits(global0.a), _wgslsmith_mult_u32(global0.b, 61714u)), global1.a.x));
    let var_2 = vec2<u32>(func_1().b, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(_wgslsmith_mult_u32(global0.b, 43338u), ~2498u, 76635u)), ~(u_input.a.wxx << (u_input.a.yyz % vec3<u32>(32u))) | vec3<u32>(~0u, _wgslsmith_mod_u32(0u, global1.b), abs(22942u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(global0.b & _wgslsmith_div_u32(var_1.b, 4294967295u)), var_0.zz ^ (vec2<i32>(-global0.a.x, func_2(vec3<f32>(-1199f, -231f, -881f), vec2<u32>(global1.b, global1.b)).x) ^ vec2<i32>(func_1().a.x, _wgslsmith_sub_i32(1i, -615i))), -195f, firstTrailingBit(var_0));
}

