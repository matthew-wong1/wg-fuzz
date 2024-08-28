struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global1: array<vec4<u32>, 17>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = Struct_1(436f);
    global1 = array<vec4<u32>, 17>();
    global0 = !vec4<bool>(global0.x, global0.x, select(_wgslsmith_f_op_f32(-var_0.a) <= _wgslsmith_f_op_f32(var_0.a * 475f), true, !global0.x || true), !(global0.x && all(vec4<bool>(global0.x, global0.x, global0.x, true))));
    let var_1 = _wgslsmith_div_f32(945f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-var_0.a));
    return !global0.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1) -> f32 {
    global1 = array<vec4<u32>, 17>();
    let var_0 = arg_2;
    var var_1 = func_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_0.a, 1000f, arg_1)))) - arg_2.a)), -2147483647i, Struct_1(1469f), arg_2);
    var var_2 = true | any(select(!arg_0, !arg_0, select(arg_0, arg_0, select(vec4<bool>(arg_1, arg_1, true, arg_1), arg_0, arg_0.x))));
    global1 = array<vec4<u32>, 17>();
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.a), arg_2.a));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global1 = array<vec4<u32>, 17>();
    let var_0 = arg_1;
    global0 = select(!vec4<bool>(arg_2, arg_2, arg_2, false), vec4<bool>(arg_2, arg_2, any(vec3<bool>(true, arg_2, true)) & !global0.x, !(_wgslsmith_f_op_f32(max(arg_1.a, arg_1.a)) <= -1000f)), vec4<bool>(any(!(!vec4<bool>(true, arg_2, global0.x, arg_2))), false, func_3(arg_1, firstTrailingBit(~(-2178i)), arg_1, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), !any(!vec4<bool>(true, false, global0.x, global0.x))));
    let var_1 = vec3<u32>(_wgslsmith_add_u32(arg_0.x, u_input.b | (u_input.b << (arg_0.x % 32u))), 1u, u_input.b) | _wgslsmith_add_vec3_u32(vec3<u32>(1u, 8728u | max(47394u, arg_0.x), ~(~1u)), firstTrailingBit(_wgslsmith_sub_vec3_u32(~u_input.d, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, 0u, u_input.a.x), vec3<u32>(u_input.b, arg_0.x, 0u), vec3<u32>(u_input.b, 49775u, 0u)))));
    var var_2 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.e.x, -1i), _wgslsmith_dot_vec4_i32(u_input.e, u_input.e)) ^ u_input.c.x, -33714i), u_input.c.x);
    return Struct_1(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2457f * _wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_f32(ceil(-298f)))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = func_4(countOneBits(vec4<u32>(firstLeadingBit(u_input.a.x) >> (~4427u % 32u), u_input.a.x, _wgslsmith_mod_u32(u_input.d.x, 52815u & u_input.b), _wgslsmith_mod_u32(u_input.d.x, 14563u))), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(select(vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, false, true, global0.x)), any(vec4<bool>(global0.x, false, global0.x, global0.x)), Struct_1(-957f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0)))))), global0.x);
    var_0 = func_4(~global1[_wgslsmith_index_u32(u_input.b, 17u)], func_4(firstLeadingBit(u_input.a), func_4(u_input.a, Struct_1(_wgslsmith_f_op_f32(1000f + var_0.a)), false), false), global0.x);
    let var_1 = Struct_1(arg_0);
    let var_2 = countOneBits(min(_wgslsmith_sub_vec4_i32(vec4<i32>(select(u_input.c.x, u_input.c.x, true), -26830i, u_input.c.x, ~(-27906i)), firstLeadingBit(vec4<i32>(u_input.e.x, u_input.e.x, -2147483647i, -48090i)) & -u_input.e), _wgslsmith_mult_vec4_i32(u_input.e, countOneBits(u_input.e))));
    var var_3 = ~var_2.zx;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 17>();
    let var_0 = _wgslsmith_div_vec4_i32(-u_input.e, _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-4434i, u_input.e.x), -1i, u_input.c.x >> (u_input.a.x % 32u), -3081i), min(vec4<i32>(u_input.c.x, u_input.c.x, -9046i, -50983i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.e.x, u_input.c.x, u_input.e.x), vec4<i32>(u_input.e.x, 36786i, 18812i, -34785i))))) & (~u_input.e | vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i) ^ vec2<i32>(-6513i, u_input.c.x), u_input.c.xz), u_input.e.x, -_wgslsmith_div_i32(u_input.c.x, u_input.c.x), u_input.e.x));
    var var_1 = global0.x;
    var var_2 = !vec3<bool>(true, !(!(global0.x & global0.x)), true);
    let var_3 = func_1(113f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_3.a, var_3.a), ~(~(~vec2<u32>(u_input.a.x, 4294967295u)) & vec2<u32>(u_input.d.x, firstLeadingBit(u_input.a.x))));
}

