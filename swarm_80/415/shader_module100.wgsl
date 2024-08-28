struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(vec3<u32>(60441u, 22334u, 0u), false), Struct_1(vec3<u32>(68246u, 0u, 22543u), true)), Struct_2(Struct_1(vec3<u32>(1u, 0u, 0u), true), Struct_1(vec3<u32>(20676u, 21692u, 2570u), false)), Struct_2(Struct_1(vec3<u32>(67666u, 4551u, 64777u), true), Struct_1(vec3<u32>(0u, 1u, 1u), true)), Struct_2(Struct_1(vec3<u32>(29313u, 41988u, 0u), true), Struct_1(vec3<u32>(4294967295u, 66150u, 1u), true)), Struct_2(Struct_1(vec3<u32>(63345u, 73680u, 133u), true), Struct_1(vec3<u32>(26507u, 4294967295u, 4294967295u), false)), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 3881u), true), Struct_1(vec3<u32>(31295u, 73980u, 4294967295u), false)), Struct_2(Struct_1(vec3<u32>(19848u, 31351u, 14967u), true), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), true)), Struct_2(Struct_1(vec3<u32>(46263u, 5526u, 80404u), true), Struct_1(vec3<u32>(29740u, 4294967295u, 85693u), true)), Struct_2(Struct_1(vec3<u32>(0u, 68579u, 1u), false), Struct_1(vec3<u32>(4294967295u, 1684u, 28227u), true)), Struct_2(Struct_1(vec3<u32>(124647u, 4294967295u, 0u), true), Struct_1(vec3<u32>(0u, 1u, 16320u), true)), Struct_2(Struct_1(vec3<u32>(1u, 23512u, 4294967295u), true), Struct_1(vec3<u32>(53010u, 4294967295u, 96944u), true)), Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 0u), false), Struct_1(vec3<u32>(17953u, 1u, 4294967295u), true)), Struct_2(Struct_1(vec3<u32>(14398u, 0u, 14251u), false), Struct_1(vec3<u32>(4778u, 1u, 4294967295u), false)), Struct_2(Struct_1(vec3<u32>(1u, 18999u, 1u), false), Struct_1(vec3<u32>(1u, 0u, 20403u), true)), Struct_2(Struct_1(vec3<u32>(40195u, 22343u, 0u), true), Struct_1(vec3<u32>(0u, 10263u, 68633u), true)), Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 0u), true), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), true)), Struct_2(Struct_1(vec3<u32>(12670u, 4294967295u, 50101u), false), Struct_1(vec3<u32>(36014u, 42450u, 24844u), false)), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 51162u), true), Struct_1(vec3<u32>(69971u, 132366u, 5841u), false)), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), false), Struct_1(vec3<u32>(4294967295u, 11842u, 92023u), false)), Struct_2(Struct_1(vec3<u32>(1u, 0u, 88039u), false), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), true)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<bool> {
    var var_0 = arg_1;
    var_0 = Struct_1(firstTrailingBit(~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, arg_1.a.x, 18550u), vec3<u32>(u_input.c, u_input.a, var_0.a.x))), !any(select(select(vec3<bool>(var_0.b, arg_1.b, false), vec3<bool>(var_0.b, arg_1.b, true), vec3<bool>(false, arg_1.b, true)), vec3<bool>(var_0.b, true, true), select(vec3<bool>(var_0.b, var_0.b, false), vec3<bool>(arg_1.b, false, false), vec3<bool>(arg_1.b, false, arg_1.b)))));
    var var_1 = -1241f;
    let var_2 = -(vec3<i32>(-1i, _wgslsmith_clamp_i32(-arg_0, 17508i, arg_0 & u_input.b.x), abs(min(1i, arg_0))) << (var_0.a % vec3<u32>(32u)));
    return vec3<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(arg_1.b, false), select(vec2<bool>(arg_1.b, true), vec2<bool>(arg_1.b, arg_1.b), var_0.b), select(vec2<bool>(arg_1.b, false), vec2<bool>(true, true), var_0.b)), vec2<bool>(false, arg_1.b))), all(!select(!vec4<bool>(var_0.b, true, var_0.b, true), select(vec4<bool>(arg_1.b, true, true, false), vec4<bool>(arg_1.b, arg_1.b, arg_1.b, var_0.b), false), var_0.b)), !(_wgslsmith_clamp_i32(1i, var_2.x | 0i, -5484i) > (-10931i >> (arg_1.a.x % 32u))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<f32>) -> vec3<bool> {
    global0 = array<Struct_2, 20>();
    var var_0 = _wgslsmith_add_i32(-195i, 1i);
    var var_1 = reverseBits(select(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(4294967295u, 13825u, u_input.a)), countOneBits(vec3<u32>(0u, u_input.a, 37645u))), max(vec3<u32>(0u, ~u_input.c, 111342u), select(abs(vec3<u32>(4294967295u, u_input.c, 28247u)), vec3<u32>(75391u, u_input.a, u_input.c) | vec3<u32>(4294967295u, u_input.c, 1u), true)), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), func_3(u_input.b.x, Struct_1(vec3<u32>(70328u, 0u, 23563u), true), arg_1), true), ~u_input.c != _wgslsmith_add_u32(u_input.a, u_input.c))));
    var_1 = ~abs(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(43739u, var_1.x, 137315u), vec3<u32>(0u, u_input.c, var_1.x)), var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 6532u, 0u, var_1.x), vec4<u32>(4294967295u, 0u, var_1.x, var_1.x))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1072f, _wgslsmith_f_op_f32(-942f * _wgslsmith_div_f32(arg_1.x, arg_1.x)))) * arg_1.x) * arg_1.x);
    return !vec3<bool>(!(!func_3(-52481i, Struct_1(vec3<u32>(u_input.a, 4294967295u, var_1.x), true), vec2<f32>(arg_0.x, arg_1.x)).x), all(vec2<bool>(all(vec3<bool>(true, false, true)), true)), false);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> Struct_1 {
    var var_0 = any(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-324f, -115f, -361f), vec3<f32>(-919f, -797f, 148f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1556f, -278f))))));
    let var_1 = vec3<i32>(_wgslsmith_clamp_i32(u_input.b.x, -firstTrailingBit(-52412i), _wgslsmith_dot_vec3_i32(u_input.b, _wgslsmith_sub_vec3_i32(u_input.b, u_input.b))), u_input.d.x, 1i) << (_wgslsmith_sub_vec3_u32(~(countOneBits(arg_0.a) & arg_0.a), ~(~vec3<u32>(0u, 1u, arg_2))) % vec3<u32>(32u));
    let var_2 = Struct_2(Struct_1(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1, 1u, u_input.a), vec4<u32>(1u, u_input.a, arg_1, u_input.c)), arg_1 ^ u_input.c, u_input.c), false), arg_0);
    var var_3 = Struct_2(arg_0, var_2.b);
    let var_4 = Struct_1(_wgslsmith_sub_vec3_u32((var_3.a.a ^ ~vec3<u32>(22437u, 4294967295u, arg_1)) & vec3<u32>(~arg_2, ~u_input.a, 6241u & arg_2), arg_0.a << (~var_2.a.a % vec3<u32>(32u))), true);
    return Struct_1(max(~(~vec3<u32>(var_2.b.a.x, 4294967295u, var_4.a.x)) & (vec3<u32>(arg_0.a.x, 4294967295u, var_4.a.x) & arg_0.a), firstLeadingBit(var_3.a.a)), all(select(vec2<bool>(true, true), func_3(-1i, Struct_1(var_4.a, arg_0.b), vec2<f32>(1000f, 557f)).xx, !var_4.b)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    global0 = array<Struct_2, 20>();
    var var_0 = arg_2;
    let var_1 = Struct_2(Struct_1(reverseBits(vec3<u32>(var_0.b.a.x, _wgslsmith_add_u32(u_input.a, arg_3.a.x), var_0.a.a.x & var_0.b.a.x)), true), arg_0);
    let var_2 = !(!vec2<bool>((var_0.b.a.x & arg_0.a.x) == 0u, !var_0.a.b));
    var var_3 = ~((u_input.b << (vec3<u32>(min(arg_3.a.x, 1u), var_1.a.a.x, arg_3.a.x) % vec3<u32>(32u))) | _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(arg_1, 14149i), _wgslsmith_add_i32(u_input.b.x, u_input.b.x), -1i), ~_wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(25471i, arg_1, 45129i))));
    return func_1(func_1(var_0.a, max(var_0.a.a.x, 3118u), var_1.b.a.x), reverseBits(arg_2.a.a.x), ~0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(26447u, u_input.a, 1u), vec3<u32>(u_input.c, 4294967295u, u_input.c)) << (_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.c, 37937u), vec3<u32>(46536u, u_input.a, u_input.c)) % vec3<u32>(32u)), !(u_input.c == 0u)), ~(~(4294967295u ^ u_input.c)), ~(~u_input.a << (u_input.a % 32u))), 2147483647i, Struct_2(func_1(Struct_1(~vec3<u32>(u_input.c, u_input.c, u_input.a), true), _wgslsmith_clamp_u32(37914u, 14802u, ~1u), _wgslsmith_div_u32(u_input.c & u_input.c, 48421u)), Struct_1(~(~vec3<u32>(1u, 127065u, u_input.a)), true)), func_1(func_1(func_1(Struct_1(vec3<u32>(u_input.a, 4839u, 4294967295u), true), u_input.a, u_input.c), u_input.a, ~1u), u_input.a, ~select(u_input.c | 64161u, _wgslsmith_mult_u32(55644u, 1u), false)));
    let var_1 = Struct_1(_wgslsmith_add_vec3_u32(~max(~var_0.a, firstLeadingBit(vec3<u32>(0u, 84526u, 0u))), ~var_0.a), func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1364f, -1046f, 800f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1681f, 873f, -1188f), vec3<f32>(1000f, 600f, -1134f)), _wgslsmith_div_vec3_f32(vec3<f32>(-202f, 1396f, -365f), vec3<f32>(-1153f, 1106f, -921f)), func_3(12117i, var_0, vec2<f32>(-976f, -722f)).x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(854f, 594f))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1473f, -1704f), vec2<f32>(1033f, -811f)))))).x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2471f, 890f, -217f, 929f)), false)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1071f), -1205f, _wgslsmith_div_f32(-761f, 621f), _wgslsmith_f_op_f32(abs(576f))), !vec4<bool>(var_1.b, true, var_0.b, var_1.b))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(select(-541f, _wgslsmith_f_op_f32(step(-412f, 116f)), func_4(var_1, u_input.b.x, Struct_2(var_0, var_1), var_1).b)), 484f)));
}

