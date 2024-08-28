struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 18> = array<vec2<u32>, 18>(vec2<u32>(57804u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 1101u), vec2<u32>(4294967295u, 24571u), vec2<u32>(8619u, 4294967295u), vec2<u32>(0u, 64938u), vec2<u32>(4294967295u, 1u), vec2<u32>(28552u, 1u), vec2<u32>(0u, 0u), vec2<u32>(0u, 41008u), vec2<u32>(51557u, 1u), vec2<u32>(1u, 40020u), vec2<u32>(32353u, 82073u), vec2<u32>(49997u, 52288u), vec2<u32>(61381u, 4294967295u), vec2<u32>(28808u, 4294967295u), vec2<u32>(97357u, 4294967295u), vec2<u32>(0u, 1u));

var<private> global1: Struct_1 = Struct_1(42648i, -18013i, -603f, vec4<bool>(true, true, true, false), vec4<f32>(-237f, -240f, 735f, 1075f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_1(global1.b, global1.b, _wgslsmith_f_op_f32(global1.e.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c + 433f)))), !(!select(select(arg_0.d, arg_0.d, global1.d), vec4<bool>(false, false, arg_0.d.x, false), vec4<bool>(false, global1.d.x, arg_0.d.x, arg_0.d.x))), vec4<f32>(528f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.e.x, global1.e.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -277f), -310f))), _wgslsmith_f_op_f32(-global1.e.x), global1.c));
    var var_1 = arg_0.d.xx;
    let var_2 = ~vec2<i32>(var_0.b, i32(-1i) * -41237i);
    let var_3 = Struct_1(~(-17444i), _wgslsmith_mod_i32(i32(-1i) * -9747i, var_2.x), _wgslsmith_f_op_f32(-global1.e.x), select(select(arg_0.d, arg_0.d, vec4<bool>(global1.d.x & arg_0.d.x, !var_1.x, any(global1.d.yw), var_0.d.x)), select(select(var_0.d, !vec4<bool>(false, false, global1.d.x, var_0.d.x), any(vec4<bool>(false, global1.d.x, false, var_1.x))), !select(arg_0.d, global1.d, var_1.x), arg_0.d), any(vec4<bool>(true, select(false, true, arg_0.d.x), all(global1.d), true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(734f, _wgslsmith_f_op_f32(floor(1005f)), _wgslsmith_f_op_f32(trunc(-143f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1204f)) * var_0.c)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.e))))));
    let var_4 = var_3;
    return ~4294967295u;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = arg_1;
    global0 = array<vec2<u32>, 18>();
    let var_1 = arg_1;
    let var_2 = func_3(Struct_1(global1.a, u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.c, -1078f))), global1.d, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_0.e))))) << (_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_3.x, ~arg_3.x >> ((arg_3.x & 1u) % 32u)), 1u) % 32u);
    return Struct_1(1i, _wgslsmith_clamp_i32(var_0.b, u_input.a.x, var_0.a & _wgslsmith_div_i32(~u_input.a.x, 6677i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c), arg_1.e.x), select(var_0.d, select(var_0.d, !(!vec4<bool>(var_1.d.x, false, true, true)), true), !vec4<bool>(!arg_0.x, true, !global1.d.x, arg_2)), _wgslsmith_f_op_vec4_f32(sign(var_1.e)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_1) -> bool {
    var var_0 = any(func_2(vec2<bool>(!all(vec3<bool>(arg_3.d.x, global1.d.x, false)), arg_3.d.x), Struct_1(~33617i, u_input.a.x, 1472f, arg_3.d, _wgslsmith_f_op_vec4_f32(abs(global1.e))), arg_3.d.x, ~countOneBits(vec2<u32>(16006u, 44229u))).d.xz);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(336f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(arg_0.x - 2677f)))), -1534f, _wgslsmith_f_op_f32(exp2(global1.e.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(661f - 484f) * 1539f), global1.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(330f + -319f)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.yxy - vec3<f32>(400f, arg_0.x, 375f)))))) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) * global1.c), -740f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + -1014f), -975f));
    var_0 = !global1.d.x != !select(global1.d.x || any(vec4<bool>(true, arg_3.d.x, global1.d.x, false)), true, global1.d.x);
    var var_3 = arg_3;
    return all(vec2<bool>(!(global1.c > var_2.x), false));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(50700i, global1.b, 939f, global1.d, global1.e);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(global1.e.x * 1466f), 509f, _wgslsmith_div_f32(arg_0.e.x, _wgslsmith_f_op_f32(-arg_0.e.x)));
    global1 = Struct_1(~(-18210i), 2147483647i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x - 801f), _wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(round(244f))))), vec4<bool>(var_0.d.x, min(select(4294967295u, 57432u, true), 4294967295u) == 1u, any(vec2<bool>(false, true)), func_4(var_1.zy, _wgslsmith_mod_vec3_u32(vec3<u32>(26057u, 4294967295u, 0u), vec3<u32>(1u, 17138u, 1u)), 0u, func_2(vec2<bool>(global1.d.x, global1.d.x), arg_0, global1.d.x, global0[_wgslsmith_index_u32(4294967295u, 18u)])) || true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -381f), var_0.c, 193f, _wgslsmith_f_op_f32(ceil(arg_0.e.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.e))), arg_0.e));
    let var_2 = ~vec3<i32>(i32(-1i) * -1i, func_2(!func_2(arg_0.d.xz, var_0, arg_0.d.x, global0[_wgslsmith_index_u32(0u, 18u)]).d.xw, Struct_1(-41362i, -2147483647i, _wgslsmith_f_op_f32(-var_0.c), vec4<bool>(true, global1.d.x, var_0.d.x, false), _wgslsmith_f_op_vec4_f32(ceil(var_0.e))), arg_0.d.x, abs(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 1u), 18u)])).a, global1.b);
    let var_3 = global1.c;
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(max(~38464i, reverseBits(abs(global1.a))), _wgslsmith_add_i32((_wgslsmith_dot_vec2_i32(vec2<i32>(global1.b, 0i), u_input.a.zy) | u_input.b) << (_wgslsmith_div_u32(1u, ~0u) % 32u), _wgslsmith_mod_i32(abs(1i & u_input.a.x), select(30072i, 1i, true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global1.e.x, _wgslsmith_f_op_f32(global1.c * _wgslsmith_f_op_f32(floor(global1.c))))))), select(!vec4<bool>(false, all(global1.d.xw), !global1.d.x, true), !func_1(Struct_1(global1.a, 10212i, -1989f, vec4<bool>(global1.d.x, true, global1.d.x, true), vec4<f32>(global1.e.x, 3052f, global1.c, global1.e.x))), any(!vec4<bool>(true, global1.d.x, false, global1.d.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global1.e - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(277f, global1.c, 1000f, global1.c))) * _wgslsmith_f_op_vec4_f32(trunc(global1.e)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.e), _wgslsmith_div_vec4_f32(global1.e, global1.e))))));
    let var_1 = _wgslsmith_sub_vec2_i32(~u_input.a.xz, firstTrailingBit(~(~u_input.a.yz))) ^ ~vec2<i32>(func_2(vec2<bool>(global1.d.x, global1.d.x), Struct_1(global1.a, -1i, 236f, vec4<bool>(false, false, false, false), vec4<f32>(global1.e.x, global1.e.x, var_0.c, 1197f)), var_0.c > var_0.e.x, min(vec2<u32>(0u, 1u), global0[_wgslsmith_index_u32(4294967295u, 18u)])).b, 1i);
    let var_2 = firstLeadingBit(_wgslsmith_sub_vec4_i32(~vec4<i32>(-8446i, 0i, 88575i, var_0.b), firstTrailingBit(abs(vec4<i32>(u_input.a.x, global1.a, u_input.b, var_1.x))))) ^ ~countOneBits(-abs(vec4<i32>(var_1.x, global1.b, global1.a, var_1.x)));
    let var_3 = firstLeadingBit(~_wgslsmith_mod_vec3_u32(~vec3<u32>(4724u, 1u, 4294967295u), abs(vec3<u32>(4294967295u, 28395u, 1u)))) >> (vec3<u32>(38304u, 1u, _wgslsmith_clamp_u32(abs(0u), ~countOneBits(9822u), 1u)) % vec3<u32>(32u));
    var_0 = Struct_1(_wgslsmith_clamp_i32(func_2(select(global1.d.yy, !vec2<bool>(global1.d.x, global1.d.x), false), func_2(select(global1.d.yz, global1.d.wx, var_0.d.xx), func_2(var_0.d.zy, Struct_1(global1.b, u_input.b, global1.c, vec4<bool>(true, false, global1.d.x, var_0.d.x), global1.e), true, var_3.zz), true, ~global0[_wgslsmith_index_u32(996u, 18u)]), var_0.d.x, vec2<u32>(var_3.x, var_3.x)).a, -_wgslsmith_mult_i32(~(-19589i), ~var_1.x), -_wgslsmith_mult_i32(_wgslsmith_sub_i32(13339i, var_1.x), firstTrailingBit(-2147483647i))), _wgslsmith_sub_i32(-_wgslsmith_clamp_i32(_wgslsmith_div_i32(var_1.x, var_1.x), 2147483647i, 2147483647i), var_1.x), _wgslsmith_f_op_f32(352f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_0.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.c)))))), vec4<bool>(var_0.d.x, false, global1.d.x, true), _wgslsmith_f_op_vec4_f32(abs(var_0.e)));
    global0 = array<vec2<u32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3);
}

