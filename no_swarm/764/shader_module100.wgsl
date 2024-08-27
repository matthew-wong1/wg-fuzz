struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(1u, 51387u, 4294967295u));

var<private> global2: array<vec4<i32>, 7>;

var<private> global3: i32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec2<i32>) -> u32 {
    global2 = array<vec4<i32>, 7>();
    global1 = Struct_1(abs(global1.a) | _wgslsmith_clamp_vec3_u32(global1.a, ~(global1.a & vec3<u32>(global1.a.x, u_input.b, 45151u)), vec3<u32>(u_input.b, ~global1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, 0u, global1.a.x, 0u), vec4<u32>(32587u, 1u, 34571u, global1.a.x)))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-839f + arg_0.x));
    var var_1 = _wgslsmith_dot_vec3_u32(~(global1.a << ((global1.a & abs(vec3<u32>(3212u, global1.a.x, u_input.b))) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(reverseBits(min(_wgslsmith_div_vec3_u32(global1.a, vec3<u32>(1u, global1.a.x, u_input.b)), abs(global1.a))), vec3<u32>(0u, _wgslsmith_mod_u32(~global1.a.x, global1.a.x), ~u_input.b)));
    var var_2 = 2447i;
    return _wgslsmith_add_u32(~u_input.b, 0u << (_wgslsmith_clamp_u32(min(global1.a.x, 1u) >> (global1.a.x % 32u), _wgslsmith_add_u32(4315u, 0u), _wgslsmith_mod_u32(~26208u, global1.a.x)) % 32u));
}

fn func_1(arg_0: u32, arg_1: u32) -> u32 {
    var var_0 = u_input.b;
    global0 = true;
    var var_1 = ~(~global1.a);
    var var_2 = Struct_2(Struct_1(countOneBits(global1.a) ^ _wgslsmith_sub_vec3_u32(~global1.a, vec3<u32>(arg_0, 74619u, 0u))), _wgslsmith_mod_u32(~u_input.b, ~(~24618u) | _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global1.a.x, 20365u, var_1.x), vec4<u32>(arg_0, u_input.b, 4294967295u, u_input.b)), vec4<u32>(2776u, arg_1, 0u, 17925u))));
    global0 = true;
    return _wgslsmith_mult_u32(var_2.b & (~_wgslsmith_dot_vec4_u32(vec4<u32>(12992u, 0u, 17096u, 1u), vec4<u32>(19259u, 112675u, 4294967295u, 4294967295u)) | func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1705f, -1000f)), -vec2<i32>(u_input.c, 1i), -u_input.a.zy)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_1.xx, var_1.zz), global1.a.xz));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: i32, arg_3: Struct_3) -> i32 {
    return _wgslsmith_mod_i32(arg_2, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(select(global1.a, vec3<u32>(global1.a.x, ~u_input.b, func_1(22033u, u_input.b)), select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), true))), u_input.b);
    global0 = -(i32(-1i) * -1i) == _wgslsmith_clamp_i32(u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(func_3(Struct_4(16188i, var_0), Struct_4(u_input.c, var_0), u_input.c, Struct_3(u_input.a)), 2651i, i32(-1i) * -17472i, i32(-1i) * -1i), global2[_wgslsmith_index_u32(~global1.a.x, 7u)] << ((vec4<u32>(var_0.b, u_input.b, 0u, 22391u) >> (vec4<u32>(4294967295u, global1.a.x, 0u, global1.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_div_i32(19978i, -u_input.d));
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(max(countOneBits(select(var_0.a.a, var_0.a.a, vec3<bool>(true, false, true))), _wgslsmith_mod_vec3_u32(vec3<u32>(89836u, 0u, var_0.b), vec3<u32>(global1.a.x, u_input.b, u_input.b)) << (reverseBits(vec3<u32>(1u, 44312u, 1u)) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(~(vec3<u32>(u_input.b, 30594u, global1.a.x) >> (vec3<u32>(u_input.b, 4294967295u, 0u) % vec3<u32>(32u))), countOneBits(vec3<u32>(32871u, 0u, 35197u)), firstTrailingBit(~var_0.a.a))), _wgslsmith_div_vec3_u32(vec3<u32>(32456u, _wgslsmith_div_u32(4294967295u, 1u), var_0.b), ~abs(~vec3<u32>(u_input.b, 0u, u_input.b))));
    var var_2 = ~(~firstLeadingBit(~1u));
    var var_3 = var_0;
    let var_4 = vec3<bool>(all(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false))), !select(any(vec4<bool>(false, false, false, false)), true, any(vec3<bool>(true, true, false))), select(true, true, any(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(233f * _wgslsmith_f_op_f32(select(1140f, 1057f, true))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(1051f, -141f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-119f * -303f) + -942f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2520f) + -1951f)))), ~_wgslsmith_mult_vec2_u32(var_0.a.a.yy << (global1.a.yz % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(var_3.b, 56561u), var_3.a.a.yx)) >> ((var_0.a.a.zy | countOneBits(~var_0.a.a.zz)) % vec2<u32>(32u)));
}

