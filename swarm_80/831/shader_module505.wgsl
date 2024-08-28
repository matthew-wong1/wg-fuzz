struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1;

var<private> global2: vec2<u32>;

var<private> global3: vec2<f32> = vec2<f32>(197f, 1400f);

var<private> global4: array<vec4<f32>, 19>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    let var_0 = Struct_1(false);
    let var_1 = Struct_1(any(select(select(vec2<bool>(var_0.a, global1.a), vec2<bool>(true, false), vec2<bool>(false, global1.a)), vec2<bool>(any(vec4<bool>(true, var_0.a, var_0.a, true)), global1.a & global1.a), select(select(vec2<bool>(var_0.a, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, var_0.a), vec2<bool>(global1.a, global1.a)))));
    let var_2 = select(!(!(!vec2<bool>(var_1.a, var_0.a))), select(select(vec2<bool>(false, !var_1.a), select(select(vec2<bool>(var_0.a, true), vec2<bool>(true, true), vec2<bool>(var_0.a, var_1.a)), vec2<bool>(false, var_1.a), select(var_1.a, var_0.a, false)), max(63573i, 1i) != u_input.c), !vec2<bool>(true, all(vec3<bool>(false, global1.a, true))), var_1.a), vec2<bool>(true, _wgslsmith_f_op_f32(-global3.x) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, global3.x) * global3.x)));
    let var_3 = vec2<u32>(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(abs(u_input.b), ~48715u, _wgslsmith_dot_vec2_u32(vec2<u32>(43894u, global2.x), vec2<u32>(1u, u_input.b))), 1u), 58902u);
    global2 = vec2<u32>(reverseBits(u_input.a), ~firstTrailingBit(~(57368u ^ global2.x)));
    return !all(!(!vec4<bool>(false, false, var_0.a, false))) != true;
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = Struct_1(select(func_3(), true, true) | true);
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    global4 = array<vec4<f32>, 19>();
    let var_0 = select(select(vec3<bool>(arg_0.a == (u_input.b == u_input.a), arg_0.a, true & any(vec4<bool>(global1.a, true, true, arg_0.a))), select(select(vec3<bool>(global1.a, false, global1.a), vec3<bool>(global1.a, false, global1.a), select(vec3<bool>(arg_0.a, false, false), vec3<bool>(false, global1.a, true), vec3<bool>(false, false, true))), !(!vec3<bool>(true, false, arg_0.a)), true), select(select(select(vec3<bool>(false, false, false), vec3<bool>(global1.a, arg_0.a, global1.a), arg_0.a), vec3<bool>(true, true, true), !arg_0.a), !select(vec3<bool>(true, global1.a, false), vec3<bool>(true, arg_0.a, false), vec3<bool>(false, false, arg_0.a)), false)), !vec3<bool>(func_2(true), arg_0.a, arg_1 <= 1i), !select(vec3<bool>(global1.a, func_2(true), arg_0.a && arg_0.a), !(!vec3<bool>(global1.a, true, arg_0.a)), _wgslsmith_f_op_f32(step(global3.x, global3.x)) <= _wgslsmith_f_op_f32(global3.x - -465f)));
    let var_1 = global1.a;
    let var_2 = min(vec3<u32>(25154u, (~global2.x | _wgslsmith_mult_u32(global2.x, 57326u)) | u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, countOneBits(4294967295u)), vec2<u32>(_wgslsmith_mod_u32(4294967295u, global2.x), ~global2.x))), _wgslsmith_div_vec3_u32(vec3<u32>(global2.x, global2.x, max(4294967295u, ~112236u)), vec3<u32>(global2.x, u_input.a, 1u)));
    let var_3 = u_input.b;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(global1.a), abs(~(~u_input.c)));
    global2 = vec2<u32>(~(~_wgslsmith_div_u32(min(4294967295u, global2.x), select(4294967295u, 23127u, var_0.a))), ~_wgslsmith_mod_u32(48434u, global2.x));
    global2 = ~abs(~vec2<u32>(global2.x, 1u) >> (countOneBits(vec2<u32>(5979u, 4294967295u)) % vec2<u32>(32u)));
    var var_1 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, global3.x))) == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -772f), _wgslsmith_f_op_f32(step(160f, global3.x)))), global3.x)), global1.a);
    global1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.x, -557f, global3.x), vec3<f32>(849f, global3.x, global3.x), vec3<bool>(false, global1.a, global1.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-772f, 653f, -313f) + vec3<f32>(1177f, 705f, 1387f)))))), u_input.a);
}

