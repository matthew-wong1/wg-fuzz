struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_sub_vec4_i32(min(vec4<i32>(-1i, -24179i << (u_input.d % 32u), ~2147483647i, -u_input.a), -abs(vec4<i32>(1i, 1i, u_input.c, 0i))), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.c, u_input.c, 1i, 5535i), -vec4<i32>(0i, -1i, u_input.c, -1i))), min(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 65506u, 85831u), abs(vec3<u32>(u_input.b, 51808u, 0u))), u_input.b), vec2<u32>(firstTrailingBit(min(4294967295u, 59534u)), ~(~u_input.d))));
    let var_1 = 1i;
    var var_2 = Struct_4(min(min(firstTrailingBit(~vec4<u32>(u_input.b, u_input.b, 30655u, var_0.b.x)), countOneBits(~vec4<u32>(var_0.b.x, 16849u, u_input.b, u_input.b))), vec4<u32>(_wgslsmith_add_u32(0u, var_0.b.x), _wgslsmith_clamp_u32(var_0.b.x, 1u, var_0.b.x), max(u_input.b, var_0.b.x), select(u_input.b, var_0.b.x, true)) & ~vec4<u32>(54498u, u_input.b, 55031u, var_0.b.x)), var_0.a.yzz);
    var_2 = Struct_4(var_2.a, vec3<i32>(-15464i, i32(-1i) * -20099i, firstLeadingBit(var_0.a.x ^ var_0.a.x)) & var_2.b);
    var_2 = Struct_4(firstTrailingBit(abs(vec4<u32>(firstTrailingBit(0u), _wgslsmith_mod_u32(u_input.b, var_0.b.x), countOneBits(1u), 10091u))), ~max(_wgslsmith_mult_vec3_i32(-vec3<i32>(var_2.b.x, var_2.b.x, u_input.a), -vec3<i32>(2147483647i, u_input.a, var_2.b.x)), ~var_2.b));
    return -440f;
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = -abs(u_input.a);
    var var_1 = true;
    var var_2 = false;
    var var_3 = 36659u;
    var var_4 = _wgslsmith_f_op_f32(func_3());
    return vec4<u32>(~arg_0 & ~(firstTrailingBit(arg_0) >> (0u % 32u)), 0u, ~arg_0, reverseBits(arg_0) ^ arg_0);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_4) -> Struct_1 {
    var var_0 = arg_0 != arg_0;
    let var_1 = select(vec4<bool>(arg_0 | (arg_1.b.x < (arg_1.b.x | arg_2.a.x)), arg_0, any(vec4<bool>(!arg_0, all(vec3<bool>(false, arg_0, arg_0)), false, false)), !any(!vec4<bool>(false, true, arg_0, false))), !vec4<bool>(!(16291u == arg_1.b.x), true, any(vec2<bool>(arg_0, false)), arg_2.a.x <= u_input.d), vec4<bool>(3465i > ~arg_1.a.x, true, (~(-1i) | arg_2.b.x) > _wgslsmith_mult_i32(i32(-1i) * -15538i, countOneBits(-18659i)), all(select(vec3<bool>(true, true, false), vec3<bool>(arg_0, true, true), any(vec4<bool>(arg_0, arg_0, arg_0, arg_0))))));
    let var_2 = arg_2;
    var_0 = true;
    let var_3 = firstTrailingBit(_wgslsmith_mult_vec2_i32(~(~_wgslsmith_mod_vec2_i32(vec2<i32>(27465i, var_2.b.x), vec2<i32>(-34420i, arg_2.b.x))), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(max(vec2<i32>(14585i, u_input.a), arg_1.a.zz), vec2<i32>(u_input.c, -13970i)), firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(64871i, 28858i), vec2<i32>(arg_1.a.x, 2147483647i))))));
    return Struct_1(~_wgslsmith_add_vec4_i32(~vec4<i32>(arg_2.b.x, var_3.x, -11234i, -9442i), min(vec4<i32>(var_2.b.x, u_input.a, 2147483647i, 2147483647i), ~arg_1.a)), vec2<u32>(_wgslsmith_mult_u32(4294967295u, var_2.a.x), abs(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a.x, arg_1.b.x, 24555u), var_2.a.ywz)))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    return arg_1;
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> Struct_4 {
    let var_0 = arg_1;
    let var_1 = !select(select(vec4<bool>(all(vec3<bool>(arg_1.a, arg_1.a, arg_1.a)), arg_0 == 2147483647i, true | arg_1.a, var_0.a), vec4<bool>(false == arg_1.a, any(vec3<bool>(arg_1.a, false, arg_1.a)), false, arg_1.a), false), !(!(!vec4<bool>(var_0.a, arg_1.a, arg_1.a, false))), any(!select(vec4<bool>(true, true, var_0.a, true), vec4<bool>(true, false, true, true), true)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(161f)) * _wgslsmith_f_op_f32(ceil(1536f))), 1f))), func_4(func_5(max(vec3<i32>(29031i, arg_0, -1i), ~vec3<i32>(-2147483647i, u_input.c, arg_0)), Struct_2(true), Struct_1(vec4<i32>(arg_0, 22378i, 0i, arg_0), abs(vec2<u32>(37555u, 1u)))).a, func_4(!var_0.a, func_4(false, Struct_1(vec4<i32>(arg_0, u_input.c, -10556i, 0i), vec2<u32>(53748u, u_input.d)), Struct_4(vec4<u32>(1u, 4294967295u, 0u, u_input.d), vec3<i32>(-1i, -22265i, -2147483647i))), Struct_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, 1u, u_input.d, u_input.d), vec4<u32>(48149u, u_input.b, u_input.b, u_input.d), vec4<u32>(u_input.b, u_input.d, 4294967295u, 2889u)), func_4(true, Struct_1(vec4<i32>(0i, arg_0, 24443i, -18398i), vec2<u32>(u_input.b, u_input.b)), Struct_4(vec4<u32>(u_input.d, 0u, u_input.b, 4294967295u), vec3<i32>(0i, 40253i, arg_0))).a.ywx)), Struct_4(~vec4<u32>(u_input.d, 4149u, u_input.d, 95757u), vec3<i32>(0i, u_input.a, u_input.c) << (vec3<u32>(u_input.d, u_input.d, 0u) % vec3<u32>(32u)))), Struct_2((countOneBits(u_input.a) << ((u_input.d << (u_input.b % 32u)) % 32u)) >= u_input.c), Struct_1(vec4<i32>(1i, 49289i, u_input.c, 1i) ^ reverseBits(min(vec4<i32>(1i, u_input.c, 20521i, arg_0), vec4<i32>(2147483647i, u_input.c, u_input.c, arg_0))), max(vec2<u32>(~u_input.d, func_2(u_input.d, Struct_2(var_1.x)).x), select(abs(vec2<u32>(u_input.b, u_input.d)), select(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(4294967295u, u_input.d), vec2<bool>(false, false)), !vec2<bool>(var_1.x, false)))), min(~select(vec2<i32>(0i, 0i), vec2<i32>(2147483647i, arg_0), true), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, 1i), vec2<i32>(1i, ~u_input.a))));
    let var_3 = -vec2<i32>(-34823i, -47720i | _wgslsmith_add_i32(39622i >> (u_input.d % 32u), ~(-12168i)));
    var var_4 = _wgslsmith_div_u32(20504u, ~(~u_input.b));
    return Struct_4(vec4<u32>(_wgslsmith_clamp_u32(4279u, var_2.d.b.x, 61609u), _wgslsmith_mult_u32(var_2.b.b.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(var_2.b.b.x, u_input.b), 1u)), 1u, 0u), _wgslsmith_sub_vec3_i32(reverseBits(~vec3<i32>(-1i, -1i, u_input.a)), vec3<i32>(_wgslsmith_clamp_i32(var_3.x, func_4(var_0.a, Struct_1(vec4<i32>(1i, u_input.c, 0i, 49119i), vec2<u32>(var_2.d.b.x, var_2.b.b.x)), Struct_4(vec4<u32>(u_input.b, 0u, 1u, u_input.b), var_2.b.a.wzz)).a.x, u_input.c), -49728i >> (1u % 32u), -45042i)));
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    let var_0 = func_6(u_input.a, func_5(select(vec3<i32>(1i, u_input.c, u_input.a), -max(vec3<i32>(-17606i, u_input.a, u_input.a), vec3<i32>(35540i, 91267i, 2147483647i)), arg_0.x), Struct_2(all(select(arg_0, vec4<bool>(arg_0.x, false, true, true), false))), func_4(select(all(vec3<bool>(true, arg_0.x, true)), true, arg_0.x != arg_0.x), Struct_1(select(vec4<i32>(1i, 47919i, -1i, u_input.a), vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.c), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), ~vec2<u32>(16510u, u_input.b)), Struct_4(func_2(u_input.b, Struct_2(true)), abs(vec3<i32>(u_input.c, u_input.a, 0i))))));
    var var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(971f, 1900f))))), 1f), Struct_1(~(min(vec4<i32>(u_input.a, 0i, var_0.b.x, -1i), vec4<i32>(var_0.b.x, -22504i, var_0.b.x, -1i)) >> (vec4<u32>(21224u, u_input.d, var_0.a.x, u_input.d) % vec4<u32>(32u))), vec2<u32>(23798u, 1u)), func_5(-vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.b.zx, vec2<i32>(var_0.b.x, var_0.b.x)), u_input.a, -2147483647i), func_5(vec3<i32>(var_0.b.x, -2147483647i, var_0.b.x), Struct_2(true), Struct_1(vec4<i32>(u_input.a, var_0.b.x, 28204i, -1i) >> (var_0.a % vec4<u32>(32u)), ~var_0.a.yy)), func_4(true, Struct_1(func_4(true, Struct_1(vec4<i32>(u_input.c, var_0.b.x, var_0.b.x, 2147483647i), var_0.a.wx), var_0).a, abs(vec2<u32>(u_input.b, var_0.a.x))), var_0)), func_4(any(select(select(vec3<bool>(false, false, false), vec3<bool>(arg_0.x, arg_0.x, true), arg_0.x), vec3<bool>(false, false, arg_0.x), select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(true, arg_0.x, true)))), func_4(all(arg_0.ww), func_4(false, func_4(arg_0.x, Struct_1(vec4<i32>(0i, 1i, var_0.b.x, u_input.a), var_0.a.yz), Struct_4(vec4<u32>(73363u, var_0.a.x, 90318u, u_input.d), var_0.b)), Struct_4(vec4<u32>(var_0.a.x, 4294967295u, u_input.d, u_input.d), var_0.b)), Struct_4(func_2(14896u, Struct_2(arg_0.x)), firstLeadingBit(var_0.b))), Struct_4(~vec4<u32>(u_input.d, 0u, 1u, u_input.b) >> (~var_0.a % vec4<u32>(32u)), select(func_6(u_input.a, Struct_2(true)).b, min(var_0.b, vec3<i32>(2147483647i, 0i, u_input.a)), vec3<bool>(arg_0.x, arg_0.x, false)))), abs(~vec2<i32>(-var_0.b.x, var_0.b.x ^ -66669i)));
    var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-2065f)), 1000f)), var_1.b, func_5(var_0.b, var_1.c, func_4(var_1.c.a, Struct_1(var_1.d.a, vec2<u32>(35686u, var_1.d.b.x)), Struct_4(vec4<u32>(var_1.d.b.x, 1u, var_1.d.b.x, 46827u), var_1.d.a.wwy))), var_1.d, var_1.e);
    var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(exp2(var_1.a)), Struct_1(_wgslsmith_mult_vec4_i32(var_1.d.a, vec4<i32>(64168i, firstLeadingBit(-13097i), -16525i, var_1.e.x)), var_1.d.b), Struct_2(any(!arg_0)), Struct_1(-var_1.b.a, vec2<u32>(1u, u_input.b)), max(var_1.d.a.zy, firstTrailingBit(var_1.e)) << (vec2<u32>(~(var_1.b.b.x >> (var_0.a.x % 32u)), var_1.d.b.x) % vec2<u32>(32u)));
    var var_2 = var_0;
    return _wgslsmith_f_op_f32(sign(454f));
}

