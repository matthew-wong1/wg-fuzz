struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, -18207i, -27500i, 56397i);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec4<i32>, arg_3: u32) -> vec4<i32> {
    return arg_2;
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> vec4<i32> {
    global0 = vec4<i32>(2147483647i, ~u_input.d.x, -55618i, u_input.d.x);
    return func_2(arg_0, 1u, -vec4<i32>(global0.x << (~u_input.a % 32u), firstTrailingBit(~global0.x), ~max(global0.x, 51869i), 1i), arg_0.b.c.x);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(~1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.c.x, 0u, arg_0.a.x), vec3<u32>(arg_1.b.a.x, arg_1.b.c.x, arg_1.a.x)), arg_1.a.x ^ ~arg_0.a.x, 1u, _wgslsmith_mod_u32(0u, ~1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, arg_1.c.a.x, arg_0.c.x, 11534u), arg_0.a), 1u, ~1u, firstLeadingBit(arg_1.c.c.x)), min(reverseBits(vec4<u32>(4294967295u, 30746u, u_input.a, 1u)), abs(vec4<u32>(arg_1.c.a.x, u_input.b, arg_1.c.c.x, 3674u))), vec4<u32>(~64241u, ~arg_0.c.x, _wgslsmith_mod_u32(44442u, 34189u), _wgslsmith_add_u32(0u, 28294u)))), 249f, arg_0.a.xwy);
    var var_1 = Struct_2(var_0.c.zy, arg_0, arg_0);
    global0 = vec4<i32>(_wgslsmith_mod_i32((firstLeadingBit(global0.x) >> ((4294967295u ^ arg_0.c.x) % 32u)) | -19881i, ~(~(-23976i) | _wgslsmith_add_i32(u_input.d.x, 1i))), -240i, func_2(arg_1, 4294967295u, func_1(arg_1, ~firstTrailingBit(arg_0.a.x)), _wgslsmith_sub_u32(abs(~26580u), _wgslsmith_dot_vec3_u32(arg_1.c.c, vec3<u32>(var_0.c.x, var_1.c.c.x, 0u)) << (reverseBits(arg_0.a.x) % 32u))).x, global0.x);
    let var_2 = countOneBits(u_input.a << (min(~(~arg_0.c.x), _wgslsmith_add_u32(var_0.c.x, arg_0.a.x) ^ 28235u) % 32u));
    var_1 = Struct_2(_wgslsmith_mod_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(~var_0.a.xz, countOneBits(vec2<u32>(u_input.b, 4294967295u)))), _wgslsmith_add_vec2_u32(~vec2<u32>(arg_1.a.x, var_1.b.c.x) >> (vec2<u32>(21583u, u_input.b) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(select(arg_0.a.yz, vec2<u32>(var_0.c.x, 4294967295u), vec2<bool>(false, true)), firstTrailingBit(vec2<u32>(60880u, 1u))))), Struct_1(~firstLeadingBit(arg_0.a), 1106f, ~var_0.c), var_1.c);
    return ~17857u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(func_1(Struct_2(_wgslsmith_mod_vec2_u32(u_input.c.zy, reverseBits(vec2<u32>(u_input.a, 0u))), Struct_1(countOneBits(vec4<u32>(28535u, u_input.c.x, u_input.c.x, 49088u)), _wgslsmith_f_op_f32(1000f * -2745f), _wgslsmith_clamp_vec3_u32(u_input.c, u_input.c, vec3<u32>(33739u, u_input.c.x, u_input.a))), Struct_1(max(vec4<u32>(30015u, 42491u, u_input.a, 1u), vec4<u32>(u_input.a, 39975u, u_input.b, 4294967295u)), _wgslsmith_f_op_f32(step(973f, -404f)), u_input.c >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)))), firstTrailingBit(u_input.c.x)));
    let var_0 = vec3<i32>(-1i) * -(~(~firstTrailingBit(vec3<i32>(10990i, u_input.d.x, -1i))));
    let var_1 = var_0.x;
    let var_2 = Struct_2(vec2<u32>(~4294967295u << (u_input.c.x % 32u), ~_wgslsmith_div_u32(0u, ~u_input.a)), Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(~u_input.c.xz, u_input.c.yz), 52526u, countOneBits(max(u_input.b, 4294967295u)), ~(~0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-311f)) * -337f)), vec3<u32>(func_3(Struct_1(vec4<u32>(u_input.a, u_input.c.x, u_input.c.x, 1u), 852f, vec3<u32>(6970u, 0u, 72611u)), Struct_2(u_input.c.yy, Struct_1(vec4<u32>(38628u, 1u, 6564u, 41675u), 1000f, vec3<u32>(1u, 49051u, 0u)), Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.c.x), -1000f, vec3<u32>(4294967295u, u_input.a, u_input.b)))), ~4294967295u, _wgslsmith_sub_u32(u_input.c.x, 22742u)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.a, 0u), vec3<u32>(0u, 0u, u_input.a)) % vec3<u32>(32u))), Struct_1(countOneBits(~vec4<u32>(u_input.a, 39832u, u_input.c.x, u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1347f)))), u_input.c));
    global0 = _wgslsmith_div_vec4_i32(reverseBits(max(max(vec4<i32>(-55700i, -23060i, 19151i, 0i), vec4<i32>(var_1, var_1, u_input.d.x, 41108i)), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, var_1)) ^ (_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, 2147483647i, u_input.d.x, var_0.x), vec4<i32>(global0.x, -1i, var_0.x, global0.x)) & vec4<i32>(-1i, -1i, 3620i, var_0.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, _wgslsmith_mult_i32(~(-2147483647i), ~global0.x), _wgslsmith_add_i32(var_1, -global0.x), -global0.x), vec4<i32>(var_1, ~(~u_input.d.x), ~(-u_input.d.x), -2147483647i)));
    let var_3 = select(var_0, global0.yzz, !all(vec4<bool>(true, true, true, true)));
    let var_4 = u_input.d.x;
    let var_5 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, vec2<i32>((-4610i & u_input.d.x) ^ (i32(-1i) * -29651i), var_1) | var_3.yx, u_input.c);
}

