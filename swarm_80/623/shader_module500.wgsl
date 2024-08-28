struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: vec4<f32>) -> vec2<f32> {
    let var_0 = -1189f;
    global0 = true;
    let var_1 = u_input.d.x;
    global0 = select(-18692i, min(u_input.b, -45896i), true) > 63394i;
    var var_2 = !vec4<bool>(true, u_input.a.x != abs(u_input.b), !(!arg_0.x), arg_0.x);
    return arg_2.zz;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<i32>) -> i32 {
    global0 = !(-650f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -587f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(513f - 597f) * _wgslsmith_f_op_f32(ceil(1000f)))));
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f));
    var var_1 = ~u_input.a.x;
    let var_2 = max(-vec3<i32>(abs(20689i), ~arg_1.x | arg_1.x, firstTrailingBit(~u_input.b)), abs(vec3<i32>(u_input.a.x ^ 61412i, arg_1.x, 0i)) & ~max(-vec3<i32>(61544i, 0i, u_input.e.x), vec3<i32>(4918i, 35637i, arg_1.x)));
    var var_3 = max(arg_0, firstLeadingBit(vec3<u32>(arg_0.x, _wgslsmith_sub_u32(1u, 0u), 1u)) & vec3<u32>(u_input.c.x, ~u_input.c.x, ~31803u));
    return ~_wgslsmith_div_i32(_wgslsmith_mod_i32(abs(1i << (arg_0.x % 32u)), -firstTrailingBit(2147483647i)), u_input.e.x >> (1u % 32u));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_2) -> bool {
    global0 = any(vec2<bool>(select(true, true, !all(vec2<bool>(true, arg_3.b))), true));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-arg_3.d.x), arg_3.d.x);
    global0 = 0u >= _wgslsmith_div_u32(0u, u_input.c.x);
    var var_1 = Struct_1(-_wgslsmith_clamp_i32(1i, arg_2 | func_3(vec3<u32>(2714u, arg_1.x, arg_1.x), vec4<i32>(u_input.a.x, 42638i, arg_3.c.c.x, u_input.e.x)), ~arg_2), vec2<u32>(_wgslsmith_div_u32(u_input.d.x | 93629u, ~u_input.d.x) >> (_wgslsmith_dot_vec2_u32(arg_3.c.b, _wgslsmith_mod_vec2_u32(arg_3.c.b, arg_3.c.d.zz)) % 32u), abs(0u)), arg_3.c.c, u_input.d);
    var var_2 = Struct_2(~(firstLeadingBit(_wgslsmith_div_vec2_i32(var_1.c, u_input.e.xx)) | arg_3.c.c), all(select(!(!vec4<bool>(arg_3.b, arg_0.x, false, arg_0.x)), !select(vec4<bool>(false, false, false, arg_3.b), vec4<bool>(arg_3.b, arg_0.x, true, false), arg_3.b), vec4<bool>(false, arg_3.b & false, true, false))), Struct_1(-_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.a.x, arg_3.e, var_1.a, u_input.e.x), vec4<i32>(1i, arg_3.c.a, 54850i, arg_2)), i32(-1i) * -1i), _wgslsmith_div_vec2_u32(var_1.b, abs(abs(vec2<u32>(arg_1.x, 0u)))), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(u_input.e.xx, vec2<i32>(2147483647i, arg_3.c.a)), arg_3.a), vec2<i32>(_wgslsmith_sub_i32(2147483647i, arg_2), -arg_3.c.a)), vec3<u32>(arg_1.x, 23913u, 1u)), arg_3.d, 1i);
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !func_2(vec3<bool>(true, true, true), ~countOneBits(~vec2<u32>(1u, u_input.d.x)), ~(-1i), Struct_2(u_input.e.zx, !any(vec2<bool>(false, false)), Struct_1(i32(-1i) * -30757i, ~vec2<u32>(u_input.d.x, 4294967295u), u_input.e.zy, _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.d.x, 34419u), u_input.d)), _wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(true, true, true, true), vec2<u32>(u_input.c.x, 4294967295u), vec4<f32>(1000f, 935f, 486f, 1730f))), _wgslsmith_dot_vec4_i32(-vec4<i32>(75434i, 1i, u_input.a.x, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 31679i, 0i, 0i), vec4<i32>(u_input.b, -1i, u_input.b, -18523i)))));
    global0 = all(!(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_0 = Struct_1(~u_input.a.x, ~vec2<u32>(_wgslsmith_clamp_u32(~u_input.c.x, min(u_input.c.x, 34057u), ~96899u), u_input.d.x), u_input.e.zz | select(vec2<i32>(-2147483647i, u_input.e.x) | _wgslsmith_add_vec2_i32(vec2<i32>(u_input.e.x, 0i), u_input.e.zz), _wgslsmith_mod_vec2_i32(~u_input.a, max(vec2<i32>(-16523i, 31037i), u_input.e.zz)), any(vec3<bool>(false, false, true))), ~firstLeadingBit(~u_input.d));
    global0 = false;
    var var_1 = !select(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), false)), select(vec2<bool>(select(false, false, false), any(vec4<bool>(false, false, true, false))), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true));
    let var_2 = vec4<bool>(var_1.x, any(!vec4<bool>(false, any(vec2<bool>(false, var_1.x)), var_1.x, var_1.x || var_1.x)), any(!select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, false, var_1.x), vec3<bool>(var_1.x, var_1.x, true))) | all(vec3<bool>(false, false, all(vec2<bool>(var_1.x, false)))), false);
    global0 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b | var_0.c.x, select(countOneBits(vec2<i32>(-7942i, var_0.c.x)), abs(vec2<i32>(var_0.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b, -32522i), u_input.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1831f, -359f)) + _wgslsmith_f_op_f32(2435f - 467f)) >= _wgslsmith_f_op_f32(f32(-1f) * -2413f)), _wgslsmith_sub_u32(abs(31389u), ~u_input.c.x));
}

