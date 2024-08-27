struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: Struct_2,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
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

var<private> global0: Struct_3 = Struct_3(-352f, vec3<f32>(324f, -1101f, 724f), -239f, Struct_2(vec3<f32>(-2322f, -866f, 776f), vec3<f32>(486f, 772f, -1348f), Struct_1(vec2<i32>(6233i, 1886i), 4294967295u, false), true), vec4<u32>(50820u, 1u, 22701u, 0u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>) -> vec3<f32> {
    var var_0 = global0.d;
    let var_1 = vec2<u32>(~var_0.c.b, ~_wgslsmith_mult_u32(firstTrailingBit(var_0.c.b), 10652u)) << (~_wgslsmith_mult_vec2_u32(u_input.c.xy, vec2<u32>(19939u, ~var_0.c.b)) % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -637f) * var_0.a.x);
    let var_3 = abs(_wgslsmith_div_vec2_u32(~vec2<u32>(_wgslsmith_clamp_u32(u_input.b, 50576u, var_1.x), abs(var_0.c.b)), vec2<u32>(global0.d.c.b, 35683u | global0.e.x)));
    var_0 = global0.d;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1252f, 1078f, 1000f)))))) - vec3<f32>(_wgslsmith_f_op_f32(534f + _wgslsmith_f_op_f32(f32(-1f) * -1131f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b.x)) - _wgslsmith_div_f32(global0.c, var_2)) + _wgslsmith_f_op_f32(sign(-1875f))), _wgslsmith_f_op_f32(select(880f, _wgslsmith_f_op_f32(f32(-1f) * -1843f), arg_0.x))));
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    global0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x - 585f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.d.b + _wgslsmith_f_op_vec3_f32(global0.b * vec3<f32>(global0.b.x, global0.b.x, -527f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.d.a.x - _wgslsmith_f_op_f32(200f * _wgslsmith_f_op_f32(global0.a - -1952f))))), Struct_2(vec3<f32>(global0.d.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, global0.c))), global0.a), vec3<f32>(-1410f, -503f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(384f, -199f, arg_0.x))))), global0.d.c, false), ~(~vec4<u32>(u_input.b, countOneBits(global0.d.c.b), ~global0.e.x, global0.e.x)));
    global0 = Struct_3(_wgslsmith_f_op_f32(-800f - -468f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(721f, global0.c, global0.b.x)), vec3<f32>(global0.d.a.x, global0.b.x, 883f)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1986f, global0.d.a.x, -1782f), global0.d.b), vec3<f32>(1092f, 363f, 131f))) - _wgslsmith_f_op_vec3_f32(abs(global0.d.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.d.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(ceil(global0.c))))))), global0.d, global0.e);
    let var_0 = ~(~global0.e.xyy);
    let var_1 = global0.d.c.a.x | global0.d.c.a.x;
    global0 = Struct_3(global0.c, global0.d.a, global0.c, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec4<bool>(global0.d.d, global0.d.d, arg_0.x, arg_0.x)))), vec3<f32>(global0.d.b.x, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.d.b.x)))), global0.d.c, global0.d.c.c), global0.e);
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.d.b), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.a, global0.b.x, global0.d.a.x))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.a.x)), _wgslsmith_f_op_f32(max(-102f, _wgslsmith_div_f32(-247f, _wgslsmith_div_f32(-957f, global0.b.x)))), _wgslsmith_f_op_f32(-global0.b.x)), Struct_1(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(var_1, 2147483647i), countOneBits(vec2<i32>(var_1, var_1))), min(global0.d.c.a, firstLeadingBit(global0.d.c.a))), ~firstTrailingBit(global0.e.x ^ 4294967295u), !(!(10074u <= u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(830f, global0.b.x) - 567f)) < global0.d.b.x);
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> Struct_2 {
    let var_0 = vec2<i32>(0i, _wgslsmith_sub_i32(~(-select(20970i, 49994i, arg_0.d.c.c)), _wgslsmith_div_i32(select(global0.d.c.a.x, -1i, arg_0.d.c.c) ^ (i32(-1i) * -5334i), min(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, global0.d.c.a.x), vec2<i32>(-72187i, global0.d.c.a.x)), _wgslsmith_add_i32(0i, global0.d.c.a.x)))));
    let var_1 = arg_0.d.c;
    global0 = arg_0;
    var var_2 = ~(~_wgslsmith_mult_vec2_i32(arg_0.d.c.a, _wgslsmith_add_vec2_i32(var_1.a, global0.d.c.a))) & vec2<i32>(-7302i, _wgslsmith_sub_i32(15979i, 1i));
    let var_3 = global0.d.c.a.x;
    return Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(abs(855f)), arg_0.c)), _wgslsmith_div_vec3_f32(global0.d.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_0.b)))), Struct_1(vec2<i32>(_wgslsmith_mod_i32(~0i, -18683i >> (u_input.c.x % 32u)), _wgslsmith_mult_i32(1i, global0.d.c.a.x)), var_1.b, true), false);
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> Struct_3 {
    global0 = Struct_3(650f, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-func_4(Struct_3(474f, arg_0.b, -277f, Struct_2(vec3<f32>(arg_0.b.x, 427f, -1725f), vec3<f32>(-221f, global0.a, arg_0.b.x), Struct_1(vec2<i32>(arg_0.c.a.x, -23540i), global0.d.c.b, global0.d.c.c), true), vec4<u32>(0u, arg_1, arg_1, arg_1)), ~3196u).a))), 779f, arg_0, global0.e);
    var var_0 = Struct_3(865f, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-412f, global0.c, true)), _wgslsmith_f_op_f32(global0.d.a.x - 1613f))), _wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(-global0.a)), -1184f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-208f, -306f, 1058f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.b.x, arg_0.a.x, 1000f))), vec3<f32>(arg_0.b.x, -451f, -779f)))), _wgslsmith_f_op_f32(-arg_0.b.x), global0.d, vec4<u32>(_wgslsmith_mod_u32(~1u, u_input.a.x), firstLeadingBit(arg_0.c.b), 35727u, arg_0.c.b));
    let var_1 = vec3<f32>(-444f, 2122f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-371f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-306f + -205f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1086f))), false))), global0.d.b, var_1.x, Struct_2(vec3<f32>(arg_0.a.x, 873f, var_0.b.x), var_1, Struct_1(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(global0.d.c.a.x, -8028i)), vec2<i32>(1i, -35602i)), 4294967295u, !select(arg_0.d, true, false)), true), vec4<u32>(0u, abs(global0.d.c.b), (arg_1 | countOneBits(0u)) << (~1u % 32u), ~_wgslsmith_clamp_u32(var_0.d.c.b | arg_0.c.b, _wgslsmith_dot_vec3_u32(global0.e.zxz, u_input.a), abs(0u))));
    global0 = Struct_3(_wgslsmith_f_op_f32(-1806f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * _wgslsmith_f_op_f32(trunc(var_1.x))))), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -532f))), func_4(Struct_3(555f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.d.a - var_1)), var_0.b.x, func_2(!vec3<bool>(false, false, var_0.d.c.c)), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(var_0.e, vec4<u32>(global0.d.c.b, arg_1, 14678u, 4294967295u)), abs(var_0.e))), u_input.a.x), select(~global0.e, vec4<u32>(1u & _wgslsmith_div_u32(u_input.a.x, var_0.d.c.b), abs(abs(var_0.d.c.b)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 40114u, arg_1), vec4<u32>(0u, 1u, arg_1, arg_0.c.b)), 0u << (~u_input.b % 32u)), select(!(!vec4<bool>(global0.d.c.c, var_0.d.c.c, arg_0.c.c, false)), vec4<bool>(false, true, !global0.d.d, func_2(vec3<bool>(true, global0.d.c.c, global0.d.d)).d), vec4<bool>(false, true, func_2(vec3<bool>(global0.d.d, false, arg_0.c.c)).c.c, true))));
    return Struct_3(global0.b.x, vec3<f32>(arg_0.b.x, 943f, _wgslsmith_div_f32(987f, func_2(!vec3<bool>(arg_0.c.c, arg_0.c.c, true)).b.x)), _wgslsmith_f_op_f32(round(969f)), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x) - func_4(Struct_3(764f, vec3<f32>(523f, var_1.x, 1022f), var_0.d.b.x, global0.d, global0.e), 0u).b.x), arg_0.b.x), _wgslsmith_f_op_vec3_f32(-var_1), func_2(!(!vec3<bool>(global0.d.c.c, global0.d.c.c, var_0.d.d))).c, all(vec2<bool>(global0.d.d && arg_0.d, false))), vec4<u32>(20057u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 78718u, var_0.e.x) | vec3<u32>(arg_0.c.b, var_0.e.x, arg_1), ~vec3<u32>(1243u, 4294967295u, 0u)), ~firstTrailingBit(~1u), ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, global0.d.c.b), arg_0.c.b, ~4294967295u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> i32 {
    global0 = func_5(func_4(Struct_3(-1213f, _wgslsmith_f_op_vec3_f32(vec3<f32>(-800f, -1000f, 1469f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(440f, 238f, 173f) * global0.d.a)), -1097f, func_2(select(vec3<bool>(global0.d.d, global0.d.d, global0.d.c.c), vec3<bool>(false, true, global0.d.d), false)), ~_wgslsmith_sub_vec4_u32(global0.e, global0.e)), ~u_input.c.x), _wgslsmith_dot_vec2_u32(max(vec2<u32>(arg_1, 65349u), vec2<u32>(func_2(vec3<bool>(global0.d.d, false, global0.d.d)).c.b, 32263u)), ~select(u_input.c.yy ^ vec2<u32>(4294967295u, u_input.b), min(vec2<u32>(0u, 1u), global0.e.wz), !global0.d.d)));
    var var_0 = func_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(832f + -389f) - _wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(791f, -247f, global0.c) + vec3<f32>(global0.a, 241f, global0.c)), _wgslsmith_f_op_vec3_f32(-global0.d.a)))), global0.b.x, global0.d, vec4<u32>(1u, ~func_2(vec3<bool>(global0.d.c.c, false, false)).c.b, 41717u, ~_wgslsmith_mod_u32(94813u, u_input.b))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a.xz, ~vec2<u32>(33135u, 25092u)), abs(50056u)));
    global0 = func_5(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(684f + -636f), 1337f, _wgslsmith_f_op_f32(global0.a + 312f)) + vec3<f32>(var_0.a.x, 2322f, 1000f)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(vec4<bool>(global0.d.c.c, false, true, true))).x, _wgslsmith_f_op_f32(1394f + global0.a), _wgslsmith_div_f32(-1717f, -253f)), _wgslsmith_f_op_vec3_f32(global0.b - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-299f, var_0.a.x, global0.c))))), func_5(func_4(func_5(Struct_2(global0.b, vec3<f32>(-1333f, -1668f, var_0.b.x), Struct_1(global0.d.c.a, 77407u, var_0.d), var_0.c.c), 74123u), _wgslsmith_add_u32(var_0.c.b, var_0.c.b)), var_0.c.b).d.c, false), u_input.b);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1614f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(!vec4<bool>(global0.d.c.c, global0.d.c.c, false, false))).x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -229f) + _wgslsmith_f_op_f32(sign(516f))), global0.b.x) * global0.b), var_0.a.x, Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-829f, 950f, 196f) * var_0.b), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-863f, var_0.a.x, var_0.b.x)), _wgslsmith_f_op_vec3_f32(-global0.d.a)))), _wgslsmith_f_op_vec3_f32(floor(global0.b)), var_0.c, any(vec2<bool>(global0.d.d, true))), vec4<u32>(65593u, 32134u, ~(~var_0.c.b) << (1u % 32u), 0u));
    return reverseBits(-func_2(select(vec3<bool>(true, global0.d.c.c, false), !vec3<bool>(false, var_1.d.d, global0.d.c.c), select(vec3<bool>(true, var_1.d.c.c, global0.d.d), vec3<bool>(true, var_1.d.d, var_0.c.c), true))).c.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_i32(min(vec2<i32>(func_1(~vec3<i32>(29183i, 66952i, -1i), 4294967295u), _wgslsmith_sub_i32(-global0.d.c.a.x, func_4(Struct_3(global0.b.x, vec3<f32>(global0.a, global0.d.a.x, -609f), global0.a, global0.d, global0.e), global0.d.c.b).c.a.x)), vec2<i32>(-16017i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global0.d.c.a.x, global0.d.c.a.x), global0.d.c.a), -vec2<i32>(37484i, global0.d.c.a.x)))), ~global0.d.c.a);
    var_0 = ~(-_wgslsmith_dot_vec2_i32(~global0.d.c.a, _wgslsmith_div_vec2_i32(vec2<i32>(global0.d.c.a.x, 0i), global0.d.c.a)) & _wgslsmith_mult_i32(_wgslsmith_div_i32(global0.d.c.a.x, 0i), 21308i));
    var_0 = abs(reverseBits(func_2(select(vec3<bool>(false, false, true), vec3<bool>(false, global0.d.d, global0.d.c.c), global0.d.c.c)).c.a.x)) | abs(-1i << (global0.d.c.b % 32u));
    var_0 = countOneBits(max(global0.d.c.a.x, _wgslsmith_mult_i32(-_wgslsmith_sub_i32(global0.d.c.a.x, global0.d.c.a.x), -2818i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.c, 518f, global0.b.x, -809f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(328f, global0.a, -530f, -136f))))), select(vec4<bool>(global0.d.d, global0.d.c.c, false, global0.d.c.c), vec4<bool>(true, global0.d.d, global0.d.c.c, false), !vec4<bool>(false, false, global0.d.d, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, -203f, global0.a, global0.a) + vec4<f32>(global0.b.x, global0.a, -1000f, global0.d.a.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, 781f, global0.b.x, -466f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, 876f, -791f, -591f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.a.x, -1178f, 1020f, 1714f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.a.x, global0.c, global0.d.b.x, -661f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.b.x, global0.a, 482f, global0.c))), true))));
    var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 303f, 1000f, global0.b.x) + vec4<f32>(var_1.x, 702f, var_1.x, global0.d.b.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, -924f, global0.c, var_1.x)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1698f - -558f) - global0.a), var_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-928f + var_1.x)))));
    let var_2 = 63029i;
    var_0 = min(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(global0.d.c.a.x, 15775i), -48268i, var_2), (global0.d.c.a.x ^ -52499i) | _wgslsmith_dot_vec3_i32(select(countOneBits(vec3<i32>(global0.d.c.a.x, 1495i, var_2)), vec3<i32>(2147483647i, -2147483647i, global0.d.c.a.x), vec3<bool>(global0.d.c.c, true, true)), ~(~vec3<i32>(2147483647i, -43223i, global0.d.c.a.x))));
    var_0 = ~global0.d.c.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(2741f);
}

