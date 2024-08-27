struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26> = array<i32, 26>(-36358i, i32(-2147483648), 8302i, 0i, 20935i, 2147483647i, -22863i, 0i, -8965i, 1505i, 2147483647i, 1i, 2147483647i, 2147483647i, 16913i, 1756i, 14772i, 0i, -1i, 10737i, 0i, 42428i, 39682i, 82107i, 2147483647i, -1i);

var<private> global1: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(47229u, 0u, 26987u, 4294967295u), vec4<u32>(4124u, 36977u, 4294967295u, 1u), vec4<u32>(15308u, 0u, 1u, 23198u), vec4<u32>(1u, 12690u, 4294967295u, 59505u), vec4<u32>(1u, 66853u, 1u, 1u), vec4<u32>(46358u, 30771u, 26364u, 12215u), vec4<u32>(52535u, 0u, 1u, 4294967295u), vec4<u32>(4294967295u, 0u, 64247u, 40062u), vec4<u32>(4294967295u, 1u, 0u, 114876u), vec4<u32>(5532u, 0u, 16558u, 11417u), vec4<u32>(64375u, 4455u, 8081u, 1u), vec4<u32>(64223u, 4294967295u, 63765u, 8786u), vec4<u32>(4294967295u, 14354u, 34425u, 0u));

var<private> global2: array<vec4<bool>, 16>;

var<private> global3: f32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec3<bool> {
    global2 = array<vec4<bool>, 16>();
    var var_0 = arg_0.e;
    let var_1 = select(-_wgslsmith_sub_vec2_i32(arg_0.e, firstLeadingBit(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], arg_1))), -(~select(~vec2<i32>(arg_1, 4124i), ~arg_0.e, arg_0.d.x)), arg_0.d.yz);
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1516f, _wgslsmith_f_op_f32(1724f + 845f)))))));
    global0 = array<i32, 26>();
    return !select(vec3<bool>(arg_0.a.a, !(arg_0.a.b.x <= arg_0.b.x), _wgslsmith_f_op_f32(abs(1002f)) >= _wgslsmith_f_op_f32(sign(465f))), arg_0.c.xxx, !select(arg_0.d.yxz, arg_0.c.ywz, !arg_0.d.x));
}

