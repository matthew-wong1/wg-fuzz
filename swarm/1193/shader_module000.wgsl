struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: f32 = 614f;

var<private> global2: Struct_3 = Struct_3(vec3<u32>(4294967295u, 56485u, 4294967295u), Struct_1(-203f), true);

var<private> global3: Struct_1;

var<private> global4: vec2<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    let var_0 = abs(~(~(_wgslsmith_mult_u32(global2.a.x, 0u) & firstLeadingBit(u_input.a))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a - global3.a)));
    let var_1 = var_0;
    let var_2 = ~u_input.a;
    let var_3 = Struct_3(_wgslsmith_mult_vec3_u32(vec3<u32>(69124u, ~global2.a.x, global2.a.x ^ var_0) ^ (global2.a | _wgslsmith_mult_vec3_u32(global2.a, global2.a)), max(abs(min(vec3<u32>(48120u, var_0, u_input.a), vec3<u32>(var_2, 72054u, 23332u))), global2.a)), Struct_1(1f), false);
    return Struct_2(_wgslsmith_f_op_vec4_f32(-arg_2.a));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: vec3<f32>) -> u32 {
    global2 = Struct_3(global2.a, Struct_1(arg_3.x), false);
    let var_0 = !select(!select(select(vec3<bool>(true, global2.c, false), vec3<bool>(true, false, global2.c), vec3<bool>(arg_0, arg_0, global2.c)), vec3<bool>(false, arg_0, true), !vec3<bool>(global2.c, arg_0, true)), !select(!vec3<bool>(global2.c, false, global2.c), vec3<bool>(global2.c, true, global2.c), vec3<bool>(true, arg_0, true)), !select(vec3<bool>(false, true, arg_0), select(vec3<bool>(arg_0, true, true), vec3<bool>(false, global2.c, global2.c), vec3<bool>(false, false, arg_0)), select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, true, arg_0), vec3<bool>(global2.c, global2.c, true))));
    let var_1 = vec3<u32>(~abs(u_input.a), 1u, ~50138u);
    let var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(139f + -933f), -508f, _wgslsmith_div_f32(-960f, _wgslsmith_f_op_f32(floor(846f))), global2.b.a));
    let var_3 = Struct_1(global0.x);
    return var_1.x;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> vec2<f32> {
    var var_0 = vec3<i32>(arg_2 | _wgslsmith_mod_i32(-arg_2 | ~2147483647i, arg_2), arg_2, 6471i);
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.a) * -682f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -342f)), 1288f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * global0.x) + _wgslsmith_f_op_f32(global0.x * -1529f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(159f, 1480f, -276f, -649f) + vec4<f32>(global4.x, 462f, arg_0.a, global0.x)), vec4<f32>(-541f, arg_1, 1999f, -685f), vec4<bool>(false, false, true, true)))))));
    var_1 = func_2(~vec2<i32>(arg_2, _wgslsmith_dot_vec2_i32(reverseBits(var_0.xy), var_0.yy)), arg_0, Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_1.a, _wgslsmith_f_op_vec4_f32(-var_1.a), select(vec4<bool>(false, true, true, global2.c), vec4<bool>(false, false, global2.c, global2.c), true))), vec4<f32>(-1000f, -607f, _wgslsmith_f_op_f32(var_1.a.x + arg_0.a), _wgslsmith_f_op_f32(-global3.a)))));
    var var_2 = Struct_3(_wgslsmith_div_vec3_u32(~vec3<u32>(~0u, func_3(global2.c, vec4<i32>(-9850i, 1i, arg_2, 2147483647i), vec2<i32>(2147483647i, var_0.x), var_1.a.wzw), global2.a.x), ~(~(~global2.a))), global2.b, all(!select(select(vec4<bool>(false, global2.c, global2.c, true), vec4<bool>(true, true, global2.c, true), vec4<bool>(global2.c, global2.c, false, false)), select(vec4<bool>(global2.c, global2.c, global2.c, true), vec4<bool>(global2.c, global2.c, global2.c, false), false), global2.c)));
    var var_3 = global2.b;
    return _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-604f, _wgslsmith_f_op_f32(f32(-1f) * -301f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1468f - -1221f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.b;
    var var_1 = ~(~vec2<u32>(50532u, 39786u) << (~(~vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))) ^ global2.a.yx;
    var var_2 = -811f;
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_1(global2.b, 1333f, ~21260i))))));
    var var_3 = 0i;
    var_3 = -2147483647i;
    var var_4 = _wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_mult_i32(firstTrailingBit(countOneBits(0i)), 13731i)), -_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i) | _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 1i, 0i), vec3<i32>(0i, 1i, -2147483647i), vec3<i32>(-11009i, 98850i, 22106i))));
    global1 = global3.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<i32>(-countOneBits(6278i), _wgslsmith_div_i32(2147483647i >> (u_input.a % 32u), -2147483647i), reverseBits(~(-26930i)))));
}

