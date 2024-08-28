struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: f32) -> u32 {
    var var_0 = arg_1.b;
    var var_1 = -_wgslsmith_sub_vec4_i32(firstTrailingBit(~vec4<i32>(-26479i, -2147483647i, var_0.d.x, var_0.b.x)), vec4<i32>(i32(-1i) * -46396i, _wgslsmith_mod_i32(arg_0, arg_1.b.d.x), 1i, 1i)) | reverseBits(var_0.d);
    return _wgslsmith_mod_u32(4279u, ~_wgslsmith_mod_u32(arg_1.b.a, ~arg_1.d.a)) ^ _wgslsmith_dot_vec2_u32(arg_1.a.zx, vec2<u32>(~firstTrailingBit(4294967295u), 0u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> vec3<u32> {
    var var_0 = arg_1;
    var_0 = arg_1;
    let var_1 = var_0.d;
    var_0 = Struct_3(vec3<u32>(arg_1.b.a, 1u, ~(~arg_1.b.a)), var_0.c, var_0.c, var_0.d);
    let var_2 = _wgslsmith_div_i32(min(_wgslsmith_dot_vec2_i32(arg_1.c.d.zz, vec2<i32>(2147483647i, arg_1.b.d.x) | -arg_0.d.zw), arg_0.d.x), _wgslsmith_clamp_i32(var_0.b.d.x, var_1.b, firstLeadingBit(~_wgslsmith_clamp_i32(57554i, -2147483647i, 46212i))));
    return firstTrailingBit(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~var_0.a, select(var_0.a, vec3<u32>(arg_0.a, 33597u, 25596u), false) & vec3<u32>(18736u, 91722u, 4294967295u)), ~(~countOneBits(vec3<u32>(u_input.a, var_1.a, 0u)))));
}

fn func_2() -> vec3<u32> {
    let var_0 = Struct_3(func_4(Struct_2(func_3(1i, Struct_3(vec3<u32>(u_input.a, u_input.a, u_input.a), Struct_2(u_input.b.x, vec2<i32>(-1i, -2147483647i), vec2<bool>(false, false), vec4<i32>(2147483647i, -21755i, -60593i, 16469i)), Struct_2(u_input.b.x, vec2<i32>(66743i, 2147483647i), vec2<bool>(false, false), vec4<i32>(-1i, -32118i, -25381i, 28157i)), Struct_1(11975u, 1i, vec2<i32>(-20833i, 39513i))), _wgslsmith_f_op_f32(586f - 661f)), min(-vec2<i32>(0i, -1i), vec2<i32>(-16083i, 4176i)), vec2<bool>(true, true), -abs(vec4<i32>(46395i, -43462i, -2147483647i, 1i))), Struct_3(~(~vec3<u32>(u_input.b.x, u_input.b.x, 0u)), Struct_2(u_input.a, reverseBits(vec2<i32>(-18987i, -2147483647i)), vec2<bool>(true, false), vec4<i32>(1i, -2147483647i, -2147483647i, 20169i)), Struct_2(~u_input.b.x, -vec2<i32>(-1i, 1i), vec2<bool>(true, true), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 0i, 10285i, -1i), vec4<i32>(-2147483647i, 16799i, -2147483647i, 16651i))), Struct_1(u_input.b.x, i32(-1i) * -3786i, _wgslsmith_mod_vec2_i32(vec2<i32>(-10751i, -2147483647i), vec2<i32>(9558i, 2147483647i))))), Struct_2(func_4(Struct_2(~u_input.b.x, max(vec2<i32>(2147483647i, 1i), vec2<i32>(13414i, 0i)), select(vec2<bool>(false, true), vec2<bool>(true, false), true), ~vec4<i32>(-54944i, -1i, 9235i, -2147483647i)), Struct_3(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.a, u_input.b.x)), Struct_2(u_input.a, vec2<i32>(-1i, 0i), vec2<bool>(false, false), vec4<i32>(-1i, -2147483647i, 37941i, -2147483647i)), Struct_2(u_input.a, vec2<i32>(1i, 85383i), vec2<bool>(false, false), vec4<i32>(-1i, -27722i, 5905i, 2147483647i)), Struct_1(0u, -11857i, vec2<i32>(47600i, 29527i)))).x, abs(vec2<i32>(-44674i, _wgslsmith_sub_i32(-9774i, -2147483647i))), vec2<bool>(true, true), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(31971i, -1i, 30087i, -20543i), select(vec4<i32>(2147483647i, 2147483647i, -41395i, -17163i), vec4<i32>(14837i, 2147483647i, -1i, -320i), false)))), Struct_2(u_input.b.x, _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 0i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 42362i), vec2<i32>(-1i, -54771i), ~vec2<i32>(15108i, -47629i))), select(vec2<bool>(all(vec3<bool>(false, true, true)), any(vec2<bool>(true, true))), vec2<bool>(true, true), any(vec2<bool>(true, true))), vec4<i32>(_wgslsmith_add_i32(-34650i, 1i), ~(-14749i) & select(-32312i, 19238i, true), _wgslsmith_mult_i32(-1i >> (0u % 32u), i32(-1i) * -61240i), select(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -16571i, -1i, -10613i), vec4<i32>(-33871i, 33709i, -616i, 41665i)), max(9658i, -48698i), true))), Struct_1(u_input.a, _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 1i), firstLeadingBit(~vec2<i32>(-1i, 36205i))), vec2<i32>(1i, 1i) >> (u_input.b % vec2<u32>(32u))));
    var var_1 = select(_wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 25764i), _wgslsmith_clamp_vec2_i32(var_0.d.c, vec2<i32>(1i, 0i), vec2<i32>(var_0.b.b.x, -4761i)))) >> (~u_input.b.x % 32u), -1i, !(!(!var_0.c.c.x)) || false);
    var_1 = max(2147483647i, 21497i & (var_0.b.b.x & var_0.b.d.x));
    return ~vec3<u32>(_wgslsmith_add_u32(~22923u, 1u), ~var_0.a.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b.x, 4294967295u), max(u_input.a, 1u)), u_input.b.x));
}

