struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<u32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: Struct_3,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(130f, vec3<u32>(0u, 4294967295u, 4294967295u), 27426u, false);

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec4<u32>(1u, 27192u, 1u, 58132u), 43997u, vec2<f32>(1614f, 639f)), Struct_1(vec4<u32>(8984u, 50098u, 4294967295u, 41386u), 4294967295u, vec2<f32>(980f, -500f)), Struct_1(vec4<u32>(22380u, 4294967295u, 1u, 1u), 0u, vec2<f32>(1303f, 2958f)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 3044u, 4294967295u), 49444u, vec2<f32>(-1000f, 1317f)), Struct_1(vec4<u32>(82509u, 7533u, 4294967295u, 0u), 1654u, vec2<f32>(-359f, -1500f)), Struct_1(vec4<u32>(82362u, 75430u, 12978u, 1u), 4294967295u, vec2<f32>(-908f, -1120f)), Struct_1(vec4<u32>(10307u, 0u, 4294967295u, 23629u), 18813u, vec2<f32>(1259f, -1435f)), Struct_1(vec4<u32>(1282u, 4294967295u, 27724u, 69091u), 0u, vec2<f32>(582f, 877f)), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 33983u), 56310u, vec2<f32>(964f, 365f)), Struct_1(vec4<u32>(35769u, 87741u, 7310u, 23158u), 1u, vec2<f32>(-785f, 688f)));

var<private> global2: Struct_1;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-global2.c.x);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1924f)), -1000f, global2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(967f))));
    var var_2 = global0.d;
    var var_3 = u_input.b >= ~(~(30976u << (max(1u, u_input.b) % 32u)));
    var var_4 = !global0.d;
    return _wgslsmith_f_op_f32(f32(-1f) * -316f);
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    global0 = arg_0;
    let var_0 = arg_0.d;
    let var_1 = global2.c.x;
    let var_2 = Struct_5(Struct_1(global2.a, _wgslsmith_clamp_u32(select(global0.b.x << (global2.a.x % 32u), ~global2.b, any(vec4<bool>(true, false, false, true))), 26025u, u_input.b), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -921f), global2.c.x)), arg_0, Struct_3(Struct_2(_wgslsmith_mod_u32(arg_0.c, global2.b | 44137u), _wgslsmith_clamp_vec2_u32(~vec2<u32>(global0.c, global2.b), vec2<u32>(arg_0.b.x, 30794u), vec2<u32>(u_input.b, 48184u) | vec2<u32>(15920u, 91892u)), Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.b.x, global2.b, global2.a.x, global2.a.x), global2.a), _wgslsmith_sub_u32(arg_0.c, global2.b), vec2<f32>(global2.c.x, -368f)), reverseBits(max(global0.b, global0.b)), _wgslsmith_div_u32(_wgslsmith_mod_u32(1u, u_input.b), 42991u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.a, global2.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(func_3()), 1f))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1597f, 355f, global0.a), vec3<f32>(794f, 691f, global0.a))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, global0.a, global0.a) - vec3<f32>(-287f, global0.a, global0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-292f, -1275f, -921f) - vec3<f32>(226f, 415f, arg_0.a))))))));
    let var_3 = arg_0.a;
    return var_2.c.a.c;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(abs(_wgslsmith_dot_vec3_u32(global2.a.xww, global2.a.wyz)), global0.b.x, ~u_input.b, abs(~u_input.b) ^ u_input.b), ~(vec4<u32>(global0.c, firstLeadingBit(u_input.b), ~4294967295u, select(4294967295u, u_input.b, global0.d)) | ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 16385u, u_input.b, 0u), global2.a)));
    global0 = Struct_4(global2.c.x, ~(~(~global2.a.yww)) | global0.b, _wgslsmith_sub_u32(var_0.x, global2.b << (61593u % 32u)), true);
    let var_1 = global2.b;
    let var_2 = select(vec3<bool>(true, !global0.d, global0.d | !global0.d), vec3<bool>(global0.d, global0.d, select(global0.d, false, true)), global0.d & global0.d);
    let var_3 = global2.a.x;
    return func_2(Struct_4(958f, _wgslsmith_sub_vec3_u32(~vec3<u32>(global0.c, u_input.b, u_input.b), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(global0.b, vec3<u32>(var_0.x, global0.c, u_input.b)), ~global2.a.ywz, vec3<u32>(global2.a.x, 1u, 4294967295u))), _wgslsmith_div_u32(0u, global0.c >> (countOneBits(u_input.b) % 32u)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    global2 = func_1();
    global2 = Struct_1(vec4<u32>(firstTrailingBit(_wgslsmith_mod_u32(~0u, 12899u)), ~min(~1u, u_input.b), ~4294967295u, 4294967295u), 1u, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(f32(-1f) * -1744f)), global0.a))));
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2213f, -1659f, 660f), vec3<f32>(global0.a, global0.a, 492f), vec3<bool>(false, global0.d, true))))))))));
    let var_2 = !(!select(vec4<bool>(global0.d, true, true, !global0.d), select(select(vec4<bool>(true, global0.d, global0.d, global0.d), vec4<bool>(global0.d, global0.d, false, true), vec4<bool>(global0.d, true, global0.d, global0.d)), vec4<bool>(true, false, global0.d, false), !vec4<bool>(false, global0.d, true, false)), !(!vec4<bool>(false, global0.d, global0.d, global0.d))));
    let var_3 = Struct_5(global1[_wgslsmith_index_u32(reverseBits(1u), 10u)], Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f), ~vec3<u32>(25751u ^ u_input.b, global2.a.x, ~u_input.b), ~(max(global2.a.x, global2.a.x) & reverseBits(global2.a.x)), !any(vec3<bool>(true, false, global0.d))), Struct_3(Struct_2(28807u, _wgslsmith_sub_vec2_u32(vec2<u32>(global2.b, global2.a.x), firstLeadingBit(global2.a.xx)), func_1(), select(vec3<u32>(0u, global2.b, u_input.b), global0.b, vec3<bool>(true, true, var_2.x)) ^ func_2(Struct_4(-415f, vec3<u32>(78258u, u_input.b, u_input.b), global2.a.x, false)).a.zyx, global0.b.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(var_1)))));
    let var_4 = Struct_4(1692f, vec3<u32>(12765u, _wgslsmith_add_u32(31829u, ~4294967295u), abs(104855u)), ~global0.c & 0u, var_2.x);
    let var_5 = var_2.ywz;
    global1 = array<Struct_1, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~var_0));
}

