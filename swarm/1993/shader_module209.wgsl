struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: Struct_1;

var<private> global3: array<vec2<i32>, 19>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<u32>(51852u, _wgslsmith_mod_u32(u_input.a, u_input.a));
    return Struct_1(all(vec2<bool>(false, true)));
}

fn func_3(arg_0: vec3<u32>) -> vec4<bool> {
    global0 = array<i32, 25>();
    global3 = array<vec2<i32>, 19>();
    return !vec4<bool>(false, all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(global2.a, true, false, false), global2.a), select(vec4<bool>(true, global2.a, global1.x, false), vec4<bool>(global1.x, global2.a, global1.x, global2.a), vec4<bool>(true, true, true, global1.x)), select(vec4<bool>(false, false, true, false), vec4<bool>(global1.x, false, global2.a, false), vec4<bool>(false, false, false, global2.a)))), !(!(!global1.x)), !all(vec2<bool>(global2.a, global1.x)));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: i32) -> vec2<f32> {
    var var_0 = vec3<bool>(!(!(!global2.a)), true, 1i >= _wgslsmith_add_i32(arg_3, _wgslsmith_clamp_i32(abs(4567i), -11882i, -2147483647i)));
    global2 = arg_1.a;
    var var_1 = false;
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(~55485u), _wgslsmith_add_u32(abs(4294967295u), ~_wgslsmith_mod_u32(~0u, ~u_input.a))), 25u)];
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1779f, 1101f)))), _wgslsmith_f_op_f32(-348f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(141f + -418f), -302f))), _wgslsmith_f_op_f32(max(-1416f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -739f)))))));
    return var_3.zx;
}

fn func_1(arg_0: u32) -> bool {
    global2 = func_2();
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(u_input.a, Struct_2(func_2()), func_3(vec3<u32>(5551u, ~(u_input.a << (0u % 32u)), min(_wgslsmith_div_u32(68458u, arg_0), ~1u))), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(-1i, global0[_wgslsmith_index_u32(0u, 25u)], 12745i, -2147483647i)), -reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(arg_0, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(arg_0, 25u)], global0[_wgslsmith_index_u32(8615u, 25u)]))))));
    global0 = array<i32, 25>();
    let var_1 = Struct_2(Struct_1(!func_3(min(vec3<u32>(u_input.a, arg_0, 65844u), vec3<u32>(arg_0, u_input.a, 68616u))).x));
    var var_2 = global1.x;
    return ~arg_0 >= arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 19>();
    global0 = array<i32, 25>();
    var var_0 = vec2<u32>(1u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 3248u, 29388u), vec3<u32>(u_input.a, 69818u, 18274u))), 57573u)) ^ ~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, 1u), ~vec2<u32>(19545u, u_input.a)), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(8544u, 27738u)), reverseBits(vec2<u32>(0u, u_input.a))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-636f, -1000f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(803f, -775f), _wgslsmith_f_op_f32(sign(1643f))))));
    global0 = array<i32, 25>();
    let var_2 = select(8227u, var_0.x, func_1(_wgslsmith_clamp_u32(0u, ~u_input.a, ~u_input.a)) && global2.a);
    global0 = array<i32, 25>();
    var var_3 = _wgslsmith_f_op_f32(-var_1.x);
    let var_4 = -493f;
    let x = u_input.a;
    s_output = StorageBuffer(-(~(~min(vec4<i32>(global0[_wgslsmith_index_u32(44784u, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(var_2, 25u)], global0[_wgslsmith_index_u32(9999u, 25u)]), vec4<i32>(-1i, global0[_wgslsmith_index_u32(0u, 25u)], -44126i, -5000i)))), vec2<u32>(var_2, 0u), vec2<i32>(-9403i, max(abs(1i), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)]) >> (_wgslsmith_div_u32(var_2, 4294967295u) % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1767f, -862f, var_1.x), vec3<f32>(701f, var_1.x, -1569f)))))));
}

