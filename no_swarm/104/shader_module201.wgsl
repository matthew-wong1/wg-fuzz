struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: bool) -> u32 {
    let var_0 = max(u_input.a.x, 29909u << (1u % 32u));
    var var_1 = Struct_3(!(!(!select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(true, arg_1, arg_1, false), false))), Struct_1(~firstLeadingBit(-vec4<i32>(1i, 2147483647i, u_input.d.x, 2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(857f + 156f)) * 1f), 12112u), all(select(vec2<bool>(false, true), select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, false), select(arg_1, arg_1, arg_1)), arg_1)));
    var var_2 = !(false == !(!(true | arg_1)));
    let var_3 = Struct_5(Struct_3(vec4<bool>(select(!arg_1, !var_1.c, !var_1.c), countOneBits(var_1.b.c) != min(4294967295u, var_1.b.c), true, var_1.c), Struct_1(vec4<i32>(min(-72340i, u_input.d.x), ~var_1.b.a.x, min(u_input.c, arg_0), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_1.b.a.x, arg_0, 5446i), vec4<i32>(1i, -4268i, arg_0, var_1.b.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b.b))), 0u), var_1.c), any(vec3<bool>(true, false, all(var_1.a.wx))));
    var_1 = Struct_3(vec4<bool>(!select(arg_1, false, !var_3.a.a.x), any(!vec2<bool>(var_3.a.c, true)) | !all(var_1.a.wzx), !var_3.b, true), Struct_1(_wgslsmith_mod_vec4_i32(~var_3.a.b.a, -vec4<i32>(46638i, u_input.c, u_input.d.x, u_input.d.x) & ~vec4<i32>(1i, u_input.c, var_3.a.b.a.x, arg_0)), var_3.a.b.b, ~_wgslsmith_sub_u32(4294967295u, ~var_0)), var_3.a.b.c == _wgslsmith_clamp_u32(min(1u, firstLeadingBit(4294967295u)), _wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(var_1.b.c, var_3.a.b.c)), var_0));
    return (47137u | (45372u & (~15726u << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_3.a.b.c), u_input.a.yz) % 32u)))) << (3637u % 32u);
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = 1042f;
    let var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(~_wgslsmith_mult_u32(31216u, 1u), max(reverseBits(abs(1u)), 25298u)), vec2<u32>(42726u, countOneBits(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(54517u, 40945u, 4294967295u), u_input.a), abs(u_input.a.x)))));
    let var_2 = select(vec3<bool>(true, true, true), vec3<bool>(func_3(-arg_0, true) >= ~(~24790u), 449f >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -521f))), !(!(arg_0 < 2147483647i))), vec3<bool>(true, true, true));
    let var_3 = Struct_3(vec4<bool>(true, true, true, var_2.x), Struct_1(-vec4<i32>(~0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, arg_0, 2147483647i, arg_0), vec4<i32>(arg_0, u_input.c, -44648i, 1i)), -2147483647i, arg_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1387f + 1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1057f * 1384f))))), _wgslsmith_div_u32(var_1.x, countOneBits(var_1.x & u_input.a.x))), any(select(select(select(var_2, var_2, vec3<bool>(true, false, false)), var_2, vec3<bool>(false, var_2.x, true)), select(!var_2, var_2, true), var_2)));
    let var_4 = var_3.b.b;
    return Struct_3(vec4<bool>(var_3.c, var_3.c, all(select(var_3.a, select(vec4<bool>(false, var_3.c, var_2.x, var_3.c), vec4<bool>(false, var_3.c, false, var_3.a.x), vec4<bool>(true, var_3.a.x, true, var_2.x)), select(false, var_2.x, false))), true), var_3.b, var_3.a.x);
}

