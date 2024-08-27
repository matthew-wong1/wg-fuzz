struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: vec3<i32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 12>;

var<private> global1: array<Struct_2, 7>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2() -> i32 {
    let var_0 = 30645u;
    let var_1 = vec4<u32>(~_wgslsmith_sub_u32(u_input.a.x & var_0, ~0u) | ~4294967295u, u_input.a.x, var_0, 88698u);
    return -abs(u_input.b);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<i32>) -> vec2<bool> {
    global0 = array<vec2<bool>, 12>();
    global0 = array<vec2<bool>, 12>();
    var var_0 = reverseBits(0u);
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(963f, 536f))) - 211f) * -912f)));
    var var_2 = _wgslsmith_f_op_f32(step(812f, _wgslsmith_f_op_f32(floor(-804f))));
    return !select(vec2<bool>(true, !all(vec3<bool>(false, false, true))), !global0[_wgslsmith_index_u32(~4294967295u, 12u)], select(vec2<bool>(all(vec4<bool>(false, true, true, true)), true), select(global0[_wgslsmith_index_u32(u_input.a.x | 4294967295u, 12u)], !global0[_wgslsmith_index_u32(u_input.a.x, 12u)], vec2<bool>(true, false)), vec2<bool>(true, true)));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_4) -> u32 {
    let var_0 = arg_1;
    global0 = array<vec2<bool>, 12>();
    var var_1 = Struct_3(_wgslsmith_mod_u32(_wgslsmith_div_u32(~1u, 53840u), u_input.a.x) == _wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(1354u, 0u, 0u)), vec3<u32>(u_input.a.x, 4294967295u, ~1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(139f)), arg_3.b.x, _wgslsmith_f_op_f32(arg_3.b.x * arg_3.b.x)) + _wgslsmith_div_vec3_f32(vec3<f32>(-2556f, arg_3.b.x, arg_3.b.x), vec3<f32>(arg_3.b.x, -803f, 1269f)))), vec3<i32>(34174i, 12079i, firstTrailingBit(abs(1i | arg_0))), Struct_1(vec4<i32>((u_input.c | arg_0) | arg_1, u_input.c, 1i, arg_3.c.x), vec2<bool>(all(vec2<bool>(false, true)), false)), !vec4<bool>(arg_3.a.b, !(arg_2.x | arg_3.a.a.x), true, arg_3.a.a.x));
    let var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.a.x, u_input.a.x, 104512u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), var_1.e.xyx), _wgslsmith_add_vec3_u32(vec3<u32>(89816u, u_input.a.x, 48843u), vec3<u32>(u_input.a.x, 82491u, u_input.a.x))), ~(vec3<u32>(1u, u_input.a.x, 18557u) >> (vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) % vec3<u32>(32u))), ~abs(vec3<u32>(u_input.a.x, 4294967295u, 1u))), countOneBits(~(vec3<u32>(u_input.a.x, 4294967295u, 35260u) ^ vec3<u32>(4294967295u, u_input.a.x, 90082u)))) ^ vec3<u32>(max(_wgslsmith_sub_u32(firstLeadingBit(40613u), firstLeadingBit(u_input.a.x)), select(95265u, ~u_input.a.x, arg_3.a.b)), 8314u, ~1u);
    global0 = array<vec2<bool>, 12>();
    return var_2.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: u32) -> u32 {
    global1 = array<Struct_2, 7>();
    return func_4(countOneBits(func_2() & _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -47968i, 12329i, arg_1.c.x), arg_1.d.a), _wgslsmith_sub_i32(7565i, -17231i))), 40051i, func_3(vec2<u32>(~(u_input.a.x | u_input.a.x), ~_wgslsmith_mult_u32(arg_3, 21527u)), arg_1.c), Struct_4(global1[_wgslsmith_index_u32(0u, 7u)], vec2<f32>(arg_1.b.x, 1000f), reverseBits(firstTrailingBit(vec3<i32>(arg_1.d.a.x, arg_1.d.a.x, -1i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 12>();
    global1 = array<Struct_2, 7>();
    var var_0 = (~(~func_1(vec3<f32>(-670f, 102f, 162f), Struct_3(false, vec3<f32>(-254f, 252f, -1330f), vec3<i32>(u_input.c, -6810i, 1i), Struct_1(vec4<i32>(-20220i, u_input.b, -18615i, u_input.c), vec2<bool>(true, false)), vec4<bool>(true, true, true, true)), vec3<u32>(14949u, 5614u, 4294967295u), u_input.a.x)) != ((~64165u >> (u_input.a.x % 32u)) << (_wgslsmith_div_u32(~u_input.a.x, 1u) % 32u))) != (_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(9642i, 1i, u_input.b), vec3<i32>(u_input.c, -13036i, 3760i), vec3<i32>(u_input.c, u_input.c, u_input.c)) >> (vec3<u32>(0u, u_input.a.x, 36048u) % vec3<u32>(32u)), -(~vec3<i32>(0i, u_input.b, 19254i))) > abs(-select(u_input.b, 2147483647i, false)));
    var var_1 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(u_input.a.x > u_input.a.x, true, true, true), all(vec2<bool>(true, true))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true)), true), any(vec2<bool>(true, true))), true);
    var var_2 = all(select(select(!vec4<bool>(var_1.x, true, var_1.x, true), select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), var_1.x), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(true, true, var_1.x, var_1.x))), vec4<bool>(true, select(var_1.x, var_1.x, var_1.x), var_1.x, var_1.x), any(select(var_1.wxx, vec3<bool>(var_1.x, var_1.x, true), var_1.x)))) | !(!all(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(false, var_1.x, var_1.x), var_1.yzz)));
    let var_3 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3, 590f, 1000f)))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_3, var_3, -565f))), vec3<f32>(var_3, var_3, var_3))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3, var_3, var_3))))))), vec3<bool>(var_1.x & (u_input.c > 1i), var_1.x, true))), vec3<i32>(u_input.b, u_input.c, 16739i), 24978u, _wgslsmith_f_op_f32(f32(-1f) * -1043f));
}

