struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_2(true);
    var var_1 = !select(select(vec2<bool>(var_0.a && var_0.a, true), vec2<bool>(all(vec4<bool>(true, true, true, var_0.a)), false), !any(vec2<bool>(var_0.a, var_0.a))), !vec2<bool>(var_0.a | false, var_0.a), true);
    var_0 = Struct_2(true);
    var var_2 = Struct_1(_wgslsmith_mod_i32(1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2271i, -5853i), vec3<i32>(-2147483647i, 2147483647i, 1i))) | 1i, firstLeadingBit(firstLeadingBit(firstLeadingBit(1i))));
    var_2 = Struct_1(~reverseBits(var_2.a), 2147483647i >> ((_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, 59888u)), vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(43233u, u_input.a) % vec2<u32>(32u))) | u_input.a) % 32u));
    return ~firstLeadingBit(reverseBits(~(vec2<u32>(23509u, 67482u) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))));
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = -1i;
    let var_1 = arg_0;
    var var_2 = func_3();
    let var_3 = arg_0;
    var var_4 = 0u;
    return select(select(select(!select(vec4<bool>(false, arg_0.a, false, var_3.a), vec4<bool>(var_1.a, false, false, true), var_3.a), select(!vec4<bool>(arg_0.a, arg_0.a, var_3.a, false), !vec4<bool>(false, var_1.a, true, var_1.a), select(vec4<bool>(arg_0.a, true, var_3.a, var_3.a), vec4<bool>(arg_0.a, false, false, false), arg_0.a)), any(vec4<bool>(true, true, true, true))), vec4<bool>(select(true, false, !arg_0.a), var_1.a, !(false | var_1.a), true), all(!(!vec3<bool>(var_3.a, false, var_1.a)))), vec4<bool>(true, var_3.a, false, false), vec4<bool>(true, all(select(select(vec3<bool>(var_1.a, var_3.a, false), vec3<bool>(false, var_3.a, var_1.a), vec3<bool>(var_1.a, var_3.a, true)), vec3<bool>(false, var_3.a, false), !vec3<bool>(var_3.a, var_1.a, true))), select(arg_0.a, true, u_input.a > _wgslsmith_sub_u32(var_2.x, 0u)), all(vec2<bool>(all(vec4<bool>(false, false, var_1.a, var_3.a)), true))));
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec3_i32(max(vec3<i32>(-min(3369i, 1i), 2147483647i, 33307i), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(1i, 1i, 1i)), abs(-vec3<i32>(-8004i, 2147483647i, 44595i)))), vec3<i32>((abs(25282i) ^ firstTrailingBit(-22156i)) | -23771i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-46346i, 0i, 29077i), vec3<i32>(-13389i, -15088i, 0i)), 46644i));
    let var_1 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(1i), var_0.x, -32208i, var_0.x), -firstLeadingBit(vec4<i32>(2147483647i, var_0.x, var_0.x, 11916i))), select(var_0.x, -(~(var_0.x ^ var_0.x)), arg_0.x));
    let var_2 = _wgslsmith_sub_vec3_i32(~(~var_0), countOneBits(var_0));
    let var_3 = select(func_2(Struct_2(true)), arg_0, select(select(func_2(Struct_2(true)), arg_0, arg_0), arg_0, !any(func_2(Struct_2(true)).yzx)));
    var var_4 = -1000f;
    return Struct_1(_wgslsmith_dot_vec3_i32(~var_2, select(vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.zz, vec2<i32>(-4343i, -27217i)), max(-2147483647i, -26522i), -48264i), _wgslsmith_sub_vec3_i32(select(vec3<i32>(var_0.x, var_0.x, 2147483647i), vec3<i32>(var_0.x, var_2.x, 0i), var_3.yxx), abs(var_0)), !var_3.x)), countOneBits(-38289i));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    let var_0 = 816f;
    let var_1 = _wgslsmith_f_op_f32(-1042f * -572f);
    var var_2 = Struct_1(1i >> (~(~u_input.a & u_input.a) % 32u), -19041i);
    var_2 = func_4(select(vec4<bool>(all(!vec4<bool>(true, arg_1.a, arg_1.a, arg_0.a)), !arg_1.a, true, arg_0.a), !select(func_2(Struct_2(arg_1.a)), !vec4<bool>(arg_1.a, arg_1.a, false, arg_0.a), select(vec4<bool>(arg_0.a, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(true, arg_0.a, arg_0.a, false), arg_1.a)), select(func_2(arg_0), select(!vec4<bool>(false, arg_0.a, arg_0.a, false), !vec4<bool>(false, arg_0.a, arg_0.a, arg_1.a), select(vec4<bool>(false, arg_1.a, arg_0.a, true), vec4<bool>(true, arg_0.a, true, arg_0.a), true)), !vec4<bool>(arg_0.a, false, false, false))));
    var_2 = Struct_1(var_2.a & _wgslsmith_add_i32(-2456i, _wgslsmith_mod_i32(firstLeadingBit(-837i), _wgslsmith_mult_i32(var_2.b, 0i))), _wgslsmith_add_i32(max(_wgslsmith_sub_i32(0i | var_2.a, ~8990i), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_2.b), vec2<i32>(var_2.a, 8843i)))), _wgslsmith_div_i32(-3482i, ~countOneBits(var_2.b))));
    return func_4(vec4<bool>(true, select(_wgslsmith_sub_u32(26811u, u_input.a) <= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, 75263u), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)), true, false), !all(vec2<bool>(arg_0.a, false)), true));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> f32 {
    let var_0 = Struct_4(true | all(vec2<bool>(any(arg_2.a.wx), all(arg_2.a))), _wgslsmith_sub_vec4_u32(firstLeadingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(39093u, u_input.a, 39535u, u_input.a), vec4<u32>(u_input.a, 1u, 1u, 4294967295u))), min(vec4<u32>(~u_input.a, _wgslsmith_mult_u32(46803u, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 16815u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), func_3().x), vec4<u32>(u_input.a, 1u, min(u_input.a, 23239u), _wgslsmith_sub_u32(32157u, 0u)))), arg_2, arg_2.b);
    var var_1 = arg_0;
    let var_2 = var_0.b.yxy;
    var var_3 = arg_2;
    let var_4 = arg_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1109f, _wgslsmith_f_op_f32(abs(-377f)))) - _wgslsmith_f_op_f32(-428f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-573f * 389f)), 318f)));
}

