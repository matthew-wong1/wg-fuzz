struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 16>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> i32 {
    global0 = array<vec4<u32>, 16>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(978f - _wgslsmith_f_op_f32(-733f + -1356f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1188f * 423f)))) - _wgslsmith_f_op_f32(step(365f, _wgslsmith_f_op_f32(-1f)))), Struct_2(u_input.b.x, Struct_1(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.c, u_input.b.x, -1i, -22625i), vec4<i32>(u_input.c, -2147483647i, 39002i, 1i), false), vec4<i32>(2147483647i, u_input.c, u_input.b.x, u_input.c)), _wgslsmith_add_i32(reverseBits(u_input.b.x), u_input.b.x), vec4<f32>(_wgslsmith_f_op_f32(1000f * -1000f), -208f, 245f, 227f), vec2<u32>(_wgslsmith_div_u32(u_input.d, u_input.d), ~4037u), ~u_input.b.x ^ u_input.c), ~(vec4<i32>(u_input.c, 0i, 1i, u_input.c) & vec4<i32>(679i, 19955i, u_input.b.x, u_input.c)), 2147483647i), Struct_1(-u_input.c, ~(~(~u_input.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(179f - -291f), _wgslsmith_f_op_f32(ceil(1916f)), _wgslsmith_f_op_f32(625f * -822f), _wgslsmith_f_op_f32(step(925f, -1354f)))), ~vec2<u32>(u_input.a, 4294967295u) >> (~max(vec2<u32>(3850u, u_input.a), vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u)), u_input.b.x));
    let var_1 = _wgslsmith_f_op_f32(450f - _wgslsmith_f_op_f32(min(-1949f, _wgslsmith_f_op_f32(f32(-1f) * -999f))));
    var var_2 = Struct_1(u_input.c, u_input.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c.c - vec4<f32>(var_1, 739f, var_1, var_1)))), ~(~(~vec2<u32>(4294967295u, 69459u) << (vec2<u32>(81663u, u_input.a) % vec2<u32>(32u)))), ~_wgslsmith_div_i32(13063i, u_input.b.x));
    var var_3 = Struct_3(-240f, var_0.b, Struct_1(-22108i, select(-23190i, reverseBits(-2147483647i), true), _wgslsmith_f_op_vec4_f32(vec4<f32>(-850f, -573f, _wgslsmith_div_f32(-1000f, 515f), _wgslsmith_f_op_f32(f32(-1f) * -197f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1826f, var_2.c.x, -1223f, -524f))), select(~vec2<u32>(27972u, u_input.a), vec2<u32>(10676u | var_0.b.b.d.x, u_input.a), true), ~firstTrailingBit(_wgslsmith_sub_i32(u_input.c, u_input.c))));
    return 302i;
}

fn func_2() -> Struct_1 {
    global0 = array<vec4<u32>, 16>();
    let var_0 = Struct_1(func_3(), ~1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1113f, 1330f, -1962f, -566f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-771f, 1250f, 1037f, -993f), vec4<f32>(-1031f, -566f, -1780f, 440f)))))), firstLeadingBit(vec2<u32>(81840u, 0u)), u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.c.zw, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_0.c.zy * var_0.c.zx)))) + vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.c.x * -1000f))), _wgslsmith_f_op_f32(-768f * _wgslsmith_f_op_f32(-var_0.c.x)))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-961f, 449f)))))));
    let var_2 = var_0.d.x;
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_1.x)), var_1.x, all(vec3<bool>(false, true, true)))))));
    return var_0;
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: i32) -> i32 {
    let var_0 = ~u_input.c;
    global0 = array<vec4<u32>, 16>();
    global0 = array<vec4<u32>, 16>();
    let var_1 = Struct_3(arg_0, Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(var_0, u_input.c, 12845i), u_input.b.x, -20737i), vec3<i32>(-arg_1.x, _wgslsmith_mod_i32(arg_1.x, var_0), 1i)), func_2(), vec4<i32>(-2147483647i, ~select(var_0, 3875i, false), firstTrailingBit(firstLeadingBit(arg_1.x)), abs(_wgslsmith_sub_i32(0i, arg_2))), i32(-1i) * -1i), func_2());
    var var_2 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(793f)) + _wgslsmith_f_op_f32(-arg_0))), var_1.c.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1406f + 689f), arg_0)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), 1054f))), Struct_2(arg_2, func_2(), var_1.b.c, firstLeadingBit(arg_2)), var_1.b.b);
    return ~8556i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_i32(u_input.b.zw, firstTrailingBit(select(u_input.b.xy, reverseBits(-vec2<i32>(u_input.b.x, -55903i)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
    let var_1 = -(vec4<i32>(~42284i | func_1(1000f, u_input.b, 2147483647i), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.c, -15240i), -u_input.b.x), var_0.x, abs(var_0.x)) & vec4<i32>(-var_0.x, -var_0.x, func_2().e, u_input.b.x));
    var var_2 = vec2<bool>(select(select(true, any(vec3<bool>(false, false, true)) | true, true), true, true), select(func_1(1747f, -var_1, ~var_1.x) <= firstLeadingBit(1i), (-2043i << (_wgslsmith_div_u32(31343u, u_input.a) % 32u)) >= 0i, true));
    var_2 = vec2<bool>(var_2.x, any(select(!vec4<bool>(var_2.x, true, false, var_2.x), select(vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(true, var_2.x, false, var_2.x), vec4<bool>(false, false, true, var_2.x)), !var_2.x)) && !any(select(vec4<bool>(true, var_2.x, var_2.x, false), vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(false, var_2.x, false, false))));
    let var_3 = Struct_2(_wgslsmith_dot_vec4_i32(~u_input.b, u_input.b), func_2(), countOneBits(vec4<i32>(1i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(19232i, 49365i, -14243i), -1i), abs(_wgslsmith_div_i32(19580i, u_input.c)), max(_wgslsmith_div_i32(u_input.c, var_1.x), -u_input.c))), 19633i);
    var var_4 = vec2<u32>(u_input.a & 50406u, 17259u << (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), abs(vec3<u32>(var_3.b.d.x, 21233u, 0u))), ~(~1u)) % 32u));
    var var_5 = _wgslsmith_mult_u32(~u_input.d, 4294967295u);
    var var_6 = -var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(~(vec2<u32>(1u, 5829u) << (var_3.b.d % vec2<u32>(32u))), ~(~(var_3.b.d | var_3.b.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.b.c)));
}

