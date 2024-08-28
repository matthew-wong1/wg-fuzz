struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, false, true), 4294967295u, true, vec3<i32>(11594i, -1i, 14947i), -144f);

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<bool>(true, true, true), 0u, true, vec3<i32>(1i, 0i, -1i), 1160f), Struct_1(vec3<bool>(false, false, true), 2216u, false, vec3<i32>(0i, i32(-2147483648), -35245i), -1677f), Struct_1(vec3<bool>(true, false, false), 4294967295u, true, vec3<i32>(-1i, -1i, 2147483647i), -1128f), Struct_1(vec3<bool>(false, false, false), 8112u, true, vec3<i32>(2147483647i, 2147483647i, -8883i), -265f), Struct_1(vec3<bool>(false, true, false), 0u, true, vec3<i32>(-8391i, 25039i, -1i), -1275f), Struct_1(vec3<bool>(false, false, true), 4294967295u, false, vec3<i32>(2147483647i, -39908i, 13872i), -929f), Struct_1(vec3<bool>(false, false, false), 0u, false, vec3<i32>(0i, -45543i, 1i), -1000f), Struct_1(vec3<bool>(true, true, false), 95207u, false, vec3<i32>(-46089i, i32(-2147483648), 1i), -1264f), Struct_1(vec3<bool>(true, false, true), 0u, true, vec3<i32>(2147483647i, -9960i, 12324i), 354f), Struct_1(vec3<bool>(false, true, false), 1u, true, vec3<i32>(i32(-2147483648), -25740i, -33967i), 290f), Struct_1(vec3<bool>(false, true, false), 60465u, true, vec3<i32>(-25946i, i32(-2147483648), 8056i), -494f), Struct_1(vec3<bool>(true, true, false), 77088u, false, vec3<i32>(18134i, i32(-2147483648), i32(-2147483648)), -328f), Struct_1(vec3<bool>(false, true, true), 1103u, true, vec3<i32>(-45156i, 2147483647i, -43751i), -1000f), Struct_1(vec3<bool>(false, false, true), 1u, false, vec3<i32>(36504i, 1i, 9440i), 1313f), Struct_1(vec3<bool>(false, true, false), 1u, false, vec3<i32>(-21382i, -63454i, -1i), 780f), Struct_1(vec3<bool>(true, true, false), 88290u, true, vec3<i32>(i32(-2147483648), -6424i, -124i), 706f), Struct_1(vec3<bool>(true, true, true), 1u, false, vec3<i32>(2147483647i, -53181i, -30061i), 306f), Struct_1(vec3<bool>(true, false, true), 0u, false, vec3<i32>(2147483647i, -1i, -7994i), -1242f), Struct_1(vec3<bool>(false, true, false), 42519u, false, vec3<i32>(1i, 56780i, 21237i), -499f), Struct_1(vec3<bool>(false, true, false), 4294967295u, true, vec3<i32>(13450i, 27785i, 2569i), 1514f), Struct_1(vec3<bool>(true, false, false), 8922u, false, vec3<i32>(52495i, i32(-2147483648), -4663i), 1000f), Struct_1(vec3<bool>(true, true, true), 35620u, true, vec3<i32>(-1i, 6074i, 1i), -299f), Struct_1(vec3<bool>(true, false, true), 2036u, true, vec3<i32>(17234i, -1i, 24220i), 797f), Struct_1(vec3<bool>(true, false, true), 36005u, false, vec3<i32>(8922i, 33773i, i32(-2147483648)), 663f));

var<private> global2: array<f32, 1>;

var<private> global3: vec3<bool>;

var<private> global4: array<bool, 5>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: bool, arg_1: f32) -> i32 {
    global1 = array<Struct_1, 24>();
    return u_input.b;
}

