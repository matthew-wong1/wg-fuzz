struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: bool,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = false;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-853f, 219f))))))), min(_wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -1i, 6331i), vec2<i32>(1i, 1i)), countOneBits(abs(firstTrailingBit(vec2<i32>(15316i, 1719i))))), false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(740f, -1016f, 255f, 1051f))), vec4<f32>(_wgslsmith_f_op_f32(step(-190f, -365f)), -2528f, _wgslsmith_f_op_f32(-179f - 547f), 1611f))), 85621u);
    var var_2 = Struct_1(vec2<f32>(var_1.a.x, _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(-var_1.a.x))), vec2<i32>(-2147483647i, min(39349i, 35177i)), var_1.c || !(var_1.c || all(vec2<bool>(true, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - 983f), _wgslsmith_f_op_f32(abs(var_1.d.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -304f), -560f)))), _wgslsmith_add_u32(31492u, 1u));
    var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_2.d.x + _wgslsmith_f_op_f32(-1316f + 117f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -239f) + var_1.a.x)) - var_1.d.xw), vec2<i32>(var_2.b.x | -var_2.b.x, ~(-45495i)), true, _wgslsmith_f_op_vec4_f32(select(var_2.d, _wgslsmith_f_op_vec4_f32(-var_1.d), !(true | (var_2.c || var_2.c)))), min(_wgslsmith_dot_vec2_u32(max(vec2<u32>(var_1.e, var_2.e), abs(vec2<u32>(31634u, var_2.e))), ~vec2<u32>(4294967295u, u_input.a) << (_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 33921u), vec2<u32>(81016u, u_input.a)) % vec2<u32>(32u))), ~(~1u)));
    var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.d.x, var_1.d.x), vec2<f32>(-745f, var_2.d.x))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_1.a)) + vec2<f32>(_wgslsmith_div_f32(-309f, var_1.d.x), _wgslsmith_f_op_f32(round(var_2.a.x))))), var_2.b, all(select(!vec2<bool>(var_2.c, var_1.c), vec2<bool>(true, true), all(vec3<bool>(var_2.c, var_1.c, true)))) | true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -350f), -2882f, 1559f, _wgslsmith_f_op_f32(f32(-1f) * -712f)))), u_input.a);
    return var_2.d.x;
}

fn func_2(arg_0: vec2<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -590f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(1394f)), _wgslsmith_f_op_f32(ceil(567f))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_0.x)), -177f)) + _wgslsmith_f_op_f32(floor(arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(976f, arg_0.x, false)), -1367f)))));
    var var_2 = -321f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-480f + var_1.x));
    var var_3 = select(!(any(vec3<bool>(false, true, true)) != true), false, all(vec4<bool>(any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false))), true || select(false, false, false), true, true)));
    let var_4 = vec4<bool>(true & (any(vec3<bool>(true, true, true)) & true), true, false, !all(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true)));
    return var_4.x;
}

fn func_4(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1721f))), 1f), select(~(~vec2<i32>(-58930i, 20573i)), vec2<i32>(-1i) * -vec2<i32>(-1i, 0i), vec2<bool>(select(true, arg_0, false), arg_0)) >> (~(~firstLeadingBit(vec2<u32>(31389u, u_input.a))) % vec2<u32>(32u)), arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-913f, 1324f, 712f, -364f), vec4<f32>(-208f, 505f, -1000f, -372f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-951f, 542f, 1744f, -1154f))))), ~min(36986u, u_input.a));
    var var_1 = _wgslsmith_mod_i32(var_0.b.x & -83253i, 0i);
    var_1 = min(31430i, 50702i);
    let var_2 = var_0;
    var_1 = var_0.b.x;
    return Struct_1(vec2<f32>(var_2.d.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -277f), var_0.a.x, arg_0))), min(-vec2<i32>(var_2.b.x, -var_0.b.x), vec2<i32>(-1i) * -reverseBits(var_2.b)), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(372f - var_2.a.x)) >= 176f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0.d, vec4<f32>(var_0.a.x, -1301f, 1018f, -315f), vec4<bool>(var_2.c, true, var_0.c, var_0.c)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.d), var_2.d)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_0.d + vec4<f32>(695f, -1516f, var_2.a.x, var_2.a.x)))))), _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(18709u ^ u_input.a, 101869u >> (u_input.a % 32u)), ~25085u), 40400u));
}

fn func_1() -> bool {
    var var_0 = func_4(true & func_2(vec2<f32>(1f, 1f)));
    let var_1 = func_4(var_0.c);
    var var_2 = func_4(true);
    var_2 = Struct_1(var_1.d.wz, vec2<i32>(_wgslsmith_dot_vec2_i32(select(var_0.b, var_0.b, var_0.c) | vec2<i32>(1i, 0i), _wgslsmith_mult_vec2_i32(-vec2<i32>(var_1.b.x, var_2.b.x), var_2.b)), 0i), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(1086f)), _wgslsmith_f_op_f32(-335f + var_0.d.x), var_0.d.x, var_1.d.x))), _wgslsmith_add_u32(var_0.e, 4294967295u));
    let var_3 = _wgslsmith_f_op_f32(round(var_2.a.x));
    return all(select(!vec4<bool>(any(vec4<bool>(true, var_0.c, var_0.c, var_0.c)), var_1.c, !var_0.c, all(vec2<bool>(var_2.c, var_0.c))), vec4<bool>(true, select(true, all(vec2<bool>(var_2.c, var_1.c)), func_2(vec2<f32>(var_2.d.x, var_2.d.x))), var_1.c, true), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(func_1() | (_wgslsmith_add_u32(~6060u, firstLeadingBit(49068u)) < (1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 45477u)) % 32u))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(round(1602f)), _wgslsmith_f_op_f32(min(1000f, 293f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(807f, 139f) * vec2<f32>(-962f, 1724f)))))), vec2<i32>(~(-1i) | ~(2147483647i >> (u_input.a % 32u)), countOneBits(i32(-1i) * -38883i)), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-605f, 346f, -477f, 481f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(547f, -176f, -655f, 1369f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-611f, 268f, 1484f, -1000f))))), u_input.a);
    var var_2 = 24658u;
    let var_3 = !select(vec3<bool>(true || func_4(false).c, true, var_1.a.x >= var_1.a.x), select(vec3<bool>(true, var_1.b.x == var_1.b.x, true), !select(vec3<bool>(false, false, var_0), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_1.c, false, var_0)), select(select(vec3<bool>(var_0, true, true), vec3<bool>(false, false, true), vec3<bool>(var_0, var_1.c, var_0)), select(vec3<bool>(false, var_1.c, false), vec3<bool>(var_1.c, true, var_0), true), select(vec3<bool>(true, true, var_1.c), vec3<bool>(var_1.c, var_1.c, var_0), var_1.c))), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), var_0)));
    var var_4 = !var_3.zy;
    let x = u_input.a;
    s_output = StorageBuffer(select(min(-1i ^ var_1.b.x, var_1.b.x | 0i) & _wgslsmith_clamp_i32(var_1.b.x, -var_1.b.x, min(var_1.b.x, var_1.b.x)), ~max(select(var_1.b.x, -2147483647i, true), 19614i), !(!var_0)));
}

