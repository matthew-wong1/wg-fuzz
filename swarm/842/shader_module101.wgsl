struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<f32> {
    let var_0 = reverseBits(-vec4<i32>(u_input.a, u_input.c.x, 11902i, _wgslsmith_mult_i32(~2147483647i, -40349i | u_input.d.x)));
    let var_1 = vec4<bool>(false, !(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-126f)))) < _wgslsmith_div_f32(-282f, _wgslsmith_f_op_f32(120f + -699f))), any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), vec3<bool>(true, true, true), false)), false);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(626f, 838f, -1810f) + vec3<f32>(364f, 545f, 959f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(252f, 1697f, 140f))) - vec3<f32>(_wgslsmith_div_f32(-450f, -624f), -1031f, -1000f)), vec3<f32>(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(f32(-1f) * -186f), _wgslsmith_f_op_f32(abs(711f))))), vec2<u32>(abs(~1u), ~36018u));
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_2.a), _wgslsmith_f_op_vec3_f32(exp2(var_2.a)))))), ~select(_wgslsmith_mod_vec2_u32(select(var_2.b, var_2.b, var_1.x), vec2<u32>(var_2.b.x, var_2.b.x)), vec2<u32>(var_2.b.x, var_2.b.x), true));
    var var_3 = !vec4<bool>(any(!select(var_1.zxw, var_1.zzx, var_1.zwy)), true, !(!(0u <= var_2.b.x)), true);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(837f, _wgslsmith_f_op_f32(var_2.a.x * var_2.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_2.a.x)), 1357f), _wgslsmith_div_f32(var_2.a.x, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-var_2.a.x), u_input.c.x <= 1i)))));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-497f * 697f))), _wgslsmith_div_f32(941f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -2017f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1295f)) - -399f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-195f + 638f)))), abs(~(~vec2<u32>(4998u, 1u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1018f, -566f, -652f, var_0.a.x)) + vec4<f32>(var_0.a.x, -558f, var_0.a.x, -344f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1943f, 397f, -929f, var_0.a.x) - vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 1326f))), 1000f == _wgslsmith_f_op_f32(select(var_0.a.x, 792f, true)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1208f, var_0.a.x, var_1.x, 1426f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 272f, 232f, -379f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 1057f, _wgslsmith_f_op_f32(floor(1039f)), _wgslsmith_f_op_f32(select(-356f, -1441f, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -1200f, 2204f)))), vec4<f32>(var_0.a.x, var_0.a.x, var_1.x, var_0.a.x)))));
    var var_2 = var_0;
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) * vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_f_op_f32(round(var_0.a.x)))), -123f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1047f) - var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -414f) + -464f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x + 357f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.a.x)))) * vec4<f32>(_wgslsmith_f_op_f32(-954f * _wgslsmith_f_op_f32(818f + -125f)), _wgslsmith_f_op_f32(sign(var_2.a.x)), var_0.a.x, -1483f)));
    return var_1.x;
}

fn func_1(arg_0: f32) -> vec2<bool> {
    let var_0 = -50243i;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 121f, 1000f, 842f), vec4<f32>(712f, arg_0, arg_0, 545f)), vec4<f32>(1375f, arg_0, arg_0, -1245f))), vec4<f32>(_wgslsmith_f_op_f32(max(-133f, arg_0)), arg_0, 1601f, -826f))), vec4<f32>(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(floor(arg_0))), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(812f + arg_0)), _wgslsmith_f_op_f32(1817f * 130f), 1054f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, _wgslsmith_div_f32(474f, _wgslsmith_f_op_f32(func_2())), 382f)));
    let var_2 = arg_0;
    let var_3 = Struct_3(Struct_2(1u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, _wgslsmith_div_u32(32379u, 26294u)), firstLeadingBit(vec2<u32>(70426u, 13658u))), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, 36888u, 6827u), _wgslsmith_div_vec4_u32(vec4<u32>(126475u, 3951u, 2267u, 43730u), vec4<u32>(1u, 1u, 1u, 1u))));
    let var_4 = true;
    return vec2<bool>(var_4, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    let var_1 = ~vec2<u32>(100530u, _wgslsmith_sub_u32(min(var_0, min(var_0, var_0)), select(var_0, firstTrailingBit(4294967295u), true)));
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(11715i, 0i, 1i, i32(-1i) * -abs(u_input.c.x)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.c.x, u_input.b, u_input.c.x), vec4<i32>(u_input.d.x, -2147483647i, u_input.d.x, 1i)) << (_wgslsmith_add_vec4_u32(vec4<u32>(abs(var_0), var_0 | var_1.x, 1u, 40915u), vec4<u32>(var_1.x, var_0, ~33381u, var_1.x)) % vec4<u32>(32u)));
    let var_3 = u_input.b;
    var_2 = abs(~(~vec4<i32>(-1i, _wgslsmith_mod_i32(var_3, var_2.x), ~0i, 0i)));
    var_2 = abs(_wgslsmith_clamp_vec4_i32(~(vec4<i32>(-4270i, 2147483647i, var_3, 55141i) << (vec4<u32>(0u, var_0, 4294967295u, var_0) % vec4<u32>(32u))), min(vec4<i32>(-1i, u_input.c.x, 2147483647i, -1i), vec4<i32>(u_input.c.x, 2147483647i, 12211i, u_input.d.x)) >> (firstTrailingBit(vec4<u32>(4294967295u, var_1.x, 64358u, var_0)) % vec4<u32>(32u)), -(~vec4<i32>(var_3, -5817i, var_3, 50890i)))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(~69346u, ~0u, 46862u, ~var_1.x) << (vec4<u32>(var_0, _wgslsmith_mult_u32(var_1.x, 1u), var_1.x, ~50804u) % vec4<u32>(32u)), reverseBits(~vec4<u32>(var_0, var_0, 9076u, 1u) & vec4<u32>(27528u, var_1.x, 87460u, 9804u))) % vec4<u32>(32u));
    var var_4 = !vec2<bool>(true, select(true, _wgslsmith_f_op_f32(round(1000f)) <= -134f, true));
    var var_5 = !select(func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(2125f, 328f, var_4.x)), -980f)), func_1(_wgslsmith_f_op_f32(-440f - _wgslsmith_f_op_f32(f32(-1f) * -204f))), !(!func_1(1835f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-854f, _wgslsmith_f_op_f32(select(202f, 425f, var_5.x)), _wgslsmith_f_op_f32(sign(153f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1288f, 602f, 127f), vec3<f32>(730f, -1595f, -1000f)))) - vec3<f32>(339f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1443f)))), _wgslsmith_f_op_f32(ceil(-1085f)))));
}

