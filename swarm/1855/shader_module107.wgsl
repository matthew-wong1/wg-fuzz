struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: vec3<u32>,
    d: bool,
    e: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: u32,
    d: Struct_2,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
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

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = Struct_5(-1029f, select(true, any(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)), true)), true), countOneBits(~(~2207u & u_input.b.x)), arg_0, vec4<u32>(~0u, arg_0.a, ~4294967295u, arg_0.a) << (vec4<u32>(firstLeadingBit(105469u), u_input.b.x, ~45720u, reverseBits(53626u & arg_0.a)) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_div_f32(-557f, _wgslsmith_div_f32(-1256f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(385f))))));
    var_1 = var_0.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.a)), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1218f + 1185f)), var_0.a)));
    let var_3 = arg_0.b.b.wx;
    return -16934i;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(Struct_1(vec3<i32>(1i, countOneBits(func_3(Struct_2(u_input.b.x, Struct_1(vec3<i32>(u_input.c, u_input.a, u_input.a), vec4<i32>(2850i, u_input.a, 24592i, u_input.c), u_input.a), -2147483647i))), u_input.a), firstTrailingBit(-vec4<i32>(u_input.a, u_input.c, u_input.c, u_input.c)), (reverseBits(u_input.a) ^ -36300i) ^ _wgslsmith_clamp_i32(countOneBits(2147483647i), u_input.c ^ u_input.c, u_input.c)), (vec4<i32>(~(-2152i), u_input.a, 0i, ~u_input.c) << (u_input.b % vec4<u32>(32u))) | max(vec4<i32>(12109i, ~u_input.c, _wgslsmith_mod_i32(-2147483647i, -1i), ~0i), vec4<i32>(u_input.a >> (0u % 32u), 0i, 1i, _wgslsmith_div_i32(34968i, u_input.a))), Struct_2(4294967295u, Struct_1(min(firstTrailingBit(vec3<i32>(-2147483647i, -18257i, u_input.c)), countOneBits(vec3<i32>(-4168i, u_input.a, 2147483647i))), vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(u_input.c, 0i), _wgslsmith_add_i32(u_input.c, -1i), func_3(Struct_2(u_input.b.x, Struct_1(vec3<i32>(u_input.c, 47699i, 2661i), vec4<i32>(u_input.a, -33360i, u_input.c, -1i), u_input.c), u_input.a))), u_input.c), u_input.a), Struct_2(4294967295u, Struct_1(vec3<i32>(-46318i, 1i, ~(-17903i)), ~vec4<i32>(u_input.a, u_input.c, u_input.a, 1i), -13790i), _wgslsmith_add_i32(countOneBits(-8220i), _wgslsmith_clamp_i32(u_input.a, u_input.a, -1i) | -2217i)), Struct_2(43081u, Struct_1(_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(5630i, u_input.a, u_input.a)), vec3<i32>(37742i, 35261i, 0i) | vec3<i32>(-2147483647i, u_input.a, 0i)), ~vec4<i32>(-35121i, -34726i, -29308i, -1619i), u_input.a), abs(u_input.a)));
    var_0 = Struct_3(var_0.a, -select(~(-vec4<i32>(-13320i, u_input.a, -39044i, 50408i)), -(var_0.b | var_0.c.b.b), all(vec3<bool>(false, false, true))), Struct_2(~(~(~4294967295u)), Struct_1(var_0.e.b.a, vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.b.zwz, var_0.b.xzw), -1i, firstLeadingBit(var_0.c.c), -39535i), i32(-1i) * -2388i), 16384i), var_0.d, var_0.d);
    var_0 = Struct_3(var_0.c.b, abs(vec4<i32>(-1i) * -(~vec4<i32>(var_0.d.b.a.x, -2147483647i, var_0.e.c, var_0.e.b.c))), var_0.c, Struct_2(23864u, var_0.c.b, 2147483647i), Struct_2(u_input.b.x, Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 2147483647i, 0i), var_0.c.b.b.yyw), abs(var_0.b.yxx)), ~vec4<i32>(u_input.a, 0i, u_input.c, u_input.c) << (~u_input.b % vec4<u32>(32u)), ~var_0.e.c), firstTrailingBit(-var_0.d.b.a.x)));
    let var_1 = ~min(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~4294967295u, 51609u, countOneBits(58038u)), countOneBits(_wgslsmith_clamp_u32(0u, var_0.e.a, u_input.b.x))), var_0.c.a);
    var var_2 = vec2<bool>(any(select(select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)))), all(!vec4<bool>(true, all(vec2<bool>(true, true)), any(vec2<bool>(false, false)), true)));
    return var_0.e;
}

fn func_1() -> vec2<u32> {
    var var_0 = true & select(!any(vec3<bool>(true, false, false)), false, any(vec4<bool>(true, true, true, true)));
    let var_1 = ~((vec3<u32>(4294967295u, u_input.b.x, _wgslsmith_mod_u32(0u, u_input.b.x)) & vec3<u32>(u_input.b.x << (0u % 32u), u_input.b.x, 1u)) ^ _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b.ywy, u_input.b.yzx, ~vec3<u32>(23377u, 4294967295u, 20228u)), ~u_input.b.xzy, ~vec3<u32>(2049u, u_input.b.x, u_input.b.x)));
    var var_2 = true;
    let var_3 = func_2();
    var_2 = all(vec2<bool>(true, true));
    return ~(~(~u_input.b.xy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(max(firstLeadingBit(28682i), _wgslsmith_mod_i32(11320i, u_input.c)) & firstLeadingBit(u_input.c >> (4294967295u % 32u)), u_input.c) & 1i;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-390f))), -1788f)), _wgslsmith_f_op_f32(1011f - _wgslsmith_f_op_f32(-154f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(408f))))), max(_wgslsmith_clamp_vec3_u32(abs(u_input.b.yzy | vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(15037u, 1u, u_input.b.x), u_input.b.zwy), min(u_input.b.wwy, ~vec3<u32>(0u, u_input.b.x, u_input.b.x))), max(vec3<u32>(~0u, 100583u, u_input.b.x), vec3<u32>(_wgslsmith_add_u32(u_input.b.x, 65284u), countOneBits(1u), ~0u))));
}

