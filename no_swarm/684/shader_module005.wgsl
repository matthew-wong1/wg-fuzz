struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

var<private> global1: vec4<i32> = vec4<i32>(2147483647i, 1i, -1i, 15307i);

var<private> global2: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec3<u32>(31092u, 5932u, 0u)), Struct_3(vec3<u32>(34646u, 31263u, 4294967295u)), Struct_3(vec3<u32>(4294967295u, 41825u, 1u)), Struct_3(vec3<u32>(16304u, 0u, 1u)), Struct_3(vec3<u32>(0u, 1u, 27908u)), Struct_3(vec3<u32>(1u, 0u, 33637u)), Struct_3(vec3<u32>(4079u, 4294967295u, 43545u)), Struct_3(vec3<u32>(4294967295u, 187u, 4294967295u)), Struct_3(vec3<u32>(1u, 1u, 4294967295u)), Struct_3(vec3<u32>(0u, 42835u, 4294967295u)), Struct_3(vec3<u32>(4294967295u, 0u, 0u)), Struct_3(vec3<u32>(0u, 71677u, 11146u)), Struct_3(vec3<u32>(15403u, 4294967295u, 1u)), Struct_3(vec3<u32>(31920u, 0u, 966u)), Struct_3(vec3<u32>(19996u, 0u, 0u)), Struct_3(vec3<u32>(1u, 96538u, 23810u)), Struct_3(vec3<u32>(6827u, 4294967295u, 33512u)), Struct_3(vec3<u32>(0u, 12779u, 25185u)), Struct_3(vec3<u32>(6538u, 1u, 44560u)), Struct_3(vec3<u32>(1u, 62036u, 99947u)), Struct_3(vec3<u32>(35696u, 105861u, 70624u)), Struct_3(vec3<u32>(1u, 1u, 4294967295u)));

