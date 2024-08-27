struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1647f)), _wgslsmith_f_op_f32(-525f + _wgslsmith_f_op_f32(select(-333f, -482f, false)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, 255f)), _wgslsmith_f_op_f32(-784f + -469f)))));
    var var_1 = true;
    var var_2 = Struct_2(_wgslsmith_sub_u32(~1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 100639u, 110538u, 0u)), 0u)));
    var_2 = Struct_2(var_2.a);
    var var_3 = Struct_2(~_wgslsmith_mod_u32(25910u, abs(~12716u)));
    return Struct_1(firstTrailingBit(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), abs(vec2<i32>(u_input.a, 0i)))), ~vec3<u32>(var_2.a >> (3346u % 32u), _wgslsmith_sub_u32(_wgslsmith_div_u32(var_2.a, 0u), 0u), var_2.a), _wgslsmith_f_op_vec2_f32(var_0 + _wgslsmith_f_op_vec2_f32(-var_0)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), -1188f, _wgslsmith_f_op_f32(floor(var_0.x))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> i32 {
    var var_0 = false;
    var var_1 = Struct_2(_wgslsmith_add_u32(55520u, 1u ^ (_wgslsmith_clamp_u32(arg_1.a, arg_1.a, 4294967295u) >> (_wgslsmith_sub_u32(43144u, 41958u) % 32u))));
    var var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(arg_3.b.x, _wgslsmith_add_u32(~4294967295u, arg_0.b.x), _wgslsmith_mod_u32(abs(var_1.a), arg_3.b.x)), vec3<u32>(_wgslsmith_dot_vec2_u32(arg_0.b.xz, arg_0.b.xy), firstTrailingBit(var_1.a), _wgslsmith_clamp_u32(1u, countOneBits(_wgslsmith_add_u32(0u, 4294967295u)), 1u)));
    var_0 = all(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, any(vec3<bool>(true, true, false)), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, any(vec3<bool>(false, true, false)), true, true), vec4<bool>(all(vec3<bool>(true, true, false)), true, true, true), !any(vec3<bool>(true, true, false))), -1000f <= arg_3.d.x));
    var var_3 = Struct_2(4294967295u);
    return _wgslsmith_add_i32(_wgslsmith_mod_i32(arg_3.a, ~_wgslsmith_dot_vec4_i32(vec4<i32>(35173i, -68296i, -41095i, arg_3.a), vec4<i32>(u_input.a, 38526i, 20408i, -23077i))) ^ _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(36874i, 13834i, -6004i), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.a, 2147483647i, arg_3.a), vec3<i32>(2147483647i, arg_3.a, arg_0.a))), ~(vec3<i32>(0i, 35704i, -1i) | vec3<i32>(arg_3.a, 2147483647i, 9391i))), _wgslsmith_dot_vec4_i32(min(firstLeadingBit(vec4<i32>(0i, arg_0.a, -72100i, arg_0.a)), select(vec4<i32>(1i, arg_3.a, arg_2, arg_2), vec4<i32>(arg_3.a, arg_3.a, arg_3.a, u_input.a), false) ^ (vec4<i32>(arg_3.a, arg_0.a, u_input.a, arg_2) ^ vec4<i32>(0i, -27678i, u_input.b, 1i))), vec4<i32>(-24418i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_0.a) ^ vec2<i32>(-2147483647i, arg_3.a), vec2<i32>(arg_2, u_input.b)), -1i << (var_1.a % 32u), reverseBits(firstTrailingBit(0i)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: i32) -> i32 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-475f + 1176f), _wgslsmith_div_f32(464f, -1540f)) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(379f, -1257f), vec2<f32>(-581f, var_0.d.x)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2.c.x, arg_2.d.x)))))), arg_2.c)) + _wgslsmith_f_op_vec2_f32(arg_2.c + vec2<f32>(_wgslsmith_f_op_f32(min(-1637f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)))));
    var_0 = Struct_1(select(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(-1i, 28800i, var_0.a, u_input.b)), ~firstTrailingBit(vec4<i32>(2147483647i, var_0.a, -1i, arg_0.x))), func_3(arg_2, Struct_2(arg_2.b.x), countOneBits(_wgslsmith_mod_i32(-71959i, var_0.a)), arg_2), _wgslsmith_f_op_f32(-141f * _wgslsmith_f_op_f32(-219f + arg_2.c.x)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -309f) - _wgslsmith_f_op_f32(min(-528f, var_1.x)))), ~_wgslsmith_div_vec3_u32(firstTrailingBit(~vec3<u32>(var_0.b.x, arg_2.b.x, 37511u)), vec3<u32>(var_0.b.x, 54780u >> (var_0.b.x % 32u), arg_2.b.x ^ 1u)), vec2<f32>(_wgslsmith_f_op_f32(-811f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(473f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(245f)) - -423f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -426f)))), arg_2.d);
    var var_2 = 7401i;
    let var_3 = vec3<bool>(any(arg_1), false, true);
    return firstTrailingBit(_wgslsmith_mod_i32(~(-(1i << (var_0.b.x % 32u))), -55044i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(2147483647i);
    var_0 = (-1i ^ _wgslsmith_add_i32(func_1(vec2<i32>(-22670i, u_input.b) & vec2<i32>(56816i, 0i), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), true), Struct_1(u_input.a, vec3<u32>(48419u, 20700u, 4294967295u), vec2<f32>(-995f, -264f), vec3<f32>(-450f, 1813f, -1578f)), u_input.b & 23982i), -21610i)) >> (1u % 32u);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(966f, 178f), vec2<f32>(-475f, 2084f))) + _wgslsmith_div_vec2_f32(vec2<f32>(-1977f, -1813f), vec2<f32>(-195f, -266f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1813f, -675f))), 485f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-707f, 656f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2089f, 107f)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(675f, -483f))))))));
    var var_2 = Struct_1(abs(_wgslsmith_dot_vec3_i32(max(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, -20121i), vec3<i32>(u_input.b, u_input.a, -20191i)), -vec3<i32>(u_input.b, -48334i, -41095i)), abs(abs(vec3<i32>(u_input.b, u_input.a, u_input.b))))), ~reverseBits(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(1u, 45539u, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 23220u), vec3<u32>(0u, 1u, 72130u), vec3<u32>(4294967295u, 8126u, 74692u)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(abs(-224f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, 446f), var_1) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(258f, var_1.x)))))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -2237f, -2045f))))), func_2().d)));
    var_0 = _wgslsmith_dot_vec4_i32(firstTrailingBit(~(-(vec4<i32>(21073i, var_2.a, var_2.a, var_2.a) >> (vec4<u32>(18455u, 0u, 0u, var_2.b.x) % vec4<u32>(32u))))), max(reverseBits(max(vec4<i32>(2147483647i, 1i, var_2.a, var_2.a), vec4<i32>(1i, -18059i, var_2.a, 35269i))) >> (abs(vec4<u32>(var_2.b.x, var_2.b.x, 1u, 111872u)) % vec4<u32>(32u)), -abs(vec4<i32>(28297i, var_2.a, var_2.a, u_input.a) << (vec4<u32>(var_2.b.x, 26432u, 31097u, var_2.b.x) % vec4<u32>(32u)))));
    var_0 = ~u_input.a;
    var var_3 = _wgslsmith_mod_u32(countOneBits(~44069u), ~(~var_2.b.x));
    let var_4 = var_2.c;
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.c.x, -150f, -1455f, 1921f), vec4<f32>(var_1.x, var_4.x, 488f, 914f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_4.x, var_1.x, var_1.x))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-178f, -1005f, -921f, 1642f)), vec4<f32>(var_2.c.x, -338f, var_4.x, var_1.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, -11176i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(775f, -1000f) * var_2.c.x));
}

