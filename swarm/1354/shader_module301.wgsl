struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, false);

var<private> global1: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    global0 = Struct_1(all(select(select(select(vec2<bool>(true, global0.b), vec2<bool>(global0.b, global0.a), vec2<bool>(global0.a, global0.a)), !vec2<bool>(global0.a, global0.a), true), select(!vec2<bool>(global0.a, false), !vec2<bool>(global0.b, global0.b), vec2<bool>(global0.b, true)), select(select(vec2<bool>(false, global0.a), vec2<bool>(global0.a, false), true), select(vec2<bool>(global0.a, false), vec2<bool>(global0.b, false), vec2<bool>(global0.a, true)), vec2<bool>(global0.a, global0.a)))), !(max(4294967295u, ~4294967295u) == _wgslsmith_div_u32(1u, _wgslsmith_sub_u32(arg_0.x, u_input.b.x))));
    var var_0 = vec4<u32>(~u_input.c.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.x, abs(u_input.b.x), ~u_input.b.x), vec3<u32>(1u, u_input.b.x >> (~arg_0.x % 32u), 21123u)), firstTrailingBit(arg_0.x), arg_0.x);
    var_0 = _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.x, 0u, ~(var_0.x & arg_0.x), var_0.x), vec4<u32>(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(14545u, u_input.c.x, 1u, u_input.b.x), min(vec4<u32>(u_input.b.x, var_0.x, var_0.x, 6310u), vec4<u32>(u_input.b.x, 35690u, 4294967295u, 1u))), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(var_0.x, 0u, u_input.c.x, arg_0.x)), vec4<u32>(arg_0.x, u_input.c.x, var_0.x, 41526u) | vec4<u32>(1u, arg_0.x, arg_0.x, u_input.c.x), ~vec4<u32>(u_input.c.x, 1u, arg_0.x, 1153u))), 1u, 44882u, _wgslsmith_sub_u32(~1u, arg_0.x)));
    let var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.c.x, arg_0.x), u_input.b.xx), firstTrailingBit(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 39508u), u_input.b.xx)))), u_input.c.x);
    var var_2 = Struct_1(false, !global0.a);
    return abs(u_input.d.x);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = vec2<i32>(_wgslsmith_div_i32(-func_3(u_input.c), select(select(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), u_input.d.yw), abs(5451i), any(vec4<bool>(arg_0.a, var_0.a, arg_0.b, global0.b))), u_input.d.x, 16650u != u_input.c.x)), 1i);
    var var_2 = true;
    let var_3 = select(select(!(!(!vec4<bool>(false, false, global0.a, true))), select(select(!vec4<bool>(global0.b, false, arg_0.b, true), !vec4<bool>(arg_0.a, true, false, global0.a), vec4<bool>(var_0.b, global0.a, false, var_0.b)), select(select(vec4<bool>(arg_0.b, arg_0.b, false, true), vec4<bool>(false, true, global0.b, true), var_0.b), select(vec4<bool>(arg_0.a, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(global0.b, arg_0.b, arg_0.b, global0.a)), !var_0.a), !global0.b && true), vec4<bool>(all(select(vec2<bool>(var_0.a, false), vec2<bool>(var_0.b, arg_0.b), var_0.b)), false, global0.a, global0.b)), !select(select(!vec4<bool>(global0.b, true, var_0.b, global0.a), vec4<bool>(false, global0.a, var_0.b, false), arg_0.b || false), select(vec4<bool>(true, arg_0.b, false, true), vec4<bool>(true, true, false, arg_0.b), arg_0.b), !(!vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a))), vec4<bool>(arg_0.a, true, all(select(vec4<bool>(true, global0.a, false, false), vec4<bool>(true, false, true, arg_0.a), false)) && all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, global0.a), arg_0.a)), true));
    var_2 = select(true, true, any(!(!var_3)) || var_3.x);
    return Struct_1(false, true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = vec3<bool>(global0.b, global0.b & (_wgslsmith_clamp_i32(1i, select(u_input.d.x, u_input.a.x, arg_1.b), firstTrailingBit(u_input.d.x)) > ~firstTrailingBit(u_input.a.x)), false || func_2(arg_1).a);
    let var_1 = ~_wgslsmith_dot_vec2_u32(u_input.b.yz, abs(~firstLeadingBit(u_input.c)));
    var var_2 = ~u_input.b;
    global0 = arg_0;
    var var_3 = arg_0;
    return 246f;
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> bool {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-412f, 458f, _wgslsmith_f_op_f32(func_4(func_2(Struct_1(false, true)), Struct_1(false, any(vec4<bool>(arg_1, true, true, arg_1)))))));
    var var_2 = arg_1;
    var var_3 = Struct_1(all(vec4<bool>(true, !(!arg_1), true, all(select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, false), vec2<bool>(false, global0.b))))), global0.b);
    var var_4 = func_2(Struct_1(true, !var_3.a));
    return !all(select(select(vec4<bool>(false, arg_1, false, global0.a), vec4<bool>(true, false, false, var_4.b), 696f == var_1.x), !select(vec4<bool>(var_3.b, false, true, false), vec4<bool>(var_3.b, true, false, false), vec4<bool>(var_3.b, true, false, global0.b)), !select(vec4<bool>(true, false, global0.a, var_4.a), vec4<bool>(true, false, var_4.a, true), vec4<bool>(var_3.a, var_4.a, false, var_4.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -select(-u_input.a.x, -2147483647i, true);
    var var_1 = func_1(u_input.d, true);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(select(global0.a, true, global0.a), global0.b), Struct_1(true, !global0.b))) - 134f) - 1000f);
    let var_3 = Struct_1(true, true);
    let var_4 = u_input.b.xx;
    let var_5 = ~u_input.d.zzw;
    let x = u_input.a;
    s_output = StorageBuffer(5770i, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-208f, _wgslsmith_f_op_f32(-var_2))))), var_2, _wgslsmith_f_op_f32(-var_2)));
}

