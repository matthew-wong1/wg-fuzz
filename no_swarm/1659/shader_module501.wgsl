struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(1424f, 322f, 662f), vec3<f32>(1022f, -1234f, -506f), vec3<f32>(712f, 563f, 1392f), vec3<f32>(579f, -444f, -285f), vec3<f32>(902f, 581f, -110f), vec3<f32>(1276f, 1000f, -1000f), vec3<f32>(-694f, -1000f, -447f), vec3<f32>(1067f, -1000f, -848f), vec3<f32>(-466f, -586f, 546f), vec3<f32>(596f, -410f, 712f), vec3<f32>(1581f, 626f, 908f), vec3<f32>(-1135f, 1588f, -1000f), vec3<f32>(-359f, -814f, 1567f), vec3<f32>(-987f, 507f, -476f), vec3<f32>(871f, -479f, -184f), vec3<f32>(-350f, -111f, 548f), vec3<f32>(568f, 524f, 916f), vec3<f32>(-416f, -1679f, -1313f), vec3<f32>(1474f, 390f, 392f), vec3<f32>(-1296f, -412f, -936f), vec3<f32>(1000f, 1502f, 425f), vec3<f32>(1420f, 1924f, -325f));

var<private> global2: array<i32, 15>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> vec3<i32> {
    var var_0 = global0.b.b;
    return vec3<i32>(-548i, -15094i, 7452i);
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = Struct_3(select(global0.a, !select(select(vec3<bool>(global0.a.x, false, global0.a.x), vec3<bool>(global0.a.x, false, global0.a.x), false), vec3<bool>(global0.a.x, global0.a.x, global0.a.x), true), !vec3<bool>(global0.a.x & global0.a.x, true, global0.a.x)), global0.b);
    global1 = array<vec3<f32>, 22>();
    let var_0 = arg_0.a;
    global0 = Struct_3(global0.a, Struct_2(global0.b.a, arg_0, vec3<u32>(firstTrailingBit(max(0u, 53175u)), min(1u, 14159u), _wgslsmith_div_u32(arg_0.b, _wgslsmith_clamp_u32(13443u, arg_0.b, u_input.b)))));
    global0 = Struct_3(global0.a, Struct_2(_wgslsmith_add_vec4_u32(~global0.b.a, ~_wgslsmith_mult_vec4_u32(global0.b.a, global0.b.a)), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, -2147483647i, arg_0.a), countOneBits(vec3<i32>(2147483647i, var_0, 2147483647i))), abs(~1u)), reverseBits(max(u_input.c.xxy, _wgslsmith_add_vec3_u32(global0.b.a.yyx, u_input.e.xzx)))));
    return global0.b.a.x;
}

fn func_1() -> Struct_3 {
    var var_0 = vec2<bool>(u_input.a < select(_wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(1u, 15u)], -4833i), vec2<i32>(global0.b.b.a, 0i)), -countOneBits(-1i), global0.a.x), !(!any(select(global0.a, global0.a, true))));
    var var_1 = _wgslsmith_dot_vec3_i32(firstTrailingBit(~reverseBits(func_2())), ~vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 29096i, 19869i), vec3<i32>(0i, global2[_wgslsmith_index_u32(global0.b.b.b, 15u)], global0.b.b.a)), global0.b.b.a, global2[_wgslsmith_index_u32(1u, 15u)]));
    let var_2 = global0.b;
    global2 = array<i32, 15>();
    var var_3 = Struct_1(abs(abs(~(~global2[_wgslsmith_index_u32(0u, 15u)]))), _wgslsmith_add_u32(u_input.c.x, func_3(global0.b.b)));
    return Struct_3(global0.a, global0.b);
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_3) -> StorageBuffer {
    let var_0 = Struct_3(global0.a, global0.b);
    var var_1 = Struct_1(-2147483647i, u_input.c.x);
    global2 = array<i32, 15>();
    let var_2 = vec3<f32>(1021f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))), arg_0, any(vec2<bool>(global0.a.x, false))))), _wgslsmith_f_op_f32(-arg_0));
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -392f, var_2.x, 1402f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -1102f, 260f, var_2.x))))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1075f, 525f))), var_2.x, !arg_1.x)), -984f, _wgslsmith_f_op_f32(f32(-1f) * -232f), arg_0)));
    return StorageBuffer(_wgslsmith_div_i32(~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(60903u >> (u_input.d.x % 32u), reverseBits(u_input.c.x)), 15u)], -52146i), ~vec3<i32>(func_1().b.b.a, 0i, ~max(13395i, -16822i)), ~1i, var_3, select(var_0.b.a.ywz, _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.b.a.x, 38455u, u_input.e.x) ^ select(vec3<u32>(arg_2.b.b.b, 1852u, 0u), vec3<u32>(var_0.b.c.x, 2061u, arg_2.b.c.x), var_0.a), _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(global0.b.c.x, 1u, u_input.c.x)), firstLeadingBit(arg_2.b.a.wyy))), !(!arg_2.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-462f - -605f) * 198f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-348f)), -1946f) + 1392f))), select(!(!(!global0.a.xy)), global0.a.yx, global0.a.yy), func_1());
}

