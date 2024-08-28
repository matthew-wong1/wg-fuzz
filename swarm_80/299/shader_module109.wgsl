struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(84504u, 1u), -1i, -1i);

var<private> global2: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(1080f, 1362f), vec2<f32>(-593f, -625f), vec2<f32>(-740f, -708f), vec2<f32>(-1328f, 1163f), vec2<f32>(-930f, 118f), vec2<f32>(-1000f, 365f), vec2<f32>(-1039f, 368f), vec2<f32>(140f, 735f), vec2<f32>(-1216f, -316f), vec2<f32>(-733f, -1000f), vec2<f32>(-741f, -350f), vec2<f32>(-317f, 1254f), vec2<f32>(-853f, 461f), vec2<f32>(1278f, 1559f), vec2<f32>(665f, 1537f), vec2<f32>(-1000f, 468f), vec2<f32>(-926f, -754f), vec2<f32>(-1000f, 1102f));

var<private> global3: Struct_1;

var<private> global4: vec4<u32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec3<u32>) -> vec2<u32> {
    var var_0 = vec4<bool>(global0[_wgslsmith_index_u32(4843u, 19u)], all(arg_1.yw), true, true);
    let var_1 = arg_0.b;
    var var_2 = !all(!(!vec4<bool>(false, var_0.x, arg_1.x, true))) != (!(_wgslsmith_f_op_f32(-arg_0.d) < _wgslsmith_div_f32(-1482f, 1000f)) | (arg_0.b.a.b < _wgslsmith_dot_vec4_i32(~u_input.b, ~arg_0.c)));
    let var_3 = arg_1;
    var var_4 = global3.c;
    return arg_0.b.a.a;
}

fn func_2() -> vec2<f32> {
    let var_0 = Struct_4(vec4<u32>(_wgslsmith_dot_vec4_u32(min(~vec4<u32>(0u, 26455u, global3.a.x, 24107u), countOneBits(vec4<u32>(1u, global1.a.x, global4.x, global1.a.x))), ~vec4<u32>(global3.a.x, 57581u, 7036u, global4.x)), ~(~(~1u)), _wgslsmith_dot_vec2_u32(global4.yz, ~vec2<u32>(global3.a.x, 13704u)) << (min(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, 74634u, global1.a.x, global4.x), vec4<u32>(global1.a.x, 4294967295u, global4.x, global4.x)), global1.a.x) % 32u), 1u), Struct_3(Struct_1(func_3(Struct_4(vec4<u32>(global1.a.x, global3.a.x, global3.a.x, 0u), Struct_3(Struct_1(global1.a, -2147483647i, 26612i)), u_input.b, 430f), !vec4<bool>(global0[_wgslsmith_index_u32(global4.x, 19u)], false, global0[_wgslsmith_index_u32(4294967295u, 19u)], true), global4.zxx), 25286i, countOneBits(2147483647i))), firstLeadingBit(vec4<i32>(1i << (global4.x % 32u), global1.b, global1.b, -(~global1.c))), -117f);
    var var_1 = var_0.b.a;
    global2 = array<vec2<f32>, 18>();
    let var_2 = -_wgslsmith_div_i32(-global3.b, _wgslsmith_dot_vec3_i32(vec3<i32>(32341i, reverseBits(-54821i), -var_1.b), var_0.c.zyy));
    let var_3 = var_0;
    return global2[_wgslsmith_index_u32(select(~73621u, 18522u, abs(var_1.a.x) == 0u), 18u)];
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    let var_0 = false;
    global2 = array<vec2<f32>, 18>();
    let var_1 = ~global1.a.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(186f, 1326f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, -309f), global2[_wgslsmith_index_u32(0u, 18u)])) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1001f, -308f))), vec2<bool>(true, var_0)))));
    global2 = array<vec2<f32>, 18>();
    return -_wgslsmith_mod_i32(7945i, _wgslsmith_sub_i32(-1i, ~global1.c)) | countOneBits(_wgslsmith_add_i32(0i, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_sub_vec2_u32(abs(reverseBits(_wgslsmith_div_vec2_u32(global4.zy, global1.a))), global1.a), _wgslsmith_add_i32(-30163i, func_1(select(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(global1.a.x, 19u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(769u, 19u)], false, global0[_wgslsmith_index_u32(0u, 19u)]), vec4<bool>(true, true, true, false)))), u_input.c);
    global1 = Struct_1(~(~(~_wgslsmith_sub_vec2_u32(global1.a, global1.a))), -global3.c, _wgslsmith_dot_vec2_i32(u_input.b.wz, -select(~u_input.a.yx, ~u_input.a.yy, select(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 19u)]), vec2<bool>(true, true), global0[_wgslsmith_index_u32(12878u, 19u)]))));
    global4 = countOneBits(~(~(select(vec4<u32>(global4.x, global1.a.x, global1.a.x, global1.a.x), vec4<u32>(global4.x, 21232u, 31538u, var_0.a.x), vec4<bool>(global0[_wgslsmith_index_u32(global4.x, 19u)], false, true, global0[_wgslsmith_index_u32(global3.a.x, 19u)])) << (min(vec4<u32>(global1.a.x, global4.x, global4.x, var_0.a.x), vec4<u32>(global3.a.x, 0u, global3.a.x, global1.a.x)) % vec4<u32>(32u)))));
    let var_1 = -510f;
    let var_2 = vec2<bool>(max(_wgslsmith_dot_vec2_i32(vec2<i32>(-3503i, var_0.c), vec2<i32>(-17076i, global1.b)), global3.c) < ~global3.c, var_1 >= var_1);
    let var_3 = var_0.a.x;
    var var_4 = Struct_1(~select(~(global4.wx ^ var_0.a), ~(~vec2<u32>(4294967295u, 4294967295u)), select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(33594u, 19u)]), var_2, global0[_wgslsmith_index_u32(4294967295u, 19u)]), var_2, true)), min(~(~var_0.c) & -abs(1i), ~u_input.d), select(_wgslsmith_dot_vec4_i32(u_input.b, abs(select(u_input.b, vec4<i32>(global1.b, -6529i, 2147483647i, -2147483647i), vec4<bool>(true, true, true, false)))), reverseBits(~global3.b), !(!global0[_wgslsmith_index_u32(global1.a.x ^ var_0.a.x, 19u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(~vec2<u32>(~global3.a.x, global4.x), countOneBits(vec2<u32>(global3.a.x, _wgslsmith_mod_u32(var_3, global3.a.x))), var_0.a), _wgslsmith_dot_vec2_i32(-u_input.b.wz, u_input.b.xy));
}

