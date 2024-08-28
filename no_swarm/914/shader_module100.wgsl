struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), -20885i), 1u);

var<private> global1: Struct_4;

var<private> global2: vec3<bool>;

var<private> global3: bool = false;

var<private> global4: array<bool, 5>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32) -> i32 {
    global2 = select(select(select(vec3<bool>(global2.x, global2.x, any(vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 5u)], false, global4[_wgslsmith_index_u32(0u, 5u)], true))), vec3<bool>(all(vec3<bool>(global2.x, false, false)), true, false), false), vec3<bool>(!(4294967295u != global0.b), global4[_wgslsmith_index_u32(abs(14788u), 5u)] && !global2.x, global0.a.x > max(0i, -1i)), select(vec3<bool>(true, all(vec3<bool>(global4[_wgslsmith_index_u32(6519u, 5u)], global4[_wgslsmith_index_u32(u_input.a.x, 5u)], false)), select(global2.x, false, global2.x)), select(select(vec3<bool>(false, global4[_wgslsmith_index_u32(0u, 5u)], true), vec3<bool>(global2.x, true, true), vec3<bool>(true, global4[_wgslsmith_index_u32(1u, 5u)], global4[_wgslsmith_index_u32(global1.a.b, 5u)])), select(vec3<bool>(true, true, global2.x), vec3<bool>(false, global2.x, global2.x), false), any(global2.zz)), true)), select(!(!vec3<bool>(global2.x, false, false)), !select(vec3<bool>(false, true, true), !vec3<bool>(global4[_wgslsmith_index_u32(global0.b, 5u)], false, true), select(vec3<bool>(false, global2.x, false), vec3<bool>(true, false, true), vec3<bool>(global2.x, false, true))), false), true);
    var var_0 = ~u_input.b.x;
    global1 = Struct_4(global1.a);
    var var_1 = i32(-1i) * -abs(~countOneBits(global0.a.x));
    let var_2 = Struct_4(global1.a);
    return global1.a.a.x;
}

fn func_2(arg_0: u32) -> Struct_4 {
    let var_0 = all(!(!vec3<bool>(true, global4[_wgslsmith_index_u32(arg_0, 5u)], true))) || !(true | !global2.x);
    global1 = Struct_4(global1.a);
    var var_1 = -(~select(vec2<i32>(func_3(1559f), -global0.a.x), -(vec2<i32>(-2147483647i, global0.a.x) | global1.a.a.xz), true));
    let var_2 = ~abs(firstLeadingBit(u_input.b) >> (countOneBits(vec4<u32>(61885u, 4294967295u, 0u, arg_0)) % vec4<u32>(32u))) | vec4<u32>(~_wgslsmith_mod_u32(~global0.b, select(60826u, 32441u, false)), u_input.a.x, 23454u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~u_input.a, ~vec3<u32>(global1.a.b, global1.a.b, 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(17356u, global1.a.b, 4294967295u) | u_input.b.yxy, u_input.b.yzz << (u_input.b.zwy % vec3<u32>(32u)))));
    global2 = !(!vec3<bool>(all(vec2<bool>(global4[_wgslsmith_index_u32(39779u, 5u)], true)) || false, true, ~2147483647i >= (0i >> (var_2.x % 32u))));
    return Struct_4(Struct_3(abs(select(-vec4<i32>(-34718i, -45i, 2147483647i, -2147483647i), abs(vec4<i32>(-10473i, 2147483647i, 2147483647i, var_1.x)), true)), reverseBits(~global0.b)));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: vec2<i32>) -> u32 {
    global1 = func_2(~_wgslsmith_div_u32(~1u, 86399u));
    let var_0 = Struct_1(_wgslsmith_mult_vec4_i32(global1.a.a, vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(global1.a.a.wzw, vec3<i32>(arg_3.x, arg_0.c.a.x, arg_3.x))), arg_3.x, 463i, max(-38172i, 0i))), arg_0.c.b);
    var var_1 = Struct_4(Struct_3(var_0.a, ~(~u_input.b.x)));
    let var_2 = vec3<u32>(38880u >> (0u % 32u), _wgslsmith_mod_u32(7122u, 1u | (_wgslsmith_mult_u32(var_1.a.b, var_1.a.b) | u_input.a.x)), u_input.b.x);
    var var_3 = ~(~(func_2(arg_0.a).a.b & ~42586u)) & countOneBits(func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 14168u), var_2.xx)).a.b);
    return ~(~firstLeadingBit(var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(Struct_3(~vec4<i32>(-1i, _wgslsmith_mult_i32(-1i, -61872i), global0.a.x << (global0.b % 32u), 2402i), ~(func_1(Struct_2(12385u, -1208f, Struct_1(vec4<i32>(global0.a.x, 42548i, 1i, global1.a.a.x), vec4<bool>(true, global4[_wgslsmith_index_u32(31445u, 5u)], global4[_wgslsmith_index_u32(12831u, 5u)], global4[_wgslsmith_index_u32(1u, 5u)]))), -1297f, 2036f, vec2<i32>(global0.a.x, global0.a.x)) | 1u)));
    let var_0 = Struct_3(~min(vec4<i32>(3698i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global1.a.a.x), global0.a.wy), ~(-2147483647i), -1i), vec4<i32>(i32(-1i) * -1i, global0.a.x, global1.a.a.x, abs(global1.a.a.x))), 43146u);
    var var_1 = global4[_wgslsmith_index_u32(func_2(_wgslsmith_mult_u32(u_input.b.x, ~(~61072u))).a.b, 5u)] | false;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1050f + -1276f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-283f, 922f)) - -1415f), -471f))));
    let var_3 = _wgslsmith_f_op_f32(floor(var_2.x));
    let var_4 = 2101f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(1281f)), var_0.a.x, max(_wgslsmith_div_vec4_u32(~(vec4<u32>(global1.a.b, 4294967295u, 6713u, 4294967295u) >> (vec4<u32>(1u, global1.a.b, global0.b, u_input.b.x) % vec4<u32>(32u))), vec4<u32>(var_0.b, 1u, 1u, 4294967295u) ^ _wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(var_0.b, 71059u, u_input.a.x, 14840u))), vec4<u32>(u_input.a.x, ~(global0.b << (1u % 32u)), max(var_0.b & u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 257u)), ~global1.a.b ^ _wgslsmith_sub_u32(global0.b, global1.a.b))));
}

