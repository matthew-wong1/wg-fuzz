struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

var<private> global1: Struct_4;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> vec2<bool> {
    var var_0 = Struct_4(Struct_3(vec2<i32>(select(-9332i, u_input.e.x & 2147483647i, true), 2356i)), -22247i, vec2<bool>(true, !all(vec4<bool>(arg_0, arg_0, false, false))));
    var var_1 = ~(-4986i);
    global1 = Struct_4(Struct_3(global1.a.a), u_input.c, select(vec2<bool>(all(select(var_0.c, var_0.c, vec2<bool>(arg_1.c.x, var_0.c.x))), false), select(!(!vec2<bool>(arg_1.c.x, false)), select(select(global1.c, arg_1.c, arg_0), select(var_0.c, var_0.c, var_0.c), arg_1.c), any(vec4<bool>(false, var_0.c.x, true, global1.c.x))), select(!(!global1.c), vec2<bool>(false, select(arg_0, var_0.c.x, var_0.c.x)), select(global1.c, global1.c, select(vec2<bool>(false, false), vec2<bool>(true, arg_0), arg_1.c)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(400f)), -1701f, _wgslsmith_f_op_f32(116f - -1371f), _wgslsmith_f_op_f32(f32(-1f) * -1038f))))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1000f)))), -1728f, -717f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-190f, _wgslsmith_f_op_f32(-1197f + 517f))))));
    let var_3 = 57815u >> (u_input.a.x % 32u);
    return select(vec2<bool>(all(select(!vec4<bool>(global1.c.x, global1.c.x, global1.c.x, false), vec4<bool>(arg_0, true, var_0.c.x, arg_0), !vec4<bool>(true, arg_1.c.x, false, true))), any(!vec3<bool>(arg_0, true, true))), select(!arg_1.c, var_0.c, any(select(!global1.c, vec2<bool>(var_0.c.x, global1.c.x), -641f <= var_2.x))), select(global1.c, global1.c, select(var_0.c, vec2<bool>(any(var_0.c), true), min(var_0.b, 38050i) == -global0[_wgslsmith_index_u32(0u, 24u)])));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> Struct_2 {
    global1 = Struct_4(global1.a, -35127i, !(!(!func_3(global1.c.x, Struct_4(global1.a, global0[_wgslsmith_index_u32(0u, 24u)], global1.c)))));
    let var_0 = Struct_4(Struct_3(global1.a.a), global1.a.a.x, !global1.c);
    var var_1 = Struct_3(-var_0.a.a);
    global1 = Struct_4(Struct_3(-min(vec2<i32>(7443i, 0i), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.a.x, -12005i), u_input.d.yy))), abs(var_0.a.a.x), select(select(vec2<bool>(true, var_0.c.x), !select(vec2<bool>(false, var_0.c.x), vec2<bool>(arg_1, var_0.c.x), global1.c), global1.c), vec2<bool>(true, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), u_input.a.xy) != 0u), global1.c));
    var_1 = Struct_3(var_0.a.a);
    return Struct_2(arg_0.xx, !func_3(_wgslsmith_f_op_f32(-arg_0.x) <= _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2) -> i32 {
    global1 = Struct_4(global1.a, 1i, func_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 739f))), vec4<f32>(arg_1.a.x, arg_1.a.x, arg_0.x, 1185f))))), any(arg_1.b) || true).b);
    return ~global0[_wgslsmith_index_u32(19974u, 24u)];
}

fn func_1(arg_0: Struct_3) -> Struct_4 {
    let var_0 = Struct_4(Struct_3(vec2<i32>(arg_0.a.x, func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(583f, 477f) * vec2<f32>(-817f, 838f)), func_2(vec4<f32>(384f, 632f, -1000f, -473f), global1.c.x)))), u_input.e.x, !func_3(global1.c.x, Struct_4(arg_0, ~17377i, select(vec2<bool>(global1.c.x, false), global1.c, vec2<bool>(global1.c.x, global1.c.x)))));
    var var_1 = _wgslsmith_mod_i32(-(var_0.b >> (0u % 32u)), 14524i);
    global0 = array<i32, 24>();
    global1 = var_0;
    global0 = array<i32, 24>();
    return Struct_4(Struct_3(vec2<i32>(arg_0.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b, u_input.b, global1.b), ~u_input.d))), 22349i, !vec2<bool>(false, var_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, !global1.c.x, true, false);
    var var_1 = u_input.a.zyz;
    var var_2 = func_1(global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(i32(-1i) * -17564i), ~var_2.b);
}

