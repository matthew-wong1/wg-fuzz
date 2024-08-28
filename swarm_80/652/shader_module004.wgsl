struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<i32>(0i, 2147483647i, i32(-2147483648)), -724f), Struct_1(vec3<i32>(64175i, 4812i, -1i), -1575f), Struct_1(vec3<i32>(0i, -52251i, 0i), 646f), Struct_1(vec3<i32>(2147483647i, 28206i, -23465i), -1028f), Struct_1(vec3<i32>(2147483647i, -1i, -1i), 1233f), Struct_1(vec3<i32>(12274i, -1i, -1i), -752f), Struct_1(vec3<i32>(-80761i, -67803i, 1i), 448f), Struct_1(vec3<i32>(2147483647i, 20303i, i32(-2147483648)), -141f), Struct_1(vec3<i32>(85722i, 18033i, 0i), -266f), Struct_1(vec3<i32>(29893i, i32(-2147483648), i32(-2147483648)), -655f));

var<private> global1: f32 = -372f;

var<private> global2: vec2<f32>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec4<bool>) -> vec4<u32> {
    global0 = array<Struct_1, 10>();
    let var_0 = Struct_1(vec3<i32>(-52318i, reverseBits(firstTrailingBit(-7015i)), reverseBits(_wgslsmith_add_i32(~(-1i), 2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1241f)));
    let var_1 = !(!arg_3.x && select(false, arg_3.x | arg_3.x, any(vec3<bool>(true, arg_3.x, arg_3.x)) & true));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-232f, arg_0.b)), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, -471f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-261f, 2610f))), any(arg_3) || var_1)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, _wgslsmith_f_op_f32(min(-2404f, -165f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(270f, 312f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -1202f) + vec2<f32>(814f, -360f))))));
    let var_2 = vec3<u32>(countOneBits(min(10471u, 4294967295u)) >> (1u % 32u), firstTrailingBit(_wgslsmith_clamp_u32(min(0u, 4294967295u), abs(1742u), max(78014u, 21054u))), max(~1u, ~(~22322u))) ^ min(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(21507u, 0u, 0u), vec3<u32>(1u, 11140u, 34609u)), vec3<u32>(1u, _wgslsmith_clamp_u32(84971u, 33041u, 0u), 1u)), abs(vec3<u32>(max(722u, 4294967295u), min(22646u, 0u), ~4294967295u)));
    return vec4<u32>(_wgslsmith_sub_u32(~(~(~0u)), ~(reverseBits(59692u) | _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<u32>(1u, var_2.x, 4294967295u, var_2.x)))), abs(0u), firstLeadingBit(abs(var_2.x)), _wgslsmith_sub_u32(var_2.x, select(~43538u, abs(var_2.x), -332f > _wgslsmith_f_op_f32(-313f * var_0.b))));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec4<bool>) -> Struct_1 {
    global0 = array<Struct_1, 10>();
    global1 = -1162f;
    let var_0 = _wgslsmith_clamp_vec4_u32(~abs(firstTrailingBit(func_3(Struct_1(vec3<i32>(1i, -1i, 74069i), arg_0), arg_0, Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), arg_0), vec4<bool>(true, true, false, true)))), vec4<u32>(1u, 1u, 88251u, _wgslsmith_sub_u32(25503u, _wgslsmith_clamp_u32(59158u, max(11374u, 4294967295u), 1u))), ~vec4<u32>(~(~127162u), _wgslsmith_clamp_u32(4294967295u, ~25756u, countOneBits(39515u)), _wgslsmith_dot_vec4_u32(func_3(global0[_wgslsmith_index_u32(1u, 10u)], 2735f, Struct_1(vec3<i32>(-2147483647i, 45509i, u_input.a.x), arg_0), arg_2), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(58086u, 3830u, 4294967295u), ~vec3<u32>(4294967295u, 10901u, 0u))));
    var var_1 = all(vec3<bool>(select(var_0.x << (68602u % 32u), ~0u, true) >= ~var_0.x, select(~52033u <= ~var_0.x, true, select(15966u, 12246u, arg_2.x) < 6350u), arg_2.x));
    let var_2 = ~var_0.xz;
    return Struct_1(-u_input.a, _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -708f))));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: vec3<i32>) -> i32 {
    let var_0 = 46567i;
    var var_1 = func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1178f)), _wgslsmith_f_op_f32(-1202f * _wgslsmith_f_op_f32(-global2.x)))), !(!(!arg_1 & !arg_1)), !vec4<bool>(false, arg_1, all(select(vec4<bool>(true, arg_1, false, arg_1), vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(arg_1, false, arg_1, arg_1))), true));
    var var_2 = select(vec3<bool>(false, arg_1, !(func_2(-786f, false, vec4<bool>(true, false, false, arg_1)).b <= global2.x)), vec3<bool>(false, !all(select(vec3<bool>(arg_1, true, true), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, true, true))), arg_1), vec3<bool>(!arg_1, true, false));
    let var_3 = func_2(_wgslsmith_f_op_f32(var_1.b - -1754f), false, vec4<bool>(!arg_1, !var_2.x, all(var_2.yx), true == !(!var_2.x)));
    global0 = array<Struct_1, 10>();
    return _wgslsmith_sub_i32(~var_3.a.x, -46839i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_clamp_vec3_i32(~_wgslsmith_clamp_vec3_i32(u_input.a, select(vec3<i32>(-9334i, u_input.a.x, -245i), vec3<i32>(4005i, u_input.a.x, 38795i), false), abs(vec3<i32>(u_input.a.x, 1i, u_input.a.x))), vec3<i32>(func_1(vec4<i32>(u_input.a.x, 75347i, 0i, u_input.a.x) >> (vec4<u32>(1u, 37795u, 4294967295u, 65329u) % vec4<u32>(32u)), true, vec3<i32>(u_input.a.x, u_input.a.x, 34525i)), abs(1i), _wgslsmith_clamp_i32(-u_input.a.x, reverseBits(-38914i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1848i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(27250i, u_input.a.x, 5390i, u_input.a.x)))), vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, -2147483647i), _wgslsmith_clamp_i32(35574i, u_input.a.x, -2147483647i)) << (vec3<u32>(4294967295u, _wgslsmith_div_u32(73991u, 25434u), select(20242u, 16177u, false)) % vec3<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1085f, _wgslsmith_f_op_f32(-1f))), -243f));
    global0 = array<Struct_1, 10>();
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_0.b)))), var_0.b)))));
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -1599f)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, 1907f), vec2<f32>(-1296f, -550f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1111f, 1000f)))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(400f, -208f)) - vec2<f32>(global2.x, var_0.b)))));
    var var_1 = _wgslsmith_f_op_f32(-606f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)) - 2419f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -931f), _wgslsmith_f_op_f32(var_0.b + -1000f), var_0.b, _wgslsmith_f_op_f32(-var_0.b)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, var_0.b, 908f))))), vec2<u32>(1u, 1u), vec2<f32>(var_0.b, -2355f), abs(vec4<u32>(countOneBits(4294967295u), min(72397u, 4294967295u), _wgslsmith_clamp_u32(13769u, 4294967295u, 10160u), ~1u) ^ ~(~vec4<u32>(0u, 17515u, 44397u, 42318u))));
}

