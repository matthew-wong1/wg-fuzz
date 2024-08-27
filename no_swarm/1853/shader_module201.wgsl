struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false, true);

var<private> global1: array<f32, 2> = array<f32, 2>(-875f, 698f);

var<private> global2: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: i32, arg_3: Struct_3) -> u32 {
    let var_0 = Struct_5(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -587f), _wgslsmith_f_op_f32(-798f - global1[_wgslsmith_index_u32(1u, 2u)]), -161f, global1[_wgslsmith_index_u32(1u, 2u)])), u_input.a, Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, arg_1.a.x, arg_1.a.x) >> (vec3<u32>(1u, 0u, arg_0.a.a.x) % vec3<u32>(32u)), ~vec3<u32>(30554u, arg_0.a.a.x, 37576u)))), -27667i);
    global1 = array<f32, 2>();
    var var_1 = arg_2;
    let var_2 = arg_2;
    var var_3 = !global0.b & (var_0.a.a.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(413f + -101f)))));
    return min(arg_0.a.a.x, ~firstTrailingBit(~59575u));
}

fn func_2(arg_0: Struct_3) -> vec3<u32> {
    let var_0 = abs(~(~(~abs(vec4<u32>(1u, 23671u, u_input.a.x, u_input.a.x)))));
    let var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_sub_u32(var_0.x, 4294967295u)), 2u)];
    var var_2 = arg_0;
    var_2 = Struct_3(global0.a, (arg_0.b && any(!vec2<bool>(true, global0.b))) & !(!all(global2[_wgslsmith_index_u32(4294967295u, 15u)])));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(select(abs(u_input.a.x), func_3(Struct_4(Struct_1(vec3<u32>(31907u, 37296u, 1u)), vec3<bool>(true, arg_0.b, global0.b)), Struct_1(var_0.www), -36038i, arg_0), true), 2u)])))));
    return _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(~(vec3<u32>(var_0.x, u_input.a.x, u_input.a.x) | u_input.a), abs(vec3<u32>(24933u, var_0.x, 1u) << (vec3<u32>(1u, 1u, 0u) % vec3<u32>(32u)))), _wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.a.x, _wgslsmith_div_u32(32430u, var_0.x), reverseBits(44461u)), vec3<u32>(~1u, func_3(Struct_4(Struct_1(vec3<u32>(27510u, u_input.a.x, 2054u)), vec3<bool>(global0.b, var_2.b, var_2.b)), Struct_1(u_input.a), 16087i, arg_0), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, var_0.x, u_input.a.x), var_0)))) | (u_input.a << (vec3<u32>(u_input.a.x, 4088u, 4294967295u & _wgslsmith_div_u32(u_input.a.x, u_input.a.x)) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = ~vec3<i32>(reverseBits(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, -1i), vec3<i32>(u_input.b, u_input.b, -4535i)))), u_input.b, -1i);
    global1 = array<f32, 2>();
    let var_1 = global1[_wgslsmith_index_u32(func_2(Struct_3((select(true, global0.b, global0.a) && all(vec2<bool>(global0.a, false))) || false, any(select(select(vec4<bool>(true, global0.a, global0.a, false), global2[_wgslsmith_index_u32(arg_0.a.x, 15u)], vec4<bool>(false, false, false, true)), global2[_wgslsmith_index_u32(arg_0.a.x, 15u)], global2[_wgslsmith_index_u32(1u, 15u)])))).x, 2u)];
    let var_2 = select(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(~arg_0.a.x, ~arg_0.a.x, 4294967295u, 46814u), vec4<u32>(arg_0.a.x, _wgslsmith_mod_u32(countOneBits(4294967295u), 4294967295u), u_input.a.x, 32344u)), 15u)], !global2[_wgslsmith_index_u32(0u, 15u)], true && global0.a);
    let var_3 = true;
    return u_input.a.x < 3262u;
}

