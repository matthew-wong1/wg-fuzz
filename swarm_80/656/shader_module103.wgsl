struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> f32 {
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(212f - 1734f))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_2) -> Struct_4 {
    let var_0 = abs(~vec3<u32>(u_input.a, _wgslsmith_clamp_u32(36949u << (u_input.b % 32u), 60267u, 1u), _wgslsmith_sub_u32(100435u, u_input.b) | u_input.a));
    var var_1 = arg_0.x;
    let var_2 = Struct_4(Struct_2(arg_2.a, arg_2.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.c - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-821f, arg_2.c.x), arg_2.c))) + arg_2.c), arg_2.b), Struct_1(all(select(select(vec4<bool>(arg_2.b.b, false, true, false), vec4<bool>(arg_2.b.a, arg_2.a.x, false, false), arg_2.b.b), vec4<bool>(arg_2.d.b, arg_2.a.x, arg_2.a.x, arg_2.b.b), !arg_2.a.x)), !arg_2.b.b, abs(reverseBits(0i))));
    var_1 = -(~var_2.a.b.c >> (var_0.x % 32u));
    let var_3 = Struct_1(var_2.b.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(true, arg_0.x, Struct_1(false, true, 52232i), u_input.a)), _wgslsmith_f_op_f32(-189f * arg_2.c.x))))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_2.a.c.x, _wgslsmith_f_op_f32(round(arg_2.c.x)))), _wgslsmith_f_op_f32(func_3(true, -24498i, Struct_1(false, var_2.b.a, arg_2.b.c), 51911u))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(max(arg_0.xzz, reverseBits(vec3<i32>(var_2.b.c, 55496i, arg_0.x))), _wgslsmith_sub_vec3_i32(-arg_0.yyw, select(arg_0.wyx, arg_0.zwz, vec3<bool>(arg_2.a.x, true, true)))), var_2.b.c));
    return Struct_4(Struct_2(vec2<bool>(_wgslsmith_mod_i32(-1i, 2147483647i) <= _wgslsmith_div_i32(var_2.a.b.c, var_3.c), any(vec2<bool>(var_2.b.b, var_2.a.a.x))), var_3, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.c.x, arg_2.c.x)) * arg_2.c), vec2<f32>(_wgslsmith_f_op_f32(step(-832f, arg_2.c.x)), -1442f), any(vec4<bool>(false, arg_2.b.a, arg_2.d.b, false)) != !var_2.a.a.x)), var_3), var_3);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: vec4<bool>) -> vec3<f32> {
    let var_0 = func_2(~_wgslsmith_div_vec4_i32(vec4<i32>(~0i, 32763i << (u_input.b % 32u), arg_1.b.c, ~arg_1.b.c), ~vec4<i32>(-1i, 1i, 1i, arg_1.b.c)), i32(-1i) * -_wgslsmith_mod_i32(2147483647i, _wgslsmith_div_i32(arg_1.b.c, arg_1.b.c)), func_2(select(min(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 31301i, arg_1.a.b.c, 2147483647i), vec4<i32>(arg_1.b.c, arg_1.b.c, arg_1.b.c, 1i)), vec4<i32>(arg_1.a.d.c, -29907i, -1i, -47345i) | vec4<i32>(arg_1.a.d.c, -1i, arg_1.b.c, 1i)), abs(countOneBits(vec4<i32>(1i, arg_1.a.b.c, 0i, arg_1.b.c))), false), ~abs(~arg_1.a.d.c), func_2(vec4<i32>(arg_1.a.d.c, arg_1.a.d.c, ~arg_1.a.b.c, ~(-4007i)), -16175i, func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.a.b.c, arg_1.b.c, 1i, arg_1.a.b.c), vec4<i32>(-28487i, -2147483647i, 2147483647i, 1i), vec4<i32>(0i, 14229i, -2147483647i, -26110i)), 69095i, func_2(vec4<i32>(-2147483647i, -60042i, arg_1.a.d.c, -4433i), 1i, arg_1.a).a).a).a).a).b;
    let var_1 = 1u;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f - arg_1.a.c.x), _wgslsmith_div_f32(arg_1.a.c.x, arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1104f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2(vec4<i32>(arg_1.a.d.c, -21542i, 0i, -1i), 1i, Struct_2(vec2<bool>(true, arg_2.x), Struct_1(true, true, var_0.c), vec2<f32>(221f, 762f), var_0)).a.c.x, _wgslsmith_f_op_f32(-470f - -1077f), _wgslsmith_div_f32(-2346f, 1071f)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: bool) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.x, arg_1.a.c.x) * _wgslsmith_f_op_vec2_f32(ceil(arg_1.c)))), arg_1.e.c)), func_2(~vec4<i32>(1i, abs(-1i), 57219i, 0i), reverseBits(~33034i & _wgslsmith_add_i32(arg_1.a.d.c, 2147483647i)), arg_1.e), vec4<bool>(arg_2, arg_2, true, arg_2)));
    var var_2 = arg_1;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-473f)), var_1.x))), _wgslsmith_f_op_f32(func_3(arg_2, var_2.a.b.c, arg_1.e.b, ~27099u)));
    var_2 = Struct_3(var_2.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_2.b))), var_2.e.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(-803f, var_3.x, -357f, arg_1.e.c.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-543f, -1000f, var_2.a.c.x, var_3.x), arg_1.d)))), var_2.e);
    return Struct_2(vec2<bool>(~2147483647i > var_2.a.d.c, !var_2.a.a.x), var_2.e.b, _wgslsmith_f_op_vec2_f32(var_2.e.c + vec2<f32>(_wgslsmith_f_op_f32(-arg_1.e.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_1.x))), Struct_1(true, true, 15752i));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: bool) -> Struct_4 {
    var var_0 = Struct_4(Struct_2(select(arg_1.a, vec2<bool>(true, any(vec2<bool>(false, true))), arg_1.a), arg_1.d, arg_0.xy, Struct_1(true, false, 18830i)), Struct_1(arg_1.a.x, arg_1.d.b, arg_1.d.c));
    let var_1 = func_2(-_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, arg_1.d.c, var_0.b.c, arg_1.d.c) << (vec4<u32>(u_input.a, 10752u, u_input.b, 38581u) % vec4<u32>(32u)), vec4<i32>(2147483647i, 47041i, 8604i, 2147483647i) | vec4<i32>(arg_1.b.c, arg_1.b.c, -1i, -1i)) << (select(min(countOneBits(vec4<u32>(24914u, 57035u, 0u, u_input.a)), vec4<u32>(u_input.a, 0u, u_input.a, 1u)), firstLeadingBit(vec4<u32>(4294967295u, u_input.a, u_input.a, 0u)), vec4<bool>(false, 368f <= arg_1.c.x, true, arg_2)) % vec4<u32>(32u)), ~(-25053i), arg_1);
    let var_2 = false;
    var var_3 = u_input.a;
    var_3 = min(_wgslsmith_add_u32(~15072u, u_input.a ^ (~4294967295u ^ u_input.a)), _wgslsmith_sub_u32(36216u, _wgslsmith_div_u32(21705u, firstTrailingBit(_wgslsmith_mod_u32(u_input.b, 1u)))));
    return func_2(max(vec4<i32>(2147483647i, 8964i, _wgslsmith_div_i32(1i, var_1.a.b.c >> (32167u % 32u)), firstTrailingBit(1i)), firstLeadingBit(-min(vec4<i32>(610i, 0i, var_1.a.d.c, -2147483647i), vec4<i32>(var_1.b.c, -44281i, var_1.b.c, 18169i)))), 40320i, func_2(~(~vec4<i32>(var_1.b.c, arg_1.d.c, arg_1.b.c, -17982i) ^ -vec4<i32>(-2147483647i, 21843i, var_1.b.c, -11885i)), -1i, func_2(~abs(vec4<i32>(1i, 13978i, 0i, 1852i)), reverseBits(1i), func_2(vec4<i32>(2147483647i, var_0.b.c, var_1.b.c, arg_1.b.c) >> (vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)), var_0.b.c, var_1.a).a).a).a);
}

