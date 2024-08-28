struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = Struct_2(-1979i, _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, ~(-2147483647i), -1i), vec3<i32>(1i, 1i, 1i)), all(select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), arg_1.b.x == 4294967295u), vec3<bool>(true, true, true), true)));
    let var_1 = arg_0;
    let var_2 = Struct_2(min(var_0.a, 3183i), vec3<i32>(_wgslsmith_sub_i32(countOneBits(var_0.a), -select(2147483647i, var_0.b.x, var_0.c)), _wgslsmith_sub_i32(var_0.b.x, _wgslsmith_mod_i32(-2147483647i, var_0.a)), var_0.b.x), true);
    var_0 = var_2;
    let var_3 = Struct_2(var_2.b.x, var_2.b & (abs(_wgslsmith_sub_vec3_i32(var_2.b, vec3<i32>(var_2.b.x, 45205i, 2147483647i))) << (~abs(vec3<u32>(arg_0.b.x, arg_1.b.x, 4294967295u)) % vec3<u32>(32u))), any(vec4<bool>(-846f >= _wgslsmith_f_op_f32(floor(1994f)), any(select(vec4<bool>(true, false, false, false), vec4<bool>(var_2.c, false, false, var_2.c), var_2.c)), all(vec4<bool>(var_2.c, var_2.c, false, true)) && false, false)));
    return _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(select(vec4<i32>(2669i, var_0.b.x, var_2.b.x, -2147483647i), vec4<i32>(-1i, var_0.a, var_2.b.x, 1i), true), vec4<i32>(var_0.b.x, 1i, -1i, var_3.b.x) << (vec4<u32>(var_1.b.x, 34660u, 4294967295u, 1u) % vec4<u32>(32u))) >> (vec4<u32>(u_input.b, ~arg_1.b.x, abs(45432u), arg_0.b.x) % vec4<u32>(32u)), -abs(reverseBits(vec4<i32>(0i, var_3.a, 1i, -1i)))) ^ -select(abs(select(vec4<i32>(0i, 1i, -782i, 1i), vec4<i32>(15367i, var_0.b.x, var_2.a, 0i), vec4<bool>(var_0.c, var_2.c, var_0.c, var_2.c))), vec4<i32>(_wgslsmith_clamp_i32(var_0.a, var_2.b.x, var_3.b.x), i32(-1i) * -6479i, var_2.b.x >> (var_1.b.x % 32u), -55270i | var_0.b.x), all(vec3<bool>(false, var_0.c, false)) || var_3.c);
}

