struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(771f);

var<private> global1: vec2<f32> = vec2<f32>(882f, -515f);

var<private> global2: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(0i, 2147483647i), vec2<i32>(1i, -1i), vec2<i32>(-29111i, 8614i), vec2<i32>(2147483647i, 2170i), vec2<i32>(-1i, 35336i));

var<private> global3: array<u32, 29>;

var<private> global4: Struct_1 = Struct_1(678f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -368f) + _wgslsmith_f_op_f32(-global4.a)));
    global4 = arg_1;
    var var_1 = vec2<bool>(u_input.a > 42260u, true);
    var var_2 = -2147483647i;
    global3 = array<u32, 29>();
    return 30141u;
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.a ^ func_3(Struct_1(_wgslsmith_f_op_f32(1409f + _wgslsmith_f_op_f32(min(449f, -2013f)))), Struct_1(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(global4.a - global0.a))), vec2<bool>(false, true));
    global0 = Struct_1(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(floor(-665f)))));
    global4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2020f)));
    global1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a))));
    global0 = Struct_1(_wgslsmith_f_op_f32(ceil(global4.a)));
    return Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-301f - _wgslsmith_f_op_f32(floor(1240f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))), 2311f)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec3<u32>) -> u32 {
    global4 = func_2();
    var var_0 = vec4<bool>(true, !(global0.a >= 111f), false, true);
    var var_1 = var_0.wyw;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-835f, -656f, false)) + global0.a) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(-global4.a))), func_2().a));
    let var_3 = func_2();
    return arg_3.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_1(1862f);
    global0 = var_0;
    var var_1 = var_0;
    global1 = vec2<f32>(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -765f));
    var var_2 = func_2();
    return Struct_1(_wgslsmith_f_op_f32(global4.a * _wgslsmith_f_op_f32(1308f - 166f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !((u_input.a > ~global3[_wgslsmith_index_u32(1u, 29u)]) || false);
    let var_1 = func_4(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-2147483647i, 32557i, -2147483647i)), ~vec3<i32>(0i, 1i, 5587i)) >> (vec3<u32>(~44503u << (firstLeadingBit(u_input.a) % 32u), ~90063u, ~func_1(vec4<f32>(global1.x, -390f, global4.a, global0.a), vec2<f32>(global4.a, global1.x), Struct_1(-343f), vec3<u32>(global3[_wgslsmith_index_u32(22631u, 29u)], u_input.a, 1u))) % vec3<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a))), global0.a, !(!var_0))), -213f), vec2<i32>(-countOneBits(~(-1i)), 2147483647i), 1u);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0.a, -1036f))))));
    global0 = func_4(abs(_wgslsmith_div_vec3_i32(vec3<i32>(-6880i, 1i << (u_input.a % 32u), 0i << (u_input.a % 32u)), vec3<i32>(-1i) * -vec3<i32>(52168i, 0i, 43342i))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-604f + 450f), _wgslsmith_f_op_f32(floor(-188f))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -528f), func_2().a))), global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 5u)], ~(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(8813u), u_input.a), 29u)] >> (4294967295u % 32u)));
    var var_3 = -(~select(vec4<i32>(~(-1i), -8246i, 1i, _wgslsmith_mult_i32(-4685i, 1i)), _wgslsmith_div_vec4_i32(~vec4<i32>(-1i, -9322i, -43292i, 1208i), vec4<i32>(1i, 1i, 1i, 1i)), all(vec4<bool>(false, var_0, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~11857u, 24721u, u_input.a), vec2<u32>(_wgslsmith_dot_vec2_u32(min(vec2<u32>(12316u, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(u_input.a, 29u)], u_input.a), vec2<u32>(global3[_wgslsmith_index_u32(0u, 29u)], 55800u), vec2<u32>(u_input.a, 13035u))), abs(vec2<u32>(u_input.a, 11504u))), 0u), _wgslsmith_mod_vec2_u32(max(min(~vec2<u32>(1u, 7723u), abs(vec2<u32>(0u, 4294967295u))), ~(~vec2<u32>(50380u, u_input.a))), vec2<u32>(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 320f, var_1.a, global4.a) + vec4<f32>(206f, var_1.a, global4.a, 1727f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, 160f) + vec2<f32>(global4.a, global1.x)), func_2(), vec3<u32>(global3[_wgslsmith_index_u32(52196u, 29u)], u_input.a, u_input.a)), _wgslsmith_mod_u32(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 29u)], 29u)]))));
}

