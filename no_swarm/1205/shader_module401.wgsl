struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<i32, 14>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> bool {
    let var_0 = arg_0.a;
    let var_1 = vec4<bool>(!all(vec4<bool>(false, all(global0.wz), global0.x, -30805i > u_input.b)), 1i < global1[_wgslsmith_index_u32(abs(1u), 14u)], true, global0.x);
    global0 = select(vec4<bool>(all(!(!var_1)), true, all(!select(global0.yy, vec2<bool>(var_1.x, global0.x), global0.wy)), global0.x), select(select(select(select(vec4<bool>(false, false, true, global0.x), vec4<bool>(false, false, true, false), global0.x), select(vec4<bool>(true, var_1.x, true, false), vec4<bool>(false, global0.x, arg_1, false), global0.x), var_1), var_1, false), vec4<bool>(true, select(false, global0.x | global0.x, false | global0.x), all(vec3<bool>(true, global0.x, arg_1)) == (0i < global1[_wgslsmith_index_u32(1u, 14u)]), arg_1), !(!var_1)), var_1.x);
    let var_2 = arg_0;
    var var_3 = var_1;
    return all(!var_1.xwy);
}

fn func_2() -> Struct_1 {
    global0 = vec4<bool>(true, false, (-_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.d.x, 47864i, -2147483647i), u_input.a) | global1[_wgslsmith_index_u32(u_input.c, 14u)]) >= select(_wgslsmith_dot_vec3_i32(vec3<i32>(-63684i, 1i, global1[_wgslsmith_index_u32(4294967295u, 14u)]), u_input.a.zxw), ~u_input.d.x, func_3(Struct_3(111098u, 17179u), global0.x)), true);
    var var_0 = global0.x;
    return Struct_1(_wgslsmith_sub_u32(~_wgslsmith_add_u32(~u_input.e.x, ~1u), u_input.c), u_input.e << (~max(vec2<u32>(u_input.c, u_input.c), vec2<u32>(39765u, 37534u)) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = firstTrailingBit(~(~_wgslsmith_div_vec3_u32(~vec3<u32>(0u, arg_0.a, u_input.e.x), firstLeadingBit(vec3<u32>(37516u, u_input.e.x, 4364u)))));
    var var_1 = arg_0;
    var_0 = min(vec3<u32>(_wgslsmith_sub_u32(4294967295u, var_1.b.x), var_1.a, arg_0.b.x), ~vec3<u32>(1u, ~4294967295u, 1u));
    var var_2 = Struct_3(_wgslsmith_dot_vec2_u32(~u_input.e, select(vec2<u32>(0u, _wgslsmith_sub_u32(var_1.a, 4294967295u)), vec2<u32>(~var_1.b.x, u_input.c), select(global0.xw, vec2<bool>(global0.x, true), any(vec4<bool>(true, false, false, false))))), ~_wgslsmith_add_u32(29196u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.x, u_input.c), u_input.e) | ~var_0.x));
    var var_3 = firstTrailingBit(var_1.a);
    return 614f;
}

fn func_5(arg_0: vec2<i32>, arg_1: f32) -> Struct_1 {
    var var_0 = u_input.d;
    let var_1 = ~vec2<u32>(~min(_wgslsmith_sub_u32(4294967295u, u_input.c), 11259u), abs(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, 55740u, 4294967295u, u_input.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(626u, 4294967295u, 4294967295u, 1u), vec4<u32>(u_input.c, 3009u, 4294967295u, 4294967295u)))));
    return Struct_1(~(~func_2().a), ~vec2<u32>(select(firstLeadingBit(u_input.e.x), var_1.x, any(vec4<bool>(global0.x, true, global0.x, true))), ~max(var_1.x, 1u)));
}

fn func_1(arg_0: u32, arg_1: i32) -> f32 {
    let var_0 = (~vec3<u32>(~0u, u_input.c & u_input.c, ~1u) << ((_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 28019u, 107u), vec3<u32>(u_input.e.x, u_input.c, 0u)) | (_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.e.x, 4294967295u), vec3<u32>(u_input.e.x, u_input.e.x, 4294967295u)) >> (min(vec3<u32>(29269u, arg_0, arg_0), vec3<u32>(44365u, 43827u, u_input.c)) % vec3<u32>(32u)))) % vec3<u32>(32u))) & vec3<u32>(~(~u_input.c), ~(_wgslsmith_div_u32(4294967295u, u_input.c) & _wgslsmith_mult_u32(4294967295u, arg_0)), ~(u_input.c >> (u_input.e.x % 32u)) ^ abs(_wgslsmith_clamp_u32(95661u, u_input.c, arg_0)));
    var var_1 = func_5(-vec2<i32>(arg_1, -22441i), _wgslsmith_f_op_f32(func_4(func_2())));
    var var_2 = Struct_1(4294967295u, vec2<u32>(~0u, 1u));
    global0 = !vec4<bool>(!global0.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.e, u_input.e), vec2<u32>(15010u, 14682u)) > var_2.b.x, any(global0.zx), global0.x);
    var_2 = func_2();
    return _wgslsmith_f_op_f32(func_4(func_5(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, arg_1), vec2<i32>(arg_1, u_input.d.x), u_input.a.yz), 1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 14>();
    var var_0 = Struct_3(u_input.c, u_input.e.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(1u, 0i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(28029u, -13049i)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-805f))), -620f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-790f, _wgslsmith_f_op_f32(min(-204f, 466f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1297f, 152f), vec2<f32>(1581f, -584f)))))));
    global0 = vec4<bool>(!(global1[_wgslsmith_index_u32(var_0.b, 14u)] < global1[_wgslsmith_index_u32(u_input.c, 14u)]), all(select(select(vec2<bool>(true, global0.x), select(vec2<bool>(false, global0.x), vec2<bool>(false, false), vec2<bool>(global0.x, global0.x)), 34227u <= var_0.a), vec2<bool>(global0.x != false, true), true)), -561f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), global0.x);
    var_0 = Struct_3(1u, ~var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(~(~vec4<u32>(var_0.a, var_0.a, 4294967295u, 0u))), ~(~u_input.e.x), ~vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.b, 4294967295u, u_input.e.x, u_input.e.x), ~vec4<u32>(0u, u_input.c, var_0.a, var_0.b)), select(abs(u_input.e.x), _wgslsmith_mod_u32(u_input.c, var_0.b), global0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 6573u, u_input.c) ^ vec3<u32>(1u, u_input.e.x, var_0.b), min(vec3<u32>(var_0.a, 1u, var_0.a), vec3<u32>(49356u, var_0.b, 10481u)))));
}