fn func_2() -> Struct_2 {
    let var_0 = ~(~4294967295u);
    let var_1 = -func_3(Struct_1(-1022f, select(vec3<u32>(0u, u_input.b, 4294967295u), vec3<u32>(0u, u_input.a, 4294967295u), true) << (vec3<u32>(1u, var_0, 38963u) % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(265f - -168f), min(firstLeadingBit(vec3<u32>(4294967295u, 2045u, 38716u)), vec3<u32>(var_0, var_0, 0u) | vec3<u32>(67160u, u_input.a, 1u))));
    var var_2 = ~_wgslsmith_mult_i32(13723i, _wgslsmith_clamp_i32(-var_1.x, var_1.x, -2147483647i));
    var_2 = min(-13776i, ~_wgslsmith_dot_vec4_i32(-abs(var_1), abs(~var_1)));
    var var_3 = Struct_2(var_1.x, var_1.yyy, var_1.x != ~(var_1.x << (var_0 % 32u)));
    return Struct_2(-_wgslsmith_sub_i32(0i, reverseBits(var_1.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_3.b.x, 1i, -57290i) & vec3<i32>(var_1.x, min(-1i, var_1.x), _wgslsmith_mult_i32(var_1.x, var_3.b.x)), var_3.b), true);
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    let var_1 = var_0.c;
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(546f, _wgslsmith_f_op_f32(f32(-1f) * -952f)), 1003f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1242f * _wgslsmith_f_op_f32(1111f - -812f))), 146f) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(2109f, -1000f, -1000f, 1045f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(745f, -711f, 1814f, 621f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-967f, -539f, 946f, -1048f) + vec4<f32>(182f, -1681f, -436f, -1780f))))))));
    var var_3 = !vec3<bool>(!any(vec4<bool>(var_0.c, var_1, false, true)) | false, _wgslsmith_f_op_f32(f32(-1f) * -1000f) > var_2.x, var_0.c);
    var_3 = select(!vec3<bool>(var_3.x, true, var_3.x), !select(vec3<bool>(true, select(false, true, true), var_0.c), !select(vec3<bool>(false, var_1, true), vec3<bool>(var_1, var_1, false), false), false), vec3<bool>(var_0.c, !((4405i != var_0.b.x) == false), all(vec4<bool>(true, u_input.b >= u_input.b, var_3.x && false, var_2.x >= var_2.x))));
    return Struct_1(-1194f, vec3<u32>(_wgslsmith_div_u32(countOneBits(firstTrailingBit(0u)), select(~28541u, 1u, var_3.x && var_0.c)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(20094u, u_input.a, u_input.a, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 1994u), vec4<u32>(u_input.a, u_input.b, 4294967295u, u_input.b))), ~vec4<u32>(u_input.a, 1u, u_input.b, 99649u)), 45211u));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_mult_i32(-func_2().b.x, 2351i), firstTrailingBit(max(func_3(arg_0, func_1()).zxx, firstTrailingBit(vec3<i32>(2147483647i, -48967i, -28166i) << (vec3<u32>(9790u, u_input.a, arg_0.b.x) % vec3<u32>(32u))))), !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))));
    let var_1 = max(4294967295u, u_input.b);
    let var_2 = select(!select(vec3<bool>(all(vec3<bool>(var_0.c, false, false)), var_0.c | var_0.c, var_0.c), select(vec3<bool>(var_0.c, var_0.c, true), select(vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(var_0.c, var_0.c, false), false), true), true), select(vec3<bool>(any(select(vec4<bool>(false, var_0.c, var_0.c, false), vec4<bool>(true, false, var_0.c, var_0.c), var_0.c)), (var_0.c | false) || (arg_0.a != arg_0.a), true), select(vec3<bool>(all(vec4<bool>(false, false, true, false)), all(vec4<bool>(true, true, var_0.c, false)), false), select(select(vec3<bool>(false, true, var_0.c), vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(var_0.c, true, var_0.c)), !vec3<bool>(false, var_0.c, var_0.c), !vec3<bool>(var_0.c, true, var_0.c)), select(select(vec3<bool>(true, false, var_0.c), vec3<bool>(var_0.c, true, var_0.c), true), !vec3<bool>(var_0.c, true, false), true)), var_0.c), select(select(!select(vec3<bool>(var_0.c, true, true), vec3<bool>(var_0.c, false, var_0.c), vec3<bool>(var_0.c, var_0.c, var_0.c)), !vec3<bool>(false, var_0.c, false), func_2().c && !var_0.c), vec3<bool>(any(!vec4<bool>(var_0.c, var_0.c, false, var_0.c)), false, var_0.c), any(vec2<bool>(var_0.c, !var_0.c))));
    var var_3 = var_0.b;
    var var_4 = func_2();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1());
    let var_1 = var_0;
    var var_2 = firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(~(-14376i << (u_input.b % 32u)), ~1i, ~(-28723i), 1i), (min(vec4<i32>(0i, 2147483647i, -41582i, -1i), vec4<i32>(29234i, 5082i, 2147483647i, -116542i)) >> (vec4<u32>(4294967295u, var_0.b.x, var_1.b.x, u_input.b) % vec4<u32>(32u))) << (min(vec4<u32>(var_1.b.x, 0u, u_input.b, 14974u), ~vec4<u32>(60783u, var_0.b.x, var_0.b.x, 45821u)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-17496i, 0i, -25103i, 0i)), ~(~(-1i)), -1i, abs(~15484i))));
    var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(reverseBits(countOneBits(-17226i)), 42366i, countOneBits(~_wgslsmith_add_i32(var_2.x, -2147483647i)), -23359i), vec4<i32>(var_2.x, -_wgslsmith_div_i32(var_2.x | -1i, -2147483647i), _wgslsmith_clamp_i32(~(-var_2.x), var_2.x, var_2.x), -abs(58455i)));
    let var_3 = var_0.a;
    var_2 = _wgslsmith_clamp_vec4_i32(abs(select(vec4<i32>(var_2.x, var_2.x, i32(-1i) * -384i, countOneBits(var_2.x)), ~(~vec4<i32>(var_2.x, var_2.x, var_2.x, 31350i)), vec4<bool>(true, var_2.x != var_2.x, true, func_2().c))), ~abs(vec4<i32>(func_3(var_1, Struct_1(1945f, var_1.b)).x, func_3(Struct_1(161f, vec3<u32>(10922u, 55472u, 25512u)), Struct_1(var_3, var_1.b)).x, 1i, 2147483647i)), min(vec4<i32>(i32(-1i) * -var_2.x, var_2.x, _wgslsmith_mult_i32(6858i, 0i) << (var_0.b.x % 32u), i32(-1i) * -19425i), firstLeadingBit(~vec4<i32>(var_2.x, var_2.x, -61121i, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, var_1.b.zz, _wgslsmith_sub_u32(~max(firstLeadingBit(32029u), var_0.b.x), _wgslsmith_dot_vec2_u32(firstLeadingBit(~var_1.b.xy), _wgslsmith_div_vec2_u32(~var_1.b.zy, vec2<u32>(var_0.b.x, 1517u)))));
}

