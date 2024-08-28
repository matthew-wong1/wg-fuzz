struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<bool, 8> = array<bool, 8>(true, false, false, true, false, false, false, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    var var_0 = Struct_1(~(-_wgslsmith_clamp_i32(global0.x, -2147483647i, _wgslsmith_dot_vec2_i32(u_input.c.zx, u_input.c.xx))), ~(~countOneBits(vec4<i32>(49366i, u_input.a, u_input.c.x, 15041i) << (vec4<u32>(1u, 29724u, 51311u, u_input.b) % vec4<u32>(32u)))));
    var_0 = Struct_1(-2147483647i, vec4<i32>(-93899i, max(_wgslsmith_div_i32(24130i, global0.x) & (-13252i << (u_input.b % 32u)), min(-1i, _wgslsmith_sub_i32(u_input.a, 0i))), global0.x, ~_wgslsmith_add_i32(-10288i, -7738i ^ global0.x)));
    var var_1 = Struct_1(~countOneBits(_wgslsmith_add_i32(-8610i, i32(-1i) * -35899i)), vec4<i32>(5105i, global0.x, min(-_wgslsmith_dot_vec2_i32(u_input.c.yz, var_0.b.wz), ~var_0.b.x), u_input.a | -42410i));
    var var_2 = Struct_1(~global0.x, -_wgslsmith_mult_vec4_i32(abs(vec4<i32>(1i, -1i, global0.x, global0.x)), vec4<i32>(countOneBits(-12120i), 0i, 10082i, _wgslsmith_clamp_i32(var_1.a, global0.x, var_1.b.x))));
    let var_3 = _wgslsmith_f_op_f32(round(674f));
    return !(!(!select(!vec4<bool>(global1[_wgslsmith_index_u32(53727u, 8u)], false, global1[_wgslsmith_index_u32(u_input.b, 8u)], true), vec4<bool>(true, true, false, false), all(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 8u)], true)))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> f32 {
    let var_0 = arg_1;
    var var_1 = select(vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(u_input.b), ~(~u_input.b)), 8u)], global1[_wgslsmith_index_u32(1u, 8u)]), vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, u_input.b), 8u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1673f, arg_0)) + _wgslsmith_f_op_f32(step(-709f, arg_0))) < arg_0), vec2<bool>(global1[_wgslsmith_index_u32(0u, 8u)], true));
    global0 = ~(abs(u_input.c.xz) >> (vec2<u32>(~u_input.b, firstLeadingBit(4294967295u)) % vec2<u32>(32u))) & -arg_1.b.zy;
    var var_2 = arg_1;
    var_1 = arg_2.xw;
    return 381f;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(func_4(1004f, arg_0, func_3(_wgslsmith_f_op_f32(f32(-1f) * -1258f))));
    var var_1 = vec3<bool>(true, !global1[_wgslsmith_index_u32(23892u, 8u)], true);
    var var_2 = var_1.x;
    var_1 = vec3<bool>(true, any(var_1.zy), !(!(!var_1.x)) | var_1.x);
    global0 = u_input.c.xz;
    return select(select(select(vec3<bool>(true, true, any(vec4<bool>(var_1.x, false, global1[_wgslsmith_index_u32(u_input.b, 8u)], arg_1))), func_3(_wgslsmith_f_op_f32(trunc(var_0))).wzx, vec3<bool>(u_input.a <= u_input.d.x, false, true)), !(!(!vec3<bool>(false, var_1.x, true))), !func_3(-1117f).wxz), select(!func_3(var_0).wyw, func_3(165f).zyy, global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(17989u, 1u), 8u)]), !select(vec3<bool>(any(vec2<bool>(true, arg_1)), true, true), vec3<bool>(var_1.x, true | arg_1, arg_1 | arg_1), arg_2.x >= _wgslsmith_sub_i32(2147483647i, 0i)));
}

