struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(-2646f, -744f, 242f, 355f, 285f, 1335f, 1000f);

var<private> global1: i32;

var<private> global2: i32;

var<private> global3: array<u32, 29>;

var<private> global4: vec2<u32> = vec2<u32>(0u, 4294967295u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(ceil(552f));
    var var_1 = vec4<i32>(i32(-1i) * -52646i, -_wgslsmith_sub_i32(-1i, _wgslsmith_add_i32(reverseBits(-2516i), -6892i)), -49195i, -reverseBits(1i ^ (87206i << (global4.x % 32u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, -206f, var_0, global0[_wgslsmith_index_u32(global4.x, 7u)]), vec4<f32>(var_0, var_0, global0[_wgslsmith_index_u32(65484u, 7u)], -1000f), false)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, 1452f, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4.x, 29u)], 7u)], var_0), vec4<f32>(987f, global0[_wgslsmith_index_u32(global4.x, 7u)], 1347f, global0[_wgslsmith_index_u32(u_input.b, 7u)]), false)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-163f, -2017f, var_0, global0[_wgslsmith_index_u32(54641u, 7u)])))));
    var var_3 = ~vec3<u32>(13207u, 0u, 4294967295u);
    var var_4 = vec3<bool>(true, true, true);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_2.x - global0[_wgslsmith_index_u32(1u, 7u)]), var_0, _wgslsmith_f_op_f32(step(-1433f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1138f * global0[_wgslsmith_index_u32(u_input.a, 7u)]))))), _wgslsmith_f_op_f32(ceil(1f))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_3) -> f32 {
    var var_0 = abs(arg_0.zw);
    global0 = array<f32, 7>();
    var var_1 = Struct_3(arg_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    global4 = ~select(arg_0.zx, arg_0.zz, true);
    var var_2 = arg_2.b;
    return global0[_wgslsmith_index_u32(1u, 7u)];
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: bool) -> i32 {
    global0 = array<f32, 7>();
    global1 = arg_1;
    let var_0 = ~_wgslsmith_sub_i32(i32(-1i) * -arg_1, _wgslsmith_div_i32(arg_1, countOneBits(-1i)));
    let var_1 = Struct_4(~global4.x);
    global1 = -var_0;
    return ~2147483647i;
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: i32, arg_3: vec2<u32>) -> u32 {
    global0 = array<f32, 7>();
    let var_0 = func_5(!(!(!(global3[_wgslsmith_index_u32(1u, 29u)] >= u_input.a))), 1i, _wgslsmith_f_op_f32(func_4(~vec4<u32>(0u, 1u, arg_3.x, global4.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(-vec4<f32>(107f, global0[_wgslsmith_index_u32(4266u, 7u)], global0[_wgslsmith_index_u32(arg_3.x, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)])))), Struct_3(_wgslsmith_f_op_f32(step(348f, global0[_wgslsmith_index_u32(u_input.b, 7u)])), _wgslsmith_f_op_f32(f32(-1f) * -1192f)))) <= global0[_wgslsmith_index_u32(arg_3.x, 7u)]);
    let var_1 = arg_1.wx ^ -_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(var_0, -9907i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), arg_1.wz)), -arg_1.yy >> (vec2<u32>(global4.x, global4.x) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_clamp_vec3_i32(max(select(vec3<i32>(~var_1.x, -45419i, _wgslsmith_mult_i32(var_0, -11845i)), arg_1.wzx, !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), ~countOneBits(abs(vec3<i32>(var_1.x, var_0, 12490i)))), -vec3<i32>(arg_0, var_0, _wgslsmith_mod_i32(arg_1.x, _wgslsmith_sub_i32(var_0, 947i))), arg_1.yyx);
    var var_3 = Struct_4(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4294967295u, u_input.b, 24250u) | (vec4<u32>(24498u, 0u, u_input.a, 57035u) >> (vec4<u32>(u_input.b, 85788u, u_input.a, 1u) % vec4<u32>(32u))), max(abs(vec4<u32>(18795u, 3333u, 31011u, 0u)), vec4<u32>(global4.x, 88607u, 38948u, 1930u))));
    return ~17475u;
}

