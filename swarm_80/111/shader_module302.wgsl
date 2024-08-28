struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), -1i);

var<private> global1: array<vec2<u32>, 11>;

var<private> global2: vec2<u32>;

var<private> global3: array<i32, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> vec4<u32> {
    var var_0 = 12758u;
    return (_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(86885u, 78389u, 9783u, 0u)), _wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.b.x, 4294967295u, global2.x, arg_2), vec4<u32>(0u, 28092u, arg_2, global2.x))) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 11734u, arg_0.b.x, 0u), vec4<u32>(arg_2, 1u, global2.x, global2.x)) % vec4<u32>(32u))) >> (abs(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 80892u, 14576u, 20604u), vec4<u32>(1u, 1u, arg_0.b.x, 6241u)) & vec4<u32>(arg_2, global2.x, global2.x, arg_2))) % vec4<u32>(32u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    let var_0 = vec4<f32>(1000f, _wgslsmith_f_op_f32(-744f - 202f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-160f * 1272f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(370f)) + _wgslsmith_f_op_f32(-371f + -854f)))))), _wgslsmith_f_op_f32(-414f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_1 = -42861i;
    global2 = vec2<u32>(0u, global2.x);
    global0 = ~(~(-arg_1.a));
    let var_2 = arg_0.c;
    return global0.x;
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> Struct_2 {
    global0 = arg_1;
    global2 = vec2<u32>(_wgslsmith_dot_vec4_u32(reverseBits(func_2(Struct_1(arg_1, vec3<u32>(global2.x, 1u, global2.x)), arg_1.x, global2.x) << (vec4<u32>(global2.x, 16016u, global2.x, global2.x) % vec4<u32>(32u))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global2.x, global2.x, 12822u), ~vec4<u32>(global2.x, global2.x, global2.x, global2.x))), ~(~_wgslsmith_sub_u32(global2.x, ~30281u)));
    global3 = array<i32, 16>();
    global3 = array<i32, 16>();
    let var_0 = max(-(vec3<i32>(-7818i, func_3(Struct_2(vec2<bool>(false, true), 2147483647i, Struct_1(u_input.a, vec3<u32>(global2.x, global2.x, 1u))), Struct_1(u_input.a, vec3<u32>(4150u, global2.x, 10204u))), _wgslsmith_mod_i32(668i, global0.x)) << (select(vec3<u32>(46531u, global2.x, 127778u) >> (vec3<u32>(4294967295u, global2.x, 0u) % vec3<u32>(32u)), ~vec3<u32>(global2.x, global2.x, 37715u), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true))) % vec3<u32>(32u))), min(vec3<i32>(_wgslsmith_mod_i32(reverseBits(arg_1.x), global0.x), -arg_0, -30720i), vec3<i32>(-1i, ~global0.x, global3[_wgslsmith_index_u32(2155u, 16u)])));
    return Struct_2(vec2<bool>(!all(vec2<bool>(true, true)), all(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)))), _wgslsmith_mod_i32(0i, _wgslsmith_dot_vec3_i32(~vec3<i32>(35976i, 1i, arg_1.x), firstTrailingBit(vec3<i32>(global0.x, arg_1.x, u_input.a.x)))), Struct_1(vec2<i32>(abs(~(-1i)), 18310i), ~vec3<u32>(_wgslsmith_clamp_u32(1029u, global2.x, 85671u), firstTrailingBit(global2.x), 104u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -666f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1365f + -1078f) + 854f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1449f - 517f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-413f, 1000f, arg_1.a.x))))));
    global1 = array<vec2<u32>, 11>();
    global1 = array<vec2<u32>, 11>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, var_0.x, -1202f, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1040f, var_0.x, var_0.x, var_0.x)))))), vec4<f32>(156f, 338f, -1804f, _wgslsmith_f_op_f32(1574f - 158f))));
    let var_2 = select(select(vec4<bool>(all(func_1(u_input.a.x, arg_0.c.a).a), arg_2, false, all(vec3<bool>(arg_1.a.x, true, arg_2))), vec4<bool>((global2.x <= 6505u) || (var_0.x <= var_0.x), (arg_1.a.x || arg_2) && arg_1.a.x, any(vec4<bool>(true, arg_1.a.x, arg_0.a.x, arg_1.a.x)), arg_0.a.x), select(select(vec4<bool>(true, true, false, false), !vec4<bool>(arg_2, arg_1.a.x, arg_1.a.x, arg_0.a.x), any(vec4<bool>(arg_1.a.x, arg_2, true, true))), select(select(vec4<bool>(true, arg_0.a.x, true, true), vec4<bool>(true, arg_1.a.x, true, arg_0.a.x), vec4<bool>(false, arg_2, arg_0.a.x, arg_0.a.x)), vec4<bool>(arg_1.a.x, false, arg_0.a.x, false), !arg_0.a.x), !(!vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, true)))), vec4<bool>(arg_1.a.x, any(vec4<bool>(arg_0.a.x, true, true, arg_1.a.x)) | any(select(vec3<bool>(false, true, true), vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_1.a.x, arg_0.a.x, arg_0.a.x))), arg_1.a.x, arg_1.a.x), _wgslsmith_sub_u32(~648u, 24746u) <= firstLeadingBit(_wgslsmith_mult_u32(1u, ~arg_1.c.b.x)));
    return false;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(-(vec4<i32>(u_input.a.x, 923i, 23249i, arg_0.b) | vec4<i32>(global0.x, -12994i, u_input.a.x, arg_0.b)), -reverseBits(vec4<i32>(global3[_wgslsmith_index_u32(47684u, 16u)], 2147483647i, arg_0.c.a.x, u_input.a.x))), -(~(-1i))), _wgslsmith_sub_vec3_u32(~abs(arg_2.c.b), _wgslsmith_mod_vec3_u32(vec3<u32>(abs(arg_1.x), _wgslsmith_sub_u32(arg_0.c.b.x, 68670u), ~arg_1.x), arg_0.c.b)));
    let var_1 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(abs(var_0.b.x), ~(~global2.x), ~(~arg_1.x)), vec3<u32>(~(~1u), ~(~19119u), select(global2.x, ~global2.x, false)));
    var var_2 = func_1(countOneBits(-_wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(min(var_0.b.x, 54110u), 16u)], firstTrailingBit(1i), _wgslsmith_div_i32(global0.x, -2147483647i))), vec2<i32>(_wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(var_1.x, 16u)], u_input.a.x, 48711i, arg_2.c.a.x), vec4<i32>(arg_2.c.a.x, 0i, arg_0.c.a.x, arg_0.c.a.x))) & _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_2.c.a.x, 53905i, -1i), vec3<i32>(11109i, 2147483647i, arg_2.b)), firstTrailingBit(vec3<i32>(var_0.a.x, u_input.a.x, global0.x))), reverseBits(firstTrailingBit(16055i) | -13659i))).c;
    let var_3 = vec2<u32>(~1u, 0u) << (select(arg_2.c.b.yz, vec2<u32>(59700u, func_2(Struct_1(vec2<i32>(3174i, arg_2.c.a.x), var_0.b), func_1(-22327i, vec2<i32>(var_0.a.x, -13026i)).b, arg_0.c.b.x).x), true) % vec2<u32>(32u));
    var var_4 = var_1.xy;
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec4_u32((vec4<u32>(~global2.x, max(global2.x, 4294967295u), ~4294967295u, reverseBits(4294967295u)) & (vec4<u32>(global2.x, global2.x, global2.x, 1u) & ~vec4<u32>(global2.x, global2.x, global2.x, 7829u))) >> (~min(~vec4<u32>(4294967295u, global2.x, global2.x, global2.x), vec4<u32>(global2.x, global2.x, global2.x, 72188u) ^ vec4<u32>(17924u, 0u, 75512u, global2.x)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(~(~max(vec4<u32>(global2.x, global2.x, global2.x, global2.x), vec4<u32>(global2.x, 158248u, global2.x, 2251u))), vec4<u32>(global2.x, 34676u, ~abs(global2.x), global2.x)));
    global1 = array<vec2<u32>, 11>();
    let var_1 = func_5(Struct_2(select(vec2<bool>(true, true), vec2<bool>(var_0.x >= var_0.x, true), func_4(Struct_2(vec2<bool>(false, true), u_input.a.x, Struct_1(vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 16u)], 10846i), vec3<u32>(global2.x, var_0.x, global2.x))), func_1(global0.x, vec2<i32>(global0.x, -1835i)), true)), _wgslsmith_sub_i32(5850i, -(i32(-1i) * -35178i)), Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(22867i, global0.x), vec2<i32>(-1i, 2147483647i)), u_input.a), vec3<u32>(~global2.x, ~var_0.x, var_0.x))), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, ~firstLeadingBit(0u)), vec2<u32>(~1u, ~61928u) | ~firstTrailingBit(global1[_wgslsmith_index_u32(19155u, 11u)])), func_1(global0.x, u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-567f)), -277f, -1866f, 1000f))));
    let var_2 = select(vec2<bool>(true, !any(vec4<bool>(false, false, false, false))), vec2<bool>(false, true), func_4(Struct_2(vec2<bool>(true, false), var_1.a.x, var_1), func_1(global0.x, -_wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.a.x), vec2<i32>(global0.x, 11650i))), true));
    var var_3 = var_1;
    global1 = array<vec2<u32>, 11>();
    let var_4 = 7768u;
    var var_5 = vec2<bool>(true, !var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(reverseBits(var_3.a.x), select(-20795i, var_3.a.x, false)), _wgslsmith_sub_i32(~u_input.a.x, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_3.b.yx, vec2<u32>(17714u, var_4)), 16u)]), max(min(6477i, 0i), global3[_wgslsmith_index_u32(reverseBits(309u), 16u)]), min(u_input.a.x, 77631i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-142f, -1024f, -1638f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-178f, -1714f, -256f) - vec3<f32>(-1081f, -185f, -1507f)))), 4294967295u);
}

