struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: u32 = 107861u;

var<private> global2: f32 = 143f;

var<private> global3: array<u32, 20> = array<u32, 20>(1u, 79012u, 1u, 25774u, 4294967295u, 0u, 0u, 33747u, 1u, 0u, 32340u, 33831u, 32375u, 1u, 4294967295u, 92362u, 0u, 8686u, 21902u, 4294967295u);

var<private> global4: vec2<u32> = vec2<u32>(1u, 4294967295u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_add_vec4_i32(reverseBits(~_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, -21625i, arg_0.x, -15026i), vec4<i32>(1i, arg_0.x, arg_0.x, 1i))), -(select(vec4<i32>(1i, 17414i, 9727i, arg_0.x), vec4<i32>(-2147483647i, 29827i, 0i, -1i), true) >> (~vec4<u32>(global4.x, global4.x, 0u, 50516u) % vec4<u32>(32u)))) << (~select(~(~vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(4294967295u, 20u)], global4.x, global4.x)), select(countOneBits(vec4<u32>(global4.x, global4.x, global4.x, 0u)), countOneBits(vec4<u32>(global4.x, global4.x, 0u, 1u)), false || arg_1.b.x), !vec4<bool>(false, false, global0.x, true)) % vec4<u32>(32u));
    global2 = -757f;
    global3 = array<u32, 20>();
    var var_1 = select(select(arg_1.b.zxz, select(vec3<bool>(global0.x == arg_1.b.x, false, any(arg_1.b.xww)), vec3<bool>(!arg_1.b.x, true, !global0.x), global0.x), arg_1.b.zzy), vec3<bool>(~global3[_wgslsmith_index_u32(~14772u, 20u)] == (1u >> (1u % 32u)), true, false & any(vec2<bool>(true, global0.x))), arg_1.b.x);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x * -1800f) + _wgslsmith_f_op_f32(max(-2013f, 482f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-105f, arg_1.a.x))))));
    return select(arg_1.b, arg_1.b, arg_1.b.x);
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<bool>) -> Struct_2 {
    global4 = vec2<u32>(~2398u, 0u);
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(455f, arg_0)) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -792f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x))), select(func_3(vec2<i32>(-61883i, 21058i >> (global4.x % 32u)), Struct_2(arg_1.xx, vec4<bool>(false, arg_2.x, true, arg_2.x), Struct_1(arg_1.wxy, vec4<f32>(-1532f, 1000f, 1000f, 1329f))), Struct_1(_wgslsmith_div_vec3_f32(arg_1.xww, vec3<f32>(arg_0, 503f, arg_0)), arg_1), _wgslsmith_f_op_vec3_f32(max(arg_1.wxz, vec3<f32>(arg_0, arg_1.x, 1060f)))), !vec4<bool>(true, arg_0 >= arg_0, select(arg_2.x, true, false), global0.x), true), Struct_1(arg_1.wzx, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-447f * arg_1.x), _wgslsmith_f_op_f32(1712f - arg_0))), _wgslsmith_f_op_f32(step(-2036f, -1000f)), arg_1.x, arg_1.x)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0.a + arg_1.yz))), vec4<bool>(all(vec3<bool>(887f <= var_0.a.x, arg_2.x, true)), !(!global0.x), true, true), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-862f * _wgslsmith_div_f32(192f, arg_0)), _wgslsmith_f_op_f32(sign(-2138f)), _wgslsmith_f_op_f32(-var_0.c.a.x)), var_0.c.b));
    global0 = func_3(abs(min(~_wgslsmith_mod_vec2_i32(vec2<i32>(6749i, 17741i), vec2<i32>(-2147483647i, 1i)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2239i, -1i, 30893i), vec4<i32>(29068i, 60849i, 2147483647i, -1i)), abs(0i)))), Struct_2(var_1.c.b.xz, var_0.b, Struct_1(vec3<f32>(-1831f, -466f, _wgslsmith_f_op_f32(var_1.c.a.x - -582f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1.c.b, vec4<f32>(var_0.a.x, arg_1.x, var_1.a.x, var_1.c.a.x), var_0.b.x))))), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(arg_0 + 1000f), -767f, 1482f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, var_0.c.a.x, arg_1.x) + vec3<f32>(1083f, 1052f, -462f)))), arg_2)), vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(876f + -257f), _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(460f)), _wgslsmith_f_op_f32(var_0.a.x * 218f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + var_1.a.x))))).yzw;
    let var_2 = _wgslsmith_f_op_vec3_f32(var_0.c.b.wzw + vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_0)), _wgslsmith_f_op_f32(abs(var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.x)))), _wgslsmith_f_op_f32(670f + var_1.c.b.x)));
    return var_1;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(347f, _wgslsmith_div_f32(1799f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1431f))))));
    global0 = func_2(arg_0.a.x, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(158f))))), arg_0.a.x, arg_0.a.x, 1270f), vec3<bool>(!arg_0.b.x, arg_0.b.x, !(false | arg_0.b.x))).b.yww;
    var var_1 = arg_0.b.x;
    global0 = vec3<bool>(func_3(-vec2<i32>(max(-2147483647i, 30516i), i32(-1i) * -2147483647i), Struct_2(_wgslsmith_f_op_vec2_f32(select(arg_0.a, vec2<f32>(567f, arg_0.c.a.x), all(arg_0.b.zz))), arg_0.b, func_2(arg_0.c.b.x, vec4<f32>(-1957f, arg_0.a.x, arg_0.a.x, -284f), arg_0.b.zwy).c), Struct_1(vec3<f32>(-1000f, _wgslsmith_div_f32(273f, 1000f), 688f), vec4<f32>(arg_0.c.b.x, _wgslsmith_f_op_f32(-arg_0.c.b.x), _wgslsmith_f_op_f32(abs(-723f)), 1897f)), vec3<f32>(arg_0.c.b.x, arg_0.c.b.x, arg_0.a.x)).x, !any(vec2<bool>(global0.x, global0.x)) && true, false);
    var var_2 = global0.x;
    return Struct_1(arg_0.c.b.yyx, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.c.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-132f, _wgslsmith_f_op_f32(trunc(arg_0.c.a.x)))), _wgslsmith_f_op_f32(step(-723f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -715f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(760f * 544f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.b.x)))));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    return arg_3;
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1742f, 1329f) - _wgslsmith_f_op_f32(1000f * 666f))) - 331f) + -1000f);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(476f)), 409f));
    let var_2 = func_5(select(select(select(vec4<bool>(global0.x, global0.x, global0.x, false), !vec4<bool>(true, global0.x, true, global0.x), all(vec3<bool>(true, global0.x, global0.x))), select(select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global0.x, true, false, global0.x), global0.x), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, true, true)), !all(vec2<bool>(true, false))), select(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 20u)] != u_input.a, 9735u > u_input.a, var_0 >= var_1.x, true), select(!vec4<bool>(global0.x, true, true, false), select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(true, global0.x, true, true), true), !global0.x), vec4<bool>(select(global0.x, false, global0.x), global0.x, !global0.x, all(vec4<bool>(global0.x, global0.x, global0.x, global0.x)))), false), _wgslsmith_sub_vec2_u32(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(31810u, 42207u), vec2<u32>(u_input.a, 0u))), vec2<u32>(firstTrailingBit(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(45439u, 20u)], 20u)]), 1800u)), 32425i, func_4(func_2(_wgslsmith_f_op_f32(round(1007f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, -339f, 1479f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -1399f, var_0) + vec4<f32>(var_0, var_1.x, var_0, -515f))), vec3<bool>(select(true, global0.x, true), false, global0.x))));
    global4 = vec2<u32>(firstTrailingBit(1226u), 1u);
    global2 = -1673f;
    return select(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) + _wgslsmith_f_op_f32(trunc(var_0)))), var_2.b, vec3<bool>(global0.x, false, (global4.x == 53764u) & false)).b, !select(func_2(_wgslsmith_f_op_f32(ceil(-1924f)), _wgslsmith_f_op_vec4_f32(-var_2.b), !vec3<bool>(true, global0.x, true)).b, !vec4<bool>(true, global0.x, true, global0.x), all(!global0.xy)), vec4<bool>(_wgslsmith_mod_u32(3410u, ~51376u) >= abs(_wgslsmith_clamp_u32(16350u, 2131u, u_input.a)), false & (func_2(var_2.b.x, vec4<f32>(var_0, 582f, 799f, 1661f), vec3<bool>(global0.x, false, true)).b.x | (global0.x | global0.x)), true | (true & any(vec4<bool>(global0.x, global0.x, global0.x, global0.x))), true));
}

