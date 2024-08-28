struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: Struct_3,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(712f, -432f), 2147483647i, vec2<i32>(44903i, 1331i), vec4<i32>(57i, 1i, 0i, -26252i));

var<private> global1: Struct_4 = Struct_4(vec3<u32>(0u, 0u, 1u), false, Struct_3(vec2<u32>(0u, 1u), Struct_1(vec2<f32>(-188f, 1612f), -17633i, vec2<i32>(-6243i, 1i), vec4<i32>(-1i, i32(-2147483648), 25323i, -70099i)), 0u, vec3<u32>(5260u, 1u, 1u), Struct_1(vec2<f32>(-257f, 660f), 2147483647i, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<i32>(-21593i, i32(-2147483648), 2147483647i, i32(-2147483648)))), vec4<f32>(1280f, -393f, -244f, -939f), vec3<bool>(true, true, false));

var<private> global2: Struct_3;

var<private> global3: vec4<bool>;

var<private> global4: array<i32, 13>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<bool>) -> vec4<u32> {
    var var_0 = !global3.xxz;
    let var_1 = global2.b;
    let var_2 = _wgslsmith_mod_vec2_u32(~(~global1.a.yx), vec2<u32>(~global1.c.a.x, global2.d.x));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.d - _wgslsmith_div_vec4_f32(vec4<f32>(735f, global0.a.x, -1000f, -921f), global1.d)), vec4<f32>(402f, _wgslsmith_f_op_f32(select(var_1.a.x, 238f, true)), var_1.a.x, -1079f))), global1.d);
    let var_4 = all(!select(!select(global1.e.xy, vec2<bool>(false, var_0.x), arg_0.yx), global1.e.yz, false));
    return _wgslsmith_div_vec4_u32(u_input.a, u_input.a & ~(~abs(u_input.a)));
}

fn func_2() -> Struct_4 {
    var var_0 = ~select(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 0u, 89253u, u_input.a.x), firstLeadingBit(func_3(vec3<bool>(global3.x, true, true)))), select(vec4<u32>(~u_input.a.x, 24219u, 42771u, 32802u), vec4<u32>(5268u, global2.d.x, global1.a.x ^ 1u, _wgslsmith_mod_u32(0u, global1.a.x)), !vec4<bool>(false, true, global1.b, false)), !select(!vec4<bool>(global1.b, true, false, global1.b), !vec4<bool>(false, true, global1.b, global1.e.x), global3.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-316f)), global0.a.x, global0.a.x)));
    let var_2 = vec4<u32>(18660u, 4294967295u, ~(~u_input.a.x), u_input.a.x);
    var var_3 = select(any(global3.xyw), !global1.e.x, all(select(vec3<bool>(true, true, !global3.x), global3.xxx, true)));
    var var_4 = firstTrailingBit(-4728i ^ _wgslsmith_div_i32(~_wgslsmith_clamp_i32(-7432i, global2.b.b, 0i), -5299i));
    return Struct_4(var_0.www, all(!(!(!vec4<bool>(global1.e.x, true, true, true)))), global1.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global1.d))), _wgslsmith_f_op_vec4_f32(global1.d - vec4<f32>(_wgslsmith_f_op_f32(-global2.e.a.x), -734f, -103f, _wgslsmith_f_op_f32(565f - global1.c.b.a.x))), select(!all(vec2<bool>(true, global1.e.x)), global1.b, !(-2147483647i == u_input.b)))), !select(global3.xzx, vec3<bool>(!global3.x, global1.e.x & global3.x, global1.e.x), select(!vec3<bool>(global1.e.x, false, global3.x), global3.xwx, select(vec3<bool>(global1.e.x, global3.x, global3.x), global1.e, global3.x))));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: u32) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = u_input.b;
    var_1 = global0.d.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(abs(var_0.c.e.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -211f)))));
    let var_3 = func_2().c.b;
    return Struct_1(global1.c.e.a, -27441i, -min(vec2<i32>(-1i) * -vec2<i32>(var_3.b, global0.b), var_3.c), vec4<i32>(i32(-1i) * -2147483647i, var_3.b, 0i, 1i));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>) -> Struct_4 {
    var var_0 = global3.wzx;
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.e.a) * func_1(1113f, vec3<f32>(global1.c.e.a.x, arg_0.e.a.x, arg_0.b.a.x), global3.yxy, 2815u).a), global0.a)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(554f, global0.a.x)), vec2<f32>(1f, _wgslsmith_f_op_f32(-global1.c.b.a.x)), !var_0.xx))), arg_1.x, vec2<i32>(_wgslsmith_mod_i32(2147483647i, u_input.b) >> (47495u % 32u), (2147483647i & arg_1.x) << (_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) % 32u)) ^ -vec2<i32>(1i, -2147483647i), arg_0.b.d);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global1.c.a.x;
    global1 = func_4(Struct_3(global1.c.a >> (vec2<u32>(~global2.a.x, ~4294967295u) % vec2<u32>(32u)), func_1(global1.d.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(192f, global1.c.e.a.x, -1607f)) - _wgslsmith_div_vec3_f32(vec3<f32>(global1.d.x, global0.a.x, 283f), global1.d.www)), !(!global1.e), ~4294967295u), _wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(global2.d.x, 1u) ^ vec2<u32>(24400u, u_input.a.x)) ^ ~countOneBits(61643u), vec3<u32>(abs(_wgslsmith_mult_u32(1u, 25049u)), ~_wgslsmith_div_u32(global1.c.a.x, global1.c.a.x), 4294967295u), global1.c.e), ~(abs(vec2<i32>(global2.b.b, global4[_wgslsmith_index_u32(0u, 13u)])) >> (u_input.a.xz % vec2<u32>(32u))) << (max(vec2<u32>(~31543u, u_input.a.x), ~global2.d.zy) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global2.b.a, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1376f, _wgslsmith_f_op_f32(global2.e.a.x + global1.d.x)))), global3.yx)));
    let var_2 = 27830i;
    var var_3 = Struct_4(vec3<u32>(~abs(1u), abs(4294967295u), _wgslsmith_sub_u32(~u_input.a.x, 64671u)), global3.x, global1.c, vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-764f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-142f, var_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), -598f), !vec3<bool>(func_4(global1.c, vec2<i32>(global4[_wgslsmith_index_u32(14177u, 13u)], 23162i)).c.b.d.x == -global1.c.b.d.x, false, true));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(vec4<u32>(global2.a.x, 1u, 29372u, var_3.c.d.x) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(68492u, global1.c.d.x, global1.a.x, u_input.a.x), vec4<u32>(global2.d.x, 19921u, 14200u, var_3.a.x)), select(u_input.a, u_input.a, u_input.a.x == 4294967295u)), -20234i, var_3.a.x, u_input.a.x);
}

