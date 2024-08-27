struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_1 = Struct_1(vec4<u32>(4294967295u, 0u, 15703u, 27209u), vec3<f32>(1131f, -386f, -498f), vec2<i32>(-74056i, -15590i));

var<private> global2: array<bool, 19>;

var<private> global3: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(85686u, 0u, 12682u), vec3<u32>(48521u, 6506u, 0u), vec3<u32>(3906u, 4500u, 0u), vec3<u32>(0u, 1u, 36317u), vec3<u32>(1u, 1u, 0u), vec3<u32>(0u, 0u, 4767u), vec3<u32>(1u, 6865u, 75942u), vec3<u32>(0u, 4294967295u, 1u));

var<private> global4: array<i32, 3>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_2(arg_0);
    global0 = vec4<f32>(659f, -1258f, global1.b.x, -808f);
    let var_1 = global1.a;
    global3 = array<vec3<u32>, 8>();
    var var_2 = arg_0;
    return ~_wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_0.c.x, abs(var_2.c.x), i32(-1i) * -28325i) ^ ~_wgslsmith_sub_i32(arg_0.c.x, arg_0.c.x), -2147483647i);
}

fn func_1(arg_0: f32, arg_1: f32) -> i32 {
    var var_0 = false;
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(511f + -221f), _wgslsmith_f_op_f32(arg_1 - -1111f), true | global2[_wgslsmith_index_u32(global1.a.x, 19u)]))), arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -140f), -1064f)), 916f));
    global3 = array<vec3<u32>, 8>();
    var_0 = false;
    let var_1 = 0u;
    return countOneBits(select((func_2(Struct_1(global1.a, global0.ywy, global1.c)) | u_input.b) ^ _wgslsmith_add_i32(1i, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global1.a, vec4<u32>(global1.a.x, 48886u, 22013u, 49910u)), 3u)]), 8098i, any(!select(vec3<bool>(global2[_wgslsmith_index_u32(67538u, 19u)], true, false), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 19u)], global2[_wgslsmith_index_u32(global1.a.x, 19u)], global2[_wgslsmith_index_u32(var_1, 19u)]), false))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> vec4<u32> {
    var var_0 = false;
    global1 = arg_2;
    var_0 = any(!(!vec2<bool>(global2[_wgslsmith_index_u32(4294967295u | arg_2.a.x, 19u)], any(vec3<bool>(global2[_wgslsmith_index_u32(1u, 19u)], false, false)))));
    global4 = array<i32, 3>();
    global3 = array<vec3<u32>, 8>();
    return countOneBits(vec4<u32>(~(40346u ^ arg_1.a.x), global1.a.x, 24267u, arg_1.a.x) << (vec4<u32>(1u, ~abs(65107u), _wgslsmith_clamp_u32(0u, 1u, abs(global1.a.x)), firstLeadingBit(~arg_1.a.x)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~0u, ~global1.a.x), ~1u, firstTrailingBit(_wgslsmith_mult_u32(u_input.a.x, 31486u))), 19u)];
    let var_1 = true;
    global4 = array<i32, 3>();
    global2 = array<bool, 19>();
    var var_2 = ~(~(~vec4<i32>(func_1(-1000f, 926f), select(44739i, global4[_wgslsmith_index_u32(global1.a.x, 3u)], true), u_input.b, u_input.b)));
    let var_3 = Struct_1(_wgslsmith_mod_vec4_u32(~firstTrailingBit(func_3(vec2<i32>(var_2.x, u_input.b), Struct_1(vec4<u32>(4294967295u, 52725u, u_input.a.x, global1.a.x), vec3<f32>(1051f, 160f, global1.b.x), vec2<i32>(global1.c.x, global1.c.x)), Struct_1(vec4<u32>(global1.a.x, 17860u, global1.a.x, 1u), vec3<f32>(global1.b.x, global0.x, global1.b.x), global1.c), vec3<f32>(global1.b.x, global1.b.x, global1.b.x))), abs(abs(~vec4<u32>(u_input.a.x, global1.a.x, 1u, global1.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, -1008f, -1526f)) * vec3<f32>(405f, global1.b.x, global1.b.x)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b * global1.b), vec3<f32>(327f, 1284f, global1.b.x)))), _wgslsmith_clamp_vec2_i32(vec2<i32>(max(2147483647i | global4[_wgslsmith_index_u32(58244u, 3u)], -var_2.x), _wgslsmith_sub_i32(-global4[_wgslsmith_index_u32(66102u, 3u)], global1.c.x)), _wgslsmith_div_vec2_i32(var_2.zy, var_2.zy), abs(~(~var_2.ww))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(~max(_wgslsmith_add_vec2_u32(vec2<u32>(global1.a.x, 15163u), vec2<u32>(global1.a.x, 10892u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 67802u), u_input.a.yz)), ~(~vec2<u32>(var_3.a.x, u_input.a.x))));
}

