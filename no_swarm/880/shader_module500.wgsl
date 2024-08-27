struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: bool,
    d: vec2<u32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: bool) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 410f) + vec2<f32>(462f, -1072f)))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -144f), _wgslsmith_div_f32(139f, -1000f)), _wgslsmith_f_op_f32(max(-252f, _wgslsmith_f_op_f32(-485f + 779f))))), _wgslsmith_f_op_f32(f32(-1f) * -462f), arg_1.d.x << (_wgslsmith_add_u32(22734u, u_input.c.x) % 32u));
    let var_1 = !select(select(arg_0, select(!vec3<bool>(arg_1.c, arg_0.x, true), !arg_0, select(vec3<bool>(true, arg_2, arg_0.x), arg_0, arg_0)), vec3<bool>(var_0.b < var_0.b, true, true)), select(select(!arg_0, select(vec3<bool>(arg_0.x, true, true), arg_0, vec3<bool>(false, arg_2, arg_1.c)), arg_0), vec3<bool>(!arg_0.x, u_input.c.x >= 1u, arg_2), vec3<bool>(any(vec2<bool>(arg_1.c, true)), true, true)), any(!(!arg_0)));
    let var_2 = var_0;
    let var_3 = arg_1;
    var var_4 = 62714u;
    return -_wgslsmith_mod_i32(~(-_wgslsmith_dot_vec2_i32(var_3.a, vec2<i32>(2147483647i, arg_1.a.x))), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(var_3.a.x, -2147483647i, -28404i, -8265i)), vec4<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, arg_1.e, var_3.e), vec4<i32>(-1i, 1i, arg_1.e, -8381i)), var_3.a.x, u_input.a)));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_4) -> u32 {
    let var_0 = arg_2.a;
    var var_1 = _wgslsmith_mod_u32(~4294967295u, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(~19717u, u_input.c.x)), _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(25491u, var_0.b.x)), vec2<u32>(~19356u, firstLeadingBit(u_input.c.x)))));
    let var_2 = vec3<bool>((_wgslsmith_mult_i32(~2986i, var_0.e) <= _wgslsmith_add_i32(max(-1i, var_0.a.x), func_3(vec3<bool>(arg_1, var_0.c, arg_2.a.c), var_0, true))) || false, !(var_0.c || !all(vec4<bool>(true, false, var_0.c, true))), true);
    var var_3 = var_0.c;
    var var_4 = ~firstLeadingBit(vec3<u32>(~(~25658u), _wgslsmith_clamp_u32(~0u, firstTrailingBit(1u), arg_2.a.b.x), _wgslsmith_sub_u32(0u, arg_2.a.b.x) & 4294967295u));
    return arg_2.d.b.x;
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    var var_0 = Struct_1(func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, 695f) + arg_0.b), true, Struct_4(Struct_3(-vec2<i32>(0i, 2147483647i), _wgslsmith_div_vec3_u32(vec3<u32>(30222u, 21388u, u_input.c.x), vec3<u32>(u_input.c.x, arg_0.c, u_input.c.x)), true, reverseBits(u_input.c), _wgslsmith_mod_i32(u_input.a, u_input.a)), ~(~vec3<u32>(arg_0.c, 18043u, 1u)), Struct_1(arg_0.c), Struct_3(-vec2<i32>(12878i, 1i), ~vec3<u32>(1u, 4294967295u, 0u), true, select(vec2<u32>(arg_0.c, 1u), vec2<u32>(u_input.b, 39438u), vec2<bool>(true, false)), u_input.a), func_3(vec3<bool>(true, true, true), Struct_3(vec2<i32>(u_input.a, u_input.a), vec3<u32>(214u, u_input.c.x, 0u), false, vec2<u32>(u_input.b, 15672u), u_input.a), true))));
    var var_1 = 1u;
    let var_2 = vec2<i32>(_wgslsmith_sub_i32(u_input.a, -1i), -91720i);
    let var_3 = Struct_1(arg_0.c);
    var var_4 = Struct_4(Struct_3(vec2<i32>(var_2.x, var_2.x), ~countOneBits(countOneBits(vec3<u32>(u_input.b, 47616u, var_0.a))), true, u_input.c & ~min(u_input.c, vec2<u32>(19u, 39765u)), var_2.x), ~vec3<u32>(firstTrailingBit(~4294967295u), ~(~var_3.a), 1u), var_3, Struct_3(var_2, ~vec3<u32>(var_3.a, abs(4294967295u), 62222u >> (var_3.a % 32u)), all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), true)), ~(~abs(u_input.c)), -var_2.x), var_2.x >> ((~_wgslsmith_div_u32(0u, 86204u) & _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_3.a, 7027u, 1u), ~4294967295u, ~var_3.a)) % 32u));
    return Struct_3(reverseBits(var_2), ~firstLeadingBit(firstLeadingBit(vec3<u32>(116633u, 4294967295u, arg_0.c))), false, min(~reverseBits(select(u_input.c, var_4.a.b.zy, vec2<bool>(var_4.a.c, false))), select(countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(var_3.a, var_0.a), vec2<u32>(52904u, arg_0.c))), ~select(vec2<u32>(0u, u_input.b), vec2<u32>(arg_0.c, 61738u), var_4.a.c), select(!vec2<bool>(var_4.d.c, var_4.a.c), !vec2<bool>(var_4.a.c, var_4.a.c), vec2<bool>(true, true)))), _wgslsmith_clamp_i32(~(-min(0i, var_2.x)), i32(-1i) * -2147483647i, i32(-1i) * -min(var_2.x, -2147483647i)));
}

fn func_1(arg_0: i32) -> vec2<f32> {
    var var_0 = abs(~_wgslsmith_mult_vec2_u32(~abs(vec2<u32>(4294967295u, 4294967295u)), u_input.c));
    let var_1 = false;
    var_0 = vec2<u32>(4294967295u, abs(abs(_wgslsmith_add_u32(u_input.b, 4294967295u) ^ (31576u | var_0.x))));
    let var_2 = func_2(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1093f, 1166f))))), 1000f, ~select(~u_input.c.x, var_0.x, select(var_1, var_1, false))));
    let var_3 = _wgslsmith_clamp_u32(u_input.b, 1u, abs(~(~1u)));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(772f, -791f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(2169f)), 1f, var_3 >= 0u))), 540f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(433f)), -2238f)));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(639f)), _wgslsmith_f_op_f32(309f * var_0.x));
    var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(-u_input.a)), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x + 514f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), any(vec3<bool>(false, false, false)))))))));
    var_0 = vec2<f32>(var_0.x, -198f);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1740f), -927f) - vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(i32(-1i) * -4993i, 2147483647i, -22005i, ~abs(u_input.a)), ~0i ^ _wgslsmith_add_i32(_wgslsmith_sub_i32(~u_input.a, 1i | u_input.a), u_input.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 873f) * vec2<f32>(var_0.x, -1051f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1027f) * vec2<f32>(var_0.x, var_0.x))))) * vec2<f32>(_wgslsmith_div_f32(1f, 1f), _wgslsmith_f_op_f32(-var_0.x))), var_0.x);
}

