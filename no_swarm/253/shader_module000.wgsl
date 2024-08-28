struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 28>;

var<private> global1: Struct_2 = Struct_2(Struct_1(-37391i, true));

var<private> global2: Struct_3 = Struct_3(9876u, Struct_2(Struct_1(2147483647i, true)), Struct_2(Struct_1(-20076i, true)), vec4<i32>(43321i, 2147483647i, -1i, -22230i));

var<private> global3: i32 = 2147483647i;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: i32) -> Struct_2 {
    let var_0 = select(vec3<bool>(true, true, true), !select(vec3<bool>(global2.c.a.b, global2.c.a.b & false, true), vec3<bool>(global2.c.a.b, true | global2.c.a.b, global1.a.b), any(!vec2<bool>(global1.a.b, global2.c.a.b))), global1.a.b);
    let var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(~global2.d.wwz, ~global2.d.xyw), var_0.x));
    global0 = array<vec2<bool>, 28>();
    let var_2 = Struct_3(arg_0, Struct_2(var_1.a), Struct_2(Struct_1(-1i, false || (arg_1.x > arg_1.x))), global2.d);
    var var_3 = var_2;
    return var_2.c;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<bool>) -> vec3<bool> {
    let var_0 = Struct_3(~select(select(arg_0.x, max(global2.a, 81329u), any(vec2<bool>(global2.b.a.b, false))), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, arg_0.x, 4294967295u), vec3<u32>(6295u, 13995u, global2.a)), !global1.a.b), Struct_2(global2.b.a), func_2(_wgslsmith_add_u32(~select(13854u, 0u, true), global2.a), vec3<i32>(_wgslsmith_mod_i32(global2.d.x, -1i), -1i, max(2147483647i, global1.a.a)) | (~vec3<i32>(53142i, arg_1.a, arg_1.a) >> (firstLeadingBit(vec3<u32>(16519u, 1u, 4294967295u)) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(510f, -1169f, 1000f)) + _wgslsmith_div_vec3_f32(vec3<f32>(654f, -230f, 1961f), vec3<f32>(-1919f, 1000f, 2661f))))), max(_wgslsmith_mult_i32(-15820i, ~9592i), 0i << (1u % 32u))), ~(-global2.d));
    var var_1 = all(!(!(!(!vec4<bool>(arg_1.b, global2.c.a.b, false, true)))));
    var_1 = arg_1.b;
    var var_2 = vec3<u32>(~_wgslsmith_div_u32(var_0.a, 0u), 100685u, var_0.a);
    let var_3 = var_0.c;
    return vec3<bool>(true, true, var_0.c.a.b);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = func_2(0u, global2.d.yzy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, -725f, arg_0)))))), u_input.b);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -422f), 248f, arg_0);
    var var_2 = func_3(_wgslsmith_div_vec2_u32(vec2<u32>(10031u, arg_2.a ^ ~arg_2.a), ~(vec2<u32>(arg_2.a, arg_2.a) & ~vec2<u32>(1u, 1u))), global2.c.a, select(vec2<bool>(var_0.a.b, false), arg_3, vec2<bool>(arg_3.x, global1.a.b)));
    return arg_2;
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: u32, arg_3: Struct_1) -> vec3<u32> {
    return ~firstTrailingBit(max(vec3<u32>(arg_1.a, 4294967295u, global2.a) ^ countOneBits(vec3<u32>(global2.a, global2.a, 22715u)), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(55445u, arg_0, arg_0), vec3<u32>(15001u, 4294967295u, 4294967295u)), vec3<u32>(4294967295u, 37215u, arg_1.a) >> (vec3<u32>(0u, 1u, arg_0) % vec3<u32>(32u)))));
}

fn func_5(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1) -> i32 {
    global1 = Struct_2(global2.b.a);
    var var_0 = select(global0[_wgslsmith_index_u32(countOneBits(29188u), 28u)], vec2<bool>(global1.a.b, true), true);
    let var_1 = global1.a.a;
    var var_2 = 0u;
    var_2 = arg_0.x;
    return min(3927i, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_5(func_4(50425u, func_1(1000f, select(2147483647i, u_input.b, false), Struct_3(global2.a, Struct_2(Struct_1(419i, global2.c.a.b)), global2.b, vec4<i32>(-29357i, u_input.b, -9898i, global2.d.x)), global0[_wgslsmith_index_u32(1u, 28u)]), global2.a, Struct_1(global1.a.a, false)), 1f, global1.a) << (func_4(_wgslsmith_mod_u32(min(4294967295u, ~1u), countOneBits(54294u)), func_1(_wgslsmith_f_op_f32(max(-1000f, -1063f)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-46649i, global2.c.a.a, global2.d.x, -11956i), vec4<i32>(-52284i, 45428i, global2.c.a.a, -2691i)), global2.d.x), func_1(_wgslsmith_f_op_f32(-100f * -585f), _wgslsmith_mod_i32(-3737i, 70044i), Struct_3(70021u, global2.c, global2.c, global2.d), select(global0[_wgslsmith_index_u32(global2.a, 28u)], vec2<bool>(global1.a.b, false), false)), select(vec2<bool>(true, true), !vec2<bool>(global2.c.a.b, true), vec2<bool>(true, true))), 1u, global1.a).x % 32u);
    var var_0 = 25158u;
    let var_1 = !vec4<bool>(any(global0[_wgslsmith_index_u32(9706u, 28u)]), !(!all(global0[_wgslsmith_index_u32(global2.a, 28u)])), func_2(global2.a, select(global2.d.zxw, -vec3<i32>(21534i, 7729i, -1i), vec3<bool>(global2.b.a.b, true, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-820f, 245f, 126f) - vec3<f32>(1180f, -1411f, 1622f))), 2147483647i).a.b, all(vec4<bool>(true, true, all(vec2<bool>(global1.a.b, false)), true)));
    global0 = array<vec2<bool>, 28>();
    var var_2 = func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-188f)), 1393f)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -1284f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-648f, -508f))))), ~2147483647i, Struct_3(~(~1u), func_2(_wgslsmith_dot_vec3_u32(~vec3<u32>(18222u, global2.a, global2.a), vec3<u32>(global2.a, 5759u, 1u)), global2.d.zxy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1184f, -1464f, 330f) * vec3<f32>(674f, -111f, 1259f))), _wgslsmith_sub_i32(-11398i, global2.d.x)), Struct_2(func_1(-336f, 2147483647i, Struct_3(global2.a, global2.b, global2.c, global2.d), var_1.xz).b.a), vec4<i32>(min(_wgslsmith_dot_vec2_i32(global2.d.xy, vec2<i32>(0i, 1i)), -15981i), _wgslsmith_mod_i32(global2.b.a.a, global1.a.a) & -2147483647i, _wgslsmith_sub_i32(global1.a.a, 2147483647i) >> ((global2.a & global2.a) % 32u), firstTrailingBit(~u_input.a))), !(!vec2<bool>(global1.a.b, false))).c.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~abs(vec2<u32>(global2.a, global2.a))), u_input.a, vec2<u32>(~_wgslsmith_mult_u32(38533u, 1u), global2.a), -177f, _wgslsmith_f_op_f32(2113f - _wgslsmith_f_op_f32(select(-296f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1731f, -887f)), true))));
}

