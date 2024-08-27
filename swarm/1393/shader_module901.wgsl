struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> vec4<bool> {
    global0 = array<vec2<bool>, 27>();
    var var_0 = arg_1;
    var_0 = arg_1;
    var var_1 = arg_1;
    let var_2 = Struct_1(vec2<i32>(2147483647i, _wgslsmith_mult_i32(var_0.a.x, _wgslsmith_clamp_i32(7023i, var_1.a.x, -66375i))), !(u_input.c.x <= u_input.c.x));
    return !vec4<bool>(!var_0.b & false, arg_1.b, true, true);
}

fn func_3(arg_0: i32, arg_1: vec4<bool>) -> f32 {
    var var_0 = abs(firstLeadingBit(_wgslsmith_div_vec2_u32(~(~u_input.c), reverseBits(vec2<u32>(u_input.c.x, u_input.c.x)))));
    var var_1 = global0[_wgslsmith_index_u32(var_0.x, 27u)];
    let var_2 = Struct_1(-u_input.a << (_wgslsmith_div_vec2_u32(u_input.c, ~vec2<u32>(0u, 1u) >> ((vec2<u32>(0u, 1u) | vec2<u32>(u_input.c.x, 1u)) % vec2<u32>(32u))) % vec2<u32>(32u)), true);
    return _wgslsmith_f_op_f32(trunc(-1659f));
}

fn func_1() -> Struct_1 {
    let var_0 = 0u;
    global0 = array<vec2<bool>, 27>();
    var var_1 = vec2<i32>(u_input.a.x, u_input.a.x);
    global0 = array<vec2<bool>, 27>();
    let var_2 = _wgslsmith_f_op_f32(func_3(reverseBits(u_input.a.x), !select(vec4<bool>(true, false, false, true), func_2(true, Struct_1(vec2<i32>(var_1.x, u_input.a.x), true)), var_0 >= 105055u))) != 1971f;
    return Struct_1(u_input.a, any(!vec4<bool>(!var_2, false, 1u >= var_0, true)));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = func_1();
    global0 = array<vec2<bool>, 27>();
    global0 = array<vec2<bool>, 27>();
    let var_1 = ~4294967295u;
    var var_2 = ~_wgslsmith_clamp_i32(0i, 2147483647i, ~(-2607i));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<i32>(u_input.a.x, (21255i | u_input.a.x) & (u_input.a.x & (u_input.a.x ^ u_input.a.x))), -1721f >= _wgslsmith_f_op_f32(ceil(1f)));
    let var_1 = u_input.c << (u_input.c % vec2<u32>(32u));
    let var_2 = !vec3<bool>(var_0.b, true, true);
    let var_3 = select(vec4<bool>(false, true, false, any(!(!vec4<bool>(false, var_2.x, var_2.x, var_0.b)))), vec4<bool>(true, false, var_0.b, false || !(!var_2.x)), select(select(false, true || select(var_0.b, var_2.x, var_2.x), true), true, true));
    global0 = array<vec2<bool>, 27>();
    let var_4 = select(!select(!vec2<bool>(var_2.x, true), !select(vec2<bool>(false, var_2.x), var_2.xz, true), var_2.x), select(select(vec2<bool>(false, true), vec2<bool>(true, true), func_4(-1i, -26712i ^ u_input.a.x, func_1(), var_0)), var_3.xx, var_0.b), select(!(!(!var_2.yx)), func_2(all(select(var_3, vec4<bool>(true, true, true, false), var_3)), var_0).yx, select(global0[_wgslsmith_index_u32(20017u, 27u)], var_2.zy, all(select(vec3<bool>(var_0.b, false, var_2.x), var_2, var_0.b)))));
    var var_5 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -747f))));
    var var_6 = _wgslsmith_f_op_f32(trunc(-592f));
    var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -814f)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, -28170i, func_1().a.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(var_0.a.x, var_3)), _wgslsmith_f_op_f32(round(1339f)), _wgslsmith_div_f32(-2208f, -879f), -601f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(683f, -1703f, -177f, 655f)))))), var_0.a.x);
}

