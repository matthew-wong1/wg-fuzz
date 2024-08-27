struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(32934i, i32(-2147483648), 1i), vec3<i32>(3288i, i32(-2147483648), 1i));

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, true);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>, arg_3: vec2<f32>) -> vec3<i32> {
    let var_0 = abs(~(vec3<i32>(arg_0.b.x, _wgslsmith_add_i32(arg_1, 2050i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -37030i, arg_0.a.x, 1448i), vec4<i32>(arg_1, 0i, arg_0.a.x, 0i))) << (_wgslsmith_div_vec3_u32(u_input.d.xxx >> (u_input.d.yxw % vec3<u32>(32u)), abs(vec3<u32>(1u, 4024u, 11620u))) % vec3<u32>(32u))));
    global0 = arg_0;
    let var_1 = u_input.d.zy;
    global1 = vec4<bool>(false & any(global1.zz), global1.x, all(!global1.yx), any(select(select(vec4<bool>(true, true, true, true), !vec4<bool>(false, false, global1.x, global1.x), all(vec3<bool>(global1.x, true, false))), select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), select(vec4<bool>(false, true, global1.x, false), vec4<bool>(false, global1.x, false, global1.x), true), select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(true, false, global1.x, true), global1.x)), global1.x || !global1.x)));
    var var_2 = Struct_1(var_0, vec3<i32>(~_wgslsmith_mod_i32(-33165i, _wgslsmith_clamp_i32(global0.a.x, var_0.x, 24058i)), 27122i, reverseBits(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_0.x, arg_1, -6932i, global0.b.x)), min(vec4<i32>(global0.b.x, -1i, global0.b.x, global0.b.x), vec4<i32>(52005i, 10731i, -35543i, arg_0.a.x))))));
    return vec3<i32>(_wgslsmith_dot_vec2_i32(select(reverseBits(_wgslsmith_div_vec2_i32(var_2.a.xx, arg_0.b.zx)), _wgslsmith_add_vec2_i32(global0.b.zz, vec2<i32>(arg_0.b.x, arg_1)) << (u_input.c % vec2<u32>(32u)), true && all(vec3<bool>(true, false, true))), vec2<i32>(var_0.x << (20478u % 32u), select(-1i, var_2.a.x, global1.x))), 1i >> (~(_wgslsmith_mod_u32(u_input.d.x, 0u) >> (abs(u_input.b.x) % 32u)) % 32u), 1i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec3<i32> {
    let var_0 = global1.yy;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(785f, _wgslsmith_f_op_f32(floor(897f))));
    global0 = Struct_1(vec3<i32>(arg_1.a.x, arg_1.b.x, func_3(arg_1, global0.b.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, var_1.x, -780f, 1013f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -1604f, 576f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1304f, var_1.x))))).x), vec3<i32>(1i, -min(0i | global0.b.x, arg_0.a.x >> (61511u % 32u)), ~(~abs(arg_0.a.x))));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(sign(var_1.x))));
    global1 = !(!select(select(select(vec4<bool>(var_0.x, global1.x, var_0.x, global1.x), vec4<bool>(var_0.x, true, false, false), global1.x), vec4<bool>(global1.x, true, true, true), !vec4<bool>(var_0.x, global1.x, false, false)), !select(vec4<bool>(false, var_0.x, false, global1.x), vec4<bool>(true, true, true, global1.x), vec4<bool>(true, true, var_0.x, global1.x)), select(select(vec4<bool>(true, false, var_0.x, global1.x), vec4<bool>(true, true, true, false), vec4<bool>(var_0.x, global1.x, global1.x, var_0.x)), !vec4<bool>(true, false, global1.x, false), all(vec4<bool>(var_0.x, global1.x, false, false)))));
    return -_wgslsmith_div_vec3_i32(~vec3<i32>(max(arg_0.a.x, 61975i), select(arg_0.b.x, arg_0.a.x, true), 1i), arg_0.b);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<u32>) -> Struct_1 {
    global0 = Struct_1(vec3<i32>(arg_0.x, ~global0.b.x, 2147483647i) >> (abs(~vec3<u32>(arg_1.x, u_input.b.x, 0u) | vec3<u32>(arg_1.x, 4294967295u, u_input.b.x)) % vec3<u32>(32u)), func_4(Struct_1(arg_0, func_3(Struct_1(vec3<i32>(arg_0.x, 27486i, arg_0.x), global0.b), global0.b.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1927f, -2050f, -435f, -1712f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-441f, -291f)))), Struct_1(abs(~vec3<i32>(10517i, -2147483647i, global0.a.x)), arg_0), arg_1.x));
    global0 = Struct_1(arg_0, global0.a);
    global0 = Struct_1(min(global0.b, -(~(-arg_0))), ((vec3<i32>(global0.b.x, arg_0.x, 38873i) << (_wgslsmith_mod_vec3_u32(u_input.d.yww, arg_1) % vec3<u32>(32u))) & vec3<i32>(arg_0.x, func_4(Struct_1(vec3<i32>(global0.a.x, arg_0.x, arg_0.x), vec3<i32>(1i, global0.a.x, arg_0.x)), Struct_1(vec3<i32>(global0.a.x, global0.b.x, arg_0.x), vec3<i32>(2147483647i, 15358i, global0.b.x)), 73640u).x, _wgslsmith_mult_i32(global0.a.x, arg_0.x))) >> (u_input.d.wzz % vec3<u32>(32u)));
    global0 = Struct_1(vec3<i32>(-24790i, global0.b.x, reverseBits(arg_0.x)), _wgslsmith_mult_vec3_i32(func_4(Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, -65977i, 1i), global0.b), func_4(Struct_1(arg_0, arg_0), Struct_1(vec3<i32>(arg_0.x, global0.a.x, global0.a.x), arg_0), u_input.c.x)), Struct_1(-vec3<i32>(1i, 33430i, global0.a.x), -vec3<i32>(global0.a.x, 1i, arg_0.x)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 62514u, arg_1.x, u_input.d.x), u_input.d), ~u_input.d.x)), vec3<i32>(-43267i, -79197i, arg_0.x) ^ global0.a));
    let var_0 = 1051f;
    return Struct_1(-vec3<i32>(-5880i, 0i, func_3(Struct_1(global0.b, arg_0), firstLeadingBit(-2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-289f, var_0, var_0, var_0)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0, -522f)))).x), -max(arg_0, -global0.a) | vec3<i32>(1i, _wgslsmith_div_i32(_wgslsmith_mod_i32(arg_0.x, 0i), 2147483647i), ~31406i));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec4<i32>, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = func_2(~(abs(arg_2.yxy) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_0, u_input.d.x, arg_0), u_input.d.zxw) % vec3<u32>(32u))), u_input.d.zwx ^ ~(arg_3 | ~arg_3));
    var_0 = func_2(func_2(-global0.a, arg_3).a, u_input.d.yzz);
    return Struct_1(arg_2.zxx, global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(-vec3<i32>(global0.a.x, max(~(-1i), global0.b.x << (u_input.a % 32u)), -_wgslsmith_add_i32(global0.a.x, global0.a.x)), vec3<i32>(~10969i, 0i, global0.a.x));
    let var_0 = vec4<bool>(true, global1.x, select(true, true, _wgslsmith_add_i32(_wgslsmith_mod_i32(0i, -1i), global0.a.x) <= -global0.a.x), all(vec2<bool>(any(!vec4<bool>(false, global1.x, false, true)), select(false, global1.x, true) && all(vec4<bool>(global1.x, true, global1.x, true)))));
    global1 = !select(!select(var_0, var_0, true), var_0, !select(vec4<bool>(global1.x, var_0.x, true, global1.x), select(var_0, var_0, var_0.x), !var_0));
    var var_1 = func_1(u_input.d.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1803f, 681f, true)), _wgslsmith_f_op_f32(min(423f, 1424f)))), ~((vec4<i32>(-1i) * -vec4<i32>(global0.b.x, 0i, global0.a.x, global0.b.x)) | -firstLeadingBit(vec4<i32>(global0.b.x, global0.b.x, global0.a.x, 2147483647i))), abs(_wgslsmith_div_vec3_u32(u_input.d.wwy, _wgslsmith_div_vec3_u32(abs(vec3<u32>(u_input.c.x, 1u, u_input.a)), vec3<u32>(31357u, u_input.c.x, u_input.b.x)))));
    global1 = var_0;
    let var_2 = reverseBits(u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<i32>(-var_1.a.x, global0.a.x ^ global0.b.x, var_1.b.x, var_1.b.x) | vec4<i32>(_wgslsmith_sub_i32(var_1.a.x, 61533i), select(global0.a.x, 0i, var_0.x), ~var_1.b.x, ~1i)), _wgslsmith_clamp_i32(var_1.a.x, _wgslsmith_add_i32(55561i, reverseBits(var_1.b.x)) ^ 1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_1.a.x, var_1.a.x, global0.b.x), ~global0.a), 24764i)), var_2, 448f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(830f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1566f), -303f, _wgslsmith_f_op_f32(min(1180f, 1256f))) - vec4<f32>(-1569f, _wgslsmith_div_f32(-1598f, -595f), -366f, 1f))));
}