fn func_1(arg_0: u32) -> Struct_4 {
    var var_0 = vec3<bool>(!(global0.a || global0.a), true, select(true, func_4(Struct_1(func_2(Struct_3(true, global0.a)))), any(vec2<bool>(true, global0.b)) && global0.b));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-211f, global1[_wgslsmith_index_u32(14222u, 2u)], global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(56381u, 2u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global1[_wgslsmith_index_u32(arg_0, 2u)], -1365f, 1968f)), !global0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], -691f, -601f, global1[_wgslsmith_index_u32(u_input.a.x, 2u)])))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(arg_0, 2u)], global1[_wgslsmith_index_u32(u_input.a.x, 2u)], global1[_wgslsmith_index_u32(arg_0, 2u)], -1378f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(369f, global1[_wgslsmith_index_u32(0u, 2u)], 976f, 381f), vec4<f32>(-983f, -1156f, -1106f, -641f), global2[_wgslsmith_index_u32(arg_0, 15u)]))))), true)), select(func_2(Struct_3(var_0.x, true)), u_input.a, vec3<bool>(true, true, u_input.b < firstTrailingBit(u_input.b))), Struct_1(firstLeadingBit(select(min(u_input.a, vec3<u32>(30162u, u_input.a.x, 0u)), _wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(12603u, u_input.a.x, 14872u), u_input.a), vec3<bool>(var_0.x, true, global0.b)))));
    let var_2 = _wgslsmith_mod_vec2_u32(reverseBits(u_input.a.zy), (vec2<u32>(1u, 24144u) ^ countOneBits(u_input.a.yx)) << (vec2<u32>(select(_wgslsmith_dot_vec2_u32(vec2<u32>(27642u, 68935u), var_1.c.a.zy), ~1u, var_0.x), func_2(Struct_3(var_0.x, global0.a)).x) % vec2<u32>(32u)));
    let var_3 = countOneBits(_wgslsmith_div_vec4_u32(select(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, var_2.x, 4294967295u, arg_0), vec4<u32>(4015u, var_1.c.a.x, u_input.a.x, u_input.a.x))), select(~vec4<u32>(var_1.b.x, 1u, 1u, var_1.b.x), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(38318u, var_2.x, 23604u, var_1.b.x)), global2[_wgslsmith_index_u32(arg_0 | 0u, 15u)]), select(select(global2[_wgslsmith_index_u32(var_2.x, 15u)], vec4<bool>(global0.a, false, true, false), global2[_wgslsmith_index_u32(15740u, 15u)]), !global2[_wgslsmith_index_u32(1u, 15u)], !vec4<bool>(var_0.x, false, var_0.x, false))), vec4<u32>(var_2.x, ~0u, var_2.x, ~14052u) >> (vec4<u32>(_wgslsmith_add_u32(arg_0, 0u), ~4294967295u, _wgslsmith_div_u32(var_1.c.a.x, arg_0), u_input.a.x) % vec4<u32>(32u))));
    let var_4 = func_2(Struct_3(u_input.b < u_input.b, all(vec4<bool>(global0.a, all(vec3<bool>(var_0.x, global0.a, global0.b)), true, global0.b)))).x;
    return Struct_4(Struct_1(vec3<u32>(~select(var_1.b.x, arg_0, true), firstTrailingBit(~var_1.c.a.x), var_3.x)), !select(vec3<bool>(true, var_4 != var_1.c.a.x, any(vec2<bool>(true, global0.b))), !(!vec3<bool>(global0.b, false, true)), !var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_1(vec3<u32>(firstLeadingBit(5592u), u_input.a.x, reverseBits(6418u ^ u_input.a.x))), vec3<bool>(false, global0.a, true));
    var var_1 = Struct_4(var_0.a, !(!var_0.b));
    var_1 = func_1(1u);
    var var_2 = Struct_4(func_1(func_1(u_input.a.x).a.a.x).a, select(var_1.b, select(!(!vec3<bool>(global0.b, true, false)), select(select(vec3<bool>(var_1.b.x, var_1.b.x, var_0.b.x), var_0.b, var_1.b), vec3<bool>(true, false, false), vec3<bool>(global0.b, var_1.b.x, var_1.b.x)), u_input.a.x != var_0.a.a.x), vec3<bool>(true, global1[_wgslsmith_index_u32(39471u, 2u)] > _wgslsmith_f_op_f32(min(-1664f, 1113f)), var_1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-14634i, func_1(50394u).a.a);
}

