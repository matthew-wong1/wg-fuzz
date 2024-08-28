struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

var<private> global1: vec3<f32> = vec3<f32>(462f, 1000f, -325f);

var<private> global2: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    var var_0 = Struct_3(Struct_1(firstTrailingBit(-5359i), ~(~vec2<u32>(8934u, 1u)), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(100f))), any(vec2<bool>(true, true))), 4294967295u, Struct_2(firstLeadingBit(countOneBits(vec2<u32>(0u, 82995u))), (_wgslsmith_f_op_f32(floor(-231f)) < -2330f) || false));
    global2 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32((_wgslsmith_clamp_u32(~1u, var_0.a.b.x, 36415u) & var_0.b) | 1u, 11u)] * 699f);
    global0 = array<f32, 11>();
    var var_1 = var_0.c.a;
    let var_2 = _wgslsmith_mult_u32(reverseBits(~20828u), 1u) >= (~(~var_0.a.b.x >> (var_1.x % 32u)) & _wgslsmith_clamp_u32((var_0.b << (59426u % 32u)) >> (0u % 32u), ~var_0.b, firstLeadingBit(var_1.x)));
    return _wgslsmith_f_op_f32(step(-440f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + 1496f), 249f)));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> u32 {
    global2 = _wgslsmith_f_op_f32(-global1.x);
    let var_0 = global1.x;
    let var_1 = Struct_3(Struct_1(-u_input.a >> (0u % 32u), arg_0.a, u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1990f, global0[_wgslsmith_index_u32(arg_0.a.x, 11u)], -101f)))))), false), 4294967295u, Struct_2(firstLeadingBit(vec2<u32>(~64052u, 28852u)), arg_0.b));
    let var_2 = Struct_1(countOneBits(1i), ~(~(~arg_0.a)) | vec2<u32>(4294967295u | (arg_0.a.x >> (9754u % 32u)), 17574u), -2147483647i, global1.x, arg_0.b);
    var var_3 = _wgslsmith_div_vec3_i32(vec3<i32>((u_input.a << (var_1.b % 32u)) & u_input.a, var_1.a.c, 1i) | (-(vec3<i32>(var_2.c, var_2.c, u_input.a) ^ vec3<i32>(-1i, -1i, var_2.c)) ^ (vec3<i32>(-30628i, var_1.a.a, 17475i) ^ ~vec3<i32>(1i, u_input.a, -21632i))), vec3<i32>(u_input.a >> (~4294967295u % 32u), -1i, 1i));
    return var_2.b.x;
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, func_2(Struct_2(vec2<u32>(72600u, 13023u), true), 60665u), ~0u), ~select(vec3<u32>(49252u, 48439u, 4294967295u), vec3<u32>(34938u, 1u, 0u), false) & ~select(vec3<u32>(0u, 4294967295u, 14256u), vec3<u32>(0u, 1u, 4294967295u), vec3<bool>(false, true, false))) & vec3<u32>(_wgslsmith_add_u32(reverseBits(select(0u, 1u, true)), 15274u), _wgslsmith_div_u32(1u, reverseBits(countOneBits(58031u))), _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 42461u, 4294967295u), vec3<u32>(1u, 0u, 76438u)), 1u));
    global1 = vec3<f32>(616f, -202f, global1.x);
    let var_1 = max(var_0.xx, ~_wgslsmith_add_vec2_u32(var_0.zy, var_0.zx));
    var var_2 = true;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-356f)) + _wgslsmith_f_op_f32(1000f * 564f)), global0[_wgslsmith_index_u32(max(~var_1.x, var_0.x), 11u)]))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!any(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true)), !func_1());
    let var_1 = ~1u;
    let var_2 = 41215u;
    global0 = array<f32, 11>();
    let var_3 = select(_wgslsmith_add_vec2_i32(reverseBits(-vec2<i32>(u_input.a, u_input.a)) >> (abs(~vec2<u32>(5822u, 4294967295u)) % vec2<u32>(32u)), -(~(-vec2<i32>(5375i, u_input.a)))), -(~(vec2<i32>(u_input.a, u_input.a) >> (abs(vec2<u32>(var_1, var_1)) % vec2<u32>(32u)))), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(-815f, 207f)), vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-53041i, -2147483647i, var_3.x, 36569i) ^ firstTrailingBit(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a)), -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1949i, 2147483647i), vec4<i32>(1i, var_3.x, u_input.a, var_3.x))), select(-_wgslsmith_dot_vec2_i32(vec2<i32>(-13173i, u_input.a), var_3), -1i, !var_0.x == var_0.x), ~(_wgslsmith_clamp_i32(var_3.x, 0i, 22482i) & -31383i)));
}