fn func_1(arg_0: Struct_5, arg_1: vec3<bool>) -> i32 {
    var var_0 = arg_0.a;
    var_0 = func_2(-7553i);
    var_0 = arg_0.a;
    var var_1 = _wgslsmith_dot_vec2_i32(var_0.b.a.yw, vec2<i32>(u_input.c, var_0.b.a.x));
    return select(firstLeadingBit(firstLeadingBit(u_input.c) << (_wgslsmith_div_u32(u_input.a.x ^ 0u, var_0.b.c) % 32u)), var_0.b.a.x, true == (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 6783u, u_input.b), ~vec4<u32>(1u, var_0.b.c, 1u, arg_0.a.b.c)) >= arg_0.a.b.c));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = vec4<u32>(58580u ^ arg_3.b.c, arg_2.x, arg_3.b.c, _wgslsmith_sub_u32(4294967295u, max(1u, arg_3.b.c) & u_input.a.x));
    var var_1 = var_0.x;
    var var_2 = abs(arg_2 << (reverseBits(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(56503u, u_input.b, arg_3.b.c, var_0.x), arg_2))) % vec4<u32>(32u)));
    var_1 = ~_wgslsmith_dot_vec2_u32(select(_wgslsmith_mod_vec2_u32(u_input.a.yx, var_0.wz), max(vec2<u32>(var_0.x, 25640u), countOneBits(vec2<u32>(37853u, var_2.x))), select(func_2(u_input.d.x).a.wz, !arg_1.a.yy, vec2<bool>(true, true))), _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(37960u, 29689u)), min(var_2.yw, vec2<u32>(var_0.x, 1u)) | _wgslsmith_mod_vec2_u32(u_input.a.yy, vec2<u32>(var_0.x, u_input.a.x))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.b.b, arg_1.b.b))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.b, arg_3.b.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.b, -738f))))))));
    return Struct_2(_wgslsmith_sub_u32(0u, _wgslsmith_div_u32(0u, 1u)) << (_wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(arg_1.b.c >> (4294967295u % 32u), 1u), _wgslsmith_clamp_u32(func_3(u_input.c, arg_1.c), arg_1.b.c, _wgslsmith_sub_u32(u_input.b, u_input.a.x))) % 32u), arg_3.b, Struct_1(-(arg_1.b.a | arg_1.b.a) >> (_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 9541u, 0u, 1u), vec4<u32>(arg_1.b.c, 0u, 71485u, arg_3.b.c) & vec4<u32>(4294967295u, 57146u, 4294967295u, 4294967295u)) % vec4<u32>(32u)), arg_1.b.b, _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(arg_1.b.c, arg_1.b.c), ~var_2.x), 52589u)), func_2(~1i).b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 703f;
    let var_1 = func_4(vec2<bool>(!(func_1(Struct_5(Struct_3(vec4<bool>(true, false, true, false), Struct_1(vec4<i32>(u_input.c, u_input.d.x, u_input.d.x, 2147483647i), var_0, u_input.a.x), false), true), vec3<bool>(false, true, false)) == _wgslsmith_mult_i32(u_input.c, u_input.c)), true || select(false, any(vec3<bool>(true, false, false)), select(true, false, true))), Struct_3(vec4<bool>(true, true, true, all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))), Struct_1(max(vec4<i32>(4569i, u_input.d.x, u_input.c, 22682i), vec4<i32>(1i, -1i, u_input.c, 10525i)), -993f, _wgslsmith_add_u32(~u_input.b, 1u)), false == ((var_0 != -1323f) & true)), firstTrailingBit(vec4<u32>(~(u_input.a.x | u_input.b), 1u, u_input.a.x, _wgslsmith_sub_u32(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, 1u, u_input.b), vec4<u32>(24007u, u_input.b, 1u, 4089u))))), Struct_3(func_2(u_input.c).a, func_2(-2147483647i).b, true));
    let var_2 = firstLeadingBit(func_4(select(vec2<bool>(true, select(false, false, true)), vec2<bool>(true, true), any(vec4<bool>(true, true, true, true))), func_2(-var_1.b.a.x), select(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, u_input.b, 21320u, 93390u), ~vec4<u32>(u_input.b, 2383u, var_1.c.c, var_1.b.c)), select(vec4<u32>(57367u, 38853u, 4343u, u_input.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 54071u, 32924u, u_input.a.x), vec4<u32>(1u, u_input.b, var_1.c.c, 22015u), vec4<u32>(var_1.c.c, 4294967295u, u_input.b, u_input.b)), vec4<bool>(true, true, true, true)), true), func_2(u_input.d.x)).d.a.wxx);
    let var_3 = var_1.b;
    var var_4 = vec2<bool>(false, true);
    let var_5 = func_2(u_input.d.x);
    let var_6 = select(vec3<u32>(var_1.b.c, 82635u, firstTrailingBit(var_5.b.c << (~55614u % 32u))), ~u_input.a, vec3<bool>(var_5.b.b > _wgslsmith_f_op_f32(f32(-1f) * -1672f), false, !var_4.x));
    var_4 = select(func_2(reverseBits(_wgslsmith_dot_vec4_i32(-var_1.b.a, _wgslsmith_add_vec4_i32(vec4<i32>(-7571i, 9949i, 2147483647i, var_2.x), var_3.a)))).a.yy, vec2<bool>(var_4.x, var_4.x), true);
    var_4 = !var_5.a.xw;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<u32>(~(var_3.c & var_5.b.c), ~(~59837u), 72793u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_1.c.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_5.b.b), _wgslsmith_f_op_f32(var_3.b - -1596f), select(true, var_4.x, true))))))), var_1.c.a.zwz);
}

