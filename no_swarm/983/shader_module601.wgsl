struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: u32 = 59092u;

var<private> global1: array<u32, 6> = array<u32, 6>(1u, 0u, 4294967295u, 23708u, 6323u, 41392u);

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(i32(-2147483648), 265f), Struct_1(-4251i, -1319f), Struct_1(1i, 489f));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_4, arg_1: u32) -> vec2<bool> {
    global1 = array<u32, 6>();
    return select(!(!vec2<bool>(any(arg_0.c), arg_0.c.x)), arg_0.c.wy, arg_0.c.xz);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_3) -> u32 {
    var var_0 = vec4<bool>(any(!vec2<bool>(true, all(vec2<bool>(arg_2.x, arg_2.x)))), arg_2.x, true || !arg_2.x, arg_2.x);
    var_0 = vec4<bool>(false, !arg_2.x, func_1(Struct_4(Struct_2(select(global1[_wgslsmith_index_u32(1u, 6u)], 77595u, var_0.x), Struct_1(27019i, global2.b)), vec2<u32>(7738u, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(65307u, 6u)], 6u)], 130568u)), select(vec4<bool>(false, true, false, var_0.x), select(arg_2, vec4<bool>(arg_2.x, var_0.x, true, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, var_0.x, arg_2.x, arg_2.x), vec4<bool>(false, false, true, arg_2.x))), arg_3.b), global1[_wgslsmith_index_u32(57658u, 6u)]).x, true);
    global2 = Struct_1(2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -563f));
    var var_1 = vec4<bool>(!(((global2.a & -28960i) ^ arg_3.c) < 2147483647i), any(var_0.zzz), max(global1[_wgslsmith_index_u32(32283u, 6u)], firstTrailingBit(32879u) >> (global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(1u, 6u)]), 6u)] % 32u)) <= global1[_wgslsmith_index_u32(0u, 6u)], any(select(vec3<bool>(select(true, true, var_0.x), arg_2.x | arg_2.x, var_0.x | true), !vec3<bool>(false, var_0.x, var_0.x), false)));
    global3 = array<Struct_1, 3>();
    return global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~69431u, 6u)], 6u)];
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(0u, global3[_wgslsmith_index_u32(~firstTrailingBit(func_3(Struct_1(0i, global2.b), 1326f, vec4<bool>(true, true, true, true), Struct_3(global3[_wgslsmith_index_u32(4294967295u, 3u)], vec2<i32>(global2.a, -1i), 1i))), 3u)]);
    global0 = ~_wgslsmith_div_u32(14094u, reverseBits(select(1u, ~0u, any(vec4<bool>(true, false, false, true)))));
    var var_1 = vec3<bool>(any(vec3<bool>(true, _wgslsmith_f_op_f32(1935f * global2.b) < _wgslsmith_f_op_f32(f32(-1f) * -938f), true)), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true))), (global2.b != _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.b.b)), var_0.b.b)) || all(vec2<bool>(true, true)));
    var var_2 = func_1(Struct_4(Struct_2(_wgslsmith_div_u32(1u, var_0.a), Struct_1(1i, _wgslsmith_f_op_f32(trunc(global2.b)))), ~abs(vec2<u32>(93578u, global1[_wgslsmith_index_u32(var_0.a, 6u)])), select(!select(vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(true, true, var_1.x, true), vec4<bool>(true, true, var_1.x, var_1.x)), !vec4<bool>(var_1.x, var_1.x, false, var_1.x), true), -_wgslsmith_mod_vec2_i32(~vec2<i32>(var_0.b.a, u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b.a, -43734i), vec2<i32>(-1i, -47756i)))), global1[_wgslsmith_index_u32(func_3(Struct_1(_wgslsmith_mod_i32(u_input.a >> (4294967295u % 32u), u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -266f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.b, -1000f))))), select(vec4<bool>(true, !var_1.x, var_1.x, true), select(vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(true, true, true, true), true), select(!vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), false)), Struct_3(Struct_1(i32(-1i) * -2147483647i, var_0.b.b), ~(-vec2<i32>(1i, -2147483647i)), global2.a >> (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.a, 6u)], 6u)], 6u)] % 32u))), 6u)]).x;
    let var_3 = var_0.a;
    return Struct_2(global1[_wgslsmith_index_u32(9770u, 6u)], Struct_1(u_input.a & u_input.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.b, _wgslsmith_f_op_f32(f32(-1f) * -800f)) - _wgslsmith_f_op_f32(global2.b + global2.b))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    global3 = array<Struct_1, 3>();
    global2 = arg_0.b;
    var var_0 = vec3<i32>(-u_input.a, _wgslsmith_add_i32(-abs(-2147483647i), -56111i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.a, -34567i), -vec2<i32>(-1i, 2147483647i))), firstLeadingBit(max(firstTrailingBit(abs(-8079i)), -1i)));
    var var_1 = func_2();
    var var_2 = -_wgslsmith_sub_vec4_i32(firstLeadingBit(select(-vec4<i32>(-2147483647i, -1i, global2.a, arg_0.b.a), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, 1i, -2147483647i, -34161i), vec4<i32>(-1i, u_input.a, -3612i, var_1.b.a)), -102f < global2.b)), ~_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(0i, global2.a, u_input.a, global2.a)), ~vec4<i32>(u_input.a, 53643i, var_1.b.a, var_1.b.a)));
    return Struct_1(u_input.a, 1309f);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_mod_u32(~_wgslsmith_sub_u32(0u ^ arg_0.x, _wgslsmith_div_u32(1u, arg_0.x)), global1[_wgslsmith_index_u32(arg_0.x, 6u)]), func_4(func_2()));
    let var_1 = vec4<bool>(false, !(!arg_1.x), true, true);
    let var_2 = ~vec4<i32>(-3194i, u_input.a, func_4(func_2()).a, 0i);
    let var_3 = Struct_4(Struct_2(select(~(~37032u), ~39056u, (-2147483647i < u_input.a) | func_1(Struct_4(Struct_2(var_0.a, Struct_1(1i, -317f)), vec2<u32>(arg_0.x, 2522u), vec4<bool>(arg_1.x, arg_1.x, var_1.x, false), vec2<i32>(var_2.x, -1i)), arg_0.x).x), Struct_1(u_input.a, var_0.b.b)), arg_0.zz, vec4<bool>(any(select(!var_1.zz, var_1.wx, !vec2<bool>(var_1.x, var_1.x))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.x, arg_0.x), 6u)] > var_0.a, !all(var_1), arg_1.x), _wgslsmith_mod_vec2_i32(vec2<i32>(abs(~arg_2.a), func_4(Struct_2(16395u, Struct_1(u_input.a, -1070f))).a), -var_2.zy));
    var var_4 = Struct_3(var_3.a.b, vec2<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_2.x), _wgslsmith_div_vec2_i32(vec2<i32>(-33498i, 0i), var_2.wz))), var_2.x);
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_i32(countOneBits(~(vec3<i32>(-1i) * -vec3<i32>(u_input.a, 17556i, u_input.a))), select(~vec3<i32>(~global2.a, ~u_input.a, _wgslsmith_div_i32(-2147483647i, 1i)), select(vec3<i32>(u_input.a, -1i, u_input.a) | vec3<i32>(-1i, u_input.a, global2.a), vec3<i32>(global2.a, -1i, firstTrailingBit(20089i)), any(vec3<bool>(true, true, true))), vec3<bool>(true, !(737f != global2.b), true)));
    var var_1 = global2.b;
    global3 = array<Struct_1, 3>();
    global2 = Struct_1(var_0.x, -1509f);
    global2 = func_5(vec3<u32>(4294967295u, 4294967295u, 3011u), select(vec2<bool>(!(100901u >= global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9187u, 6u)], 6u)]), true), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), func_1(Struct_4(Struct_2(1u, Struct_1(-2147483647i, -1000f)), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(78713u, 6u)], 6u)], 36879u), vec4<bool>(true, false, true, false), vec2<i32>(-1568i, u_input.a)), 4294967295u)), true), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(true, false, true))), func_4(func_2()));
    var var_2 = func_4(Struct_2(firstLeadingBit(firstLeadingBit(~77684u)), func_2().b));
    let var_3 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(func_2().a, global1[_wgslsmith_index_u32(1u, 6u)] >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 6u)], 6u)], 6u)], 6u)] % 32u)) | firstLeadingBit(~66288u), 4294967295u), 6u)], global3[_wgslsmith_index_u32(select(select(select(global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(1u, 6u)], true) | 15511u, 1u, true), global1[_wgslsmith_index_u32(4294967295u, 6u)], true), 3u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_div_i32(var_3.b.a, -8843i), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(var_0.x, var_0.x, 3588i)), -var_0)));
}

