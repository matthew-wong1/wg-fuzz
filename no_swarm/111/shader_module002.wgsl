struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1213f;

var<private> global1: Struct_1 = Struct_1(-538f);

var<private> global2: Struct_2 = Struct_2(vec2<f32>(1098f, -1997f), vec2<f32>(1000f, -472f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1() -> u32 {
    var var_0 = global2.b;
    var var_1 = false;
    return 76697u;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<f32>) -> i32 {
    global0 = -782f;
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1303f)));
    var var_0 = ~_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c, u_input.b, -u_input.c), (~vec3<i32>(-1i, -69705i, -2147483647i) & (vec3<i32>(88927i, u_input.c, u_input.b) | vec3<i32>(-2147483647i, -1i, -1i))) << (_wgslsmith_add_vec3_u32(min(vec3<u32>(8134u, 0u, u_input.a.x), vec3<u32>(4890u, 38075u, u_input.a.x)), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a));
    return 1i;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_5(u_input.a);
    let var_1 = abs(_wgslsmith_mult_i32(abs(_wgslsmith_mod_i32(i32(-1i) * -8716i, 1i)), max(arg_0.x, 0i) | firstLeadingBit(func_3(Struct_1(global2.b.x), -1226f, vec4<f32>(global2.b.x, global2.a.x, global1.a, -738f)))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(145f, global1.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1628f, -845f) * global2.b))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -866f), _wgslsmith_f_op_f32(max(583f, global2.a.x))), false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1165f, global2.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, -1059f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global2.b), global2.b, vec2<bool>(false, true)))))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-230f, 488f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1114f, _wgslsmith_f_op_f32(global1.a - -497f)) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.a, -1000f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(857f, global2.b.x)))))))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> vec2<i32> {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global1.a, _wgslsmith_div_f32(-226f, 1000f)))))));
    var var_1 = vec3<u32>(4294967295u, ~abs(~(~10481u)), ~(~u_input.a.x & u_input.a.x));
    var var_2 = var_0.a;
    let var_3 = select(9697u, u_input.a.x, (~_wgslsmith_add_u32(1u, u_input.a.x) & u_input.a.x) == 16001u);
    var var_4 = _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 2490u), u_input.a) << (~var_1.yz % vec2<u32>(32u)), var_1.zz);
    return max(vec2<i32>(0i, -max(abs(0i), -2147483647i)), -vec2<i32>(-23922i, -(~u_input.c)));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>) -> vec3<bool> {
    var var_0 = -2339f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -477f) + _wgslsmith_f_op_f32(-1069f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-global1.a), false)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)) - -164f)));
    var_0 = _wgslsmith_div_f32(global1.a, global2.a.x);
    var var_1 = Struct_5(~min(countOneBits(u_input.a), u_input.a) ^ ~vec2<u32>(_wgslsmith_add_u32(0u, 0u), ~u_input.a.x));
    return vec3<bool>(any(vec2<bool>(var_1.a.x == ~u_input.a.x, any(vec3<bool>(true, false, true)))), false, !all(vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(reverseBits(vec4<u32>(~(~u_input.a.x), ~u_input.a.x, u_input.a.x, 1u)));
    var_0 = reverseBits(~vec4<u32>(4294967295u, var_0.x, abs(20662u) >> ((var_0.x & var_0.x) % 32u), ~(~var_0.x)));
    var var_1 = (var_0.x & u_input.a.x) < ~u_input.a.x;
    let var_2 = reverseBits(~(_wgslsmith_sub_i32(~u_input.b, ~9039i) & _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-15461i, 13383i, u_input.b, u_input.b)), firstLeadingBit(vec4<i32>(2147483647i, u_input.b, -2147483647i, u_input.c)))));
    var_0 = vec4<u32>(~max(_wgslsmith_mod_u32(1u, 1u), u_input.a.x >> (var_0.x % 32u)), func_1(), 86740u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.x << (var_0.x % 32u), u_input.a.x), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 107588u, 4294967295u, 35758u), vec4<u32>(u_input.a.x, var_0.x, 4294967295u, var_0.x)), select(vec4<u32>(u_input.a.x, var_0.x, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 45492u, 4294967295u), false)))) ^ vec4<u32>(_wgslsmith_add_u32(var_0.x, ~4294967295u), firstLeadingBit(_wgslsmith_add_u32(0u, abs(var_0.x))), 6392u, 4294967295u);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(803f * _wgslsmith_f_op_f32(-global2.a.x)))), _wgslsmith_f_op_f32(trunc(1049f)), _wgslsmith_f_op_f32(global2.b.x * _wgslsmith_f_op_f32(f32(-1f) * -333f)), _wgslsmith_f_op_f32(global1.a + global1.a));
    let var_4 = select(func_5(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-global1.a), 1131f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.a * var_3.zx))), func_4(func_2(~vec2<i32>(0i, 3006i), -vec2<i32>(-45530i, u_input.c)), true || all(vec4<bool>(true, true, true, false)), func_2(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.c)), u_input.c == _wgslsmith_sub_i32(u_input.b, 0i))), !vec3<bool>(all(vec4<bool>(true, true, false, true)), true, _wgslsmith_mod_u32(var_0.x, 29871u) <= ~37141u), !vec3<bool>(_wgslsmith_f_op_f32(global1.a - -250f) == _wgslsmith_f_op_f32(ceil(2021f)), true, select(true, any(vec2<bool>(false, true)), false)));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * _wgslsmith_f_op_f32(1506f + _wgslsmith_f_op_f32(floor(1729f))))));
    let var_5 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~var_0.xzy, var_0.wxy), ~select(_wgslsmith_clamp_vec3_u32(firstTrailingBit(var_0.yzy), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, 33147u), vec3<u32>(25582u, u_input.a.x, 1u), vec3<u32>(var_0.x, u_input.a.x, var_0.x)), var_0.zyy << (vec3<u32>(4294967295u, var_0.x, u_input.a.x) % vec3<u32>(32u))), vec3<u32>(1u, _wgslsmith_div_u32(u_input.a.x, var_0.x), countOneBits(u_input.a.x)), var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(~max(vec2<i32>(-1i) * -vec2<i32>(var_2, var_2), firstTrailingBit(select(vec2<i32>(-4645i, 0i), vec2<i32>(-11985i, var_2), var_4.x))), u_input.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(global2.b.x, global2.b.x), _wgslsmith_f_op_f32(abs(194f)), -199f, global2.a.x))), vec4<f32>(-1527f, _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1416f, global1.a))), global1.a)));
}

