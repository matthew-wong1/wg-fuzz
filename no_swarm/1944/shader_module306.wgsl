struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    var var_0 = all(vec4<bool>(all(vec3<bool>(true, true, true)), u_input.b > 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(35968u, 768u), ~vec2<u32>(1u, u_input.b)) <= u_input.b, any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))));
    var var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2885f, -535f, 242f, 370f), vec4<f32>(374f, -1000f, -1172f, 3270f), false)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-589f, -429f, 547f, 216f) + vec4<f32>(-528f, -1000f, 2622f, 823f))))), min(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b, 36385u, 16114u, u_input.b)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 0u, 1u, u_input.b), vec4<u32>(4294967295u, 1u, 47365u, 0u))), 4447u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-188f - _wgslsmith_div_f32(564f, 211f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1003f, -1438f, true))) * -606f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(367f, -160f)) * _wgslsmith_f_op_f32(floor(1896f)))), _wgslsmith_f_op_f32(f32(-1f) * -1019f)));
    var var_2 = Struct_5(var_1.a, Struct_4(var_1.a, 52326u, _wgslsmith_f_op_f32(max(var_1.d.x, 1f)), var_1.d), all(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true))), countOneBits(-36548i));
    var var_3 = min(~countOneBits(vec4<u32>(1u, var_2.b.b, 0u, var_2.b.b)) >> (~(~vec4<u32>(var_2.b.b, u_input.b, 17237u, 4294967295u)) % vec4<u32>(32u)), vec4<u32>(u_input.b, 0u, _wgslsmith_add_u32(59507u, u_input.b), countOneBits(1u)));
    var_2 = Struct_5(var_2.a, Struct_4(var_2.b.a, ~_wgslsmith_sub_u32(~var_3.x, _wgslsmith_mod_u32(50751u, var_3.x)), _wgslsmith_f_op_f32(-var_2.b.a.a.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.b.d + var_2.a.a.a.wx) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.a.a.x, -724f) - var_2.a.a.a.wz))), true, _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.d, var_2.d, u_input.c.x) << (4294967295u % 32u), -abs(42413i)));
    return _wgslsmith_f_op_f32(-var_2.b.a.a.a.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: vec2<f32>, arg_3: i32) -> i32 {
    let var_0 = Struct_3(all(vec3<bool>(true && any(vec4<bool>(false, false, true, false)), !(arg_1 <= arg_2.x), any(vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.x + -2468f), arg_2.x)), _wgslsmith_f_op_f32(floor(arg_2.x)), 613f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * arg_1)))));
    var var_1 = Struct_1(vec4<f32>(-1567f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(109f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1303f, arg_2.x)))), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, arg_2.x) - _wgslsmith_f_op_f32(abs(arg_1))))));
    var var_2 = countOneBits(-_wgslsmith_div_i32(-1i, arg_0.x ^ 2147483647i));
    let var_3 = vec2<i32>(_wgslsmith_mod_i32(arg_3, firstLeadingBit(-68754i)), _wgslsmith_add_i32(select(4017i, arg_3, !any(vec2<bool>(false, false))), max(-arg_0.x, _wgslsmith_sub_i32(arg_3, select(u_input.a, -40116i, true)))));
    let var_4 = u_input.e;
    return -var_4;
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1534f), _wgslsmith_f_op_f32(-1956f * 2876f), _wgslsmith_f_op_f32(max(-580f, 941f)), _wgslsmith_f_op_f32(step(930f, 1000f)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(var_0.a.a * _wgslsmith_div_vec4_f32(var_0.a.a, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x, _wgslsmith_f_op_f32(-var_0.a.a.x))))));
    let var_2 = reverseBits(vec3<i32>(u_input.a, reverseBits(-1i), func_4(min(vec4<i32>(-2147483647i, 13268i, u_input.d, u_input.d), vec4<i32>(u_input.e, 1i, u_input.e, 1i)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_vec2_f32(-var_0.a.a.yw), u_input.d >> (u_input.b % 32u)))) & u_input.c;
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(reverseBits(reverseBits(var_2)), _wgslsmith_add_vec3_i32(~abs(vec3<i32>(46740i, 22678i, -1i)), ~(-var_2))), -1i);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(max(var_1.x, -467f)), _wgslsmith_f_op_f32(func_3()), var_1.x, _wgslsmith_f_op_f32(min(893f, 932f)));
    return Struct_1(var_0.a.a);
}

