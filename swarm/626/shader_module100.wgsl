struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -22965i;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2() -> i32 {
    return firstLeadingBit(21333i);
}

fn func_3() -> f32 {
    global0 = _wgslsmith_sub_i32(u_input.a.x, -(~(-u_input.a.x) ^ 27894i));
    let var_0 = select(vec4<bool>(select(true, true, false), true, false, true), !(!vec4<bool>(-1i < u_input.a.x, true, any(vec3<bool>(true, true, true)), true)), select(true, true, true));
    global0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    global0 = max(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, 74626i >> (u_input.b.x % 32u))) | -16194i;
    return 1129f;
}

fn func_1() -> vec4<i32> {
    var var_0 = func_2();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), vec2<bool>(!any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true))), true, !(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 27796i), vec3<i32>(-39153i, -15874i, 0i)) <= 0i));
    var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1117f)))), 836f)))), vec2<bool>(!any(!var_1.b), (~1u > u_input.b.x) || true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_1.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-262f, var_1.a)))) >= 1f, var_1.d);
    var var_2 = vec2<u32>(u_input.b.x, 54651u);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1356f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))), !(!vec2<bool>(false || var_1.c, false)), true, true);
    return -vec4<i32>(select(1i, _wgslsmith_add_i32(2147483647i, u_input.a.x) << (~39539u % 32u), true), 1i, abs(25262i), firstTrailingBit(_wgslsmith_mod_i32(u_input.a.x, -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_dot_vec4_i32(~(~(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x))), _wgslsmith_add_vec4_i32(select(func_1(), vec4<i32>(~30288i, u_input.a.x, u_input.a.x >> (u_input.b.x % 32u), u_input.a.x), any(vec3<bool>(true, true, true))), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) >> (max(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 20908u), vec4<u32>(36521u, 29218u, u_input.b.x, 0u)) % vec4<u32>(32u)), ~(-vec4<i32>(37864i, u_input.a.x, u_input.a.x, 1i)))));
    let var_0 = !vec3<bool>(true || any(vec3<bool>(true, true, true)), true, !((u_input.b.x < 0u) && all(vec2<bool>(false, false))));
    let var_1 = select(select(vec4<bool>(true, all(select(var_0.yx, vec2<bool>(false, var_0.x), var_0.x)), true, true), !select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, true, true), any(vec2<bool>(true, var_0.x))), var_0.x), vec4<bool>(!(!select(var_0.x, false, false)), all(vec2<bool>(select(var_0.x, false, false), true)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, u_input.a.x, 2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-5156i, -1i, u_input.a.x, u_input.a.x), vec4<i32>(6035i, u_input.a.x, 38001i, 1i), vec4<i32>(-18387i, 2147483647i, u_input.a.x, u_input.a.x))) <= _wgslsmith_mult_i32(-u_input.a.x, ~u_input.a.x), all(vec3<bool>(true, false, true)) != all(vec3<bool>(true, false, var_0.x))), true);
    var var_2 = var_0.zx;
    let var_3 = _wgslsmith_sub_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.b.x) & vec3<u32>(u_input.b.x, 1u, u_input.b.x), firstLeadingBit(vec3<u32>(61726u, u_input.b.x, 1u))) ^ (~(~vec3<u32>(u_input.b.x, 1u, 1u)) ^ (~vec3<u32>(1u, 53979u, u_input.b.x) << ((vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) & vec3<u32>(u_input.b.x, 54717u, 53953u)) % vec3<u32>(32u)))), ~vec3<u32>(u_input.b.x, _wgslsmith_div_u32(u_input.b.x, 4294967295u), 106907u) >> (vec3<u32>(_wgslsmith_sub_u32(0u, 0u), u_input.b.x, u_input.b.x) % vec3<u32>(32u)));
    global0 = 0i & ~func_1().x;
    global0 = abs(u_input.a.x);
    var_2 = var_0.xy;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, 34275u, select(1u, 35757u, true), var_3.x));
}

