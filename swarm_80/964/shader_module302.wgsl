struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec2<i32>(-18134i, 0i), true, vec3<u32>(1u, 45281u, 19185u), Struct_1(1362f)), Struct_2(vec2<i32>(1i, 807i), false, vec3<u32>(18719u, 28915u, 4294967295u), Struct_1(-597f)), Struct_2(vec2<i32>(-4467i, -1137i), false, vec3<u32>(0u, 98584u, 1148u), Struct_1(-776f)), Struct_2(vec2<i32>(1i, 1i), false, vec3<u32>(4294967295u, 0u, 1u), Struct_1(307f)), Struct_2(vec2<i32>(23674i, -17428i), true, vec3<u32>(1u, 44208u, 1u), Struct_1(954f)), Struct_2(vec2<i32>(2542i, 7052i), true, vec3<u32>(1u, 27911u, 4848u), Struct_1(427f)), Struct_2(vec2<i32>(-1i, i32(-2147483648)), true, vec3<u32>(39794u, 0u, 4294967295u), Struct_1(2035f)), Struct_2(vec2<i32>(42264i, -857i), true, vec3<u32>(1u, 0u, 1u), Struct_1(523f)), Struct_2(vec2<i32>(7127i, 18641i), true, vec3<u32>(9709u, 67887u, 64167u), Struct_1(-589f)), Struct_2(vec2<i32>(-2843i, 2147483647i), false, vec3<u32>(12575u, 4294967295u, 0u), Struct_1(350f)));

var<private> global1: vec3<i32> = vec3<i32>(1i, 13621i, -1i);

var<private> global2: array<vec4<u32>, 17>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1273f), 403f))));
    return _wgslsmith_f_op_f32(max(var_0.a, -1000f));
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    global0 = array<Struct_2, 10>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) + -431f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(abs(1448f)))))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(max(arg_0.x, -877f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 759f))))))));
    global2 = array<vec4<u32>, 17>();
    return Struct_3(arg_0.x != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -297f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_0.x, 370f)), _wgslsmith_f_op_f32(arg_0.x - arg_0.x))))), global0[_wgslsmith_index_u32(min(u_input.b.x, 1u), 10u)]);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: u32, arg_3: Struct_3) -> Struct_3 {
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    global2 = array<vec4<u32>, 17>();
    let var_0 = ~_wgslsmith_add_u32(_wgslsmith_add_u32(reverseBits(~4294967295u), firstTrailingBit(~arg_3.b.c.x)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 8395u, u_input.c), _wgslsmith_add_vec3_u32(arg_3.b.c, arg_3.b.c)), abs(_wgslsmith_mult_u32(u_input.b.x, 112057u))));
    let var_1 = ~0i;
    return arg_3;
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_mult_vec3_u32(max(vec3<u32>(~4294967295u, min(max(14812u, 0u), countOneBits(0u)), 1u), vec3<u32>(~(~u_input.c), u_input.b.x, u_input.b.x)), vec3<u32>(u_input.c, ~(~u_input.b.x), firstTrailingBit(0u)));
    let var_1 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-814f, 820f, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-612f, 1000f)))), 1273f, _wgslsmith_f_op_f32(exp2(1f))), ~min(_wgslsmith_div_vec2_i32(u_input.a.zw, _wgslsmith_mod_vec2_i32(global1.zy, global1.xx)), global1.zz));
    global0 = array<Struct_2, 10>();
    let var_2 = func_4(global1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a.x, 1411f, false))), -1911f)))), var_0.x, func_2(vec2<f32>(var_1.a.x, var_1.a.x)));
    let var_3 = global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u) | _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(firstTrailingBit(var_0.x << (4294967295u % 32u)), 17u)], firstTrailingBit(vec4<u32>(63940u, var_2.b.c.x, u_input.c, 1u))), 17u)], select(select(_wgslsmith_clamp_vec4_u32(global2[_wgslsmith_index_u32(u_input.c, 17u)], global2[_wgslsmith_index_u32(var_0.x, 17u)], global2[_wgslsmith_index_u32(41384u, 17u)]), vec4<u32>(var_2.b.c.x, var_2.b.c.x, var_2.b.c.x, u_input.b.x) >> (vec4<u32>(var_0.x, var_0.x, var_2.b.c.x, 28660u) % vec4<u32>(32u)), select(vec4<bool>(var_2.b.b, false, var_2.a, false), vec4<bool>(false, true, var_2.b.b, var_2.a), vec4<bool>(var_2.b.b, true, true, false))), global2[_wgslsmith_index_u32(select(abs(1u), abs(54333u), false), 17u)], vec4<bool>(11904u <= var_2.b.c.x, true, false, true))), 10u)];
    return StorageBuffer(vec4<i32>(abs(1109i), -10531i, -(var_1.b.x ^ countOneBits(-2147483647i)), ~global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1094f))), u_input.b.x, vec4<i32>(_wgslsmith_clamp_i32(1i, _wgslsmith_mod_i32(firstTrailingBit(-47144i), 1i), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a.xyy, vec3<i32>(-1i, 32511i, 1i)), -u_input.a.www)), -_wgslsmith_mod_i32(var_1.b.x, -2147483647i) ^ 0i, 6726i, -1i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<i32>(u_input.a.x, global1.x, u_input.a.x);
    var var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(reverseBits(3567u), u_input.b.x, 1u), vec3<u32>(4294967295u, ~9923u, 1u));
    let var_1 = global0[_wgslsmith_index_u32(u_input.c, 10u)];
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(~(~u_input.a.x), _wgslsmith_mult_i32(u_input.a.x | -23237i, i32(-1i) * -37621i)), ~(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, var_1.a.x), vec2<i32>(var_1.a.x, global1.x)) | (vec2<i32>(var_1.a.x, -37717i) >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))))) != (0i & global1.x);
    let var_3 = var_1.a;
    let x = u_input.a;
    s_output = func_1();
}

