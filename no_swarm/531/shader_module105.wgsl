struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(-804f, -1955f, 1707f, -195f));

var<private> global1: bool = false;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(round(arg_0.b.b));
    var var_1 = !select(!vec3<bool>(false, false, arg_0.c.d.x), vec3<bool>(any(select(vec4<bool>(true, arg_1.d.c.d.x, false, true), vec4<bool>(false, arg_1.a.d.x, true, arg_1.c.d.x), true)), _wgslsmith_f_op_f32(f32(-1f) * -549f) == _wgslsmith_f_op_f32(-var_0), !arg_1.d.c.d.x), select(vec3<bool>(true, select(arg_0.c.d.x, arg_0.c.d.x, arg_0.c.d.x), any(vec4<bool>(arg_1.a.d.x, arg_0.c.d.x, arg_1.d.c.d.x, arg_1.a.d.x))), !(!vec3<bool>(arg_0.c.d.x, arg_1.d.c.d.x, false)), vec3<bool>(all(vec2<bool>(arg_0.c.d.x, true)), arg_1.a.d.x, arg_0.c.d.x & false)));
    let var_2 = Struct_5(~countOneBits(abs(arg_0.a)), global0[_wgslsmith_index_u32(arg_1.d.d & _wgslsmith_sub_u32(94187u, 1u), 1u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.b)), global0[_wgslsmith_index_u32(arg_1.e, 1u)]);
    var_1 = !select(vec3<bool>(!arg_0.c.d.x, any(vec3<bool>(true, true, arg_0.c.d.x)), false), select(vec3<bool>(!arg_1.d.c.d.x, any(vec2<bool>(arg_0.c.d.x, arg_1.a.d.x)), var_1.x), select(select(vec3<bool>(true, arg_0.c.d.x, false), vec3<bool>(false, var_1.x, false), vec3<bool>(arg_1.c.d.x, true, false)), vec3<bool>(false, false, arg_0.c.d.x), !vec3<bool>(false, var_1.x, false)), select(select(vec3<bool>(false, false, var_1.x), vec3<bool>(false, var_1.x, arg_0.c.d.x), vec3<bool>(arg_1.d.c.d.x, arg_1.d.c.d.x, arg_1.d.c.d.x)), select(vec3<bool>(false, false, arg_1.a.d.x), vec3<bool>(false, true, var_1.x), vec3<bool>(var_1.x, var_1.x, arg_0.c.d.x)), !arg_0.c.d.x)), all(vec4<bool>(var_1.x, all(arg_1.a.d), arg_0.c.d.x && arg_0.c.d.x, -1028f > var_0)));
    let var_3 = Struct_2(Struct_1(-vec2<i32>(arg_1.a.b, -65618i) | vec2<i32>(u_input.c, countOneBits(arg_1.d.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.d.b.b))), _wgslsmith_mod_i32(_wgslsmith_mult_i32(2147483647i, 0i), countOneBits(u_input.b)) << (1u % 32u), vec3<f32>(arg_0.b.d.x, _wgslsmith_f_op_f32(var_2.d.x * var_2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0))))), arg_2, arg_1.a.a, select(vec2<bool>(all(!vec4<bool>(true, var_1.x, arg_0.c.d.x, true)), any(select(vec3<bool>(var_1.x, arg_0.c.d.x, true), vec3<bool>(arg_0.c.d.x, arg_0.c.d.x, arg_1.a.d.x), var_1.x))), select(select(!arg_1.a.d, select(vec2<bool>(true, true), var_1.yz, vec2<bool>(true, true)), !arg_1.a.d), vec2<bool>(true, arg_0.b.c == 1616i), var_1.yz), all(vec3<bool>(arg_0.c.a.d.x >= -254f, arg_1.d.c.d.x, !var_1.x))));
    return 359f;
}

