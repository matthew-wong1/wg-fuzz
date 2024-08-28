struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    let var_0 = abs(20639u);
    var var_1 = arg_0;
    var var_2 = Struct_2(arg_1.a);
    var_2 = arg_1;
    var var_3 = arg_1.a.x | (!(min(var_0, u_input.a) >= 31401u) && !(!(!arg_1.a.x)));
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_2(vec2<bool>(any(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), false)), false));
    var var_1 = var_0;
    var var_2 = _wgslsmith_dot_vec4_u32(abs(u_input.b << (_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 1u, 0u, u_input.c), reverseBits(vec4<u32>(0u, u_input.c, arg_3.e, u_input.b.x))) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(abs(vec4<u32>(~arg_3.e, u_input.a, 1u & arg_0.e, ~u_input.a)), u_input.b >> ((vec4<u32>(u_input.a, 70504u, 4294967295u, arg_0.e) << (~vec4<u32>(24052u, arg_3.e, arg_0.e, arg_3.e) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_3 = Struct_2(vec2<bool>(var_1.a.x, all(!select(vec3<bool>(var_1.a.x, false, var_1.a.x), vec3<bool>(var_0.a.x, var_1.a.x, true), false))));
    var var_4 = var_1.a.x | var_3.a.x;
    return _wgslsmith_div_i32(-_wgslsmith_add_i32(1i, -15243i), ~(-6183i));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = Struct_1(vec4<i32>(_wgslsmith_sub_i32(1i, -72938i), -min(1i, _wgslsmith_mult_i32(-48802i, -7491i)), 1i, 0i), _wgslsmith_f_op_f32(891f * 2091f), vec2<i32>(~(~(-1i >> (0u % 32u))), _wgslsmith_div_i32(~(-55955i), max(~(-1i), 23416i))), firstTrailingBit(abs(vec3<i32>(-16073i, 1i, 61614i)) >> (u_input.b.xzw % vec3<u32>(32u))) ^ vec3<i32>(0i, firstTrailingBit(-8493i) >> (u_input.a % 32u), 1i), u_input.c);
    var var_1 = 4294967295u;
    let var_2 = func_2(Struct_1(var_0.a << (max(u_input.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, var_0.e, var_0.e, 4294967295u), u_input.b, u_input.b)) % vec4<u32>(32u)), 124f, -var_0.a.yy, select(vec3<i32>(-var_0.a.x, var_0.c.x, -var_0.c.x), var_0.a.wxx, true), var_0.e | ~countOneBits(4294967295u)), arg_2, true);
    var var_3 = vec3<bool>(arg_1.a.x, all(select(arg_0.a, arg_0.a, var_2.b <= _wgslsmith_div_f32(var_0.b, -1000f))), true & (true | (_wgslsmith_f_op_f32(1000f + -258f) > var_0.b)));
    let var_4 = -_wgslsmith_clamp_i32(var_0.c.x >> ((var_2.e & 4294967295u) % 32u), max(-(~var_0.d.x), _wgslsmith_add_i32(-26346i, func_3(Struct_1(vec4<i32>(30711i, 34147i, -6689i, 2147483647i), var_2.b, vec2<i32>(1i, -46683i), vec3<i32>(var_2.a.x, 0i, var_0.a.x), u_input.c), -1i, vec2<f32>(var_2.b, -2482f), Struct_1(var_2.a, 688f, vec2<i32>(-16591i, 2147483647i), var_2.d, u_input.a)))), firstTrailingBit(abs(var_0.d.x)) << (~_wgslsmith_add_u32(4294967295u, u_input.c) % 32u));
    return reverseBits(var_0.d);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = Struct_1(~arg_0.a & -arg_0.a, _wgslsmith_f_op_f32(step(675f, 1042f)), ~vec2<i32>(_wgslsmith_dot_vec4_i32(arg_0.a, reverseBits(arg_0.a)), -1i), _wgslsmith_add_vec3_i32(-arg_0.a.zzy, countOneBits(reverseBits(arg_0.d))), _wgslsmith_dot_vec3_u32(u_input.b.wxw, vec3<u32>(arg_1, u_input.a ^ 1888u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.e, 4460u, 0u, 1u), u_input.b))));
    var var_1 = ~23830u;
    var_0 = arg_0;
    let var_2 = Struct_2(select(arg_2.a, vec2<bool>(true, !(var_0.b <= -2535f)), !all(select(vec2<bool>(arg_2.a.x, true), vec2<bool>(arg_2.a.x, true), arg_2.a))));
    var_1 = _wgslsmith_dot_vec4_u32(~firstTrailingBit(select(u_input.b, firstTrailingBit(u_input.b), vec4<bool>(var_2.a.x, false, false, var_2.a.x))), abs(~select(select(vec4<u32>(9586u, 4294967295u, 4294967295u, arg_0.e), u_input.b, var_2.a.x), ~vec4<u32>(arg_1, 4294967295u, 4294967295u, 0u), false)));
    return !(!select(select(select(vec4<bool>(false, var_2.a.x, false, false), vec4<bool>(var_2.a.x, false, arg_2.a.x, false), vec4<bool>(var_2.a.x, arg_2.a.x, true, arg_2.a.x)), !vec4<bool>(true, arg_2.a.x, true, false), false & var_2.a.x), select(!vec4<bool>(false, arg_2.a.x, var_2.a.x, false), !vec4<bool>(true, true, var_2.a.x, var_2.a.x), select(vec4<bool>(true, false, var_2.a.x, arg_2.a.x), vec4<bool>(var_2.a.x, var_2.a.x, true, arg_2.a.x), vec4<bool>(true, arg_2.a.x, true, var_2.a.x))), var_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!func_4(Struct_1(~vec4<i32>(35910i, 2147483647i, -27846i, -3214i), _wgslsmith_f_op_f32(770f * -366f), vec2<i32>(1i, 1i), func_1(Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, true))), u_input.a), 17791u, Struct_2(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)))));
    var var_1 = _wgslsmith_f_op_f32(ceil(-487f)) == -748f;
    var_0 = vec4<bool>(!(!var_0.x), var_0.x, true, var_0.x);
    var_0 = select(select(vec4<bool>(any(vec2<bool>(true, true)), var_0.x, true, var_0.x), vec4<bool>(true, select(!var_0.x, false, any(vec2<bool>(true, var_0.x))), var_0.x, true), !var_0.x), !(!vec4<bool>(true, any(var_0.ywz), true & var_0.x, all(vec4<bool>(var_0.x, false, var_0.x, true)))), vec4<bool>(all(select(!var_0.xw, var_0.yw, var_0.x)), false, true, any(vec2<bool>(var_0.x, func_4(Struct_1(vec4<i32>(0i, 2147483647i, 34561i, 2147483647i), 104f, vec2<i32>(-1i, 1i), vec3<i32>(-2147483647i, -103i, -57982i), u_input.b.x), 12076u, Struct_2(vec2<bool>(var_0.x, true))).x))));
    let var_2 = Struct_1(vec4<i32>(~func_3(func_2(Struct_1(vec4<i32>(0i, 93958i, 0i, -82795i), 187f, vec2<i32>(1i, -1i), vec3<i32>(21369i, -1i, 1i), u_input.a), Struct_2(var_0.wy), true), 5390i, vec2<f32>(-1691f, 646f), Struct_1(vec4<i32>(-1i, 19305i, 2147483647i, 2147483647i), -1067f, vec2<i32>(-23887i, -2147483647i), vec3<i32>(-45491i, -1i, -7042i), u_input.a)), -13563i, -(~_wgslsmith_mult_i32(29558i, 34358i)), 25555i), 1030f, _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(-1i, 0i)), select(vec2<i32>(-12416i, -1467i), vec2<i32>(-1843i, 11370i), var_0.x), vec2<i32>(1i, 1i)), _wgslsmith_sub_vec2_i32(vec2<i32>(10245i, 2147483647i), select(vec2<i32>(0i, 2147483647i), vec2<i32>(-2147483647i, 1594i), var_0.yz))) << (u_input.b.yy % vec2<u32>(32u)), _wgslsmith_mult_vec3_i32(func_2(Struct_1(-vec4<i32>(-1i, -1i, 2147483647i, 82807i), 1f, vec2<i32>(1i, 1i), max(vec3<i32>(0i, 19123i, 1i), vec3<i32>(-1i, -1i, 7646i)), _wgslsmith_div_u32(u_input.c, 25884u)), Struct_2(var_0.wx), any(vec2<bool>(var_0.x, var_0.x)) | false).a.wyx, ~vec3<i32>(-2147483647i, _wgslsmith_sub_i32(-2147483647i, -1i), ~(-6150i))), _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.b.x, 1u, u_input.c, u_input.b.x), ~(u_input.b << (vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c) % vec4<u32>(32u)))) | firstTrailingBit(~43536u));
    var_0 = func_4(var_2, ~countOneBits(max(0u, 1u)), Struct_2(select(select(var_0.xx, func_4(var_2, var_2.e, Struct_2(var_0.zx)).yw, true), select(var_0.wz, vec2<bool>(true, true), true), !select(var_0.yw, vec2<bool>(var_0.x, false), false))));
    let var_3 = !select(vec4<bool>(var_0.x, true, true, true & !var_0.x), !select(func_4(Struct_1(var_2.a, -740f, var_2.c, vec3<i32>(-2147483647i, -68455i, var_2.d.x), var_2.e), u_input.a, Struct_2(vec2<bool>(true, var_0.x))), !vec4<bool>(var_0.x, var_0.x, true, false), var_0.x), !func_4(func_2(var_2, Struct_2(vec2<bool>(var_0.x, false)), var_0.x), 4294967295u, Struct_2(var_0.wx)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.e, ~(3631i & var_2.a.x), var_2.e);
}

