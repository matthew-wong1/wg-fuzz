struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<f32>, 3>;

var<private> global2: Struct_1;

var<private> global3: array<vec2<u32>, 14>;

var<private> global4: array<u32, 11> = array<u32, 11>(1u, 73983u, 47165u, 112166u, 58340u, 4294967295u, 0u, 0u, 13822u, 1u, 4294967295u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> vec4<i32> {
    global3 = array<vec2<u32>, 14>();
    global1 = array<vec3<f32>, 3>();
    var var_0 = _wgslsmith_mult_vec4_i32(global2.b, global2.b | select(vec4<i32>(u_input.d, u_input.b, firstLeadingBit(u_input.b), ~(-21160i)), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 6635i, global2.b.x, 2147483647i), -vec4<i32>(u_input.b, 5799i, -6883i, u_input.a.x)), vec4<bool>(all(vec4<bool>(true, false, true, false)), all(vec3<bool>(false, true, true)), false, false)));
    let var_1 = Struct_1(global2.a, global2.b);
    var var_2 = firstLeadingBit(var_1.b.x);
    return ~countOneBits(-_wgslsmith_sub_vec4_i32(global2.b, vec4<i32>(var_1.b.x, -2147483647i, -45751i, 0i) ^ global2.b));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_div_i32(~_wgslsmith_mod_i32(~6237i, 2147483647i), global2.b.x | -2147483647i);
    global0 = _wgslsmith_dot_vec4_i32(vec4<i32>(~(~global2.b.x), -firstTrailingBit(arg_0.b.x) | ~(global2.b.x & 2147483647i), global2.b.x, 1i), func_2());
    global3 = array<vec2<u32>, 14>();
    global2 = arg_0;
    global3 = array<vec2<u32>, 14>();
    return arg_0;
}

fn func_3() -> vec3<f32> {
    var var_0 = -1000f;
    let var_1 = func_1(Struct_1(-390f, firstTrailingBit(vec4<i32>(global2.b.x, global2.b.x, global2.b.x, -2147483647i) | select(global2.b, global2.b, false))));
    var var_2 = all(select(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), select(select(vec2<bool>(true, false), vec2<bool>(true, false), any(vec2<bool>(true, true))), vec2<bool>(any(vec2<bool>(false, false)), any(vec3<bool>(true, false, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true))), !vec2<bool>(true, var_1.a > 1000f)));
    var var_3 = -(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.b.x, global2.b.x, global2.b.x), vec3<i32>(u_input.a.x, global2.b.x, u_input.a.x)), 2147483647i, 20833i) << (_wgslsmith_clamp_vec3_u32(reverseBits(~vec3<u32>(2432u, global4[_wgslsmith_index_u32(4518u, 11u)], 0u)), vec3<u32>(u_input.c.x, _wgslsmith_add_u32(0u, 1u), 4294967295u), vec3<u32>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.zz, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(49556u, 11u)], 14u)]), 11u)], 1u, ~49505u)) % vec3<u32>(32u)));
    let var_4 = ~u_input.c;
    return global1[_wgslsmith_index_u32(113381u, 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.c;
    global1 = array<vec3<f32>, 3>();
    let var_1 = abs(abs(vec4<i32>(global2.b.x >> (4294967295u % 32u), 1i, firstLeadingBit(u_input.b & -29836i), -u_input.a.x)));
    let var_2 = func_1(Struct_1(-518f, select(~(vec4<i32>(global2.b.x, -2147483647i, -1i, 2147483647i) | var_1), vec4<i32>(-2147483647i & global2.b.x, u_input.a.x, 2147483647i, -2147483647i), vec4<bool>(true, true, true, true))));
    global3 = array<vec2<u32>, 14>();
    var var_3 = global2.b;
    global0 = -2147483647i;
    var var_4 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_3())));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_4.x - -994f), var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) * _wgslsmith_f_op_f32(min(803f, 1271f))), _wgslsmith_div_f32(-1659f, _wgslsmith_f_op_f32(-var_2.a))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, 432f, global2.a, var_4.x) + vec4<f32>(1000f, -483f, var_4.x, global2.a)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), var_4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a + global2.a))), _wgslsmith_f_op_f32(f32(-1f) * -956f)), -(i32(-1i) * -5281i), -795i);
}

