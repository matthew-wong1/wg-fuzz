struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<f32>(642f, 1787f, 916f), vec4<i32>(2147483647i, 1i, -2361i, -37194i), vec3<f32>(-693f, 1034f, -173f), 0u, vec4<u32>(3495u, 42711u, 0u, 46371u)), Struct_1(vec3<f32>(-533f, 1260f, 263f), vec4<i32>(i32(-2147483648), 0i, -1i, -22811i), vec3<f32>(-748f, -665f, -787f), 0u, vec4<u32>(60793u, 0u, 8296u, 0u)));

var<private> global2: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<f32>(-680f, -890f, 184f), vec4<i32>(1315i, -6786i, i32(-2147483648), i32(-2147483648)), vec3<f32>(880f, -1401f, -497f), 1u, vec4<u32>(3332u, 1u, 40376u, 0u)), Struct_1(vec3<f32>(181f, -1189f, 925f), vec4<i32>(22940i, 0i, -51259i, 0i), vec3<f32>(-279f, 584f, -1909f), 4294967295u, vec4<u32>(0u, 88686u, 56472u, 4038u)), Struct_1(vec3<f32>(969f, -1612f, -1509f), vec4<i32>(9353i, 28492i, 1i, 1i), vec3<f32>(-1000f, 921f, -1000f), 4294967295u, vec4<u32>(19172u, 1u, 29087u, 35760u)), Struct_1(vec3<f32>(-388f, 1000f, -830f), vec4<i32>(46529i, -1i, 30089i, 1i), vec3<f32>(585f, 909f, -366f), 1u, vec4<u32>(27189u, 1u, 28863u, 4294967295u)), Struct_1(vec3<f32>(1111f, 679f, 1059f), vec4<i32>(2147483647i, -1i, 15240i, 0i), vec3<f32>(-598f, 858f, -1000f), 0u, vec4<u32>(71269u, 1u, 28654u, 20335u)), Struct_1(vec3<f32>(-791f, 1026f, 753f), vec4<i32>(1i, 2147483647i, 7686i, 5279i), vec3<f32>(-628f, -312f, 979f), 36088u, vec4<u32>(4294967295u, 1u, 73266u, 1u)), Struct_1(vec3<f32>(500f, -339f, -372f), vec4<i32>(507i, 1i, 19797i, -16612i), vec3<f32>(-616f, -1034f, -888f), 4294967295u, vec4<u32>(56032u, 2461u, 4653u, 71375u)), Struct_1(vec3<f32>(-1000f, 370f, 1298f), vec4<i32>(-1i, -1953i, 1i, 0i), vec3<f32>(-200f, -1195f, -178f), 52971u, vec4<u32>(20603u, 43377u, 38886u, 4294967295u)), Struct_1(vec3<f32>(-446f, 1995f, 271f), vec4<i32>(22511i, 11688i, -22962i, 3170i), vec3<f32>(-1000f, -384f, -1592f), 4294967295u, vec4<u32>(0u, 6262u, 4294967295u, 0u)), Struct_1(vec3<f32>(-930f, 381f, 778f), vec4<i32>(1i, 1i, i32(-2147483648), 12865i), vec3<f32>(-1000f, 738f, 1185f), 4294967295u, vec4<u32>(0u, 14094u, 44204u, 16733u)), Struct_1(vec3<f32>(-1896f, -642f, 1001f), vec4<i32>(-16686i, -27813i, 39183i, 25574i), vec3<f32>(-1499f, -787f, 1037f), 0u, vec4<u32>(4294967295u, 3380u, 1u, 0u)), Struct_1(vec3<f32>(-2067f, -1000f, 119f), vec4<i32>(20752i, i32(-2147483648), 2147483647i, -1i), vec3<f32>(1249f, -1074f, 1000f), 4294967295u, vec4<u32>(1u, 58900u, 81776u, 1u)), Struct_1(vec3<f32>(-837f, -2913f, -1000f), vec4<i32>(323i, i32(-2147483648), 31189i, 30362i), vec3<f32>(1110f, -291f, -649f), 0u, vec4<u32>(1u, 28743u, 45961u, 39711u)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(-216f));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(-298f)), _wgslsmith_f_op_f32(f32(-1f) * -1145f), _wgslsmith_f_op_f32(675f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1)) * global0.a.x)))));
    global2 = array<Struct_1, 13>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-1000f + 322f))) - _wgslsmith_f_op_f32(step(153f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), 1000f)))) + arg_1);
    var var_3 = u_input.b.xz;
    return 1u;
}

