struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(1945f, -406f, -1824f);

var<private> global1: vec2<u32> = vec2<u32>(0u, 0u);

var<private> global2: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(2147483647i, 0i, -10035i), vec3<i32>(-35355i, 7578i, 1i), vec3<i32>(2147483647i, 2147483647i, 22814i), vec3<i32>(-45087i, -1i, -2427i), vec3<i32>(0i, 12091i, -5337i), vec3<i32>(1i, i32(-2147483648), -21682i), vec3<i32>(2147483647i, -19736i, 1i), vec3<i32>(2147483647i, 24921i, -31990i), vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(1i, 2147483647i, 70403i), vec3<i32>(0i, i32(-2147483648), -1i), vec3<i32>(-1i, -62029i, -1i), vec3<i32>(32672i, 0i, 0i), vec3<i32>(2147483647i, -1i, -1i));

var<private> global3: vec3<bool>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: u32, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(max(-412f, arg_3.c.a));
    global2 = array<vec3<i32>, 14>();
    global1 = min(~arg_1.d.c.wz, ~arg_0.xz);
    let var_1 = arg_1.b.c.c | (reverseBits(abs(~arg_3.b.c)) << (max(~vec4<u32>(arg_0.x, 6774u, 77755u, 4294967295u), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(arg_1.b.c.c, arg_1.b.c.c), vec4<u32>(4294967295u, arg_2, arg_0.x, global1.x))) % vec4<u32>(32u)));
    let var_2 = min(reverseBits(~vec2<u32>(1u, 0u)), ~vec2<u32>(_wgslsmith_mult_u32(global1.x, arg_1.b.c.b), min(4294967295u, 1u))) >> (var_1.zy % vec2<u32>(32u));
    return max(~_wgslsmith_mult_vec2_u32(~firstTrailingBit(arg_0.wy), min(vec2<u32>(var_1.x, 0u), vec2<u32>(35606u, arg_1.b.b.b))), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u), ~vec2<u32>(33217u, var_2.x))));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_2(max(u_input.d.x, 4294967295u), Struct_1(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(step(364f, _wgslsmith_f_op_f32(exp2(global0.c))))), max(1u, _wgslsmith_clamp_u32(~u_input.d.x, u_input.d.x, ~40806u)), select(vec4<u32>(u_input.d.x, 840u & global1.x, 4984u, 1u), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, global1.x, 77449u, u_input.d.x), vec4<u32>(96515u, u_input.d.x, 0u, 14961u)), vec4<bool>(true, true, true, true)), ~u_input.c, true), Struct_1(_wgslsmith_f_op_f32(trunc(global0.a)), u_input.d.x, vec4<u32>(max(0u | global1.x, ~70793u), 0u, firstLeadingBit(12080u), 4294967295u), _wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.b, -3673i), u_input.c), true));
    global1 = vec2<u32>(firstLeadingBit(max(1u, 1u)), firstLeadingBit(var_0.c.c.x));
    global1 = var_0.c.c.yw >> (~_wgslsmith_div_vec2_u32(var_0.b.c.zy, vec2<u32>(u_input.d.x & u_input.d.x, 1u)) % vec2<u32>(32u));
    var var_1 = Struct_3(-592f, global0.a, _wgslsmith_div_f32(global0.c, var_0.c.a));
    global2 = array<vec3<i32>, 14>();
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1385f * var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.a) * 799f)), _wgslsmith_div_f32(114f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -740f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.a * var_1.a) * _wgslsmith_f_op_f32(step(var_0.c.a, -847f))), global0.b))) * vec4<f32>(497f, _wgslsmith_f_op_f32(-var_0.b.a), var_1.c, var_1.b));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: vec2<u32>) -> Struct_3 {
    let var_0 = ~2137u;
    let var_1 = _wgslsmith_div_f32(-361f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1304f, -412f)) * _wgslsmith_f_op_f32(-global0.a))))));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, var_1, -830f, -2849f))))));
    global3 = vec3<bool>(global3.x, any(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(global3.x, global3.x, true, global3.x), false), select(vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(global3.x, global3.x, true, global3.x), global3.x), vec4<bool>(false, global3.x, true, global3.x))), all(global3.zx));
    let var_3 = ~firstLeadingBit(reverseBits(u_input.b));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_div_f32(var_1, 1000f))) * var_1), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(264f))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: Struct_3) -> f32 {
    global1 = u_input.d;
    global2 = array<vec3<i32>, 14>();
    var var_0 = arg_0.yyx;
    var var_1 = -u_input.a;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.c)), _wgslsmith_f_op_f32(-global0.c));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-798f * -282f))))), _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3()).x, -569f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mod_vec2_u32(~reverseBits(vec2<u32>(55381u, 5389u)), ~(~(~vec2<u32>(25509u, u_input.d.x)))) ^ _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(~func_1(vec4<u32>(68437u, u_input.d.x, global1.x, 1u), Struct_4(global3.x, Struct_2(u_input.d.x, Struct_1(global0.c, 52355u, vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 89641u), u_input.c, false), Struct_1(global0.a, global1.x, vec4<u32>(u_input.d.x, global1.x, 17343u, 4294967295u), u_input.c, false)), vec2<f32>(238f, global0.a), Struct_1(-273f, global1.x, vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, global1.x), vec2<i32>(u_input.c.x, u_input.b), global3.x)), 43962u, Struct_2(global1.x, Struct_1(-428f, 86378u, vec4<u32>(4294967295u, 1u, u_input.d.x, u_input.d.x), vec2<i32>(u_input.c.x, u_input.c.x), global3.x), Struct_1(global0.b, u_input.d.x, vec4<u32>(u_input.d.x, 0u, u_input.d.x, 4294967295u), u_input.c, global3.x))), ~_wgslsmith_mod_vec2_u32(u_input.d, u_input.d)), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(27557u, global1.x)), vec2<u32>(abs(u_input.d.x), firstLeadingBit(global1.x))), _wgslsmith_sub_vec2_u32(min(u_input.d >> (vec2<u32>(global1.x, 12669u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(u_input.d, u_input.d)), ~(~u_input.d)));
    var var_0 = Struct_3(_wgslsmith_f_op_f32(func_4(_wgslsmith_add_vec4_i32(-firstTrailingBit(vec4<i32>(-2147483647i, u_input.a, 36018i, 5183i)), ~(vec4<i32>(0i, 6061i, -1i, -1i) & vec4<i32>(-67856i, -2147483647i, -1i, u_input.c.x))), !select(select(vec3<bool>(global3.x, true, global3.x), vec3<bool>(global3.x, false, global3.x), vec3<bool>(false, global3.x, global3.x)), !vec3<bool>(global3.x, global3.x, false), select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(global3.x, true, true), global3.x)), func_2(global0.a, countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 3639u, global1.x), vec3<u32>(7674u, u_input.d.x, 1u))), ~vec2<u32>(u_input.d.x, global1.x)))), -185f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1191f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.c + global0.a), -148f))) - 846f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1880f, -1511f) - _wgslsmith_f_op_f32(-181f - global0.b))) + var_0.a), vec3<f32>(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.c, global0.c, any(vec3<bool>(global3.x, true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-458f, _wgslsmith_f_op_f32(global0.b - global0.a))))));
}

