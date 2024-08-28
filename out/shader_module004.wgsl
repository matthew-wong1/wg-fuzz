struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(false, true, true, true, true, true, true, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, true, true, false, true, true, true, false, true, true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<i32>) -> vec2<i32> {
    global0 = array<bool, 32>();
    let var_0 = select(arg_0.a, select(arg_0.a, arg_0.a, global0[_wgslsmith_index_u32(arg_0.c, 32u)]), !arg_0.b);
    let var_1 = Struct_1(vec3<bool>(false, global0[_wgslsmith_index_u32(~arg_0.c, 32u)], var_0.x), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(7005u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c, 113706u), u_input.a.xw)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~1u), _wgslsmith_clamp_vec2_u32(u_input.c.xx >> (u_input.a.yz % vec2<u32>(32u)), ~vec2<u32>(50948u, u_input.b), vec2<u32>(u_input.c.x, 53443u) | vec2<u32>(u_input.a.x, u_input.d)))), 32u)], ~u_input.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.d + arg_0.d), -1602f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(819f, -1428f)) * 1028f) - _wgslsmith_f_op_f32(min(-760f, _wgslsmith_f_op_f32(arg_0.e * -971f))))));
    global0 = array<bool, 32>();
    let var_2 = arg_0;
    return _wgslsmith_add_vec2_i32(-vec2<i32>(-5789i, arg_2.x), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(arg_1.zz, vec2<i32>(arg_2.x, ~arg_1.x)), vec2<i32>(abs(arg_1.x << (4693u % 32u)), _wgslsmith_dot_vec2_i32(~arg_1.yw, ~arg_1.xw)), select(_wgslsmith_clamp_vec2_i32(-arg_1.xy, countOneBits(arg_2.yx), arg_1.yx), vec2<i32>(~(-2147483647i), -arg_1.x), arg_0.a.zy)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32) -> u32 {
    var var_0 = arg_0.d;
    var var_1 = abs(-_wgslsmith_add_vec2_i32(-func_3(Struct_1(vec3<bool>(false, arg_0.a.x, arg_0.a.x), global0[_wgslsmith_index_u32(52601u, 32u)], arg_0.c, arg_0.d, arg_0.d), vec4<i32>(1594i, -20122i, 6935i, -2147483647i), vec3<i32>(-60330i, 2147483647i, -30457i)), ~func_3(Struct_1(arg_0.a, arg_0.a.x, 0u, arg_0.e, -833f), vec4<i32>(arg_1.x, -10727i, 0i, arg_1.x), vec3<i32>(-4722i, arg_1.x, arg_1.x))));
    var var_2 = Struct_1(vec3<bool>(true && (-arg_1.x >= var_1.x), true, -2147483647i >= ((11993i ^ var_1.x) & arg_1.x)), true, arg_2, _wgslsmith_f_op_f32(floor(arg_0.d)), arg_0.d);
    var var_3 = 11993i;
    let var_4 = _wgslsmith_sub_vec2_i32(arg_1, vec2<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(-1i, var_1.x, var_1.x, var_1.x)), select(-vec4<i32>(0i, arg_1.x, var_1.x, var_1.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, -14838i, arg_1.x, var_1.x), vec4<i32>(arg_1.x, -2147483647i, 2147483647i, arg_1.x), vec4<i32>(var_1.x, var_1.x, -8384i, -1i)), select(vec4<bool>(arg_0.a.x, arg_0.b, var_2.a.x, false), vec4<bool>(false, global0[_wgslsmith_index_u32(19205u, 32u)], arg_0.a.x, false), true))), arg_1.x));
    return var_2.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = countOneBits(var_0.c);
    var var_2 = ~1u == max(_wgslsmith_sub_u32(~arg_0.c, var_0.c) >> (~var_1 % 32u), func_2(Struct_1(select(arg_1, arg_1, false), true, var_0.c, 751f, _wgslsmith_f_op_f32(-arg_0.d)), vec2<i32>(1i, 1i), 1u));
    let var_3 = Struct_1(select(var_0.a, var_0.a, vec3<bool>(false, arg_1.x, any(!vec3<bool>(true, var_0.b, true)))), true || !any(vec2<bool>(true, true)), ~firstTrailingBit(func_2(arg_0, _wgslsmith_sub_vec2_i32(vec2<i32>(-21615i, 37944i), vec2<i32>(25417i, -19652i)), ~u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e + _wgslsmith_f_op_f32(abs(var_0.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.e)))));
    global0 = array<bool, 32>();
    return Struct_1(vec3<bool>(!(-799f > _wgslsmith_f_op_f32(-var_3.e)), any(vec2<bool>(true, true)), var_3.b), true, abs(~(~_wgslsmith_mult_u32(var_3.c, var_1))), _wgslsmith_f_op_f32(-266f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e * 574f)))), arg_0.e);
}

