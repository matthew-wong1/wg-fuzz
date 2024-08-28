struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec4<bool>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: u32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: Struct_2,
    d: vec2<u32>,
}

struct Struct_5 {
    a: f32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16>;

var<private> global1: array<u32, 24>;

var<private> global2: f32 = 815f;

var<private> global3: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(max(925f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, 2355f) + 329f)))), !(!(!(!vec4<bool>(global0[_wgslsmith_index_u32(9305u, 16u)], global0[_wgslsmith_index_u32(17919u, 16u)], true, true)))), vec2<i32>(15011i, ~_wgslsmith_dot_vec3_i32(arg_3.a.xyw, arg_3.a.www)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-672f, arg_1.x, -233f), arg_2, global0[_wgslsmith_index_u32(1u, 16u)])), _wgslsmith_div_vec3_f32(arg_2, arg_2)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.x, 670f, arg_1.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 276f, arg_2.x) * vec3<f32>(553f, 356f, -727f)))))), firstLeadingBit(-2147483647i));
    global1 = array<u32, 24>();
    var var_1 = 4294967295u;
    global2 = 1000f;
    let var_2 = ~u_input.e;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(max(-1260f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(414f - 541f), vec2<f32>(1000f, 415f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-527f, 1371f, 617f))), Struct_1(vec4<i32>(u_input.e.x, u_input.c, 46474i, 54490i), 1u, vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(65014u, 16u)]), u_input.c, vec2<u32>(4294967295u, 1u)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1107f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -384f), 1f)))));
    var var_1 = u_input.c;
    var var_2 = Struct_2(u_input.c, 38571u >= _wgslsmith_add_u32(u_input.a.x, ~(~4294967295u)), select(1u, min(global1[_wgslsmith_index_u32(0u, 24u)], reverseBits(~7600u)), any(select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], true), vec2<bool>(false, global0[_wgslsmith_index_u32(arg_1.x, 16u)]), global0[_wgslsmith_index_u32(23976u, 16u)])) == !all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 16u)], false, true))), var_0.yy);
    var var_3 = !(!select(!(!vec2<bool>(global0[_wgslsmith_index_u32(1814u, 16u)], true)), !(!vec2<bool>(var_2.b, false)), vec2<bool>(select(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], false), true)));
    var var_4 = -4354i;
    return ~(~((firstTrailingBit(vec4<i32>(u_input.c, var_2.a, var_2.a, u_input.c)) << (vec4<u32>(arg_1.x, var_2.c, 1u, 3777u) % vec4<u32>(32u))) << (_wgslsmith_add_vec4_u32(~vec4<u32>(arg_0, u_input.b, 29731u, 7709u), ~vec4<u32>(4991u, u_input.a.x, 0u, arg_1.x)) % vec4<u32>(32u))));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_2(~_wgslsmith_dot_vec4_i32(func_2(global1[_wgslsmith_index_u32(u_input.a.x, 24u)] ^ global1[_wgslsmith_index_u32(0u, 24u)], vec2<u32>(1u, global1[_wgslsmith_index_u32(u_input.a.x, 24u)])), (vec4<i32>(u_input.e.x, -16113i, u_input.c, -19129i) ^ vec4<i32>(6913i, u_input.c, u_input.c, 2147483647i)) ^ reverseBits(vec4<i32>(u_input.c, u_input.e.x, u_input.e.x, 25675i))), global0[_wgslsmith_index_u32(u_input.a.x, 16u)], ~global1[_wgslsmith_index_u32(~countOneBits(u_input.b), 24u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(557f, -792f), vec2<f32>(-318f, 214f), global0[_wgslsmith_index_u32(u_input.b, 16u)])) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1098f, -721f))))));
    global2 = _wgslsmith_f_op_f32(-var_0.d.x);
    let var_1 = Struct_1(vec4<i32>(abs(-1i), _wgslsmith_mod_i32(u_input.e.x, u_input.c), -5680i, -max(1i, -1i)), 4294967295u, vec4<bool>(select(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(select(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], 24u)], true), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(1u, 24u)], 102356u)), 16u)], all(vec3<bool>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(var_0.c, 16u)], global0[_wgslsmith_index_u32(u_input.b, 16u)])) | false, select(var_0.b, all(vec3<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(84101u, 24u)], 16u)], false)), var_0.b)), var_0.b, any(global3[_wgslsmith_index_u32(~4852u >> (u_input.d.x % 32u), 18u)]), false), 0i, u_input.d);
    global1 = array<u32, 24>();
    global3 = array<vec4<bool>, 18>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global3 = array<vec4<bool>, 18>();
    var var_1 = !(!(!select(select(vec3<bool>(false, true, var_0.b), vec3<bool>(true, true, true), vec3<bool>(true, true, var_0.b)), vec3<bool>(var_0.b, global0[_wgslsmith_index_u32(u_input.d.x, 16u)], var_0.b), select(vec3<bool>(true, var_0.b, var_0.b), vec3<bool>(var_0.b, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.c, 24u)], 16u)], true), var_0.b))));
    let var_2 = global3[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(u_input.b & global1[_wgslsmith_index_u32(~(~4294967295u), 24u)], ~(~1u), u_input.b)), 18u)];
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1254f + -404f)))));
    let var_3 = -13830i;
    let var_4 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1519f, var_0.d.x, 1149f, -177f) + vec4<f32>(var_0.d.x, var_0.d.x, var_0.d.x, 539f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(479f, var_0.d.x, var_0.d.x, 753f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, 739f, var_0.d.x, 1873f)))))));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_4.x, _wgslsmith_f_op_f32(-973f * _wgslsmith_f_op_f32(var_0.d.x * var_0.d.x))))) * var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -(~select(vec4<i32>(var_0.a, var_3, var_3, -1i), vec4<i32>(u_input.e.x, 24935i, var_3, var_0.a), var_1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4.ww) + vec2<f32>(-929f, var_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), vec2<u32>(global1[_wgslsmith_index_u32(~43243u, 24u)] << (global1[_wgslsmith_index_u32(~abs(43046u), 24u)] % 32u), ~u_input.a.x));
}

