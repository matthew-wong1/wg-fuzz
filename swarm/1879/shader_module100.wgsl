struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: bool,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(2098i, vec2<i32>(-6524i, -16447i), -710f, true, vec2<bool>(true, true)), Struct_1(53980i, vec2<i32>(-4861i, i32(-2147483648)), -1492f, false, vec2<bool>(false, false)), Struct_1(i32(-2147483648), vec2<i32>(-10455i, 1i), -759f, false, vec2<bool>(false, false)), Struct_1(-46523i, vec2<i32>(24660i, 45289i), 1279f, true, vec2<bool>(false, true)), Struct_1(2147483647i, vec2<i32>(2147483647i, -8834i), -254f, true, vec2<bool>(false, true)), Struct_1(-1i, vec2<i32>(2147483647i, 14391i), 249f, false, vec2<bool>(true, true)), Struct_1(1i, vec2<i32>(30057i, 65465i), -1000f, false, vec2<bool>(true, true)), Struct_1(2147483647i, vec2<i32>(42213i, i32(-2147483648)), -190f, true, vec2<bool>(true, true)), Struct_1(74540i, vec2<i32>(32698i, 0i), -442f, true, vec2<bool>(false, false)), Struct_1(-5052i, vec2<i32>(-1i, -9900i), -138f, true, vec2<bool>(true, false)), Struct_1(1i, vec2<i32>(0i, 2147483647i), 537f, true, vec2<bool>(true, true)), Struct_1(-51571i, vec2<i32>(2147483647i, -29558i), 624f, true, vec2<bool>(false, true)), Struct_1(i32(-2147483648), vec2<i32>(24458i, 2147483647i), 987f, true, vec2<bool>(false, true)), Struct_1(i32(-2147483648), vec2<i32>(0i, 37598i), -869f, false, vec2<bool>(false, false)), Struct_1(-1i, vec2<i32>(-21922i, 26621i), 1213f, false, vec2<bool>(false, true)), Struct_1(-22544i, vec2<i32>(15910i, 22478i), -1190f, false, vec2<bool>(false, true)), Struct_1(1i, vec2<i32>(2147483647i, 1i), 1748f, false, vec2<bool>(false, true)), Struct_1(-1i, vec2<i32>(-24149i, -1i), -520f, true, vec2<bool>(true, true)), Struct_1(0i, vec2<i32>(4060i, 296i), -2648f, true, vec2<bool>(true, true)), Struct_1(-29542i, vec2<i32>(-1i, 1i), -561f, false, vec2<bool>(false, false)), Struct_1(1i, vec2<i32>(-44798i, 2147483647i), 1477f, true, vec2<bool>(false, false)));

var<private> global1: u32;

var<private> global2: array<vec2<u32>, 16>;

var<private> global3: vec3<bool> = vec3<bool>(false, false, false);

var<private> global4: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global2 = array<vec2<u32>, 16>();
    let var_0 = ~(~(~(u_input.a.xxx & _wgslsmith_sub_vec3_i32(u_input.a.xyy, u_input.a.zxy))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-628f, 202f, -735f), vec3<f32>(-393f, -1686f, -1000f)))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -453f), _wgslsmith_f_op_f32(f32(-1f) * -159f), _wgslsmith_div_f32(-329f, 2603f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(254f, -507f, 173f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-808f, 1000f, -700f)))))))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-375f, -697f))))), _wgslsmith_f_op_f32(-495f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-258f))))), _wgslsmith_f_op_f32(f32(-1f) * -178f)), all(!select(vec2<bool>(false, global3.x), global3.yx, all(vec3<bool>(true, false, global3.x))))));
    global0 = array<Struct_1, 21>();
    let var_2 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-1394f + -612f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x)))), var_1.x));
    return -745f;
}

fn func_2() -> Struct_1 {
    let var_0 = ~(-58957i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(367f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) * -1405f), global3.x)) - _wgslsmith_f_op_f32(-1f));
    global0 = array<Struct_1, 21>();
    var var_2 = Struct_1(_wgslsmith_sub_i32(u_input.c, _wgslsmith_clamp_i32(abs(-2147483647i), u_input.a.x, 52435i)), u_input.a.ww >> (reverseBits(~vec2<u32>(56911u, u_input.b)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1502f - _wgslsmith_f_op_f32(floor(-1107f))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1398f + -490f)))), all(select(vec3<bool>(true, global3.x | global3.x, false), vec3<bool>(true, any(global3.yy), true), !(!vec3<bool>(true, global3.x, true)))), vec2<bool>(false, true));
    return Struct_1(u_input.c, _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32((vec2<i32>(-6915i, 0i) << (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u))) ^ (var_2.b ^ vec2<i32>(0i, u_input.c)), select(u_input.a.yw, firstTrailingBit(u_input.a.xx), false)), var_2.b), var_2.c, !(_wgslsmith_mod_u32(u_input.b, ~29088u) <= ~(u_input.b >> (u_input.b % 32u))), !(!vec2<bool>(var_2.c >= 1449f, all(vec3<bool>(false, var_2.e.x, global3.x)))));
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    var var_0 = u_input.a.xz;
    let var_1 = func_2();
    var var_2 = Struct_1(-57538i, ~_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.a, 28568i), countOneBits(u_input.a.zx)), min(vec2<i32>(14358i, 0i), -u_input.a.zw)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(func_3()))) * _wgslsmith_f_op_f32(-1305f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-634f + 343f), 1281f)))), var_1.e.x, global3.xx);
    let var_3 = func_2().d;
    return _wgslsmith_mod_u32(u_input.b, 47396u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(global3.xz);
    global0 = array<Struct_1, 21>();
    var var_0 = ~func_2().b.x;
    let var_1 = func_2().c;
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 21u)];
    var var_3 = global0[_wgslsmith_index_u32(select(abs(~17861u & ~_wgslsmith_clamp_u32(4294967295u, u_input.b, u_input.b)), ~(0u >> (~u_input.b % 32u)), true), 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.c), var_1)))), vec4<u32>(~_wgslsmith_mult_u32(u_input.b, 4294967295u), u_input.b, u_input.b, min(u_input.b, u_input.b)) | (reverseBits(vec4<u32>(0u, 1u, u_input.b, 1u)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b, 1u, 0u), countOneBits(vec4<u32>(0u, 29980u, 0u, 77587u)), vec4<u32>(u_input.b, u_input.b, 47638u, u_input.b)) % vec4<u32>(32u))), ~(~select(vec3<u32>(4294967295u, u_input.b, u_input.b) & vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<bool>(global3.x, global3.x, true))), vec3<i32>(min(~(~var_2.a), -u_input.c), _wgslsmith_mult_i32(0i, var_2.b.x), u_input.a.x), firstLeadingBit(_wgslsmith_clamp_vec4_u32(min(~vec4<u32>(u_input.b, u_input.b, u_input.b, 24099u), max(vec4<u32>(0u, u_input.b, 0u, u_input.b), vec4<u32>(u_input.b, u_input.b, 35516u, u_input.b))), vec4<u32>(u_input.b, 1u, u_input.b, u_input.b) | vec4<u32>(u_input.b, u_input.b, u_input.b, 0u), ~(~vec4<u32>(46728u, 0u, u_input.b, u_input.b)))));
}

