struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-297f, Struct_1(true, vec2<bool>(true, false), 1u), vec3<i32>(-1i, 5323i, 2147483647i));

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(true, vec2<bool>(true, false), 8666u), Struct_1(true, vec2<bool>(false, true), 47685u));

var<private> global3: vec4<f32>;

var<private> global4: bool;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = select(!select(select(vec4<bool>(arg_0.x, global1.a, global1.a, false), vec4<bool>(true, true, true, true), vec4<bool>(global1.b.x, arg_2.a, global0.b.a, false)), !vec4<bool>(true, true, arg_2.b.x, arg_2.a), false), !(!vec4<bool>(true, arg_2.b.x, true, true)), !(!select(vec4<bool>(false, global1.a, true, false), vec4<bool>(arg_0.x, arg_2.b.x, false, true), vec4<bool>(arg_2.b.x, true, false, true))));
    var var_1 = Struct_1(any(global1.b) & false, select(select(select(vec2<bool>(true, true), select(vec2<bool>(global1.b.x, false), vec2<bool>(false, arg_1), arg_1), true | var_0.x), !var_0.xz, true | arg_2.b.x), select(!(!vec2<bool>(arg_0.x, false)), !(!global0.b.b), global0.b.a), all(var_0.wwy)), ~4833u);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(f32(-1f) * -1450f)), arg_2, vec3<i32>(countOneBits(-16845i), ~_wgslsmith_mult_i32(min(-2147483647i, u_input.b), -9822i), ~24245i));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-353f, 108f, 669f, 436f) + vec4<f32>(1000f, global3.x, global0.a, 1469f))), vec4<f32>(128f, _wgslsmith_div_f32(-1904f, var_2.a), 1988f, global0.a))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, 332f, var_2.a, global0.a), vec4<f32>(global3.x, 511f, var_2.a, -100f), var_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, -825f, 237f, global0.a) - vec4<f32>(global3.x, -308f, var_2.a, global0.a))))))));
}

fn func_2() -> Struct_2 {
    global4 = !global0.b.b.x;
    global1 = global0.b;
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(global1.b.x, true, global0.b.a), global1.a, global0.b))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a, -487f, global0.a, global3.x)))))));
    let var_1 = ~_wgslsmith_clamp_vec2_u32(~firstTrailingBit(~vec2<u32>(0u, global0.b.c)), ~vec2<u32>(u_input.c & global0.b.c, 146474u), _wgslsmith_clamp_vec2_u32(~(vec2<u32>(70212u, global0.b.c) | vec2<u32>(global0.b.c, 11516u)), abs(select(vec2<u32>(global1.c, 41589u), vec2<u32>(global0.b.c, u_input.c), false)), select(select(vec2<u32>(1u, 0u), vec2<u32>(global0.b.c, global0.b.c), global0.b.b), vec2<u32>(global1.c, 27939u), vec2<bool>(true, true))));
    global1 = global0.b;
    return Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(floor(global0.a))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1404f, -505f) * global0.a), global0.c.x <= ~0i)), global0.b, vec3<i32>(countOneBits(_wgslsmith_dot_vec2_i32(global0.c.yx << (var_1 % vec2<u32>(32u)), select(vec2<i32>(u_input.b, -9397i), vec2<i32>(global0.c.x, -1823i), vec2<bool>(true, true)))), global0.c.x, -_wgslsmith_mod_i32(-1i, 2558i) >> (global1.c % 32u)));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<u32>, arg_3: f32) -> f32 {
    var var_0 = false;
    let var_1 = func_2();
    let var_2 = !any(vec2<bool>(!(!global0.b.a), u_input.b == -var_1.c.x));
    global1 = func_2().b;
    let var_3 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 40088u, 9724u, u_input.a), max(vec4<u32>(u_input.a, 47816u, global1.c, 34011u), vec4<u32>(global1.c, 39136u, 25675u, global0.b.c))) & min(countOneBits(4294967295u), global0.b.c), ~(~(~3137u))), 4294967295u >> (_wgslsmith_clamp_u32(4294967295u, reverseBits(4294967295u), 37679u) % 32u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(85425u, var_1.b.c), _wgslsmith_sub_u32(var_1.b.c, reverseBits(var_1.b.c))));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(339f)))))), global0.a);
    var var_1 = Struct_1(true, vec2<bool>(global0.b.a, abs(-2147483647i) >= -u_input.b), 1u);
    var var_2 = 15653u;
    let var_3 = global2[_wgslsmith_index_u32(14568u, 2u)];
    global2 = array<Struct_1, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.zy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-405f - 1000f) * global0.a), _wgslsmith_div_f32(_wgslsmith_div_f32(global0.a, 3175f), var_0.x), var_0.x)), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<f32>(var_0.x, -1232f, -962f), global1.a, vec3<u32>(var_3.c, 0u, 4294967295u), -639f)) + -548f))));
}