fn func_2() -> i32 {
    let var_0 = false;
    var var_1 = Struct_2(Struct_1(all(select(vec3<bool>(var_0, true, var_0), func_3(Struct_2(Struct_1(true, global1[_wgslsmith_index_u32(u_input.b, 13u)]), vec3<u32>(u_input.b, u_input.b, u_input.b), global2[_wgslsmith_index_u32(u_input.b, 16u)], global2[_wgslsmith_index_u32(u_input.b, 16u)], vec2<i32>(global0[_wgslsmith_index_u32(48316u, 26u)], 8168i)), 17141i), true)), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, 0u) << (_wgslsmith_sub_vec4_u32(global1[_wgslsmith_index_u32(1u, 13u)], vec4<u32>(88342u, 50721u, 2255u, u_input.b)) % vec4<u32>(32u)), global1[_wgslsmith_index_u32(u_input.b, 13u)])), vec3<u32>(~select(23688u, select(0u, 76553u, var_0), func_3(Struct_2(Struct_1(var_0, global1[_wgslsmith_index_u32(u_input.b, 13u)]), vec3<u32>(u_input.b, 0u, 1u), global2[_wgslsmith_index_u32(u_input.b, 16u)], vec4<bool>(true, var_0, true, true), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], -48825i)), u_input.a).x), abs(u_input.b), u_input.b), !select(!(!vec4<bool>(true, var_0, true, false)), global2[_wgslsmith_index_u32(28544u, 16u)], vec4<bool>(true, true, false, any(global2[_wgslsmith_index_u32(4294967295u, 16u)]))), vec4<bool>(1f < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(968f - 1050f))), true, true, var_0), _wgslsmith_clamp_vec2_i32(vec2<i32>(~(global0[_wgslsmith_index_u32(u_input.b, 26u)] & u_input.a), -_wgslsmith_add_i32(2147483647i, global0[_wgslsmith_index_u32(11492u, 26u)])), _wgslsmith_add_vec2_i32(~vec2<i32>(-1i, global0[_wgslsmith_index_u32(1u, 26u)]) & reverseBits(vec2<i32>(5210i, -1i)), max(countOneBits(vec2<i32>(-41418i, 74311i)), firstTrailingBit(vec2<i32>(-28147i, u_input.a)))), min(vec2<i32>(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.b, 26u)], u_input.a), _wgslsmith_add_i32(-27873i, -47705i)), ~select(vec2<i32>(-8262i, u_input.a), vec2<i32>(1455i, global0[_wgslsmith_index_u32(31666u, 26u)]), true))));
    var var_2 = vec2<u32>(~14284u, u_input.b);
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -628f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1419f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -614f) - -160f))));
    var var_3 = var_1.a;
    return -851i;
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> i32 {
    let var_0 = 100629u;
    var var_1 = -62210i;
    var var_2 = !(!global2[_wgslsmith_index_u32(firstLeadingBit(var_0), 16u)]);
    var_2 = arg_0;
    let var_3 = (func_2() & -2147483647i) & abs(0i);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(~(~(_wgslsmith_clamp_i32(4724i, 0i, u_input.a) & firstLeadingBit(global0[_wgslsmith_index_u32(u_input.b, 26u)]))), 2147483647i);
    let var_1 = _wgslsmith_add_i32(-u_input.a, 0i);
    var_0 = abs(~(-1i));
    let var_2 = max(-_wgslsmith_div_vec3_i32((vec3<i32>(2147483647i, u_input.a, 2147483647i) | vec3<i32>(u_input.a, u_input.a, u_input.a)) << (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u)), vec3<i32>(max(var_1, 35374i), ~var_1, func_1(global2[_wgslsmith_index_u32(u_input.b, 16u)], 744f))), select(vec3<i32>(-68702i, ~0i, ~(-1i)), _wgslsmith_clamp_vec3_i32(firstLeadingBit(-vec3<i32>(-45031i, global0[_wgslsmith_index_u32(29077u, 26u)], 28918i)), vec3<i32>(-59721i, 1i, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(4294967295u, 26u)], -6931i)), (vec3<i32>(var_1, 0i, global0[_wgslsmith_index_u32(u_input.b, 26u)]) & vec3<i32>(var_1, global0[_wgslsmith_index_u32(1u, 26u)], u_input.a)) | -vec3<i32>(var_1, -1i, var_1)), func_3(Struct_2(Struct_1(true, global1[_wgslsmith_index_u32(u_input.b, 13u)]), vec3<u32>(0u, 8142u, 10615u), vec4<bool>(true, true, true, true), global2[_wgslsmith_index_u32(6768u, 16u)], vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 26u)], global0[_wgslsmith_index_u32(u_input.b, 26u)])), _wgslsmith_clamp_i32(var_1, global0[_wgslsmith_index_u32(30714u, 26u)], 2147483647i)).x && false));
    var_0 = -(~0i >> (0u % 32u));
    let var_3 = Struct_2(Struct_1(true, global1[_wgslsmith_index_u32(min(u_input.b, ~(~u_input.b)), 13u)]), vec3<u32>(countOneBits(~firstTrailingBit(u_input.b)), u_input.b, 78222u), select(select(vec4<bool>(true, true, true, true), select(select(global2[_wgslsmith_index_u32(u_input.b, 16u)], global2[_wgslsmith_index_u32(1u, 16u)], vec4<bool>(true, true, false, false)), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), global2[_wgslsmith_index_u32(abs(u_input.b), 16u)]), !select(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), 16u)], !global2[_wgslsmith_index_u32(u_input.b, 16u)], true), !((u_input.b >= u_input.b) && true)), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-985f, -1282f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(798f, -1556f, false))), true, true, all(select(vec4<bool>(true, true, true, true), !global2[_wgslsmith_index_u32(3445u, 16u)], vec4<bool>(true, true, true, true)))), _wgslsmith_div_vec2_i32(-select(firstTrailingBit(var_2.yy), var_2.zz, true), -var_2.yy));
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -1588f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(533f, -1267f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1707f - 305f), _wgslsmith_f_op_f32(step(-236f, 879f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -173f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2023f, _wgslsmith_f_op_f32(abs(377f)))) - 850f)) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -491f) - 621f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(118f - 275f))), -210f, -522f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, _wgslsmith_f_op_f32(290f + 1086f), -906f, _wgslsmith_f_op_f32(1000f * -567f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(561f, -1495f, -247f, -126f) - vec4<f32>(589f, 962f, -699f, 1766f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1384f, 1065f, -359f, -1605f)))))));
    var var_5 = var_1 | -2147483647i;
    global2 = array<vec4<bool>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1, var_2.x, global0[_wgslsmith_index_u32(var_3.a.b.x, 26u)], -1i), vec4<i32>(var_2.x, 1i, u_input.a, -44032i)) | vec4<i32>(-1i, var_1, 33847i, -14327i))), reverseBits(firstLeadingBit(i32(-1i) * -21601i)), ~vec2<u32>(~max(81334u, u_input.b), ~_wgslsmith_sub_u32(u_input.b, 11715u)), vec4<i32>(0i, u_input.a, ~(-max(1289i, 24646i)), var_3.e.x), var_4.x);
}

