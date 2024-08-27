struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(1i, Struct_1(vec3<u32>(41507u, 0u, 31213u), vec4<f32>(-1221f, -1478f, -2191f, 573f), true)), Struct_3(1i, Struct_1(vec3<u32>(13111u, 0u, 0u), vec4<f32>(436f, -380f, 509f, 773f), true)), Struct_3(47082i, Struct_1(vec3<u32>(1u, 80337u, 0u), vec4<f32>(-965f, 682f, -1372f, 433f), false)), Struct_3(-10527i, Struct_1(vec3<u32>(4294967295u, 18879u, 4294967295u), vec4<f32>(1569f, -625f, 518f, 686f), false)), Struct_3(2147483647i, Struct_1(vec3<u32>(0u, 1u, 0u), vec4<f32>(1902f, -1322f, 326f, 2730f), true)), Struct_3(56668i, Struct_1(vec3<u32>(46060u, 6324u, 1u), vec4<f32>(-1000f, 370f, 2798f, 3069f), true)), Struct_3(-5747i, Struct_1(vec3<u32>(4294967295u, 0u, 0u), vec4<f32>(-1000f, 872f, 852f, 1640f), false)), Struct_3(-1i, Struct_1(vec3<u32>(4294967295u, 1u, 23923u), vec4<f32>(-468f, -1570f, -2373f, -1312f), false)), Struct_3(i32(-2147483648), Struct_1(vec3<u32>(0u, 4294967295u, 1u), vec4<f32>(-1509f, -520f, 1497f, 654f), true)), Struct_3(i32(-2147483648), Struct_1(vec3<u32>(4707u, 30320u, 0u), vec4<f32>(-332f, 748f, -1127f, 1360f), false)), Struct_3(1i, Struct_1(vec3<u32>(1u, 4294967295u, 7356u), vec4<f32>(1083f, 585f, -2322f, -896f), true)), Struct_3(5878i, Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), vec4<f32>(-532f, -447f, -472f, 683f), true)), Struct_3(0i, Struct_1(vec3<u32>(27513u, 4294967295u, 5842u), vec4<f32>(500f, -647f, 1192f, -975f), true)), Struct_3(0i, Struct_1(vec3<u32>(2453u, 4294967295u, 4294967295u), vec4<f32>(-833f, -1101f, -893f, 233f), false)), Struct_3(-28769i, Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), vec4<f32>(-1097f, 2913f, -287f, 309f), false)));

var<private> global2: array<Struct_2, 18>;

var<private> global3: vec3<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    var var_0 = u_input.a.x;
    global0 = -2113f;
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - 715f) - _wgslsmith_div_f32(344f, arg_0.b.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-580f)))))));
    global2 = array<Struct_2, 18>();
    var var_1 = -reverseBits(~vec4<i32>(reverseBits(53028i), 1i, arg_0.a, countOneBits(arg_0.a)));
    return global2[_wgslsmith_index_u32(arg_0.b.a.x, 18u)];
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: Struct_3) -> bool {
    let var_0 = arg_3;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-1580f * global3.x)) - var_0.b.b.x)));
    let var_1 = global1[_wgslsmith_index_u32(31939u, 15u)];
    var var_2 = global1[_wgslsmith_index_u32(4294967295u, 15u)];
    let var_3 = var_2.b;
    return false;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec4<i32>) -> vec2<u32> {
    global1 = array<Struct_3, 15>();
    var var_0 = Struct_3(abs(arg_2.a.x), Struct_1(min(select(u_input.a, u_input.a, arg_1.x), u_input.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, _wgslsmith_div_f32(global3.x, arg_0.x), global3.x, _wgslsmith_f_op_f32(-1000f - arg_0.x))), !func_3(vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 1342f, global3.x, -208f) * arg_0), vec2<u32>(u_input.a.x, 4294967295u), Struct_3(0i, Struct_1(u_input.a, vec4<f32>(global3.x, arg_0.x, global3.x, 220f), true)))));
    let var_1 = var_0.b;
    global2 = array<Struct_2, 18>();
    let var_2 = _wgslsmith_div_f32(1340f, -382f);
    return vec2<u32>(firstTrailingBit(~_wgslsmith_mod_u32(~var_1.a.x, abs(var_1.a.x))), ~u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 15>();
    global1 = array<Struct_3, 15>();
    var var_0 = func_1(Struct_3(-1i, Struct_1(_wgslsmith_sub_vec3_u32(~u_input.a, vec3<u32>(0u, 0u, 41851u) ^ u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, global3.x, 422f, 891f), vec4<f32>(global3.x, 969f, 800f, -761f), true))), -807f > _wgslsmith_f_op_f32(max(global3.x, 253f)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - global3.x) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(517f * global3.x), _wgslsmith_f_op_f32(exp2(global3.x)))))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), -260f);
    var_0 = func_1(global1[_wgslsmith_index_u32(~(countOneBits(25582u) << (u_input.a.x % 32u)), 15u)]);
    var var_2 = reverseBits(u_input.a.zx | _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.zx, abs(vec2<u32>(u_input.a.x, 0u))), func_2(vec4<f32>(1051f, 609f, global3.x, -204f), vec3<bool>(true, true, true), global2[_wgslsmith_index_u32(19113u & u_input.a.x, 18u)], ~vec4<i32>(1i, var_0.a.x, 18449i, var_0.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(~select(vec4<u32>(0u, var_2.x, u_input.a.x, 0u) | vec4<u32>(1u, 34247u, 0u, 32450u), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, var_2.x, 26600u), vec4<u32>(45034u, 34801u, 12555u, 9684u)), true), ~firstTrailingBit(vec4<u32>(u_input.a.x, var_2.x, var_2.x, 93435u))), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(-22371i, 1i, 1i, -1i), vec4<i32>(var_0.a.x, var_0.a.x, -33324i, var_0.a.x)) | var_0.a.x), u_input.a.x, vec3<i32>(12394i, 0i, i32(-1i) * -51330i), _wgslsmith_div_vec3_u32(countOneBits(~(vec3<u32>(0u, var_2.x, var_2.x) ^ u_input.a)), ~vec3<u32>(18491u, ~1u, u_input.a.x << (49974u % 32u))));
}

