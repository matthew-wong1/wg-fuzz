struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<f32>(-1182f, -530f), -1552f, 1u), Struct_1(vec2<f32>(752f, -1208f), 589f, 0u), Struct_1(vec2<f32>(1040f, -497f), -1485f, 32115u), Struct_1(vec2<f32>(1582f, 368f), 1588f, 86323u), Struct_1(vec2<f32>(434f, -477f), 1101f, 1u), Struct_1(vec2<f32>(-1716f, -1000f), -211f, 0u), Struct_1(vec2<f32>(-1443f, -452f), 2637f, 51930u), Struct_1(vec2<f32>(-231f, 240f), 1025f, 4294967295u), Struct_1(vec2<f32>(315f, 460f), 836f, 0u), Struct_1(vec2<f32>(-2692f, -142f), 779f, 26168u), Struct_1(vec2<f32>(-1425f, -1000f), -1108f, 1u), Struct_1(vec2<f32>(222f, 345f), -351f, 17015u), Struct_1(vec2<f32>(171f, 1486f), -1000f, 9038u), Struct_1(vec2<f32>(1216f, -915f), -1253f, 0u), Struct_1(vec2<f32>(1337f, -220f), 618f, 0u), Struct_1(vec2<f32>(1743f, 755f), -791f, 0u), Struct_1(vec2<f32>(-1707f, 475f), 237f, 13518u), Struct_1(vec2<f32>(1000f, 144f), 1302f, 4294967295u), Struct_1(vec2<f32>(286f, -1000f), -451f, 4294967295u), Struct_1(vec2<f32>(-106f, -1000f), 324f, 1u), Struct_1(vec2<f32>(3207f, -272f), -392f, 1u), Struct_1(vec2<f32>(-871f, -457f), -194f, 4294967295u));

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec2<f32>(238f, -690f), -937f, 372u), Struct_1(vec2<f32>(640f, -1119f), 573f, 0u), Struct_1(vec2<f32>(-333f, 1361f), 1000f, 0u), Struct_1(vec2<f32>(-329f, -2259f), -237f, 4923u), Struct_1(vec2<f32>(-1464f, 723f), -247f, 1u), Struct_1(vec2<f32>(-474f, -494f), -1362f, 73220u), Struct_1(vec2<f32>(-752f, -1566f), 197f, 29342u), Struct_1(vec2<f32>(-2116f, -166f), -575f, 61084u), Struct_1(vec2<f32>(862f, -193f), 1914f, 27975u), Struct_1(vec2<f32>(460f, 731f), 451f, 26268u));

var<private> global2: array<Struct_1, 21>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2() -> u32 {
    global2 = array<Struct_1, 21>();
    let var_0 = vec3<bool>(reverseBits(~_wgslsmith_sub_u32(u_input.b, u_input.d)) != u_input.d, true, !(!all(vec4<bool>(true, true, false, true))));
    let var_1 = vec2<i32>(-min(~max(25442i, 2147483647i), 10115i), 24571i);
    global0 = array<Struct_1, 22>();
    let var_2 = global0[_wgslsmith_index_u32(7903u, 22u)];
    return ~1u;
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global0 = array<Struct_1, 22>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(143f * _wgslsmith_f_op_f32(arg_0.b + 498f))))), arg_0.c);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<f32> {
    global1 = array<Struct_1, 10>();
    global1 = array<Struct_1, 10>();
    var var_0 = func_3(Struct_1(_wgslsmith_f_op_vec2_f32(ceil(arg_0.a)), 591f, 50829u), func_2());
    var var_1 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), -(vec3<i32>(-16830i, -35001i, -2147483647i) >> (~vec3<u32>(1u, arg_0.c, 4294967295u) % vec3<u32>(32u)))), vec3<i32>(1i, 1i, ~countOneBits(~(-5045i))), _wgslsmith_add_vec3_i32(~_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -1i, 18877i), vec3<i32>(1i, 28677i, -1i)), vec3<i32>(-1i, 49601i, -18630i)), -vec3<i32>(~(-266i), -23659i, 1i)));
    var var_2 = arg_1;
    return _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(309f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_2.a, arg_2.a)))), arg_2.a, !select(vec2<bool>(true, true), vec2<bool>(true, true), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 22>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(109f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -328f), -853f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec2<f32>(-626f, -616f), -511f, u_input.b), Struct_1(vec2<f32>(-1057f, -860f), 1144f, 48320u), Struct_1(vec2<f32>(-105f, 1084f), -595f, 1u))), vec2<f32>(_wgslsmith_div_f32(-484f, -274f), 1964f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1576f, 497f) * -1009f))), u_input.a.x);
    let var_1 = !(!vec2<bool>(all(vec3<bool>(false, true, false)), true));
    let var_2 = ~_wgslsmith_mod_i32(abs(~0i), -2147483647i);
    global0 = array<Struct_1, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2, ~(-vec3<i32>(0i, -58193i, var_2)) >> (~min(_wgslsmith_sub_vec3_u32(vec3<u32>(35913u, u_input.b, var_0.c), vec3<u32>(var_0.c, u_input.d, var_0.c)), vec3<u32>(0u, var_0.c, 0u)) % vec3<u32>(32u)));
}

