struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> vec4<f32> {
    let var_0 = arg_0;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-693f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-939f - var_0.b), _wgslsmith_f_op_f32(round(-632f))))), _wgslsmith_f_op_f32(arg_0.a + 441f), _wgslsmith_mult_vec3_i32(-(vec3<i32>(-1i) * -vec3<i32>(2147483647i, -26485i, 2147483647i)), arg_0.c), max(~_wgslsmith_sub_vec2_u32(vec2<u32>(42920u, 0u), reverseBits(arg_0.d)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.d.x, u_input.a), _wgslsmith_clamp_vec2_u32(var_0.d, var_0.d, vec2<u32>(37545u, var_0.d.x)))), true);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -774f)), -3446f)), _wgslsmith_f_op_f32(trunc(-191f)), _wgslsmith_f_op_f32(ceil(1193f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-399f, 317f, _wgslsmith_f_op_f32(-var_1.a), 802f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1790f, -1000f, arg_0.a, arg_0.a) - vec4<f32>(var_0.a, -1015f, arg_0.b, var_0.b))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> vec3<bool> {
    var var_0 = (_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(arg_0.c.x, -1i), abs(arg_0.c.x), 2147483647i), ~vec3<i32>(arg_0.c.x, -2545i, arg_0.c.x) ^ min(vec3<i32>(arg_0.c.x, arg_0.c.x, 2147483647i), arg_0.c)) < _wgslsmith_sub_i32(firstLeadingBit(0i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(2164i, arg_0.c.x, arg_0.c.x), arg_0.c))) || arg_0.e;
    var_0 = false;
    var var_1 = vec4<u32>(0u, countOneBits(41812u), 0u, arg_0.d.x);
    var var_2 = arg_0.e != true;
    var_0 = true;
    return vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1271f)), _wgslsmith_f_op_f32(-3145f - 368f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(961f, -405f)), -1206f))), any(!select(vec2<bool>(arg_0.e, true), vec2<bool>(arg_0.e, false), arg_0.c.x > arg_0.c.x)), false);
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = all(func_4(Struct_1(-622f, 2132f, _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -2147483647i, -11959i), vec3<i32>(arg_0, arg_0, -67406i)), select(vec3<i32>(arg_0, 1i, -23317i), vec3<i32>(-20632i, 28430i, arg_0), true)), vec2<u32>(14742u, 0u), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1180f, -299f, 943f, -721f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(435f, -1000f, -1286f, -789f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(2546f, -957f, vec3<i32>(arg_0, 1i, 3820i), vec2<u32>(u_input.a, 79993u), false), 58860u, true)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 272f, -1177f, -621f) + vec4<f32>(-1733f, 875f, -865f, 1036f))))));
    let var_1 = i32(-1i) * -min(1i, -35222i);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(460f)), 403f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1009f)), -vec3<i32>(-1i, arg_0, 0i), _wgslsmith_sub_vec2_u32(max(vec2<u32>(1u, u_input.a), vec2<u32>(17720u, u_input.a)), vec2<u32>(u_input.a, 33520u) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), var_0), 0u | _wgslsmith_sub_u32(u_input.a >> (u_input.a % 32u), u_input.a), var_0)).x, _wgslsmith_f_op_f32(218f - -685f), select(-max(select(vec3<i32>(1i, arg_0, arg_0), vec3<i32>(var_1, var_1, -7542i), false), abs(vec3<i32>(var_1, -2147483647i, var_1))), vec3<i32>(_wgslsmith_add_i32(select(var_1, arg_0, false), var_1), ~(-var_1), var_1), vec3<bool>(var_0, var_0, var_0)), countOneBits(vec2<u32>(0u, u_input.a)), !var_0);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.b, var_2.a)));
    let var_4 = _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a) << ((vec4<u32>(u_input.a, 4294967295u, 115919u, var_2.d.x) ^ vec4<u32>(u_input.a, 31570u, u_input.a, 1u)) % vec4<u32>(32u)), vec4<u32>(1u, 0u, u_input.a, _wgslsmith_clamp_u32(var_2.d.x, u_input.a, u_input.a))), vec4<u32>(reverseBits(min(var_2.d.x, var_2.d.x)), firstTrailingBit(~41899u), u_input.a, ~(~u_input.a))), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.d.x, u_input.a, 98993u, var_2.d.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, var_2.d.x, 22560u, var_2.d.x), vec4<u32>(0u, 4294967295u, 11672u, 4294967295u), vec4<u32>(55586u, 50224u, var_2.d.x, 0u))), firstLeadingBit(min(vec4<u32>(var_2.d.x, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, var_2.d.x, 0u))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, var_2.d.x, 3252u, u_input.a) >> (vec4<u32>(var_2.d.x, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)), vec4<u32>(30046u, 34149u, 1u, u_input.a))) << (~(_wgslsmith_sub_vec4_u32(vec4<u32>(76563u, 0u, 0u, u_input.a), vec4<u32>(var_2.d.x, u_input.a, var_2.d.x, 53132u)) >> (vec4<u32>(53773u, u_input.a, 30879u, var_2.d.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-183f + var_3)) - 1079f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1f, var_3)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-369f, _wgslsmith_f_op_f32(f32(-1f) * -1188f), any(vec2<bool>(var_2.e, var_2.e)))))))), vec3<i32>(25634i, 1i, ~1i), ~(~(~var_2.d)), var_2.e);
}

