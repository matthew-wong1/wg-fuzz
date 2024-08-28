struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 18> = array<i32, 18>(-1i, -1i, 2147483647i, 0i, i32(-2147483648), -31336i, 0i, 1i, -35097i, -1i, 15550i, i32(-2147483648), -1i, 0i, 57724i, 2147483647i, 2147483647i, -1i);

var<private> global2: vec4<f32> = vec4<f32>(305f, -208f, -1000f, -1040f);

var<private> global3: Struct_2 = Struct_2(vec2<u32>(12906u, 1u), -421f, Struct_1(27140u, true), vec3<i32>(7694i, 0i, 1i));

var<private> global4: vec4<u32> = vec4<u32>(1427u, 1u, 0u, 0u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: i32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + global3.b))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.x), global2.x))))));
    var var_1 = vec3<i32>(i32(-1i) * -1i, abs(min(-arg_3, global3.d.x)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global4.ww & u_input.b.yx, _wgslsmith_add_vec2_u32(vec2<u32>(0u, 4294967295u), countOneBits(max(global3.a, u_input.b.zy)))), 18u)]);
    let var_2 = _wgslsmith_mod_u32(~(global4.x >> (_wgslsmith_mod_u32(4294967295u, 4697u) % 32u)) | ~(~_wgslsmith_mod_u32(global4.x, 1u)), _wgslsmith_sub_u32(52931u, ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(33699u, global3.c.a), global0.a)));
    global1 = array<i32, 18>();
    let var_3 = _wgslsmith_mod_u32(64929u, _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(u_input.b.xz ^ u_input.a, abs(vec2<u32>(global4.x, 4294967295u))), global0.a));
    return ~u_input.b.xz;
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = 2147483647i;
    global0 = Struct_1(global3.c.a, global0.b);
    var var_1 = !(!vec2<bool>(global3.c.b, !(global0.b && global3.c.b)));
    let var_2 = Struct_1(u_input.a.x, global3.c.b);
    global3 = Struct_2(countOneBits(~func_2(vec4<bool>(global3.c.b, var_2.b, true, false), vec3<bool>(global3.c.b, global3.c.b, false), global2.zxx, -u_input.c.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-458f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.b))))), Struct_1(global0.a, !(global4.x <= u_input.b.x) && (true & !global0.b)), vec3<i32>(27465i, global3.d.x, -(~(~(-12972i)))));
    return global2.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<u32>) -> i32 {
    global3 = Struct_2(global3.a ^ select(func_2(vec4<bool>(global3.c.b, true, false, false), select(vec3<bool>(false, true, global3.c.b), vec3<bool>(false, true, false), vec3<bool>(global3.c.b, global0.b, global0.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x)), reverseBits(-46625i)), abs(arg_0), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(u_input.b.x)), _wgslsmith_f_op_f32(func_3(0u))))), -1709f), Struct_1(1u, !global3.c.b), vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(vec3<i32>(1858i, u_input.c.x, -71639i) ^ vec3<i32>(global3.d.x, 2147483647i, global1[_wgslsmith_index_u32(0u, 18u)]), -global3.d));
    var var_0 = 1u;
    let var_1 = global3.c;
    return _wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(arg_0.x, 18u)], -8652i), firstLeadingBit(vec2<i32>(u_input.c.x, u_input.c.x)) & firstLeadingBit(global3.d.zx)), -(firstTrailingBit(u_input.c.zz) >> (vec2<u32>(var_1.a, ~9238u) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 58981u;
    global1 = array<i32, 18>();
    var var_1 = Struct_2(_wgslsmith_clamp_vec2_u32(~global4.yw, vec2<u32>(47121u, 1u), vec2<u32>(~(~11221u), 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(720f + _wgslsmith_f_op_f32(global3.b + global3.b)))), Struct_1(~0u, !all(select(vec3<bool>(true, false, false), vec3<bool>(global0.b, global3.c.b, global3.c.b), vec3<bool>(global0.b, true, false)))), _wgslsmith_mult_vec3_i32(~global3.d, vec3<i32>(global3.d.x, 2147483647i, -1i) ^ max(vec3<i32>(0i, u_input.c.x, 16387i), vec3<i32>(global3.d.x, -1i, -27556i))) ^ vec3<i32>(1i, _wgslsmith_mod_i32(u_input.c.x, _wgslsmith_mod_i32(global3.d.x, -59186i)), func_1(_wgslsmith_mod_vec2_u32(u_input.b.yz, vec2<u32>(0u, global0.a)), ~vec2<u32>(global4.x, var_0))));
    var_1 = Struct_2(vec2<u32>(func_2(select(!vec4<bool>(global0.b, true, false, global0.b), !vec4<bool>(global0.b, global0.b, global0.b, global3.c.b), !vec4<bool>(true, global3.c.b, global3.c.b, global3.c.b)), !(!vec3<bool>(false, false, global0.b)), vec3<f32>(-1565f, -1720f, -597f), 1i).x, ~3784u), 621f, global3.c, u_input.c);
    var var_2 = var_1.c;
    var_2 = global3.c;
    var var_3 = Struct_2(u_input.a, var_1.b, Struct_1(~abs(~1u), _wgslsmith_f_op_f32(sign(-204f)) >= _wgslsmith_f_op_f32(func_3(_wgslsmith_div_u32(var_2.a, global0.a)))), abs(-(~(~vec3<i32>(-53211i, 178i, global3.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(global3.b, ~(select(max(vec4<u32>(4294967295u, var_1.a.x, var_2.a, u_input.b.x), vec4<u32>(var_1.a.x, 4294967295u, 0u, var_0)), vec4<u32>(62711u, global3.a.x, 78u, var_0), select(vec4<bool>(true, true, false, true), vec4<bool>(true, var_3.c.b, true, false), vec4<bool>(false, var_3.c.b, false, global0.b))) & select(_wgslsmith_add_vec4_u32(vec4<u32>(var_3.a.x, 19877u, 54341u, 0u), vec4<u32>(global3.a.x, u_input.b.x, global3.a.x, var_1.c.a)), vec4<u32>(36215u, 2235u, var_0, u_input.b.x), vec4<bool>(false, true, true, var_2.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - -455f)), global3.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f * -1000f)))));
}

