struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: Struct_2,
    d: u32,
    e: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: i32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<u32>(5789u, 332u, 17740u, 34403u), 742f, Struct_2(Struct_1(-4430i, vec3<i32>(-8213i, 32162i, i32(-2147483648)), vec3<bool>(true, false, false), 1i), vec3<bool>(true, true, false)), 4294967295u, vec2<u32>(29797u, 1u));

var<private> global1: array<bool, 1>;

var<private> global2: array<bool, 21> = array<bool, 21>(true, true, true, true, false, false, true, false, false, false, false, true, true, false, false, true, true, true, true, false, false);

var<private> global3: array<bool, 19> = array<bool, 19>(false, false, true, true, false, false, true, true, true, false, true, true, false, false, true, true, false, true, false);

var<private> global4: array<u32, 6> = array<u32, 6>(39486u, 79661u, 1u, 4294967295u, 3838u, 44409u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_2) -> bool {
    let var_0 = arg_2.a;
    var var_1 = vec4<bool>(any(select(vec4<bool>(!global2[_wgslsmith_index_u32(arg_1, 21u)], -27591i > arg_2.a.a, any(vec2<bool>(false, global1[_wgslsmith_index_u32(arg_1, 1u)])), true), !vec4<bool>(true, true, false, arg_2.a.c.x), !(!arg_2.a.c.x))), true, true, !(global0.c.a.c.x || global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(129u, min(10530u, u_input.c)), 21u)]));
    global3 = array<bool, 19>();
    var var_2 = arg_2.a.b;
    var var_3 = arg_2;
    return true;
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    var var_0 = Struct_4(0u, u_input.b << (firstLeadingBit(global4[_wgslsmith_index_u32(45636u, 6u)]) % 32u), global0.c.a.d, global0.c, global0.c.a);
    var var_1 = 0i;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -218f) + global0.b))), _wgslsmith_f_op_f32(floor(595f)));
    var var_3 = Struct_3(global0.a, var_2.x, global0.c, global0.d, global0.e);
    var_3 = Struct_3(vec4<u32>(12314u, 74953u, 11996u, firstTrailingBit(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(9626u, 0u), global0.e)))), 2043f, Struct_2(var_3.c.a, vec3<bool>(true, !any(var_0.e.c.xx), var_0.e.c.x)), var_3.e.x, ~arg_0.yx);
    return Struct_3(select(global0.a | ~global0.a, global0.a, select(!vec4<bool>(true, true, var_3.c.a.c.x, false), vec4<bool>(global3[_wgslsmith_index_u32(~4294967295u, 19u)], func_3(var_0.d.a.b, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(33485u, 6u)], 6u)], var_3.c), false, var_0.e.c.x), select(vec4<bool>(global0.c.b.x, global0.c.b.x, global2[_wgslsmith_index_u32(u_input.a, 21u)], true), select(vec4<bool>(global0.c.b.x, true, false, false), vec4<bool>(global0.c.a.c.x, var_0.d.b.x, true, false), global1[_wgslsmith_index_u32(20591u, 1u)]), func_3(var_3.c.a.b, 32420u, Struct_2(Struct_1(u_input.b, var_0.e.b, vec3<bool>(true, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(26125u, 6u)], 21u)], global3[_wgslsmith_index_u32(1u, 19u)]), 19766i), vec3<bool>(var_3.c.a.c.x, false, true)))))), var_3.b, var_3.c, _wgslsmith_mult_u32(0u, ~(~0u)), firstTrailingBit(~u_input.d.zw));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_3) -> i32 {
    var var_0 = -206f;
    let var_1 = 8606u;
    let var_2 = func_2(vec3<u32>(global4[_wgslsmith_index_u32(~var_1, 6u)], 20710u, _wgslsmith_div_u32(u_input.d.x, ~1u))).c;
    var var_3 = global0.c.a;
    var var_4 = max(-countOneBits(~vec2<i32>(arg_2.c.a.a, -7612i)), func_2(~select(vec3<u32>(global0.a.x, 49874u, 92968u) ^ global0.a.yxy, vec3<u32>(u_input.a, arg_2.a.x, var_1), func_2(vec3<u32>(55611u, var_1, global4[_wgslsmith_index_u32(83440u, 6u)])).c.b)).c.a.b.xx);
    return max(countOneBits(~(-func_2(arg_2.a.www).c.a.d)), _wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_mult_vec2_i32(arg_2.c.a.b.yz, var_2.a.b.xx)), ~select(global0.c.a.b.zx, vec2<i32>(var_2.a.b.x, u_input.b), var_3.c.x) ^ vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(-2147483647i, -4216i, -2147483647i))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = func_4(reverseBits(-(~_wgslsmith_mod_i32(u_input.b, arg_1.a.a))), 26199i, func_2(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(firstTrailingBit(u_input.d.yxz), ~global0.a.yyw), vec3<u32>(1u, u_input.c << (19502u % 32u), _wgslsmith_mult_u32(104288u, 0u)))));
    global3 = array<bool, 19>();
    var var_1 = Struct_3(~max(vec4<u32>(u_input.c, global0.e.x, 0u, u_input.d.x), vec4<u32>(u_input.c, 44432u, global0.a.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 6u)], 6u)])) >> (global0.a % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1539f)), Struct_2(arg_1.a, select(vec3<bool>(false & global0.c.a.c.x, global3[_wgslsmith_index_u32(30026u, 19u)] || arg_1.a.c.x, true), arg_1.a.c, arg_1.b)), global4[_wgslsmith_index_u32(u_input.c, 6u)], u_input.d.xz);
    global1 = array<bool, 1>();
    global1 = array<bool, 1>();
    return vec3<u32>(_wgslsmith_clamp_u32(u_input.a >> (abs(_wgslsmith_sub_u32(4294967295u, 1u)) % 32u), _wgslsmith_add_u32(u_input.c, ~(~0u)), ~global4[_wgslsmith_index_u32(u_input.c, 6u)]), global0.d << (75815u % 32u), ~abs(13553u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(global0.c.a.b, (select(~vec3<i32>(2147483647i, 14215i, -21035i), global0.c.a.b | vec3<i32>(-3521i, u_input.b, -2147483647i), true) << (~(~vec3<u32>(15418u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 0u)) % vec3<u32>(32u))) << (select(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, 567f, global0.b, 288f)), Struct_2(Struct_1(-35968i, vec3<i32>(u_input.b, u_input.b, global0.c.a.d), vec3<bool>(false, false, global0.c.a.c.x), 1i), global0.c.b)), ~min(vec3<u32>(4851u, global0.e.x, global4[_wgslsmith_index_u32(u_input.a, 6u)]), vec3<u32>(0u, global0.d, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 6u)], 6u)])), func_2(vec3<u32>(170u, 4294967295u, 32193u)).c.a.c) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, -509f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(212f, global0.b)) + _wgslsmith_f_op_f32(f32(-1f) * -702f)), 845f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(923f, _wgslsmith_f_op_f32(f32(-1f) * -790f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * global0.b)), 814f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(527f, -2237f, global0.b, global0.b))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-302f, global0.b, global0.b, 1860f))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, global0.b, -1038f, 646f) + vec4<f32>(1341f, global0.b, global0.b, global0.b)))))));
}

