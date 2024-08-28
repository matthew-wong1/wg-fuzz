struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<i32>;

var<private> global2: array<i32, 19>;

var<private> global3: vec3<f32> = vec3<f32>(1472f, -286f, -350f);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<bool>) -> f32 {
    global2 = array<i32, 19>();
    var var_0 = vec3<bool>(arg_1.x, all(arg_2), !(!all(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false))));
    let var_1 = firstTrailingBit(u_input.d.x);
    let var_2 = vec4<bool>(true, true, any(vec2<bool>(any(vec2<bool>(false, arg_2.x)), u_input.d.x < 1u)), arg_2.x);
    let var_3 = !select(!(!arg_2), select(select(!vec2<bool>(true, var_0.x), !vec2<bool>(var_2.x, true), vec2<bool>(var_0.x, arg_2.x)), !(!arg_1.xy), _wgslsmith_f_op_f32(-1574f * 982f) != _wgslsmith_f_op_f32(global3.x * -943f)), arg_2.x);
    return global3.x;
}

fn func_2() -> Struct_1 {
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global3.x, global3.x), _wgslsmith_f_op_f32(func_3(Struct_1(vec4<i32>(u_input.c, -1i, global1.x, global1.x)), vec4<bool>(false, false, true, false), vec2<bool>(false, false))))), _wgslsmith_f_op_f32(func_3(Struct_1(vec4<i32>(global1.x, -33543i, global2[_wgslsmith_index_u32(0u, 19u)], -2147483647i)), vec4<bool>(true, true, true, true), vec2<bool>(true, true))), -634f)));
    var var_0 = !(!(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false))));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.x)));
    global2 = array<i32, 19>();
    let var_2 = Struct_1(abs(~_wgslsmith_mod_vec4_i32(~vec4<i32>(-54783i, -2147483647i, -49556i, -1i), ~vec4<i32>(global1.x, u_input.a, 2147483647i, global1.x))));
    return Struct_1(vec4<i32>(u_input.a, reverseBits(reverseBits(global2[_wgslsmith_index_u32(u_input.b.x, 19u)])), (-1i ^ (-24446i >> (u_input.d.x % 32u))) << (max(1u, abs(1u)) % 32u), countOneBits((global2[_wgslsmith_index_u32(u_input.d.x, 19u)] ^ -1i) << (_wgslsmith_dot_vec2_u32(vec2<u32>(25423u, u_input.d.x), u_input.d.xx) % 32u))));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(~(~vec4<i32>(~global2[_wgslsmith_index_u32(u_input.b.x, 19u)], countOneBits(u_input.c), _wgslsmith_div_i32(global1.x, global2[_wgslsmith_index_u32(13317u, 19u)]), 1i)));
    var var_1 = func_2();
    let var_2 = Struct_1(min(var_0.a, _wgslsmith_mult_vec4_i32(~var_0.a, var_0.a) ^ (_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.x, u_input.c, global1.x, global2[_wgslsmith_index_u32(1u, 19u)]), vec4<i32>(global2[_wgslsmith_index_u32(u_input.d.x, 19u)], var_1.a.x, -3159i, global2[_wgslsmith_index_u32(2393u, 19u)])) << ((vec4<u32>(69277u, 4294967295u, 0u, u_input.b.x) ^ vec4<u32>(u_input.d.x, 4294967295u, u_input.b.x, u_input.b.x)) % vec4<u32>(32u)))));
    var var_3 = Struct_1(abs(vec4<i32>(~(var_0.a.x << (0u % 32u)), global1.x, -_wgslsmith_div_i32(u_input.a, -1i), ~(-2147483647i))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.zz)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(func_1(), select(vec4<bool>(true, select(true, false, true), true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)), any(vec4<bool>(false, true, true, false)))), vec2<bool>(true, true))));
    let var_3 = countOneBits(~(~_wgslsmith_mult_i32(u_input.c, 11837i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(0i, i32(-1i) * -1i));
}

