struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>) -> vec4<f32> {
    var var_0 = 29045u;
    var_0 = u_input.b.x >> (4294967295u % 32u);
    let var_1 = select(!(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(true, true, true))), !select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), -2147483647i < (0i << (u_input.b.x % 32u))), false);
    let var_2 = Struct_1(arg_0.zx, ~u_input.b, true);
    let var_3 = vec3<bool>(all(!(!select(vec3<bool>(false, var_1.x, true), vec3<bool>(var_1.x, false, false), true))), !all(vec3<bool>(!var_2.c, var_1.x, arg_0.x > -842f)), false);
    return _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_2.a.x, _wgslsmith_f_op_f32(-367f * arg_0.x)))), _wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-413f * 1154f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x - 329f) + arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -414f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_2(u_input.b.zw | ((vec2<u32>(4294967295u, 37462u) | ~u_input.b.xx) >> (u_input.b.zz % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(137f, _wgslsmith_f_op_f32(round(arg_1.x)), 189f, _wgslsmith_f_op_f32(step(-1801f, arg_1.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(arg_1, u_input.a.zzz))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.x, arg_1.x))) * arg_1.xz), _wgslsmith_mod_vec4_u32(~u_input.b, ~vec4<u32>(17170u, 4294967295u, u_input.b.x, arg_0)), !(35927i < abs(u_input.a.x))));
    let var_1 = select(!(!(!select(vec4<bool>(var_0.c.c, var_0.c.c, var_0.c.c, var_0.c.c), vec4<bool>(var_0.c.c, var_0.c.c, var_0.c.c, false), var_0.c.c))), select(!select(vec4<bool>(true, var_0.c.c, true, var_0.c.c), vec4<bool>(var_0.c.c, true, var_0.c.c, false), select(vec4<bool>(var_0.c.c, false, var_0.c.c, var_0.c.c), vec4<bool>(var_0.c.c, false, var_0.c.c, var_0.c.c), vec4<bool>(true, true, var_0.c.c, false))), select(select(!vec4<bool>(true, false, true, var_0.c.c), !vec4<bool>(false, true, var_0.c.c, true), !vec4<bool>(true, var_0.c.c, var_0.c.c, var_0.c.c)), vec4<bool>(var_0.c.c, all(vec3<bool>(var_0.c.c, var_0.c.c, var_0.c.c)), !var_0.c.c, true), var_0.c.c), !(!select(vec4<bool>(var_0.c.c, true, true, false), vec4<bool>(var_0.c.c, var_0.c.c, false, true), false))), all(!select(!vec3<bool>(var_0.c.c, false, false), !vec3<bool>(var_0.c.c, false, false), true)));
    var var_2 = min(0i, u_input.a.x);
    var_0 = Struct_2(u_input.b.yx, vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.b.x)), 804f, arg_1.x, 1725f), Struct_1(vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_mult_vec4_u32(~vec4<u32>(1866u, var_0.c.b.x, 1u, 0u), vec4<u32>(arg_0, _wgslsmith_mod_u32(var_0.a.x, var_0.c.b.x), 0u, var_0.c.b.x)), false));
    var var_3 = vec3<i32>(u_input.a.x, 1i, -(~abs(-28146i)));
    return Struct_2(var_0.c.b.xw, vec4<f32>(875f, var_0.b.x, _wgslsmith_f_op_f32(arg_1.x - -581f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(576f - 1000f) - 410f)), var_0.c);
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = !arg_0.c.c;
    var var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = firstLeadingBit(abs(~var_1.c.b));
    var_1 = Struct_2(_wgslsmith_mod_vec2_u32(var_2.yy, _wgslsmith_mod_vec2_u32(firstLeadingBit(var_2.ww << (var_2.xx % vec2<u32>(32u))), vec2<u32>(var_1.c.b.x, _wgslsmith_mult_u32(var_2.x, 4294967295u)))), arg_0.b, func_2(abs((arg_0.c.b.x ^ var_2.x) & var_2.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(arg_0.b.yxz, _wgslsmith_f_op_vec3_f32(-var_1.b.wyy), !vec3<bool>(arg_0.c.c, arg_0.c.c, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_1.b.wyz, arg_0.b.wzy)))))).c);
    return func_2(_wgslsmith_dot_vec4_u32(u_input.b, max(~vec4<u32>(67964u, var_1.c.b.x, 0u, 1u), vec4<u32>(27635u, max(1u, arg_0.c.b.x), 1u, arg_0.a.x))), _wgslsmith_f_op_vec3_f32(arg_0.b.zww * _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -984f), _wgslsmith_f_op_f32(f32(-1f) * -3373f), _wgslsmith_f_op_f32(-arg_0.b.x)))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> f32 {
    return _wgslsmith_f_op_f32(f32(-1f) * -905f);
}

