struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25>;

var<private> global1: array<f32, 21> = array<f32, 21>(-156f, 1344f, -690f, -170f, 1153f, 783f, -291f, 1433f, -745f, 2754f, -670f, 569f, 1271f, 976f, 702f, -1134f, 383f, 132f, 1073f, -1239f, -543f);

var<private> global2: array<vec3<bool>, 21>;

var<private> global3: vec4<bool> = vec4<bool>(false, false, true, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<i32>) -> bool {
    let var_0 = vec3<bool>(global3.x, global3.x, arg_1.a.x > ~(~(~arg_0.x)));
    let var_1 = vec2<u32>(~(~abs(min(arg_1.a.x, u_input.b.x))), 4294967295u);
    global2 = array<vec3<bool>, 21>();
    var var_2 = Struct_2(arg_1, 35210u, u_input.c.x);
    global1 = array<f32, 21>();
    return global3.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> f32 {
    let var_0 = vec3<u32>(reverseBits(firstTrailingBit(~0u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b, u_input.a.xwy, vec3<u32>(1u, 3004u, u_input.a.x)), u_input.b << (vec3<u32>(u_input.b.x, 115177u, 4294967295u) % vec3<u32>(32u))), u_input.a.xww), _wgslsmith_sub_u32(u_input.b.x, ~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a))), ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(u_input.b.x, 23337u)), ~(~u_input.b.yy)));
    let var_1 = Struct_3(_wgslsmith_clamp_vec3_u32(u_input.b & ~_wgslsmith_mult_vec3_u32(vec3<u32>(33063u, var_0.x, 3778u), vec3<u32>(0u, 4294967295u, var_0.x)), vec3<u32>(_wgslsmith_add_u32(min(7721u, u_input.b.x), 0u), 1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4704u, 12276u, var_0.x, 1u), vec4<u32>(u_input.a.x, 1u, u_input.b.x, 13895u))), var_0), func_3(~_wgslsmith_div_vec4_u32(~u_input.a, u_input.a << (u_input.a % vec4<u32>(32u))), Struct_1(vec2<u32>(~4294967295u, ~u_input.a.x), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(12776u, u_input.a.x), ~64459u), 25u)], arg_0.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(497f, 424f, global1[_wgslsmith_index_u32(u_input.a.x, 21u)], 2680f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 21u)], 1847f, global1[_wgslsmith_index_u32(0u, 21u)], -640f) + vec4<f32>(-1000f, -111f, global1[_wgslsmith_index_u32(u_input.b.x, 21u)], global1[_wgslsmith_index_u32(79230u, 21u)])), true)), i32(-1i) * -1i), u_input.c), _wgslsmith_clamp_i32(arg_0.x, _wgslsmith_sub_i32(u_input.c.x, arg_0.x), firstLeadingBit(1i)), Struct_1(u_input.a.wz, global0[_wgslsmith_index_u32(9833u, 25u)], i32(-1i) * -_wgslsmith_mod_i32(arg_0.x, 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1568f, global1[_wgslsmith_index_u32(23132u, 21u)], global1[_wgslsmith_index_u32(52008u, 21u)], 1104f)))), select(u_input.c.x, 13736i >> (_wgslsmith_mult_u32(u_input.a.x, 86228u) % 32u), 1i < (1i >> (u_input.b.x % 32u)))), Struct_1(~vec2<u32>(49189u, var_0.x >> (var_0.x % 32u)), _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(1u, 25u)] * global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(5997u, u_input.a.x, u_input.a.x, var_0.x), abs(u_input.a)), 25u)]), min((i32(-1i) * -27832i) << (u_input.b.x % 32u), arg_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(58321u, 21u)], 727f, global1[_wgslsmith_index_u32(var_0.x, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1[_wgslsmith_index_u32(3060u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], -1417f, global1[_wgslsmith_index_u32(8358u, 21u)]))))), min(20526i, -70070i)));
    global1 = array<f32, 21>();
    let var_2 = var_1.e.b.x;
    global1 = array<f32, 21>();
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.e.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_1.d.d.x)), -461f, select(false, var_1.b, arg_1)))))));
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    let var_0 = u_input.c.xx;
    let var_1 = 32581u;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(367f)) + -1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -246f), 578f) * global1[_wgslsmith_index_u32(0u, 21u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 21u)]) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(u_input.c | vec3<i32>(u_input.c.x, 2147483647i, var_0.x), all(vec3<bool>(global3.x, true, false)))), 1269f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(10071u, 21u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 21u)] * global1[_wgslsmith_index_u32(u_input.b.x, 21u)])))));
    global2 = array<vec3<bool>, 21>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-590f, var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1237f))))), 599f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1044f) - -289f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 21>();
    let var_0 = global3.xxw;
    var var_1 = Struct_2(Struct_1(~(u_input.b.zy << (~u_input.b.xy % vec2<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<u32>(55200u, 39801u, 68990u, u_input.a.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 21u)] + -2472f)))), ~firstLeadingBit(abs(u_input.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], 597f, 677f, global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), vec4<f32>(global1[_wgslsmith_index_u32(82393u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(134315u, 21u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-301f, global1[_wgslsmith_index_u32(u_input.b.x, 21u)], global1[_wgslsmith_index_u32(63540u, 21u)], 1623f) + vec4<f32>(global1[_wgslsmith_index_u32(4699u, 21u)], 1270f, global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)])), func_3(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(vec2<u32>(u_input.a.x, u_input.a.x), vec2<f32>(-1232f, 2068f), u_input.c.x, vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], 1215f, -440f, 900f), u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))))), u_input.c.x), 0u, u_input.c.x);
    let var_2 = var_1.a;
    var var_3 = Struct_2(Struct_1(vec2<u32>(var_1.b, ~var_1.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-324f, 1634f)) + var_1.a.d.yy), _wgslsmith_add_i32(~var_1.c, _wgslsmith_mult_i32(2147483647i, var_1.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-136f, var_1.a.b.x, _wgslsmith_f_op_f32(max(-231f, global1[_wgslsmith_index_u32(0u, 21u)])), _wgslsmith_f_op_f32(var_2.b.x * global1[_wgslsmith_index_u32(28320u, 21u)]))), u_input.c.x), ~_wgslsmith_dot_vec3_u32(max(~vec3<u32>(var_2.a.x, u_input.b.x, 0u), vec3<u32>(var_1.b, 4294967295u, var_2.a.x) | vec3<u32>(var_1.b, 49220u, var_2.a.x)), select(u_input.b, vec3<u32>(var_2.a.x, 0u, 3277u), vec3<bool>(true, true, global3.x)) | u_input.a.ywx), countOneBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.c, 32240i, 44080i, u_input.c.x), select(vec4<i32>(-2147483647i, 41179i, 0i, 14870i), vec4<i32>(var_2.c, -46729i, -2147483647i, var_1.a.e), false))));
    var var_4 = abs(max(_wgslsmith_dot_vec2_u32(~(vec2<u32>(1u, u_input.b.x) ^ var_1.a.a), var_2.a), 0u));
    var var_5 = var_2.b.x;
    let var_6 = abs(min(0i, -1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(abs(u_input.c.yx | u_input.c.xy) | -u_input.c.zz, vec2<i32>(~firstLeadingBit(-1i), -(2147483647i | var_3.c))));
}

