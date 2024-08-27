struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: f32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<f32>) -> vec4<bool> {
    global0 = array<Struct_3, 18>();
    var var_0 = 1u;
    var_0 = 11482u;
    var var_1 = u_input.a | _wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec3_i32(~(vec3<i32>(1i, u_input.a, u_input.a) >> (vec3<u32>(u_input.b.x, u_input.b.x, 1u) % vec3<u32>(32u))), vec3<i32>(-2147483647i << (u_input.b.x % 32u), ~0i, u_input.a)));
    var_1 = -(~select(-_wgslsmith_div_i32(u_input.a, u_input.a), -26420i, true));
    return !(!vec4<bool>(true, (2147483647i | u_input.a) < u_input.a, true, false));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec4<bool>) -> vec2<bool> {
    let var_0 = arg_0.c.c.b;
    let var_1 = !func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.c.c, 1135f, -1044f) - vec3<f32>(arg_0.c.b.x, -444f, arg_0.a.e.d.x))), vec2<f32>(arg_0.c.d.x, _wgslsmith_f_op_f32(abs(arg_0.a.e.d.x))));
    var var_2 = -766f;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-659f)));
    var var_4 = arg_0.c.d.xx;
    return !func_2(_wgslsmith_f_op_vec3_f32(ceil(arg_0.c.b.xyy)), vec2<f32>(var_4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(139f, 978f)) * _wgslsmith_f_op_f32(968f - -1243f)))).yw;
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_3) -> i32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -605f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1578f, arg_2.e.c, arg_2.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.e.d.x - -1292f))))))));
    let var_1 = select(~(-firstLeadingBit(u_input.a)) & 0i, reverseBits(1i), arg_2.d);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.e.c * _wgslsmith_f_op_f32(floor(-1000f))) - arg_2.e.c);
    var var_3 = -31247i;
    var var_4 = arg_2.e.c;
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: u32) -> Struct_2 {
    global0 = array<Struct_3, 18>();
    global0 = array<Struct_3, 18>();
    return Struct_2(_wgslsmith_add_vec4_u32(~(~arg_1.c.a), _wgslsmith_clamp_vec4_u32(~arg_1.c.a, vec4<u32>(36893u, 0u, u_input.b.x, arg_2), vec4<u32>(1047u, 4294967295u, u_input.b.x, arg_2))) | _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x, 1u, 4294967295u, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_1.c.a.x, arg_2, 4294967295u) >> (vec4<u32>(arg_1.a.b.x, arg_2, arg_1.a.b.x, 0u) % vec4<u32>(32u)), abs(vec4<u32>(arg_1.c.a.x, 23379u, 1u, 1u)))), arg_1.c.b, arg_0, arg_1.c.b.zzz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 18>();
    global0 = array<Struct_3, 18>();
    let var_0 = func_4(Struct_1(firstTrailingBit(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(-2147483647i, -44722i), vec2<i32>(0i, 0i), true), abs(vec2<i32>(54196i, 0i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, 2147483647i)))), func_1(Struct_4(global0[_wgslsmith_index_u32(~0u, 18u)], ~(-3648i), Struct_2(vec4<u32>(u_input.b.x, 1954u, 1u, u_input.b.x), vec4<f32>(114f, 807f, -396f, 1191f), Struct_1(vec2<i32>(u_input.a, u_input.a), vec2<bool>(true, true), -320f, vec2<f32>(-351f, -2863f), true), vec3<f32>(637f, 432f, -1690f))), min(select(vec3<u32>(0u, 89295u, 5395u), vec3<u32>(4294967295u, 4294967295u, u_input.b.x), true), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true)), _wgslsmith_f_op_f32(sign(-331f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1126f, -436f))), !all(vec4<bool>(true, true, true, false))), Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(1u, u_input.b.x, 0u), firstLeadingBit(vec3<u32>(1u, u_input.b.x, u_input.b.x))), reverseBits(~vec3<u32>(u_input.b.x, u_input.b.x, 53133u))), 18u)], _wgslsmith_div_i32(func_3(1u, true, global0[_wgslsmith_index_u32(min(u_input.b.x, 37970u), 18u)]), 1i), Struct_2(vec4<u32>(u_input.b.x, _wgslsmith_add_u32(95367u, 41423u), _wgslsmith_add_u32(u_input.b.x, u_input.b.x), ~58562u), vec4<f32>(-432f, -1836f, -293f, _wgslsmith_f_op_f32(-1318f - 2093f)), Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(3909i, u_input.a)), vec2<bool>(true, true), _wgslsmith_f_op_f32(-1201f * -865f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1767f, -272f)), true), vec3<f32>(_wgslsmith_f_op_f32(abs(249f)), 1f, -208f))), 65622u);
    let x = u_input.a;
    s_output = StorageBuffer(-4946i, -var_0.c.a.x, _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(select(vec2<i32>(-1i, -1i), vec2<i32>(u_input.a, var_0.c.a.x), false), vec2<i32>(2147483647i, 0i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, var_0.c.a.x) ^ var_0.c.a, vec2<i32>(var_0.c.a.x, -2147483647i), var_0.c.a ^ vec2<i32>(u_input.a, -23261i))) & reverseBits(-var_0.c.a), ~firstLeadingBit(vec2<u32>(select(u_input.b.x, u_input.b.x, true), u_input.b.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.c, 898f, 1093f)) + var_0.b.zwz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(782f, var_0.b.x), _wgslsmith_f_op_f32(502f * -508f), _wgslsmith_f_op_f32(-var_0.c.c))))));
}

