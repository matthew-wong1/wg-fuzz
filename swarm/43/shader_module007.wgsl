struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

var<private> global1: array<vec3<f32>, 9>;

var<private> global2: Struct_1;

var<private> global3: Struct_2;

var<private> global4: Struct_2 = Struct_2(true, Struct_1(1407f, vec2<bool>(false, true)), 2507f, Struct_1(1657f, vec2<bool>(false, true)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_1(arg_0: i32, arg_1: i32) -> bool {
    var var_0 = 1u;
    var var_1 = vec2<bool>(abs(30845u) != abs(u_input.a), _wgslsmith_f_op_f32(-global4.d.a) < _wgslsmith_f_op_f32(-1843f * _wgslsmith_f_op_f32(f32(-1f) * -2057f)));
    let var_2 = _wgslsmith_sub_vec2_i32(-vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(89574u, u_input.a), 31u)], arg_0), _wgslsmith_add_vec2_i32(firstLeadingBit(abs(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 31u)], -16818i))), abs(~(~vec2<i32>(-27329i, 2147483647i)))));
    var var_3 = vec3<bool>(false, true, global2.b.x);
    let var_4 = any(vec2<bool>(select(global2.b.x, !(!global3.b.b.x), false), global4.a));
    return true;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> vec3<bool> {
    let var_0 = global2.a;
    return vec3<bool>(global2.b.x, !all(!vec2<bool>(false, global3.d.b.x)), arg_0);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec3<bool>) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-global2.a), vec2<bool>(select(true, !arg_2.x, any(vec2<bool>(true, true))), false));
    var_0 = global3.d;
    let var_1 = Struct_2(global3.d.b.x, global3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(-global2.a)) + _wgslsmith_f_op_f32(floor(var_0.a))) * var_0.a), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.d.a))), select(!(!global3.d.b), vec2<bool>(true, true), vec2<bool>(true, !global4.b.b.x))));
    let var_2 = Struct_1(var_0.a, var_1.d.b);
    var var_3 = var_1;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(-238f >= _wgslsmith_f_op_f32(global2.a - global4.b.a), select(true, all(global3.b.b), true), true), !vec3<bool>(false, !global3.b.b.x, !func_1(global0[_wgslsmith_index_u32(u_input.a, 31u)], -40630i)), vec3<bool>(false, func_3(26080u, u_input.a, func_2(any(global4.b.b), vec2<i32>(3605i, global0[_wgslsmith_index_u32(25908u, 31u)]))), !any(select(vec4<bool>(global4.d.b.x, global4.a, global2.b.x, true), vec4<bool>(global2.b.x, global2.b.x, global4.d.b.x, global2.b.x), vec4<bool>(true, true, global4.a, false)))));
    global1 = array<vec3<f32>, 9>();
    global3 = Struct_2(global2.b.x, global4.b, _wgslsmith_f_op_f32(ceil(1078f)), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-490f - -602f))), vec2<bool>(var_0.x, true)));
    let var_1 = func_2(!(global4.b.b.x == !func_3(1473u, 5088u, var_0)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(~global0[_wgslsmith_index_u32(u_input.a, 31u)], abs(-26546i)), min(_wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], 4378i), vec2<i32>(1i, global0[_wgslsmith_index_u32(u_input.a, 31u)])), ~vec2<i32>(global0[_wgslsmith_index_u32(0u, 31u)], -2147483647i)))).x;
    global3 = Struct_2(global4.a, Struct_1(-600f, !global4.d.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -624f))), _wgslsmith_f_op_f32(-global3.d.a)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) + _wgslsmith_f_op_f32(-global3.c))), vec2<bool>(true, all(!vec4<bool>(global4.b.b.x, true, global3.a, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(4629i, ~vec4<u32>(~u_input.a << (u_input.a % 32u), 382u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 11583u), vec2<u32>(7098u, 0u)), select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), true)), ~_wgslsmith_clamp_u32(u_input.a, u_input.a, 1u)), ~(~_wgslsmith_mod_u32(u_input.a >> (u_input.a % 32u), ~u_input.a)), firstTrailingBit(abs(vec2<i32>(-20539i, global0[_wgslsmith_index_u32(~1u, 31u)]))), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 1376u), ~vec4<u32>(u_input.a, 51821u, 4294967295u, 0u)) >> (vec4<u32>(~6081u, _wgslsmith_dot_vec2_u32(vec2<u32>(51365u, u_input.a), vec2<u32>(u_input.a, 34995u)), u_input.a, ~0u) % vec4<u32>(32u))));
}

