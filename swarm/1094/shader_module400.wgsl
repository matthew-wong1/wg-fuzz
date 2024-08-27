struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec2<u32>,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_1, 19>;

var<private> global2: array<vec2<f32>, 23>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec4<f32>, arg_3: vec3<u32>) -> bool {
    global1 = array<Struct_1, 19>();
    let var_0 = u_input.d.wxx;
    return true;
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(select(select(select(!vec4<bool>(arg_0.a.x, arg_0.a.x, false, true), !arg_0.a, arg_0.c.x != 0u), select(!arg_0.a, vec4<bool>(false, false, arg_0.b, arg_0.b), select(vec4<bool>(arg_0.a.x, true, true, true), arg_0.a, arg_0.a)), !vec4<bool>(arg_0.b, true, false, true)), vec4<bool>(arg_0.a.x, !all(arg_0.a.zxx), !(72228u < arg_0.e.x), false), vec4<bool>(any(select(arg_0.a, arg_0.a, true)), !(!arg_0.a.x), select(arg_0.b, 26322i > global0.x, true), !arg_0.a.x)), -41776i > _wgslsmith_dot_vec3_i32(u_input.d.xwy, _wgslsmith_clamp_vec3_i32(~vec3<i32>(1i, u_input.d.x, 1i), u_input.d.zyy, vec3<i32>(-17532i, u_input.b.x, 2147483647i))), ~arg_0.e, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.d))), ~(~(~arg_0.e)) ^ vec2<u32>(1u, 4294967295u));
    var var_1 = min(_wgslsmith_mult_vec4_i32(u_input.b, firstTrailingBit(vec4<i32>(global0.x, -42113i, global0.x, -1i)) & firstTrailingBit(vec4<i32>(-1i, 4653i, u_input.d.x, 0i))) >> (vec4<u32>(21729u, ~var_0.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), var_0.e), 4294967295u) % vec4<u32>(32u)), u_input.b);
    var var_2 = Struct_1(var_0.a, !var_0.b, _wgslsmith_clamp_vec2_u32(arg_0.e, arg_0.c, abs(_wgslsmith_sub_vec2_u32(select(vec2<u32>(arg_0.c.x, u_input.a), vec2<u32>(1u, 23839u), arg_0.a.yz), ~arg_0.c))), arg_0.d, _wgslsmith_sub_vec2_u32(~arg_0.e, vec2<u32>(_wgslsmith_mod_u32(1u, 108765u), ~arg_0.e.x) ^ var_0.e));
    global0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, -1i), ~u_input.d.zw, vec2<i32>(firstTrailingBit(1i), _wgslsmith_mult_i32(var_1.x, var_1.x)));
    return var_0.a.xz;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(global2[_wgslsmith_index_u32(u_input.c, 23u)]));
    let var_1 = vec3<bool>(select(!any(vec4<bool>(true, true, true, true)), select(!(698f >= var_0.x), true, true), -406f <= var_0.x), false, func_2(-countOneBits(u_input.b.x), ~(-2147483647i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 27939u, 4294967295u), vec3<u32>(u_input.c, 4294967295u, 3922u)) % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(204f, var_0.x, var_0.x, -1000f))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, -424f, var_0.x), vec4<f32>(-386f, var_0.x, var_0.x, var_0.x)), vec4<bool>(true, true, false, true)))), firstLeadingBit(firstLeadingBit(~vec3<u32>(27984u, u_input.a, 9698u)))));
    var var_2 = global1[_wgslsmith_index_u32(~4294967295u, 19u)];
    var var_3 = !(!func_3(global1[_wgslsmith_index_u32(abs(1u), 19u)]));
    var_2 = global1[_wgslsmith_index_u32(var_2.e.x, 19u)];
    return global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(((reverseBits(var_2.e.x) << (~32735u % 32u)) | ~_wgslsmith_mod_u32(var_2.c.x, 1u)) << (reverseBits(min(~u_input.c, var_2.c.x & 7312u)) % 32u), 4294967295u << (~(~(~var_2.e.x)) % 32u)), 19u)];
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0.a.x;
    var var_1 = 70963u;
    global2 = array<vec2<f32>, 23>();
    let var_2 = Struct_1(select(select(vec4<bool>(true, !arg_0.a.x, arg_0.a.x, false), !select(vec4<bool>(var_0, var_0, false, false), vec4<bool>(arg_0.a.x, var_0, true, var_0), arg_0.a), vec4<bool>(true, all(vec2<bool>(false, arg_0.b)), global0.x > global0.x, arg_0.b)), arg_0.a, !vec4<bool>(31910u != u_input.a, true, arg_0.a.x, !var_0)), var_0, reverseBits(arg_0.c), _wgslsmith_f_op_f32(trunc(191f)), arg_0.c);
    global1 = array<Struct_1, 19>();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1());
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-490f, var_0.d))))) - global2[_wgslsmith_index_u32(var_0.e.x, 23u)]);
    var var_2 = func_4(Struct_1(!var_0.a, !(var_0.e.x == u_input.a), var_0.e, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-673f, _wgslsmith_f_op_f32(round(var_1.x))) - _wgslsmith_f_op_f32(f32(-1f) * -747f)), var_0.c));
    var var_3 = Struct_1(func_1().a, func_1().a.x || any(select(vec2<bool>(var_2.b, var_2.a.x), func_1().a.zw, select(var_2.a.yx, vec2<bool>(false, var_2.a.x), true))), select(var_2.e, ~_wgslsmith_add_vec2_u32(var_0.c, vec2<u32>(var_2.c.x, var_0.e.x)) ^ var_2.c, !(!vec2<bool>(var_0.a.x, var_2.a.x))), func_4(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.c, firstLeadingBit(vec2<u32>(var_2.e.x, u_input.a))) ^ (~var_2.c.x | 49753u), 19u)]).d, vec2<u32>(var_0.e.x, var_2.c.x));
    let var_4 = global0.x;
    var var_5 = func_4(global1[_wgslsmith_index_u32(33360u, 19u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_div_f32(-427f, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.d, var_5.d, var_0.a.x)))), var_5.d));
}

