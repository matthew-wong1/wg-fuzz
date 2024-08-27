struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global2: array<u32, 24> = array<u32, 24>(4294967295u, 7010u, 1u, 1093u, 10511u, 1u, 4294967295u, 54770u, 100126u, 65881u, 87712u, 44381u, 4294967295u, 0u, 0u, 0u, 6966u, 1u, 41629u, 1u, 0u, 4294967295u, 68696u, 0u);

var<private> global3: i32 = i32(-2147483648);

var<private> global4: array<vec3<f32>, 3>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    global3 = 1i;
    global4 = array<vec3<f32>, 3>();
    return !vec3<bool>(all(select(vec3<bool>(true, global1.x, global1.x), global1.wxx, global1.www)) && (23382i != u_input.a), true, 29548u > ~max(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 24u)], 0u));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = arg_1.d.zx;
    global2 = array<u32, 24>();
    global3 = u_input.a;
    var var_1 = arg_1.b.xy;
    global1 = vec4<bool>(all(select(select(vec3<bool>(arg_1.c.x, true, arg_0), !arg_1.c, all(vec3<bool>(false, false, false))), select(!arg_1.a.zzx, func_3(), vec3<bool>(true, global1.x, false)), any(!vec3<bool>(global1.x, false, global1.x)))), true, true, false);
    return vec4<bool>(any(arg_1.c), true, false, arg_1.c.x);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> Struct_1 {
    let var_0 = arg_0.a.b.x;
    var var_1 = Struct_3(arg_0.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.d.x, _wgslsmith_f_op_f32(arg_0.a.d.x + -506f))), vec2<f32>(arg_0.a.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(697f, arg_0.a.d.x)) + _wgslsmith_f_op_f32(max(1000f, arg_0.a.d.x))))), arg_0, -876f);
    global1 = var_1.c.a.a;
    let var_2 = ~(~109816u);
    global3 = 26191i;
    return Struct_1(vec4<bool>((1u >> (var_2 % 32u)) < ((global2[_wgslsmith_index_u32(4294967295u, 24u)] << (10225u % 32u)) | 1u), !any(vec2<bool>(var_1.a.a.x, false)), true, true), abs(vec3<i32>(~(-33002i), 1i, firstLeadingBit(max(23758i, var_1.c.a.b.x)))), arg_0.a.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(395f, var_1.b.x, _wgslsmith_div_f32(-1740f, 438f), var_1.d) + vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.d.x), _wgslsmith_f_op_f32(-1000f + 1224f), _wgslsmith_f_op_f32(-var_1.c.a.d.x), _wgslsmith_f_op_f32(trunc(365f))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: bool) -> Struct_1 {
    let var_0 = func_4(Struct_2(Struct_1(func_2(true, Struct_1(vec4<bool>(true, true, arg_2, global1.x), vec3<i32>(-16742i, u_input.a, u_input.a), vec3<bool>(global1.x, global1.x, global1.x), vec4<f32>(1117f, -700f, 1435f, -181f))), vec3<i32>(36299i, ~u_input.a, firstLeadingBit(u_input.a)), !func_2(true, Struct_1(vec4<bool>(global1.x, arg_2, true, true), vec3<i32>(u_input.a, 44404i, -29102i), global1.yyw, vec4<f32>(-418f, -1515f, 1657f, -1846f))).xzw, vec4<f32>(1f, 1f, 1f, 1f))), 0i >= abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(-15892i, 0i, u_input.a, u_input.a), vec4<i32>(-30799i, u_input.a, 36127i, 24605i))), u_input.a);
    var var_1 = Struct_2(Struct_1(!vec4<bool>(arg_2, any(global1.xyz), arg_2, arg_2 | arg_2), var_0.b, vec3<bool>(global1.x, !global1.x, var_0.b.x <= _wgslsmith_clamp_i32(var_0.b.x, 0i, 2147483647i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(285f, -1544f, var_0.d.x, var_0.d.x), var_0.d, true)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1527f, var_0.d.x, var_0.d.x, var_0.d.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_0.d)) - vec4<f32>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x)))));
    let var_2 = arg_0.x;
    global3 = _wgslsmith_mult_i32(var_1.a.b.x, var_0.b.x);
    var var_3 = Struct_2(var_1.a);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = u_input.a;
    global4 = array<vec3<f32>, 3>();
    let var_0 = func_1(vec3<u32>(_wgslsmith_sub_u32(~global2[_wgslsmith_index_u32(u_input.b.x, 24u)], 35317u), u_input.b.x, max(min(u_input.b.x | u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)), ~(4294967295u << (u_input.b.x % 32u)))), _wgslsmith_add_vec2_u32(~((u_input.b.xz << (u_input.b.xx % vec2<u32>(32u))) | u_input.b.yx), ~vec2<u32>(48481u, _wgslsmith_mod_u32(u_input.b.x, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 16u)]))), all(select(select(global1.xyx, select(global1.wzy, global1.yyz, vec3<bool>(global1.x, global1.x, false)), global1.x), vec3<bool>(false, any(global1.yxy), true), _wgslsmith_f_op_f32(min(103f, 548f)) >= _wgslsmith_f_op_f32(floor(436f)))));
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(func_4(Struct_2(Struct_1(vec4<bool>(global1.x, var_0.a.x, global1.x, global1.x), vec3<i32>(115434i, var_0.b.x, var_0.b.x), global1.xxy, var_0.d)), !global1.x, -14433i).b.x, u_input.a, u_input.a << (21514u % 32u)), ~var_0.b.x);
}

