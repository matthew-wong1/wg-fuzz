struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<bool, 15> = array<bool, 15>(false, true, false, false, false, false, false, false, true, true, false, false, true, true, true);

var<private> global2: bool;

var<private> global3: array<vec4<f32>, 32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> vec4<bool> {
    let var_0 = !vec2<bool>(!select(global1[_wgslsmith_index_u32(select(u_input.b, u_input.c.x, true), 15u)], false, !arg_0.a.x), -2147483647i > _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, arg_1), -vec2<i32>(19860i, -1i)));
    let var_1 = Struct_1(vec4<bool>(any(var_0) || false, all(vec2<bool>(false | arg_0.a.x, 6189u >= u_input.b)), 1u <= ~u_input.c.x, var_0.x), all(select(vec2<bool>(true, true), select(select(vec2<bool>(false, var_0.x), arg_0.a.xw, arg_0.a.zz), vec2<bool>(false, false), var_0), select(select(var_0, vec2<bool>(true, false), var_0), vec2<bool>(false, false), vec2<bool>(var_0.x, true)))));
    var var_2 = 13529u;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-382f, -898f), vec2<f32>(arg_2, -402f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(259f, arg_2) * vec2<f32>(arg_2, arg_2)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(786f, -559f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))))));
    global2 = any(arg_0.a);
    return var_1.a;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global3[_wgslsmith_index_u32(1u, 32u)], _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(655f, -508f, -1251f, 781f) + global3[_wgslsmith_index_u32(120501u, 32u)])))) + vec4<f32>(240f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -220f) - 112f), 923f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1861f, -1129f, false)), _wgslsmith_f_op_f32(1000f * 1046f))))));
    global1 = array<bool, 15>();
    var var_1 = abs(min(11106u, u_input.e.x));
    global2 = arg_1.b;
    let var_2 = min(u_input.b, ~(~0u));
    return !select(!arg_1.a, func_3(arg_1, min(1i, 1i), 1452f), any(!vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 15u)], false)));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> StorageBuffer {
    var var_0 = reverseBits(arg_1.x ^ arg_1.x);
    global2 = u_input.d <= -8473i;
    var var_1 = Struct_1(select(!select(vec4<bool>(global1[_wgslsmith_index_u32(89810u, 15u)], false, global1[_wgslsmith_index_u32(u_input.e.x, 15u)], global1[_wgslsmith_index_u32(arg_1.x, 15u)]), vec4<bool>(global1[_wgslsmith_index_u32(42844u, 15u)], global1[_wgslsmith_index_u32(1u, 15u)], false, false), all(vec4<bool>(global1[_wgslsmith_index_u32(1u, 15u)], true, global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(54593u, 15u)]))), select(select(func_2(vec2<i32>(-2147483647i, u_input.a), global0[_wgslsmith_index_u32(1u, 4u)]), !vec4<bool>(global1[_wgslsmith_index_u32(arg_1.x, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(arg_1.x, 15u)], global1[_wgslsmith_index_u32(arg_1.x, 15u)]), !vec4<bool>(global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(arg_1.x, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)], false)), func_3(global0[_wgslsmith_index_u32(~0u, 4u)], _wgslsmith_add_i32(u_input.d, u_input.a), arg_0), func_3(Struct_1(vec4<bool>(true, true, global1[_wgslsmith_index_u32(100345u, 15u)], true), false), u_input.a, -268f)), !(!select(vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(arg_1.x, 15u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(arg_1.x, 15u)], global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(arg_1.x, 15u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 15u)], false, false, global1[_wgslsmith_index_u32(1u, 15u)])))), global1[_wgslsmith_index_u32(21225u, 15u)]);
    global2 = false;
    return StorageBuffer(abs(vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.e.x, 0u), countOneBits(u_input.e.zyy)), _wgslsmith_dot_vec4_u32(~u_input.e, ~vec4<u32>(arg_1.x, arg_1.x, 0u, 4294967295u)), ~u_input.b)), select(vec4<i32>(-1i ^ min(1064i, u_input.a), _wgslsmith_sub_i32(0i, -42733i), _wgslsmith_sub_i32(abs(u_input.d), 1196i), max(_wgslsmith_clamp_i32(1i, u_input.d, -1i), u_input.a)), abs(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.d, 1i, 2147483647i, u_input.d), vec4<i32>(u_input.a, -1i, -48471i, u_input.d))), any(var_1.a.yyz)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    var var_1 = global0[_wgslsmith_index_u32(countOneBits(min(~6568u, _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.e.x, u_input.b), _wgslsmith_mult_u32(0u, u_input.e.x))) | ~u_input.b), 4u)];
    var_0 = ~(-1i);
    var var_2 = ~((~(vec2<u32>(u_input.b, 41498u) >> (vec2<u32>(45688u, u_input.e.x) % vec2<u32>(32u))) & ~(~u_input.c.yx)) & _wgslsmith_mod_vec2_u32(abs(vec2<u32>(4294967295u, u_input.c.x)) | vec2<u32>(u_input.b, 0u), u_input.c.yx));
    var var_3 = Struct_1(vec4<bool>(any(var_1.a.zw), global1[_wgslsmith_index_u32(44890u, 15u)], !(!(!global1[_wgslsmith_index_u32(14075u, 15u)])), select(false, var_1.a.x, any(select(var_1.a.zwy, var_1.a.xxy, global1[_wgslsmith_index_u32(u_input.b, 15u)])))), !(!(0u >= u_input.b)));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(-1f), countOneBits(vec3<u32>(39803u, ~u_input.e.x, ~4294967295u) & max(vec3<u32>(12934u, var_2.x, u_input.b), u_input.c)));
}

