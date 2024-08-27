struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 531f;

var<private> global1: array<f32, 27>;

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(312f, vec3<f32>(288f, 287f, 1000f)), Struct_2(322f, vec3<f32>(606f, -1296f, 961f)), Struct_2(-1152f, vec3<f32>(646f, 829f, 1814f)), Struct_2(-1000f, vec3<f32>(-207f, 1000f, 1000f)), Struct_2(1855f, vec3<f32>(1000f, -976f, 857f)), Struct_2(-740f, vec3<f32>(1000f, 1241f, -1219f)), Struct_2(1884f, vec3<f32>(213f, 139f, -295f)), Struct_2(1696f, vec3<f32>(893f, 724f, -2643f)), Struct_2(1206f, vec3<f32>(1313f, -990f, -1201f)), Struct_2(-1000f, vec3<f32>(-443f, -484f, 1067f)), Struct_2(-172f, vec3<f32>(-337f, 371f, -1281f)), Struct_2(979f, vec3<f32>(775f, -1172f, -375f)), Struct_2(-146f, vec3<f32>(-285f, 177f, 1023f)), Struct_2(405f, vec3<f32>(1746f, 1000f, 1222f)), Struct_2(647f, vec3<f32>(945f, -643f, 490f)), Struct_2(-902f, vec3<f32>(-281f, 749f, 666f)));

var<private> global3: array<u32, 19>;

var<private> global4: vec4<f32> = vec4<f32>(1005f, 551f, 1766f, -468f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec2<i32>) -> i32 {
    global1 = array<f32, 27>();
    global2 = array<Struct_2, 16>();
    let var_0 = Struct_1(vec3<bool>(select(arg_2.a.x, true, arg_2.a.x), !(arg_2.a.x & !arg_2.a.x), arg_2.a.x));
    var var_1 = ~abs(u_input.a);
    global0 = global4.x;
    return arg_1.x;
}

fn func_2() -> u32 {
    var var_0 = vec3<bool>(false, false, _wgslsmith_add_i32(func_3(global4.x, vec3<i32>(2147483647i, 1i, 41713i), Struct_1(vec3<bool>(true, false, true)), select(vec2<i32>(55967i, -13190i), vec2<i32>(-1i, 11211i), vec2<bool>(false, true))), min(select(2147483647i, 1i, true), _wgslsmith_mult_i32(-2147483647i, 1i))) > _wgslsmith_dot_vec4_i32(-vec4<i32>(3614i, -2147483647i, -13389i, 54904i), -vec4<i32>(1i, 0i, 0i, -23419i)));
    let var_1 = Struct_1(vec3<bool>(true, var_0.x, true));
    var_0 = vec3<bool>(true, all(var_1.a.zz), true);
    global1 = array<f32, 27>();
    let var_2 = Struct_1(select(select(var_1.a, !(!vec3<bool>(true, false, var_1.a.x)), var_1.a), select(select(!var_1.a, select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_1.a.x, var_1.a.x, var_0.x), false), !var_1.a.x), !var_1.a, false), true));
    return min(~(~4294967295u), reverseBits(global3[_wgslsmith_index_u32(u_input.d, 19u)]));
}

fn func_1() -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(~(global3[_wgslsmith_index_u32(func_2(), 19u)] | u_input.d), 27u)];
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(f32(-1f) * -562f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global4.x)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 27u)]) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(44426u, 27u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-298f)) * _wgslsmith_div_f32(729f, 1128f)), 676f, _wgslsmith_f_op_f32(103f * _wgslsmith_f_op_f32(-global4.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1248f, 589f, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(68424u, 19u)], 27u)], 369f) + vec4<f32>(-866f, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 19u)], 27u)], 191f, -356f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4.x, -252f, 1094f, global1[_wgslsmith_index_u32(u_input.b.x, 27u)]))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(2361f, -331f, 1139f, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(19999u, 19u)], 27u)]) * vec4<f32>(global4.x, -1000f, global1[_wgslsmith_index_u32(u_input.b.x, 27u)], global4.x))))));
    var var_1 = _wgslsmith_sub_i32(-24256i, -8166i);
    let var_2 = !all(vec3<bool>(any(vec3<bool>(true, true, true)), true, true));
    let var_3 = _wgslsmith_div_vec3_i32(-vec3<i32>(1i, 1i, 1i), vec3<i32>(-(0i << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 19u)], 19u)] % 32u)), 1i, _wgslsmith_add_i32(1i, 1i))) & countOneBits(abs(-vec3<i32>(-2988i, 30910i, -61752i)) << (~(vec3<u32>(0u, 16248u, global3[_wgslsmith_index_u32(u_input.a, 19u)]) << (u_input.b.ywx % vec3<u32>(32u))) % vec3<u32>(32u)));
    return var_3.x ^ 33279i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = all(select(select(vec3<bool>(all(vec3<bool>(false, false, true)), true, true), vec3<bool>(true, true, false), true), !vec3<bool>(true, true, global4.x > global4.x), vec3<bool>(!all(vec4<bool>(false, false, false, false)), all(vec2<bool>(true, true)), true)));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global4.x)), global4.x));
    global3 = array<u32, 19>();
    global3 = array<u32, 19>();
    global2 = array<Struct_2, 16>();
    let var_2 = vec2<bool>(all(vec2<bool>(all(vec3<bool>(true, false, false)), true)), true);
    let var_3 = 1539f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(firstLeadingBit(1u), 1u, 3785u), ~vec3<i32>(i32(-1i) * -3249i, -36585i, -var_0), global4.wx);
}

