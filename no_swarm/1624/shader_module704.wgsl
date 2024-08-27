struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 40059i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>) -> f32 {
    global0 = u_input.a.x;
    var var_0 = Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(arg_0, 0u), _wgslsmith_div_u32(20637u, 15429u)), ~(~u_input.e.x)), select(firstLeadingBit(vec2<u32>(0u, 25574u)), _wgslsmith_mult_vec2_u32(u_input.e.zz, ~vec2<u32>(u_input.e.x, 36225u)), false)), Struct_1(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-23760i, -9044i, 21651i), vec3<i32>(-1930i, u_input.a.x, -1i)), -2147483647i), -2147483647i), any(vec4<bool>(arg_1.x != 1901f, true, any(vec3<bool>(false, true, true)), true)), u_input.d.x), Struct_1(vec2<i32>(u_input.a.x, ~(-u_input.d.x)), false, ~1i), ~vec3<u32>(~(~arg_0), ~(~arg_0), ~arg_0), u_input.a.x);
    var var_1 = ~(~select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, 4294967295u, arg_0, var_0.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.d.x, 0u, 1u, 26236u), vec4<u32>(1u, u_input.e.x, 4294967295u, 41771u))), vec4<u32>(28435u, u_input.e.x, u_input.c, 1u) << (select(vec4<u32>(arg_0, 4294967295u, u_input.b, arg_0), vec4<u32>(var_0.a.x, var_0.a.x, 1u, 0u), vec4<bool>(false, false, false, true)) % vec4<u32>(32u)), var_0.b.b));
    global0 = u_input.d.x;
    var var_2 = Struct_2(~(_wgslsmith_mult_vec2_u32(var_0.a, ~vec2<u32>(4294967295u, 16654u)) & vec2<u32>(var_0.d.x >> (var_1.x % 32u), _wgslsmith_sub_u32(70554u, 40018u))), var_0.c, Struct_1(~select(vec2<i32>(u_input.d.x, -35612i), var_0.b.a, vec2<bool>(false, var_0.c.b)) | var_0.b.a, !var_0.b.b, -2147483647i), firstTrailingBit(vec3<u32>(~(~var_1.x), reverseBits(_wgslsmith_sub_u32(arg_0, var_1.x)), 4294967295u)), firstTrailingBit(~var_0.e));
    return -841f;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1009f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(647f - 405f), -1310f))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.b, vec2<f32>(757f, -591f)))), _wgslsmith_f_op_f32(trunc(-864f)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2055f))))));
    var_0 = _wgslsmith_f_op_f32(step(487f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1563f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1165f - 989f) - -442f)))));
    return arg_1;
}

fn func_1() -> vec3<f32> {
    var var_0 = vec4<bool>(true, true, func_2(Struct_1(vec2<i32>(u_input.a.x, -17841i), select(all(vec3<bool>(true, false, false)), true, true), 35897i), true == all(vec2<bool>(false, false))), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), u_input.b < u_input.e.x)));
    var var_1 = Struct_2(vec2<u32>(0u, _wgslsmith_mult_u32(~firstTrailingBit(u_input.e.x), reverseBits(u_input.c))), Struct_1(_wgslsmith_mult_vec2_i32(firstTrailingBit(u_input.a.xy), u_input.a.zw) >> (select(abs(vec2<u32>(u_input.b, u_input.c)), reverseBits(u_input.e.yy), true) % vec2<u32>(32u)), !select(any(vec4<bool>(var_0.x, false, var_0.x, var_0.x)), true, any(vec4<bool>(var_0.x, false, false, true))), _wgslsmith_add_i32(1i, _wgslsmith_sub_i32(u_input.d.x, u_input.d.x))), Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(-u_input.a.xy, u_input.a.xy), u_input.a.x), true, reverseBits(firstTrailingBit(abs(u_input.a.x)))), vec3<u32>(0u, _wgslsmith_dot_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.e.x, 82453u), vec2<u32>(44903u, 0u), u_input.e.yz)), u_input.e.zz), u_input.e.x), max(u_input.d.x, u_input.a.x));
    let var_2 = firstTrailingBit(countOneBits(~vec4<u32>(1u, 0u, var_1.a.x, 33716u)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1192f, -1161f, -615f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(103f, 408f, 439f) - vec3<f32>(-3126f, 561f, 110f))), any(vec4<bool>(true, var_0.x, var_1.c.b, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(-u_input.d.x);
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(566f, -686f, -1010f) + vec3<f32>(-836f, -493f, -1610f)), vec3<f32>(-1274f, -808f, -2119f)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_1()))), !vec3<bool>(false, select(true, true, true), 0i < (u_input.d.x ^ -2147483647i))));
    let var_1 = Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(-159f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1221f)) + _wgslsmith_f_op_f32(select(-1364f, -1277f, true)))), var_0.xx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, var_0.x, 1932f))) * var_0)))), select(vec3<i32>(0i, u_input.d.x >> (92844u % 32u), u_input.d.x), vec3<i32>(~(~u_input.a.x), _wgslsmith_clamp_i32(select(u_input.d.x, u_input.a.x, false), 2401i, select(u_input.d.x, u_input.d.x, true)), u_input.a.x), true));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.a), var_1.b.xy, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_1.a.x, 983f) - vec3<f32>(var_0.x, var_0.x, var_1.a.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_1.b)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, false)))) + _wgslsmith_div_vec3_f32(var_0, _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.x, var_1.a.x, 165f), vec3<f32>(902f, -1000f, 126f))))), vec3<i32>(u_input.a.x, -_wgslsmith_div_i32(var_1.c.x, u_input.a.x), abs(1i)) << (u_input.e % vec3<u32>(32u)));
    global0 = -50620i;
    var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(379f, var_1.a.x)) - vec2<f32>(-388f, -192f))), var_1.b.xx)));
}

