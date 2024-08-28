struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec4<i32>(0i, -60702i, 38540i, 7782i)), 1309f);

var<private> global1: array<vec2<i32>, 20>;

var<private> global2: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(44828u, 4294967295u, 94878u, 1u), vec4<u32>(1u, 4294967295u, 1u, 0u), vec4<u32>(4294967295u, 44573u, 3688u, 0u), vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec4<u32>(64636u, 0u, 33466u, 14598u), vec4<u32>(52971u, 9203u, 23205u, 4294967295u), vec4<u32>(4294967295u, 20224u, 96849u, 0u));

var<private> global3: Struct_2 = Struct_2(Struct_1(vec4<i32>(0i, 34845i, 12732i, 2147483647i)));

var<private> global4: vec4<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: vec3<bool>) -> bool {
    var var_0 = arg_0.a;
    let var_1 = arg_1.b;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-493f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -791f) - 487f))) + -1000f));
    global1 = array<vec2<i32>, 20>();
    let var_3 = true;
    return false;
}

fn func_3() -> f32 {
    global2 = array<vec4<u32>, 7>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(282f, 137f)), 398f, false)))) * global0.b) - -491f);
    var var_1 = abs(u_input.e.x) >> (~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.d, 1u), min(vec2<u32>(6310u, u_input.d), u_input.c)), select(~u_input.e.xy, u_input.e.yz >> (u_input.c % vec2<u32>(32u)), select(vec2<bool>(true, false), vec2<bool>(false, true), true))) % 32u);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), global0.b);
    var var_3 = var_2.x;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global4.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(global0.b, -727f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-390f * 1736f))));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> vec3<bool> {
    var var_0 = Struct_3(Struct_1(select(vec4<i32>(global3.a.a.x, -u_input.b.x, 1i, -37924i), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global0.a.a.x, global3.a.a.x), vec3<i32>(u_input.a, u_input.b.x, global3.a.a.x)), ~(-24939i), _wgslsmith_dot_vec3_i32(global3.a.a.yzy, vec3<i32>(-33165i, 5107i, global3.a.a.x)), u_input.a), vec4<bool>(true, any(vec2<bool>(false, false)), func_2(Struct_2(Struct_1(global3.a.a)), Struct_3(global3.a, 1467f), vec4<i32>(-2147483647i, u_input.b.x, -7379i, -34180i), vec3<bool>(true, true, true)), true))), _wgslsmith_f_op_f32(func_3()));
    let var_1 = Struct_3(Struct_1(~global3.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) + global0.b));
    var_0 = Struct_3(Struct_1(select(~(-u_input.b), select(vec4<i32>(var_0.a.a.x, 0i, global3.a.a.x, 1i), global0.a.a, select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))), vec4<bool>(false, any(vec4<bool>(false, false, false, false)), true, all(vec4<bool>(true, false, false, true))))), _wgslsmith_f_op_f32(-global0.b));
    let var_2 = Struct_1(abs(global3.a.a) & -vec4<i32>(-4006i, -1i, -32374i, abs(1i)));
    var var_3 = Struct_1(global3.a.a);
    return select(select(select(vec3<bool>(true, true, false), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), any(vec2<bool>(true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), vec3<bool>(true, true, true), !func_2(Struct_2(Struct_1(global0.a.a)), Struct_3(global0.a, arg_0), ~vec4<i32>(-19753i, var_2.a.x, 25700i, global0.a.a.x), vec3<bool>(true, true, true))), select(vec3<bool>(all(vec2<bool>(false, false)) == false, true, true), vec3<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), true)), false, true), select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, false)))), vec3<bool>(func_2(Struct_2(Struct_1(vec4<i32>(-49296i, 1i, 25824i, var_2.a.x))), Struct_3(global3.a, -311f), vec4<i32>(~1i, -var_1.a.a.x, -48059i, _wgslsmith_div_i32(-96149i, -1i)), vec3<bool>(true, true, true)), var_2.a.x > 44474i, false || (~74124i <= -u_input.a)));
}

fn func_4(arg_0: vec3<bool>) -> StorageBuffer {
    let var_0 = global0.b;
    global3 = Struct_2(global3.a);
    let var_1 = Struct_3(global0.a, global0.b);
    var var_2 = Struct_2(global3.a);
    let var_3 = _wgslsmith_div_u32(firstTrailingBit(countOneBits(u_input.c.x)), ~(~1u));
    return StorageBuffer(~global0.a.a, _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(abs(u_input.a), -2147483647i), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.a.a.x, 18495i), vec2<i32>(-2147483647i, -771i)), max(global3.a.a.yz, u_input.b.xz))), -(~var_1.a.a.zx)), global0.b, ~(~max(~global2[_wgslsmith_index_u32(47906u, 7u)], countOneBits(vec4<u32>(38691u, var_3, u_input.e.x, var_3)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(538f, global0.b)) - _wgslsmith_f_op_f32(-global4.x)), -1235f)), ~(vec2<u32>(u_input.c.x, u_input.e.x) | vec2<u32>(4294967295u, 1u)) >> (~vec2<u32>(4294967295u, 9252u) % vec2<u32>(32u))));
}