fn func_6(arg_0: vec4<bool>, arg_1: vec3<i32>) -> StorageBuffer {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), arg_0, Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-209f, 561f, -1710f), vec3<f32>(-473f, -447f, 267f)))), vec3<f32>(_wgslsmith_f_op_f32(-283f - -583f), _wgslsmith_div_f32(-1150f, 568f), _wgslsmith_f_op_f32(f32(-1f) * -364f)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(100f, _wgslsmith_f_op_f32(round(178f)), -1011f, _wgslsmith_f_op_f32(f32(-1f) * -2089f))))));
    let var_1 = func_4(Struct_2(var_0.c.a.zx, select(!func_2(-1018f, var_0.c.b, arg_0.yzy).b, !var_0.b, arg_1.x >= 10540i), func_2(func_2(_wgslsmith_f_op_f32(var_0.c.b.x - 2136f), var_0.c.b, var_0.b.zyx).c.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 1000f, -1516f, var_0.c.a.x))), !vec3<bool>(arg_0.x, true, false)).c)).b.x;
    var var_2 = Struct_2(var_0.a, !select(vec4<bool>(false, arg_0.x | true, true | arg_0.x, true), arg_0, all(vec3<bool>(false, var_0.b.x, false))), var_0.c);
    global0 = !var_0.b.wyx;
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_2.a)) * vec2<f32>(-2761f, 474f)), vec2<f32>(_wgslsmith_f_op_f32(var_1 + 104f), _wgslsmith_f_op_f32(sign(var_0.c.b.x))), true | var_2.b.x)))), !var_0.b, Struct_1(var_2.c.b.zxy, var_2.c.b));
    return StorageBuffer(vec2<u32>(u_input.a | min(countOneBits(0u), ~1u), ~(~(~global4.x))), vec4<i32>(arg_1.x, ~arg_1.x, abs(-52217i | _wgslsmith_sub_i32(arg_1.x, arg_1.x)), -arg_1.x), firstLeadingBit(reverseBits(~vec2<u32>(1u, u_input.a))) << (vec2<u32>(1u, global3[_wgslsmith_index_u32(reverseBits(40157u), 20u)]) % vec2<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(arg_1.x, -1i), -(i32(-1i) * -1i), arg_1.x, 16972i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!vec2<bool>(any(select(vec3<bool>(false, global0.x, true), vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, global0.x, false))), global0.x & true));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-2302f, -536f)), -781f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1100f - -763f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(919f + -244f))), -103f));
    let var_2 = _wgslsmith_add_i32(~0i, 48048i);
    var_0 = 98011u > _wgslsmith_add_u32(global4.x, max(_wgslsmith_mult_u32(reverseBits(57612u), ~u_input.a), _wgslsmith_sub_u32(abs(global4.x), ~81578u)));
    global1 = global4.x;
    let x = u_input.a;
    s_output = func_6(select(select(select(select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(false, true, false, global0.x), global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(global0.x, true, global0.x, global0.x))), !func_1(), !(58361u >= global4.x)), select(func_1(), vec4<bool>(u_input.a > global3[_wgslsmith_index_u32(global4.x, 20u)], false && global0.x, global0.x, global0.x), select(!vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), -39028i != var_2)), vec4<bool>(global0.x, false, !select(false, false, true), false)), vec3<i32>(~abs(countOneBits(-31248i)), -43976i, ~(-2147483647i)));
}

