struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<i32>;

var<private> global2: Struct_2 = Struct_2(true);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> i32 {
    var var_0 = !(!select(select(select(vec3<bool>(false, true, arg_2.a), vec3<bool>(false, arg_2.a, true), true), vec3<bool>(arg_2.a, false, true), true), select(select(vec3<bool>(true, arg_2.a, arg_2.a), vec3<bool>(arg_1, global2.a, arg_2.a), vec3<bool>(arg_1, false, arg_2.a)), !vec3<bool>(true, false, arg_2.a), true), all(vec2<bool>(false, true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(419f, -1373f, -1254f, -341f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(495f, 331f, -1000f, -1719f), vec4<f32>(871f, 1036f, 351f, -269f))))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1549f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-481f, 846f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-298f + 1585f), _wgslsmith_f_op_f32(min(-1543f, 767f)))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(_wgslsmith_f_op_f32(abs(-432f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(180f, 2368f)), _wgslsmith_f_op_f32(step(-770f, 286f))))))));
    global0 = firstLeadingBit(-16670i);
    let var_2 = vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.a, 1u), vec2<u32>(4364u, arg_0.a) >> (~vec2<u32>(4294967295u, arg_0.a) % vec2<u32>(32u))), abs(~vec2<u32>(arg_0.a, 4709u))), 0u, arg_0.a);
    let var_3 = Struct_1(_wgslsmith_add_u32(~arg_0.a, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(32761u, 1u, 41462u), var_2))), arg_0.b);
    return (abs(1i) >> (0u % 32u)) & var_3.b;
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    global0 = _wgslsmith_dot_vec4_i32(-vec4<i32>(~arg_1, u_input.a.x, abs(func_3(arg_2, arg_0.x, Struct_2(global2.a))), ~(global1.x | arg_2.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.a.x, -(global1.x << (arg_2.a % 32u)), -2147483647i, 1i), -_wgslsmith_div_vec4_i32(-vec4<i32>(-1i, 13742i, arg_1, arg_1), vec4<i32>(-894i, -7171i, 2147483647i, arg_2.b))));
    global1 = countOneBits(vec4<i32>(-1i) * -(firstTrailingBit(vec4<i32>(arg_2.b, arg_1, 2147483647i, global1.x)) & -vec4<i32>(2147483647i, 0i, arg_2.b, 1i)));
    let var_0 = ~firstLeadingBit(95555u);
    let var_1 = _wgslsmith_f_op_f32(sign(-1483f));
    var var_2 = ~var_0;
    return _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(arg_2.a, var_0, 53125u))), ~(vec3<u32>(1u, 3112u, 35200u) & ((vec3<u32>(var_0, 86956u, 4294967295u) & vec3<u32>(arg_2.a, arg_2.a, 49676u)) ^ _wgslsmith_div_vec3_u32(vec3<u32>(var_0, 4294967295u, arg_2.a), vec3<u32>(arg_2.a, 0u, arg_2.a)))));
}

fn func_1() -> i32 {
    let var_0 = vec2<i32>(u_input.a.x, u_input.a.x);
    var var_1 = vec4<u32>(countOneBits(13090u), reverseBits(abs(18499u)), 0u, ~(~(~abs(4988u))));
    var var_2 = _wgslsmith_clamp_u32(1u, ~func_2(vec4<bool>(true, true, true, false), _wgslsmith_mod_i32(-59720i, var_0.x), Struct_1(36136u, var_0.x ^ global1.x), vec4<f32>(_wgslsmith_div_f32(-1352f, -660f), 315f, -786f, 373f)), ~(~var_1.x));
    let var_3 = Struct_2(true);
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1938f))));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.x;
    global1 = abs(-firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-17394i, 43506i, 1707i, u_input.a.x), vec4<i32>(-32293i, 14382i, u_input.a.x, u_input.a.x)))) << (~vec4<u32>(1u, 1u, _wgslsmith_add_u32(0u, _wgslsmith_add_u32(8993u, 13561u)), 87014u) % vec4<u32>(32u));
    var var_1 = Struct_1(0u, -_wgslsmith_sub_i32(u_input.a.x, func_1()));
    var_0 = func_3(Struct_1(~_wgslsmith_mod_u32(4294967295u, 62934u), ~(~global1.x) << (countOneBits(~1147u) % 32u)), any(vec4<bool>(all(select(vec2<bool>(global2.a, global2.a), vec2<bool>(false, true), vec2<bool>(global2.a, false))), true, 1i < firstTrailingBit(var_1.b), true)), Struct_2(any(vec2<bool>(true, !global2.a))));
    var var_2 = Struct_2(u_input.a.x <= 30078i);
    var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(973f * 542f), -1039f)) + 1f) == _wgslsmith_f_op_f32(trunc(-407f)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<u32>(1u, ~var_1.a, 0u) >> (abs(~vec3<u32>(var_1.a, 0u, 74146u)) % vec3<u32>(32u))), min(-abs(_wgslsmith_dot_vec4_i32(vec4<i32>(17099i, global1.x, -1i, u_input.a.x), vec4<i32>(15588i, u_input.a.x, -7946i, 1i))), global1.x ^ _wgslsmith_mod_i32(24547i, 8766i)), ~firstLeadingBit(firstTrailingBit(vec3<u32>(57894u, 15299u, 1u))) << ((vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, var_1.a, 7669u, var_1.a), vec4<u32>(1u, var_1.a, var_1.a, 82686u)), 1u, 4294967295u) ^ (_wgslsmith_add_vec3_u32(vec3<u32>(var_1.a, var_1.a, var_1.a), vec3<u32>(0u, var_1.a, var_1.a)) & _wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_1.a, 21681u), vec3<u32>(var_1.a, var_1.a, var_1.a)))) % vec3<u32>(32u)), 52026u, firstLeadingBit(vec2<u32>(9850u, var_1.a)) << (~select(vec2<u32>(var_1.a, var_1.a), vec2<u32>(var_1.a, 21931u), !var_2.a) % vec2<u32>(32u)));
}

