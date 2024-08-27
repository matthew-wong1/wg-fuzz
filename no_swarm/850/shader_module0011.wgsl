struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<i32>, 18>;

var<private> global2: array<f32, 15>;

var<private> global3: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec2<i32>(1i, i32(-2147483648)), 60471i, vec4<i32>(-25523i, 1i, 7540i, -55339i), true, -9987i), Struct_1(vec2<i32>(-1i, 0i), -15072i, vec4<i32>(1i, 92892i, -1i, -1i), false, -1i), Struct_1(vec2<i32>(5254i, -21237i), 22201i, vec4<i32>(29341i, -9054i, -42640i, -13814i), true, 2147483647i), Struct_1(vec2<i32>(1i, 2147483647i), -14880i, vec4<i32>(-21129i, -32789i, -1i, 29361i), true, 0i), Struct_1(vec2<i32>(-40193i, 27733i), i32(-2147483648), vec4<i32>(-1i, -1030i, i32(-2147483648), 1i), false, -47463i), Struct_1(vec2<i32>(-48548i, 41964i), -15438i, vec4<i32>(-46741i, -28993i, 2147483647i, 26055i), true, 18849i), Struct_1(vec2<i32>(-41075i, i32(-2147483648)), 1i, vec4<i32>(0i, 31503i, -2198i, -1i), true, 16082i), Struct_1(vec2<i32>(-65127i, 98034i), 12834i, vec4<i32>(2147483647i, 2147483647i, -11881i, 0i), true, -1i), Struct_1(vec2<i32>(8150i, -37821i), -40614i, vec4<i32>(-58769i, 0i, 2147483647i, 1i), true, -86484i), Struct_1(vec2<i32>(64692i, -5297i), -1i, vec4<i32>(56542i, -9906i, -21899i, -55399i), true, 1i), Struct_1(vec2<i32>(13852i, -1i), 0i, vec4<i32>(1i, 50717i, i32(-2147483648), -22479i), true, 46654i), Struct_1(vec2<i32>(25758i, -47307i), 75023i, vec4<i32>(-4441i, 4584i, 1i, -37869i), false, 15567i), Struct_1(vec2<i32>(2968i, 16858i), 2801i, vec4<i32>(-68480i, 4639i, 33975i, 0i), false, 0i), Struct_1(vec2<i32>(14108i, 0i), i32(-2147483648), vec4<i32>(1204i, 8025i, -31751i, 58541i), false, 3774i));

