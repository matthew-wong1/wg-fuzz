struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(42953u, 22514u, 60002u, 17481u);

var<private> global1: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(-2554f, 1499f, -1275f, -471f), vec4<f32>(-121f, 947f, 488f, 918f), vec4<f32>(-401f, -1722f, -1222f, 1766f), vec4<f32>(148f, -420f, 182f, -990f), vec4<f32>(932f, -1254f, -249f, 1032f), vec4<f32>(1074f, 233f, 307f, -693f), vec4<f32>(-1421f, -880f, 1000f, 554f), vec4<f32>(550f, 962f, -660f, 700f), vec4<f32>(-289f, 944f, -1289f, 1130f), vec4<f32>(330f, -1000f, 895f, 1359f), vec4<f32>(926f, 477f, 816f, -989f), vec4<f32>(254f, -1071f, 1288f, -1334f), vec4<f32>(143f, 1000f, -984f, 522f), vec4<f32>(404f, 1133f, -830f, -1379f));

var<private> global2: vec3<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_1 {
    var var_0 = ~u_input.d.x;
    var var_1 = global2.xy;
    let var_2 = Struct_2(~4294967295u, u_input.c, -(~(_wgslsmith_div_vec3_i32(u_input.a, u_input.a) & select(vec3<i32>(-80447i, u_input.a.x, u_input.d.x), u_input.a, var_1.x))));
    return Struct_1(vec2<i32>(-var_2.c.x, 1i << ((global0.x | 38040u) % 32u)) >> (vec2<u32>(global0.x, ~(arg_0 << (4294967295u % 32u))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * -1213f));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> vec3<bool> {
    global0 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(24497u, arg_2, global0.x, arg_1), vec4<u32>(54399u, 32107u, global0.x, 0u) << (vec4<u32>(arg_2, 28112u, 4294967295u, arg_1) % vec4<u32>(32u)), !vec4<bool>(true, false, global2.x, global2.x)), vec4<u32>(_wgslsmith_clamp_u32(0u, u_input.b.x, arg_2), ~0u, ~global0.x, firstLeadingBit(70232u))), ~vec4<u32>(u_input.c, _wgslsmith_sub_u32(29809u, arg_1), 38649u, ~arg_1));
    var var_0 = arg_3;
    var var_1 = global0.zy;
    var_1 = _wgslsmith_sub_vec2_u32(select(~vec2<u32>(~arg_2, 4294967295u), vec2<u32>(29905u, arg_2), !vec2<bool>(true, all(vec4<bool>(global2.x, global2.x, true, global2.x)))), abs(global0.yx));
    var var_2 = true;
    return select(select(vec3<bool>(!global2.x, all(select(vec2<bool>(true, false), vec2<bool>(true, global2.x), global2.x)), any(!global2.yx)), !select(select(vec3<bool>(global2.x, false, true), vec3<bool>(global2.x, false, false), global2.x), !vec3<bool>(true, false, global2.x), select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, true, true), true)), !(!vec3<bool>(false, global2.x, global2.x))), !select(vec3<bool>(false, !global2.x, true), vec3<bool>(global2.x, !global2.x, global2.x), global2.x), !(15851i >= abs(var_0.a.x)));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    let var_0 = !select(vec3<bool>(!arg_0 && true, !arg_0, all(vec3<bool>(true, false, arg_0))), select(func_3(-1248i, 80390u, u_input.b.x << (arg_1.b % 32u), func_2(arg_1.b, arg_1.b)), vec3<bool>(all(vec3<bool>(global2.x, false, global2.x)), !arg_0, select(true, global2.x, arg_0)), !vec3<bool>(true, global2.x, arg_0)), true);
    global1 = array<vec4<f32>, 14>();
    let var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_f32(-753f + -1000f);
    let var_3 = select(global2.zx, vec2<bool>(global2.x, !all(select(vec4<bool>(var_0.x, arg_0, false, var_0.x), vec4<bool>(var_0.x, true, false, true), vec4<bool>(global2.x, true, var_0.x, arg_0)))), all(!(!func_3(arg_2, 4294967295u, 7347u, Struct_1(u_input.a.yx, -685f)))));
    return Struct_1((-arg_1.c.zy << (vec2<u32>(~4194u, arg_1.b) % vec2<u32>(32u))) >> (vec2<u32>(u_input.b.x, arg_1.a) % vec2<u32>(32u)), func_2(u_input.c, u_input.b.x).b);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32) -> vec2<i32> {
    global2 = select(!vec3<bool>(func_3(~28636i, _wgslsmith_div_u32(u_input.c, global0.x), 69164u, arg_0).x, false, true), func_3(_wgslsmith_div_i32(-11643i, firstTrailingBit(~arg_0.a.x)), ~abs(~131406u), global0.x, func_2(10378u, u_input.c)), global2.x);
    var var_0 = arg_0;
    var var_1 = 4294967295u;
    var var_2 = 0u;
    let var_3 = arg_0.a;
    return vec2<i32>(var_0.a.x, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(u_input.a.xz, _wgslsmith_clamp_vec2_i32(~vec2<i32>(7511i, 2147483647i), u_input.a.zx, u_input.d.zy), -func_4(func_1(global2.x, Struct_2(0u, u_input.b.x, u_input.d), u_input.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(2294f, 1040f, -199f) * vec3<f32>(-599f, 577f, -908f)), func_1(global2.x, Struct_2(global0.x, 4294967295u, vec3<i32>(u_input.d.x, u_input.a.x, u_input.d.x)), -2147483647i).b)), _wgslsmith_f_op_f32(step(func_2(_wgslsmith_add_u32(~1u, u_input.c), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 22353u), vec2<u32>(u_input.c, u_input.c)), ~4294967295u, global0.x ^ 89674u)).b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -310f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(911f, -1030f))))));
    global2 = vec3<bool>(!(!global2.x), true, -1000f >= _wgslsmith_f_op_f32(abs(var_0.b)));
    var var_1 = Struct_2(~(~firstTrailingBit(0u)), max(global0.x, u_input.c), u_input.d);
    global1 = array<vec4<f32>, 14>();
    var var_2 = !(!global2.x);
    var_2 = global2.x;
    var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<u32>(~1u, global0.x, ~16348u, ~u_input.c)));
}

