struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<bool>) -> i32 {
    let var_0 = u_input.c;
    var var_1 = Struct_5(u_input.a);
    var_1 = Struct_5(min(1i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, reverseBits(u_input.a)), ~_wgslsmith_add_i32(u_input.a, var_1.a))));
    var_1 = Struct_5(var_1.a);
    var_1 = Struct_5(-2147483647i << (firstLeadingBit(abs(~var_0.x)) % 32u));
    return _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(-1i) * -vec2<i32>(u_input.a, var_1.a)), vec2<i32>(_wgslsmith_sub_i32(var_1.a, u_input.a), _wgslsmith_mod_i32(var_1.a, 1i)) << (abs(_wgslsmith_clamp_vec2_u32(u_input.b.yx, var_0, vec2<u32>(52988u, u_input.d.x))) % vec2<u32>(32u))), select(vec2<i32>(var_1.a, 49288i), select(select(vec2<i32>(var_1.a, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -14562i), vec2<i32>(u_input.a, var_1.a)), select(vec2<bool>(arg_0.x, false), arg_1.wx, arg_1.x)), firstTrailingBit(abs(vec2<i32>(-2147483647i, u_input.a))), true), arg_1.yz));
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = Struct_5(~(u_input.a & (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -23681i, u_input.a), vec3<i32>(0i, 90877i, u_input.a)) >> (abs(u_input.b.x) % 32u))));
    let var_1 = ~(~(~firstTrailingBit(_wgslsmith_div_u32(4294967295u, u_input.b.x))));
    var_0 = Struct_5(reverseBits(-(u_input.a << (arg_0 % 32u)) & func_3(vec3<bool>(false, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)))));
    var_0 = Struct_5(~(~(-firstTrailingBit(var_0.a))));
    var var_2 = select(true, true, true) | !all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)));
    return _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(~_wgslsmith_add_i32(var_0.a, var_0.a), _wgslsmith_sub_i32(44101i, u_input.a), var_0.a, var_0.a & 1i), firstTrailingBit(vec4<i32>(0i, var_0.a, 19470i, u_input.a)) >> ((_wgslsmith_sub_vec4_u32(vec4<u32>(31561u, 16008u, 51446u, var_1), vec4<u32>(4294967295u, u_input.c.x, arg_0, var_1)) ^ ~vec4<u32>(26623u, 26263u, 12517u, u_input.d.x)) % vec4<u32>(32u))), ~(~select(vec4<i32>(var_0.a, 9705i, -25182i, 1i), vec4<i32>(-2147483647i, var_0.a, -10414i, 11935i), true)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(Struct_1(!(!(!vec4<bool>(false, arg_0.x, false, arg_0.x))), firstLeadingBit(abs(vec3<u32>(arg_2, 5838u, u_input.b.x) >> (vec3<u32>(u_input.b.x, 17167u, u_input.d.x) % vec3<u32>(32u)))), arg_3.a), !vec4<bool>(true, any(!vec3<bool>(true, true, arg_0.x)), select(!arg_0.x, any(vec4<bool>(false, false, true, true)), u_input.a >= u_input.a), true), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-507i, arg_1.x) << (firstLeadingBit(u_input.d) % vec2<u32>(32u)), -firstLeadingBit(vec2<i32>(u_input.a, 11661i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -64955i), vec2<i32>(-11204i, arg_1.x), select(vec2<i32>(23127i, arg_1.x), arg_1, arg_0.x))), ~arg_1));
    var_0 = Struct_3(Struct_1(select(vec4<bool>(false, false, all(vec4<bool>(var_0.b.x, true, false, true)), true), var_0.a.a, var_0.a.a.x), vec3<u32>(arg_2, 27207u, var_0.a.b.x), arg_3.a), vec4<bool>(var_0.b.x, true, any(vec4<bool>(!arg_0.x, arg_0.x & arg_0.x, false, all(vec2<bool>(false, false)))), false), -var_0.c);
    let var_1 = 0i;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-113f, 291f, -307f, arg_3.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-766f, var_0.a.c, var_0.a.c, 1856f), vec4<f32>(-452f, var_0.a.c, -651f, 231f)))))) + vec4<f32>(arg_3.a, _wgslsmith_f_op_f32(var_0.a.c * _wgslsmith_f_op_f32(arg_3.a + arg_3.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -370f) - -677f), arg_3.a)));
    var var_3 = _wgslsmith_sub_i32(min(var_0.c.x, 1i) >> (firstTrailingBit(_wgslsmith_div_u32(var_0.a.b.x, _wgslsmith_mod_u32(60259u, var_0.a.b.x))) % 32u), -74326i);
    return arg_3;
}

fn func_1(arg_0: Struct_5, arg_1: f32) -> i32 {
    let var_0 = ~(~vec3<u32>(1u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(4294967295u, u_input.d.x, 4294967295u)), abs(0u), 33484u), ~u_input.c.x));
    var var_1 = Struct_4(u_input.a >= _wgslsmith_mod_i32(0i, _wgslsmith_sub_i32(-1i, u_input.a & -2147483647i)));
    var_1 = Struct_4(true);
    var var_2 = func_4(vec2<bool>(var_1.a, var_1.a || !select(var_1.a, true, true)), vec2<i32>(func_2(_wgslsmith_dot_vec3_u32(~vec3<u32>(124211u, var_0.x, var_0.x), u_input.b)), reverseBits(_wgslsmith_mult_i32(_wgslsmith_add_i32(arg_0.a, -1i), _wgslsmith_add_i32(1i, arg_0.a)))), min(reverseBits(85771u), ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 46274u), var_0.yx), 42428u)), Struct_2(arg_1));
    var var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 7191i, reverseBits(-1i & -arg_0.a), u_input.a), select(~vec4<i32>(-arg_0.a, ~0i, _wgslsmith_clamp_i32(21782i, arg_0.a, arg_0.a), u_input.a << (105071u % 32u)), -vec4<i32>(-u_input.a, u_input.a, u_input.a, -1i), !(!select(vec4<bool>(var_1.a, var_1.a, false, true), vec4<bool>(false, false, var_1.a, false), vec4<bool>(var_1.a, var_1.a, true, var_1.a)))));
    return ~var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = vec3<f32>(-1775f, -599f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(919f, 1572f)), 1f, abs(func_1(Struct_5(2147483647i), -138f)) >= u_input.a)));
    var var_2 = Struct_5(_wgslsmith_clamp_i32(1i, select(u_input.a, 0i, !any(vec4<bool>(true, true, true, false))), 0i));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, -((6561i >> (max(u_input.c.x, 1u) % 32u)) & _wgslsmith_add_i32(_wgslsmith_mod_i32(-5721i, -2147483647i), ~7935i)), min(select(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(29892u, u_input.b.x, 19443u, var_0.x), vec4<u32>(4294967295u, 1u, 0u, var_0.x)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, u_input.c.x, u_input.d.x, u_input.b.x), vec4<u32>(u_input.c.x, u_input.b.x, 13135u, var_0.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 1u) & vec4<u32>(0u, u_input.b.x, u_input.d.x, var_0.x), vec4<u32>(var_0.x, 0u, u_input.b.x, 19607u), vec4<u32>(u_input.d.x, 0u, 35587u, u_input.b.x)), false), countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(46978u, 1u, u_input.c.x, var_0.x), ~vec4<u32>(34929u, u_input.c.x, u_input.b.x, 1u)))), u_input.a);
}