var<private> global4: array<vec4<i32>, 23> = array<vec4<i32>, 23>(vec4<i32>(-24775i, 1i, -8741i, 0i), vec4<i32>(i32(-2147483648), 1i, 33651i, -1i), vec4<i32>(-11886i, 0i, 1i, 4186i), vec4<i32>(-19597i, i32(-2147483648), i32(-2147483648), 5833i), vec4<i32>(0i, -1i, 17266i, 4700i), vec4<i32>(0i, -1i, 2147483647i, 1i), vec4<i32>(-15427i, i32(-2147483648), -49680i, 42222i), vec4<i32>(19094i, -994i, 0i, -1i), vec4<i32>(15738i, -57602i, 2147483647i, -8942i), vec4<i32>(1i, 1i, 44914i, 18696i), vec4<i32>(-24651i, 1i, 9611i, 24972i), vec4<i32>(-1i, -37039i, i32(-2147483648), 17380i), vec4<i32>(14954i, -48280i, 0i, 2147483647i), vec4<i32>(3146i, 1i, 29602i, 0i), vec4<i32>(1i, -18141i, 74610i, -669i), vec4<i32>(0i, 29750i, 0i, -24540i), vec4<i32>(-17915i, 0i, -51932i, 2147483647i), vec4<i32>(17193i, 17788i, -1i, i32(-2147483648)), vec4<i32>(-29861i, 4157i, -1i, 1820i), vec4<i32>(-1i, i32(-2147483648), -55773i, 55932i), vec4<i32>(0i, i32(-2147483648), 0i, -1i), vec4<i32>(1772i, 10652i, 0i, 0i), vec4<i32>(-1i, 2147483647i, 0i, 46313i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32, arg_3: f32) -> bool {
    var var_0 = select(vec3<bool>(arg_1.x, any(vec3<bool>(any(arg_1.zw), all(arg_1.xz), true)), true), arg_1.xyz, arg_1.xwx);
    let var_1 = Struct_1(-(~_wgslsmith_div_vec2_i32(global1[_wgslsmith_index_u32(0u, 18u)], vec2<i32>(-1i, arg_0.e)) | firstLeadingBit(~global1[_wgslsmith_index_u32(arg_2, 18u)])), arg_0.c.x, vec4<i32>(countOneBits(2147483647i), -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, arg_0.e), global1[_wgslsmith_index_u32(46150u, 18u)]), arg_0.a.x, arg_0.e) << ((_wgslsmith_sub_vec4_u32(u_input.c, ~u_input.c) >> (u_input.c % vec4<u32>(32u))) % vec4<u32>(32u)), arg_0.d, arg_0.a.x);
    global4 = array<vec4<i32>, 23>();
    let var_2 = min(~firstLeadingBit(40697i), var_1.c.x);
    global3 = array<Struct_1, 14>();
    return false;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    global1 = array<vec2<i32>, 18>();
    var var_0 = select(vec4<bool>(any(!(!vec3<bool>(arg_2.d, arg_2.d, arg_2.d))), false, true & arg_2.d, any(select(vec3<bool>(false, true, arg_2.d), !vec3<bool>(false, arg_3.d, false), true))), select(vec4<bool>(!any(vec2<bool>(arg_3.d, false)), any(!vec2<bool>(arg_3.d, arg_3.d)), all(!vec2<bool>(true, arg_3.d)), !(!arg_3.d)), !(!(!vec4<bool>(arg_2.d, true, arg_2.d, false))), !(!(!vec4<bool>(true, arg_3.d, arg_3.d, arg_3.d)))), vec4<bool>(arg_3.d, false, !arg_2.d != true, true));
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(103150u, u_input.b, u_input.c.x)), firstLeadingBit(u_input.c.xzx)) | u_input.b, 0u);
    var var_2 = vec4<bool>(var_0.x, true, func_3(arg_3, vec4<bool>(arg_0.x != (arg_1.x ^ -10380i), false, true, var_0.x), ~_wgslsmith_mod_u32(89353u, 1u), _wgslsmith_f_op_f32(f32(-1f) * -508f)), var_0.x);
    let var_3 = global2[_wgslsmith_index_u32(~firstTrailingBit(~(~_wgslsmith_div_u32(1u, 4294967295u))), 15u)];
    return select(!vec2<bool>(!(arg_0.x > arg_3.a.x), true & any(vec3<bool>(false, var_0.x, false))), var_2.xw, arg_2.d);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    global3 = array<Struct_1, 14>();
    let var_0 = -2147483647i;
    var var_1 = vec4<bool>(false, arg_1.x, false, false);
    var var_2 = Struct_1(global1[_wgslsmith_index_u32(1u, 18u)], arg_0.x, vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(-10151i, arg_0.x), arg_2.c.x), firstLeadingBit(22412i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -arg_2.a, vec2<i32>(51339i, _wgslsmith_add_i32(1i, -1i))), 23356i, var_0), arg_1.x, _wgslsmith_add_i32(firstTrailingBit(arg_0.x & var_0) << (~22035u % 32u), _wgslsmith_div_i32(16809i, firstTrailingBit(_wgslsmith_dot_vec4_i32(global4[_wgslsmith_index_u32(u_input.d, 23u)], vec4<i32>(var_0, arg_2.c.x, var_0, arg_2.e))))));
    let var_3 = _wgslsmith_sub_vec2_u32(u_input.c.zy, vec2<u32>(~1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.c.yxz, u_input.c.yxz), 1u)));
    return global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d, _wgslsmith_mod_u32(var_3.x, abs(4294967295u))), 14u)];
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec4<u32> {
    global3 = array<Struct_1, 14>();
    var var_0 = u_input.c.wz;
    var var_1 = func_4(arg_1.c, !func_2(countOneBits(vec2<i32>(arg_1.e, arg_1.b)), -arg_1.c >> (vec4<u32>(28633u, 1u, 0u, 0u) % vec4<u32>(32u)), Struct_1(~global1[_wgslsmith_index_u32(14385u, 18u)], 17036i >> (0u % 32u), countOneBits(arg_1.c), global2[_wgslsmith_index_u32(var_0.x, 15u)] >= 893f, i32(-1i) * -1i), Struct_1(_wgslsmith_div_vec2_i32(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(var_0.x, 18u)]), max(arg_0, 0i), arg_1.c, arg_1.d, 2147483647i)), global3[_wgslsmith_index_u32(u_input.b, 14u)]);
    global1 = array<vec2<i32>, 18>();
    let var_2 = true;
    return vec4<u32>(var_0.x, max(max(55018u, u_input.c.x), 35692u), ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.c ^ u_input.c, u_input.c, vec4<u32>(u_input.a, 0u, 76585u, 15626u)), vec4<u32>(var_0.x, 59456u, 0u, ~u_input.a)), ~firstLeadingBit(min(u_input.d, abs(38687u))));
}