fn func_1() -> Struct_1 {
    var var_0 = abs(~min(reverseBits(vec3<u32>(4294967295u, 45592u, u_input.b.x)), countOneBits(vec3<u32>(u_input.b.x, u_input.a, 20289u))) | ~func_2());
    return Struct_1(~(~(~_wgslsmith_mult_u32(var_0.x, u_input.a))), 62247i, select(select(~vec2<i32>(13799i, 0i), countOneBits(vec2<i32>(37028i, -5765i)), select(vec2<bool>(true, true), vec2<bool>(false, false), true)) & -vec2<i32>(1i, 9688i), vec2<i32>(~(i32(-1i) * -7354i), ~1i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, 31474i, -1i), vec4<i32>(2147483647i, 2147483647i, 0i, 0i)) <= _wgslsmith_div_i32(_wgslsmith_sub_i32(-2147483647i, -1i), -10563i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_1(4294967295u, 0i, _wgslsmith_add_vec2_i32(var_0.c << (~func_4(Struct_2(u_input.b.x, vec2<i32>(var_0.c.x, -3594i), vec2<bool>(false, true), vec4<i32>(var_0.c.x, -13558i, 0i, 60286i)), Struct_3(vec3<u32>(4294967295u, 44108u, u_input.b.x), Struct_2(0u, var_0.c, vec2<bool>(false, true), vec4<i32>(var_0.c.x, 2147483647i, 2147483647i, var_0.b)), Struct_2(4294967295u, vec2<i32>(-2147483647i, var_0.b), vec2<bool>(true, true), vec4<i32>(var_0.c.x, var_0.c.x, var_0.c.x, -35096i)), Struct_1(4294967295u, var_0.c.x, var_0.c))).yx % vec2<u32>(32u)), -var_0.c));
    var var_1 = func_1();
    let var_2 = ~_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(max(-2147483647i, var_1.b), -18161i), abs(var_1.c) & _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, var_1.c.x), vec2<i32>(var_1.c.x, 2147483647i), vec2<i32>(var_0.c.x, var_1.b)), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, var_0.c.x) ^ vec2<i32>(2147483647i, var_0.b), var_1.c | vec2<i32>(var_1.c.x, var_0.b))), ~var_0.c);
    var var_3 = Struct_3(~(min(select(vec3<u32>(var_1.a, var_0.a, 4612u), vec3<u32>(5725u, 17410u, 19397u), false), vec3<u32>(var_0.a, 38805u, 4294967295u)) & (~vec3<u32>(61u, u_input.a, var_0.a) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, var_1.a, u_input.b.x), vec3<u32>(9190u, 27831u, 119783u), vec3<u32>(var_1.a, var_0.a, 62434u)) % vec3<u32>(32u)))), Struct_2(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, 1u, var_1.a)), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.a, var_0.a, 66586u), vec3<u32>(21255u, 0u, 0u)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 338u, var_0.a), vec3<u32>(var_1.a, 1u, 0u)))), vec2<i32>(var_0.b << (u_input.b.x % 32u), var_1.b) | firstLeadingBit(vec2<i32>(var_0.b, var_0.c.x)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(any(vec4<bool>(true, true, false, false)), var_0.b <= var_0.b, true)), abs(-vec4<i32>(var_0.c.x, -20416i, 30281i, 0i) << (_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a, u_input.a, var_1.a, var_0.a), vec4<u32>(var_1.a, var_0.a, 0u, 4460u)) % vec4<u32>(32u)))), Struct_2(_wgslsmith_mod_u32(_wgslsmith_add_u32(1u, var_0.a), _wgslsmith_mult_u32(1u | u_input.b.x, ~4294967295u)), firstLeadingBit(-var_0.c), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), true), reverseBits(-vec4<i32>(2147483647i, -2147483647i, -9556i, var_1.c.x))), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(~29950u, _wgslsmith_sub_vec2_u32(u_input.b, abs(vec2<u32>(var_3.a.x, var_3.a.x) ^ u_input.b)), -var_3.b.d, -var_0.c.x);
}

