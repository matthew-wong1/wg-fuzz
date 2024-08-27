struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: vec4<bool>,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(exp2(arg_0.x));
    let var_1 = -11399i;
    global0 = arg_1;
    let var_2 = arg_1;
    let var_3 = vec3<i32>(global0.a, -1i, 0i);
    return countOneBits(-11700i);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(0i, ~(-3465i), -22631i, ~2147483647i) << (_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, u_input.c.x), vec4<u32>(1u, u_input.e, u_input.e, u_input.a.x)) & vec4<u32>(57787u, 0u, 31267u, global1.b), ~_wgslsmith_mult_vec4_u32(u_input.a, u_input.a)) % vec4<u32>(32u)), vec4<i32>(arg_0.x, arg_0.x, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(max(-56152i, global0.a), 1i, ~(-22552i)), abs(~arg_1.a)), arg_0.x));
    global0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.a.x + 1328f))) - _wgslsmith_f_op_f32(-global1.a.x)))));
    var var_2 = _wgslsmith_f_op_f32(sign(global1.a.x));
    var_1 = _wgslsmith_div_f32(788f, global1.a.x);
    return global1.c.x;
}

fn func_2() -> bool {
    let var_0 = !func_4(vec2<i32>(global0.a, global0.a), Struct_1(~func_3(vec4<f32>(global1.a.x, global1.a.x, 260f, 468f), Struct_1(u_input.d.x))));
    var var_1 = Struct_1(u_input.b);
    let var_2 = Struct_2(_wgslsmith_div_vec2_f32(global1.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a.x))), global1.a.x)), _wgslsmith_dot_vec4_u32(u_input.c ^ u_input.c, ~vec4<u32>(global1.b, global1.b, u_input.e, u_input.a.x) & ~vec4<u32>(global1.e, global1.b, 34543u, global1.e)) ^ u_input.e, select(vec4<bool>(true, func_4(vec2<i32>(1i, var_1.a), Struct_1(global0.a)), !(!global1.c.x), var_0), !global1.c, global1.c), global1.d, ~min(u_input.a.x, u_input.c.x));
    let var_3 = var_2;
    global0 = Struct_1(~var_1.a);
    return any(global1.c.wwy);
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> Struct_2 {
    var var_0 = vec3<bool>(true, !func_2(), !(all(global1.c) & true));
    var var_1 = ~arg_1;
    global1 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, -161f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global1.a, global1.a)) * global1.a)), vec2<f32>(_wgslsmith_f_op_f32(round(295f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-505f)), _wgslsmith_f_op_f32(-global1.a.x)))), 20377u, global1.c, !select(var_0.zx, !(!var_0.zy), true), ~global1.b);
    var_0 = vec3<bool>(_wgslsmith_mod_i32(global0.a, 1i >> (1u % 32u)) > 2147483647i, !(false & !func_2()), !select(all(global1.c.wyy), var_0.x, any(vec4<bool>(var_0.x, var_0.x, true, false))));
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(-global1.a), global1.e & (4294967295u ^ _wgslsmith_dot_vec3_u32(~u_input.c.wyy, u_input.c.zzz)), !vec4<bool>(global1.c.x, !var_0.x, !(u_input.b < u_input.b), !var_0.x), global1.d, ~10459u);
    return Struct_2(_wgslsmith_f_op_vec2_f32(-global1.a), firstTrailingBit(13123u), !vec4<bool>(global1.c.x, !global1.d.x | true, global1.d.x, _wgslsmith_f_op_f32(select(-183f, global1.a.x, global1.c.x)) <= _wgslsmith_f_op_f32(max(global1.a.x, -1012f))), select(!global1.d, var_0.zz, vec2<bool>(true, true)), firstTrailingBit(~(~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(arg_1, 4294967295u, arg_0.x, global1.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<u32>(~1u, global1.b), u_input.c.x);
    var var_1 = _wgslsmith_mult_vec3_i32(~(-countOneBits(vec3<i32>(global0.a, global0.a, global0.a))), ~vec3<i32>(i32(-1i) * -2147483647i, ~u_input.d.x, 27077i)) & vec3<i32>(-_wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.d), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 10140i), vec2<i32>(u_input.b, -2147483647i))), _wgslsmith_dot_vec3_i32((vec3<i32>(global0.a, global0.a, -8544i) | vec3<i32>(u_input.d.x, -2147483647i, global0.a)) >> (reverseBits(u_input.c.zxz) % vec3<u32>(32u)), -min(vec3<i32>(global0.a, 1i, 1i), vec3<i32>(u_input.d.x, global0.a, -1i))), (-1i | abs(global0.a)) & u_input.b);
    let var_2 = -4000i;
    global1 = func_1(abs(select(_wgslsmith_div_vec2_u32(u_input.c.ww, u_input.c.yx) >> (~u_input.a.yx % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(u_input.a.wy, _wgslsmith_mult_vec2_u32(u_input.c.xx, vec2<u32>(global1.e, u_input.e))), global1.c.xy)), var_0.b);
    let var_3 = func_1(vec2<u32>(4294967295u, ~abs(var_0.b) & _wgslsmith_div_u32(42626u, 1u)), select((global1.b >> (firstLeadingBit(global1.b) % 32u)) ^ firstTrailingBit(~0u), reverseBits(u_input.c.x), any(vec3<bool>(!var_0.c.x, false, all(var_0.d))))).d;
    var var_4 = func_1(firstTrailingBit(vec2<u32>(var_0.b, ~u_input.c.x)), ~0u);
    let var_5 = func_1(firstTrailingBit(u_input.a.xy), _wgslsmith_mod_u32(_wgslsmith_div_u32(var_4.b, 4294967295u), abs(~(~4294967295u))));
    global0 = Struct_1(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(global1.a.x - -629f), -1433f), firstLeadingBit(firstLeadingBit(vec2<u32>(abs(var_5.e), ~u_input.c.x))));
}

