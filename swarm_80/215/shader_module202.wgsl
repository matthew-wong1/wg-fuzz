struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1497f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(318f - -1421f))), _wgslsmith_f_op_f32(min(-667f, _wgslsmith_div_f32(929f, 912f)))));
    return 4294967295u;
}

fn func_2() -> bool {
    var var_0 = 43616u;
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1391f * 1887f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-347f - -100f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1572f + -747f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1976f + _wgslsmith_f_op_f32(350f * -1000f))))));
    var var_2 = vec2<u32>(~4294967295u, _wgslsmith_mult_u32(1u, u_input.b.x)) << (vec2<u32>(20125u, 4294967295u << (~func_3(vec2<bool>(true, false)) % 32u)) % vec2<u32>(32u));
    let var_3 = _wgslsmith_f_op_f32(-1199f + var_1.x);
    let var_4 = Struct_2(false, -min(-4952i, _wgslsmith_add_i32(u_input.d.x, firstTrailingBit(-22699i))), vec3<u32>(0u, ~50761u, u_input.b.x), abs(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(14350i, u_input.d.x, -2147483647i), ~(-11010i), -u_input.d.x, -u_input.d.x), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, -2936i, u_input.d.x, -1i), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)), vec4<i32>(23382i, u_input.d.x, u_input.d.x, u_input.d.x)))));
    return all(vec3<bool>(-var_4.b >= _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_4.d.x, u_input.d.x), u_input.d), ~(-40157i)), !(u_input.a >= 33134u), var_4.a));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: bool) -> bool {
    let var_0 = select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d.x, ~1i) >> (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 0u), arg_2.a.c.zz) % vec2<u32>(32u)), -arg_2.a.d.zy), abs(u_input.d), true);
    return !((arg_2.c.x | func_2()) && arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec2<i32>(-1i, _wgslsmith_mult_i32(~4691i, ~u_input.d.x)));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2161f + -1352f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(911f * 2106f), _wgslsmith_f_op_f32(775f + -1015f))))) * _wgslsmith_f_op_f32(trunc(-390f))), _wgslsmith_f_op_f32(abs(-195f)), true));
    let var_1 = !(!select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), any(vec2<bool>(true, true))));
    let var_2 = Struct_4(!vec2<bool>(var_1.x, true), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(626f, -569f, 976f, 579f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-225f, -1000f, -197f, -1259f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1664f, -780f, -152f, -237f))), select(vec4<bool>(false, var_1.x, var_1.x, true), select(var_1, vec4<bool>(var_1.x, true, var_1.x, var_1.x), true), func_1(vec2<u32>(0u, 1u), Struct_1(vec4<bool>(var_1.x, false, false, false), var_1, var_1.zy, var_1.yx, vec4<u32>(4294967295u, 48197u, 13099u, u_input.c)), Struct_3(Struct_2(true, -2147483647i, vec3<u32>(u_input.b.x, 0u, 122044u), vec4<i32>(25812i, var_0.x, 67308i, var_0.x)), vec2<i32>(-2147483647i, 35141i), var_1.wyz, u_input.b.x), var_1.x)))))), 1112f);
    var var_3 = -(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-17546i, u_input.d.x), -1i), countOneBits(select(vec2<i32>(u_input.d.x, var_0.x), vec2<i32>(0i, u_input.d.x), true)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, u_input.d.x, -52800i), vec3<i32>(u_input.d.x, u_input.d.x, -2147483647i)), 2147483647i)) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-5832i, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, var_0.x, u_input.d.x, 0i)), u_input.d.x), min(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, var_0.x), var_0), u_input.d)));
    var_3 = abs(vec2<i32>(min(0i, ~35301i), ~(~var_0.x) << (firstTrailingBit(~u_input.a) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.x, -375f) - _wgslsmith_f_op_vec2_f32(-var_2.b.xy)))), abs(u_input.b ^ ~min(u_input.b, u_input.b)), vec3<f32>(var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.c, var_2.b.x)), var_2.b.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_2.c, -1394f))))), vec3<u32>(abs(~u_input.b.x), 4294967295u, ~(u_input.b.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(36098u, 1u, 4294967295u), u_input.b.zyy) % 32u))));
}

