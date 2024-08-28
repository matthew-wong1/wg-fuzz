struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<f32>,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: vec4<u32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_4(2376f, select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(false, true, true, true)), true, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), true))), vec4<bool>(true, any(vec2<bool>(true, true)), firstTrailingBit(u_input.a.x) < (u_input.e >> (5144u % 32u)), any(vec4<bool>(false, false, true, false)) & true), any(vec2<bool>(true, true))), vec4<u32>(1u, u_input.a.x & ~(2467u >> (u_input.a.x % 32u)), 6722u, 1u), !((select(false, false, true) && true) | true), Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(false, false, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-740f, -469f) - vec2<f32>(1199f, 1398f)) * vec2<f32>(1067f, 2067f))), vec3<f32>(_wgslsmith_f_op_f32(-669f - _wgslsmith_f_op_f32(ceil(-281f))), _wgslsmith_div_f32(-1081f, 1261f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(816f, -249f))))));
    var var_1 = countOneBits(_wgslsmith_mult_vec3_u32(~select(_wgslsmith_mult_vec3_u32(var_0.c.zwz, vec3<u32>(0u, var_0.c.x, 31306u)), vec3<u32>(1u, 46610u, 4294967295u), vec3<bool>(var_0.d, false, false)), select(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(18852u, 1u, 39212u)), select(vec3<u32>(u_input.e, 52704u, 23847u), var_0.c.xxz, var_0.e.a.x)), _wgslsmith_div_vec3_u32(var_0.c.zxx, select(vec3<u32>(1u, u_input.e, var_0.c.x), vec3<u32>(0u, 104368u, 1u), vec3<bool>(var_0.e.a.x, var_0.d, true))), select(var_0.b.yxx, select(vec3<bool>(var_0.b.x, true, true), vec3<bool>(false, var_0.e.a.x, false), var_0.b.yyz), true))));
    var_0 = Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.e.c.x * var_0.e.c.x))), vec4<bool>(var_0.b.x, false, var_0.b.x, true), reverseBits(~(select(var_0.c, var_0.c, var_0.b) << (~var_0.c % vec4<u32>(32u)))), !(!all(select(vec4<bool>(false, false, false, true), vec4<bool>(var_0.e.a.x, var_0.d, var_0.d, var_0.d), var_0.e.a.x))), Struct_1(select(var_0.b.ww, select(vec2<bool>(var_0.b.x, var_0.b.x), !var_0.e.a, vec2<bool>(false, var_0.e.a.x)), any(var_0.b.xwz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.e.c.yy + var_0.e.c.zx) - _wgslsmith_div_vec2_f32(var_0.e.c.yy, vec2<f32>(var_0.a, -1384f)))), _wgslsmith_f_op_vec3_f32(ceil(var_0.e.c))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.e.c.x, _wgslsmith_f_op_f32(step(var_0.a, var_0.a))))) - 803f));
    let var_3 = ~u_input.c.x;
    return vec2<bool>(var_0.e.a.x, var_0.d);
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<f32>) -> vec2<i32> {
    var var_0 = true;
    var var_1 = Struct_2(false, Struct_1(func_3(), _wgslsmith_f_op_vec2_f32(-arg_2), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, arg_2.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1514f, 742f, arg_2.x)))))));
    var var_2 = var_1.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_1.b.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -597f)))), _wgslsmith_div_f32(731f, _wgslsmith_f_op_f32(-var_1.b.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -965f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -488f)) * -2027f)));
    var var_4 = Struct_3(Struct_2(var_2.a.x, Struct_1(func_3(), var_2.c.zy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.c - var_3.yxx) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.x, -1798f, -1000f))))), true, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.x)) - _wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_f_op_f32(var_1.b.c.x * 664f)))), _wgslsmith_f_op_f32(-var_2.b.x), var_3.x), Struct_1(vec2<bool>(_wgslsmith_f_op_f32(-622f + var_3.x) == arg_2.x, var_1.b.a.x), var_1.b.c.yy, _wgslsmith_f_op_vec3_f32(var_3.wwx + var_1.b.c)), arg_1);
    return _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.c.zy, -arg_0.zz), min(firstLeadingBit(~vec2<i32>(arg_1, 18816i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 10633i), vec2<i32>(u_input.b, arg_1), u_input.c.yz) << (u_input.a.xy % vec2<u32>(32u))) & -_wgslsmith_sub_vec2_i32(u_input.c.yx, _wgslsmith_mult_vec2_i32(u_input.c.zx, u_input.c.zz)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_4) -> bool {
    var var_0 = 268f;
    let var_1 = vec2<i32>(-_wgslsmith_dot_vec2_i32(func_2(-vec4<i32>(1i, -44612i, 8217i, -13658i), _wgslsmith_clamp_i32(arg_0.x, arg_0.x, -16316i), arg_1.e.b), -abs(u_input.c.zz)), _wgslsmith_div_i32(arg_0.x, -26726i));
    var var_2 = arg_1.b.x;
    let var_3 = arg_1.e;
    let var_4 = !all(arg_1.b.wyz);
    return any(arg_1.b.xw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-3801i, -1i), u_input.c.zz, vec2<i32>(u_input.d, 2147483647i)) | u_input.c.yx, u_input.c.zx), -2147483647i, -35934i, i32(-1i) * -_wgslsmith_add_i32(-50065i, 11007i)));
    let var_1 = select(u_input.c.x, var_0.x | reverseBits(-39048i), all(vec2<bool>(false, true)));
    var var_2 = Struct_3(Struct_2((i32(-1i) * -2147483647i) < var_0.x, Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -275f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-129f, 270f, -199f)) * vec3<f32>(1503f, -1000f, 156f)))), func_1(vec3<i32>(_wgslsmith_sub_i32(u_input.d, firstTrailingBit(2147483647i)), ~_wgslsmith_mod_i32(u_input.b, -40648i), u_input.c.x), Struct_4(-969f, select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), false), ~vec4<u32>(0u, 0u, u_input.a.x, 0u) & _wgslsmith_clamp_vec4_u32(vec4<u32>(58740u, u_input.a.x, 4294967295u, u_input.e), vec4<u32>(15797u, 1u, u_input.e, u_input.a.x), vec4<u32>(u_input.e, 19158u, 37399u, u_input.e)), true, Struct_1(vec2<bool>(true, true), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 905f), vec2<f32>(-1506f, -749f)), vec3<f32>(595f, 1000f, -774f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-646f, 775f, 542f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1073f, 334f, 757f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(-449f + -2168f), 792f)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), all(vec2<bool>(false, true))))), Struct_1(select(vec2<bool>(any(vec3<bool>(false, true, false)), true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), true), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(211f, 1429f), vec2<f32>(-472f, -1000f), false)))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1487f * 1464f))), _wgslsmith_f_op_f32(step(-598f, -867f)), _wgslsmith_f_op_f32(step(-566f, _wgslsmith_f_op_f32(step(1241f, 1089f)))))), -abs(var_1) << (~(~8473u) % 32u));
    let var_3 = Struct_4(_wgslsmith_f_op_f32(-var_2.c.x), vec4<bool>(var_2.d.a.x, ((u_input.e << (51713u % 32u)) > ~u_input.a.x) | var_2.a.b.a.x, any(!(!vec4<bool>(true, var_2.d.a.x, var_2.d.a.x, var_2.a.b.a.x))), var_2.a.b.a.x), reverseBits(vec4<u32>(u_input.e, ~firstLeadingBit(u_input.a.x), countOneBits(u_input.e), 45678u)), !func_3().x, Struct_1(vec2<bool>(any(!var_2.d.a), !func_1(vec3<i32>(2147483647i, 27861i, u_input.d), Struct_4(-692f, vec4<bool>(false, true, false, true), vec4<u32>(71096u, 55199u, u_input.a.x, u_input.a.x), false, var_2.d))), vec2<f32>(var_2.a.b.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.c.x * -380f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1077f, -740f, var_2.c.x) - var_2.a.b.c) * vec3<f32>(-519f, var_2.c.x, -461f)))));
    let var_4 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.b.b.x) - _wgslsmith_f_op_f32(1064f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.c.x)) + var_3.e.c.x))), select(var_3.b, var_3.b, var_3.e.a.x), _wgslsmith_mult_vec4_u32(abs(~var_3.c), var_3.c) & vec4<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a.zy), vec2<u32>(var_3.c.x, var_3.c.x)), (var_3.c.x | var_3.c.x) << (var_3.c.x % 32u), _wgslsmith_mult_u32(30150u, ~u_input.e), ~16518u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_3.c.x), u_input.a.zz) % 32u)), false, Struct_1(!(!vec2<bool>(false, var_2.a.a)), var_2.a.b.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_3.e.c), vec3<f32>(var_2.d.c.x, var_2.d.b.x, -449f))), _wgslsmith_f_op_vec3_f32(var_2.d.c * var_2.a.b.c), !var_2.b))));
    var_2 = Struct_3(var_2.a, var_2.d.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_2.d.c))), Struct_1(var_2.a.b.a, var_2.c.xz, vec3<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(trunc(1402f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a + -719f)), 393f)), 1i);
    var var_5 = _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, var_3.c.x) & 1u, max(50596u, ~u_input.a.x)) >> (0u % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, 12487u, 1u, 23764u), vec4<u32>(var_4.c.x, ~0u, ~0u, ~var_4.c.x)), var_4.c));
    var var_6 = var_2.a.a || (-1066f < _wgslsmith_f_op_f32(-var_2.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.c.x | _wgslsmith_mult_u32(var_3.c.x << (~var_4.c.x % 32u), var_3.c.x), var_3.c.x, var_4.c.x, _wgslsmith_div_u32(0u, firstTrailingBit(1u << (~var_4.c.x % 32u))));
}

