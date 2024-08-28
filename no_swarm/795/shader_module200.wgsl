struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(false, true);

var<private> global1: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(-696f, 1206f), vec2<f32>(625f, 632f), vec2<f32>(-1000f, -665f), vec2<f32>(1777f, 1323f), vec2<f32>(-452f, -541f), vec2<f32>(311f, 545f), vec2<f32>(-273f, -1844f), vec2<f32>(1049f, -478f), vec2<f32>(1670f, 707f), vec2<f32>(-1719f, 1000f), vec2<f32>(615f, -1184f), vec2<f32>(1000f, -1698f), vec2<f32>(-1131f, 690f), vec2<f32>(-571f, -181f), vec2<f32>(2379f, 1331f), vec2<f32>(1352f, 1210f), vec2<f32>(599f, 1000f), vec2<f32>(-469f, 1000f), vec2<f32>(716f, 704f));

var<private> global2: Struct_1 = Struct_1(vec2<u32>(1u, 4294967295u), 1000f, -676f, false);

var<private> global3: array<Struct_3, 19>;

var<private> global4: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = ~u_input.a.zzw;
    let var_1 = select(!select(select(!vec3<bool>(false, true, arg_2.a.d), !vec3<bool>(true, arg_1.d, true), global2.d), select(vec3<bool>(global2.d, arg_2.a.d, true), !vec3<bool>(true, global2.d, false), vec3<bool>(true, true, true)), select(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(24490u, 2u)]), select(vec3<bool>(true, global2.d, true), vec3<bool>(arg_1.d, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], true), vec3<bool>(arg_2.a.d, global0[_wgslsmith_index_u32(66014u, 2u)], true)), vec3<bool>(arg_2.a.d, true, global0[_wgslsmith_index_u32(13935u, 2u)]))), select(select(!select(vec3<bool>(false, true, global2.d), vec3<bool>(false, false, arg_2.a.d), false), select(select(vec3<bool>(false, arg_2.a.d, global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec3<bool>(global2.d, global2.d, global0[_wgslsmith_index_u32(arg_2.a.a.x, 2u)]), false), vec3<bool>(arg_1.d, false, true), vec3<bool>(global2.d, false, arg_2.a.d)), vec3<bool>(true, any(vec2<bool>(true, true)), any(vec3<bool>(true, false, arg_1.d)))), !(!vec3<bool>(true, global2.d, arg_2.a.d)), !select(select(global0[_wgslsmith_index_u32(5582u, 2u)], true, arg_1.d), any(vec2<bool>(arg_1.d, true)), true)), select(vec3<bool>(global2.d, !global2.d, !global2.d), vec3<bool>(arg_1.d, true, false), !(false == !arg_1.d)));
    global3 = array<Struct_3, 19>();
    let var_2 = vec3<bool>(arg_1.d, true, any(!(!vec4<bool>(var_1.x, arg_2.a.d, true, global2.d))));
    var var_3 = u_input.a.yxy;
    return vec4<bool>(any(!vec4<bool>(all(vec2<bool>(true, false)), true, true, true)), !(!var_2.x | false), any(vec3<bool>(false, !all(var_2), any(vec3<bool>(false, false, arg_2.a.d)) == true)), select(false, any(!vec2<bool>(var_2.x, var_2.x)) | ((u_input.a.x >> (0u % 32u)) == ~85827u), var_1.x));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_3) -> Struct_3 {
    var var_0 = vec3<u32>(countOneBits(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, global2.a.x)) | 7884u), 0u, u_input.a.x);
    let var_1 = vec2<f32>(global2.b, 1189f);
    var var_2 = any(func_3(-128f, Struct_1(_wgslsmith_mod_vec2_u32(~vec2<u32>(global4.x, 0u), select(global2.a, vec2<u32>(74338u, 53194u), true)), -872f, 805f, select(global4.x > global4.x, all(arg_0.yz), arg_0.x)), arg_2));
    let var_3 = arg_2.a.b;
    let var_4 = Struct_1(vec2<u32>(firstLeadingBit(global4.x), 29129u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_f_op_f32(-arg_2.a.b), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~44128u, ~(~1u)), 2u)]);
    return arg_2;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = func_2(vec3<bool>(true, select(~103658u, _wgslsmith_add_u32(3825u, u_input.a.x), true) <= _wgslsmith_sub_u32(~1u, ~u_input.a.x), !(global2.a.x != ~4294967295u)), _wgslsmith_f_op_f32(ceil(global2.b)), global3[_wgslsmith_index_u32(1u, 19u)]);
    var var_1 = max(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_0, max(-422i >> (global2.a.x % 32u), arg_0), arg_0), arg_0), -_wgslsmith_sub_i32(-(0i << (global2.a.x % 32u)), arg_0));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) * global2.b);
    global3 = array<Struct_3, 19>();
    global4 = vec2<u32>(global4.x, 12674u);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 2>();
    global2 = func_1(38701i);
    let var_0 = global2.c;
    let var_1 = Struct_2(u_input.a >> (vec4<u32>(func_2(!vec3<bool>(global2.d, global0[_wgslsmith_index_u32(80778u, 2u)], true), _wgslsmith_f_op_f32(round(global2.b)), Struct_3(Struct_1(vec2<u32>(0u, 4294967295u), global2.c, 840f, false))).a.a.x, ~70135u, u_input.a.x, 13428u) % vec4<u32>(32u)));
    global0 = array<bool, 2>();
    var var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(abs(4294967295u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(floor(global2.c)), func_2(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], true, global0[_wgslsmith_index_u32(9908u, 2u)]), -911f, Struct_3(Struct_1(u_input.a.yy, 1034f, 1197f, global0[_wgslsmith_index_u32(var_2.a.x, 2u)]))).a.b, _wgslsmith_f_op_f32(-global2.c), -150f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.b, 457f, global2.c, global2.b), vec4<f32>(1903f, -152f, global2.b, global2.c), true)) + _wgslsmith_div_vec4_f32(vec4<f32>(-296f, 1205f, global2.c, -1128f), vec4<f32>(global2.c, 1218f, -752f, -756f)))), vec4<bool>(all(func_3(-1000f, Struct_1(var_2.a.xw, -766f, 2131f, false), global3[_wgslsmith_index_u32(var_1.a.x, 19u)])), false, !(!global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), func_1(44785i).d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-258f, global2.b, global2.b, global2.b))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1920f, 1399f, 2478f, -1685f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c, global2.b, global2.b, global2.b) - vec4<f32>(-546f, 583f, -252f, global2.c)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c, 335f, global2.c, global2.b) - vec4<f32>(-833f, 878f, 206f, global2.b)))))), firstLeadingBit(var_2.a), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2.c), global2.b, -214f, _wgslsmith_f_op_f32(min(-484f, global2.c))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.c, global2.c, global2.b, global2.c), vec4<f32>(global2.b, global2.c, global2.b, global2.c), vec4<bool>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)], false, false)))))))));
}

