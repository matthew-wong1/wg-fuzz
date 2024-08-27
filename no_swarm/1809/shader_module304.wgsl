struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

var<private> global1: u32;

var<private> global2: u32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: bool) -> u32 {
    return _wgslsmith_div_u32(firstLeadingBit(~_wgslsmith_mult_u32(65649u, abs(0u))), 24829u);
}

fn func_2() -> Struct_1 {
    global0 = array<bool, 9>();
    global1 = min(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, 1u)), _wgslsmith_div_vec2_u32(vec2<u32>(firstTrailingBit(14979u), ~26388u), firstLeadingBit(vec2<u32>(1u, 56544u)))), _wgslsmith_dot_vec4_u32(min(vec4<u32>(firstTrailingBit(73129u), _wgslsmith_add_u32(13121u, 1u), func_3(21928i, -540f, 1000f, true), _wgslsmith_add_u32(126290u, 41789u)), vec4<u32>(~4294967295u, ~29306u, 35070u, _wgslsmith_div_u32(64844u, 6885u))), vec4<u32>(~(~4294967295u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 24215u), vec3<u32>(4294967295u, 4294967295u, 30995u)), 1u, 0u)));
    var var_0 = vec4<bool>(true, !(!any(!vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 9u)], false))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, ~3594u) ^ select(1u, abs(~69550u), !global0[_wgslsmith_index_u32(49503u, 9u)] != global0[_wgslsmith_index_u32(0u, 9u)]), 9u)], true);
    global0 = array<bool, 9>();
    let var_1 = Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(abs(1u), 9u)], !var_0.x, global0[_wgslsmith_index_u32(0u, 9u)]), vec2<f32>(-946f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2234f + 1595f), -803f)) + -1000f)), select(vec2<bool>(all(!var_0.xyy), false), !vec2<bool>(true, var_0.x), select(select(!vec2<bool>(false, var_0.x), !var_0.xy, true), select(!vec2<bool>(false, var_0.x), vec2<bool>(true, var_0.x), all(var_0.zwy)), var_0.x)), 49187u);
    return var_1;
}

fn func_1(arg_0: i32) -> vec3<bool> {
    let var_0 = Struct_2(func_2(), !(!(!all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(13833u, 9u)], true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1663f), -972f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(123f)))))), func_2());
    var var_1 = countOneBits(countOneBits(_wgslsmith_div_vec2_i32(select(vec2<i32>(12220i, -2147483647i), vec2<i32>(u_input.a.x, arg_0), var_0.a.a.zx) >> ((vec2<u32>(var_0.a.d, 56055u) >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.a.zx)));
    var var_2 = var_0;
    global2 = var_0.d.d;
    var var_3 = Struct_2(Struct_1(vec3<bool>(!(var_0.a.b.x == var_0.c), var_2.b, all(vec4<bool>(true, var_2.d.a.x, global0[_wgslsmith_index_u32(77510u, 9u)], true))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a.b.x, var_0.c))), var_0.c), !vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.a.d, 9u)]), var_2.d.d), var_2.d.a.x, -160f, var_2.a);
    return select(!select(var_3.d.a, !(!var_3.d.a), true | any(vec3<bool>(global0[_wgslsmith_index_u32(45356u, 9u)], false, true))), var_3.d.a, global0[_wgslsmith_index_u32(var_3.d.d, 9u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(vec3<bool>(all(vec2<bool>(false, true)), any(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 9u)], true)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(195f, -685f) + vec2<f32>(234f, 828f)))), vec2<bool>(global0[_wgslsmith_index_u32(~(~0u), 9u)], global0[_wgslsmith_index_u32(countOneBits(6681u), 9u)] == any(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 9u)]))), firstTrailingBit(0u)), !global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(~57147u, 9410u), 9u)], -437f, Struct_1(func_1(~(-57587i) ^ _wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec2_f32(func_2().b + vec2<f32>(_wgslsmith_f_op_f32(-926f * -775f), -1662f)), func_1(max(-2147483647i, _wgslsmith_dot_vec3_i32(u_input.a.ywx, u_input.a.wzz))).zy, firstTrailingBit(0u)));
    let var_1 = func_2().d;
    global1 = ~(~var_1) << (89969u % 32u);
    global1 = ~var_1;
    let var_2 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(2038u, var_1, var_0.d.d)), abs(vec3<u32>(49516u, var_0.d.d, var_0.d.d))), min(~37991u, var_1)), var_1));
}

