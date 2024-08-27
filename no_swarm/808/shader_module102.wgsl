struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    let var_0 = Struct_1(arg_0);
    return firstTrailingBit(1u);
}

fn func_3() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -763f)))));
    var var_1 = false;
    var_1 = -12017i <= firstTrailingBit(63228i);
    let var_2 = all(select(vec4<bool>(all(vec2<bool>(false, true)) || false, true, any(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), any(vec2<bool>(true, true))), select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), true), all(vec2<bool>(true, true)))), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false)), true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)), true)));
    var_0 = 202f;
    return vec2<u32>(firstLeadingBit(74361u), 1u);
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    let var_0 = Struct_1(~(~(-_wgslsmith_add_vec4_i32(vec4<i32>(10361i, u_input.a, -2147483647i, -32910i), vec4<i32>(-21933i, -37781i, u_input.a, 37758i)))));
    var var_1 = countOneBits(~(vec2<u32>(func_2(var_0.a), ~1u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    var_1 = func_3();
    var var_2 = select(max(~(~(vec3<u32>(var_1.x, 56092u, var_1.x) ^ vec3<u32>(var_1.x, var_1.x, 0u))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_1.x, 4294967295u, 30109u), vec3<u32>(~var_1.x, ~var_1.x, _wgslsmith_div_u32(var_1.x, 9375u)), vec3<u32>(4294967295u, ~var_1.x, ~var_1.x))), _wgslsmith_mod_vec3_u32(firstTrailingBit(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_1.x, 11290u), vec3<u32>(var_1.x, 1u, var_1.x))), _wgslsmith_mult_vec3_u32(vec3<u32>(6763u, var_1.x, 89072u) & select(vec3<u32>(var_1.x, var_1.x, var_1.x), vec3<u32>(8609u, var_1.x, 4294967295u), vec3<bool>(true, false, true)), ~vec3<u32>(0u, var_1.x, var_1.x))), select(vec3<bool>(true, true, true), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)), select(vec3<bool>(any(vec3<bool>(true, false, false)), true, true), vec3<bool>(false, true, u_input.a == u_input.a), true)));
    var_2 = vec3<u32>(~min(~33107u, ~1u) << (var_1.x % 32u), 4294967295u, 13222u);
    return _wgslsmith_clamp_i32(-(~_wgslsmith_clamp_i32(-var_0.a.x, max(u_input.a, 40624i), u_input.a ^ var_0.a.x)), u_input.a, i32(-1i) * -(~max(-1i, 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(~(-(~vec3<i32>(-2147483647i, -22098i, u_input.a))), vec3<i32>(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(903f, 953f, 1740f, 1474f) - vec4<f32>(-378f, 1000f, -732f, -803f))), u_input.a, 2947i)), _wgslsmith_add_vec3_i32(-countOneBits(vec3<i32>(2147483647i, -17140i, 2147483647i)), ~(-vec3<i32>(u_input.a, u_input.a, u_input.a))) ^ vec3<i32>(_wgslsmith_div_i32(-27443i, u_input.a), firstLeadingBit(_wgslsmith_mult_i32(u_input.a, -1i)), u_input.a));
    var var_1 = Struct_1((min(-vec4<i32>(0i, 5740i, var_0.x, -2147483647i), vec4<i32>(var_0.x, u_input.a, u_input.a, u_input.a) << (vec4<u32>(8248u, 30747u, 14090u, 5674u) % vec4<u32>(32u))) << (~(~vec4<u32>(1u, 12099u, 1u, 34830u)) % vec4<u32>(32u))) ^ vec4<i32>(max(u_input.a, 22318i), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -706f, -1445f, 1297f))), firstLeadingBit(var_0.x), 1i));
    var var_2 = vec3<u32>(~_wgslsmith_sub_u32(reverseBits(2202u), ~4294967295u), ~reverseBits(_wgslsmith_sub_u32(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(95685u, 0u), vec2<u32>(9076u, 1u)))), _wgslsmith_dot_vec2_u32(max(vec2<u32>(1u, 1u), ~vec2<u32>(4294967295u, 0u)), countOneBits(vec2<u32>(25401u, 104350u))) ^ 4294967295u);
    let var_3 = select(!vec2<bool>(true, any(vec4<bool>(false, true, false, true))), select(vec2<bool>(true, all(vec4<bool>(true, true, true, true))), vec2<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), select(true, false, true) || true), any(vec2<bool>(true, true))), !select(vec2<bool>(false, false), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), any(vec2<bool>(true, true))));
    var_1 = Struct_1(abs(vec4<i32>(-abs(var_0.x), var_1.a.x, 17232i, _wgslsmith_clamp_i32(max(26614i, -1i), _wgslsmith_sub_i32(-1i, 13154i), -u_input.a))));
    var_2 = firstLeadingBit((~_wgslsmith_clamp_vec3_u32(vec3<u32>(63150u, var_2.x, 4294967295u), vec3<u32>(var_2.x, 1u, 1u), vec3<u32>(4294967295u, 0u, var_2.x)) & max(~vec3<u32>(59251u, 57753u, var_2.x), vec3<u32>(var_2.x, var_2.x, 6440u))) | select(vec3<u32>(~70299u, 4294967295u, abs(0u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(18250u, var_2.x, 4294967295u), vec3<u32>(var_2.x, var_2.x, 0u)), vec3<bool>(all(vec2<bool>(true, true)), true, var_3.x)));
    var var_4 = var_2.zy;
    var_1 = Struct_1(min(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_1.a.x, var_1.a.x, var_0.x, 0i)), var_1.a ^ vec4<i32>(1i, -24830i, 1i, var_1.a.x), _wgslsmith_mult_vec4_i32(var_1.a, var_1.a)) & max(var_1.a, var_1.a), -(vec4<i32>(var_0.x, 44676i, u_input.a, -16489i) & abs(vec4<i32>(-2147483647i, u_input.a, var_0.x, var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(max(-var_0, var_0));
}

