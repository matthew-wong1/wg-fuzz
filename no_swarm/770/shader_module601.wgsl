struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(-978f, false, vec2<bool>(true, false)), Struct_2(855f, false, vec2<bool>(false, false)), Struct_2(-1236f, true, vec2<bool>(false, true)), Struct_2(-704f, true, vec2<bool>(false, false)), Struct_2(615f, false, vec2<bool>(false, false)), Struct_2(2574f, false, vec2<bool>(false, true)), Struct_2(385f, false, vec2<bool>(true, true)), Struct_2(866f, false, vec2<bool>(true, false)), Struct_2(135f, false, vec2<bool>(true, true)), Struct_2(424f, true, vec2<bool>(false, true)), Struct_2(-1225f, true, vec2<bool>(false, true)), Struct_2(-1129f, true, vec2<bool>(true, true)), Struct_2(-266f, false, vec2<bool>(false, false)), Struct_2(-486f, true, vec2<bool>(false, false)), Struct_2(270f, false, vec2<bool>(false, true)), Struct_2(2128f, true, vec2<bool>(true, true)), Struct_2(1083f, true, vec2<bool>(true, false)), Struct_2(373f, false, vec2<bool>(false, true)), Struct_2(546f, false, vec2<bool>(false, false)), Struct_2(1165f, false, vec2<bool>(true, false)), Struct_2(2419f, true, vec2<bool>(true, true)), Struct_2(-1189f, false, vec2<bool>(false, true)), Struct_2(163f, true, vec2<bool>(true, false)), Struct_2(1235f, true, vec2<bool>(false, true)), Struct_2(739f, true, vec2<bool>(true, true)), Struct_2(-826f, false, vec2<bool>(false, false)), Struct_2(1771f, true, vec2<bool>(false, false)));

var<private> global1: Struct_1;

var<private> global2: Struct_2;

var<private> global3: Struct_2 = Struct_2(628f, true, vec2<bool>(true, true));

var<private> global4: array<u32, 11> = array<u32, 11>(0u, 4294967295u, 34447u, 4294967295u, 16568u, 4294967295u, 0u, 4380u, 18706u, 1u, 4294967295u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(global1.a & 4294967295u, 27u)];
    global1 = Struct_1(firstLeadingBit(~global4[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(10017u, 11u)], global1.a, 4294967295u), vec3<u32>(4294967295u, global1.a, global1.a))), 11u)]), select(vec4<bool>(all(vec4<bool>(global3.b, true, false, global3.c.x)), true, (arg_1.x & global3.c.x) && all(vec4<bool>(global2.c.x, true, false, global3.c.x)), any(global1.b.xxz)), vec4<bool>(global1.b.x, u_input.b == (i32(-1i) * -1i), true, global3.c.x), all(global1.b.zwx)), global3.b == (-(~u_input.a) >= 1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(310f, _wgslsmith_f_op_f32(arg_0 - -1192f), 859f)) + global1.d));
    let var_1 = ~(~reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 11u)], 20837u, 0u, 1u), vec4<u32>(global1.a, 4294967295u, global4[_wgslsmith_index_u32(global1.a, 11u)], 4294967295u))) >> ((firstLeadingBit(vec4<u32>(4294967295u, 99663u, global1.a, 0u) ^ vec4<u32>(global1.a, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 11u)], 11u)], global1.a, 4711u)) | (max(vec4<u32>(global1.a, 80972u, global1.a, global1.a), vec4<u32>(global1.a, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)], 11u)], global4[_wgslsmith_index_u32(1669u, 11u)], 0u)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(global1.a, 4294967295u, global1.a, global1.a), vec4<u32>(25618u, 1758u, global1.a, 1u)) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    var var_2 = false;
    var var_3 = _wgslsmith_mod_vec4_i32(~vec4<i32>(~1i, -u_input.b, u_input.b << (global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(var_1.x, 11u)], global1.a, var_1.x), vec3<u32>(global4[_wgslsmith_index_u32(48311u, 11u)], global1.a, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_1.x, 11u)], 11u)])), 11u)] % 32u), ~1185i), ~(vec4<i32>(-u_input.a, -u_input.b, 1i, u_input.b) & abs(vec4<i32>(-309i, 2147483647i, 35037i, u_input.a))));
    return global1.a;
}

