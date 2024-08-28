struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: bool,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: u32 = 4294967295u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = global0.x & all(!select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, global0.x, global0.x), global0.x));
    var var_1 = !vec2<bool>(any(!(!vec4<bool>(true, var_0, false, true))), var_0);
    var_1 = global0.zy;
    var var_2 = min(1u, _wgslsmith_add_u32(u_input.a.x, abs(~1u)));
    let var_3 = select(u_input.a.x, ~(~(u_input.a.x & 0u) >> (((5917u & u_input.a.x) | u_input.a.x) % 32u)), true);
    return -2147483647i;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: vec2<f32>) -> bool {
    let var_0 = arg_0;
    global0 = vec3<bool>(true, false, true);
    let var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(arg_1, vec2<i32>(arg_0.a.e, 0i) << (u_input.a.xw % vec2<u32>(32u))) | ~(-9980i), var_0.a.e) << (~(~_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.a.b.x, 4294967295u), arg_0.a.b.wz), vec2<u32>(6374u, u_input.a.x), vec2<u32>(0u, arg_2.x))) % vec2<u32>(32u));
    var var_2 = global0.x;
    var var_3 = arg_0.a;
    return any(vec3<bool>(!any(select(vec4<bool>(true, true, false, global0.x), vec4<bool>(var_3.a, global0.x, false, global0.x), vec4<bool>(arg_0.a.a, false, false, var_3.a))), false, !(!all(vec2<bool>(true, true)))));
}

fn func_2() -> Struct_2 {
    global0 = vec3<bool>(!global0.x & false, false, !global0.x);
    var var_0 = Struct_2(Struct_1(global0.x, u_input.a, !global0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-136f, 835f, 216f))) - vec3<f32>(-712f, 651f, 433f))), 41867i), -249f);
    let var_1 = var_0.a;
    global1 = 1u;
    global0 = select(vec3<bool>(global0.x, any(vec2<bool>(true, var_1.a)), var_1.c | var_0.a.a), vec3<bool>(var_1.a, all(global0.xz), var_0.a.a), !(!vec3<bool>(true, true, func_3(Struct_2(var_0.a, var_0.b), vec2<i32>(var_0.a.e, var_1.e), vec3<u32>(31322u, var_0.a.b.x, 1u), var_1.d.xy))));
    return Struct_2(var_0.a, -520f);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    let var_0 = func_2();
    global0 = vec3<bool>(func_2().a.c, any(select(!vec4<bool>(var_0.a.a, arg_0, arg_2.a.c, arg_1.a.c), !select(vec4<bool>(true, arg_2.a.a, arg_0, var_0.a.a), vec4<bool>(global0.x, var_0.a.a, false, arg_0), vec4<bool>(false, false, global0.x, var_0.a.c)), !vec4<bool>(true, arg_0, var_0.a.c, global0.x))), !all(!vec3<bool>(arg_1.a.c, false, false)));
    var var_1 = func_2();
    let var_2 = var_0;
    let var_3 = 1767f;
    return _wgslsmith_dot_vec4_u32(~abs(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(var_2.a.b, var_0.a.b, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, var_2.a.b.x)), select(arg_1.a.b, arg_2.a.b, arg_0))), _wgslsmith_sub_vec4_u32(arg_2.a.b, reverseBits(firstLeadingBit(u_input.a | u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(global0.x, Struct_2(Struct_1(true, countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 74518u)) << (firstLeadingBit(u_input.a) % vec4<u32>(32u)), global0.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-229f, -466f, 1664f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(862f, -433f, 355f)), !vec3<bool>(global0.x, true, false))), func_1(abs(2345i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(462f)) - _wgslsmith_f_op_f32(f32(-1f) * -1417f)))), func_2());
    var var_0 = !(!global0.xx);
    var var_1 = func_2();
    let var_2 = func_2().a;
    global0 = select(select(!(!select(vec3<bool>(true, var_0.x, var_1.a.c), vec3<bool>(global0.x, true, true), var_1.a.a)), !vec3<bool>(!var_1.a.a, true & var_1.a.a, true), select(select(select(vec3<bool>(true, var_0.x, false), vec3<bool>(false, true, var_0.x), true), select(vec3<bool>(global0.x, var_0.x, global0.x), vec3<bool>(false, var_1.a.c, global0.x), vec3<bool>(true, global0.x, var_0.x)), !global0.x), vec3<bool>(u_input.a.x > 4294967295u, 1u > var_2.b.x, any(vec2<bool>(false, false))), true)), vec3<bool>(false, var_1.a.c, false), select(select(vec3<bool>(var_2.a, false, !global0.x), vec3<bool>(select(true, false, false), true, all(vec3<bool>(false, true, var_2.c))), select(!vec3<bool>(var_2.a, global0.x, var_2.c), vec3<bool>(var_1.a.a, global0.x, false), select(vec3<bool>(false, var_0.x, true), vec3<bool>(true, var_1.a.c, global0.x), vec3<bool>(false, var_0.x, false)))), vec3<bool>(var_0.x, _wgslsmith_sub_u32(0u, u_input.a.x) >= ~4294967295u, var_0.x), select(vec3<bool>(global0.x, any(vec3<bool>(global0.x, true, var_1.a.c)), select(var_1.a.c, false, true)), vec3<bool>(global0.x, any(vec2<bool>(false, false)), false), true)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-_wgslsmith_sub_i32(var_2.e, var_1.a.e)), var_1.a.d.zy);
}