fn func_1(arg_0: u32) -> Struct_5 {
    let var_0 = select(~u_input.c.zx, vec2<i32>(~(~(i32(-1i) * -1i)), 0i), true || ((~arg_0 & (arg_0 << (arg_0 % 32u))) < arg_0));
    let var_1 = Struct_5(Struct_2(func_2(select(any(vec4<bool>(false, true, false, false)), all(vec4<bool>(true, false, true, false)), true), true)), Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(153f, -1000f, -216f, -679f) - vec4<f32>(-166f, 384f, -251f, 1185f)))), abs(abs(u_input.b)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-142f, -2857f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1936f, 139f))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-769f, -235f) - vec2<f32>(-264f, 476f)))))), true, -(1i & _wgslsmith_clamp_i32(abs(var_0.x), -10770i, i32(-1i) * -32299i)));
    var var_2 = var_0;
    var var_3 = Struct_2(func_2(var_1.c, any(select(vec3<bool>(true, false, true), vec3<bool>(true, var_1.c, var_1.c), true))));
    var var_4 = ~firstTrailingBit(vec2<u32>(~abs(35900u), ~0u));
    return Struct_5(var_1.b.a, var_1.b, true, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.c.zx ^ var_0, vec2<i32>(39655i | u_input.a, var_0.x >> (arg_0 % 32u))), -19051i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~4294967295u);
    var_0 = Struct_5(func_1(~1u).a, func_1(u_input.b).b, select(any(vec2<bool>(true, true)), false, select(4294967295u >> (1u % 32u), var_0.b.b, !var_0.c) <= ~countOneBits(var_0.b.b)), firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_add_i32(var_0.d, -2590i), var_0.d)));
    var var_1 = !(!(!select(select(vec3<bool>(true, false, true), vec3<bool>(var_0.c, var_0.c, false), vec3<bool>(var_0.c, true, var_0.c)), select(vec3<bool>(false, false, false), vec3<bool>(false, var_0.c, var_0.c), false), vec3<bool>(true, false, var_0.c))));
    var var_2 = func_1(_wgslsmith_add_u32(~_wgslsmith_mult_u32(var_0.b.b, abs(u_input.b)), select(u_input.b, ~4294967295u, !any(vec3<bool>(false, var_1.x, var_0.c)))));
    var_0 = Struct_5(func_1(var_0.b.b).b.a, Struct_4(var_2.b.a, 22551u, -1083f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(138f, var_2.b.c))) - var_0.b.d)), all(!vec3<bool>(true, false, var_0.c)) || (_wgslsmith_div_i32(_wgslsmith_div_i32(var_2.d, -40576i), var_0.d) < (var_0.d | var_2.d)), 0i);
    var var_3 = vec4<bool>(var_2.c, any(select(select(!vec3<bool>(var_0.c, true, true), select(vec3<bool>(var_2.c, var_1.x, false), vec3<bool>(true, true, var_2.c), vec3<bool>(var_2.c, false, var_2.c)), select(vec3<bool>(var_0.c, var_2.c, var_0.c), vec3<bool>(var_2.c, false, true), vec3<bool>(true, var_2.c, false))), !(!vec3<bool>(false, true, var_2.c)), !(var_0.c || false))), all(!var_1.zx), false);
    let var_4 = Struct_3(select(false, true, var_0.b.b <= (~var_0.b.b ^ _wgslsmith_add_u32(3088u, 33624u))), vec4<f32>(1456f, func_1(4294967295u).b.d.x, var_0.a.a.a.x, -1656f));
    let var_5 = var_4.b.x;
    var_3 = vec4<bool>(true, var_4.a, !var_0.c, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.a.a.a.x), _wgslsmith_div_f32(-708f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_4.b.x)))), var_5, reverseBits(33280i));
}

