struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11>;

var<private> global1: array<i32, 4>;

var<private> global2: array<u32, 12> = array<u32, 12>(4294967295u, 29238u, 0u, 1u, 4294967295u, 12987u, 14418u, 8690u, 27945u, 1604u, 0u, 1802u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2() -> i32 {
    global2 = array<u32, 12>();
    var var_0 = Struct_1(~u_input.d.zw & ~firstTrailingBit(firstLeadingBit(u_input.d.wy)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -139f))), -1000f), -15710i, _wgslsmith_f_op_f32(min(-581f, _wgslsmith_div_f32(-580f, _wgslsmith_f_op_f32(f32(-1f) * -219f)))));
    global2 = array<u32, 12>();
    return ~global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(40887u, 12u)], 4u)] ^ var_0.c;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3.d;
    let var_1 = arg_2;
    var var_2 = Struct_1(~(~vec2<u32>(var_1.a.x, arg_2.a.x)) << (vec2<u32>(u_input.c.x | (89948u >> (arg_2.a.x % 32u)), 27557u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(min(arg_2.d, 859f)), ~firstLeadingBit(_wgslsmith_dot_vec3_i32(arg_1.zwz, -arg_1.ywz)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.d))) + -466f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_3.b, _wgslsmith_f_op_f32(ceil(var_1.d)))), arg_2.b), any(vec3<bool>(!global0[_wgslsmith_index_u32(36833u, 11u)], all(vec3<bool>(arg_0.x, true, false)), arg_0.x)))));
    global1 = array<i32, 4>();
    let var_3 = arg_2;
    return Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(~0u, ~var_1.a.x), arg_2.a.x >> (~1u % 32u)), firstLeadingBit(~vec2<u32>(0u, u_input.d.x))), _wgslsmith_div_f32(arg_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_3.b, 1761f), _wgslsmith_f_op_f32(trunc(arg_2.b)))))), -arg_2.c, arg_2.d);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> vec4<bool> {
    global1 = array<i32, 4>();
    var var_0 = func_3(vec2<bool>(u_input.d.x > u_input.e, false), vec4<i32>(abs(43091i), ~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(arg_2.a.x, 4u)], 1i, u_input.a), arg_1.xzw), firstLeadingBit(vec3<i32>(2147483647i, 2147483647i, u_input.a))), abs(func_2()), min(max(arg_2.c, ~(-1i)), ~(i32(-1i) * -39407i))), Struct_1(firstLeadingBit(max(vec2<u32>(global2[_wgslsmith_index_u32(39423u, 12u)], arg_2.a.x), vec2<u32>(arg_2.a.x, u_input.d.x))) >> (select(~vec2<u32>(u_input.d.x, 23091u), min(u_input.d.zw, arg_2.a), true) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-142f * _wgslsmith_f_op_f32(f32(-1f) * -1243f)), 42261i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-679f)) - arg_0.b))), arg_0);
    global0 = array<bool, 11>();
    global2 = array<u32, 12>();
    var_0 = arg_0;
    return select(vec4<bool>(false, global0[_wgslsmith_index_u32(61172u, 11u)] && true, true, false), !select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(18995u, 11u)], global0[_wgslsmith_index_u32(u_input.d.x, 11u)], false, global0[_wgslsmith_index_u32(arg_0.a.x, 11u)]), vec4<bool>(false, true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 11u)], global0[_wgslsmith_index_u32(0u, 11u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 12u)], 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)])), !vec4<bool>(true, global0[_wgslsmith_index_u32(arg_2.a.x, 11u)], true, global0[_wgslsmith_index_u32(u_input.e, 11u)]), false), !(!vec4<bool>(global0[_wgslsmith_index_u32(12838u, 11u)], global0[_wgslsmith_index_u32(arg_0.a.x, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], true)), vec4<bool>(global2[_wgslsmith_index_u32(0u, 12u)] >= 4294967295u, false, global0[_wgslsmith_index_u32(0u << (var_0.a.x % 32u), 11u)], all(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)])))), vec4<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_2.a.x, 11u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(49944u, 12u)], 11u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 12u)], 11u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 11u)], true, global0[_wgslsmith_index_u32(2949u, 11u)], false), global0[_wgslsmith_index_u32(1u, 11u)]), false)), true || (true && (true | global0[_wgslsmith_index_u32(arg_0.a.x, 11u)])), global0[_wgslsmith_index_u32(firstTrailingBit(arg_0.a.x), 11u)], select(global0[_wgslsmith_index_u32(arg_2.a.x, 11u)], (-293f <= arg_0.b) | !global0[_wgslsmith_index_u32(40510u, 11u)], all(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 11u)], global0[_wgslsmith_index_u32(0u, 11u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 12>();
    global0 = array<bool, 11>();
    let var_0 = !select(select(!(!vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 11u)])), !select(vec2<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 12u)], 11u)], true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.e, 11u)], global0[_wgslsmith_index_u32(37104u, 11u)]), false), vec2<bool>(true, true)), vec2<bool>(all(!vec3<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 12u)], 11u)], global0[_wgslsmith_index_u32(1u, 11u)], false)), any(func_1(Struct_1(u_input.c, 1233f, global1[_wgslsmith_index_u32(6783u, 4u)], 2563f), vec4<i32>(43511i, global1[_wgslsmith_index_u32(5070u, 4u)], 28473i, -21679i), Struct_1(u_input.d.wz, 813f, 0i, -1615f)))), vec2<bool>(global0[_wgslsmith_index_u32(1u, 11u)], !global0[_wgslsmith_index_u32(25588u, 11u)] | true));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~4294967295u), ~18231u), 12u)];
    let var_2 = _wgslsmith_f_op_f32(floor(1f));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - var_2);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~1u) | u_input.c.x), (~2147483647i & _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, -29240i), vec4<i32>(36875i, -41070i, global1[_wgslsmith_index_u32(u_input.e, 4u)], -2147483647i)), min(vec4<i32>(u_input.b, 0i, -35610i, 2147483647i), vec4<i32>(u_input.a, u_input.a, 39332i, 2147483647i)))) | 0i, u_input.d);
}

