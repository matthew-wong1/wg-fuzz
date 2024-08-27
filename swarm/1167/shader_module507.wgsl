struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

var<private> global1: array<vec4<u32>, 31>;

var<private> global2: array<i32, 22> = array<i32, 22>(41265i, 1i, i32(-2147483648), -9256i, -1i, i32(-2147483648), 2147483647i, -30457i, -6753i, -3130i, 45357i, 1i, -6535i, 19838i, -1i, 0i, i32(-2147483648), i32(-2147483648), -44318i, 34533i, 1i, i32(-2147483648));

var<private> global3: vec2<u32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    global1 = array<vec4<u32>, 31>();
    global1 = array<vec4<u32>, 31>();
    global0 = array<f32, 27>();
    global3 = _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(global3.x, u_input.c), arg_0.b.wx), _wgslsmith_mult_vec2_u32(vec2<u32>(11984u, 1u), vec2<u32>(5084u, 0u))), _wgslsmith_mult_vec2_u32(vec2<u32>(min(1u, 1571u), u_input.b), vec2<u32>(~global3.x, _wgslsmith_sub_u32(arg_0.b.x, 1u)))) << (vec2<u32>(arg_0.b.x, ~(arg_0.b.x >> (u_input.a % 32u))) % vec2<u32>(32u));
    var var_0 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(~4294967295u >> ((arg_0.b.x | 56702u) % 32u), _wgslsmith_dot_vec3_u32(~arg_0.b.wxz, vec3<u32>(arg_0.b.x, 1u, u_input.c))), 4609u), ~0u, ~(~firstLeadingBit(~u_input.d.x)), ~(~global3.x >> (select(u_input.c | u_input.c, _wgslsmith_add_u32(0u, u_input.d.x), all(vec3<bool>(true, false, true))) % 32u)));
    return min(-reverseBits(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(1i, 2147483647i, arg_0.c.x)), u_input.e)), u_input.e);
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    global0 = array<f32, 27>();
    let var_0 = global2[_wgslsmith_index_u32(abs(~u_input.d.x), 22u)] & 2147483647i;
    var var_1 = ~_wgslsmith_div_vec3_i32(select(firstTrailingBit(countOneBits(u_input.e)), func_3(Struct_1(arg_0.b.a, vec4<u32>(arg_0.b.b.x, arg_0.b.b.x, arg_0.b.b.x, arg_0.b.b.x), vec2<i32>(u_input.e.x, u_input.e.x))), true), firstTrailingBit(~(-u_input.e)));
    global2 = array<i32, 22>();
    var_1 = u_input.e;
    return Struct_1(arg_0.b.a, countOneBits(countOneBits(vec4<u32>(global3.x, 1u, 12858u, u_input.b)) | arg_0.b.b) ^ ~_wgslsmith_sub_vec4_u32(global1[_wgslsmith_index_u32(4294967295u, 31u)], reverseBits(global1[_wgslsmith_index_u32(49881u, 31u)])), vec2<i32>(~(-13973i), u_input.e.x));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = !(!vec2<bool>(1u < _wgslsmith_clamp_u32(4294967295u, u_input.b, arg_0.b), true));
    var var_1 = arg_0.a.b.x;
    let var_2 = Struct_4(vec4<u32>(~_wgslsmith_div_u32(20179u, global3.x), (firstLeadingBit(u_input.b) | ~u_input.d.x) >> (_wgslsmith_mult_u32(1u, firstLeadingBit(4294967295u)) % 32u), ~(~4294967295u), func_2(Struct_3(vec4<bool>(false, false, var_0.x, false), Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(arg_0.b, 27u)], 1996f, arg_0.c.a.x), global1[_wgslsmith_index_u32(global3.x, 31u)], vec2<i32>(arg_0.a.c.x, u_input.e.x)))).b.x), global1[_wgslsmith_index_u32(~(select(4294967295u, 15500u, true) ^ arg_0.b), 31u)], countOneBits(~vec4<u32>(global3.x, u_input.d.x, 0u, 1u)), select(!(!(!vec4<bool>(false, var_0.x, true, var_0.x))), !select(select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(true, var_0.x, true, true), vec4<bool>(var_0.x, true, true, true)), select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, true), false), false), all(vec2<bool>(var_0.x, var_0.x))), u_input.b);
    global3 = vec2<u32>(_wgslsmith_mult_u32(global3.x, ~max(var_2.c.x, 106201u)), firstLeadingBit(55065u) ^ (arg_0.a.b.x >> ((36979u | u_input.d.x) % 32u))) | vec2<u32>(~countOneBits(u_input.d.x), 4294967295u);
    var var_3 = arg_0.c.c.x;
    return Struct_1(arg_0.a.a, select(var_2.b, abs(_wgslsmith_sub_vec4_u32(~var_2.a, _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.d.x, 29237u, arg_0.b), vec4<u32>(13228u, 80497u, 0u, var_2.e)))), var_2.d), arg_0.a.c);
}

fn func_1() -> Struct_2 {
    var var_0 = select(abs(4294967295u) == _wgslsmith_dot_vec2_u32(reverseBits(u_input.d), vec2<u32>(1u, u_input.a)), true, true);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 27u)] * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global3.x, 27u)] - -373f)), -160f, any(vec2<bool>(true, true))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global3.x, 27u)])) * global0[_wgslsmith_index_u32(~23387u, 27u)]);
    let var_3 = u_input.a;
    global3 = reverseBits(vec2<u32>(abs(~50629u), _wgslsmith_div_u32(global3.x, ~4294967295u >> (u_input.b % 32u))));
    return Struct_2(func_4(Struct_2(func_2(Struct_3(vec4<bool>(false, false, false, false), Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(var_3, 27u)], global0[_wgslsmith_index_u32(u_input.b, 27u)], 744f), global1[_wgslsmith_index_u32(1u, 31u)], u_input.e.xx))), ~(~4294967295u), func_2(Struct_3(vec4<bool>(false, true, false, false), Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(3096u, 27u)], global0[_wgslsmith_index_u32(u_input.c, 27u)]), vec4<u32>(var_3, u_input.d.x, 4294967295u, 1u), vec2<i32>(global2[_wgslsmith_index_u32(75767u, 22u)], -2147483647i)))))), 18783u, func_2(Struct_3(vec4<bool>(true, true, true, true), func_4(Struct_2(Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 27u)], global0[_wgslsmith_index_u32(0u, 27u)], -1172f), vec4<u32>(4294967295u, 71757u, 8286u, var_3), u_input.e.xy), 27605u, Struct_1(vec3<f32>(256f, -858f, -318f), global1[_wgslsmith_index_u32(16233u, 31u)], u_input.e.zx))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-45766i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.a.x, global0[_wgslsmith_index_u32(0u, 27u)]) * func_4(Struct_2(Struct_1(vec3<f32>(var_0.a.a.x, var_0.a.a.x, -1000f), vec4<u32>(6850u, 1u, 1u, global3.x), vec2<i32>(1i, global2[_wgslsmith_index_u32(2425u, 22u)])), global3.x, Struct_1(var_0.c.a, vec4<u32>(var_0.b, u_input.a, var_0.b, 0u), vec2<i32>(global2[_wgslsmith_index_u32(global3.x, 22u)], var_0.c.c.x)))).a.zx) * var_0.a.a.yy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.a.zz - vec2<f32>(var_0.a.a.x, 336f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(var_0.a.a.xz, var_0.c.a.zz, vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -165f)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))))), vec2<i32>(-13021i, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(var_0.b, 22u)], 32256i)), u_input.c ^ u_input.d.x);
}