fn func_1(arg_0: bool, arg_1: vec4<i32>) -> u32 {
    let var_0 = func_2(_wgslsmith_sub_i32(min(firstTrailingBit(0i << (u_input.a % 32u)), arg_1.x), arg_1.x));
    var var_1 = func_4(Struct_1(1767f, _wgslsmith_f_op_f32(-var_0.b), countOneBits(-vec3<i32>(-2147483647i, arg_1.x, 0i)), ~_wgslsmith_div_vec2_u32(var_0.d << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)), var_0.d), arg_0), vec4<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + var_0.b) - -392f)), -808f, -1384f, var_0.b)).x;
    var var_2 = select(func_4(var_0, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2073f - var_0.a))), 1263f, _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(123f + var_0.b), 1f)))), !vec3<bool>(!all(vec3<bool>(false, true, false)), true, var_0.e), !(!vec3<bool>(false, true, var_0.e)));
    let var_3 = var_0;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(176f + 1764f) * _wgslsmith_f_op_f32(f32(-1f) * -1175f))))));
    return _wgslsmith_div_u32(~var_3.d.x, var_0.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-968f)) - _wgslsmith_div_f32(-1000f, 114f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(470f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1105f))))) + -1000f), vec3<i32>(select(select(var_0, var_0, any(vec2<bool>(false, false))), 0i, false), -15944i, ~(-firstLeadingBit(16541i))), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, func_1(false, ~vec4<i32>(1i, var_0, var_0, var_0))), ~vec2<u32>(u_input.a | 1u, func_1(false, vec4<i32>(var_0, var_0, -11344i, 6029i)))), all(vec4<bool>(true, true, !select(false, true, false), any(vec3<bool>(true, true, true)))));
    let var_2 = _wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(-29623i, var_0, abs(var_0)), max(vec3<i32>(-34109i, var_1.c.x, var_0), vec3<i32>(2147483647i, -2147483647i, -57683i)) ^ select(vec3<i32>(-6892i, -2147483647i, 0i), var_1.c, vec3<bool>(var_1.e, var_1.e, false))), vec3<i32>(firstTrailingBit(select(-var_1.c.x, _wgslsmith_mod_i32(-1i, var_1.c.x), !var_1.e)), _wgslsmith_mod_i32(var_0, firstTrailingBit(func_2(var_0).c.x)), ~(-(2311i << (var_1.d.x % 32u)))));
    var var_3 = !select(vec4<bool>(!(!var_1.e), var_1.e && var_1.e, true, var_1.e), !select(select(vec4<bool>(var_1.e, false, var_1.e, true), vec4<bool>(true, var_1.e, false, true), vec4<bool>(var_1.e, var_1.e, false, var_1.e)), select(vec4<bool>(false, false, false, true), vec4<bool>(var_1.e, var_1.e, true, true), vec4<bool>(var_1.e, false, var_1.e, var_1.e)), !vec4<bool>(var_1.e, true, false, true)), !any(select(vec3<bool>(true, var_1.e, true), vec3<bool>(var_1.e, var_1.e, var_1.e), var_1.e)));
    let var_4 = vec3<bool>(all(!(!var_3.yz)), var_3.x, var_1.e);
    var var_5 = var_1;
    let var_6 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -274f), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(func_2(var_5.c.x), 19713u, var_1.e)).x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_f32(floor(var_5.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * 1f)))));
    let var_7 = !vec2<bool>(any(!var_3.zzy), all(var_4));
    var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2478f), _wgslsmith_f_op_f32(abs(var_6.x)), false)), _wgslsmith_f_op_f32(-var_1.b), var_1.e))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.b))) * var_1.b))), abs(-var_1.c), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(1u, var_5.d.x, var_1.d.x), ~(~var_1.d.x)), ~vec2<u32>(reverseBits(4294967295u), ~var_1.d.x)), any(!select(vec4<bool>(var_3.x, var_1.e, true, true), select(vec4<bool>(var_3.x, true, false, var_4.x), vec4<bool>(var_7.x, var_3.x, var_7.x, true), var_4.x), vec4<bool>(true, var_5.e, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(~vec4<i32>(-51942i, var_0, 0i, var_1.c.x))), _wgslsmith_div_vec4_u32(select(firstLeadingBit(vec4<u32>(u_input.a, var_1.d.x, var_5.d.x, var_1.d.x)), abs(vec4<u32>(var_1.d.x, 0u, 94108u, 65463u)), select(vec4<bool>(true, var_3.x, false, false), vec4<bool>(var_5.e, true, true, var_1.e), vec4<bool>(true, var_1.e, var_5.e, var_5.e))), ~vec4<u32>(u_input.a, 23215u, u_input.a, 51184u)) << (select(~(~vec4<u32>(0u, 4294967295u, var_1.d.x, u_input.a)), vec4<u32>(~6902u, var_1.d.x & 4294967295u, var_1.d.x, max(0u, u_input.a)), select(select(vec4<bool>(true, var_7.x, var_4.x, false), vec4<bool>(var_4.x, true, false, false), vec4<bool>(var_7.x, false, false, var_3.x)), !vec4<bool>(false, true, false, var_7.x), any(var_3.yx))) % vec4<u32>(32u)), vec2<i32>(90050i, -2147483647i) | (_wgslsmith_add_vec2_i32(vec2<i32>(-1i, -51847i), vec2<i32>(-47124i, var_0)) | min(~vec2<i32>(var_1.c.x, var_0), vec2<i32>(2147483647i, var_0))));
}

