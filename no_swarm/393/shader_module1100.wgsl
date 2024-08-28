struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(26225u, 4294967295u), 2147483647i, -385f, vec4<u32>(51947u, 25364u, 6204u, 28820u), vec4<u32>(50834u, 1u, 0u, 70918u));

var<private> global2: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    global2 = select(!select(select(select(vec3<bool>(global2.x, false, true), vec3<bool>(true, global2.x, false), false), vec3<bool>(true, false, global2.x), select(vec3<bool>(true, false, global2.x), vec3<bool>(false, global2.x, false), vec3<bool>(global2.x, global2.x, global2.x))), select(select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(false, false, true), vec3<bool>(global2.x, global2.x, false)), select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, global2.x, true), vec3<bool>(global2.x, false, true)), !vec3<bool>(true, false, global2.x)), all(select(vec3<bool>(true, true, global2.x), vec3<bool>(false, true, global2.x), vec3<bool>(false, true, global2.x)))), !(!(!select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(false, true, global2.x), vec3<bool>(true, global2.x, global2.x)))), global2.x);
    global1 = global0[_wgslsmith_index_u32(50105u << ((38861u << (global1.d.x % 32u)) % 32u), 24u)];
    global1 = Struct_1(arg_1.a, i32(-1i) * -20047i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1136f - arg_1.c), _wgslsmith_f_op_f32(f32(-1f) * -2183f)))), vec4<u32>(0u, ~u_input.a, 1u >> (arg_0.a.x % 32u), global1.e.x), ~vec4<u32>(arg_0.d.x, 60513u, arg_0.a.x, ~96320u ^ global1.a.x));
    let var_0 = !vec2<bool>(global2.x, true);
    var var_1 = 968f;
    return -838f;
}

fn func_2(arg_0: Struct_1) -> bool {
    global2 = select(!vec3<bool>(!global2.x, u_input.a != global1.e.x, !(!global2.x)), !(!select(vec3<bool>(global2.x, global2.x, global2.x), select(vec3<bool>(true, global2.x, global2.x), vec3<bool>(global2.x, false, global2.x), vec3<bool>(false, false, global2.x)), vec3<bool>(global2.x, global2.x, false))), global2.x);
    global1 = arg_0;
    var var_0 = true;
    var var_1 = arg_0;
    let var_2 = Struct_1(~global1.a, (u_input.b >> (45715u % 32u)) >> (u_input.a % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2040f, 534f))) - _wgslsmith_f_op_f32(min(var_1.c, _wgslsmith_f_op_f32(func_3(Struct_1(arg_0.a, -2147483647i, 1582f, arg_0.d, vec4<u32>(14715u, 1u, 42185u, arg_0.a.x)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(19120u, arg_0.d.x), 24u)], vec4<i32>(var_1.b, 28319i, 0i, 2147483647i)))))), vec4<u32>(firstLeadingBit(0u), u_input.d, _wgslsmith_mult_u32(arg_0.a.x, abs(arg_0.a.x)), global1.e.x), vec4<u32>(4294967295u << (max(global1.d.x, u_input.a) % 32u), global1.a.x, u_input.d, 4294967295u) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global1.d.x, var_1.e.x, var_1.a.x), firstTrailingBit(vec4<u32>(1u, var_1.d.x, 15195u, global1.a.x))), select(arg_0.d, vec4<u32>(arg_0.d.x, 0u, 1u, 0u), vec4<bool>(false, true, global2.x, global2.x)) | vec4<u32>(u_input.d, u_input.d, arg_0.d.x, var_1.d.x)) % vec4<u32>(32u)));
    return ~global1.d.x > max(17358u, _wgslsmith_sub_u32(global1.e.x, _wgslsmith_div_u32(global1.e.x, 1u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> vec3<bool> {
    var var_0 = vec3<bool>(select(global2.x, -1458f > arg_0.c, !(false && all(global2.zx))), !global2.x && global2.x, u_input.d <= arg_1.d.x);
    global0 = array<Struct_1, 24>();
    return !select(select(!vec3<bool>(global2.x, global2.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, global2.x), true), vec3<bool>(func_2(Struct_1(vec2<u32>(4294967295u, arg_2.x), arg_0.b, arg_1.c, global1.d, vec4<u32>(u_input.a, global1.a.x, 0u, u_input.d))), var_0.x | var_0.x, all(vec2<bool>(var_0.x, global2.x))), !func_2(global0[_wgslsmith_index_u32(global1.d.x, 24u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(global2.x, !(!(!all(vec2<bool>(true, false)))), true, any(select(!(!vec3<bool>(true, global2.x, false)), !func_1(global0[_wgslsmith_index_u32(20125u, 24u)], Struct_1(global1.a, u_input.b, -496f, global1.e, vec4<u32>(4294967295u, 4294967295u, 4294967295u, global1.e.x)), vec3<u32>(global1.a.x, u_input.a, global1.a.x)), select(vec3<bool>(false, global2.x, global2.x), select(vec3<bool>(false, global2.x, true), vec3<bool>(true, global2.x, true), global2.x), global1.d.x < u_input.d))));
    let var_1 = false | !(global1.c > -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(u_input.c, 28334i, u_input.b), global1.e.wxy);
}