fn func_5(arg_0: vec4<u32>, arg_1: f32) -> Struct_1 {
    let var_0 = vec3<u32>(_wgslsmith_div_u32(max(0u, arg_0.x) << (28321u % 32u), _wgslsmith_dot_vec2_u32(u_input.c.zw | u_input.c.wy, vec2<u32>(u_input.c.x, arg_0.x))) >> (_wgslsmith_mod_u32(u_input.d, u_input.a) % 32u), ~(~_wgslsmith_div_u32(~u_input.d, ~80353u)), u_input.c.x);
    var var_1 = global3[_wgslsmith_index_u32(reverseBits(17545u), 14u)];
    var_1 = global3[_wgslsmith_index_u32(32522u, 14u)];
    var_1 = global3[_wgslsmith_index_u32(12539u, 14u)];
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(-1256f, 313f)), 554f, -1000f, arg_1);
    return global3[_wgslsmith_index_u32(4294967295u, 14u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(-1i, global3[_wgslsmith_index_u32(u_input.c.x, 14u)]), global2[_wgslsmith_index_u32(~4294967295u, 15u)]);
    global2 = array<f32, 15>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~19039u, 15u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1025f)) - global2[_wgslsmith_index_u32(40636u, 15u)]), false))), global2[_wgslsmith_index_u32(~1u, 15u)], global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, 4294967295u), 15u)]);
    var var_2 = u_input.a;
    global2 = array<f32, 15>();
    var var_3 = vec4<u32>(u_input.c.x, u_input.b, 1u, ~(_wgslsmith_sub_u32(u_input.c.x, u_input.b) | 401u)) | ~vec4<u32>(countOneBits(~u_input.d), _wgslsmith_mult_u32(36340u, _wgslsmith_div_u32(u_input.d, 1u)), select(~15101u, 54054u << (u_input.a % 32u), var_0.c.x != 29442i), ~(~u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-_wgslsmith_sub_i32(~var_0.e, min(var_0.e, var_0.c.x)), -44179i | var_0.a.x, i32(-1i) * -1i, -max(_wgslsmith_add_i32(0i, 28983i), -11950i)), i32(-1i) * -firstTrailingBit(_wgslsmith_add_i32(var_0.e, 48931i)), max(u_input.c.zzx & vec3<u32>(min(49561u, 4482u), _wgslsmith_clamp_u32(69968u, 4294967295u, u_input.b), ~1u), min(u_input.c.yxy, vec3<u32>(62021u, u_input.b << (0u % 32u), min(31677u, 1u)))), var_1.x);
}

