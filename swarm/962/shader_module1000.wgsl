struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(25749i, 8761i, -36437i);

var<private> global1: array<vec4<i32>, 13>;

var<private> global2: array<Struct_1, 1>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec4<u32> {
    let var_0 = min(0u, 12989u);
    var var_1 = arg_0;
    global1 = array<vec4<i32>, 13>();
    var var_2 = -max(-2147483647i, -2147483647i);
    let var_3 = u_input.a.yxw;
    return reverseBits(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, arg_0.b, u_input.d, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_0.b, 25433u, var_3.x), u_input.a)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(0i, arg_2.e.x), reverseBits(countOneBits(select(_wgslsmith_mod_vec2_i32(vec2<i32>(-17087i, 2147483647i), vec2<i32>(6298i, arg_2.e.x)), ~global0.xx, false))));
    var var_1 = -1684f;
    let var_2 = global2[_wgslsmith_index_u32(167828u, 1u)];
    var var_3 = arg_2;
    let var_4 = func_2(Struct_1(vec3<bool>(false, true, arg_2.a.x), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c - _wgslsmith_f_op_f32(min(arg_2.c, var_3.c)))), -_wgslsmith_clamp_i32(u_input.e << (4294967295u % 32u), 2147483647i, 2147483647i | var_3.e.x), vec2<i32>(_wgslsmith_div_i32(var_2.e.x, 0i), 0i)), Struct_1(!select(!var_2.a, var_3.a, arg_2.a), max(select(32371u, 3350u, arg_0), reverseBits(23371u)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(17884u, var_2.b, 1411u), vec3<u32>(var_3.b, u_input.a.x, var_3.b) << (u_input.a.xyy % vec3<u32>(32u))), arg_3, 21993i, vec2<i32>(arg_2.e.x, -firstLeadingBit(var_0.x))), 1u).x;
    return Struct_1(vec3<bool>(true, true, true), _wgslsmith_div_u32(~arg_1, ~26774u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-156f, -2048f)) - 602f)), var_3.d, var_3.e);
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    let var_0 = func_3(true, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0.x, 10284u, u_input.b, 1u), arg_0), vec4<u32>(u_input.d, 745u, ~arg_0.x, ~4294967295u) << (_wgslsmith_mod_vec4_u32(func_2(Struct_1(vec3<bool>(true, true, true), u_input.d, 202f, -2147483647i, global0.xx), global2[_wgslsmith_index_u32(13832u, 1u)], 1u), _wgslsmith_mod_vec4_u32(u_input.a, u_input.a)) % vec4<u32>(32u))), global2[_wgslsmith_index_u32(~u_input.d, 1u)], -859f);
    global2 = array<Struct_1, 1>();
    var var_1 = func_3(max(~arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(65758u, u_input.b) >> (arg_0.yx % vec2<u32>(32u)), ~vec2<u32>(28358u, var_0.b))) == ~abs(1u), var_0.b, func_3(!var_0.a.x, arg_0.x, Struct_1(func_3(var_0.e.x == 0i, 72818u, Struct_1(var_0.a, u_input.b, -339f, var_0.e.x, vec2<i32>(u_input.e, u_input.c)), _wgslsmith_f_op_f32(-var_0.c)).a, abs(~arg_0.x), -1147f, 2147483647i, global0.yz), func_3(any(vec4<bool>(false, var_0.a.x, false, false)) && !var_0.a.x, 0u, func_3(func_3(var_0.a.x, u_input.d, Struct_1(vec3<bool>(false, false, false), 4294967295u, var_0.c, var_0.e.x, vec2<i32>(var_0.d, 0i)), var_0.c).a.x, ~29943u, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.x, arg_0.x), 1u)], var_0.c), var_0.c).c), _wgslsmith_f_op_f32(ceil(var_0.c)));
    let var_2 = global2[_wgslsmith_index_u32(26521u, 1u)];
    var_1 = Struct_1(select(select(vec3<bool>(var_0.a.x, true, any(vec4<bool>(true, var_2.a.x, var_1.a.x, var_0.a.x))), vec3<bool>(true, true | var_1.a.x, var_1.a.x), !var_0.a), var_0.a, var_1.a.x), 16986u, _wgslsmith_f_op_f32(round(var_2.c)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(global0.x | 2147483647i, -2147483647i), min(_wgslsmith_mod_i32(var_0.d, 2147483647i), -24648i) & _wgslsmith_mult_i32(var_1.e.x, i32(-1i) * -1i)), var_0.e);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(503f - var_0.c) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1077f - var_1.c) + _wgslsmith_div_f32(var_2.c, var_1.c)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1388f)) * _wgslsmith_f_op_f32(sign(1128f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(0i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, global0.x, u_input.e), vec3<i32>(-58921i, u_input.c, -1i)), _wgslsmith_clamp_i32(1i, firstTrailingBit(global0.x), countOneBits(-6438i))) ^ 6661i, global0.x);
    let var_1 = vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, reverseBits(firstLeadingBit(4294967295u))), _wgslsmith_clamp_u32(4294967295u, abs(0u) << (~u_input.a.x % 32u), ~_wgslsmith_mod_u32(4294967295u, u_input.a.x)), _wgslsmith_mult_u32(_wgslsmith_add_u32(~7182u, _wgslsmith_mult_u32(u_input.b, u_input.b)), 0u)) & ~u_input.a.xzx;
    var var_2 = Struct_1(vec3<bool>(true, true, true), var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(u_input.a ^ vec4<u32>(19761u, var_1.x, 103268u, 0u))), _wgslsmith_f_op_f32(-func_3(true, 0u, Struct_1(vec3<bool>(true, true, true), 46671u, 256f, 0i, vec2<i32>(-34427i, 2147483647i)), -2233f).c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1261f)))), var_0.x, var_0.xy | global0.yy);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c));
    let var_4 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~(~var_1.x), var_2.b, ~28085u, abs(var_1.x)), countOneBits(~max(abs(u_input.a), u_input.a))), 1u)];
    var var_5 = vec3<bool>(any(vec3<bool>(true, var_4.a.x, _wgslsmith_add_i32(var_2.e.x, -1i) != var_2.d)), false, any(vec3<bool>(false, any(var_2.a), any(!var_2.a.zy))));
    global0 = vec3<i32>(~max((var_0.x & -1i) ^ (19300i ^ var_4.e.x), _wgslsmith_dot_vec2_i32(global0.zx, -var_0.xz)), u_input.c & ~_wgslsmith_div_i32(global0.x, var_0.x | var_4.d), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c);
}

