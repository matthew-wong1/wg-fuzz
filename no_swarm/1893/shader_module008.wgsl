struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec2<bool>(true, false), vec4<bool>(true, true, false, true), 4294967295u, vec2<u32>(50635u, 1u)), Struct_1(vec2<bool>(false, false), vec4<bool>(true, true, true, true), 0u, vec2<u32>(1u, 1u)), Struct_1(vec2<bool>(true, true), vec4<bool>(false, false, true, false), 4294967295u, vec2<u32>(15579u, 41199u)), Struct_1(vec2<bool>(true, false), vec4<bool>(false, true, false, false), 4294967295u, vec2<u32>(4294967295u, 0u)), Struct_1(vec2<bool>(true, false), vec4<bool>(false, true, false, true), 30320u, vec2<u32>(25737u, 22402u)), Struct_1(vec2<bool>(true, false), vec4<bool>(true, true, true, false), 4294967295u, vec2<u32>(1u, 1u)), Struct_1(vec2<bool>(true, false), vec4<bool>(false, true, true, true), 1u, vec2<u32>(4294967295u, 16787u)), Struct_1(vec2<bool>(false, true), vec4<bool>(true, false, false, true), 0u, vec2<u32>(48847u, 0u)), Struct_1(vec2<bool>(true, true), vec4<bool>(true, false, true, false), 20449u, vec2<u32>(4991u, 1u)), Struct_1(vec2<bool>(false, false), vec4<bool>(false, false, true, false), 72457u, vec2<u32>(53871u, 1u)), Struct_1(vec2<bool>(true, false), vec4<bool>(false, true, false, true), 0u, vec2<u32>(1u, 39410u)), Struct_1(vec2<bool>(true, false), vec4<bool>(true, false, true, false), 1u, vec2<u32>(18961u, 1u)), Struct_1(vec2<bool>(true, false), vec4<bool>(false, false, true, false), 4294967295u, vec2<u32>(5557u, 1u)), Struct_1(vec2<bool>(false, false), vec4<bool>(true, false, true, true), 1u, vec2<u32>(27513u, 0u)), Struct_1(vec2<bool>(false, false), vec4<bool>(true, true, true, true), 4294967295u, vec2<u32>(4294967295u, 1u)), Struct_1(vec2<bool>(true, false), vec4<bool>(false, false, false, true), 59872u, vec2<u32>(93124u, 9842u)), Struct_1(vec2<bool>(false, false), vec4<bool>(true, false, false, true), 4294967295u, vec2<u32>(1u, 1699u)), Struct_1(vec2<bool>(true, false), vec4<bool>(false, false, false, true), 4294967295u, vec2<u32>(1u, 24098u)), Struct_1(vec2<bool>(false, true), vec4<bool>(true, false, false, false), 1u, vec2<u32>(0u, 8096u)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: bool) -> vec3<bool> {
    global0 = array<Struct_1, 19>();
    let var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(min(_wgslsmith_mod_u32(u_input.a.x, arg_1), max(50402u, 31373u)), _wgslsmith_sub_u32(arg_1, abs(1u)), u_input.a.x, _wgslsmith_add_u32(arg_1, arg_1))), 21462u);
    var var_1 = select(!select(select(!vec4<bool>(arg_2, true, arg_0, true), !vec4<bool>(true, arg_2, arg_0, true), false), vec4<bool>(14866i >= u_input.b.x, !arg_0, arg_2, false), select(vec4<bool>(true, true, arg_0, arg_2), vec4<bool>(false, arg_2, false, arg_0), false)), vec4<bool>(!((8401i <= u_input.b.x) == any(vec2<bool>(true, false))), !arg_0, !arg_0, true), false);
    let var_2 = 1108f;
    global0 = array<Struct_1, 19>();
    return var_1.zzy;
}

fn func_3() -> bool {
    global0 = array<Struct_1, 19>();
    let var_0 = 748f;
    let var_1 = Struct_3(Struct_2(vec3<f32>(var_0, var_0, -1203f), _wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, -333f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1004f, var_0)))), 1u, _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~select(u_input.a.zww, vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<bool>(true, false, false)), ~(vec3<u32>(u_input.a.x, u_input.a.x, 1u) ^ u_input.a.zyz)), u_input.a.xyy));
    var var_2 = true;
    let var_3 = global0[_wgslsmith_index_u32(u_input.a.x, 19u)];
    return false;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: i32) -> vec3<bool> {
    let var_0 = arg_1;
    global0 = array<Struct_1, 19>();
    let var_1 = _wgslsmith_f_op_f32(-var_0.b.x);
    let var_2 = arg_1.a.xy;
    let var_3 = true;
    return select(select(select(!(!vec3<bool>(false, false, var_3)), func_2(true, ~arg_0.x, arg_0.x <= u_input.a.x), true), select(vec3<bool>(var_3, true, var_3), !(!vec3<bool>(true, true, var_3)), vec3<bool>(true, !var_3, true)), vec3<bool>(true, !var_3, !(!var_3))), !vec3<bool>(any(!vec4<bool>(true, var_3, false, true)), true, _wgslsmith_f_op_f32(-var_1) >= _wgslsmith_f_op_f32(-var_1)), vec3<bool>(func_3(), func_2(true, arg_0.x, any(vec3<bool>(var_3, var_3, false))).x, !(!(!var_3))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_div_vec3_i32(vec3<i32>(-26231i, _wgslsmith_sub_i32(~1i, u_input.b.x), 1i), select(abs(countOneBits(vec3<i32>(2147483647i, u_input.b.x, 0i))), ~(-vec3<i32>(-13438i, 2993i, u_input.b.x)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), func_1(vec3<u32>(4294967295u, 73741u, u_input.a.x), Struct_2(vec3<f32>(756f, -814f, -1621f), vec3<f32>(430f, -3122f, 1182f)), -34258i), func_2(true, u_input.a.x, false))));
    global0 = array<Struct_1, 19>();
    var var_1 = global0[_wgslsmith_index_u32(~u_input.a.x, 19u)];
    var_1 = Struct_1(vec2<bool>(true, true), vec4<bool>(var_1.a.x, var_1.b.x, true, any(!vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.b.x))), ~var_1.d.x & ~u_input.a.x, ~_wgslsmith_div_vec2_u32(~var_1.d, vec2<u32>(_wgslsmith_div_u32(52384u, var_1.d.x), var_1.c)));
    let var_2 = var_0.x;
    let var_3 = ~_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(u_input.a.yyx, ~vec3<u32>(1u, var_1.d.x, var_1.d.x)), u_input.a.wzx);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(4294967295u, 4294967295u)), -vec2<i32>(firstTrailingBit(~var_0.x), u_input.b.x));
}

