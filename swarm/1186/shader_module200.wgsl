struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: vec2<i32>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> vec4<f32> {
    global0 = array<u32, 1>();
    let var_0 = -countOneBits(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-53029i, global1.x, 23023i), countOneBits(u_input.b.xyx)), u_input.b.wzy));
    var var_1 = -1351f;
    let var_2 = 7691u;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1309f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-664f, -1928f, 907f, -1000f), vec4<f32>(649f, -417f, 713f, 869f), vec4<bool>(false, false, true, true))) + vec4<f32>(-861f, -432f, -616f, 1466f))))), -11607i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-677f, 1000f, 1527f))))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-579f)))), -1555f, _wgslsmith_f_op_f32(f32(-1f) * -732f))), all(vec3<bool>(true, true, true)));
    return var_3.b;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: bool) -> bool {
    var var_0 = ~arg_0.c;
    let var_1 = ((~vec3<i32>(1i, u_input.d, u_input.d) << (~reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(32773u, 1u)], u_input.e, 16808u)) % vec3<u32>(32u))) ^ firstLeadingBit(~vec3<i32>(28218i, u_input.b.x, arg_0.c))) & abs(vec3<i32>(-1i) * -max(vec3<i32>(u_input.a, arg_2, 2976i), vec3<i32>(u_input.d, 10016i, -1i)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)));
    global1 = ~var_1.xy;
    var var_3 = vec2<i32>(-abs(-select(2147483647i, global1.x, true)), var_1.x);
    return arg_0.e;
}

fn func_2() -> vec3<bool> {
    let var_0 = ~abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(18181u, u_input.e, u_input.e, 7754u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 36891u, 1u, 4294967295u) >> (vec4<u32>(u_input.c, 5170u, 67330u, 4054u) % vec4<u32>(32u)), abs(vec4<u32>(35147u, u_input.e, 1u, global0[_wgslsmith_index_u32(u_input.e, 1u)])))));
    var var_1 = select(u_input.b.wx, abs(abs(-vec2<i32>(u_input.a, -19743i))), vec2<bool>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, 25989i), ~global1.x) > _wgslsmith_mod_i32(_wgslsmith_mod_i32(48867i, 845i), u_input.a), true));
    var var_2 = vec4<bool>(select(any(vec2<bool>(false, true)) && (_wgslsmith_div_i32(var_1.x, global1.x) >= abs(var_1.x)), all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), select(true, true, true)), func_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(854f * -398f)), _wgslsmith_f_op_vec4_f32(func_3(~vec4<u32>(4294967295u, u_input.c, 0u, 37738u))), firstLeadingBit(-57256i), vec3<f32>(_wgslsmith_f_op_f32(floor(-943f)), _wgslsmith_div_f32(-1293f, 1045f), _wgslsmith_f_op_f32(round(1634f))), all(vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), -2147483647i, true & any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), true))), !(!any(vec4<bool>(true, true, true, true))), select(true, var_1.x >= countOneBits(73603i), _wgslsmith_mod_i32(select(2147483647i, var_1.x, true), _wgslsmith_clamp_i32(u_input.b.x, 0i, 8100i)) == select(var_1.x, 1i ^ var_1.x, any(vec3<bool>(false, false, true)))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-135f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1021f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(global0[_wgslsmith_index_u32(1u, 1u)], var_0.x, u_input.c, 38359u))).x))));
    let var_4 = Struct_1(-561f);
    return select(!(!(!vec3<bool>(var_2.x, var_2.x, var_2.x))), var_2.zyw, var_2.x);
}

fn func_1() -> vec3<f32> {
    var var_0 = !func_2();
    global0 = array<u32, 1>();
    var_0 = select(!vec3<bool>(true, func_2().x, false), vec3<bool>(any(select(!vec4<bool>(false, true, true, var_0.x), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(true, var_0.x, true, true), vec4<bool>(false, true, var_0.x, var_0.x)), u_input.c >= global0[_wgslsmith_index_u32(0u, 1u)])), any(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), var_0.x)), true), var_0.x);
    global0 = array<u32, 1>();
    let var_1 = Struct_2(991f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-129f)) * -1195f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-852f + -1050f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(576f + 1902f) * -770f))), _wgslsmith_f_op_f32(f32(-1f) * -1027f)), 1i, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-2154f, 307f)), _wgslsmith_f_op_f32(step(1352f, -902f)))), 1478f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -2641f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1938f, -903f, -1343f))), true)), true);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1750f + var_1.a))), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_vec4_f32(func_3(~_wgslsmith_sub_vec4_u32(vec4<u32>(57535u, 1u, 53658u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, u_input.e, u_input.c)))).x) * var_1.b.wxw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = Struct_1(-667f);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, 1105f, var_1.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.a, var_1.a))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_1()))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, -501f, -2104f) * vec3<f32>(var_1.a, 599f, -1086f)) - vec3<f32>(var_1.a, -1210f, var_1.a)))));
    var var_3 = !vec4<bool>((global1.x > (global1.x ^ 2147483647i)) != true, false, 527f <= var_1.a, any(vec4<bool>(true, true, true, var_1.a < 1487f)));
    let var_4 = -27600i;
    var var_5 = Struct_2(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, 349f, var_1.a, -157f))))))), 2147483647i, vec3<f32>(_wgslsmith_f_op_f32(select(-1073f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -304f), var_2.x)), false)), -236f, 295f), true);
    global0 = array<u32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yy, _wgslsmith_mult_u32(select(max(u_input.e, 12424u) ^ 1u, (53174u | u_input.c) >> (~u_input.e % 32u), true), _wgslsmith_mult_u32(~min(u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)]), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~27660u, 1u)], global0[_wgslsmith_index_u32(u_input.c, 1u)]))), ~(~_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, global0[_wgslsmith_index_u32(4294967295u, 1u)]), vec2<u32>(4294967295u, u_input.c)), max(vec2<u32>(20642u, u_input.e), vec2<u32>(u_input.e, 1u)))));
}

