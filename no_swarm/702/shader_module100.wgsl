struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: u32, arg_1: Struct_5, arg_2: vec2<f32>, arg_3: f32) -> bool {
    let var_0 = Struct_2(arg_1.c, arg_1.b.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_2.x, arg_3), arg_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1092f)), arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 + arg_3))))));
    let var_2 = arg_1;
    global0 = ~(_wgslsmith_div_u32(arg_0, ~arg_1.a.a.x) >> (~4294967295u % 32u));
    let var_3 = ~(~vec4<i32>(~(~var_2.b.b.b.x), var_0.b.b.x, max(-var_0.b.b.x, var_0.b.b.x), -1i));
    return var_2.d.x;
}

fn func_2() -> f32 {
    let var_0 = Struct_2(!func_3(u_input.b, Struct_5(Struct_1(vec2<u32>(u_input.b, 37379u), vec4<i32>(u_input.c.x, 5032i, u_input.a.x, 0i)), Struct_2(false, Struct_1(u_input.e.yy, vec4<i32>(53591i, 37136i, u_input.a.x, 1i))), true, vec2<bool>(false, true)), vec2<f32>(-231f, -1767f), _wgslsmith_f_op_f32(abs(-815f))) && !(any(vec4<bool>(false, false, true, true)) | true), Struct_1(firstLeadingBit(vec2<u32>(firstTrailingBit(u_input.e.x), 0u)), _wgslsmith_mod_vec4_i32(reverseBits(u_input.d), u_input.d)));
    let var_1 = vec3<bool>(select(var_0.a, var_0.a, true), var_0.a, true);
    var var_2 = min(firstLeadingBit(var_0.b.b), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(-25568i, u_input.c.x, 14430i & u_input.a.x, -u_input.d.x)), var_0.b.b));
    var_2 = var_0.b.b;
    var_2 = vec4<i32>(var_2.x | ~0i, ~1i, ~u_input.d.x << (~u_input.b % 32u), _wgslsmith_add_i32(select(-u_input.c.x, var_2.x, u_input.d.x < var_0.b.b.x), u_input.d.x)) << (_wgslsmith_add_vec4_u32(reverseBits(reverseBits(vec4<u32>(1u, 51181u, 10457u, var_0.b.a.x))), vec4<u32>(u_input.b, var_0.b.a.x, _wgslsmith_div_u32(var_0.b.a.x, 1u), 23955u)) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + 1f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1488f, 683f))), -395f))))));
}

fn func_1() -> Struct_1 {
    let var_0 = max(abs(_wgslsmith_div_i32(-1i, u_input.d.x)), 2147483647i);
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1174f), _wgslsmith_f_op_f32(-518f - -1047f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(sign(-1774f))))))));
    let var_2 = u_input.e.zz;
    var var_3 = reverseBits(u_input.c);
    global0 = ~20433u;
    return Struct_1(vec2<u32>(49851u, 1u << (firstTrailingBit(94111u << (u_input.e.x % 32u)) % 32u)), abs(~_wgslsmith_add_vec4_i32(u_input.a, u_input.a)) << (vec4<u32>(23426u, _wgslsmith_mod_u32(select(4294967295u, 4294967295u, true), abs(u_input.b)), ~(~var_2.x), select(~u_input.e.x, _wgslsmith_sub_u32(var_2.x, var_2.x), false)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.e.x;
    var var_0 = Struct_2(!(!(!select(false, false, true))), func_1());
    var_0 = Struct_2(min(var_0.b.b.x & 74283i, ~(-var_0.b.b.x)) == firstLeadingBit(u_input.c.x), func_1());
    var_0 = Struct_2(select(!select(!var_0.a, any(vec3<bool>(false, var_0.a, true)), true), all(vec4<bool>(true, true, true, true)), !var_0.a), var_0.b);
    global0 = ~(~(~var_0.b.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(u_input.b, var_0.b.a.x), 59112u, var_0.b.a.x), (_wgslsmith_mod_u32(u_input.b, u_input.b) >> (9139u % 32u)) & (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.e.x, 43420u, var_0.b.a.x), vec4<u32>(0u, 65331u, u_input.b, 4294967295u)) << (var_0.b.a.x % 32u)), _wgslsmith_div_u32(var_0.b.a.x, max(var_0.b.a.x, 10360u)) & var_0.b.a.x, u_input.e.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1664f), -2143f))))), firstTrailingBit(vec2<i32>(var_0.b.b.x << (min(var_0.b.a.x, u_input.e.x) % 32u), _wgslsmith_div_i32(u_input.a.x, -1i) | (u_input.d.x | 21950i))));
}

