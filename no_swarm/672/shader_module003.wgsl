struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(161f, vec3<u32>(1u, 4294967295u, 43724u), 2147483647i, true);

var<private> global1: array<f32, 8> = array<f32, 8>(528f, -1183f, -335f, 1261f, -518f, 1443f, -547f, -874f);

var<private> global2: array<f32, 16>;

var<private> global3: vec3<bool>;

var<private> global4: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: bool, arg_1: u32) -> vec2<bool> {
    global0 = global4.b;
    let var_0 = global0.b;
    var var_1 = global4.b.b.x;
    var_1 = ~(~21594u);
    return global3.xx;
}

fn func_2() -> bool {
    global2 = array<f32, 16>();
    let var_0 = !select(!vec3<bool>(true, global3.x, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, global0.d, global0.d), vec3<bool>(global0.d, global4.b.d, true)), vec3<bool>(!global3.x, all(vec3<bool>(global3.x, global0.d, false)), !global0.d), !vec3<bool>(global3.x, global0.d, global4.d.d)), true);
    global2 = array<f32, 16>();
    return !any(vec2<bool>(global0.d, true));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_2) -> u32 {
    let var_0 = vec4<bool>(any(vec4<bool>(true, true, true, any(!vec4<bool>(arg_0.d, true, true, arg_1.x)))), all(select(select(vec2<bool>(false, false), vec2<bool>(arg_2.b.d, arg_2.d.d), all(vec4<bool>(global4.d.d, false, true, global4.b.d))), !func_1(false, 0u), !select(arg_1.zy, vec2<bool>(arg_1.x, global4.d.d), false))), any(vec3<bool>(global3.x, true, !func_1(false, global0.b.x).x)), true & global3.x);
    var var_1 = arg_2.c;
    let var_2 = var_0;
    let var_3 = select(min(vec4<i32>(~2147483647i, 18380i, 2147483647i, _wgslsmith_sub_i32(global0.c, -54061i)), global4.a), max(_wgslsmith_add_vec4_i32(min(max(vec4<i32>(u_input.a.x, 15581i, -17546i, arg_0.c), vec4<i32>(-58362i, 20477i, -2147483647i, 1i)), min(u_input.a, vec4<i32>(-1i, -7084i, arg_2.b.c, u_input.a.x))), -_wgslsmith_clamp_vec4_i32(global4.a, vec4<i32>(-49605i, -1i, -2147483647i, 0i), vec4<i32>(-16824i, 1i, global0.c, -1i))), global4.a), all(var_0));
    var var_4 = arg_2;
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(!(global3.x != global3.x) || !global4.b.d, !global4.d.d, true), vec3<bool>(global3.x, all(func_1(false, abs(global4.d.b.x))), true), any(select(global3.xz, global3.zx, select(false, true, true))));
    let var_1 = vec4<bool>(global4.d.d, func_2(), (((global4.a.x & global0.c) & global0.c) ^ 1i) > global4.d.c, true == func_1(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 8u)] - global4.d.a) == global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(96969u, global0.b.x), 16u)], 46844u).x);
    let var_2 = true;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), firstLeadingBit(vec3<u32>(~1u & firstLeadingBit(global0.b.x), func_3(Struct_1(1945f, global4.b.b, -18754i, var_2), vec3<bool>(true, true, global0.d), Struct_2(global4.a, global4.b, vec4<f32>(588f, 974f, global4.b.a, global0.a), Struct_1(355f, vec3<u32>(global0.b.x, 122746u, global0.b.x), global4.a.x, true), global4.c.zz)) | (global0.b.x & global4.b.b.x), 4294967295u)), firstTrailingBit(-2147483647i), true);
    let var_4 = global3.x || true;
    var var_5 = vec2<i32>(_wgslsmith_mod_i32(2147483647i, _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(30590i, var_3.c, -1i), u_input.a.zxz))), _wgslsmith_dot_vec4_i32(u_input.a, ~countOneBits(vec4<i32>(0i, var_3.c, -46387i, -74963i))));
    var var_6 = !vec2<bool>(var_4, select(true, false, func_2()));
    var_5 = vec2<i32>(~firstTrailingBit(564i | -var_3.c), _wgslsmith_div_i32(-7228i, _wgslsmith_dot_vec2_i32(vec2<i32>(-7361i, firstLeadingBit(-50459i)), vec2<i32>(19528i, -u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(500f);
}

