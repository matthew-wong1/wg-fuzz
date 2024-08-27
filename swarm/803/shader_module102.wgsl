struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec2<f32>(-1605f, -825f), false, Struct_1(vec3<i32>(2804i, -31837i, 1i)), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 0i)), vec4<f32>(2121f, -644f, 1000f, 467f)), Struct_3(vec2<f32>(-1010f, 346f), false, Struct_1(vec3<i32>(-27995i, 1i, -4958i)), Struct_1(vec3<i32>(-1156i, 19329i, i32(-2147483648))), vec4<f32>(-1182f, 1285f, -558f, -690f)), Struct_3(vec2<f32>(1000f, 1210f), false, Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648))), Struct_1(vec3<i32>(i32(-2147483648), 11339i, -6128i)), vec4<f32>(-114f, 1000f, -680f, -1131f)), Struct_3(vec2<f32>(-505f, 839f), false, Struct_1(vec3<i32>(10649i, -1i, -1i)), Struct_1(vec3<i32>(-28547i, 2147483647i, -1i)), vec4<f32>(-277f, -308f, 943f, -501f)), Struct_3(vec2<f32>(-488f, 2609f), false, Struct_1(vec3<i32>(i32(-2147483648), -7789i, 2147483647i)), Struct_1(vec3<i32>(51300i, i32(-2147483648), -38846i)), vec4<f32>(445f, 386f, -1002f, 2135f)), Struct_3(vec2<f32>(1213f, 117f), true, Struct_1(vec3<i32>(i32(-2147483648), 38934i, 1i)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -61983i)), vec4<f32>(-978f, -829f, 1380f, 1075f)), Struct_3(vec2<f32>(2066f, -209f), true, Struct_1(vec3<i32>(31631i, 0i, -17419i)), Struct_1(vec3<i32>(0i, i32(-2147483648), -5780i)), vec4<f32>(630f, 839f, -1389f, 550f)), Struct_3(vec2<f32>(662f, -1345f), true, Struct_1(vec3<i32>(-11888i, -1i, 4760i)), Struct_1(vec3<i32>(-84674i, 25624i, -1i)), vec4<f32>(541f, 1000f, -1020f, 1388f)), Struct_3(vec2<f32>(-1757f, -1000f), false, Struct_1(vec3<i32>(1i, i32(-2147483648), -54422i)), Struct_1(vec3<i32>(20100i, -50686i, i32(-2147483648))), vec4<f32>(438f, 492f, 501f, -881f)), Struct_3(vec2<f32>(-849f, 671f), false, Struct_1(vec3<i32>(8949i, 0i, 2147483647i)), Struct_1(vec3<i32>(33955i, 32147i, -1476i)), vec4<f32>(-436f, 1000f, 507f, -595f)), Struct_3(vec2<f32>(2349f, 1150f), false, Struct_1(vec3<i32>(3466i, i32(-2147483648), 2147483647i)), Struct_1(vec3<i32>(2147483647i, 53678i, -1896i)), vec4<f32>(383f, -160f, -725f, -602f)), Struct_3(vec2<f32>(-382f, 280f), false, Struct_1(vec3<i32>(6342i, -1i, -1i)), Struct_1(vec3<i32>(-63182i, 0i, -14360i)), vec4<f32>(-145f, -394f, -210f, -798f)), Struct_3(vec2<f32>(-884f, -101f), false, Struct_1(vec3<i32>(2147483647i, 1702i, 1i)), Struct_1(vec3<i32>(42375i, 1i, 1i)), vec4<f32>(-653f, 445f, -1619f, -1000f)), Struct_3(vec2<f32>(508f, -1000f), true, Struct_1(vec3<i32>(2147483647i, 1i, 38531i)), Struct_1(vec3<i32>(67119i, -25807i, -1i)), vec4<f32>(-813f, -705f, 349f, 664f)), Struct_3(vec2<f32>(-1041f, -510f), true, Struct_1(vec3<i32>(-1i, 2147483647i, 876i)), Struct_1(vec3<i32>(2147483647i, 1i, 2147483647i)), vec4<f32>(-415f, 712f, -400f, -654f)), Struct_3(vec2<f32>(-1357f, -107f), false, Struct_1(vec3<i32>(-33326i, -45710i, i32(-2147483648))), Struct_1(vec3<i32>(-1i, 0i, 611i)), vec4<f32>(626f, -1000f, 1155f, 1000f)), Struct_3(vec2<f32>(-2606f, -162f), false, Struct_1(vec3<i32>(0i, 1i, -45073i)), Struct_1(vec3<i32>(-1i, -7149i, -30417i)), vec4<f32>(361f, -633f, 598f, -411f)), Struct_3(vec2<f32>(426f, -478f), false, Struct_1(vec3<i32>(15089i, -1i, 6712i)), Struct_1(vec3<i32>(-31722i, 3181i, 9401i)), vec4<f32>(-250f, -1094f, -829f, -1149f)), Struct_3(vec2<f32>(400f, 599f), true, Struct_1(vec3<i32>(51312i, -41780i, 0i)), Struct_1(vec3<i32>(24355i, -1i, i32(-2147483648))), vec4<f32>(-255f, 2168f, -912f, 811f)), Struct_3(vec2<f32>(1048f, 235f), false, Struct_1(vec3<i32>(0i, 2147483647i, 1i)), Struct_1(vec3<i32>(-4661i, -1i, 10219i)), vec4<f32>(-1337f, -709f, -821f, -259f)), Struct_3(vec2<f32>(-986f, 1383f), true, Struct_1(vec3<i32>(2147483647i, -64087i, 2147483647i)), Struct_1(vec3<i32>(46250i, -1i, -11008i)), vec4<f32>(-797f, -124f, -1000f, -708f)), Struct_3(vec2<f32>(242f, -785f), false, Struct_1(vec3<i32>(2147483647i, 90295i, 0i)), Struct_1(vec3<i32>(12340i, 42781i, -19965i)), vec4<f32>(395f, -876f, 2137f, 746f)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_1) -> f32 {
    return 451f;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: bool) -> bool {
    let var_0 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(arg_0.a)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, arg_0.e.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(arg_0.c.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -414f)))), true, Struct_1(~vec3<i32>(0i, 0i, 0i) | vec3<i32>(u_input.a, ~u_input.a, firstTrailingBit(arg_0.c.a.x))), Struct_1(arg_0.c.a), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(arg_0.e.x, _wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1110f, -162f)) * _wgslsmith_f_op_f32(arg_0.a.x * -543f)), 2342f, _wgslsmith_f_op_f32(arg_1.x - arg_1.x)))));
    global0 = array<Struct_3, 22>();
    var var_1 = arg_0.c;
    let var_2 = Struct_3(var_0.e.xw, !any(select(select(vec2<bool>(arg_2, false), vec2<bool>(arg_0.b, arg_0.b), arg_0.b), vec2<bool>(var_0.b, var_0.b), true)), var_0.d, var_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.e)));
    let var_3 = 42159u;
    return !(!((0i << (var_3 % 32u)) < 1i));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~(~9486u), ~arg_0.x ^ u_input.b) & 16245u, _wgslsmith_div_u32(0u, ~select(arg_0.x >> (1u % 32u), ~59924u, all(vec3<bool>(true, false, false))))), 22u)];
    var var_1 = 20069u;
    var_1 = u_input.b;
    let var_2 = Struct_2(u_input.a, var_0.d);
    var_1 = _wgslsmith_div_u32(u_input.b, ~arg_0.x);
    return -180f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 22>();
    global0 = array<Struct_3, 22>();
    let var_0 = select(select(vec2<bool>(true, _wgslsmith_mod_i32(u_input.a, 20356i) == 0i), vec2<bool>(all(vec4<bool>(false, false, true, true)), select(func_1(Struct_3(vec2<f32>(1958f, 132f), false, Struct_1(vec3<i32>(-48115i, u_input.a, -2147483647i)), Struct_1(vec3<i32>(u_input.a, 13353i, u_input.a)), vec4<f32>(-963f, 191f, -293f, 977f)), vec4<f32>(-278f, 344f, -2071f, -646f), true), true, true)), select(!select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true), true)), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), true);
    let var_1 = max(~(vec4<u32>(17162u, 87707u, 0u, 0u) >> (~vec4<u32>(0u, 5275u, 0u, u_input.b) % vec4<u32>(32u))) & firstLeadingBit(vec4<u32>(1u, ~u_input.b, 4294967295u, ~u_input.b)), vec4<u32>(firstTrailingBit(countOneBits(firstTrailingBit(2153u))), u_input.b, u_input.b, select(~u_input.b, u_input.b, var_0.x)));
    global0 = array<Struct_3, 22>();
    let var_2 = Struct_2(~(-2147483647i), Struct_1(_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(1i, u_input.a, u_input.a)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 1i, 2147483647i), vec3<i32>(-33284i, u_input.a, u_input.a))) | -firstTrailingBit(vec3<i32>(45388i, 10589i, 24154i))));
    global0 = array<Struct_3, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec3_u32(~var_1.wzw, _wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, 100942u, u_input.b), vec3<u32>(4294967295u, u_input.b, 1u))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1248f * -1000f) * _wgslsmith_f_op_f32(round(-236f))))), ~vec3<u32>(~4294967295u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(60342u, 16334u, 0u), 0u), min(~0u, u_input.b)), 0i, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1383f + 1410f) + -343f), -1170f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(962f - 1000f), _wgslsmith_div_f32(-482f, -347f), true))))), var_1.wy);
}

