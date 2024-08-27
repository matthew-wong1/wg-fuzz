struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(1642f, -857f, 465f));

var<private> global2: u32;

var<private> global3: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3) -> bool {
    var var_0 = select(vec4<bool>(_wgslsmith_f_op_f32(step(-245f, 1576f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.b.x * global0.c.b.x)), (_wgslsmith_f_op_f32(trunc(global0.c.b.x)) > _wgslsmith_div_f32(arg_1.a.b.x, arg_0.x)) && true, true, false), select(vec4<bool>(true, !all(vec3<bool>(true, true, false)), all(vec3<bool>(true, true, true)), true), select(vec4<bool>(select(true, false, false), all(vec3<bool>(false, true, false)), false, true), vec4<bool>(all(vec2<bool>(true, false)), all(vec4<bool>(true, false, false, false)), true, true), true), false), !(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), false))));
    let var_1 = 52271u & u_input.c.x;
    global0 = Struct_3(global0.c, global0.b, global0.a);
    let var_2 = Struct_4(-global0.b.a, true, global0.c.a);
    global3 = Struct_1(arg_1.a.a.a);
    return var_2.b;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = false & func_3(_wgslsmith_div_vec2_f32(vec2<f32>(2073f, global0.a.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1468f, global0.a.b.x) + vec2<f32>(global0.a.b.x, -365f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1414f, global0.a.b.x) + global0.a.b.xx))), Struct_3(Struct_2(global0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(616f, -1000f, global0.c.b.x, global0.c.b.x))), global0.a.a, global0.c));
    global3 = global0.c.a;
    let var_1 = u_input.a.x;
    var var_2 = !select(select(vec3<bool>(var_0, var_0, false), select(!vec3<bool>(false, var_0, var_0), !vec3<bool>(var_0, var_0, false), false), select(!vec3<bool>(true, false, var_0), !vec3<bool>(false, false, var_0), vec3<bool>(false, var_0, var_0))), !(!(!vec3<bool>(var_0, var_0, true))), var_0);
    global2 = arg_1.x;
    return Struct_2(global0.a.a, vec4<f32>(global0.c.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.b.x + 1083f))), 1284f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b.x))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = global0.c.b;
    var var_1 = vec3<i32>(max(-1i, _wgslsmith_mod_i32(~arg_0.x, -1156i | -u_input.b)), 0i, -global3.a);
    var var_2 = func_2(vec4<u32>(arg_1.x, _wgslsmith_sub_u32(1u | arg_1.x, arg_1.x), ~arg_1.x, 4910u), vec4<u32>(4294967295u, _wgslsmith_mult_u32(~(~arg_1.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 12178u, 1u, u_input.c.x), vec4<u32>(u_input.c.x, arg_1.x, 42877u, arg_1.x))), firstLeadingBit(~1u), ~(~arg_1.x)));
    var var_3 = global0.a.a;
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a.b) * var_2.b);
    return func_2(_wgslsmith_mod_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c.zy, arg_1), arg_1.x, ~arg_1.x, u_input.c.x), ~vec4<u32>(~arg_1.x, arg_1.x, 7606u, u_input.c.x)), vec4<u32>(arg_1.x, min(~1u, ~select(u_input.c.x, arg_1.x, true)), min(~arg_1.x | ~5017u, min(~4294967295u, u_input.c.x | u_input.c.x)), _wgslsmith_sub_u32(u_input.c.x, 48896u))).a;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4) -> i32 {
    global3 = func_1(reverseBits(-vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-2147483647i, -35874i, arg_1.a)), ~global3.a, min(0i, arg_1.c.a))), u_input.c.xz);
    global2 = ~(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.c.x, 60294u), _wgslsmith_mult_u32(u_input.c.x | u_input.c.x, max(1u, u_input.c.x))) >> (u_input.c.x % 32u));
    var var_0 = u_input.c.x;
    let var_1 = min((_wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<bool>(false, arg_0.b, false, true)), vec4<u32>(4294967295u, u_input.c.x, 65306u, 11035u) | vec4<u32>(15313u, u_input.c.x, u_input.c.x, 5962u)) << (vec4<u32>(0u, 1u, u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 80717u))) % vec4<u32>(32u))) >> (~(~vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x)) % vec4<u32>(32u)), ~(~_wgslsmith_mod_vec4_u32(max(vec4<u32>(83361u, u_input.c.x, 78444u, u_input.c.x), vec4<u32>(u_input.c.x, 25361u, 1u, u_input.c.x)), ~vec4<u32>(u_input.c.x, u_input.c.x, 12818u, 0u))));
    let var_2 = u_input.c.xy;
    return -_wgslsmith_mod_i32(~global0.a.a.a, -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(any(vec2<bool>(true, true)), any(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)))), false);
    global1 = array<vec3<f32>, 1>();
    var var_1 = Struct_1(func_4(Struct_4(1i, u_input.c.x <= ~u_input.c.x, func_1(u_input.a, u_input.c.yy >> (u_input.c.xz % vec2<u32>(32u)))), Struct_4(-u_input.a.x, true, Struct_1(-2147483647i))));
    global3 = global0.a.a;
    global0 = Struct_3(func_2(vec4<u32>(1u, 24886u, u_input.c.x, u_input.c.x), vec4<u32>(~u_input.c.x, abs(0u), u_input.c.x, min(97210u, 29363u >> (u_input.c.x % 32u)))), Struct_1(var_1.a), global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.c.x) ^ 27091u, _wgslsmith_f_op_vec2_f32(sign(global0.a.b.zx)), (select(-vec2<i32>(1i, u_input.a.x), u_input.a.yy, select(vec2<bool>(var_0, var_0), vec2<bool>(false, var_0), vec2<bool>(false, var_0))) ^ u_input.a.xz) >> (~u_input.c.yz % vec2<u32>(32u)));
}