fn func_1() -> f32 {
    global0 = array<bool, 32>();
    let var_0 = func_4(Struct_1(select(vec3<bool>(true, global0[_wgslsmith_index_u32(2226u, 32u)] || global0[_wgslsmith_index_u32(4294967295u, 32u)], true), select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.d, 32u)]), vec3<bool>(true, true, true), !vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c.x, 32u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(69448u, 32u)]), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 32u)], false, global0[_wgslsmith_index_u32(91225u, 32u)]), select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 32u)], false), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(0u, 32u)]), vec3<bool>(true, false, global0[_wgslsmith_index_u32(1u, 32u)])))), global0[_wgslsmith_index_u32(u_input.a.x, 32u)], func_2(Struct_1(select(vec3<bool>(global0[_wgslsmith_index_u32(18140u, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 32u)], global0[_wgslsmith_index_u32(u_input.d, 32u)], global0[_wgslsmith_index_u32(u_input.d, 32u)]), vec3<bool>(global0[_wgslsmith_index_u32(6289u, 32u)], true, true)), all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], true, global0[_wgslsmith_index_u32(u_input.b, 32u)])), ~6037u, 1f, 1f), _wgslsmith_mult_vec2_i32(vec2<i32>(5260i, 5485i), vec2<i32>(1i, -4955i)) >> (u_input.c.xx % vec2<u32>(32u)), 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(f32(-1f) * -753f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -522f)), _wgslsmith_f_op_f32(-109f * _wgslsmith_f_op_f32(f32(-1f) * -124f))))), vec3<bool>(true | global0[_wgslsmith_index_u32(abs(abs(4294967295u)), 32u)], all(!(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], true, false))), !global0[_wgslsmith_index_u32(u_input.a.x, 32u)]));
    global0 = array<bool, 32>();
    let var_1 = var_0.d;
    global0 = array<bool, 32>();
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()));
    var var_1 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, 6238i), ~vec3<i32>(1i, 2147483647i, 10058i)), ~1i) ^ 1i, 14949i, -_wgslsmith_add_i32(~0i, ~0i) << (_wgslsmith_add_u32(~u_input.d, max(countOneBits(8782u), _wgslsmith_add_u32(0u, 1u))) % 32u), 2147483647i);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0 + 748f)))), _wgslsmith_f_op_f32(select(var_0, func_4(Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 32u)], false, global0[_wgslsmith_index_u32(40080u, 32u)]), global0[_wgslsmith_index_u32(4294967295u, 32u)], 4294967295u, 299f, 157f), vec3<bool>(true, global0[_wgslsmith_index_u32(16454u, 32u)], false)).d, !func_4(Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], true, global0[_wgslsmith_index_u32(0u, 32u)]), global0[_wgslsmith_index_u32(u_input.b, 32u)], u_input.b, -2242f, var_0), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 32u)], true)).a.x)), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * -375f) * var_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(591f - -1141f), var_0, 467f, _wgslsmith_f_op_f32(min(-706f, -1551f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0, var_0, var_0, 478f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1838f, -435f, var_0))))), !(!vec4<bool>(global0[_wgslsmith_index_u32(0u ^ u_input.d, 32u)], true, select(global0[_wgslsmith_index_u32(u_input.c.x, 32u)], global0[_wgslsmith_index_u32(25316u, 32u)], global0[_wgslsmith_index_u32(u_input.d, 32u)]), false))));
    var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 429f, var_2.x, func_4(Struct_1(vec3<bool>(true, global0[_wgslsmith_index_u32(77253u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)]), global0[_wgslsmith_index_u32(13299u, 32u)], 4294967295u, -596f, _wgslsmith_f_op_f32(min(var_0, -305f))), func_4(Struct_1(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(u_input.b, 32u)]), global0[_wgslsmith_index_u32(0u, 32u)], 4294967295u, var_0, var_2.x), vec3<bool>(true, true, global0[_wgslsmith_index_u32(16950u, 32u)])).a).e));
    let var_3 = func_4(Struct_1(vec3<bool>(true, true, true), true, _wgslsmith_sub_u32(12991u, _wgslsmith_div_u32(4294967295u, u_input.d >> (u_input.d % 32u))), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1321f, -1000f, true)), -706f) + _wgslsmith_f_op_f32(f32(-1f) * -1900f))), select(vec3<bool>(all(!vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 32u)])), any(vec4<bool>(global0[_wgslsmith_index_u32(55948u, 32u)], global0[_wgslsmith_index_u32(u_input.b, 32u)], global0[_wgslsmith_index_u32(8645u, 32u)], true)), func_4(Struct_1(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(u_input.d, 32u)]), false, u_input.d, var_2.x, var_0), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 32u)], true)).a.x), vec3<bool>(true, all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 32u)], false, false, true)) != true, any(func_4(Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(93608u, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(60633u, 32u)]), true, 0u, var_0, -1175f), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 32u)], global0[_wgslsmith_index_u32(5298u, 32u)])).a)), _wgslsmith_dot_vec2_i32(max(vec2<i32>(-1i, -8173i), vec2<i32>(var_1.x, var_1.x)), var_1.wy) <= _wgslsmith_dot_vec3_i32(max(vec3<i32>(-34884i, -36144i, 3505i), var_1.zzy), ~vec3<i32>(39850i, var_1.x, var_1.x))));
    let var_4 = select(!func_4(Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(80881u, 32u)], true, var_3.b), true, u_input.c.x, var_3.e, _wgslsmith_f_op_f32(-1391f + -1188f)), !var_3.a).a.yz, !vec2<bool>(global0[_wgslsmith_index_u32(23702u, 32u)], !var_3.a.x), _wgslsmith_dot_vec2_i32(var_1.xx, _wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(0i, 26232i)), var_1.xw)) >= var_1.x);
    var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-888f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x + 397f), -831f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2119f)) + var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.d)))), _wgslsmith_f_op_f32(var_3.e * _wgslsmith_f_op_f32(func_1()))));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-1000f * 1074f)) + var_2.x) - _wgslsmith_div_f32(-631f, var_2.x)), _wgslsmith_div_f32(var_0, var_3.e), -1079f, -1737f);
    let var_5 = var_2.zzz;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~(~vec3<u32>(4294967295u, u_input.c.x, 6201u) ^ ~vec3<u32>(64722u, var_3.c, 1u)), var_2.yy);
}

