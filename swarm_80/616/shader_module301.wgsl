struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<f32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(35932u, 4294967295u, 36985u, 16496u), vec4<u32>(1u, 0u, 0u, 22610u), vec4<u32>(63486u, 26841u, 39797u, 4294967295u), vec4<u32>(4294967295u, 0u, 1u, 0u), vec4<u32>(4294967295u, 0u, 0u, 1u), vec4<u32>(0u, 57758u, 13942u, 1u), vec4<u32>(55746u, 1u, 1u, 78569u), vec4<u32>(23524u, 75920u, 0u, 1u));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: vec2<i32>) -> vec3<bool> {
    var var_0 = global0.c.a <= 1u;
    global1 = array<vec4<u32>, 8>();
    let var_1 = max(~_wgslsmith_div_i32(i32(-1i) * -12669i, u_input.a) >> (max(arg_1.c.a, global0.c.a) % 32u), ~(countOneBits(_wgslsmith_div_i32(5821i, arg_2.x)) | 2147483647i));
    let var_2 = max(~arg_0.x, arg_1.b.e.a);
    let var_3 = !select(!(!(!vec3<bool>(arg_1.b.d, global0.d, global0.d))), select(!vec3<bool>(true, global0.d, false), !(!vec3<bool>(true, global0.d, global0.d)), !(!vec3<bool>(false, arg_1.b.d, true))), any(!vec4<bool>(false, true, global0.d, global0.d)) & select(!global0.d, true, false != global0.d));
    return vec3<bool>(all(vec3<bool>((var_2 & arg_1.c.a) >= global0.e.a, any(select(var_3.yy, vec2<bool>(var_3.x, var_3.x), var_3.xy)), select(any(var_3.xy), !global0.d, true))), var_3.x, global0.d);
}

fn func_2() -> Struct_5 {
    let var_0 = global0.d;
    global1 = array<vec4<u32>, 8>();
    var var_1 = !select(select(select(vec3<bool>(global0.d, false, global0.d), select(vec3<bool>(global0.d, true, global0.d), vec3<bool>(false, global0.d, false), vec3<bool>(global0.d, true, false)), vec3<bool>(global0.d, true, true)), func_3(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 55764u, global0.c.a, 0u), global1[_wgslsmith_index_u32(global0.c.a, 8u)]), Struct_4(u_input.a, Struct_2(1654f, -1053f, Struct_1(82270u, vec4<i32>(global0.c.b.x, 1i, -2147483647i, u_input.a), global0.b, global0.c.d), global0.d, global0.e), global0.e, Struct_1(1u, vec4<i32>(36646i, -39111i, 40451i, -38262i), -506f, vec3<f32>(-1000f, global0.a, 1000f))), reverseBits(vec2<i32>(u_input.a, u_input.a))), global0.d), !select(vec3<bool>(global0.d, false, true), select(vec3<bool>(false, false, global0.d), vec3<bool>(global0.d, global0.d, global0.d), vec3<bool>(false, global0.d, global0.d)), true), false);
    var_1 = func_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, ~firstLeadingBit(u_input.b.x), max(~4294967295u, ~global0.e.a), global0.e.a), ~global1[_wgslsmith_index_u32(u_input.c, 8u)], _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 0u, 16206u, u_input.b.x), vec4<u32>(global0.e.a, 24109u, 1u, global0.c.a)) >> (global1[_wgslsmith_index_u32(~59506u, 8u)] % vec4<u32>(32u)), countOneBits(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.e.a, 24873u), vec2<u32>(u_input.c, 45185u)), 8u)]))), Struct_4(_wgslsmith_add_i32(_wgslsmith_sub_i32(~2378i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, global0.c.b.x), vec2<i32>(-2147483647i, u_input.a))), global0.c.b.x), Struct_2(-496f, _wgslsmith_div_f32(global0.c.d.x, _wgslsmith_f_op_f32(global0.b * 1101f)), global0.c, all(select(var_1.zz, var_1.xx, var_1.xz)), global0.c), Struct_1(1u, min(global0.e.b, vec4<i32>(1i, 1i, 19146i, -36197i)), -1000f, global0.c.d), Struct_1(min(26669u, u_input.c & 0u), vec4<i32>(-1i) * -vec4<i32>(-12796i, u_input.a, global0.c.b.x, global0.c.b.x), 1261f, global0.c.d)), _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(-1i, global0.c.b.x) ^ global0.e.b.xz), min(~global0.c.b.yx, -vec2<i32>(u_input.a, global0.e.b.x))) ^ global0.c.b.zz);
    global0 = Struct_2(-1719f, global0.e.d.x, global0.c, var_1.x, global0.e);
    return Struct_5(abs(~(~vec2<u32>(1u, u_input.b.x))) << (~u_input.b.yy % vec2<u32>(32u)), Struct_1(global0.c.a, select(vec4<i32>(-2147483647i, 19856i, 1i, -2147483647i), global0.c.b, true), _wgslsmith_f_op_f32(146f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(321f)))), vec3<f32>(-125f, -1000f, _wgslsmith_f_op_f32(step(2251f, 144f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -554f, 303f, -739f))))), global0.e.a, Struct_1(~global0.c.a, global0.c.b, global0.b, vec3<f32>(_wgslsmith_f_op_f32(-1248f - 785f), _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-global0.e.d.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.b + global0.a))))));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: Struct_5) -> f32 {
    global1 = array<vec4<u32>, 8>();
    let var_0 = arg_2.e.b.zy;
    let var_1 = arg_2.c.x;
    let var_2 = func_2().e;
    global1 = array<vec4<u32>, 8>();
    return -1880f;
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.a)), -1272f);
    global1 = array<vec4<u32>, 8>();
    global1 = array<vec4<u32>, 8>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(), ~u_input.b, func_2())));
    let var_1 = arg_2.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.e.a << (0u % 32u);
    var var_1 = Struct_3(0i, ~(~(~vec3<u32>(u_input.c, 1u, 79555u))), min(~2147483647i, 2750i));
    var var_2 = global0.a;
    global1 = array<vec4<u32>, 8>();
    var var_3 = -var_1.c;
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))), global0.a, global0.e, func_1(-633f, -(global0.c.b.xzy ^ abs(vec3<i32>(global0.c.b.x, u_input.a, global0.c.b.x))), reverseBits(_wgslsmith_mult_vec2_u32(u_input.b.xx, u_input.b.xx) & vec2<u32>(var_0, 59589u)), !(!(!vec2<bool>(global0.d, true)))), func_2().e);
    var var_4 = func_2().e;
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.d, func_2().b.b.xx, _wgslsmith_f_op_vec3_f32(-global0.c.d), _wgslsmith_add_i32(reverseBits(_wgslsmith_mod_i32(-1i, u_input.a) ^ -39348i), -2147483647i), u_input.b);
}

