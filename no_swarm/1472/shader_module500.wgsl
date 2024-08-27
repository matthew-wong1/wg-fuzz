struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<bool>, 29>;

var<private> global2: array<i32, 17> = array<i32, 17>(1i, i32(-2147483648), 0i, 14850i, -1i, 0i, -29283i, 2147483647i, -41082i, -25578i, 1i, -26305i, 12855i, 1i, -30127i, 6006i, 60000i);

var<private> global3: vec4<u32>;

var<private> global4: array<i32, 23> = array<i32, 23>(14496i, -10528i, 26931i, 2147483647i, 0i, i32(-2147483648), 2147483647i, 0i, 2667i, 2147483647i, 12116i, 23294i, 58819i, -9424i, 51703i, -6979i, -37117i, 42098i, 2147483647i, 25534i, 15528i, 45498i, 14542i);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global3 = vec4<u32>(~abs(arg_0.x), 0u, arg_0.x, global3.x);
    let var_0 = vec2<i32>(-(_wgslsmith_mult_i32(0i ^ u_input.a, u_input.a) | 7928i), global2[_wgslsmith_index_u32(~1u, 17u)]);
    let var_1 = reverseBits(-8715i);
    global1 = array<vec3<bool>, 29>();
    let var_2 = vec2<bool>(any(!arg_1.a), false);
    return abs(arg_0.x);
}

fn func_2() -> Struct_1 {
    global3 = _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~reverseBits(global3.x), ~(~global3.x), ~global3.x, global3.x), vec4<u32>(func_3(vec3<u32>(1u, global3.x, 42895u), Struct_1(global0.a, global0.a.zx), Struct_1(vec4<bool>(true, true, false, global0.b.x), vec2<bool>(global0.b.x, false))), 36880u, _wgslsmith_dot_vec3_u32(~vec3<u32>(global3.x, global3.x, global3.x), ~global3.xxw), ~120749u << (~4294967295u % 32u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, global3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global3.x, global3.x), vec3<u32>(22345u, global3.x, global3.x)), ~1u), vec4<u32>(global3.x, func_3(vec3<u32>(4294967295u, global3.x, 1619u), Struct_1(vec4<bool>(global0.a.x, false, global0.b.x, global0.a.x), vec2<bool>(global0.a.x, global0.b.x)), Struct_1(global0.a, vec2<bool>(true, global0.a.x))), global3.x, ~global3.x)), ~(abs(global3.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 26502u, global3.x), vec4<u32>(global3.x, global3.x, global3.x, global3.x)) % 32u)), func_3(vec3<u32>(select(global3.x, global3.x, false), ~17323u, _wgslsmith_dot_vec3_u32(global3.wzw, vec3<u32>(46044u, 1u, 39465u))), Struct_1(select(vec4<bool>(global0.b.x, false, true, false), global0.a, false), !vec2<bool>(global0.a.x, global0.a.x)), Struct_1(global0.a, select(global0.a.yx, vec2<bool>(global0.b.x, global0.b.x), global0.a.x))), _wgslsmith_sub_u32(~global3.x, _wgslsmith_add_u32(global3.x, global3.x)) | (countOneBits(global3.x) & 1u)));
    return Struct_1(select(select(vec4<bool>(true, global3.x > 14636u, global3.x >= 4294967295u, all(global0.a)), select(global0.a, global0.a, false), global0.b.x), global0.a, select(!select(global0.a, vec4<bool>(true, true, global0.b.x, false), global0.a), global0.a, _wgslsmith_f_op_f32(select(-1236f, 585f, global0.a.x)) != -1405f)), !global0.b);
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1) -> bool {
    var var_0 = 1400f;
    var var_1 = func_2();
    global0 = arg_2;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global1 = array<vec3<bool>, 29>();
    return var_1.a.x;
}

fn func_1() -> i32 {
    let var_0 = select(global0.a.yzy, !global1[_wgslsmith_index_u32(9743u, 29u)], global0.b.x);
    global3 = abs(_wgslsmith_div_vec4_u32(vec4<u32>(global3.x, global3.x, (21671u & global3.x) >> (abs(0u) % 32u), min(global3.x, 29586u) ^ ~global3.x), vec4<u32>(global3.x, _wgslsmith_add_u32(global3.x, 4294967295u), 1u, 4294967295u & ~global3.x)));
    let var_1 = false;
    var var_2 = vec4<bool>(var_0.x, 0u <= global3.x, !func_4(1u, global0.b, func_2()), !global0.b.x);
    let var_3 = vec4<u32>(13103u, _wgslsmith_mod_u32(func_3(~(~global3.xyw), Struct_1(!vec4<bool>(var_0.x, true, var_1, var_0.x), !vec2<bool>(global0.b.x, var_1)), func_2()), 4294967295u), 38685u, 1u);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(~u_input.a, 2725i & func_1()), select(select(vec2<i32>(func_1(), global4[_wgslsmith_index_u32(~4294967295u, 23u)]), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(global3.x, 23u)], -15007i), vec2<i32>(global4[_wgslsmith_index_u32(1u, 23u)], 21704i)), select(-2147483647i, 17664i, global0.b.x)), !global0.b.x), ~_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(global3.x, 17u)], 15248i), vec2<i32>(global2[_wgslsmith_index_u32(global3.x, 17u)], -1633i)), -vec2<i32>(1i, u_input.a)), func_2().b));
    global1 = array<vec3<bool>, 29>();
    global2 = array<i32, 17>();
    let var_1 = min(vec2<i32>(~abs(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global3.yy, global3.wz), 17u)]), 2147483647i), -vec2<i32>(var_0.x, global2[_wgslsmith_index_u32(~(~1u), 17u)]));
    let var_2 = func_2().a;
    global3 = vec4<u32>(_wgslsmith_sub_u32(global3.x, 4294967295u), 1u, abs(0u), func_3(~global3.zwx, Struct_1(select(vec4<bool>(global0.a.x, global0.a.x, true, false), vec4<bool>(global0.a.x, true, true, true), vec4<bool>(true, false, global0.a.x, false)), vec2<bool>(true, false)), Struct_1(!var_2, func_2().a.zx))) | (~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global3.x, global3.x, 1u, 5056u), vec4<u32>(global3.x, global3.x, global3.x, global3.x), vec4<u32>(global3.x, global3.x, 0u, 1u))) & vec4<u32>(~abs(global3.x), _wgslsmith_mult_u32(abs(global3.x), ~58974u), 0u, max(reverseBits(global3.x), countOneBits(1u))));
    global4 = array<i32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1390f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1539f)))), min(var_0, select(abs(var_1 >> (global3.wy % vec2<u32>(32u))), abs(var_0 ^ var_0), var_2.x)), ~global2[_wgslsmith_index_u32(55858u, 17u)], 0u, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(219f, -154f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2321f))), _wgslsmith_f_op_f32(select(-363f, _wgslsmith_f_op_f32(f32(-1f) * -785f), !global0.a.x))))));
}

