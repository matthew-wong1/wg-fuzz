struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32;

var<private> global2: Struct_2 = Struct_2(vec3<f32>(-876f, -749f, 467f), false, i32(-2147483648));

var<private> global3: array<vec3<u32>, 9>;

var<private> global4: array<Struct_2, 27>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = _wgslsmith_mod_u32(0u, abs(firstLeadingBit(38246u)));
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.a.x, 308f, 844f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(371f, global2.a.x, 574f)), any(!vec3<bool>(arg_0.c.x, false, false)))), _wgslsmith_f_op_vec3_f32(global2.a + global2.a))), global2.b, 34845i);
    let var_1 = arg_0;
    var var_2 = 46870u;
    let var_3 = var_0.a;
    return all(arg_0.c);
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1879f, -1000f, _wgslsmith_f_op_f32(-276f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_1.a.x)), _wgslsmith_f_op_f32(-global2.a.x), 1i > u_input.a.x))), arg_1.a.x)));
    let var_1 = arg_1;
    let var_2 = Struct_1(-2147483647i, -34311i, select(select(select(!vec2<bool>(var_1.b, true), !vec2<bool>(var_1.b, arg_0), !vec2<bool>(global2.b, arg_1.b)), select(!vec2<bool>(var_1.b, false), select(vec2<bool>(true, arg_0), vec2<bool>(true, arg_0), arg_1.b), true), select(select(vec2<bool>(arg_0, arg_1.b), vec2<bool>(false, arg_0), vec2<bool>(arg_0, true)), !vec2<bool>(false, arg_1.b), vec2<bool>(global2.b, true))), vec2<bool>(false, func_3(Struct_1(14521i, 56862i, vec2<bool>(false, true)))), !(!select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_1.b), vec2<bool>(false, false)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1227f * 999f) + _wgslsmith_f_op_f32(632f - -266f)) + _wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a.x), -1646f))))) * var_0);
    var var_4 = firstTrailingBit(27643u);
    return vec4<i32>(select(-2147483647i, _wgslsmith_sub_i32(firstLeadingBit(9276i), var_1.c) & u_input.b.x, select(false, arg_0, !all(vec4<bool>(var_1.b, false, arg_0, arg_1.b)))), 0i, 2147483647i, abs(global2.c));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec4<bool>) -> u32 {
    global0 = -560f >= _wgslsmith_div_f32(351f, global2.a.x);
    global3 = array<vec3<u32>, 9>();
    global2 = Struct_2(_wgslsmith_f_op_vec3_f32(select(global2.a, global2.a, arg_0.b)), true, 1i);
    global2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.a, vec3<f32>(-694f, arg_0.a.x, global2.a.x)), arg_0.a) - _wgslsmith_div_vec3_f32(vec3<f32>(global2.a.x, global2.a.x, -940f), _wgslsmith_f_op_vec3_f32(global2.a + global2.a))) + _wgslsmith_f_op_vec3_f32(-global2.a)), (_wgslsmith_dot_vec4_i32(~u_input.a, func_2(true, Struct_2(vec3<f32>(global2.a.x, global2.a.x, -1112f), false, global2.c))) << (abs(~4294967295u) % 32u)) > _wgslsmith_mult_i32(_wgslsmith_clamp_i32(i32(-1i) * -1i, arg_0.c, abs(arg_0.c)), -global2.c), -24771i);
    let var_0 = arg_0;
    return 1u | countOneBits(firstTrailingBit(~_wgslsmith_clamp_u32(23921u, 4294967295u, 27667u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~566u;
    var var_1 = _wgslsmith_clamp_u32(1u, _wgslsmith_clamp_u32(1u, select(0u, ~1u, true && global2.b), 40624u), ~0u);
    global0 = global2.b;
    var_1 = 12299u;
    var var_2 = ~1u;
    var_0 = func_1(global4[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(16218u, 6059u), vec2<u32>(25997u, 1u)) & 1u)), 27u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2.a.x, -977f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.a.x, global2.a.x), global2.a.xx)) - vec2<f32>(-899f, global2.a.x)))), vec4<bool>(true, global2.b, true, !all(vec3<bool>(global2.b, global2.b, global2.b))));
    let x = u_input.a;
    s_output = StorageBuffer(44414u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)))))), global2.c, _wgslsmith_f_op_f32(global2.a.x - 806f));
}

