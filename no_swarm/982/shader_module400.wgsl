struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, 1u);

var<private> global1: array<vec3<i32>, 22>;

var<private> global2: array<i32, 10> = array<i32, 10>(28832i, -1i, -78514i, -2860i, -14385i, 1i, 3108i, 2147483647i, -19937i, -39961i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: Struct_1) -> bool {
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> u32 {
    let var_0 = arg_1;
    global1 = array<vec3<i32>, 22>();
    var var_1 = -firstTrailingBit(abs(arg_1.xzz));
    global1 = array<vec3<i32>, 22>();
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1426f, -290f) * vec2<f32>(-1072f, 438f)), vec2<f32>(-1142f, 1581f))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(649f, -1157f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-737f, -766f) - vec2<f32>(546f, -302f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(110f, 505f)))))));
    return ~4294967295u;
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_1 {
    let var_0 = true;
    var var_1 = Struct_1(global0.a, u_input.a.x | 103961u);
    var_1 = Struct_1(true, 1u);
    let var_2 = u_input.c;
    var var_3 = ~func_3(Struct_1(global0.a, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_2.x), var_2.xx), global0.b, ~1u)), _wgslsmith_clamp_vec4_i32(-(vec4<i32>(u_input.d.x, u_input.b, u_input.d.x, -18384i) >> (vec4<u32>(u_input.a.x, 0u, global0.b, 16342u) % vec4<u32>(32u))), ~(vec4<i32>(u_input.b, -1i, global2[_wgslsmith_index_u32(global0.b, 10u)], -42243i) & vec4<i32>(global2[_wgslsmith_index_u32(22741u, 10u)], u_input.d.x, global2[_wgslsmith_index_u32(var_2.x, 10u)], -1i)), vec4<i32>(~(-2147483647i), u_input.d.x, 1i, _wgslsmith_mod_i32(11125i, global2[_wgslsmith_index_u32(global0.b, 10u)]))));
    return Struct_1(!(!all(!vec4<bool>(false, true, arg_0, global0.a))), var_2.x);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    global2 = array<i32, 10>();
    global0 = arg_1;
    let var_0 = 2825i;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -440f))) + -258f) * 1536f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) - -861f), _wgslsmith_f_op_f32(-arg_0));
    let var_2 = u_input.a.x;
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global0 = Struct_1(!func_4(1f, Struct_1(arg_0.a, ~arg_2.b), _wgslsmith_add_vec3_u32(vec3<u32>(38272u, u_input.a.x, 3955u), vec3<u32>(35586u, arg_2.b, 0u)) ^ min(u_input.a, u_input.a)).a, _wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, max(func_3(arg_2, vec4<i32>(-30583i, -34328i, 1i, u_input.d.x)), ~96357u)), ~global0.b));
    global0 = func_2(all(vec4<bool>(!arg_2.a != arg_2.a, any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(global0.a, arg_0.a))), any(vec3<bool>(global0.a, false, false)), arg_0.a)), 1000f);
    global2 = array<i32, 10>();
    global0 = func_2(all(select(vec3<bool>(arg_0.a, false, arg_0.a), select(!vec3<bool>(false, arg_0.a, true), vec3<bool>(false, true, true), global0.b <= 42451u), arg_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-580f))) - -354f)));
    let var_0 = -275f;
    return arg_2;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> StorageBuffer {
    global2 = array<i32, 10>();
    let var_0 = 36548u;
    let var_1 = u_input.c.yz << (~u_input.a.zz % vec2<u32>(32u));
    let var_2 = arg_2;
    let var_3 = Struct_1(arg_0.a, ~u_input.a.x);
    return StorageBuffer(_wgslsmith_mult_i32(-35435i, _wgslsmith_mult_i32(u_input.b, 0i)), arg_1, ~select(var_2.b, func_3(Struct_1(false, 7852u), vec4<i32>(-45096i, global2[_wgslsmith_index_u32(39460u, 10u)], 32752i, 1i) | vec4<i32>(global2[_wgslsmith_index_u32(arg_2.b, 10u)], -2147483647i, 2147483647i, u_input.d.x)), select(true, arg_0.a, !arg_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-905f))), func_2(func_1(Struct_1(true, 42870u)), _wgslsmith_div_f32(-502f, -1153f)), u_input.c), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~min(0u, global0.b), ~min(u_input.c.x, 0u)), 10u)], func_2(true, -813f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1869f, -552f, -996f, 1000f), vec4<f32>(1133f, -608f, -1526f, 1377f), vec4<bool>(global0.a, true, false, false))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1520f, 754f, 508f, -1574f)))))), Struct_1(func_2(false, _wgslsmith_f_op_f32(floor(-599f))).a || global0.a, max(~0u, _wgslsmith_mod_u32(21122u, ~u_input.a.x))));
}

