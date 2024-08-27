struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<u32> = vec4<u32>(5647u, 62242u, 4294967295u, 4294967295u);

var<private> global2: vec4<bool>;

var<private> global3: Struct_2;

var<private> global4: array<vec2<f32>, 18>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    var var_0 = (((_wgslsmith_mult_i32(u_input.b.x, u_input.b.x) | 0i) & u_input.b.x) ^ 1i) & countOneBits(countOneBits(min(arg_1.d, -2147483647i)));
    var var_1 = vec2<u32>(u_input.a | (global1.x << (max(global1.x, ~u_input.a) % 32u)), 1u);
    var var_2 = global4[_wgslsmith_index_u32(0u, 18u)];
    global0 = global1.x;
    var var_3 = ~min(_wgslsmith_add_vec2_u32(global1.zz, vec2<u32>(_wgslsmith_add_u32(76787u, 1u), ~var_1.x)), firstTrailingBit(abs(global1.wy)));
    return true;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> u32 {
    return reverseBits(global1.x);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: vec2<f32>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(782f, _wgslsmith_f_op_f32(-1205f + 426f), 944f, arg_1.a) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -520f, 370f, arg_2) * vec4<f32>(arg_1.a, -733f, -585f, arg_2))))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.x))))) - 1f), arg_1.a);
    var var_2 = abs(global1.wz);
    let var_3 = Struct_2(any(!select(!vec4<bool>(false, false, global2.x, false), select(vec4<bool>(false, arg_1.e, global3.a, global2.x), vec4<bool>(true, arg_0, false, true), true), global3.a)));
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, var_1.x))), var_1, arg_0)))))));
}

fn func_2() -> vec4<bool> {
    var var_0 = -1931f;
    var var_1 = _wgslsmith_f_op_vec2_f32(func_5(global2.x, Struct_1(135f, func_4(_wgslsmith_mult_vec3_i32(select(u_input.c.yyy, vec3<i32>(8058i, -1i, u_input.b.x), false), ~vec3<i32>(70525i, -1i, u_input.b.x)), Struct_2(func_3(Struct_2(global2.x), Struct_1(-1685f, global1.x, u_input.a, -44574i, global2.x))), u_input.b.x, global2.x), ~34888u, _wgslsmith_mod_i32(1i, u_input.b.x), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -824f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1142f))))))), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global1.zw, global1.zx), global1.yw << ((vec2<u32>(1029u, 4294967295u) ^ select(global1.zy, vec2<u32>(4294967295u, u_input.d), global2.yx)) % vec2<u32>(32u))), 18u)]));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-318f, _wgslsmith_f_op_f32(select(950f, var_1.x, global3.a))))));
    global1 = vec4<u32>(4294967295u, global1.x, 0u, _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(global1.x, global1.x, global1.x, u_input.a) & vec4<u32>(global1.x, global1.x, 30828u, global1.x), vec4<u32>(1u, 1u, 1u, u_input.a)), _wgslsmith_div_vec4_u32(select(vec4<u32>(21803u, 81436u, 0u, 8135u) & vec4<u32>(u_input.d, u_input.d, 12119u, 1u), vec4<u32>(27225u, 111351u, global1.x, 4294967295u), vec4<bool>(true, global2.x, true, false)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, global1.x, global1.x), vec4<u32>(global1.x, 1u, global1.x, 29154u), vec4<u32>(4294967295u, global1.x, 46833u, global1.x)))));
    global1 = min(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 26710u, global1.x, global1.x) & vec4<u32>(global1.x, 46008u, 1u, 48369u), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 29791u))), vec4<u32>(reverseBits(reverseBits(1u)), 17233u, global1.x, global1.x)) >> (_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(_wgslsmith_dot_vec2_u32(global1.wz, vec2<u32>(u_input.d, 4294967295u)), _wgslsmith_mult_u32(1u, u_input.a), ~u_input.d, 1u)), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(10783u, 14271u, u_input.a, 1328u)), _wgslsmith_mult_vec4_u32(vec4<u32>(18438u, u_input.d, global1.x, global1.x), vec4<u32>(5713u, u_input.d, global1.x, global1.x))) & (vec4<u32>(86303u, 10119u, u_input.a, 19737u) ^ ~vec4<u32>(35900u, 4294967295u, 0u, 1u))) % vec4<u32>(32u));
    return vec4<bool>(any(vec2<bool>(true, global2.x)), !(!func_3(Struct_2(global2.x), Struct_1(-374f, 4294967295u, global1.x, u_input.b.x, global2.x))), select(false, true, global3.a), true);
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> u32 {
    global2 = func_2();
    global3 = Struct_2(!any(vec4<bool>(global3.a, arg_3.a, true, false)));
    let var_0 = arg_3;
    global1 = abs(~((vec4<u32>(15614u, 4294967295u, 0u, global1.x) | vec4<u32>(global1.x, u_input.a, u_input.d, arg_2)) >> (vec4<u32>(u_input.d, 35686u, global1.x, u_input.a) % vec4<u32>(32u))) << ((vec4<u32>(select(arg_2, global1.x, var_0.a), _wgslsmith_mod_u32(4294967295u, 1u), 18534u, arg_2) | abs(~vec4<u32>(global1.x, 0u, 65806u, 0u))) % vec4<u32>(32u)));
    var var_1 = select(select(func_2(), !vec4<bool>(!global2.x, arg_1 && false, true, var_0.a || true), global3.a), vec4<bool>(false, false, true, ((global1.x == u_input.d) == !arg_3.a) & arg_1), !(!any(vec4<bool>(false, true, global2.x, var_0.a))));
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(~select(vec4<u32>(8221u, 17608u, _wgslsmith_mod_u32(47267u, u_input.a), 13186u), vec4<u32>(_wgslsmith_dot_vec3_u32(global1.xzz, global1.xyx), func_1(1000f, global3.a, 14012u, Struct_2(global3.a)), 4294967295u << (global1.x % 32u), ~1u), select(true, true & global3.a, true)));
    global2 = vec4<bool>(all(global2.xxx), true != all(select(!vec4<bool>(global2.x, global3.a, global2.x, true), vec4<bool>(global2.x, false, false, global3.a), all(vec4<bool>(global3.a, false, false, false)))), global3.a, global3.a);
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -747f))))), ~u_input.a, 1u, abs(-2147483647i), false);
    var var_1 = Struct_2(true);
    global2 = select(!vec4<bool>(true, global2.x, global3.a, !any(vec2<bool>(global2.x, true))), select(!vec4<bool>(false, false, true, true || global2.x), !vec4<bool>(var_1.a || var_0.e, all(global2.wxw), global3.a, true), all(global2.zww) | false), global2.x);
    let var_2 = Struct_2(!(!any(!vec2<bool>(global3.a, false))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1512f)) - var_0.a);
    global2 = vec4<bool>(!var_1.a, all(!(!select(vec4<bool>(var_0.e, var_1.a, true, false), vec4<bool>(global2.x, global3.a, var_0.e, true), global2.x))), any(vec4<bool>(-2147483647i == (u_input.b.x | 44093i), any(!vec2<bool>(var_2.a, false)), true, !(var_0.a <= var_0.a))), !any(global2.zyz) | true);
    var_3 = _wgslsmith_div_f32(-1031f, var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~func_4(vec3<i32>(var_0.d, u_input.b.x, var_0.d), Struct_2(false), var_0.d, true), max(~70829u, u_input.d), func_1(var_0.a, var_2.a, ~max(40957u, 4294967295u), Struct_2(true))), u_input.c);
}

