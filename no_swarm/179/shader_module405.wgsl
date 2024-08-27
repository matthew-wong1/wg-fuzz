struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: u32 = 0u;

var<private> global2: array<bool, 9> = array<bool, 9>(true, true, false, false, true, false, true, true, true);

var<private> global3: array<vec3<f32>, 13>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_2(all(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, global2[_wgslsmith_index_u32(1u, 9u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 9u)], true, false)), !vec3<bool>(global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)]), global2[_wgslsmith_index_u32(~0u, 9u)])), -(~(~1i)), global0[_wgslsmith_index_u32(1u, 23u)], Struct_1(vec4<u32>(1u, 1u, 1u, 1u), any(vec3<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(0u, 9u)])), any(vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 9u)], false)), select(global2[_wgslsmith_index_u32(64949u, 9u)], global2[_wgslsmith_index_u32(30319u, 9u)], true))), -reverseBits(_wgslsmith_clamp_vec2_i32(u_input.b, vec2<i32>(46875i, u_input.a.x), vec2<i32>(arg_0, arg_0)))));
    return Struct_2(~_wgslsmith_dot_vec2_u32(max(var_0.c.a.xz, var_0.c.a.yx), vec2<u32>(25273u, var_0.c.a.x)) < var_0.d.a.x, ~var_0.d.c.x, var_0.c, global0[_wgslsmith_index_u32(~73041u, 23u)]);
}

fn func_2() -> bool {
    global0 = array<Struct_1, 23>();
    var var_0 = func_1(-_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, u_input.a.x), u_input.a.zwz), select(u_input.a.x, 28862i, true), u_input.a.x), vec3<i32>(min(u_input.a.x, 17652i), u_input.b.x | 0i, _wgslsmith_mult_i32(u_input.b.x, -2147483647i))));
    global3 = array<vec3<f32>, 13>();
    var var_1 = true;
    global3 = array<vec3<f32>, 13>();
    return global2[_wgslsmith_index_u32(6900u, 9u)];
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec4<bool>) -> StorageBuffer {
    var var_0 = select(arg_3, !vec4<bool>(global2[_wgslsmith_index_u32(52133u >> (0u % 32u), 9u)], all(vec3<bool>(global2[_wgslsmith_index_u32(25058u, 9u)], arg_3.x, global2[_wgslsmith_index_u32(0u, 9u)])), arg_1.b, all(select(vec4<bool>(true, arg_1.b, true, arg_0.c.b), arg_3, true))), select(!arg_3, arg_3, select(vec4<bool>(arg_1.b, -364f <= arg_2.x, false & global2[_wgslsmith_index_u32(1u, 9u)], !arg_1.b), arg_3, 1u < arg_0.d.a.x)));
    var var_1 = false;
    let var_2 = arg_2.x;
    let var_3 = vec3<i32>(u_input.a.x, min(arg_1.c.x, firstLeadingBit(u_input.b.x)), arg_0.b);
    global2 = array<bool, 9>();
    return StorageBuffer(reverseBits(u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~_wgslsmith_add_u32(~abs(_wgslsmith_clamp_u32(1u, 4294967295u, 0u)), ~(~(~0u)));
    global0 = array<Struct_1, 23>();
    var var_0 = true;
    let x = u_input.a;
    s_output = func_3(func_1(1i), global0[_wgslsmith_index_u32(0u, 23u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(491f, 1367f, _wgslsmith_f_op_f32(-1184f * _wgslsmith_f_op_f32(-2153f - 2448f)), _wgslsmith_div_f32(-1000f, -252f)) + vec4<f32>(-2089f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + _wgslsmith_f_op_f32(ceil(-798f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1064f)))), _wgslsmith_f_op_f32(-2584f - _wgslsmith_f_op_f32(-763f - 1204f)))), select(select(vec4<bool>(!global2[_wgslsmith_index_u32(53085u, 9u)], true, global2[_wgslsmith_index_u32(1u, 9u)], any(vec4<bool>(global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)]))), vec4<bool>(any(vec3<bool>(false, true, false)), true, true, true), select(vec4<bool>(global2[_wgslsmith_index_u32(31310u, 9u)], global2[_wgslsmith_index_u32(38121u, 9u)], global2[_wgslsmith_index_u32(40268u, 9u)], false), !vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 9u)], false, global2[_wgslsmith_index_u32(0u, 9u)], false), any(vec2<bool>(global2[_wgslsmith_index_u32(65193u, 9u)], true)))), !vec4<bool>(true, func_2(), false, any(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 9u)], true, global2[_wgslsmith_index_u32(10939u, 9u)]))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~4294967295u, countOneBits(4294967295u)), ~(~4294967295u)), 9u)]));
}