fn func_6(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_4) -> Struct_4 {
    let var_0 = select(0u, 0u, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x)) != -428f) & false);
    var var_1 = 5564u;
    var var_2 = any(select(vec4<bool>(!all(arg_2.c.a.xz), false, all(vec3<bool>(arg_2.c.a.x, false, arg_2.c.a.x)), !arg_2.c.a.x), vec4<bool>(false, false, true, false), ~select(arg_2.d.b, 2147483647i, true) > 2152i));
    var var_3 = true;
    var var_4 = Struct_3(vec4<bool>(!(!arg_2.a), _wgslsmith_mod_u32(arg_1 >> (arg_2.b.x % 32u), arg_1) > ~(~1u), true, !(_wgslsmith_f_op_f32(min(arg_0.x, 1138f)) >= arg_0.x)), arg_2.d);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, select(false, false, false), true)), Struct_1(_wgslsmith_add_i32(abs(39639i), firstLeadingBit(2147483647i)) | _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(-2147483647i, 5922i)), -818i));
    var var_1 = var_0;
    let var_2 = ~abs(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.b.b, var_0.b.a, -12260i), vec3<i32>(-34677i, var_1.b.b, 34492i))) >> (abs(~vec3<u32>(u_input.a, 1u, 1u)) % vec3<u32>(32u)));
    var_1 = var_0;
    var_1 = Struct_3(select(select(!vec4<bool>(true, false, var_1.a.x, false), var_1.a, vec4<bool>(true, true, true, true)), vec4<bool>(var_1.a.x, firstLeadingBit(u_input.a) <= 22569u, true, all(!var_0.a)), var_1.a), Struct_1(abs(var_2.x), ~(-1i)));
    var var_3 = -1000f;
    var_3 = 345f;
    let var_4 = func_6(vec3<f32>(_wgslsmith_f_op_f32(func_5(func_1(Struct_2(true), Struct_2(var_1.a.x)), func_4(func_2(Struct_2(false))), var_0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-740f, _wgslsmith_f_op_f32(func_5(var_0.b, var_1.b, Struct_3(vec4<bool>(var_1.a.x, false, var_0.a.x, true), Struct_1(var_1.b.b, var_0.b.a)))))), -396f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_1(var_1.b.a, var_0.b.b), var_1.b, Struct_3(vec4<bool>(var_0.a.x, var_1.a.x, true, false), Struct_1(-5705i, var_0.b.b)))) * 1324f))), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 0u, 40520u), firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 17809u))), Struct_4(var_0.a.x, select(vec4<u32>(_wgslsmith_sub_u32(u_input.a, 65800u), min(1u, u_input.a), 64958u | u_input.a, max(1u, 1u)), ~(~vec4<u32>(16855u, u_input.a, 0u, u_input.a)), var_1.a.x), var_0, Struct_1(_wgslsmith_mult_i32(var_2.x & -19830i, 55886i), _wgslsmith_clamp_i32(~0i, -var_0.b.a, var_2.x & -40651i))));
    let var_5 = Struct_2(any(!var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(func_4(var_1.a).a, ~0i, var_4.c.b.b, _wgslsmith_sub_i32(_wgslsmith_mod_i32(12428i, -36052i), 27376i)), max(-vec4<i32>(var_2.x, 10269i, var_0.b.a, var_0.b.b) | -vec4<i32>(0i, 2147483647i, var_2.x, 16823i), abs(~vec4<i32>(var_4.c.b.b, var_1.b.b, var_2.x, var_0.b.b)))), abs(_wgslsmith_mult_i32(~(-2147483647i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 7302u, 24812u, 4294967295u), var_4.b) % 32u), var_0.b.b << (135282u % 32u))), _wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(10130u, 40552u, u_input.a, 1u), vec4<u32>(u_input.a, 4294967295u, var_4.b.x, 23848u)), var_4.b, firstLeadingBit(var_4.b)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_4.b.x, var_4.b.x, 39492u, 1u), var_4.b, var_4.b) << (var_4.b % vec4<u32>(32u)), vec4<u32>(39369u, 27202u, countOneBits(u_input.a), var_4.b.x ^ u_input.a))), firstTrailingBit(vec4<i32>(_wgslsmith_add_i32(var_2.x, -1i), ~0i, reverseBits(2147483647i), ~(-85463i)) << (vec4<u32>(func_6(vec3<f32>(257f, 450f, 767f), u_input.a, var_4).b.x, u_input.a, u_input.a, 54633u) % vec4<u32>(32u))), _wgslsmith_dot_vec3_u32(var_4.b.zwy, ~(~(~var_4.b.xyy))));
}

