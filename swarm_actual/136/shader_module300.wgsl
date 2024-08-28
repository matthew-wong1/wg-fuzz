struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: array<Struct_2, 8>;

var<private> global2: bool;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>) -> vec2<bool> {
    return arg_0.a;
}

fn func_1(arg_0: f32, arg_1: i32) -> vec4<i32> {
    global0 = array<Struct_2, 12>();
    var var_0 = _wgslsmith_sub_u32(min(23584u, ~u_input.d.x), 4294967295u);
    var_0 = ~u_input.d.x;
    global2 = -select(-16067i, 0i, true | (79667u < u_input.b)) > firstTrailingBit(arg_1);
    global2 = true && all(select(vec2<bool>(true, 1104f <= arg_0), vec2<bool>(true, true), select(vec2<bool>(true, true), func_2(Struct_1(vec2<bool>(true, true), vec4<f32>(arg_0, 1441f, -1148f, 660f), vec4<i32>(0i, u_input.a.x, 36724i, 1i)), 2758u, vec2<i32>(u_input.a.x, -15144i)), arg_1 != 2147483647i)));
    return abs(u_input.a);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    global2 = true;
    let var_0 = Struct_2(func_2(Struct_1(vec2<bool>(all(vec3<bool>(arg_3.c.a.x, arg_1.a, false)), arg_1.a), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2, arg_3.b, arg_2, -1386f))), ~firstLeadingBit(vec4<i32>(u_input.c, arg_1.e.x, -44275i, arg_3.e.x))), 1u, arg_1.c.c.zy >> (countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(25395u, u_input.b), vec2<u32>(1u, 22679u))) % vec2<u32>(32u))).x, arg_2, arg_3.c, arg_1.c.a.x, _wgslsmith_mult_vec4_i32(select(~arg_3.c.c, vec4<i32>(-5103i, arg_3.c.c.x, -32692i, -arg_1.c.c.x), select(select(vec4<bool>(arg_1.d, arg_3.c.a.x, arg_1.c.a.x, arg_3.a), vec4<bool>(arg_3.d, true, true, true), vec4<bool>(arg_3.c.a.x, false, arg_1.c.a.x, arg_3.a)), !vec4<bool>(arg_1.d, arg_1.a, false, true), false)), ~abs(vec4<i32>(2147483647i, u_input.c, -15696i, u_input.c))));
    global1 = array<Struct_2, 8>();
    let var_1 = Struct_1(select(func_2(Struct_1(var_0.c.a, _wgslsmith_f_op_vec4_f32(-arg_3.c.b), vec4<i32>(-47104i, 1i, 15949i, 0i)), arg_0.x, _wgslsmith_mult_vec2_i32(vec2<i32>(-11352i, arg_3.e.x), arg_3.e.zw) << (select(arg_0.xy, u_input.d.yw, true) % vec2<u32>(32u))), vec2<bool>(var_0.c.a.x, true), vec2<bool>(arg_1.a, all(var_0.c.a))), vec4<f32>(-819f, 1266f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_0.c.b.x, -666f)))), _wgslsmith_f_op_f32(max(522f, _wgslsmith_f_op_f32(-arg_3.b)))), _wgslsmith_sub_vec4_i32(var_0.e, max(firstLeadingBit(arg_1.e << (u_input.d % vec4<u32>(32u))), vec4<i32>(firstTrailingBit(2147483647i), _wgslsmith_dot_vec3_i32(arg_1.e.zyy, arg_1.c.c.xyx), -2147483647i, 1i))));
    var var_2 = countOneBits(~(~_wgslsmith_sub_vec4_u32(u_input.d, u_input.d)));
    return global1[_wgslsmith_index_u32(55543u, 8u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec3<i32>(-1i, abs(u_input.a.x) ^ (i32(-1i) * -1i), 0i ^ firstTrailingBit(36455i)) & -vec3<i32>(-38369i, (i32(-1i) * -2147483647i) << (u_input.d.x % 32u), -1i);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-559f + -435f) - _wgslsmith_f_op_f32(f32(-1f) * -842f)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -873f))));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(var_1.xx, _wgslsmith_f_op_vec2_f32(trunc(var_1.xy)), false));
    var var_3 = u_input.b;
    let var_4 = countOneBits(_wgslsmith_mod_vec3_u32(select(u_input.d.ywz, vec3<u32>(~4294967295u, 0u, 99681u), true), ~(~u_input.d.ywz)));
    var var_5 = func_3(~u_input.d.xxz, Struct_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.x + -1235f), _wgslsmith_f_op_f32(-2250f + -607f), true))), Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), vec4<f32>(-416f, 1212f, _wgslsmith_f_op_f32(step(-121f, var_2.x)), _wgslsmith_f_op_f32(-var_2.x)), ~vec4<i32>(u_input.a.x, -2147483647i, u_input.c, 0i) ^ select(u_input.a, u_input.a, vec4<bool>(true, true, true, true))), !(u_input.c > -u_input.c), countOneBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, u_input.a.x, u_input.a.x, var_0.x), vec4<i32>(u_input.c, 45838i, u_input.c, 84651i), vec4<i32>(-125i, u_input.c, -2147483647i, u_input.a.x)), func_1(-996f, u_input.a.x), _wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(1i, 44201i, var_0.x, var_0.x))))), _wgslsmith_f_op_f32(ceil(var_2.x)), Struct_2(true, _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-534f * var_2.x) - _wgslsmith_f_op_f32(1787f + -672f)))), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, var_1.x, -1235f, -270f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1086f, -195f, var_1.x, var_2.x)))), _wgslsmith_sub_vec4_i32(-u_input.a, vec4<i32>(65924i, var_0.x, -2147483647i, u_input.c))), (true & any(vec3<bool>(true, true, true))) | !any(vec3<bool>(true, true, false)), -u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-_wgslsmith_dot_vec3_i32(var_5.c.c.zww, var_0), 1i), vec2<u32>(~3709u | _wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u, 0u, 24160u), var_4.x), var_4.x), ~_wgslsmith_add_vec2_i32(vec2<i32>(var_5.c.c.x | u_input.a.x, 5616i), max(~vec2<i32>(u_input.c, -1i), _wgslsmith_div_vec2_i32(var_5.c.c.xw, var_5.e.ww))));
}

