struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(false), vec2<u32>(10000u, 1u), vec3<i32>(0i, 3848i, -64366i), Struct_1(true));

var<private> global1: Struct_1 = Struct_1(false);

var<private> global2: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(true), vec2<u32>(2657u, 8569u), vec3<i32>(0i, 2147483647i, 2963i), Struct_1(true)), Struct_2(Struct_1(true), vec2<u32>(1u, 4294967295u), vec3<i32>(7673i, 32895i, 7074i), Struct_1(true)), Struct_2(Struct_1(true), vec2<u32>(1u, 4294967295u), vec3<i32>(43302i, -1i, -19766i), Struct_1(false)), Struct_2(Struct_1(true), vec2<u32>(0u, 39865u), vec3<i32>(-1i, 0i, 27512i), Struct_1(false)), Struct_2(Struct_1(true), vec2<u32>(49292u, 40930u), vec3<i32>(3457i, -29536i, 1i), Struct_1(true)), Struct_2(Struct_1(true), vec2<u32>(1u, 56962u), vec3<i32>(-1i, 2147483647i, -1i), Struct_1(true)), Struct_2(Struct_1(true), vec2<u32>(4120u, 36522u), vec3<i32>(13339i, 0i, -8857i), Struct_1(true)), Struct_2(Struct_1(true), vec2<u32>(0u, 4294967295u), vec3<i32>(-1i, -15112i, 1i), Struct_1(true)));

var<private> global3: array<bool, 26> = array<bool, 26>(true, true, false, true, true, true, false, true, false, true, false, false, true, false, true, false, true, false, true, true, false, true, false, true, false, true);

var<private> global4: vec4<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1359f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -334f) + -1417f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-559f)))) + -132f);
    var var_1 = select(~global0.b.x, 12736u, false) < ~(~global4.x);
    var var_2 = Struct_2(Struct_1(global0.d.a), ~(~vec2<u32>(26823u, global4.x)) << (~(~(~vec2<u32>(arg_0, 35728u))) % vec2<u32>(32u)), u_input.a, Struct_1(!all(vec2<bool>(false, true))));
    var var_3 = min(firstLeadingBit(vec4<i32>(min(global0.c.x, global0.c.x) >> (abs(11585u) % 32u), var_2.c.x, abs(abs(-12254i)), global0.c.x)), ~(-vec4<i32>(~(-5732i), ~global0.c.x, global0.c.x, -global0.c.x)));
    let var_4 = max(-22149i, -37061i);
    return ~0u;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: vec4<bool>) -> bool {
    var var_0 = arg_0.xz;
    global3 = array<bool, 26>();
    var_0 = arg_0.wz;
    global4 = vec4<u32>(min(22493u, func_3(13416u, 16066u)), 0u, global0.b.x, reverseBits(_wgslsmith_sub_u32(global4.x, 1u)) | ((global4.x & global4.x) ^ ~global0.b.x)) ^ abs(select((vec4<u32>(6838u, 0u, 1u, global4.x) ^ vec4<u32>(4294967295u, 1u, 24741u, 41364u)) | ~vec4<u32>(23900u, 87093u, global4.x, 4294967295u), vec4<u32>(firstTrailingBit(global0.b.x), reverseBits(global0.b.x), 4403u, global4.x), vec4<bool>(all(arg_2.yzw), arg_2.x, true, true)));
    global1 = global0.a;
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: vec3<bool>) -> vec4<i32> {
    global1 = Struct_1(!(!(!func_2(arg_2, global0.c.x, vec4<bool>(false, false, global1.a, true)))));
    global0 = global2[_wgslsmith_index_u32(global4.x, 8u)];
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_2.x)), 1000f);
    global3 = array<bool, 26>();
    let var_1 = -(7163i | abs(u_input.a.x));
    return ~(-min(vec4<i32>(61061i, u_input.a.x, var_1, var_1), vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x)) & ~(-vec4<i32>(2147483647i, -24083i, -24231i, u_input.a.x) & (vec4<i32>(-47176i, 20747i, 9108i, global0.c.x) ^ vec4<i32>(0i, global0.c.x, u_input.a.x, 43080i))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 8>();
    global3 = array<bool, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(select(vec4<i32>(-46639i, u_input.a.x, 16698i, -24821i), -vec4<i32>(u_input.a.x, u_input.a.x, global0.c.x, global0.c.x), select(vec4<bool>(true, global3[_wgslsmith_index_u32(6845u, 26u)], true, false), vec4<bool>(global3[_wgslsmith_index_u32(0u, 26u)], global0.a.a, false, true), global1.a)) & select(vec4<i32>(9421i, -25294i, u_input.a.x, global0.c.x) ^ vec4<i32>(1004i, global0.c.x, 1i, u_input.a.x), -vec4<i32>(-7561i, u_input.a.x, 14035i, -48930i), 746u > global4.x), _wgslsmith_clamp_vec4_i32(~(~vec4<i32>(0i, u_input.a.x, 22210i, u_input.a.x)), vec4<i32>(u_input.a.x, -2893i, 20050i, 83908i) & (vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -3746i) | vec4<i32>(16307i, u_input.a.x, -19101i, 2147483647i)), func_1(global0.a, vec2<u32>(36266u, global4.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-971f, -448f, -2234f, 1432f), vec4<f32>(1542f, 853f, 1444f, 1224f), vec4<bool>(global1.a, false, true, false))), vec3<bool>(true, true, false)))), _wgslsmith_dot_vec2_i32(-(~countOneBits(u_input.a.xz)), reverseBits(_wgslsmith_mult_vec2_i32(u_input.a.yx, u_input.a.yz | vec2<i32>(global0.c.x, -29772i)))), 40493i);
}

