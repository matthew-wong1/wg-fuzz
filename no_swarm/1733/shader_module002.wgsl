struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(122780u, 33872u), vec2<u32>(35840u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(13946u, 41664u), vec2<u32>(12816u, 10859u), vec2<u32>(1u, 7669u), vec2<u32>(16387u, 1u), vec2<u32>(1u, 1u), vec2<u32>(37466u, 14682u), vec2<u32>(75747u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(40960u, 17964u), vec2<u32>(1u, 34382u), vec2<u32>(0u, 1u), vec2<u32>(0u, 0u), vec2<u32>(0u, 58910u), vec2<u32>(17240u, 1u), vec2<u32>(10676u, 23286u), vec2<u32>(43745u, 3563u), vec2<u32>(1u, 21255u));

var<private> global2: i32;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1522f, -1667f, 105f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1540f, -454f, 392f) + vec4<f32>(-711f, 1460f, -599f, 354f)))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(243f, _wgslsmith_f_op_f32(max(380f, -213f)), _wgslsmith_f_op_f32(f32(-1f) * -461f), -172f)))));
    return u_input.a;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> bool {
    let var_0 = 1u;
    global0 = arg_0;
    return all(vec4<bool>(all(vec4<bool>(true, arg_0.b >= u_input.a, true, true)), all(global0.a.ywz), false, true));
}

fn func_1(arg_0: bool) -> vec4<bool> {
    let var_0 = !vec3<bool>(any(!select(vec3<bool>(arg_0, arg_0, global0.c), vec3<bool>(global0.a.x, global0.a.x, true), vec3<bool>(false, arg_0, false))), all(global0.a.xz), true);
    global1 = array<vec2<u32>, 22>();
    var var_1 = select(var_0, vec3<bool>(global0.c, any(select(vec3<bool>(global0.c, false, false), vec3<bool>(var_0.x, true, true), global0.a.yxw)), !all(vec4<bool>(false, false, global0.a.x, arg_0))), false);
    global2 = abs(func_2());
    let var_2 = var_1.x;
    return !vec4<bool>(false, func_3(Struct_1(vec4<bool>(true, var_1.x, var_1.x, true), -global0.b, global0.a.x & global0.c), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -63961i, u_input.a), vec3<i32>(2147483647i, 2147483647i, u_input.a)), vec3<i32>(-2147483647i, global0.b, 0i))), true, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!select(func_1(!global0.a.x), select(!vec4<bool>(true, false, global0.c, false), select(global0.a, global0.a, vec4<bool>(true, false, global0.a.x, global0.c)), global0.c), !vec4<bool>(false, global0.c, global0.a.x, false)), u_input.a, true);
    var var_1 = -137f;
    var var_2 = func_2();
    var var_3 = 0u >= u_input.b.x;
    var var_4 = var_0.c || (!global0.a.x | !all(global0.a));
    let var_5 = Struct_1(vec4<bool>(any(func_1(all(global0.a))), true, global0.a.x, global0.c), var_0.b, true);
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~firstTrailingBit(vec3<i32>(0i, var_5.b, -1i))), countOneBits(vec3<i32>(29285i, max(global0.b, 2147483647i), reverseBits(var_0.b))), !any(select(vec4<bool>(var_0.c, true, false, var_5.c), var_0.a, var_5.a.x))), (0u >> (~u_input.b.x % 32u)) ^ ~u_input.b.x);
}

