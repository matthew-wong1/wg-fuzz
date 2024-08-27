struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<i32>(u_input.a.x, 15121i, -39562i);
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_0, _wgslsmith_mod_vec3_i32(vec3<i32>(33954i, -4897i, 10650i), _wgslsmith_sub_vec3_i32(var_0, vec3<i32>(2147483647i, -1i, var_0.x)))) << (vec3<u32>(4294967295u, 65u, 0u) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(-var_0, _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-69970i, u_input.a.x, -2147483647i, u_input.a.x), vec4<i32>(var_0.x, -2147483647i, 28180i, var_0.x)), 0i ^ u_input.a.x, _wgslsmith_add_i32(14160i, u_input.a.x)), countOneBits(var_0))));
    var_1 = -12106i;
    let var_2 = Struct_1(_wgslsmith_add_u32(reverseBits(4294967295u), ~7926u >> (~firstTrailingBit(1u) % 32u)), 23503u);
    let var_3 = Struct_2(Struct_1(~1u, 56942u));
    return Struct_1(var_2.b, 4294967295u);
}

fn func_3(arg_0: vec4<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(552f, arg_0.x, arg_0.x, arg_0.x))))));
    var var_1 = 1u;
    var var_2 = Struct_1(~1u, _wgslsmith_add_u32(1u, ~(~1u)));
    let var_3 = -_wgslsmith_mod_vec2_i32(countOneBits(u_input.a), -firstTrailingBit(firstTrailingBit(u_input.a)));
    let var_4 = _wgslsmith_clamp_i32(~reverseBits(_wgslsmith_dot_vec2_i32(~var_3, var_3 | vec2<i32>(-10377i, 0i))), -_wgslsmith_clamp_i32(~u_input.a.x, var_3.x, -u_input.a.x) ^ _wgslsmith_div_i32(u_input.a.x, -74078i), ~(~var_3.x));
    return _wgslsmith_sub_u32(var_2.b, min(_wgslsmith_sub_u32(var_2.a, var_2.b), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_2.b), vec2<u32>(var_2.b, var_2.a))) & var_2.a) < 1u;
}

fn func_1() -> vec3<i32> {
    let var_0 = Struct_2(func_2());
    var var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_div_i32(u_input.a.x, -_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 29616i)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(-2147483647i, -20824i, u_input.a.x), vec3<i32>(u_input.a.x, -2147483647i, 0i), vec3<bool>(false, true, false)), -vec3<i32>(u_input.a.x, u_input.a.x, 0i)) >> (~var_0.a.a % 32u), _wgslsmith_mod_i32(u_input.a.x, -57289i)), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) | vec3<i32>(u_input.a.x, 41477i, 13170i), -_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 1i, -2147483647i), vec3<i32>(-2147483647i, 60861i, u_input.a.x))), _wgslsmith_sub_vec3_i32(firstLeadingBit(abs(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i))), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -29489i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(-2147483647i, 0i, u_input.a.x)))));
    let var_2 = vec4<bool>(true, false, all(vec2<bool>(true, true)) & false, func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(163f, 607f, -276f, 557f), vec4<f32>(-633f, -169f, 211f, 437f))))) || !any(vec3<bool>(true, true, false)));
    let var_3 = false;
    var var_4 = var_0.a;
    return _wgslsmith_sub_vec3_i32(vec3<i32>(select(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 2147483647i), firstTrailingBit(1i)), var_1.x << (_wgslsmith_clamp_u32(var_4.b, 0u, 4294967295u) % 32u), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1300f, -1125f, -1546f) * vec4<f32>(-667f, -557f, -1000f, -611f)))), abs(u_input.a.x), ~(-var_1.x)), countOneBits(_wgslsmith_mod_vec3_i32(countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -1i, u_input.a.x), vec3<i32>(var_1.x, var_1.x, u_input.a.x), vec3<i32>(var_1.x, 7543i, var_1.x))), ~min(vec3<i32>(-11525i, var_1.x, 57322i), vec3<i32>(u_input.a.x, u_input.a.x, -916i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(~1u, 0u);
    var var_1 = _wgslsmith_mult_vec3_i32(-vec3<i32>(~598i, abs(u_input.a.x), -1i), abs(func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.a.x, 0i >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0, var_0, var_0), max(vec3<u32>(45638u, var_0, var_0), vec3<u32>(var_0, var_0, var_0))) % 32u)), firstTrailingBit(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, 1i), firstLeadingBit(13648i), u_input.a.x)), -abs(var_1.xz));
}

