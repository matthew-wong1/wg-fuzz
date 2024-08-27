struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 12>;

var<private> global1: array<vec4<bool>, 30>;

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global3: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(38834u, 4294967295u, 8626u), vec3<u32>(27696u, 39152u, 74908u), vec3<u32>(1u, 4294967295u, 26294u), vec3<u32>(0u, 898u, 1u), vec3<u32>(59292u, 1u, 1u), vec3<u32>(4294967295u, 35291u, 61392u), vec3<u32>(0u, 22684u, 84343u), vec3<u32>(50509u, 88297u, 4294967295u), vec3<u32>(73713u, 42001u, 1u), vec3<u32>(0u, 22604u, 4294967295u), vec3<u32>(12497u, 4294967295u, 0u), vec3<u32>(4294967295u, 4294967295u, 83021u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(0u, 2581u, 88790u), vec3<u32>(4294967295u, 2222u, 25192u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(64849u, 0u, 0u), vec3<u32>(4294967295u, 0u, 21612u), vec3<u32>(615u, 4294967295u, 45985u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(38292u, 30795u, 4294967295u), vec3<u32>(1u, 52571u, 1u), vec3<u32>(69114u, 38603u, 12819u), vec3<u32>(1u, 55545u, 0u), vec3<u32>(0u, 42592u, 4294967295u), vec3<u32>(388u, 4294967295u, 4294967295u), vec3<u32>(28892u, 23991u, 4294967295u), vec3<u32>(14739u, 1u, 9253u));

var<private> global4: Struct_1 = Struct_1(true, vec4<i32>(1i, 26963i, 8179i, 8137i));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> Struct_1 {
    global1 = array<vec4<bool>, 30>();
    return Struct_1(global2.x, ~global4.b);
}

fn func_3() -> f32 {
    var var_0 = ~global4.b.zx >> (_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a.x, u_input.a.x)), u_input.b.yz) >> ((~u_input.a.yy ^ (vec2<u32>(4294967295u, 32316u) >> (u_input.a.xx % vec2<u32>(32u)))) % vec2<u32>(32u)), ~select(u_input.a.zy & u_input.b.zz, ~vec2<u32>(u_input.a.x, 0u), !global2.x)) % vec2<u32>(32u));
    global2 = !select(select(!vec4<bool>(false, global2.x, global4.a, false), select(global1[_wgslsmith_index_u32(43427u, 30u)], select(vec4<bool>(true, true, true, global4.a), global1[_wgslsmith_index_u32(u_input.a.x, 30u)], global2.x), true), global2.x), select(!select(vec4<bool>(false, global4.a, global4.a, true), global1[_wgslsmith_index_u32(u_input.a.x, 30u)], true), vec4<bool>(global4.b.x >= -2147483647i, false, global4.a, true), global1[_wgslsmith_index_u32(1u, 30u)]), !(!(!global4.a)));
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1046f - _wgslsmith_f_op_f32(-673f * _wgslsmith_div_f32(-629f, -424f))), 234f), 2004f, -472f);
    var var_2 = Struct_2(select(!(!global2.yx), global2.zx, !(!(!global2.zw))), Struct_1(!global2.x, global4.b));
    global1 = array<vec4<bool>, 30>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x)));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: bool, arg_3: f32) -> Struct_2 {
    global1 = array<vec4<bool>, 30>();
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-516f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), global4.a)));
    var_1 = -592f;
    global4 = var_0;
    return Struct_2(!vec2<bool>(all(select(global2.xxz, vec3<bool>(false, global2.x, arg_2), global2.xyx)), true), Struct_1(true == select(-486f == arg_3, true, arg_2), max(_wgslsmith_sub_vec4_i32(vec4<i32>(-4143i, 33917i, -1i, 2147483647i), vec4<i32>(global4.b.x, -1i, 3630i, -25352i)), vec4<i32>(23943i, 0i, global4.b.x, var_0.b.x)) | abs(firstLeadingBit(vec4<i32>(var_0.b.x, 2147483647i, global4.b.x, global4.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(1i, vec4<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, ~1u) & _wgslsmith_mod_u32(u_input.a.x, reverseBits(11855u)), select(u_input.b.x, ~u_input.a.x, false), ~119028u), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(862f))))));
    global0 = array<vec4<f32>, 12>();
    global3 = array<vec3<u32>, 29>();
    var var_1 = 73849u;
    var_1 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(u_input.a.zzx, _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.a.x, 24477u, 34397u)), global3[_wgslsmith_index_u32(~62103u, 29u)], firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(109732u, 0u, u_input.a.x), u_input.b)))));
}