fn func_6(arg_0: f32, arg_1: Struct_4, arg_2: f32, arg_3: vec2<bool>) -> bool {
    var var_0 = Struct_4(func_5(vec3<f32>(1234f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(803f)) - _wgslsmith_f_op_f32(round(arg_1.a.c.x))), -158f), arg_1.a, -1i != max(11765i, _wgslsmith_mod_i32(arg_1.a.b.c, arg_1.a.d.c))).a, func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, 889f, 1034f))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-372f, arg_2, arg_0), vec3<f32>(arg_2, -899f, arg_0))))), func_5(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2, -2489f, arg_2), vec3<f32>(397f, arg_2, arg_1.a.c.x))), func_2(vec4<i32>(arg_1.a.d.c, 1i, arg_1.b.c, arg_1.a.b.c), 2147483647i, arg_1.a).a, !all(vec4<bool>(arg_1.b.a, arg_1.b.a, true, arg_3.x))).a, arg_1.b.a).b);
    return !any(vec4<bool>(!var_0.b.b, arg_1.b.c <= var_0.b.c, any(!vec2<bool>(true, var_0.a.b.b)), !all(arg_1.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1((_wgslsmith_div_u32(countOneBits(25111u), _wgslsmith_add_u32(u_input.b, u_input.a)) == u_input.a) && func_6(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -681f), 141f), func_5(vec3<f32>(-1036f, -1446f, 352f), func_1(vec4<u32>(u_input.a, u_input.a, 35575u, u_input.b), Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(true, false, -1964i), vec2<f32>(-1032f, -141f), Struct_1(false, false, 2147483647i)), vec4<f32>(-230f, -407f, 1000f, -592f), vec2<f32>(2015f, -1785f), vec4<f32>(-649f, -1154f, -2315f, 1204f), Struct_2(vec2<bool>(true, true), Struct_1(true, false, -22582i), vec2<f32>(-1172f, 670f), Struct_1(true, true, -15159i))), true), true), 488f, vec2<bool>(true, true)), !(18759u == u_input.a), min(~1i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-44739i, 2147483647i), vec2<i32>(-12576i, 0i)), vec2<i32>(-41406i, 0i)), abs(619i))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1313f + -330f) - 1319f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -249f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1096f))))));
    let var_2 = vec4<bool>(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1410f, -550f, -626f)))), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(498f, -1000f, 478f))), Struct_2(!vec2<bool>(var_0.a, var_0.a), Struct_1(false, var_0.b, -1i), var_1, func_2(vec4<i32>(-10513i, var_0.c, 20518i, var_0.c), var_0.c, Struct_2(vec2<bool>(var_0.a, false), Struct_1(false, var_0.b, var_0.c), vec2<f32>(var_1.x, var_1.x), Struct_1(true, var_0.a, -24889i))).b), true).a, true).b.b, _wgslsmith_add_i32(0i, -9124i) < (43394i | var_0.c), true, false);
    var var_3 = Struct_3(func_2(-select(vec4<i32>(var_0.c, var_0.c, var_0.c, var_0.c), vec4<i32>(67762i, 2147483647i, 1i, var_0.c), vec4<bool>(true, var_2.x, var_0.a, var_0.b)) << (firstLeadingBit(abs(vec4<u32>(u_input.b, 46175u, u_input.a, 1u))) % vec4<u32>(32u)), abs(~var_0.c | _wgslsmith_dot_vec2_i32(vec2<i32>(-13357i, var_0.c), vec2<i32>(-39174i, 1i))), func_1(vec4<u32>(u_input.a & u_input.a, u_input.a, 417u, ~26313u), Struct_3(func_2(vec4<i32>(29059i, 1i, 70843i, -2147483647i), 0i, Struct_2(var_2.ww, Struct_1(false, var_2.x, 0i), vec2<f32>(554f, var_1.x), Struct_1(false, true, var_0.c))).a, vec4<f32>(var_1.x, var_1.x, var_1.x, -317f), vec2<f32>(455f, var_1.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, -1055f, var_1.x, var_1.x), vec4<f32>(1525f, var_1.x, -833f, 1212f))), func_5(vec3<f32>(1000f, var_1.x, var_1.x), Struct_2(var_2.zx, Struct_1(false, var_2.x, -2147483647i), vec2<f32>(435f, var_1.x), Struct_1(true, false, 1i)), true).a), !var_0.b)).a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -674f, 479f, var_1.x) + vec4<f32>(var_1.x, var_1.x, -287f, var_1.x))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(330f, -281f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, -1197f, var_1.x, 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-351f, var_1.x, 1135f, 1051f), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))), !select(var_2, vec4<bool>(true, var_0.a, var_0.a, var_0.a), var_2))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, var_1.x, -1000f, var_1.x))))))), Struct_2(!var_2.wx, func_5(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), var_1.x), func_1(firstTrailingBit(vec4<u32>(u_input.a, u_input.b, 1u, 1u)), Struct_3(Struct_2(vec2<bool>(var_2.x, false), Struct_1(false, false, var_0.c), var_1, Struct_1(false, false, var_0.c)), vec4<f32>(1753f, var_1.x, var_1.x, 287f), var_1, vec4<f32>(var_1.x, -1000f, 236f, var_1.x), Struct_2(vec2<bool>(false, false), Struct_1(false, var_2.x, var_0.c), vec2<f32>(-1062f, 888f), Struct_1(var_0.b, true, 2147483647i))), true), true).a.b, vec2<f32>(_wgslsmith_f_op_f32(func_3(true, _wgslsmith_add_i32(var_0.c, 15791i), func_5(vec3<f32>(var_1.x, var_1.x, var_1.x), Struct_2(var_2.zz, Struct_1(var_2.x, true, -1i), vec2<f32>(-143f, -218f), Struct_1(true, true, 2147483647i)), var_0.b).a.b, 1u)), -1000f), func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 835f, var_1.x) - vec3<f32>(var_1.x, -793f, -619f)), func_5(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(624f, -1435f, -1119f), vec3<f32>(483f, -530f, var_1.x))), func_1(vec4<u32>(u_input.b, u_input.a, u_input.b, 0u), Struct_3(Struct_2(vec2<bool>(var_2.x, true), Struct_1(var_2.x, false, var_0.c), var_1, Struct_1(var_2.x, var_2.x, -152i)), vec4<f32>(215f, var_1.x, 1784f, var_1.x), var_1, vec4<f32>(var_1.x, var_1.x, var_1.x, 596f), Struct_2(var_2.wz, Struct_1(var_0.b, true, var_0.c), vec2<f32>(var_1.x, 588f), Struct_1(var_2.x, true, var_0.c))), true), var_0.b).a, var_2.x).b));
    let var_4 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(808f, -464f, _wgslsmith_f_op_f32(trunc(-684f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.c.x - -352f), _wgslsmith_f_op_f32(min(var_4, var_1.x))))));
}

