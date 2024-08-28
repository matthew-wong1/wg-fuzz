struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = !vec2<bool>(false, any(vec3<bool>(false, true, select(true, true, false))));
    var_0 = select(select(!select(select(vec2<bool>(var_0.x, false), vec2<bool>(true, var_0.x), vec2<bool>(true, var_0.x)), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, true)), vec2<bool>(true, true)), vec2<bool>(false, true), vec2<bool>(select(u_input.c.x < 0i, !var_0.x, true), true)), select(!select(!vec2<bool>(var_0.x, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, var_0.x == true), any(vec2<bool>(false & var_0.x, any(vec2<bool>(var_0.x, var_0.x))))), vec2<bool>(false, any(vec4<bool>(true, false, true, !var_0.x))));
    let var_1 = _wgslsmith_clamp_vec2_u32(~_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(u_input.b, u_input.b)), vec2<u32>(u_input.b, 17347u)) << (abs(_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, 82315u) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))) % vec2<u32>(32u)), reverseBits(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(1u, u_input.b)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 0u)))), max(~(~vec2<u32>(61519u, u_input.b) << ((vec2<u32>(u_input.b, 95198u) >> (vec2<u32>(23903u, 59748u) % vec2<u32>(32u))) % vec2<u32>(32u))), max(vec2<u32>(firstLeadingBit(36178u), 42958u), vec2<u32>(~u_input.b, 4294967295u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1238f, -1727f, 420f), vec3<f32>(1247f, 1551f, -869f), false)))), vec3<f32>(1f, 1f, 1f))));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2099f * var_2.x) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(777f * 504f)))), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-224f - _wgslsmith_div_f32(var_2.x, var_2.x))), 1000f, var_2.x) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * var_2.x) * 2018f), 1360f, _wgslsmith_f_op_f32(ceil(-1163f)), -710f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-150f, 308f, 1000f, var_2.x) + vec4<f32>(-1393f, var_2.x, 1000f, var_2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, 607f, var_2.x, -1149f), vec4<f32>(-1373f, var_2.x, var_2.x, -843f))), -1137f != _wgslsmith_f_op_f32(var_2.x - var_2.x))))));
    return select(reverseBits(u_input.c.x), u_input.c.x, !any(!select(vec2<bool>(var_0.x, false), vec2<bool>(false, var_0.x), vec2<bool>(false, var_0.x))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec2<i32>(arg_0.c.x, 2147483647i);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-215f, arg_0.a), arg_0.a))), 0u, vec2<i32>(-12947i, _wgslsmith_add_i32(func_3(), -4322i))), Struct_1(270f, u_input.b, _wgslsmith_add_vec2_i32(-u_input.c.yy, select(~vec2<i32>(-2147483647i, 1i), vec2<i32>(u_input.c.x, var_0.x), select(vec2<bool>(false, true), vec2<bool>(false, false), false)))));
    let var_2 = 33948u;
    return var_1.b;
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> i32 {
    let var_0 = (abs(~u_input.a.x | min(-12192i, 5362i)) << (countOneBits(37076u) % 32u)) << (_wgslsmith_sub_u32(14489u, reverseBits(u_input.b) & ~1u) % 32u);
    var var_1 = 1u;
    let var_2 = all(vec4<bool>(false, true, true, false));
    let var_3 = (0u >> (u_input.b % 32u)) & ~38000u;
    var var_4 = firstTrailingBit(vec2<u32>(firstLeadingBit(47637u >> (u_input.b % 32u)), var_3)) >> (~(~firstLeadingBit(abs(vec2<u32>(var_3, u_input.b)))) % vec2<u32>(32u));
    return 30091i;
}

fn func_1() -> Struct_1 {
    var var_0 = true;
    var_0 = func_4(Struct_3(Struct_2(Struct_1(478f, u_input.b, vec2<i32>(24562i, 11062i)), func_2(Struct_1(-1000f, 1u, u_input.c.xz)))), -483f) > (2147483647i & u_input.c.x);
    var_0 = 15587i < (u_input.c.x ^ 0i);
    var var_1 = Struct_1(-520f, u_input.b, ((vec2<i32>(-1i) * -vec2<i32>(u_input.c.x, 27402i)) << (select(vec2<u32>(u_input.b, 0u) << (vec2<u32>(0u, u_input.b) % vec2<u32>(32u)), vec2<u32>(9733u, u_input.b) ^ vec2<u32>(112810u, u_input.b), select(vec2<bool>(true, true), vec2<bool>(false, false), true)) % vec2<u32>(32u))) | func_2(func_2(func_2(Struct_1(1615f, u_input.b, vec2<i32>(3775i, 0i))))).c);
    var var_2 = -(u_input.c << (vec3<u32>(~firstTrailingBit(2077u), 55793u, u_input.b) % vec3<u32>(32u)));
    return Struct_1(func_2(Struct_1(var_1.a, u_input.b & 0u, var_1.c)).a, u_input.b, select(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, var_1.c.x) << (vec2<u32>(54980u, 41412u) % vec2<u32>(32u)), select(var_2.yy, u_input.a.zz, false)), var_2.zy), -func_2(Struct_1(-712f, u_input.b, vec2<i32>(var_1.c.x, var_1.c.x))).c, !(!any(vec3<bool>(false, false, true)))));
}

fn func_5(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = func_2(arg_0.b);
    return -var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-558f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -120f)))) + -566f);
    var_0 = -1738f;
    var var_1 = func_5(Struct_2(func_1(), Struct_1(-2693f, firstTrailingBit(abs(u_input.b)), u_input.a.yw)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1059f), -2377f)), u_input.b, _wgslsmith_sub_vec2_i32(u_input.c.zy ^ -vec2<i32>(20804i, 2147483647i), _wgslsmith_div_vec2_i32(u_input.c.xz, vec2<i32>(22805i, var_1.x)))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-790f))))), u_input.b, vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, var_1.x), firstLeadingBit(vec2<i32>(u_input.a.x, 256i))), u_input.c.x)));
    var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(312f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1213f))))), abs(u_input.b), var_2.a.c), var_2.b);
    var var_3 = func_1();
    var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-265f, var_2.b.a) * vec2<f32>(-1432f, var_2.b.a)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3.a, 836f), vec2<f32>(var_3.a, -255f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1078f, var_2.b.a))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1228f, -765f) - vec2<f32>(1914f, -373f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a, 552f)))))), 1i, var_2.a.a, abs(select(func_1().b, _wgslsmith_add_u32(var_3.b, 4294967295u), !all(vec3<bool>(false, true, true)))), 3201i);
}

