struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
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

var<private> global0: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(81038u, 0u, 35100u), vec3<u32>(4294967295u, 24542u, 32135u), vec3<u32>(29682u, 0u, 4294967295u), vec3<u32>(4406u, 4294967295u, 19735u), vec3<u32>(0u, 0u, 461u), vec3<u32>(4294967295u, 0u, 6178u), vec3<u32>(42971u, 0u, 49365u));

var<private> global1: vec2<f32>;

var<private> global2: vec4<bool>;

var<private> global3: u32 = 66879u;

var<private> global4: array<Struct_4, 1>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = vec2<u32>(0u ^ _wgslsmith_div_u32(4294967295u, _wgslsmith_sub_u32(u_input.e, _wgslsmith_mod_u32(0u, u_input.e))), 13302u);
    global3 = u_input.d;
    global2 = !(!select(select(select(vec4<bool>(arg_1.a.x, global2.x, false, false), vec4<bool>(true, global2.x, global2.x, arg_0.b.x), arg_1.a.x), vec4<bool>(arg_0.c.a.x, arg_0.c.a.x, false, true), true), select(select(vec4<bool>(false, arg_1.a.x, true, true), vec4<bool>(global2.x, true, global2.x, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(arg_1.a.x, true, arg_0.c.a.x, arg_1.a.x), vec4<bool>(arg_1.a.x, global2.x, true, arg_0.c.a.x), vec4<bool>(global2.x, true, false, arg_0.c.a.x)), all(global2.xx)), global2.x));
    let var_1 = !arg_1.a.x;
    var var_2 = Struct_4(Struct_3(Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.a), -516f)), arg_1.a.zz, arg_0.c)), arg_1.a.x, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(1i, 1i)) ^ _wgslsmith_sub_vec2_i32(u_input.b.xx, -u_input.b.xz), u_input.c), Struct_1(select(vec3<bool>(true, any(vec2<bool>(var_1, true)), !arg_0.c.a.x), !(!vec3<bool>(global2.x, false, global2.x)), global2.x)));
    return var_2.a.a.c.a;
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    global1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x)) - vec2<f32>(271f, -211f))));
    global2 = !vec4<bool>(global2.x, any(vec2<bool>(false && global2.x, true)), any(!select(global2.zzx, vec3<bool>(false, false, global2.x), vec3<bool>(global2.x, global2.x, true))), global2.x);
    let var_0 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global1.x)), -1552f)), global2.yw, Struct_1(!func_3(Struct_2(-1528f, global2.yz, Struct_1(vec3<bool>(true, global2.x, true))), Struct_1(vec3<bool>(global2.x, true, global2.x)))));
    global4 = array<Struct_4, 1>();
    var var_1 = true;
    return firstLeadingBit(u_input.e & u_input.e);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<bool>) -> Struct_3 {
    global0 = array<vec3<u32>, 7>();
    var var_0 = !(!vec4<bool>(!(u_input.e != u_input.d), ~u_input.c.x < -u_input.c.x, true, true));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(round(global1.x)), arg_3, arg_1));
    global3 = countOneBits(58912u);
    let var_2 = _wgslsmith_f_op_vec4_f32(arg_2 - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(1000f + -305f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1444f)))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(sign(global1.x)), -1255f, global1.x))));
    return Struct_3(Struct_2(var_2.x, vec2<bool>(all(!var_0.xyw), global2.x), Struct_1(vec3<bool>(arg_3.x, var_1.a.b.x, var_1.a.b.x))));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> i32 {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-118f, 559f))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.a, global1.x)))) + vec2<f32>(arg_0.a, -1118f)))));
    global3 = reverseBits(~u_input.e);
    let var_0 = func_4(_wgslsmith_clamp_u32(0u, u_input.d, ~func_2(u_input.b.ww)) & u_input.d, arg_0.c, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, _wgslsmith_div_f32(_wgslsmith_div_f32(global1.x, arg_0.a), -450f), _wgslsmith_div_f32(1599f, 2160f), _wgslsmith_f_op_f32(round(arg_0.a))))), vec2<bool>(!(!all(global2.xz)), true));
    var var_1 = -2147483647i;
    global4 = array<Struct_4, 1>();
    return ~(-2147483647i ^ select(max(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, u_input.a, 0i), vec4<i32>(u_input.b.x, 1783i, u_input.c.x, -39379i))), _wgslsmith_add_i32(u_input.b.x, u_input.a >> (arg_2 % 32u)), select(false, false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_4, 1>();
    global0 = array<vec3<u32>, 7>();
    let var_0 = select(_wgslsmith_add_vec2_i32(u_input.c, countOneBits(vec2<i32>(-46032i, ~u_input.b.x))), ~(vec2<i32>(u_input.a, 1i) << (abs(vec2<u32>(36126u, u_input.d)) % vec2<u32>(32u))) | -u_input.b.yw, !(u_input.b.x >= 1i));
    let var_1 = -_wgslsmith_add_vec3_i32(min(-vec3<i32>(u_input.b.x, var_0.x, 15256i), vec3<i32>(-var_0.x, func_1(Struct_2(-455f, global2.yy, Struct_1(global2.xyy)), 50962u, u_input.d), var_0.x)), select(_wgslsmith_div_vec3_i32(u_input.b.xxy, u_input.b.wxw) << (vec3<u32>(120775u, 1u, u_input.e) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(-8305i, 2141i, -12898i)), vec3<bool>(true, !global2.x, global1.x >= global1.x)));
    global0 = array<vec3<u32>, 7>();
    global1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(-511f)), _wgslsmith_f_op_f32(exp2(global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(vec4<u32>(u_input.d, 1u, 0u, 0u), vec4<u32>(u_input.e, 736u, 0u, 0u), true) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 0u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u) | vec4<u32>(u_input.d, u_input.e, u_input.e, u_input.e), ~vec4<u32>(4294967295u, 1u, 60058u, u_input.e)) % vec4<u32>(32u))));
}

