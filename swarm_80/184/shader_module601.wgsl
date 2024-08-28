struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_2 = Struct_2(-1231i, Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, false)));

var<private> global2: array<u32, 10>;

var<private> global3: array<vec4<i32>, 19>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> f32 {
    let var_0 = u_input.b & firstTrailingBit(-_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(u_input.b.x, -1i, 0i)), -u_input.b));
    var var_1 = true;
    return arg_0.x;
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> u32 {
    global0 = !(!(false && (_wgslsmith_f_op_f32(-399f - 1570f) > _wgslsmith_f_op_f32(select(1036f, -719f, arg_0)))));
    var var_0 = Struct_2(-28908i, global1.b, global1.c);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(160f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1000f)))) * -1524f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1787f * -1318f)))), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(step(1f, _wgslsmith_div_f32(-1000f, -806f))))), arg_0)));
    var var_2 = Struct_2(select(arg_1.x, _wgslsmith_mod_i32(global1.a, select(-14815i, global1.a, false)), arg_0), var_0.b, var_0.c);
    global0 = var_2.c.a.x;
    return reverseBits(0u);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_1(vec3<bool>(true, arg_0.x, all(global1.c.a)));
    global3 = array<vec4<i32>, 19>();
    var var_1 = vec4<u32>(~global2[_wgslsmith_index_u32(arg_1.x, 10u)], 42921u, _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(func_3(true, global3[_wgslsmith_index_u32(30059u, 19u)]), _wgslsmith_mod_u32(28061u, u_input.a), ~0u), _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(~u_input.a, 10u)] & ~139604u, global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(u_input.a, 10u)] & ~26035u, 10u)]), 1u), countOneBits(arg_1.x));
    let var_2 = ~_wgslsmith_clamp_vec2_u32(~(var_1.wx << (~var_1.yx % vec2<u32>(32u))), firstTrailingBit(~countOneBits(vec2<u32>(arg_1.x, global2[_wgslsmith_index_u32(arg_1.x, 10u)]))), u_input.e);
    var_1 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 97893u, 1u, var_2.x), ~vec4<u32>(4294967295u, u_input.e.x, 16967u, 14581u)), vec4<u32>(select(var_2.x, var_1.x, false), 16070u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(17041u, var_2.x, 1081u, 21973u), vec4<u32>(0u, 25946u, 69130u, var_2.x)), ~vec4<u32>(var_2.x, arg_1.x, global2[_wgslsmith_index_u32(var_1.x, 10u)], var_1.x)), 5729u)), vec4<u32>(~func_3(all(vec3<bool>(false, false, arg_0.x)), global3[_wgslsmith_index_u32(75086u | var_2.x, 19u)]), arg_1.x ^ ~reverseBits(1u), _wgslsmith_div_u32(41552u, 20597u), var_2.x));
    return Struct_2(-2613i << (_wgslsmith_clamp_u32(107373u, arg_1.x, 1u) % 32u), Struct_1(vec3<bool>(!all(vec2<bool>(false, var_0.a.x)), all(var_0.a), false)), global1.c);
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = func_2(select(select(!(!vec4<bool>(arg_0.b.a.x, arg_0.b.a.x, global1.c.a.x, arg_0.b.a.x)), select(!vec4<bool>(global1.b.a.x, arg_0.c.a.x, false, true), vec4<bool>(false, arg_0.c.a.x, false, global1.b.a.x), !global1.c.a.x), select(vec4<bool>(false, global1.c.a.x, true, false), vec4<bool>(global1.c.a.x, global1.c.a.x, global1.b.a.x, global1.b.a.x), true)), select(!select(vec4<bool>(arg_0.c.a.x, global1.c.a.x, false, true), vec4<bool>(arg_0.c.a.x, arg_0.b.a.x, false, global1.b.a.x), global1.c.a.x), select(vec4<bool>(false, arg_0.c.a.x, arg_0.b.a.x, global1.b.a.x), select(vec4<bool>(global1.b.a.x, arg_0.b.a.x, global1.c.a.x, true), vec4<bool>(arg_0.b.a.x, global1.c.a.x, arg_0.c.a.x, arg_0.c.a.x), vec4<bool>(arg_0.c.a.x, true, global1.c.a.x, true)), !vec4<bool>(false, true, arg_0.b.a.x, true)), all(vec4<bool>(false, true, arg_0.b.a.x, global1.c.a.x)) & global1.b.a.x), select(select(vec4<bool>(global1.b.a.x, arg_0.b.a.x, arg_0.b.a.x, true), select(vec4<bool>(true, global1.c.a.x, true, true), vec4<bool>(true, global1.b.a.x, arg_0.b.a.x, global1.b.a.x), global1.c.a.x), func_2(vec4<bool>(global1.b.a.x, arg_0.b.a.x, global1.c.a.x, global1.c.a.x), u_input.c).b.a.x), !vec4<bool>(false, true, global1.b.a.x, false), !(!vec4<bool>(true, arg_0.c.a.x, true, arg_0.b.a.x)))), ~firstTrailingBit(vec3<u32>(u_input.c.x, global2[_wgslsmith_index_u32(21234u, 10u)], u_input.e.x))).b;
    global0 = global1.b.a.x;
    global3 = array<vec4<i32>, 19>();
    global2 = array<u32, 10>();
    var var_1 = Struct_1(func_2(!select(select(vec4<bool>(arg_0.b.a.x, false, true, var_0.a.x), vec4<bool>(var_0.a.x, true, true, global1.c.a.x), vec4<bool>(var_0.a.x, false, var_0.a.x, false)), !vec4<bool>(global1.b.a.x, arg_0.b.a.x, arg_0.b.a.x, true), !global1.b.a.x), min(firstLeadingBit(vec3<u32>(global2[_wgslsmith_index_u32(16104u, 10u)], 2519u, 4294967295u)), vec3<u32>(~20514u, global2[_wgslsmith_index_u32(0u, 10u)], firstLeadingBit(global2[_wgslsmith_index_u32(4294967295u, 10u)])))).b.a);
    return func_2(vec4<bool>(true, arg_0.c.a.x, func_2(vec4<bool>(global1.b.a.x, all(var_0.a), true, !var_1.a.x), u_input.c).c.a.x, _wgslsmith_f_op_f32(601f * -596f) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(988f)), _wgslsmith_f_op_f32(f32(-1f) * -1220f), var_1.a.x))), countOneBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(74829u, 10u)], global2[_wgslsmith_index_u32(6910u, 10u)], 4294967295u), abs(abs(u_input.c))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-115f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<f32>(1169f, 1352f, 820f, -332f), 13511u, 2034f, global1.b)) * _wgslsmith_f_op_f32(abs(174f))), -2205f)), _wgslsmith_div_f32(-1060f, -536f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_0.x)), var_0.x, !global1.b.a.x)), -1876f)) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1198f)), 1187f));
    global2 = array<u32, 10>();
    let var_2 = u_input.b;
    var var_3 = Struct_2(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.b, ~vec3<i32>(u_input.b.x, 36593i, var_2.x)), -u_input.b.x, abs(firstLeadingBit(var_2.x))), global1.b, func_4(func_2(vec4<bool>(true, select(global1.c.a.x, global1.b.a.x, false), global1.c.a.x != true, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 10u)], 10u)] != u_input.e.x), ~u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(var_1.x)), -943f))), -global1.a);
}

