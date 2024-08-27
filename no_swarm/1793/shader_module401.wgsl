struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec3<i32> = vec3<i32>(0i, -1i, 2147483647i);

var<private> global2: vec3<i32> = vec3<i32>(1i, -5754i, 0i);

var<private> global3: array<Struct_1, 26>;

var<private> global4: vec2<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global0 = ~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, u_input.a.x, 48178u, global0.x) << (vec4<u32>(397u, u_input.a.x, 1u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(global0.x, 664u, global0.x, global0.x)), ~(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(42460u, 1u, u_input.a.x, 27518u) ^ vec4<u32>(u_input.a.x, u_input.a.x, 0u, 27753u), vec4<u32>(global0.x, u_input.a.x, u_input.a.x, u_input.a.x))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-675f)) - _wgslsmith_f_op_f32(-627f - 366f)) * 1000f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 1299f) * -756f));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1250f, -978f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(196f)) - _wgslsmith_f_op_f32(f32(-1f) * -1275f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -220f) - _wgslsmith_f_op_f32(f32(-1f) * -1674f)))));
    global4 = select(select(vec2<bool>(!select(global4.x, true, true), true), !select(select(vec2<bool>(true, global4.x), vec2<bool>(false, global4.x), global4.x), !vec2<bool>(global4.x, global4.x), select(vec2<bool>(global4.x, global4.x), vec2<bool>(true, false), true)), select(vec2<bool>(!global4.x, global4.x), select(!vec2<bool>(true, global4.x), select(vec2<bool>(true, false), vec2<bool>(true, global4.x), vec2<bool>(global4.x, true)), true), vec2<bool>(global4.x, any(vec4<bool>(global4.x, global4.x, true, global4.x))))), !(!select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(global4.x, global4.x), vec2<bool>(false, global4.x)), global4.x)), vec2<bool>(true, all(vec4<bool>(!global4.x, false && global4.x, !global4.x, all(vec2<bool>(false, false))))));
    var var_2 = (firstLeadingBit(3429i) < ~_wgslsmith_div_i32(global1.x | -81103i, -global1.x)) | !global4.x;
    return var_1.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1611f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.b, 1000f, arg_1.b))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1383f, 1000f, arg_1.b) + vec3<f32>(arg_1.b, arg_1.b, -1746f))))));
    var var_1 = arg_1.a;
    let var_2 = Struct_1(all(vec2<bool>(false, _wgslsmith_f_op_f32(var_0.x - -1000f) != var_0.x)), firstTrailingBit(var_1.b));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(923f)), -1000f, var_0.x));
    var var_4 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(331f)))), -419f)));
    return var_2;
}

fn func_1() -> u32 {
    let var_0 = func_2(vec4<i32>(global2.x, global1.x, abs(~global2.x), ~global1.x), Struct_2(Struct_1(all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), _wgslsmith_clamp_u32(1u, select(global0.x, 72552u, global4.x), u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(658f - -764f), 403f)), ~vec2<i32>(~global2.x, _wgslsmith_mult_i32(global2.x, -2147483647i)), -(~global2.x)), global2.x << ((_wgslsmith_mult_u32(select(1u, 0u, global4.x), select(global0.x, 0u, global4.x)) >> ((global0.x >> (abs(77998u) % 32u)) % 32u)) % 32u), false);
    global4 = vec2<bool>(true, true);
    var var_1 = func_2(vec4<i32>(~2147483647i, 59928i, ~_wgslsmith_mod_i32(global1.x, -14972i), _wgslsmith_add_i32(global1.x, max(-2147483647i, _wgslsmith_add_i32(-16340i, 0i)))), Struct_2(Struct_1(global4.x, _wgslsmith_add_u32(72036u << (global0.x % 32u), ~var_0.b)), 261f, vec2<i32>(_wgslsmith_clamp_i32(global1.x, select(global2.x, -2366i, true), global1.x), reverseBits(global2.x) << (func_2(vec4<i32>(global2.x, global1.x, global1.x, global2.x), Struct_2(Struct_1(true, u_input.a.x), 1507f, global2.zy, global1.x), global2.x, global4.x).b % 32u)), reverseBits(firstTrailingBit(39784i))), -global1.x, true);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-566f, -2126f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-410f + -197f) + _wgslsmith_f_op_f32(-1000f + 677f))))));
    return 48132u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstTrailingBit(vec4<u32>(~(0u ^ u_input.a.x), 25789u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(91029u, u_input.a.x), vec2<u32>(1u, 64211u)), ~global0.x), ~func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(-81306i ^ min(firstLeadingBit(global1.x), -21504i), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(global1.xy, vec2<i32>(global1.x, global1.x)), ~(-6686i)), abs(global2.x & global1.x)), vec2<i32>(global2.x, select(global1.x, ~63243i, false))), ~2353u, vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(select(vec3<i32>(-1i, global1.x, global1.x), vec3<i32>(global2.x, global2.x, 1i), true), vec3<i32>(global1.x, -31325i, global2.x)), max(vec3<i32>(-2147483647i, 46188i, -12495i) ^ vec3<i32>(-13285i, 93679i, global1.x), ~vec3<i32>(-10001i, global1.x, global2.x))), global2.x), vec4<u32>(~reverseBits(_wgslsmith_mult_u32(0u, global0.x)), 4294967295u, var_0.x, 1u));
}

