struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_4,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(28929u);

var<private> global1: u32;

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>) -> bool {
    var var_0 = global2.x;
    global1 = firstTrailingBit(select(~1u, ~_wgslsmith_sub_u32(arg_0.x >> (u_input.a.x % 32u), ~33985u), global2.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(928f + _wgslsmith_f_op_f32(abs(978f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(723f, -1000f))))) > _wgslsmith_f_op_f32(trunc(474f));
    return false;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    let var_0 = global2.xy;
    global2 = select(vec4<bool>(true, func_3(~arg_0.a), false, true), !vec4<bool>(true, false, false, !global2.x & var_0.x), var_0.x);
    let var_1 = firstLeadingBit(vec2<i32>(i32(-1i) * -firstLeadingBit(u_input.d.x), u_input.d.x));
    let var_2 = ~1u;
    var var_3 = 1587u;
    return Struct_2(select(~(~abs(u_input.a.wx)), vec2<u32>(~var_2, 1u) >> (~arg_0.a % vec2<u32>(32u)), !global2.zz));
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = Struct_3(func_2(Struct_2(_wgslsmith_sub_vec2_u32(u_input.e.yy | vec2<u32>(0u, global0.a), min(vec2<u32>(arg_0, arg_0), vec2<u32>(102605u, global0.a)))), Struct_1(~0u), 357f), global2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-103f)))), Struct_1(arg_0));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(f32(-1f) * -1288f))), 219f))) - -405f);
    var var_2 = abs(u_input.d.x);
    let var_3 = var_0.c;
    var var_4 = u_input.d.yz;
    return func_2(Struct_2(vec2<u32>(firstTrailingBit(abs(arg_0)), 9339u)), Struct_1(70436u ^ _wgslsmith_clamp_u32(max(u_input.a.x, 67885u), ~global0.a, 4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c))), _wgslsmith_f_op_f32(f32(-1f) * -381f)) * 1066f));
}

fn func_4(arg_0: Struct_5, arg_1: f32) -> Struct_5 {
    global1 = _wgslsmith_mod_u32(54806u, firstTrailingBit(func_2(func_1(46399u), Struct_1(22339u), 324f).a.x >> (~(~global0.a) % 32u)));
    var var_0 = false;
    global1 = ~_wgslsmith_div_u32(reverseBits(61764u), _wgslsmith_clamp_u32(~(u_input.e.x ^ 0u), _wgslsmith_div_u32(reverseBits(1u), _wgslsmith_dot_vec2_u32(arg_0.a, vec2<u32>(1u, 19241u))), 311u));
    var var_1 = global2.wwx;
    var_0 = true;
    return Struct_5(vec2<u32>(~4294967295u, countOneBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.e.zx, arg_0.b.b.a.a), 16671u))), Struct_4(~_wgslsmith_sub_u32(~4294967295u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), Struct_3(Struct_2(arg_0.b.b.a.a << (u_input.a.wx % vec2<u32>(32u))), all(global2.zxx), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(sign(arg_0.b.b.c))), arg_0.b.b.d)), func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, _wgslsmith_clamp_u32(40263u, arg_0.b.a, 49791u), min(4294967295u, 4294967295u)), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.xyx, u_input.a.yyz), countOneBits(u_input.e)))), Struct_1(firstTrailingBit(~global0.a)), max(43283u, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(reverseBits(u_input.d.x), ~u_input.d.x, _wgslsmith_add_i32(u_input.d.x, u_input.d.x ^ 26723i))), -_wgslsmith_mod_vec3_i32(u_input.d, u_input.d));
    var var_1 = ~u_input.e.zy;
    var var_2 = min(1u, ~_wgslsmith_dot_vec2_u32(~(vec2<u32>(var_1.x, 1u) | vec2<u32>(u_input.e.x, 4294967295u)), vec2<u32>(global0.a, ~1u)));
    let var_3 = vec4<u32>(max(_wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_clamp_vec4_u32(~u_input.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, global0.a, 4267u), vec4<u32>(36860u, global0.a, u_input.b, 4294967295u), u_input.a), u_input.a)), select(8550u, ~0u, true) | (~var_1.x >> (61830u % 32u))), ~(~global0.a), 1u, var_1.x);
    var var_4 = func_4(Struct_5(var_3.zz, Struct_4(u_input.b, Struct_3(func_1(var_3.x), global2.x, _wgslsmith_f_op_f32(trunc(-192f)), Struct_1(var_3.x))), func_2(func_2(Struct_2(var_3.wy), Struct_1(1u), -1355f), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, global0.a), vec2<u32>(var_3.x, global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-575f, 240f)))), Struct_1(~_wgslsmith_div_u32(24338u, u_input.c)), abs(_wgslsmith_sub_u32(global0.a, 0u) ^ abs(var_1.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(769f)) + _wgslsmith_f_op_f32(f32(-1f) * -670f)))))));
    let var_5 = var_4.b.b.a;
    global2 = !vec4<bool>(all(vec3<bool>(-2147483647i != u_input.d.x, 10047i >= u_input.d.x, true)), false, !(!var_4.b.b.b), 1454f < _wgslsmith_f_op_f32(sign(var_4.b.b.c)));
    var var_6 = func_4(func_4(func_4(Struct_5(vec2<u32>(4294967295u, var_3.x), func_4(Struct_5(vec2<u32>(86084u, 1u), Struct_4(var_3.x, var_4.b.b), var_4.c, Struct_1(29507u), 98602u), 318f).b, func_4(Struct_5(var_4.a, var_4.b, var_4.b.b.a, Struct_1(0u), var_4.d.a), var_4.b.b.c).c, func_4(Struct_5(var_3.xz, Struct_4(52321u, var_4.b.b), var_4.c, var_4.d, var_4.e), var_4.b.b.c).d, ~var_5.a.x), var_4.b.b.c), _wgslsmith_f_op_f32(-1108f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1269f)) - _wgslsmith_f_op_f32(-var_4.b.b.c)))), -1332f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_6.b.b.c, 665f, -652f)))), vec3<f32>(_wgslsmith_f_op_f32(round(-254f)), _wgslsmith_f_op_f32(floor(var_4.b.b.c)), _wgslsmith_f_op_f32(-104f * -397f))))), ~var_3.yyy, ~_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, countOneBits(2147483647i), -var_0.x, var_0.x), vec4<i32>(-37731i, _wgslsmith_mult_i32(31563i, var_0.x), abs(var_0.x), -1i)), i32(-1i) * -12741i);
}

