struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: array<vec4<i32>, 23> = array<vec4<i32>, 23>(vec4<i32>(-7532i, -13609i, 2147483647i, i32(-2147483648)), vec4<i32>(28853i, -11633i, -6539i, 2147483647i), vec4<i32>(0i, 18854i, -36480i, -48848i), vec4<i32>(0i, -1i, 1i, 0i), vec4<i32>(1i, 48389i, -26914i, -44821i), vec4<i32>(54618i, -26494i, 43168i, -78055i), vec4<i32>(-13989i, 2147483647i, 0i, -25196i), vec4<i32>(-1i, 0i, i32(-2147483648), 0i), vec4<i32>(-1i, -34212i, -52711i, 0i), vec4<i32>(-7894i, i32(-2147483648), 5483i, 25977i), vec4<i32>(2147483647i, 38330i, 57865i, -1i), vec4<i32>(1i, 55858i, 1i, -62819i), vec4<i32>(1i, 26836i, 58156i, 0i), vec4<i32>(-34537i, -1i, 22943i, -32506i), vec4<i32>(-13935i, 36512i, 33922i, 8397i), vec4<i32>(3959i, -17031i, i32(-2147483648), 2147483647i), vec4<i32>(30885i, -43439i, 1i, 2147483647i), vec4<i32>(i32(-2147483648), 14344i, 2147483647i, 2147483647i), vec4<i32>(1i, 2050i, 2147483647i, 4668i), vec4<i32>(-1557i, 13032i, 76725i, -5725i), vec4<i32>(i32(-2147483648), -44827i, 0i, 17997i), vec4<i32>(i32(-2147483648), 1192i, 0i, 1i), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), i32(-2147483648)));

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(true, 41435u, -561f, 454f, vec3<i32>(27408i, 0i, i32(-2147483648))), Struct_1(false, 52814u, 1308f, -2109f, vec3<i32>(i32(-2147483648), 31758i, 19242i)), Struct_1(true, 21879u, -640f, -554f, vec3<i32>(16235i, -71050i, -12974i)), Struct_1(false, 4294967295u, -1160f, -935f, vec3<i32>(0i, i32(-2147483648), 0i)), Struct_1(false, 23050u, 1000f, -1000f, vec3<i32>(i32(-2147483648), 41603i, -28487i)), Struct_1(false, 47021u, -840f, 673f, vec3<i32>(-19179i, -5112i, 15040i)), Struct_1(true, 62202u, -426f, -143f, vec3<i32>(-1i, i32(-2147483648), 1721i)));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<bool>) -> vec3<bool> {
    var var_0 = vec3<u32>(~u_input.a.x, u_input.a.x, u_input.a.x) | vec3<u32>(u_input.a.x << (_wgslsmith_add_u32(u_input.a.x, u_input.a.x) % 32u), ~u_input.a.x, reverseBits(14730u));
    let var_1 = arg_0;
    global2 = array<Struct_1, 7>();
    var var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 21u)];
    var var_3 = var_0.x;
    return vec3<bool>(var_1.x, arg_0.x, var_1.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: u32, arg_3: vec2<u32>) -> f32 {
    var var_0 = ~19576i;
    var var_1 = vec3<bool>(arg_1, any(func_3(vec2<bool>(arg_1, false))), any(select(select(func_3(vec2<bool>(false, arg_1)).yx, vec2<bool>(true, true), !vec2<bool>(arg_1, true)), vec2<bool>(true, arg_1), true)));
    let var_2 = Struct_2(arg_0.x == reverseBits(~(~arg_3.x)));
    var var_3 = -1333f;
    let var_4 = Struct_2(var_1.x);
    return -163f;
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    global2 = array<Struct_1, 7>();
    global1 = array<vec4<i32>, 23>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec4<u32>(5815u, _wgslsmith_mult_u32(15423u, 0u), u_input.a.x, ~30074u), all(vec4<bool>(false, false, false, true)) | false, u_input.a.x, _wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(14575u, u_input.a.x)) | ~u_input.a)), -1059f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1968f)));
    global0 = array<Struct_1, 21>();
    var var_1 = Struct_2(all(vec2<bool>(true, false)));
    return global2[_wgslsmith_index_u32(~u_input.a.x, 7u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(0u | reverseBits(u_input.a.x), u_input.a.x);
    global2 = array<Struct_1, 7>();
    global0 = array<Struct_1, 21>();
    let var_1 = _wgslsmith_clamp_vec3_i32(~_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(1i, 24165i, -30352i)) ^ -vec3<i32>(2147483647i, -24992i, -57636i), _wgslsmith_mult_vec3_i32(~vec3<i32>(-13205i, -65896i, 2147483647i), select(vec3<i32>(1i, -34118i, -2147483647i), vec3<i32>(2147483647i, -2147483647i, -1i), vec3<bool>(false, true, true)))), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, -2147483647i, 28406i), vec4<i32>(1i, -1i, 14219i, 0i)), ~(-1i >> (var_0.x % 32u))), 25442i, -_wgslsmith_div_i32(-34775i, abs(1i))), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(-2222i, -58153i))), vec3<i32>(~2147483647i, 0i, 1i)), abs(-vec3<i32>(1i, 1i, 1i))));
    var var_2 = func_1(vec3<i32>(~var_1.x, ~var_1.x, _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(1u, 23u)], -abs(global1[_wgslsmith_index_u32(var_0.x, 23u)]))));
    global1 = array<vec4<i32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_add_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(19321u, var_2.b, u_input.a.x), vec3<u32>(u_input.a.x, 0u, u_input.a.x))), var_0.x), select(1u, var_0.x | abs(46436u), true)), reverseBits(vec4<u32>(1u, ~max(var_0.x, u_input.a.x), ~(~1u), abs(var_0.x))), countOneBits(_wgslsmith_mult_u32(~(var_2.b >> (var_0.x % 32u)), _wgslsmith_clamp_u32(abs(0u), 40586u, ~57722u))), ~var_2.e.x, select(var_0.x, 4294967295u, func_3(func_3(vec2<bool>(var_2.a, true)).xy).x) ^ ~(_wgslsmith_clamp_u32(3530u, 4294967295u, var_2.b) ^ var_0.x));
}

