struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec3<bool>,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 6>;

var<private> global1: i32 = 0i;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1() -> u32 {
    return firstTrailingBit(1u);
}

fn func_3(arg_0: Struct_1) -> bool {
    return arg_0.d == -1032f;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<f32>) -> vec4<bool> {
    global0 = array<vec3<bool>, 6>();
    let var_0 = vec3<f32>(-612f, -777f, 1f);
    let var_1 = -1500f;
    global0 = array<vec3<bool>, 6>();
    let var_2 = var_0.x;
    return vec4<bool>(!any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true))), false, !(!any(vec4<bool>(false, false, false, true))) || true, all(vec2<bool>(func_3(Struct_1(u_input.d, global0[_wgslsmith_index_u32(30623u, 6u)], global0[_wgslsmith_index_u32(55149u, 6u)], var_2, vec4<bool>(true, true, true, true))), (-2147483647i == u_input.d.x) || (u_input.b != u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.d, !select(select(!global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(func_1(), 6u)]), global0[_wgslsmith_index_u32(func_1(), 6u)], select(!global0[_wgslsmith_index_u32(u_input.b, 6u)], select(global0[_wgslsmith_index_u32(u_input.b, 6u)], vec3<bool>(false, false, true), true), all(vec3<bool>(true, false, false)))), vec3<bool>(false, select(true, _wgslsmith_f_op_f32(trunc(-1000f)) >= -336f, all(func_2(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec2<f32>(767f, -181f)))), !(any(vec3<bool>(true, true, false)) && true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1697f, _wgslsmith_f_op_f32(1122f + _wgslsmith_f_op_f32(trunc(-759f))), all(vec4<bool>(true, true, true, false))))), func_2(~vec3<u32>(~5102u, u_input.b << (4294967295u % 32u), ~u_input.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1138f) - vec2<f32>(-1000f, -438f))));
    global0 = array<vec3<bool>, 6>();
    let var_1 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.b, 26258u, ~(~75895u), ~abs(1u)), countOneBits(vec4<u32>(u_input.b, 4294967295u, 43977u, 7372u) ^ abs(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))));
    let var_2 = var_0.d;
    var_0 = Struct_1(vec3<i32>(select(var_0.a.x, u_input.c, var_0.c.x), _wgslsmith_sub_i32(-u_input.a, u_input.c), 2147483647i), func_2(vec3<u32>(var_1.x, ~1u, 0u), vec2<f32>(_wgslsmith_f_op_f32(round(var_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)))).yzy, vec3<bool>(all(select(select(vec4<bool>(var_0.e.x, var_0.e.x, true, true), var_0.e, vec4<bool>(var_0.b.x, var_0.c.x, var_0.b.x, var_0.e.x)), var_0.e, vec4<bool>(var_0.b.x, true, var_0.e.x, false))), !(!all(var_0.e)), all(select(vec4<bool>(var_0.c.x, false, var_0.c.x, var_0.e.x), var_0.e, vec4<bool>(var_0.c.x, var_0.c.x, false, false)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.d - -1294f))), select(!vec4<bool>(var_0.b.x, any(vec2<bool>(var_0.e.x, true)), func_3(Struct_1(vec3<i32>(-2147483647i, -60572i, var_0.a.x), var_0.e.xxw, global0[_wgslsmith_index_u32(var_1.x, 6u)], 688f, var_0.e)), func_3(Struct_1(var_0.a, vec3<bool>(var_0.b.x, false, false), global0[_wgslsmith_index_u32(45420u, 6u)], var_0.d, var_0.e))), var_0.e, false == var_0.e.x));
    global0 = array<vec3<bool>, 6>();
    let var_3 = all(select(var_0.e.wz, vec2<bool>(true, var_0.e.x), select(vec2<bool>(true, var_0.c.x), !func_2(var_1.zxz, vec2<f32>(var_0.d, var_0.d)).zz, var_0.c.yy)));
    global1 = ~_wgslsmith_sub_i32(var_0.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-var_0.a.x, _wgslsmith_sub_i32(u_input.a, 0i), abs(u_input.a)), select(var_0.a, ~vec3<i32>(u_input.d.x, var_0.a.x, u_input.c), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d);
}

