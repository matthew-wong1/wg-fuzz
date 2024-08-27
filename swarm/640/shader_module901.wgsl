struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec2<i32> {
    var var_0 = all(vec3<bool>(false, true, any(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)))));
    var_0 = all(vec4<bool>(true, all(vec2<bool>(true, u_input.a <= u_input.a)), select(any(vec2<bool>(true, true)), !all(vec3<bool>(true, false, true)), true), true));
    var var_1 = 26207i;
    let var_2 = -(countOneBits(select(vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 19971i), vec3<bool>(true, false, false))) | -vec3<i32>(countOneBits(0i), max(-11013i, -23764i), -45723i));
    var var_3 = false;
    return _wgslsmith_sub_vec2_i32(vec2<i32>(-16459i, _wgslsmith_add_i32(~_wgslsmith_mult_i32(-47995i, var_2.x), countOneBits(u_input.a))), ~vec2<i32>(_wgslsmith_mod_i32(0i, u_input.a), countOneBits(u_input.a)) | ~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 1i) >> (vec2<u32>(33654u, 68487u) % vec2<u32>(32u)), var_2.yz));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> bool {
    let var_0 = vec3<i32>(firstTrailingBit(1i << (1u % 32u)), arg_2.a.a, _wgslsmith_dot_vec2_i32(-(max(vec2<i32>(u_input.a, arg_2.a.a), vec2<i32>(-2147483647i, 47365i)) & func_3()), reverseBits(-abs(vec2<i32>(1i, u_input.a)))));
    let var_1 = _wgslsmith_mod_i32(7685i, countOneBits(_wgslsmith_clamp_i32(firstTrailingBit(1i), ~(-1i), abs(arg_2.a.d))));
    return false;
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec4<f32>) -> vec2<bool> {
    let var_0 = arg_3.zx;
    let var_1 = -u_input.a;
    let var_2 = all(select(!vec4<bool>(true, false || arg_1.x, !arg_1.x, arg_1.x & false), vec4<bool>(func_2(vec3<u32>(arg_2.c, arg_2.c, 65062u), true, Struct_2(Struct_1(var_1, vec3<bool>(arg_1.x, arg_1.x, true), arg_2.c, -2147483647i)), -5389i) | (arg_1.x != arg_1.x), true & select(true, arg_1.x, arg_1.x), arg_1.x, !(u_input.a < u_input.a)), true));
    var var_3 = Struct_3(Struct_2(Struct_1(-1i, select(arg_2.b, select(arg_2.b, vec3<bool>(false, arg_1.x, var_2), arg_1.x), vec3<bool>(true, false, true)), arg_2.c | _wgslsmith_clamp_u32(1u, 0u, 70336u), u_input.a << (arg_2.c % 32u))));
    let var_4 = var_3.a;
    return !(!select(!(!vec2<bool>(arg_2.b.x, false)), select(var_3.a.a.b.zy, vec2<bool>(false, false), select(arg_1, vec2<bool>(false, var_2), true)), !var_4.a.b.zy));
}

fn func_4(arg_0: vec3<bool>, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(arg_1, arg_0, ~(~(64758u >> (1u % 32u))), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), max(vec2<i32>(arg_1, -2147483647i), vec2<i32>(arg_1, -1i))))));
    var var_1 = -vec3<i32>(var_0.a.d, ~(_wgslsmith_sub_i32(-9686i, arg_1) << (_wgslsmith_mod_u32(var_0.a.c, 19531u) % 32u)), _wgslsmith_clamp_i32(~21551i, 1i, arg_1));
    var_1 = countOneBits(min(vec3<i32>(abs(2147483647i), arg_1, ~countOneBits(arg_1)), vec3<i32>(~abs(u_input.a), ~var_1.x, 2147483647i)));
    var var_2 = 4294967295u;
    var var_3 = -(max(-u_input.a, var_0.a.a) >> (var_0.a.c % 32u)) | -1i;
    return Struct_1(1i, !select(select(!vec3<bool>(true, false, arg_0.x), var_0.a.b, vec3<bool>(false, false, false)), vec3<bool>(true, var_0.a.b.x, all(vec4<bool>(arg_0.x, false, var_0.a.b.x, false))), true), ~24566u, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(vec3<bool>(any(func_1(624f, vec2<bool>(false, true), Struct_1(u_input.a, vec3<bool>(false, false, false), 4294967295u, 18106i), vec4<f32>(814f, 615f, -2720f, -1076f))), all(vec4<bool>(true, false, true, true)), !func_1(-1079f, vec2<bool>(false, false), Struct_1(-1i, vec3<bool>(false, false, false), 4867u, -1i), vec4<f32>(368f, 2269f, 821f, -737f)).x), vec3<bool>(all(vec4<bool>(true, true, true, true)), func_2(~vec3<u32>(22416u, 1374u, 64880u), true, Struct_2(Struct_1(u_input.a, vec3<bool>(false, true, true), 1u, u_input.a)), -17335i), abs(u_input.a) == _wgslsmith_mod_i32(u_input.a, u_input.a)), func_2(vec3<u32>(1u, 1u, 1u), true, Struct_2(Struct_1(u_input.a, vec3<bool>(false, false, true), 16298u, 2147483647i)), -3273i)), -2899i);
    let var_1 = 599f;
    var var_2 = Struct_2(func_4(vec3<bool>(true, !all(var_0.b), false), -var_0.a));
    let var_3 = func_4(vec3<bool>(false, var_0.b.x, true), firstTrailingBit(abs(~(-16167i))));
    var_2 = Struct_2(var_2.a);
    var_2 = Struct_2(var_2.a);
    let var_4 = var_0.b.zy;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec3_u32(vec3<u32>(~95350u, var_3.c, var_0.c), ~vec3<u32>(2203u, 1u, 4294967295u), ~vec3<u32>(var_3.c, var_2.a.c, 29919u)), ~(~(vec3<u32>(var_0.c, 4294967295u, 95486u) | vec3<u32>(59855u, 31238u, var_0.c)) << (_wgslsmith_div_vec3_u32(vec3<u32>(53153u, 4294967295u, var_0.c), ~vec3<u32>(var_2.a.c, 8892u, 23032u)) % vec3<u32>(32u))), firstTrailingBit(reverseBits(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -23844i, -3614i, 32323i), vec4<i32>(var_2.a.d, 22211i, 6505i, var_0.d))))), ~var_2.a.c ^ 42482u);
}