fn func_7(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: vec2<i32>) -> f32 {
    var var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(select(arg_1.x, -251f, true))), arg_1.x)), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-954f * arg_1.x)))), Struct_1(vec4<i32>(_wgslsmith_mult_i32(arg_2.x & u_input.a, arg_2.x), -58695i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, 27661i, u_input.c), _wgslsmith_mod_vec4_i32(vec4<i32>(11551i, arg_2.x, arg_2.x, arg_2.x), vec4<i32>(arg_2.x, arg_2.x, -14351i, u_input.c))), u_input.a), vec2<u32>(abs(_wgslsmith_mult_u32(arg_0.x, u_input.d)), _wgslsmith_mod_u32(1u, arg_0.x))), Struct_2(!(!func_5(vec3<i32>(1i, 22343i, u_input.a), Struct_2(true), Struct_1(vec4<i32>(0i, 0i, u_input.c, 2147483647i), vec2<u32>(4294967295u, arg_0.x))).a)), func_4(select(false || any(vec4<bool>(true, false, true, true)), true, true), func_4(true, Struct_1(vec4<i32>(1i, 3590i, arg_2.x, u_input.c), ~vec2<u32>(4294967295u, u_input.b)), Struct_4(~vec4<u32>(u_input.b, 24044u, u_input.d, u_input.b), vec3<i32>(u_input.a, arg_2.x, -36466i))), Struct_4(_wgslsmith_div_vec4_u32(arg_0, vec4<u32>(u_input.b, arg_0.x, 1u, 55434u)) >> (firstLeadingBit(vec4<u32>(4294967295u, arg_0.x, 17491u, u_input.d)) % vec4<u32>(32u)), abs(~vec3<i32>(2147483647i, 1i, arg_2.x)))), abs(select(arg_2, arg_2, vec2<bool>(true, all(vec3<bool>(false, true, false))))));
    var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -933f), 657f), var_0.b, var_0.c, func_4(all(select(select(vec4<bool>(false, var_0.c.a, false, var_0.c.a), vec4<bool>(true, false, true, false), vec4<bool>(var_0.c.a, var_0.c.a, var_0.c.a, var_0.c.a)), !vec4<bool>(true, false, false, var_0.c.a), select(vec4<bool>(var_0.c.a, var_0.c.a, var_0.c.a, var_0.c.a), vec4<bool>(true, var_0.c.a, false, var_0.c.a), var_0.c.a))), Struct_1(_wgslsmith_mult_vec4_i32(firstLeadingBit(var_0.b.a), vec4<i32>(-2147483647i, 14861i, arg_2.x, arg_2.x)), vec2<u32>(abs(0u), 364u)), Struct_4(vec4<u32>(0u, u_input.d, u_input.b, ~arg_0.x), ~(vec3<i32>(var_0.e.x, arg_2.x, 1517i) ^ vec3<i32>(var_0.b.a.x, 58007i, -28912i)))), vec2<i32>(arg_2.x, u_input.a));
    var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1915f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(217f + _wgslsmith_f_op_f32(-arg_1.x)), 565f))), var_0.b, var_0.c, func_4(select(true & any(vec4<bool>(false, var_0.c.a, true, true)), true, var_0.c.a), var_0.d, Struct_4(arg_0, abs(vec3<i32>(-42471i, var_0.e.x, u_input.a) & vec3<i32>(387i, -6034i, 11703i)))), vec2<i32>(2147483647i, ~_wgslsmith_mod_i32(var_0.d.a.x, u_input.c)) & arg_2);
    var var_1 = min(_wgslsmith_add_vec2_u32(func_6(var_0.b.a.x, var_0.c).a.yy >> (arg_0.wy % vec2<u32>(32u)), arg_0.yy) | vec2<u32>(arg_0.x, 1925u), _wgslsmith_mod_vec2_u32(vec2<u32>(~arg_0.x, 1u), vec2<u32>(arg_0.x, 4294967295u) ^ arg_0.zz));
    var_1 = min(~(vec2<u32>(arg_0.x, ~55671u) & _wgslsmith_mod_vec2_u32(var_0.b.b, var_0.d.b)), vec2<u32>(83311u, _wgslsmith_sub_u32(~func_4(false, var_0.d, Struct_4(vec4<u32>(u_input.d, 22068u, var_1.x, 10358u), var_0.d.a.wzz)).b.x, var_1.x)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(807f + _wgslsmith_f_op_f32(-arg_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -422f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -618f));
    var_1 = _wgslsmith_f_op_f32(-1453f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-518f - 542f) * -1000f)), -170f)));
    var var_2 = ~(~min(~max(vec2<u32>(10444u, u_input.b), vec2<u32>(u_input.d, u_input.d)), ~vec2<u32>(u_input.b, u_input.b)));
    var_0 = _wgslsmith_f_op_f32(func_7(vec4<u32>(var_2.x, var_2.x, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_2.x, 39976u)), vec2<u32>(9373u, var_2.x)), 1u) & abs(min(vec4<u32>(u_input.b, 26592u, 0u, 85522u), vec4<u32>(u_input.b, 27391u, var_2.x, 4294967295u)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(129508u, var_2.x, 31274u, var_2.x), vec4<u32>(0u, 0u, u_input.d, 4294967295u), vec4<u32>(96577u, var_2.x, u_input.d, var_2.x))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(798f + 733f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-312f + -1620f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1398f) * _wgslsmith_f_op_f32(func_1(vec4<bool>(false, false, false, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - 933f), -153f, true)))), _wgslsmith_mult_vec2_i32(vec2<i32>(362i, firstTrailingBit(_wgslsmith_div_i32(0i, u_input.a))), _wgslsmith_mod_vec2_i32(firstLeadingBit(countOneBits(vec2<i32>(u_input.a, u_input.a))), -(~vec2<i32>(u_input.c, 17019i))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1672f, -1199f, 882f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1242f, -300f, 1000f))), vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, false, true))), -214f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1100f, _wgslsmith_f_op_f32(floor(-957f)), _wgslsmith_f_op_f32(f32(-1f) * -924f)), vec3<f32>(1f, _wgslsmith_f_op_f32(floor(1462f)), 369f), vec3<bool>(false, false, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 343f, 627f, -426f), vec4<f32>(-1091f, -556f, 1006f, 870f), true))))) * vec4<f32>(_wgslsmith_f_op_f32(-738f + _wgslsmith_f_op_f32(floor(482f))), 1124f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - _wgslsmith_f_op_f32(-246f + -551f)))), max(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(25021u, 65575u, 4294967295u), ~vec3<u32>(0u, u_input.b, 4294967295u)), select(vec3<u32>(var_2.x, 3197u, var_2.x), _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.x, 0u, var_2.x), vec3<u32>(31130u, 32624u, 1u)), vec3<bool>(true, true, false))), abs(select(vec3<u32>(31449u, var_2.x, var_2.x) << (vec3<u32>(69028u, var_2.x, 41666u) % vec3<u32>(32u)), min(vec3<u32>(u_input.d, 4294967295u, var_2.x), vec3<u32>(var_2.x, u_input.b, var_2.x)), all(vec2<bool>(true, true))))), func_6(u_input.a, Struct_2(true)).a, vec2<i32>(1i, -40981i));
}