fn func_6(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    var var_0 = countOneBits(_wgslsmith_mod_i32(~u_input.a.x | ~u_input.a.x, u_input.a.x)) | 0i;
    var_0 = -1i;
    let var_1 = abs(2147483647i);
    let var_2 = 4294967295u;
    var_0 = var_1;
    return func_2(27665u, _wgslsmith_f_op_vec3_f32(select(func_2(~min(arg_2.a.x, var_2), _wgslsmith_f_op_vec3_f32(arg_3.b.zzz + arg_1.wxw)).b.ywx, arg_2.b.zyz, !vec3<bool>(true, false, arg_2.c.c))));
}

fn func_1(arg_0: f32, arg_1: bool) -> f32 {
    var var_0 = func_6(vec3<f32>(arg_0, 1324f, _wgslsmith_f_op_f32(func_5(_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(60770u, u_input.b.x, u_input.b.x, u_input.b.x)), func_4(func_2(u_input.b.x, vec3<f32>(arg_0, arg_0, 1049f))), 4294967295u, u_input.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2644f, -429f, _wgslsmith_div_f32(2188f, -654f), _wgslsmith_f_op_f32(arg_0 - -1596f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 395f, arg_0, arg_0))))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0)), -774f, _wgslsmith_div_f32(-1225f, arg_0), _wgslsmith_f_op_f32(f32(-1f) * -732f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(790f, arg_0, 2146f, arg_0) - vec4<f32>(arg_0, arg_0, arg_0, 1901f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, 1358f))))), func_2(1u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) * _wgslsmith_f_op_f32(arg_0 - arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -1089f))), Struct_2(firstTrailingBit(u_input.b.zx), vec4<f32>(arg_0, arg_0, -527f, _wgslsmith_f_op_f32(arg_0 * 1225f)), func_4(func_4(func_2(0u, vec3<f32>(1103f, 1329f, arg_0)))).c));
    var_0 = Struct_2(vec2<u32>(~(~var_0.a.x), 44823u), _wgslsmith_f_op_vec4_f32(-var_0.b), Struct_1(vec2<f32>(var_0.c.a.x, 264f), firstTrailingBit(u_input.b | vec4<u32>(var_0.c.b.x, u_input.b.x, 0u, 36901u)) ^ ~u_input.b, true));
    var_0 = Struct_2(~(vec2<u32>(_wgslsmith_mod_u32(var_0.c.b.x, 12027u), 4294967295u) | vec2<u32>(1u, 31047u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(388f, func_2(~var_0.a.x, _wgslsmith_f_op_vec3_f32(min(var_0.b.yyw, var_0.b.wwz))).c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-385f - var_0.b.x)), var_0.c.a.x) - _wgslsmith_f_op_vec4_f32(-var_0.b)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), -277f), var_0.c.b, arg_1));
    var_0 = func_2(62052u, var_0.b.wxw);
    var var_1 = u_input.a.wy;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1840f * -654f)), 1599f, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), false)))), _wgslsmith_f_op_vec4_f32(func_3(vec3<f32>(_wgslsmith_f_op_f32(-496f - 284f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(616f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -955f))), _wgslsmith_sub_vec3_i32(u_input.a.yzw, select(-u_input.a.ywz, firstTrailingBit(u_input.a.xwz), vec3<bool>(true, true, false))))).wzw);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1770f, func_2(~u_input.b.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-990f, var_0.x, var_0.x) - vec3<f32>(var_0.x, var_0.x, var_0.x))).b.x) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-323f, -570f)), _wgslsmith_div_vec2_f32(var_0.yy, var_0.yx))) + vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -167f))), ~(~vec4<u32>(u_input.b.x << (u_input.b.x % 32u), _wgslsmith_mult_u32(27847u, u_input.b.x), 1u, ~u_input.b.x)), !(0u == u_input.b.x));
    var var_2 = Struct_2(u_input.b.xw << (select(var_1.b.xx, u_input.b.zw, select(vec2<bool>(false, true), !vec2<bool>(var_1.c, var_1.c), true)) % vec2<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x)))), var_1.a.x, _wgslsmith_f_op_f32(func_2(~43575u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-318f, -571f, 1876f))).b.x + _wgslsmith_f_op_f32(func_1(1097f, !var_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.x), 360f)))), Struct_1(_wgslsmith_f_op_vec2_f32(-func_2(~var_1.b.x, _wgslsmith_div_vec3_f32(vec3<f32>(1743f, var_0.x, var_0.x), vec3<f32>(-1013f, var_0.x, var_0.x))).b.xz), select(u_input.b, select(u_input.b, vec4<u32>(u_input.b.x, 20135u, 1u, 0u), vec4<bool>(var_1.c, var_1.c, false, var_1.c)) << (select(var_1.b, var_1.b, vec4<bool>(false, var_1.c, var_1.c, var_1.c)) % vec4<u32>(32u)), select(!vec4<bool>(var_1.c, var_1.c, false, var_1.c), vec4<bool>(true, false, var_1.c, false), var_1.c | true)), !(select(false, true, false) && var_1.c)));
    var var_3 = func_6(var_2.b.zzw, var_2.b, Struct_2(vec2<u32>(_wgslsmith_div_u32(18520u, 55374u), 11479u >> (~var_1.b.x % 32u)), func_2(var_1.b.x, vec3<f32>(_wgslsmith_f_op_f32(989f - 768f), _wgslsmith_f_op_f32(-var_2.c.a.x), 366f)).b, var_1), func_2(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_1.b.wxx << (vec3<u32>(0u, 36128u, 1u) % vec3<u32>(32u)), var_1.b.zzx), min(select(vec3<u32>(56293u, u_input.b.x, var_2.a.x), u_input.b.wzx, var_2.c.c), abs(vec3<u32>(u_input.b.x, 44481u, u_input.b.x)))), var_2.b.zzy)).c;
    let var_4 = func_6(vec3<f32>(_wgslsmith_f_op_vec4_f32(func_3(vec3<f32>(_wgslsmith_f_op_f32(trunc(-2435f)), _wgslsmith_f_op_f32(1000f - var_0.x), -844f), u_input.a.zyw)).x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1407f * _wgslsmith_f_op_f32(var_2.b.x + var_2.b.x)))), 182f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_2.b * var_2.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(-178f, var_3.a.x, var_0.x, var_2.b.x) - vec4<f32>(2416f, -207f, 1106f, -1647f))))), _wgslsmith_f_op_vec4_f32(-var_2.b)), Struct_2(~var_3.b.yy, var_2.b, var_1), func_2(1u, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_2.b.wxw)))))));
    let var_5 = Struct_2(var_2.a, func_2(var_4.a.x, vec3<f32>(565f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(264f * 382f) * func_6(var_2.b.zyz, var_4.b, Struct_2(var_2.c.b.wz, var_2.b, var_1), Struct_2(var_2.c.b.xx, vec4<f32>(var_3.a.x, var_0.x, var_4.b.x, 320f), Struct_1(var_2.b.xw, var_3.b, var_2.c.c))).b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_4.c.a.x - var_1.a.x))))).b, var_1);
    let var_6 = select(48446i, -(~2147483647i), !(var_4.c.c & false));
    var_3 = Struct_1(var_0.zz, ~(~select(_wgslsmith_add_vec4_u32(u_input.b, u_input.b), ~vec4<u32>(var_3.b.x, var_2.a.x, 65804u, var_5.c.b.x), select(vec4<bool>(var_4.c.c, var_4.c.c, var_3.c, var_1.c), vec4<bool>(var_2.c.c, var_2.c.c, false, false), vec4<bool>(var_3.c, true, var_4.c.c, false)))), !var_3.c);
    var_2 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2459f))));
}