fn func_1() -> Struct_1 {
    var var_0 = !(!func_2(Struct_1(-1i, vec4<i32>(u_input.a, -16824i, u_input.a, global0.x) | vec4<i32>(global0.x, 10980i, 1i, 1i)), true, firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 1i, global0.x, global0.x), vec4<i32>(22638i, 0i, 28154i, u_input.a), vec4<i32>(0i, 0i, 0i, u_input.a)))));
    var_0 = !vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 8u)], var_0.x, true);
    var var_1 = ((firstTrailingBit(~vec2<u32>(u_input.b, 46506u)) >> (select(~vec2<u32>(1u, 1u), ~vec2<u32>(85079u, 0u), true) % vec2<u32>(32u))) | (~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(14358u, u_input.b), vec2<u32>(24463u, u_input.b)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(4162u, 32130u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 60220u), vec2<u32>(1u, 2079u))) % vec2<u32>(32u)))) ^ ~abs(~vec2<u32>(13029u, u_input.b));
    let var_2 = Struct_1(firstTrailingBit(global0.x), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(10097i, 1i, u_input.c.x, global0.x), ~vec4<i32>(-2147483647i, u_input.a, u_input.a, -44077i)), min(-vec4<i32>(9019i, global0.x, global0.x, global0.x), vec4<i32>(0i, u_input.d.x, u_input.d.x, 7297i))) >> ((_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 35235u), ~vec4<u32>(u_input.b, 1u, var_1.x, 28280u), ~vec4<u32>(5167u, u_input.b, u_input.b, 4294967295u)) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(27995u, 8238u, u_input.b, var_1.x), vec4<u32>(u_input.b, u_input.b, var_1.x, var_1.x) | vec4<u32>(0u, 4294967295u, 6828u, var_1.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var_1 = vec2<u32>(0u, _wgslsmith_clamp_u32(reverseBits(u_input.b), _wgslsmith_add_u32(~min(u_input.b, 1u), var_1.x), 27436u));
    return Struct_1(reverseBits(~(-2147483647i)), reverseBits(_wgslsmith_div_vec4_i32(reverseBits(var_2.b), select(vec4<i32>(2147483647i, -1i, u_input.a, var_2.a), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, var_2.a, var_2.a, -10006i), var_2.b), vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(4294967295u, 8u)], true, false)))));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-(~vec2<i32>(-1i, arg_3.b.x)), _wgslsmith_clamp_vec2_i32(arg_3.b.zz, vec2<i32>(-1i, arg_3.b.x), -u_input.c.yz)), -firstTrailingBit(vec2<i32>(arg_2.a, 16892i))), arg_2.b.x);
    var var_0 = arg_3;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-326f, -1000f))))))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1392f, 2419f) - vec2<f32>(-350f, 476f)), vec2<f32>(-892f, 314f), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-734f, 451f) * vec2<f32>(-614f, 1283f))), vec2<f32>(370f, _wgslsmith_f_op_f32(f32(-1f) * -775f)), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f)).zz)))));
    let var_2 = var_1.x;
    var var_3 = _wgslsmith_div_vec3_i32(arg_2.b.xyz & vec3<i32>(var_0.a, -90654i, global0.x), _wgslsmith_add_vec3_i32(var_0.b.xwz, -abs(arg_3.b.xzz)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(false, u_input.b, func_1(), Struct_1(-(~global0.x) >> (firstLeadingBit(~18228u) % 32u), ~abs(firstLeadingBit(vec4<i32>(global0.x, u_input.c.x, -53210i, 2147483647i)))));
    let var_1 = global1[_wgslsmith_index_u32(u_input.b, 8u)];
    global0 = vec2<i32>(~_wgslsmith_dot_vec2_i32(var_0.b.yw, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d.x, -23093i), vec2<i32>(35104i, 24668i))), global0.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(156f))) + _wgslsmith_f_op_f32(ceil(1383f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1036f, -433f)), 973f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-571f, -656f))))));
    global1 = array<bool, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -627f) + 483f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-940f + var_2.x)), -1000f, -1435f, -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 138f, var_2.x, 590f)))));
}