var<private> global3: array<f32, 29> = array<f32, 29>(-800f, 1044f, 315f, 313f, -334f, -493f, -1331f, -1000f, 1328f, -104f, 480f, -741f, 115f, -800f, -1468f, -1553f, -824f, 431f, -610f, 2809f, 1664f, 786f, -1301f, 165f, 1915f, -287f, 183f, 113f, 629f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: vec2<bool>) -> Struct_4 {
    let var_0 = ~_wgslsmith_clamp_u32(~u_input.d, _wgslsmith_add_u32(_wgslsmith_sub_u32(4676u, 0u) << (select(u_input.d, u_input.d, false) % 32u), 4294967295u), _wgslsmith_mult_u32(48239u, u_input.d));
    global1 = vec4<i32>(u_input.a.x, 1i, ~(abs(~u_input.c) << ((var_0 << (var_0 % 32u)) % 32u)), -59029i);
    global0 = array<bool, 14>();
    var var_1 = Struct_4(global2[_wgslsmith_index_u32(abs(1u), 22u)], u_input.d);
    global3 = array<f32, 29>();
    return Struct_4(Struct_3(~_wgslsmith_add_vec3_u32(~vec3<u32>(var_1.a.a.x, var_1.a.a.x, 58745u), var_1.a.a)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, 0u), u_input.d));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_4) -> Struct_3 {
    let var_0 = Struct_5(vec3<u32>(_wgslsmith_clamp_u32(u_input.d, 59467u, 4294967295u), u_input.d, select(u_input.d, abs(0u), global0[_wgslsmith_index_u32(u_input.d, 14u)])), -306f, arg_1.a);
    let var_1 = !vec2<bool>(!(!(arg_1.b <= arg_1.a.a.x)), all(select(!vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 14u)], true, global0[_wgslsmith_index_u32(u_input.d, 14u)], global0[_wgslsmith_index_u32(u_input.d, 14u)]), vec4<bool>(true, true, true, true), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(17580u, 14u)], false, false))));
    var var_2 = ~_wgslsmith_mod_u32(~(~23308u), ~(~9491u >> (firstLeadingBit(u_input.d) % 32u)));
    var var_3 = u_input.d;
    var var_4 = -2147483647i;
    return func_2(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(135f, _wgslsmith_f_op_f32(-arg_0.x), 266f, -1223f), vec4<f32>(_wgslsmith_f_op_f32(ceil(1379f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 29u)] - arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_1.b, 29u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1464f, var_0.b, 364f, 966f), vec4<f32>(arg_0.x, 780f, global3[_wgslsmith_index_u32(u_input.d, 29u)], 266f), vec4<bool>(true, false, global0[_wgslsmith_index_u32(63672u, 14u)], var_1.x))))))), i32(-1i) * -1i, select(!(!(!vec2<bool>(var_1.x, global0[_wgslsmith_index_u32(0u, 14u)]))), select(vec2<bool>(true, true), select(var_1, select(vec2<bool>(true, global0[_wgslsmith_index_u32(60393u, 14u)]), var_1, var_1), all(vec4<bool>(true, true, false, var_1.x))), !vec2<bool>(var_1.x, false)), vec2<bool>(238f <= _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_1.b, 29u)] + 1032f), var_1.x))).a;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> i32 {
    var var_0 = u_input.b;
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -34597i) | ~_wgslsmith_clamp_vec2_i32(~vec2<i32>(global1.x, -12928i), vec2<i32>(-2147483647i, u_input.a.x), abs(global1.xz)), select(u_input.a.xz, vec2<i32>(36247i, abs(~10950i)), any(vec4<bool>(!arg_3.a.x, true, arg_1.b <= arg_0.x, select(arg_1.a.x, false, global0[_wgslsmith_index_u32(4294967295u, 14u)])))));
    var var_2 = Struct_4(func_3(_wgslsmith_f_op_vec2_f32(floor(arg_0.xx)), func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b, -686f, 391f, arg_0.x) * vec4<f32>(716f, arg_0.x, global3[_wgslsmith_index_u32(69693u, 29u)], global3[_wgslsmith_index_u32(u_input.d, 29u)])), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, -1032f, -1000f, arg_3.b), vec4<f32>(arg_0.x, -479f, arg_0.x, global3[_wgslsmith_index_u32(u_input.d, 29u)]), arg_3.a.x)), select(vec4<bool>(false, false, false, false), vec4<bool>(global0[_wgslsmith_index_u32(8234u, 14u)], false, global0[_wgslsmith_index_u32(1u, 14u)], true), vec4<bool>(false, false, arg_1.a.x, arg_1.a.x)))), 0i, !select(vec2<bool>(global0[_wgslsmith_index_u32(27369u, 14u)], false), vec2<bool>(arg_1.a.x, arg_3.a.x), arg_1.a.x))), u_input.d);
    var var_3 = vec2<i32>(max(firstTrailingBit(arg_2), countOneBits(arg_2 ^ u_input.a.x)), ~_wgslsmith_div_i32(~arg_2, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, arg_2), u_input.a.zx)));
    var var_4 = Struct_2(arg_1, arg_3.a);
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -924f))))));
    global1 = select(-vec4<i32>(-23391i, u_input.b | u_input.b, firstLeadingBit(1i), _wgslsmith_sub_i32(5854i, func_1(vec3<f32>(-465f, 109f, global3[_wgslsmith_index_u32(u_input.d, 29u)]), Struct_1(vec3<bool>(true, false, true), 108f), 2147483647i, Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(0u, 14u)], false), -909f)))), vec4<i32>(global1.x, abs(-_wgslsmith_sub_i32(0i, global1.x)), i32(-1i) * -1i, _wgslsmith_add_i32(_wgslsmith_mult_i32(func_1(vec3<f32>(global3[_wgslsmith_index_u32(1u, 29u)], global3[_wgslsmith_index_u32(u_input.d, 29u)], 793f), Struct_1(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 14u)], global0[_wgslsmith_index_u32(u_input.d, 14u)]), global3[_wgslsmith_index_u32(18908u, 29u)]), global1.x, Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 14u)], global0[_wgslsmith_index_u32(u_input.d, 14u)], global0[_wgslsmith_index_u32(9925u, 14u)]), -797f)), 0i), (u_input.a.x | global1.x) << (u_input.d % 32u))), false);
    let var_1 = any(vec4<bool>((global3[_wgslsmith_index_u32(u_input.d, 29u)] >= global3[_wgslsmith_index_u32(65053u, 29u)]) && true, global0[_wgslsmith_index_u32(~(~u_input.d), 14u)], !all(vec4<bool>(global0[_wgslsmith_index_u32(16445u, 14u)], false, true, true)), !all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 14u)], false, false, global0[_wgslsmith_index_u32(u_input.d, 14u)]))));
    let var_2 = Struct_4(global2[_wgslsmith_index_u32(0u, 22u)], ~(~14048u));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global3[_wgslsmith_index_u32(1u, 29u)], global3[_wgslsmith_index_u32(u_input.d, 29u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 29u)], -1265f) + vec2<f32>(-1928f, 495f)))), vec2<f32>(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(4294967295u, 29u)])), -493f), var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.xz, u_input.a.zx), global1.zz, vec2<i32>(_wgslsmith_div_i32(-global1.x, -1i), global1.x)));
}

