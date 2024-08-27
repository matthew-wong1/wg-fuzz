struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = -_wgslsmith_sub_i32(0i, 0i);
    var var_1 = global0.a;
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-740f, 2190f, -716f), var_1.c, true)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.a.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(852f, global0.a.c.x, global0.a.c.x) + vec3<f32>(global0.a.c.x, arg_0.a.c.x, arg_0.a.c.x)), true))) * arg_0.a.c)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = vec4<u32>(~(~40152u), ~min(arg_3.b.x, 73384u), abs(global0.a.b.x), _wgslsmith_clamp_u32(arg_1.a.b.x, _wgslsmith_clamp_u32(17640u, firstTrailingBit(arg_1.a.b.x) | 4294967295u, firstTrailingBit(max(41889u, u_input.c))), global0.a.b.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.c.x));
    var_0 = reverseBits(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.a.b.x, 0u, 13228u, 1u), vec4<u32>(1u, arg_3.b.x, arg_3.b.x, var_0.x))) | (vec4<u32>(1u | global0.a.b.x, var_0.x, _wgslsmith_add_u32(var_0.x, arg_1.a.b.x), 40209u) ^ _wgslsmith_add_vec4_u32(reverseBits(~vec4<u32>(0u, var_0.x, 4294967295u, arg_1.a.b.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_3.b.x, 36644u, u_input.c), vec4<u32>(0u, arg_3.b.x, 0u, 71394u))));
    var var_2 = global0.a;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2247f, -448f, _wgslsmith_f_op_f32(max(var_2.c.x, _wgslsmith_f_op_f32(-1709f * _wgslsmith_f_op_f32(f32(-1f) * -417f)))), _wgslsmith_f_op_f32(-var_2.c.x)));
    return var_2.c.xx;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.c.zy - _wgslsmith_f_op_vec2_f32(-arg_2.c.xz)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1070f), _wgslsmith_f_op_f32(sign(arg_1.c.x))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-210f, arg_1.c.x)), arg_1.c.zy), vec2<f32>(_wgslsmith_f_op_f32(-arg_0), -744f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(u_input.b, Struct_2(arg_1, vec3<i32>(global0.b.x, 0i, -26790i)), 22371i, Struct_1(true, arg_1.b & vec3<u32>(arg_2.b.x, u_input.a.x, arg_2.b.x), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(true, arg_1.b, arg_1.c), u_input.b.zxy))))))));
    let var_1 = u_input.b >> (reverseBits(firstTrailingBit(~vec4<u32>(arg_3, arg_1.b.x, u_input.d.x, arg_1.b.x)) << (max(vec4<u32>(74572u, 57868u, global0.a.b.x, arg_2.b.x), reverseBits(vec4<u32>(1u, 14816u, 4294967295u, 0u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_2 = -1075i;
    var var_3 = Struct_2(Struct_1(false, ~min(~arg_1.b, arg_1.b), arg_2.c), min(global0.b, var_1.zzx) ^ _wgslsmith_mult_vec3_i32(-(~global0.b), vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, -1i, -1i)));
    return Struct_1(arg_1.a, reverseBits(vec3<u32>(firstLeadingBit(26665u), ~_wgslsmith_add_u32(4294967295u, arg_2.b.x), ~(~57623u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.a.c * vec3<f32>(-370f, -1605f, -324f)) * vec3<f32>(arg_0, arg_1.c.x, global0.a.c.x)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.c), arg_2.c)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(floor(684f)), var_3.a.c.x, _wgslsmith_f_op_f32(sign(1031f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_3.a.c.x, -1089f)))))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<bool>) -> i32 {
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(219f - _wgslsmith_f_op_f32(trunc(arg_1.c.x))) > _wgslsmith_div_f32(arg_1.c.x, _wgslsmith_f_op_f32(975f - -1000f)), vec3<u32>(~(u_input.c ^ u_input.d.x), ~func_2(arg_1.c.x, Struct_1(global0.a.a, vec3<u32>(4294967295u, 0u, 21050u), global0.a.c), arg_1, global0.a.b.x).b.x, firstLeadingBit(4294967295u)), _wgslsmith_f_op_vec3_f32(-arg_1.c)), _wgslsmith_mod_vec3_i32(vec3<i32>(6047i, 1i, -2147483647i), ~(~(-u_input.b.wwy))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(false, vec3<u32>(1u, 1u, 0u), arg_1.c), vec3<i32>(0i, arg_0.x, arg_0.x)))).x, arg_1.c.x))));
    let var_1 = Struct_2(Struct_1(!arg_2.x, ~vec3<u32>(1u, firstLeadingBit(u_input.c), ~34028u), _wgslsmith_f_op_vec3_f32(-arg_1.c)), vec3<i32>(-2147483647i, 1i, arg_0.x));
    global0 = var_1;
    var var_2 = arg_2.x & var_1.a.a;
    return 2147483647i;
}

fn func_1() -> Struct_2 {
    var var_0 = global0.a.c.x;
    global0 = Struct_2(global0.a, vec3<i32>(func_5(-vec2<i32>(2147483647i, -61506i), func_2(-396f, global0.a, global0.a, u_input.a.x), vec4<bool>(global0.a.a, false, global0.a.a, global0.a.a)), 1i, 27949i) & global0.b);
    var var_1 = false;
    var var_2 = Struct_2(Struct_1(any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(global0.a.a, global0.a.a))), vec3<u32>(0u, 4294967295u, global0.a.b.x), global0.a.c), ~firstLeadingBit(abs(vec3<i32>(global0.b.x, 38603i, global0.b.x))));
    var var_3 = global0.a;
    return Struct_2(func_2(var_3.c.x, Struct_1(~var_2.b.x > (global0.b.x ^ global0.b.x), var_3.b, var_2.a.c), func_2(global0.a.c.x, global0.a, var_2.a, 1u), ~4294967295u | _wgslsmith_dot_vec3_u32(vec3<u32>(6869u, 78768u, 1u), vec3<u32>(0u, 59989u, global0.a.b.x))), countOneBits(vec3<i32>(_wgslsmith_add_i32(abs(-1i), var_2.b.x), 1i, ~(-var_2.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = func_1().a;
    let var_1 = Struct_2(global0.a, global0.b);
    let var_2 = Struct_1(u_input.b.x == reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 44610i, 19852i, -22510i), u_input.b)), var_1.a.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_1.a.c)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1271f, var_0.c.x, global0.a.c.x))))))));
    var var_3 = vec4<u32>(18165u, global0.a.b.x, 4294967295u, ~global0.a.b.x);
    let var_4 = var_1;
    var var_5 = _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(var_3.zwz & vec3<u32>(var_4.a.b.x, u_input.a.x, 56867u), vec3<u32>(global0.a.b.x, 1u, 68819u) ^ vec3<u32>(0u, var_4.a.b.x, 1u)) >> (vec3<u32>(min(88823u, global0.a.b.x), var_0.b.x, var_1.a.b.x) % vec3<u32>(32u)), max(global0.a.b, var_3.xxy)) ^ ~vec3<u32>(func_1().a.b.x, var_3.x, (global0.a.b.x >> (var_0.b.x % 32u)) | ~var_2.b.x);
    let var_6 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_6.c.x, var_1.b);
}

