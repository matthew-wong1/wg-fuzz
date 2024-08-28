struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> u32 {
    let var_0 = ~4294967295u;
    let var_1 = true;
    var var_2 = !arg_0.a.a;
    let var_3 = ~arg_3;
    var_2 = arg_0.a.a;
    return ~arg_3;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_2) -> f32 {
    var var_0 = arg_1.a;
    let var_1 = select(var_0.a.x, any(vec4<bool>(arg_1.a.a.x, false, _wgslsmith_f_op_f32(select(var_0.e.x, var_0.c.x, true)) > -675f, select(true, arg_1.a.a.x, arg_2.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1168f))) == -1248f);
    var_0 = Struct_1(!vec3<bool>(false, var_0.a.x, !select(false, false, arg_1.a.a.x)), vec3<i32>(u_input.c.x, abs(arg_0.x), i32(-1i) * -35596i) | vec3<i32>(-2147483647i, countOneBits(24874i), -reverseBits(-1i)), var_0.c, vec4<i32>(_wgslsmith_dot_vec3_i32(abs(-var_0.d.wxw), -_wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, arg_0.x, 2147483647i))), abs(arg_1.a.d.x), arg_0.x, i32(-1i) * -min(arg_1.b.x, arg_2.a.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2294f, -241f, arg_1.a.e.x, 625f), vec4<f32>(arg_1.a.c.x, 457f, 144f, 400f))))))));
    var_0 = arg_2.a;
    var var_2 = select(!(!(!vec4<bool>(false, false, var_0.a.x, arg_1.a.a.x))), vec4<bool>(var_0.a.x, arg_2.a.a.x, true, true), true);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.c.x)) + arg_2.a.c.x))), _wgslsmith_f_op_f32(floor(arg_2.a.e.x)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: i32) -> Struct_3 {
    var var_0 = vec4<i32>(_wgslsmith_sub_i32(firstTrailingBit(1i), i32(-1i) * -2147483647i), arg_3, arg_1.b.x, u_input.c.x);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.e.x * arg_1.e.x) * _wgslsmith_f_op_f32(-1070f - arg_1.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-381f, _wgslsmith_f_op_f32(-arg_0.e.x)) - arg_1.c.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.e.x - arg_2.x), _wgslsmith_div_f32(1515f, arg_0.e.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.e.x), 2045f))));
    var var_2 = arg_0.c;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, 567f, true)))) + arg_0.e.x) != -435f;
    let var_4 = max(_wgslsmith_div_vec2_i32(abs(arg_1.d.yx), countOneBits(vec2<i32>(arg_0.b.x, -399i) >> (_wgslsmith_mult_vec2_u32(u_input.a.yx, u_input.a.zx) % vec2<u32>(32u)))), vec2<i32>(arg_0.b.x << (0u % 32u), u_input.c.x << (func_2(Struct_2(Struct_1(vec3<bool>(false, arg_1.a.x, false), vec3<i32>(-35093i, -2638i, 4644i), arg_1.c, arg_1.d, arg_0.e)), select(arg_1.a.x, arg_0.a.x, false), Struct_1(arg_1.a, vec3<i32>(2147483647i, 14931i, 1i), vec3<f32>(arg_1.c.x, arg_0.c.x, arg_0.c.x), vec4<i32>(-2147483647i, 0i, u_input.b, 13231i), vec4<f32>(-1434f, var_1.x, 167f, -1040f)), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 31528u))) % 32u)));
    return Struct_3(Struct_1(vec3<bool>(!arg_0.a.x, arg_0.a.x, u_input.a.x >= _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), -_wgslsmith_mod_vec3_i32(vec3<i32>(var_4.x, 1i, 4549i), ~u_input.c), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(sign(-1226f)), -262f))), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_0.d, select(vec4<i32>(-3283i, 1i, arg_1.d.x, arg_1.d.x), vec4<i32>(var_0.x, var_0.x, u_input.b, -10513i), arg_0.a.x), reverseBits(arg_0.d)), -(~vec4<i32>(var_4.x, 2147483647i, u_input.b, -1i))), vec4<f32>(_wgslsmith_f_op_f32(func_3(-vec2<i32>(2147483647i, -2147483647i), Struct_3(arg_1, arg_0.d), Struct_2(Struct_1(arg_1.a, vec3<i32>(var_4.x, 2147483647i, arg_3), vec3<f32>(-1449f, 1087f, 854f), arg_1.d, vec4<f32>(-1773f, arg_0.c.x, arg_1.c.x, arg_0.c.x))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1181f * 867f))), arg_1.c.x, arg_1.e.x)), vec4<i32>(u_input.c.x & firstLeadingBit(-arg_0.b.x), 2147483647i, arg_0.b.x, var_4.x));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_3, arg_3: bool) -> vec4<bool> {
    return select(select(vec4<bool>(any(arg_2.a.a.xy) != any(vec4<bool>(arg_2.a.a.x, false, arg_3, arg_3)), true, _wgslsmith_f_op_f32(-arg_2.a.e.x) <= _wgslsmith_f_op_f32(174f * 1279f), true), select(vec4<bool>(u_input.a.x >= 76249u, -15702i != arg_1, arg_3, arg_2.a.a.x && arg_3), select(!vec4<bool>(false, true, arg_3, arg_3), select(vec4<bool>(false, false, arg_2.a.a.x, arg_3), vec4<bool>(true, arg_3, true, arg_2.a.a.x), vec4<bool>(arg_3, arg_3, false, arg_2.a.a.x)), arg_3), false), !select(select(vec4<bool>(arg_2.a.a.x, false, arg_3, true), vec4<bool>(arg_2.a.a.x, arg_3, false, false), vec4<bool>(arg_2.a.a.x, arg_3, arg_3, arg_2.a.a.x)), !vec4<bool>(arg_2.a.a.x, arg_3, true, true), 1u != arg_0)), vec4<bool>(!(u_input.a.x != 21165u), true, false, arg_2.a.a.x || select(true, !arg_3, arg_2.a.a.x)), arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, all(func_4(~u_input.a.x, u_input.b, func_1(Struct_1(vec3<bool>(false, false, true), u_input.c, vec3<f32>(-1000f, 1905f, -1000f), vec4<i32>(u_input.c.x, u_input.b, u_input.b, u_input.b), vec4<f32>(741f, 555f, -772f, -1395f)), Struct_1(vec3<bool>(false, true, false), vec3<i32>(26143i, 35486i, -1i), vec3<f32>(1194f, -666f, -1014f), vec4<i32>(u_input.b, 0i, u_input.b, u_input.c.x), vec4<f32>(1211f, -518f, 287f, 1595f)), vec3<f32>(-1214f, -408f, -1397f), u_input.c.x), func_1(Struct_1(vec3<bool>(true, true, false), vec3<i32>(-900i, -1i, u_input.c.x), vec3<f32>(-1542f, -292f, -867f), vec4<i32>(u_input.b, 2147483647i, 2147483647i, u_input.c.x), vec4<f32>(-1175f, -476f, -1127f, 381f)), Struct_1(vec3<bool>(true, true, false), vec3<i32>(u_input.b, -53374i, u_input.b), vec3<f32>(-385f, -1208f, -2728f), vec4<i32>(29284i, 1i, u_input.c.x, u_input.b), vec4<f32>(-1000f, -2444f, 1226f, -2582f)), vec3<f32>(-1264f, 559f, -731f), u_input.b).a.a.x)) || true, false);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 2333u, 92834u), vec3<u32>(u_input.a.x, u_input.a.x, 45401u)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(-162f * 282f))), _wgslsmith_f_op_f32(-324f * _wgslsmith_f_op_f32(f32(-1f) * -1259f)), true)), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2002f - -554f) + _wgslsmith_f_op_f32(f32(-1f) * -592f)))), vec2<u32>(u_input.a.x, reverseBits(_wgslsmith_mult_u32(u_input.a.x, 1u))), u_input.c.xx);
}