fn func_3(arg_0: i32) -> Struct_1 {
    global1 = array<Struct_1, 24>();
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 1u)], global0.e))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(global0.b, 1u)], global2[_wgslsmith_index_u32(1u, 1u)]) * vec2<f32>(global2[_wgslsmith_index_u32(75558u, 1u)], 1440f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1540f, global0.e))))));
    let var_1 = Struct_1(global0.a, 38262u, false, -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b << (u_input.a.x % 32u), arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(36111i, 69888i, u_input.b), vec3<i32>(arg_0, 2147483647i, u_input.b))), ~vec3<i32>(1i, u_input.b, -62437i) | global0.d), var_0.x);
    let var_2 = Struct_1(!select(select(!global0.a, select(global0.a, vec3<bool>(var_1.c, true, global4[_wgslsmith_index_u32(global0.b, 5u)]), global0.a), global3.x), !vec3<bool>(true, global3.x, true), vec3<bool>(all(vec4<bool>(global0.c, false, global0.a.x, global0.a.x)), arg_0 >= u_input.b, u_input.a.x >= 4294967295u)), 13633u, true, global0.d, 776f);
    global3 = !(!var_2.a);
    return Struct_1(!vec3<bool>(true, !all(vec4<bool>(true, false, true, global3.x)), var_2.c), var_1.b, global3.x | any(!global0.a), _wgslsmith_sub_vec3_i32(global0.d, vec3<i32>(_wgslsmith_div_i32(var_2.d.x, -35522i), -1i, -48483i) >> (vec3<u32>(86891u, min(global0.b, 36578u), 7892u) % vec3<u32>(32u))), 389f);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: u32) -> u32 {
    global1 = array<Struct_1, 24>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-143f)))) * _wgslsmith_f_op_f32(max(global0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1866f + _wgslsmith_f_op_f32(f32(-1f) * -818f))))));
    let var_1 = countOneBits(u_input.a);
    let var_2 = global0.e;
    let var_3 = func_3(func_2(!global0.a.x, global0.e));
    return _wgslsmith_mod_u32(17922u, ~var_3.b & _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(arg_2, var_3.b), ~18948u, u_input.a.x, var_3.b), _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(22217u, arg_2, 4294967295u, arg_2)), vec4<u32>(58725u, 1u, 52908u, 1470u))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = ~vec3<u32>(47732u, ~global0.b, ~arg_0.b);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-457f * _wgslsmith_f_op_f32(max(477f, 236f))), _wgslsmith_f_op_f32(-arg_1))));
    var var_2 = global4[_wgslsmith_index_u32(u_input.a.x, 5u)];
    let var_3 = arg_0;
    let var_4 = func_3(arg_0.d.x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(u_input.a.x, 1u)]))), -global0.d.yy, _wgslsmith_mod_u32(countOneBits(u_input.a.x), _wgslsmith_add_u32(u_input.a.x, u_input.a.x))), _wgslsmith_dot_vec3_u32(~(~u_input.a), vec3<u32>(4294967295u, ~u_input.a.x, 25038u))), 24u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.e * _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(0u, 1u)])))))));
    let var_1 = Struct_1(func_4(global1[_wgslsmith_index_u32(1u, 24u)], -652f).a, _wgslsmith_div_u32(func_1(vec2<f32>(-198f, _wgslsmith_f_op_f32(select(global0.e, 1146f, true))), ~global0.d.zz << (vec2<u32>(global0.b, var_0.b) % vec2<u32>(32u)), global0.b), 47166u), true, _wgslsmith_mod_vec3_i32(var_0.d, vec3<i32>(firstLeadingBit(var_0.d.x), ~var_0.d.x >> (~24660u % 32u), func_3(u_input.b).d.x)), -239f);
    let var_2 = _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, var_0.b, u_input.a.x, var_1.b) & select(vec4<u32>(1u, 49998u, 0u, u_input.a.x), vec4<u32>(global0.b, 92374u, 1u, u_input.a.x), false), _wgslsmith_sub_vec4_u32(~vec4<u32>(global0.b, var_1.b, 16920u, var_0.b), vec4<u32>(61410u, global0.b, var_1.b, var_0.b))), _wgslsmith_sub_u32(1u, ~reverseBits(var_1.b & u_input.a.x)));
    global4 = array<bool, 5>();
    let var_3 = func_3(var_0.d.x);
    let var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(557f)))));
    global2 = array<f32, 1>();
    var var_5 = countOneBits(countOneBits(global0.d));
    let x = u_input.a;
    s_output = StorageBuffer(1f);
}

