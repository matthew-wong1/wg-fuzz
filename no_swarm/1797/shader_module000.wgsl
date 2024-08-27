struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1000f, vec4<bool>(false, true, false, false), vec4<f32>(-548f, 896f, 951f, 1010f));

var<private> global1: Struct_1 = Struct_1(579f, vec4<bool>(true, true, false, true), vec4<f32>(483f, -548f, -788f, 1227f));

var<private> global2: array<Struct_1, 26>;

var<private> global3: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(-1672f, vec4<bool>(true, true, true, true), vec4<f32>(-950f, 161f, -469f, 646f)), Struct_1(-540f, vec4<bool>(true, false, true, true), vec4<f32>(-508f, -1047f, -546f, 1000f)), Struct_1(1000f, vec4<bool>(true, true, false, true), vec4<f32>(-903f, -1203f, -253f, 457f)), Struct_1(182f, vec4<bool>(true, true, false, true), vec4<f32>(-700f, 1000f, -1466f, 1000f)), Struct_1(1001f, vec4<bool>(false, true, false, true), vec4<f32>(-1157f, -754f, 1517f, -2449f)), Struct_1(-837f, vec4<bool>(true, false, false, false), vec4<f32>(-155f, -2392f, -924f, 1000f)), Struct_1(685f, vec4<bool>(true, true, false, true), vec4<f32>(-915f, -1130f, -360f, -509f)), Struct_1(2306f, vec4<bool>(true, true, true, false), vec4<f32>(-116f, 685f, 526f, 564f)), Struct_1(-1254f, vec4<bool>(false, false, true, false), vec4<f32>(-1705f, 317f, 809f, 261f)), Struct_1(-419f, vec4<bool>(true, true, true, true), vec4<f32>(3194f, 152f, 227f, 475f)), Struct_1(684f, vec4<bool>(false, true, false, false), vec4<f32>(-687f, -1336f, -615f, 651f)));

var<private> global4: bool;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec3<u32> {
    let var_0 = global0.b.zzw;
    let var_1 = global2[_wgslsmith_index_u32(u_input.d ^ _wgslsmith_clamp_u32(max(12753u, u_input.d), 18336u, ~4294967295u), 26u)];
    let var_2 = ~2147483647i;
    var var_3 = global0.c.x;
    global1 = Struct_1(arg_1.a, !(!vec4<bool>(var_2 <= u_input.c, all(vec3<bool>(arg_2.b.x, arg_1.b.x, arg_1.b.x)), any(arg_1.b.yyx), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.c.x + arg_3)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.c))));
    return _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(58220u, ~u_input.d) & u_input.d, 15605u, 0u), vec3<u32>(_wgslsmith_mod_u32(0u, ~abs(1u)), u_input.d, 81568u));
}

fn func_3() -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(30747u, 26u)];
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-642f - _wgslsmith_f_op_f32(-1496f - global1.a)), select(!vec4<bool>(global0.b.x, var_0.b.x, all(vec2<bool>(false, var_0.b.x)), any(global1.b)), !(!select(global1.b, vec4<bool>(true, true, global0.b.x, global0.b.x), true)), var_0.b), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.c.x * global1.c.x), -1576f, -1029f, -466f) * global1.c))));
    let var_2 = u_input.a.x;
    global4 = !(!(2147483647i != reverseBits(u_input.a.x)));
    let var_3 = 1u;
    return 1u;
}

fn func_1() -> vec2<u32> {
    global3 = array<Struct_1, 11>();
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(select(func_2(Struct_1(global1.c.x, global1.b, global1.c), Struct_1(-1450f, global1.b, vec4<f32>(global1.a, -672f, 108f, global0.a)), global3[_wgslsmith_index_u32(1u, 11u)], -139f), min(vec3<u32>(14006u, u_input.d, u_input.d), vec3<u32>(u_input.d, u_input.d, 0u)), !global1.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, u_input.d, 158u), ~vec3<u32>(u_input.d, 4294967295u, 0u))), 5685u), ~vec2<u32>(u_input.d, _wgslsmith_div_u32(1u, func_3())));
    let var_1 = Struct_1(global0.a, vec4<bool>(global0.b.x | true, global0.b.x, true, global0.b.x), _wgslsmith_f_op_vec4_f32(global1.c * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1191f, 1684f, global0.c.x, -1463f) - vec4<f32>(global1.c.x, 1849f, 529f, -1166f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(531f, global0.c.x, global1.a, 1321f))))));
    global2 = array<Struct_1, 26>();
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32((abs(4294967295u) << (~u_input.d % 32u)) ^ 4294967295u, countOneBits(~(~var_0.x))) & max(0u, (~0u << (~u_input.d % 32u)) ^ var_0.x), 26u)];
    return _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, ~(~(~u_input.d))), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 26>();
    global0 = global3[_wgslsmith_index_u32(~(~u_input.d), 11u)];
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.d, u_input.d), select(vec2<u32>(u_input.d, u_input.d), vec2<u32>(9439u, u_input.d), global1.b.x)) & vec2<u32>(~163468u, u_input.d & u_input.d)), func_1() ^ select(_wgslsmith_mult_vec2_u32(vec2<u32>(24531u, 1u), vec2<u32>(95535u, u_input.d)) | _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, u_input.d)), _wgslsmith_mod_vec2_u32(select(vec2<u32>(34182u, u_input.d), vec2<u32>(1u, 0u), global0.b.x), vec2<u32>(u_input.d, u_input.d) >> (vec2<u32>(0u, 4315u) % vec2<u32>(32u))), any(global1.b.zyy))), 11u)];
    var var_0 = !select(!vec4<bool>(u_input.d != u_input.d, any(global0.b), all(vec3<bool>(global1.b.x, true, false)), global0.c.x == global0.c.x), global1.b, global0.b);
    global0 = global2[_wgslsmith_index_u32(1u, 26u)];
    let var_1 = -682f;
    global3 = array<Struct_1, 11>();
    let var_2 = select(vec2<bool>(true, !global1.b.x), select(select(!select(global0.b.xw, global1.b.wz, false), select(vec2<bool>(false, true), vec2<bool>(true, global1.b.x), true), any(!global1.b)), !var_0.xy, global0.b.x), global1.b.yy);
    var var_3 = global2[_wgslsmith_index_u32(4294967295u, 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(4294967295u, 0u, u_input.d, 76805u)), ~select(~vec4<u32>(u_input.d, u_input.d, 9760u, 76110u), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, 0u, u_input.d), vec4<u32>(u_input.d, 1u, 11900u, 1u)), select(vec4<bool>(true, var_2.x, global1.b.x, var_3.b.x), vec4<bool>(var_2.x, var_0.x, true, false), vec4<bool>(var_2.x, false, var_3.b.x, var_0.x))), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(10262u, u_input.d, 67579u, u_input.d), max(vec4<u32>(u_input.d, u_input.d, 1u, u_input.d), vec4<u32>(u_input.d, u_input.d, 4294967295u, 26467u))), select(vec4<u32>(4294967295u, u_input.d, 4294967295u, u_input.d) ^ vec4<u32>(0u, u_input.d, 4294967295u, u_input.d), min(vec4<u32>(34134u, 1u, u_input.d, u_input.d), vec4<u32>(0u, 1u, u_input.d, u_input.d)), all(var_2)), vec4<u32>(63726u, 0u, u_input.d, 0u) ^ ~vec4<u32>(53909u, u_input.d, 36046u, u_input.d))), u_input.d, global1.c.x, -1i, abs(abs(-vec2<i32>(-1i, u_input.b))));
}

