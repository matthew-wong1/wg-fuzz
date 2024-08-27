struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4> = array<f32, 4>(-539f, 2271f, -571f, -396f);

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<i32>(-39452i, 1i), -534f, vec4<f32>(-122f, -367f, -262f, -343f)), Struct_1(vec2<i32>(-2828i, -12783i), -1000f, vec4<f32>(141f, 851f, -892f, 1296f)), Struct_1(vec2<i32>(38455i, -1i), 847f, vec4<f32>(-1250f, 730f, -666f, -1868f)), Struct_1(vec2<i32>(54916i, 1i), 2160f, vec4<f32>(-781f, -287f, -648f, 1396f)), Struct_1(vec2<i32>(-11307i, 2147483647i), 1037f, vec4<f32>(-567f, 1582f, -283f, 1234f)), Struct_1(vec2<i32>(-1i, 21466i), -836f, vec4<f32>(2380f, 425f, 1881f, 1007f)), Struct_1(vec2<i32>(-30152i, -24584i), 177f, vec4<f32>(-1218f, -105f, 278f, 1054f)), Struct_1(vec2<i32>(-1i, -6479i), 1087f, vec4<f32>(893f, -1000f, -428f, -1577f)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), 1389f, vec4<f32>(965f, -265f, 1000f, 483f)), Struct_1(vec2<i32>(2147483647i, -26580i), -1250f, vec4<f32>(-1000f, 478f, 1793f, -905f)), Struct_1(vec2<i32>(-29213i, i32(-2147483648)), -109f, vec4<f32>(719f, 380f, -715f, -757f)), Struct_1(vec2<i32>(18332i, -1i), -738f, vec4<f32>(525f, -3110f, -579f, -1365f)));

var<private> global2: Struct_1 = Struct_1(vec2<i32>(35252i, -29769i), -1888f, vec4<f32>(716f, 354f, 1628f, 1206f));

var<private> global3: array<vec4<u32>, 26>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> bool {
    global0 = array<f32, 4>();
    var var_0 = u_input.a;
    global0 = array<f32, 4>();
    var var_1 = Struct_1(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1316f * _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 4u)], arg_2.a.b)))), arg_2.a.c);
    var_1 = arg_0.a;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1256f, _wgslsmith_f_op_f32(global2.c.x * -467f), true)) - var_1.c.x))) != 231f;
}

fn func_2() -> f32 {
    global0 = array<f32, 4>();
    let var_0 = vec3<bool>(all(!vec3<bool>(true, true, func_3(Struct_2(global1[_wgslsmith_index_u32(0u, 12u)], 1u), false, Struct_2(Struct_1(u_input.a.yx, 936f, vec4<f32>(-1000f, global2.c.x, global0[_wgslsmith_index_u32(1u, 4u)], -136f)), 22582u)))), func_3(Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 31303u, 0u), vec3<u32>(0u, 0u, 0u), vec3<u32>(35514u, 32112u, 8444u)), reverseBits(vec3<u32>(1u, 0u, 19496u))), 12u)], 2752u), all(vec2<bool>(true, false)), Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(global3[_wgslsmith_index_u32(38770u, 26u)]), ~global3[_wgslsmith_index_u32(1u, 26u)]), 12u)], 8476u)), true);
    let var_1 = Struct_3(10123u, global2.c.yww);
    global1 = array<Struct_1, 12>();
    var var_2 = select(vec2<i32>(-33028i, 13550i), select(vec2<i32>(u_input.a.x >> (80982u % 32u), 2796i ^ u_input.a.x), vec2<i32>(_wgslsmith_mult_i32(1i, global2.a.x), global2.a.x), !var_0.yz), !(!vec2<bool>(var_0.x, var_0.x))) | -u_input.a.yw;
    return global2.c.x;
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = -u_input.b;
    global2 = Struct_1(vec2<i32>(~(-countOneBits(global2.a.x)), abs(global2.a.x)), _wgslsmith_f_op_f32(1379f + -612f), global2.c);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - arg_0) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 4u)]))))) > _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(max(~countOneBits(30123u), reverseBits(1u)), 4u)] + global2.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_i32(select(-_wgslsmith_div_vec3_i32(vec3<i32>(1i, global2.a.x, global2.a.x), u_input.a.xzz), ~(~vec3<i32>(23872i, 31313i, 0i)), func_1(1813f) | true), u_input.a.xzz);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(21508u), 4u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1856f, 1687f)), vec2<f32>(global2.b, global2.c.x))) * _wgslsmith_f_op_vec2_f32(global2.c.yy * _wgslsmith_f_op_vec2_f32(floor(global2.c.yx))))));
    let var_2 = all(select(vec3<bool>(true, all(vec4<bool>(true, false, true, true)), !(global0[_wgslsmith_index_u32(0u, 4u)] != global2.b)), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), true), true));
    var var_3 = Struct_3(reverseBits(_wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, 31138u), 1u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(1680u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(93966u, 4294967295u, 62349u), vec3<u32>(1u, 57603u, 1u))), 0u)), global2.c.yyw);
    var_3 = Struct_3(~var_3.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.c.wwy + global2.c.yyw)));
    var var_4 = 60736u;
    let var_5 = select(vec2<bool>(any(vec3<bool>(u_input.b > global2.a.x, false, false)), !var_2), !select(select(vec2<bool>(var_2, true), select(vec2<bool>(var_2, var_2), vec2<bool>(var_2, true), vec2<bool>(false, false)), !var_2), select(!vec2<bool>(var_2, var_2), vec2<bool>(true, var_2), vec2<bool>(var_2, true)), select(global0[_wgslsmith_index_u32(1u, 4u)] < global2.b, !var_2, var_2)), !var_2);
    var_0 = _wgslsmith_mult_vec3_i32(-abs(firstLeadingBit(vec3<i32>(u_input.a.x, global2.a.x, var_0.x) << (vec3<u32>(5196u, 1u, var_3.a) % vec3<u32>(32u)))), ~vec3<i32>(-(~(-21098i)), ~min(u_input.b, -41842i), abs(-global2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(444f, min(vec3<u32>(var_3.a, 50443u, abs(var_3.a)) & (_wgslsmith_add_vec3_u32(vec3<u32>(53362u, var_3.a, var_3.a), vec3<u32>(var_3.a, 4294967295u, var_3.a)) >> (~vec3<u32>(919u, 0u, 4294967295u) % vec3<u32>(32u))), ~reverseBits(~vec3<u32>(var_3.a, 89300u, var_3.a))), var_1.x, -457f, 352f);
}

