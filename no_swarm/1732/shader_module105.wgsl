struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i, -147f, vec4<u32>(4294967295u, 27786u, 4294967295u, 4294967295u), 1i);

var<private> global1: array<vec3<bool>, 11>;

var<private> global2: vec3<i32> = vec3<i32>(-17227i, i32(-2147483648), -1i);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = Struct_1(62929i, _wgslsmith_f_op_f32(min(-417f, -3249f)), global0.c, -32721i);
    let var_1 = countOneBits(_wgslsmith_div_i32(arg_0, min(var_0.d << (0u % 32u), abs(arg_0)) >> (1u % 32u)));
    global0 = var_0;
    var var_2 = -vec3<i32>(firstLeadingBit(min(36426i, global0.d >> (12934u % 32u))), _wgslsmith_add_i32(1i, -11790i) << (var_0.c.x % 32u), var_0.d);
    var var_3 = var_0;
    return var_0.b;
}

fn func_2() -> Struct_1 {
    global2 = abs(abs(vec3<i32>(-21896i ^ -global0.d, ~reverseBits(global0.a), -(1i ^ global0.a))));
    global0 = Struct_1(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(40872i))) - _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-1i)) + _wgslsmith_f_op_f32(-555f + global0.b)))), _wgslsmith_mod_vec4_u32(abs(~vec4<u32>(u_input.b.x, u_input.b.x, 7803u, u_input.b.x)), _wgslsmith_mult_vec4_u32(min(vec4<u32>(u_input.c, 23967u, global0.c.x, 472u), global0.c), abs(global0.c)) << (_wgslsmith_sub_vec4_u32(global0.c, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 33436u, 0u, u_input.b.x), global0.c)) % vec4<u32>(32u))), _wgslsmith_clamp_i32(u_input.e.x, _wgslsmith_add_i32(u_input.d, -_wgslsmith_clamp_i32(-1i, -1i, 1i)), _wgslsmith_sub_i32(1i, global0.a) | _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(23338i, global2.x), u_input.e.zz, global2.yx), global2.yx)));
    var var_0 = true;
    let var_1 = 4294967295u;
    var var_2 = firstTrailingBit(-(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, u_input.e.x, 0i, 2147483647i), ~vec4<i32>(-2147483647i, global2.x, u_input.e.x, global2.x)) >> (~global0.c.x % 32u)));
    return Struct_1(-1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(global2.x >> (0u % 32u)))))), global0.c, global2.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool, arg_3: i32) -> Struct_1 {
    global0 = Struct_1(abs(arg_1.x), _wgslsmith_f_op_f32(select(2057f, _wgslsmith_f_op_f32(trunc(-1689f)), arg_2)), arg_0.c, 0i);
    let var_0 = ~vec4<u32>(~(global0.c.x & u_input.b.x), ~global0.c.x, global0.c.x, func_2().c.x) | ~(~(~vec4<u32>(global0.c.x, global0.c.x, 4294967295u, 76845u)) << ((vec4<u32>(u_input.c, arg_0.c.x, 1131u, u_input.c) ^ select(vec4<u32>(1u, global0.c.x, 21396u, 0u), vec4<u32>(u_input.c, 16808u, arg_0.c.x, 0u), arg_2)) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.b)) - _wgslsmith_f_op_f32(exp2(1f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(546f, _wgslsmith_f_op_f32(-1100f + global0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b + 1143f) * global0.b), arg_2))), global0.b);
    let var_2 = !vec4<bool>(all(vec2<bool>(false, arg_2)) & !any(vec4<bool>(true, false, false, false)), any(select(select(vec4<bool>(true, arg_2, arg_2, arg_2), vec4<bool>(true, true, false, true), vec4<bool>(true, arg_2, arg_2, arg_2)), vec4<bool>(false, arg_2, true, arg_2), select(vec4<bool>(arg_2, false, true, arg_2), vec4<bool>(arg_2, arg_2, true, false), true))), !all(!vec2<bool>(true, arg_2)), true);
    var var_3 = firstTrailingBit(vec4<u32>(~0u, _wgslsmith_add_u32(1u, global0.c.x), arg_0.c.x, firstLeadingBit(max(0u, arg_0.c.x) | _wgslsmith_dot_vec4_u32(global0.c, global0.c))));
    return Struct_1(arg_1.x, -1223f, vec4<u32>(_wgslsmith_mult_u32(abs(u_input.b.x), global0.c.x), (var_3.x | _wgslsmith_div_u32(var_0.x, 26731u)) >> (func_2().c.x % 32u), 0u, ~var_3.x), ~(arg_1.x & ~_wgslsmith_dot_vec3_i32(arg_1.yzx, vec3<i32>(14788i, -2147483647i, arg_3))));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = ~17656u;
    let var_1 = vec2<i32>(global0.d, select(-62192i, _wgslsmith_mod_i32(abs(-39223i), -41184i), true));
    let var_2 = Struct_1(20055i, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * global0.b), _wgslsmith_f_op_f32(max(-825f, _wgslsmith_f_op_f32(floor(118f))))), global0.b)), global0.c, _wgslsmith_mod_i32(global2.x, countOneBits(firstLeadingBit(abs(1i)))));
    var var_3 = 4294967295u;
    var var_4 = func_4(func_2(), -u_input.e, _wgslsmith_clamp_i32(-2147483647i, ~var_1.x | 2147483647i, -19025i << (u_input.c % 32u)) < -(~_wgslsmith_dot_vec2_i32(global2.xx, vec2<i32>(1i, 48558i))), ~_wgslsmith_div_i32(global2.x, 12624i));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 11>();
    var var_0 = Struct_1(_wgslsmith_mult_i32(reverseBits(func_1(_wgslsmith_div_i32(global0.a, global0.d))), u_input.a), _wgslsmith_f_op_f32(abs(global0.b)), global0.c, ~0i);
    var var_1 = -361f;
    global2 = abs(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -4678i, _wgslsmith_mod_i32(2147483647i, 30686i), abs(global2.x)), u_input.e), u_input.a, global2.x));
    let var_2 = Struct_1(min(min(-global0.d, 2147483647i ^ var_0.d) << (func_4(func_4(Struct_1(-1i, global0.b, global0.c, global2.x), vec4<i32>(u_input.e.x, 11613i, u_input.d, global0.d), true, global2.x), ~u_input.e, true, -78906i).c.x % 32u), -1i), 1f, var_0.c, _wgslsmith_mod_i32((0i ^ u_input.e.x) ^ 57658i, 1i));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(789f + var_2.b)) + global0.b) * global0.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-493f, _wgslsmith_f_op_f32(select(global0.b, 216f, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(-_wgslsmith_div_i32(0i, global0.d))), _wgslsmith_f_op_f32(sign(var_2.b))));
}