fn func_6(arg_0: u32, arg_1: Struct_4, arg_2: u32, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 7u)] * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(func_4(_wgslsmith_sub_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(u_input.b, 29u)], 4294967295u, arg_1.a, global4.x), vec4<u32>(4294967295u, arg_1.a, 66599u, global4.x)), vec4<f32>(-399f, -376f, -235f, 1785f), Struct_3(-687f, 1281f)))))));
    return Struct_1(-select(i32(-1i) * -43331i, _wgslsmith_dot_vec4_i32(vec4<i32>(11604i, 2147483647i, 0i, -42836i), vec4<i32>(0i, 0i, -1i, 13034i)), !arg_3.x) << ((~(~47696u) >> (u_input.b % 32u)) % 32u));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> vec2<bool> {
    let var_0 = Struct_2(func_6(~reverseBits(~0u), Struct_4(_wgslsmith_add_u32(20436u, 90524u) << (global4.x % 32u)), _wgslsmith_add_u32(46905u, func_2(arg_1.x, vec4<i32>(-46209i, -34047i, arg_1.x, arg_1.x), 0i, vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(37925u, 29u)]))) >> (_wgslsmith_mod_u32(42396u, ~global3[_wgslsmith_index_u32(u_input.b, 29u)]) % 32u), select(!(!vec4<bool>(arg_0, true, false, true)), !select(vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(arg_0, arg_0, arg_0, false), arg_0), false)), Struct_1(min(10155i, firstTrailingBit(arg_1.x))), 1u, 4294967295u, !any(!select(vec3<bool>(true, arg_0, true), vec3<bool>(false, true, false), vec3<bool>(arg_0, arg_0, false))));
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(22652u, 1u), select(_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(global4.x, 27348u)) << (~vec2<u32>(var_0.c, var_0.d) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(u_input.a, 29u)], 0u), vec2<u32>(82768u, global4.x)), vec2<u32>(24237u, 77072u))), ~(abs(vec2<u32>(var_0.c, 27794u)) << (firstLeadingBit(vec2<u32>(0u, 1u)) % vec2<u32>(32u))), arg_0));
    global3 = array<u32, 29>();
    var var_2 = arg_1.x > arg_1.x;
    return select(vec2<bool>(true, true), select(!(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, var_0.e))), !select(!vec2<bool>(var_0.e, var_0.e), !vec2<bool>(false, arg_0), select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, false), vec2<bool>(var_0.e, var_0.e))), vec2<bool>(true, select(false, true, var_0.e))), all(select(select(select(vec2<bool>(true, true), vec2<bool>(var_0.e, var_0.e), vec2<bool>(arg_0, false)), select(vec2<bool>(false, true), vec2<bool>(true, var_0.e), false), any(vec3<bool>(arg_0, false, var_0.e))), vec2<bool>(true, true), select(vec2<bool>(arg_0, arg_0), select(vec2<bool>(true, arg_0), vec2<bool>(var_0.e, var_0.e), vec2<bool>(var_0.e, var_0.e)), all(vec3<bool>(false, var_0.e, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(firstLeadingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global4.x, 29u)], 29u)] & u_input.b));
    global1 = 14692i;
    let var_1 = vec2<bool>(false, any(vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), any(func_1(true, vec3<i32>(-2147483647i, 8955i, -3434i))), !all(vec2<bool>(true, false)))));
    var var_2 = Struct_2(Struct_1(0i), func_6(countOneBits(u_input.a), var_0, ~(var_0.a | global3[_wgslsmith_index_u32(~u_input.a, 29u)]), !select(!vec4<bool>(false, var_1.x, var_1.x, var_1.x), !vec4<bool>(true, true, var_1.x, false), !vec4<bool>(var_1.x, true, var_1.x, var_1.x))), 14527u, ~(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(35736u, 29u)], 29u)] ^ _wgslsmith_div_u32(global3[_wgslsmith_index_u32(41001u ^ global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(37963u, 29u)], 29u)], 29u)], select(u_input.b, global4.x, false))), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(_wgslsmith_clamp_i32(var_2.b.a | -var_2.a.a, func_5(var_2.e, var_2.b.a, false), 1i), -1i));
}

