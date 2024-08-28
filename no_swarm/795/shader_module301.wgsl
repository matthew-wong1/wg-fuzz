struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32 = 1u;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> bool {
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32, arg_3: vec2<u32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_mult_i32(~u_input.a, -2147483647i) | ~_wgslsmith_div_i32(arg_1.x, arg_0.a), select(!arg_0.b, vec3<bool>(!arg_0.b.x, true, false), arg_0.b.x));
    let var_1 = arg_2;
    let var_2 = ~_wgslsmith_clamp_vec2_u32(arg_3, _wgslsmith_mult_vec2_u32(min(arg_3, vec2<u32>(21116u, arg_3.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_2, 11645u), vec2<u32>(arg_3.x, arg_3.x))), _wgslsmith_sub_vec2_u32(select(select(vec2<u32>(arg_3.x, 64422u), arg_3, var_0.b.x), ~vec2<u32>(var_1, arg_3.x), arg_0.b.x), _wgslsmith_div_vec2_u32(countOneBits(arg_3), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_3.x, 109140u), vec2<u32>(4294967295u, arg_3.x)))));
    return ~arg_0.a;
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = -536f;
    let var_1 = Struct_1(func_3(Struct_1(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a, u_input.a), ~u_input.a), vec3<bool>(false, true, true)), vec2<i32>(u_input.a, abs(1i)), ~(~(~17287u)), ~vec2<u32>(3797u, firstLeadingBit(0u))), select(select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, true)), true, all(vec2<bool>(true, true))), true), vec3<bool>(!any(vec4<bool>(true, true, false, true)), true, true), !(_wgslsmith_f_op_f32(step(-259f, -858f)) != _wgslsmith_div_f32(-404f, -1534f))));
    let var_2 = vec2<u32>(_wgslsmith_div_u32(abs(1u), ~(~(~21894u))), ~23132u);
    let var_3 = var_2.x == reverseBits(_wgslsmith_add_u32(var_2.x, 1u) | var_2.x);
    let var_4 = firstLeadingBit(min(vec4<u32>(var_2.x, firstLeadingBit(1u), _wgslsmith_div_u32(var_2.x, var_2.x), var_2.x) << (firstTrailingBit(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x) ^ vec4<u32>(4294967295u, var_2.x, 1u, var_2.x)) % vec4<u32>(32u)), vec4<u32>(27828u, firstTrailingBit(14678u), _wgslsmith_add_u32(0u, var_2.x), min(19431u, var_2.x)) | vec4<u32>(1u, abs(0u), var_2.x, min(var_2.x, var_2.x))));
    return ~_wgslsmith_clamp_u32(7317u | select(22864u, var_2.x, true), _wgslsmith_dot_vec2_u32(vec2<u32>(10975u, var_4.x), var_4.xx), reverseBits(_wgslsmith_sub_u32(11292u, var_2.x))) >> (((1u & min(_wgslsmith_mult_u32(var_4.x, var_2.x), max(1u, 0u))) ^ var_4.x) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<i32>(-1i) * -abs(vec2<i32>(u_input.a, -2147483647i)), reverseBits(-vec2<i32>(24815i, u_input.a)) >> (vec2<u32>(4294967295u, _wgslsmith_div_u32(42689u, 837u)) % vec2<u32>(32u)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), func_1(4294967295u, Struct_1(u_input.a, vec3<bool>(false, true, true)))), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true)))) >> (~(~vec2<u32>(40585u, 35157u) << (vec2<u32>(func_2(287f), ~21657u) % vec2<u32>(32u))) % vec2<u32>(32u));
    global1 = ~0u;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1197f + -345f), _wgslsmith_f_op_f32(f32(-1f) * -644f))) * 1414f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1373f) + -993f), any(vec3<bool>(true, true, any(vec2<bool>(true, false)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -395f)))));
    var var_2 = Struct_1(-31412i, !select(vec3<bool>(true, func_1(0u, Struct_1(u_input.a, vec3<bool>(true, false, false))), var_0.x >= u_input.a), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), !all(vec3<bool>(true, false, true))));
    let var_3 = max(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, abs(0u)), ~vec4<u32>(60299u, 0u, 21633u, 990u) | firstTrailingBit(vec4<u32>(31815u, 0u, 1u, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 72993u, 4294967295u, 64804u), vec4<u32>(0u, 59942u, 4294967295u, 14452u))), ~abs(vec4<u32>(1u, 1u, 1u, 1u))) >> (vec4<u32>(countOneBits(~4294967295u), _wgslsmith_clamp_u32(abs(~0u), select(1u, 4294967295u, false), 1u), countOneBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 46655u, 39516u), vec3<u32>(1u, 18365u, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 8225u, 0u), vec3<u32>(88905u, 28576u, 4294967295u)), ~28268u)), abs(max(~15764u, 3643u))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(abs(var_3.x), var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1)))), vec2<i32>(var_2.a, abs(abs(u_input.a))));
}