fn func_2() -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(96385u, 27u)];
    var var_1 = vec2<u32>(~(~47686u) ^ global1.a, ~(~func_3(var_0.a, !global1.b.yxw)));
    global2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1352f), global1.b.x, !vec2<bool>(!all(global1.b), all(select(global1.b, global1.b, true))));
    global3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-675f, var_0.a, true)) + -2435f) + _wgslsmith_f_op_f32(-351f * global1.d.x))), global1.c, var_0.c);
    let var_2 = global1.d;
    return 0u;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    var var_0 = abs(~arg_0.a);
    var var_1 = Struct_1(_wgslsmith_sub_u32(~global4[_wgslsmith_index_u32(58645u, 11u)], ~max(5897u, ~73047u)), select(vec4<bool>(!(!global3.b), any(select(vec4<bool>(true, true, global2.c.x, false), global1.b, arg_0.c)), global3.b, false), select(!select(vec4<bool>(false, false, false, global3.b), vec4<bool>(false, global1.b.x, false, global1.b.x), global1.b.x), vec4<bool>(true, true, true, true), false), vec4<bool>(1u > _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], arg_0.a), true, global1.b.x, global3.b)), global3.b, arg_0.d);
    global4 = array<u32, 11>();
    let var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 1i, -abs(-5440i) >> (~(~arg_0.a) % 32u)), vec3<i32>(select(-1i, 2147483647i << (func_2() % 32u), any(var_1.b.zyz)), min(-1i >> (firstTrailingBit(4294967295u) % 32u), u_input.b), reverseBits(_wgslsmith_mod_i32(reverseBits(u_input.a), ~u_input.a))), abs(abs(vec3<i32>(u_input.a, u_input.b, u_input.a) ^ vec3<i32>(-2147483647i, u_input.a, u_input.b))) & reverseBits(~(~vec3<i32>(-1i, u_input.a, -1i))));
    let var_3 = (~(~44705u) ^ _wgslsmith_div_u32(3376u, abs(global4[_wgslsmith_index_u32(global1.a, 11u)]))) >= ~(global1.a >> (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, var_1.a), vec2<u32>(1u, arg_0.a)), global4[_wgslsmith_index_u32(1u, 11u)]) % 32u));
    return Struct_2(-1182f, !arg_0.b.x, select(vec2<bool>(~13537u > ~global4[_wgslsmith_index_u32(4294967295u, 11u)], any(select(vec4<bool>(global2.c.x, true, var_3, true), vec4<bool>(arg_0.b.x, var_3, true, false), arg_0.c))), var_1.b.xx, false));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(Struct_1(18264u, !global1.b, (global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)] | firstLeadingBit(global1.a)) >= _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(32208u, 0u, global4[_wgslsmith_index_u32(0u, 11u)], global1.a), vec4<u32>(global1.a, global4[_wgslsmith_index_u32(4294967295u, 11u)], global4[_wgslsmith_index_u32(global1.a, 11u)], 111402u), vec4<u32>(21412u, 62883u, 1u, global4[_wgslsmith_index_u32(global1.a, 11u)])), abs(vec4<u32>(global1.a, 1u, global4[_wgslsmith_index_u32(global1.a, 11u)], global4[_wgslsmith_index_u32(4294967295u, 11u)]))), global1.d));
    global4 = array<u32, 11>();
    global3 = global0[_wgslsmith_index_u32(max(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(4294967295u, 11u)], ~21591u), 11u)], 4294967295u), 27u)];
    var var_0 = global0[_wgslsmith_index_u32(42501u | ~global4[_wgslsmith_index_u32(0u, 11u)], 27u)];
    var var_1 = global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.a, ~_wgslsmith_div_u32(97686u, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, 32791u, global4[_wgslsmith_index_u32(global1.a, 11u)], global4[_wgslsmith_index_u32(4294967295u, 11u)]), vec4<u32>(0u, global1.a, global1.a, 34007u)), vec4<u32>(0u, 4312u, global1.a, global1.a)), 11u)])), 11u)], 27u)];
    global4 = array<u32, 11>();
    var var_2 = global1.b;
    let var_3 = Struct_1(24824u, select(vec4<bool>(!var_2.x, true, var_0.b && func_1(Struct_1(4424u, global1.b, true, global1.d)).c.x, false), global1.b, select(!vec4<bool>(global1.c, global2.c.x, global1.b.x, var_1.b), global1.b, !select(vec4<bool>(var_0.c.x, true, true, global2.b), vec4<bool>(true, global3.b, true, true), global1.b))), any(global1.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~var_3.a ^ _wgslsmith_mod_u32(global1.a, 0u), 49786u, 1u | _wgslsmith_dot_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(var_3.a, 11u)], var_3.a, 4294967295u, 65408u), vec4<u32>(var_3.a, global1.a, global4[_wgslsmith_index_u32(var_3.a, 11u)], global4[_wgslsmith_index_u32(var_3.a, 11u)]))) >> (_wgslsmith_mod_u32(_wgslsmith_div_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(27464u, 11u)], 11u)], 11u)], _wgslsmith_mult_u32(54467u, global1.a)), firstTrailingBit(global1.a)) % 32u));
}