fn func_2() -> Struct_4 {
    let var_0 = select(!(!vec4<bool>(all(vec4<bool>(false, true, true, false)), true, any(vec4<bool>(true, true, false, true)), any(vec4<bool>(true, false, true, false)))), select(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false)), true, true), any(vec4<bool>(true, true, true, true))), true);
    let var_1 = Struct_3(~(~vec4<u32>(abs(u_input.a.x), 4294967295u, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 20442u, u_input.a.x), vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.d)))), Struct_1(~min(~vec2<i32>(48300i, u_input.b), vec2<i32>(0i, u_input.c)), _wgslsmith_f_op_f32(func_3(Struct_3(vec4<u32>(u_input.d, 4294967295u, 58108u, 4294967295u), Struct_1(vec2<i32>(u_input.c, -37163i), 2701f, -51377i, vec3<f32>(-312f, 270f, 435f)), Struct_2(Struct_1(vec2<i32>(u_input.c, -33994i), 1346f, u_input.b, vec3<f32>(-1638f, -871f, 1026f)), -11810i, Struct_1(vec2<i32>(u_input.c, u_input.b), 1670f, u_input.c, vec3<f32>(-1117f, -826f, 1000f)), vec2<bool>(false, var_0.x)), 53491u), Struct_4(Struct_2(Struct_1(vec2<i32>(u_input.c, 1i), -164f, -1i, vec3<f32>(194f, 1000f, 1990f)), 37815i, Struct_1(vec2<i32>(u_input.b, u_input.c), -975f, 2147483647i, vec3<f32>(322f, 698f, 207f)), var_0.yz), -118f, Struct_2(Struct_1(vec2<i32>(-32638i, 32371i), -1000f, u_input.b, vec3<f32>(2993f, 2190f, 124f)), u_input.b, Struct_1(vec2<i32>(-29100i, u_input.c), 942f, 1i, vec3<f32>(-1000f, 503f, 307f)), vec2<bool>(var_0.x, var_0.x)), Struct_3(vec4<u32>(u_input.a.x, 6330u, u_input.d, 1u), Struct_1(vec2<i32>(13437i, -22404i), -726f, u_input.c, vec3<f32>(1286f, 1330f, 1000f)), Struct_2(Struct_1(vec2<i32>(-12003i, 0i), -477f, -23076i, vec3<f32>(-778f, 519f, 2005f)), 2147483647i, Struct_1(vec2<i32>(1i, -47875i), -1581f, -2147483647i, vec3<f32>(810f, 768f, -839f)), vec2<bool>(false, true)), 1u), _wgslsmith_div_u32(u_input.a.x, 31739u)), ~u_input.b)), min(u_input.b, ~u_input.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-548f, -2494f, 457f), vec3<f32>(-1226f, -1000f, 1201f), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(538f, 1711f, 874f) + vec3<f32>(686f, -910f, 1406f))))), Struct_2(Struct_1(abs(vec2<i32>(u_input.b, u_input.b) & vec2<i32>(-1i, -534i)), 1000f, -firstLeadingBit(u_input.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1268f, 1000f, -1074f) * vec3<f32>(811f, -675f, 611f)))), _wgslsmith_mult_i32(u_input.c, max(1i, u_input.c)), Struct_1(~(vec2<i32>(13128i, 2147483647i) | vec2<i32>(u_input.c, 0i)), _wgslsmith_f_op_f32(-662f + -1114f), ~(-4025i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-499f, -290f, 773f), vec3<f32>(-1130f, 1010f, 827f), var_0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(427f, -1237f, -704f)))), select(!select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.yx), !var_0.xy, true)), 20437u);
    var var_2 = select(var_0.yzw, select(select(vec3<bool>(true, true, true), vec3<bool>(u_input.c != u_input.b, false, !var_0.x), !var_0.x), select(var_0.wwy, var_0.ywy, true), vec3<bool>(all(vec3<bool>(false, var_1.c.d.x, var_1.c.d.x)) || (var_1.b.c >= 0i), var_1.c.d.x, var_1.c.d.x & all(var_0))), !var_0.x);
    let var_3 = var_1.c.c;
    global1 = !select(var_0.x, !all(!vec3<bool>(var_2.x, true, false)), !var_2.x);
    return Struct_4(var_1.c, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(var_3.b * _wgslsmith_f_op_f32(f32(-1f) * -1030f)))), var_1.c, var_1, 1u);
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_5) -> f32 {
    var var_0 = _wgslsmith_div_i32(1i, 1i);
    let var_1 = 38752i >> (arg_2.a.x % 32u);
    let var_2 = func_2();
    let var_3 = 145f;
    let var_4 = any(arg_1);
    return _wgslsmith_f_op_f32(ceil(arg_2.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(~vec4<u32>(_wgslsmith_clamp_u32(~0u, ~88986u, ~u_input.d), abs(~u_input.a.x), ~u_input.a.x | max(4294967295u, 4294967295u), (u_input.a.x ^ u_input.a.x) >> (1u % 32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-121f)) - -258f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-264f))), _wgslsmith_div_f32(-748f, _wgslsmith_f_op_f32(f32(-1f) * -121f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1195f * 402f) * _wgslsmith_f_op_f32(func_1(u_input.b, vec3<bool>(true, false, true), Struct_5(vec4<u32>(23139u, 0u, u_input.a.x, 25793u), global0[_wgslsmith_index_u32(3773u, 1u)], 3283f, global0[_wgslsmith_index_u32(1u, 1u)]))))) - global0[_wgslsmith_index_u32(1u, 1u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.c, -3247i), 1i), vec3<bool>(true, true, true), Struct_5(max(vec4<u32>(24694u, u_input.d, u_input.d, u_input.a.x), vec4<u32>(24435u, 0u, 52455u, u_input.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(604f, 809f, 2235f, -868f) + global0[_wgslsmith_index_u32(116706u, 1u)]), _wgslsmith_f_op_f32(round(-1383f)), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(u_input.d, 1u)] * vec4<f32>(410f, -762f, 783f, -1217f)))))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(10770u, 26752u, u_input.a.x), firstTrailingBit(1u)), countOneBits(u_input.d)) >> (select(~2131u, 0u, !all(vec4<bool>(true, true, true, true))) % 32u), 1u)]);
    global0 = array<vec4<f32>, 1>();
    global1 = (any(vec2<bool>(1376f < var_0.d.x, true)) | true) && false;
    global0 = array<vec4<f32>, 1>();
    var var_1 = -2147483647i;
    let var_2 = Struct_2(Struct_1(~((vec2<i32>(u_input.b, u_input.b) | vec2<i32>(u_input.b, u_input.c)) << ((var_0.a.wz << (u_input.a % vec2<u32>(32u))) % vec2<u32>(32u))), var_0.b.x, 2147483647i, var_0.d.yxw), u_input.c, Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.b)), abs(vec2<i32>(u_input.b, 40185i)) << ((u_input.a >> (vec2<u32>(var_0.a.x, 69947u) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(u_input.c, vec3<bool>(true, true, false), var_0)))) - 544f), u_input.b, var_0.b.yxy), func_2().c.d);
    let var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(vec2<i32>(min(-u_input.b, var_2.a.a.x), ~(-1i)), func_2().d.b.a));
}

