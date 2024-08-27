struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_1, 16>;

var<private> global2: array<vec4<u32>, 25>;

var<private> global3: vec2<bool> = vec2<bool>(true, false);

var<private> global4: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> f32 {
    let var_0 = arg_2.b.c;
    let var_1 = 359f;
    var var_2 = 1i;
    let var_3 = arg_0.b.b;
    let var_4 = _wgslsmith_f_op_f32(-arg_2.d.a.x);
    return -904f;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32) -> vec2<bool> {
    var var_0 = vec3<i32>(min(firstLeadingBit(countOneBits(-arg_1.x)), arg_0.b << (25504u % 32u)), 1i, -2147483647i);
    let var_1 = Struct_3(Struct_2(select(global4.b.a, _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-7427i, global4.a.a.x), vec2<i32>(arg_1.x, arg_0.b)), u_input.d, var_0.yz >> (u_input.a % vec2<u32>(32u))), true), global1[_wgslsmith_index_u32(arg_2 ^ 59480u, 16u)], true, Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.b.b.a.x, arg_0.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1650f, -178f)))), arg_0.b, u_input.d.x, vec2<bool>(false, true))), global4.b);
    var var_2 = global4.b.b.a;
    global2 = array<vec4<u32>, 25>();
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1386f, var_1.a.b.a.x), _wgslsmith_f_op_f32(func_1(global4.b, false, Struct_2(vec2<i32>(0i, -1i), var_1.a.b, true, Struct_1(global4.b.b.a, -46390i, 1i, arg_0.d)))), _wgslsmith_f_op_f32(min(564f, -440f)), 490f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.a.b.a.x, arg_0.a.x, -413f, -203f)))))), select(!select(vec4<bool>(true, arg_0.d.x, var_1.b.d.d.x, false), vec4<bool>(arg_0.d.x, global4.a.c, global4.a.d.d.x, var_1.a.b.d.x), vec4<bool>(true, global3.x, false, global4.a.b.d.x)), !vec4<bool>(arg_0.d.x, var_1.a.c, global3.x, false), vec4<bool>(true, true, true, true))))));
    return vec2<bool>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, u_input.e ^ 10278u), ~select(u_input.a.x, arg_2, global4.a.b.d.x)) == arg_2, any(arg_0.d));
}

fn func_2() -> Struct_2 {
    let var_0 = vec3<i32>(-1i, global4.b.b.c, global4.a.b.c);
    let var_1 = !(!select(true, global3.x, global3.x) || (firstLeadingBit(1u) == u_input.a.x));
    var var_2 = _wgslsmith_mod_u32(u_input.a.x, u_input.a.x >> (countOneBits(_wgslsmith_mod_u32(~1u, u_input.e)) % 32u));
    global3 = func_3(global4.a.b, vec4<i32>(-1i) * -vec4<i32>(i32(-1i) * -28982i, ~global4.a.b.c, var_0.x >> (u_input.e % 32u), _wgslsmith_sub_i32(var_0.x, -26127i)), _wgslsmith_mult_u32(_wgslsmith_div_u32(30670u, abs(~u_input.a.x)), 54228u));
    var var_3 = global4.a;
    return global4.a;
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    let var_0 = global4.b.d.a.x;
    var var_1 = Struct_2(arg_0.b.a, arg_0.a.d, func_2().c, arg_0.a.d);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.b.d.a.x, global4.b.b.a.x))) - _wgslsmith_f_op_vec2_f32(abs(global4.b.d.a))))), func_2().a.x, var_1.b.c, func_2().d.d);
    let var_3 = ~_wgslsmith_sub_u32(reverseBits(~u_input.a.x), 85382u << (~u_input.a.x % 32u)) & ~select(~(~u_input.a.x), min(~u_input.e, 1u), false || any(vec4<bool>(global4.b.b.d.x, var_1.d.d.x, true, global4.a.b.d.x)));
    let var_4 = min(vec4<u32>(firstTrailingBit(u_input.e), u_input.e, ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(38376u, 43480u), var_3, 4294967295u), 1u), ~(~reverseBits(~vec4<u32>(u_input.e, 31737u, var_3, 32940u))));
    return func_2();
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec2<u32>, arg_3: f32) -> Struct_1 {
    global2 = array<vec4<u32>, 25>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global4.a.b.a), max(u_input.d.x, u_input.b.x), u_input.b.x, vec2<bool>(global4.a.b.d.x, !(!global4.b.c)));
    return func_4(Struct_3(global4.a, func_4(Struct_3(Struct_2(vec2<i32>(u_input.d.x, -1i), global1[_wgslsmith_index_u32(arg_2.x, 16u)], true, arg_0.d), arg_0)))).d;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_2 {
    global0 = 1u;
    global1 = array<Struct_1, 16>();
    global3 = !(!select(vec2<bool>(true, func_2().c), func_4(Struct_3(Struct_2(vec2<i32>(u_input.d.x, -1i), Struct_1(vec2<f32>(382f, -280f), 0i, arg_1.x, global4.b.d.d), false, global4.b.b), Struct_2(global4.b.a, Struct_1(arg_0.a, 13085i, 1i, vec2<bool>(global3.x, false)), false, Struct_1(vec2<f32>(1246f, arg_0.a.x), -39965i, 1i, vec2<bool>(true, global3.x))))).b.d, true));
    global0 = max(~_wgslsmith_add_u32(firstLeadingBit(u_input.a.x), _wgslsmith_add_u32(reverseBits(u_input.a.x), u_input.a.x)), ~u_input.e);
    let var_0 = arg_0.a;
    return func_4(Struct_3(global4.b, Struct_2(-vec2<i32>(0i, 1984i) | vec2<i32>(u_input.c, 7685i), global4.a.b, true, func_4(Struct_3(global4.a, global4.b)).d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(-vec2<i32>(u_input.b.x, global4.b.a.x), global1[_wgslsmith_index_u32(~u_input.e, 16u)], true, Struct_1(vec2<f32>(-564f, global4.b.b.a.x), u_input.c, u_input.d.x, global4.b.b.d)), true, global4.a))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.a.d.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.d.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(273f)))), any(!(!vec4<bool>(global4.a.d.d.x, global4.b.d.d.x, global4.b.d.d.x, true))))));
    var var_1 = global4.a;
    let var_2 = func_6(func_5(func_4(Struct_3(func_2(), global4.b)), global4.a.d.a.x, vec2<u32>(~u_input.e, abs(90601u)) << ((u_input.a & vec2<u32>(u_input.e, u_input.a.x)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(exp2(global4.a.d.a.x))), abs(firstLeadingBit(-vec3<i32>(global4.a.b.b, -1i, -24359i))));
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(1000f * -1942f), _wgslsmith_f_op_f32(var_1.d.a.x * -272f), global4.b.d.a.x, _wgslsmith_f_op_f32(var_1.d.a.x - global4.b.b.a.x)), vec4<f32>(-287f, _wgslsmith_f_op_f32(var_1.d.a.x * var_1.d.a.x), _wgslsmith_f_op_f32(391f - -980f), var_1.b.a.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(vec4<u32>(u_input.e, 0u, u_input.e, 71393u) | vec4<u32>(u_input.e, u_input.e, u_input.e, 4294967295u)), global2[_wgslsmith_index_u32(u_input.a.x, 25u)], vec4<bool>(true, var_1.d.d.x, !func_2().b.d.x, true)), max(vec3<u32>(1u, u_input.e, u_input.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(0u ^ u_input.e, 41076u, firstTrailingBit(0u)), vec3<u32>(u_input.a.x, ~u_input.e, 4294967295u))));
}