fn func_1() -> u32 {
    global2 = array<Struct_1, 13>();
    let var_0 = false;
    global0 = global1[_wgslsmith_index_u32(98774u, 2u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.c.x + 1091f), _wgslsmith_div_f32(366f, 708f), _wgslsmith_f_op_f32(global0.a.x - global0.a.x), _wgslsmith_f_op_f32(-global0.c.x)))) * vec4<f32>(-419f, -920f, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(413f + global0.c.x)))));
    let var_2 = -global0.b;
    return ~(~func_2(vec3<bool>(!var_0, var_0, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(441f - global0.c.x)), false));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>) -> vec4<bool> {
    var var_0 = vec2<f32>(-285f, arg_0);
    var var_1 = func_2(arg_1.ywz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-759f)) * _wgslsmith_f_op_f32(sign(arg_0))), !any(select(!arg_1.zzx, arg_1.yzw, !vec3<bool>(false, true, arg_1.x))));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(~_wgslsmith_sub_u32(1u, global0.e.x), 1992u), _wgslsmith_sub_u32(abs(global0.d), 1u)), 13u)];
    let var_3 = global1[_wgslsmith_index_u32(u_input.b.x, 2u)];
    global2 = array<Struct_1, 13>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~global0.d, 2u)];
    var var_1 = _wgslsmith_mult_u32(global0.e.x, global0.e.x);
    let var_2 = global0.d;
    var var_3 = var_0.b.xz;
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-1711f + _wgslsmith_f_op_f32(-var_0.a.x)), -105f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x * 2280f) - _wgslsmith_div_f32(global0.c.x, var_0.c.x))))), reverseBits(global0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1314f, 687f, var_0.c.x)))))), 4294u, global0.e);
    var_3 = -_wgslsmith_clamp_vec2_i32(vec2<i32>(~(i32(-1i) * -1i), _wgslsmith_dot_vec2_i32(-global0.b.xw, ~vec2<i32>(-2147483647i, 0i))), var_4.b.xw, vec2<i32>(global0.b.x, var_0.b.x));
    var_3 = vec2<i32>(min(_wgslsmith_mod_i32(~30213i, -1i), global0.b.x) << (func_1() % 32u), _wgslsmith_sub_i32(_wgslsmith_mod_i32(var_0.b.x, global0.b.x) & ~(var_3.x >> (var_4.e.x % 32u)), var_4.b.x));
    var var_5 = select(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + _wgslsmith_f_op_f32(-134f + global0.c.x))), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, all(vec3<bool>(true, true, false)), true, true), vec4<bool>(all(vec4<bool>(true, true, true, false)), true, true, false), (var_0.c.x <= var_4.c.x) | any(vec4<bool>(true, true, false, false))), !select(func_3(1000f, vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true), true), vec4<bool>(any(vec3<bool>(any(vec2<bool>(true, true)), true, true)), -1230f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.a.x * -1028f) - _wgslsmith_f_op_f32(-393f + -284f)), true, all(vec3<bool>(true, any(vec3<bool>(true, false, false)), true))));
    global2 = array<Struct_1, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(458f - -225f))) * 234f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a.x, 951f))))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(global0.b.x, var_0.b.x), -14579i, _wgslsmith_div_i32(2147483647i, var_0.b.x), ~2147483647i), -var_4.b ^ select(vec4<i32>(var_3.x, var_0.b.x, global0.b.x, -33349i), var_0.b, true)), i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(var_4.b.x, -33385i, 2798i, global0.b.x), vec4<i32>(var_4.b.x, 2147483647i, var_0.b.x, var_4.b.x))));
}

