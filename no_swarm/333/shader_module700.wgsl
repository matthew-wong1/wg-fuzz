struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<u32>(1u, 2981u), vec4<f32>(1088f, 1005f, 786f, -721f), vec4<u32>(30464u, 279u, 57834u, 52829u), -8144i, false), Struct_1(vec2<u32>(89984u, 35068u), vec4<f32>(-1344f, 500f, -1481f, -865f), vec4<u32>(46310u, 47376u, 30255u, 0u), 2147483647i, true), Struct_1(vec2<u32>(31383u, 1u), vec4<f32>(-672f, -942f, 1000f, 120f), vec4<u32>(54255u, 47058u, 1u, 4294967295u), i32(-2147483648), true), Struct_1(vec2<u32>(4294967295u, 1u), vec4<f32>(1000f, 1000f, 678f, -739f), vec4<u32>(4294967295u, 4261u, 1u, 0u), 31875i, false), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<f32>(512f, -967f, 774f, -323f), vec4<u32>(0u, 1050u, 4294967295u, 1u), 1i, false), Struct_1(vec2<u32>(0u, 28022u), vec4<f32>(1036f, -639f, -2061f, 800f), vec4<u32>(0u, 4294967295u, 5831u, 4294967295u), -1i, false), Struct_1(vec2<u32>(87268u, 67039u), vec4<f32>(1341f, 1000f, 487f, -997f), vec4<u32>(23006u, 2532u, 1u, 65468u), 42195i, true), Struct_1(vec2<u32>(20228u, 4294967295u), vec4<f32>(-1000f, 1844f, 1000f, -1105f), vec4<u32>(0u, 0u, 3636u, 4294967295u), -4276i, true), Struct_1(vec2<u32>(1u, 4294967295u), vec4<f32>(-609f, 166f, 290f, -1000f), vec4<u32>(0u, 0u, 4294967295u, 42334u), i32(-2147483648), false), Struct_1(vec2<u32>(5870u, 7496u), vec4<f32>(528f, -377f, -942f, -1629f), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 45056u), 90851i, true), Struct_1(vec2<u32>(0u, 4294967295u), vec4<f32>(497f, 1077f, 1227f, 178f), vec4<u32>(1u, 16617u, 4471u, 10285u), -1i, false), Struct_1(vec2<u32>(1u, 4294967295u), vec4<f32>(-171f, 1420f, 243f, 2289f), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), 2147483647i, false), Struct_1(vec2<u32>(1u, 25690u), vec4<f32>(1673f, 1000f, -1000f, -815f), vec4<u32>(0u, 4294967295u, 0u, 4294967295u), -4167i, false), Struct_1(vec2<u32>(4294967295u, 82275u), vec4<f32>(440f, -1000f, -820f, -698f), vec4<u32>(1u, 1u, 1u, 44037u), 36226i, false), Struct_1(vec2<u32>(1741u, 31027u), vec4<f32>(-172f, 598f, -798f, 866f), vec4<u32>(4294967295u, 4294967295u, 14695u, 4294967295u), 1i, true), Struct_1(vec2<u32>(1u, 38407u), vec4<f32>(1000f, -1560f, 601f, -1168f), vec4<u32>(0u, 1u, 42469u, 4294967295u), 1i, false));

var<private> global2: i32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3;
    let var_1 = var_0.d;
    var var_2 = vec4<bool>(firstLeadingBit(u_input.c.x) >= ~var_0.c.x, !(_wgslsmith_f_op_f32(max(908f, arg_0)) <= _wgslsmith_f_op_f32(-1000f * 1822f)) == (all(!vec4<bool>(arg_3.e, false, false, global0.x)) | false), global0.x, true);
    global1 = array<Struct_1, 16>();
    var var_3 = var_0.a.x >> (~arg_1.c.x % 32u);
    return 1u;
}

fn func_2(arg_0: vec2<u32>) -> bool {
    var var_0 = true;
    global2 = 2147483647i;
    let var_1 = abs(vec4<u32>(~((36764u << (arg_0.x % 32u)) & func_3(857f, global1[_wgslsmith_index_u32(0u, 16u)], vec2<u32>(arg_0.x, 4294967295u), Struct_1(arg_0, vec4<f32>(653f, -102f, 919f, -874f), vec4<u32>(0u, arg_0.x, 4294967295u, 10569u), -1i, global0.x))), ~27162u, u_input.c.x, 4294967295u));
    let var_2 = all(!select(vec3<bool>(any(global0.wx), true, !global0.x), !vec3<bool>(false, false, global0.x), !(global0.x && true)));
    let var_3 = !(!(!(!select(vec2<bool>(var_2, var_2), global0.wx, false))));
    return !all(!(!select(vec4<bool>(global0.x, var_3.x, var_3.x, var_3.x), vec4<bool>(global0.x, var_2, false, false), vec4<bool>(var_2, var_3.x, var_3.x, global0.x))));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec2<u32>) -> vec3<f32> {
    global1 = array<Struct_1, 16>();
    global2 = -2369i;
    var var_0 = vec3<bool>(global0.x, func_2(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(arg_2, vec2<u32>(u_input.c.x, 27168u)), vec2<u32>(abs(u_input.c.x), abs(arg_2.x)))), global0.x);
    let var_1 = vec4<i32>(22956i, -2147483647i, 32507i, u_input.a);
    global2 = u_input.b | u_input.b;
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1, -1847f, arg_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1(~(-25818i), 808f, firstTrailingBit(u_input.c.yy)));
    let var_1 = Struct_1(vec2<u32>(u_input.c.x, u_input.c.x), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -1802f) + var_0.x), var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))) + 1f), var_0.x, _wgslsmith_f_op_f32(select(-320f, -1718f, !(!global0.x)))), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c.x, 62707u, 510u, 4294967295u), ~vec4<u32>(42398u, 47438u, u_input.c.x, u_input.c.x), _wgslsmith_sub_vec4_u32(vec4<u32>(57292u, 4294967295u, 15309u, 72482u), vec4<u32>(30572u, u_input.c.x, 4294967295u, 29523u)))), abs(~select(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x), vec4<u32>(u_input.c.x, 20968u, 14367u, u_input.c.x), vec4<bool>(true, true, global0.x, global0.x)))), u_input.b, (u_input.a << ((u_input.c.x & firstTrailingBit(u_input.c.x)) % 32u)) >= min(~u_input.a, _wgslsmith_add_i32(27450i, _wgslsmith_clamp_i32(u_input.a, -53576i, u_input.b))));
    global1 = array<Struct_1, 16>();
    global2 = ~u_input.a;
    global1 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(max(abs(6619i), -2147483647i), ~1i), var_1.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), var_1.b.x, -1321f, -1462f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1913f, var_1.b.x, 321f, var_1.b.x) - var_1.b))), _wgslsmith_div_vec4_f32(var_1.b, vec4<f32>(var_1.b.x, var_0.x, var_1.b.x, var_1.b.x)))));
}

