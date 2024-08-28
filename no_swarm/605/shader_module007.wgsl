struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 32> = array<vec3<f32>, 32>(vec3<f32>(-278f, -1313f, -2442f), vec3<f32>(697f, -1048f, -127f), vec3<f32>(484f, -1488f, 1012f), vec3<f32>(-334f, -258f, 1000f), vec3<f32>(-883f, 251f, -2025f), vec3<f32>(-1037f, -371f, 452f), vec3<f32>(1000f, 640f, -955f), vec3<f32>(1000f, 564f, 179f), vec3<f32>(125f, -525f, 236f), vec3<f32>(247f, 1000f, 321f), vec3<f32>(-403f, 727f, -653f), vec3<f32>(-1826f, -577f, 608f), vec3<f32>(-165f, -683f, 877f), vec3<f32>(-1557f, 182f, 558f), vec3<f32>(199f, -766f, 423f), vec3<f32>(1122f, 757f, 1000f), vec3<f32>(-1898f, -1121f, 1000f), vec3<f32>(-225f, 1991f, 1308f), vec3<f32>(765f, -612f, -237f), vec3<f32>(1448f, -2576f, -1262f), vec3<f32>(-1299f, 1858f, -138f), vec3<f32>(382f, -1000f, 1495f), vec3<f32>(209f, 782f, 840f), vec3<f32>(1000f, -1266f, 389f), vec3<f32>(301f, 918f, -1000f), vec3<f32>(1201f, -2329f, -197f), vec3<f32>(-1519f, 680f, -259f), vec3<f32>(-1000f, -2335f, 426f), vec3<f32>(875f, 2149f, -404f), vec3<f32>(123f, 771f, -1117f), vec3<f32>(1000f, 412f, 104f), vec3<f32>(-1181f, 2066f, 1000f));

var<private> global1: vec2<f32> = vec2<f32>(1930f, -2245f);

var<private> global2: array<Struct_2, 23>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_add_vec3_i32(-(~(~vec3<i32>(10348i, u_input.a, 1i))), ~vec3<i32>(u_input.a & u_input.a, -48561i, ~u_input.a)), _wgslsmith_add_u32(abs(59229u), _wgslsmith_add_u32(1u, _wgslsmith_mult_u32(~4294967295u, 34904u))));
    global2 = array<Struct_2, 23>();
    let var_1 = Struct_1(var_0.a, ~_wgslsmith_dot_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b, var_0.b, 3820u, var_0.b), vec4<u32>(26310u, 4294967295u, var_0.b, 23432u)), ~vec4<u32>(4552u, 32216u, 1u, 83393u), vec4<bool>(true, false, false, false)), _wgslsmith_mod_vec4_u32(max(vec4<u32>(var_0.b, 0u, var_0.b, 1u), vec4<u32>(30025u, var_0.b, var_0.b, var_0.b)), select(vec4<u32>(35670u, 1108u, var_0.b, var_0.b), vec4<u32>(4294967295u, 0u, 0u, var_0.b), vec4<bool>(true, true, true, true)))));
    global0 = array<vec3<f32>, 32>();
    var var_2 = Struct_1(reverseBits(reverseBits(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a, var_0.a.x, var_1.a.x), var_1.a))), firstLeadingBit(0u));
    return var_0;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: f32) -> vec4<bool> {
    global0 = array<vec3<f32>, 32>();
    let var_0 = countOneBits(1u ^ ~arg_2.b);
    let var_1 = Struct_2(true, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(sign(arg_3))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec4<bool>(false, false, true, true)) == any(vec3<bool>(false, true, false)), false)), Struct_1(firstTrailingBit(arg_2.a), firstLeadingBit(~(var_0 << (arg_2.b % 32u)))), arg_2);
    let var_2 = Struct_1(arg_0, 0u & var_0);
    global1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-142f, 1717f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(143f, 2509f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1452f, -544f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(662f, var_1.b)))))))));
    return vec4<bool>(all(vec4<bool>(true, all(!vec4<bool>(false, var_1.a, var_1.c.x, true)), !(arg_2.a.x == -1i), ~var_1.d.a.x == -18691i)), !var_1.a, 1u < ~(~min(var_0, arg_2.b)), all(var_1.c.xyw));
}

fn func_1() -> vec4<f32> {
    let var_0 = Struct_2(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + -312f) + global1.x), !select(func_3(vec3<i32>(1i, u_input.a, 37536i), -vec4<i32>(u_input.a, -2147483647i, 1i, u_input.a), func_2(), global1.x), vec4<bool>(false, true, true, false), true), Struct_1(~vec3<i32>(36938i, ~38665i, u_input.a), ~34016u), Struct_1(-(~vec3<i32>(u_input.a, 0i, 2147483647i)) >> ((_wgslsmith_div_vec3_u32(vec3<u32>(12825u, 31658u, 1u), vec3<u32>(32346u, 1u, 88721u)) | _wgslsmith_clamp_vec3_u32(vec3<u32>(55552u, 48586u, 23969u), vec3<u32>(34378u, 70275u, 4294967295u), vec3<u32>(1u, 17417u, 40938u))) % vec3<u32>(32u)), firstLeadingBit(~(~0u))));
    var var_1 = -2147483647i;
    var var_2 = var_0;
    var_1 = 2147483647i;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-986f)), _wgslsmith_f_op_f32(f32(-1f) * -514f), select(var_2.c.x, var_2.c.x, var_0.c.x))))), _wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-1696f * 728f));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 23>();
    let var_0 = _wgslsmith_mod_vec4_u32(~vec4<u32>(~9651u, 4294967295u, abs(20998u), ~0u), vec4<u32>(1u, 1u, 1u, 1u)) ^ (~vec4<u32>(254u, abs(78935u), 1u, ~10774u) >> (min(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(15876u, 1u, 72298u, 50267u), vec4<u32>(0u, 22722u, 54705u, 50214u), vec4<bool>(false, true, false, true))), vec4<u32>(~61888u, select(1u, 1u, false), _wgslsmith_add_u32(1u, 18065u), firstLeadingBit(4294967295u))) % vec4<u32>(32u)));
    var var_1 = vec2<u32>(_wgslsmith_add_u32(var_0.x, var_0.x | var_0.x), 1u);
    var var_2 = ~(select(-_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, 0i), vec3<i32>(-16589i, 7345i, -106322i)), u_input.a, select(true, true, true)) | -(~max(65849i, -21843i)));
    let var_3 = _wgslsmith_f_op_vec4_f32(func_1());
    global0 = array<vec3<f32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a, 25222i, 1i, min(u_input.a, 2147483647i) << (_wgslsmith_mod_u32(var_0.x & var_1.x, var_0.x) % 32u)), vec2<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(step(var_3.x, -504f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1006f, global1.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.x - 859f))))), _wgslsmith_f_op_vec4_f32(func_1()).x, abs(_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a << (var_1.x % 32u), 43518i), _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.a, 23075i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 2147483647i, 34949i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, -23905i), vec4<i32>(2147483647i, u_input.a, u_input.a, 2147483647i))))));
}

