struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1966f, vec4<f32>(-684f, -179f, 478f, -173f));

var<private> global1: Struct_2;

var<private> global2: array<vec3<f32>, 23> = array<vec3<f32>, 23>(vec3<f32>(-767f, 1430f, -1739f), vec3<f32>(717f, 1994f, 2463f), vec3<f32>(1302f, -1115f, -158f), vec3<f32>(1293f, 802f, 1466f), vec3<f32>(-958f, -445f, 299f), vec3<f32>(-2193f, 195f, -181f), vec3<f32>(557f, -1280f, 1425f), vec3<f32>(-1358f, -2155f, -370f), vec3<f32>(182f, 811f, 1000f), vec3<f32>(1182f, -377f, 931f), vec3<f32>(1618f, -391f, 2205f), vec3<f32>(-1267f, -672f, -631f), vec3<f32>(1000f, 1153f, 1356f), vec3<f32>(-1000f, -326f, -1186f), vec3<f32>(-841f, -719f, 852f), vec3<f32>(-1000f, -2340f, -156f), vec3<f32>(256f, 953f, -1693f), vec3<f32>(2345f, -2019f, 1085f), vec3<f32>(153f, -422f, -1061f), vec3<f32>(2651f, 580f, -2658f), vec3<f32>(-1000f, 2199f, -450f), vec3<f32>(889f, -1242f, 584f), vec3<f32>(-322f, -204f, -176f));

var<private> global3: array<u32, 3> = array<u32, 3>(4294967295u, 24055u, 4294967295u);

var<private> global4: array<vec2<u32>, 20>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-469f, 1040f)) - global1.b.x) + -1362f)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b.wz - vec2<f32>(global0.a, 1359f)) * vec2<f32>(-932f, global0.a)) - global0.b.yz))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1238f);
    var var_3 = Struct_1(!vec2<bool>(!any(vec3<bool>(false, false, false)), false), ~(~1u));
    var var_4 = !select(select(vec2<bool>(false, var_3.a.x), var_3.a, var_3.a.x & true), var_3.a, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(50858u, var_3.b) ^ ~13679u, 3u)] < (select(u_input.c.x, 4294967295u, true) << (90279u % 32u)));
    return select(var_3.a, !(!select(!vec2<bool>(false, var_3.a.x), select(var_3.a, var_3.a, vec2<bool>(var_4.x, false)), select(vec2<bool>(var_4.x, var_4.x), var_3.a, false))), var_3.a.x);
}

fn func_2() -> Struct_1 {
    let var_0 = !any(vec4<bool>(true, true, true, true));
    let var_1 = Struct_1(!func_3(u_input.c.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(~47699u, ~u_input.b.x, 1u, u_input.c.x), firstLeadingBit(vec4<u32>(~50907u, ~u_input.c.x, 4294967295u, abs(25586u)))));
    let var_2 = Struct_1(func_3(u_input.b.x), max(_wgslsmith_mod_u32(abs(_wgslsmith_dot_vec3_u32(u_input.c.xww, vec3<u32>(0u, 32774u, global3[_wgslsmith_index_u32(40144u, 3u)]))), ~(~var_1.b)), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, 2203u, 4294967295u, 65054u), u_input.c)) << (~_wgslsmith_dot_vec2_u32(u_input.b.xx, vec2<u32>(global3[_wgslsmith_index_u32(0u, 3u)], u_input.c.x)) % 32u)));
    var var_3 = vec2<u32>(firstLeadingBit(u_input.b.x), ~firstLeadingBit(4294967295u));
    var var_4 = ~_wgslsmith_div_vec3_i32(~firstLeadingBit(vec3<i32>(2147483647i, u_input.a, u_input.a) ^ vec3<i32>(-2147483647i, -11686i, u_input.a)), ~(~vec3<i32>(u_input.a, -42480i, -8625i)) >> (u_input.b % vec3<u32>(32u)));
    return var_2;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<f32>) -> u32 {
    let var_0 = func_2();
    var var_1 = arg_0.x;
    let var_2 = Struct_2(521f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1106f, -1005f, _wgslsmith_f_op_f32(902f * -1197f), _wgslsmith_f_op_f32(ceil(130f))), global0.b, all(!var_0.a)))));
    let var_3 = all(select(select(!(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), vec4<bool>(any(arg_0.yy), var_0.a.x, true, func_2().a.x), vec4<bool>(false, func_3(u_input.c.x).x, true, var_0.a.x && arg_0.x)), select(!select(vec4<bool>(false, false, var_0.a.x, true), vec4<bool>(false, arg_0.x, false, var_0.a.x), var_0.a.x), select(vec4<bool>(true, arg_0.x, var_0.a.x, true), select(vec4<bool>(true, false, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, arg_0.x, var_0.a.x, arg_0.x), false), vec4<bool>(var_0.a.x, false, false, var_0.a.x)), all(var_0.a)), true));
    var_1 = var_3;
    return global3[_wgslsmith_index_u32(var_0.b, 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(min(global3[_wgslsmith_index_u32(func_1(vec3<bool>(false, false, false), global0.b.x, vec2<f32>(-304f, global1.b.x)), 3u)], global3[_wgslsmith_index_u32(47352u, 3u)]), 1u), func_2().b), ~global3[_wgslsmith_index_u32(84148u, 3u)], 31695u);
    let var_1 = ~((_wgslsmith_dot_vec3_u32(reverseBits(u_input.b), u_input.b & vec3<u32>(var_0.x, global3[_wgslsmith_index_u32(1u, 3u)], u_input.c.x)) >> (85063u % 32u)) | ~_wgslsmith_sub_u32(_wgslsmith_div_u32(20859u, u_input.c.x), _wgslsmith_add_u32(4294967295u, var_0.x)));
    var_0 = u_input.b;
    var var_2 = func_3(~countOneBits(reverseBits(global3[_wgslsmith_index_u32(4294967295u, 3u)]))).x & false;
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(abs(14005i << (0u % 32u)), 58019i, countOneBits(1i)));
}

