struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: f32, arg_3: vec4<i32>) -> vec3<f32> {
    global0 = Struct_4(global0.a, arg_3.x);
    global0 = Struct_4(select(vec2<bool>(any(select(vec3<bool>(true, global0.a.x, global0.a.x), vec3<bool>(false, true, false), global0.a.x)), _wgslsmith_f_op_f32(round(-660f)) == 1381f), !global0.a, all(select(vec4<bool>(false, true, global0.a.x, global0.a.x), select(vec4<bool>(global0.a.x, global0.a.x, false, global0.a.x), vec4<bool>(global0.a.x, false, false, global0.a.x), true), all(vec4<bool>(true, global0.a.x, global0.a.x, true))))), 1i);
    let var_0 = !(!(!global0.a));
    global0 = Struct_4(!global0.a, -firstLeadingBit(global0.b));
    var var_1 = vec3<u32>(_wgslsmith_sub_u32(reverseBits(12499u), arg_1.x), _wgslsmith_div_u32(abs(min(1u, 4294967295u)), (u_input.a >> (u_input.a % 32u)) ^ ~1u) & arg_0, ~4294967295u);
    return vec3<f32>(-1106f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(-752f - arg_2)))), arg_2, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 1000f) * _wgslsmith_f_op_f32(select(arg_2, 581f, false))))));
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    let var_0 = arg_0.b;
    global0 = arg_0;
    var var_1 = 1f;
    return Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1999f, 918f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1172f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 161f, 355f), _wgslsmith_f_op_vec3_f32(func_3(u_input.a, vec4<u32>(4294967295u, 1u, u_input.a, 51598u), 495f, vec4<i32>(10872i, -1521i, global0.b, -37660i)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-701f, -1025f, 141f) * vec3<f32>(1000f, -1222f, -100f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(909f, 1785f, 1556f))))))), firstTrailingBit((~u_input.a << (u_input.a % 32u)) << (u_input.a % 32u)), !vec4<bool>(!(!arg_0.a.x), any(!vec3<bool>(global0.a.x, global0.a.x, false)), arg_0.a.x, true), ~_wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.a, firstTrailingBit(0u), _wgslsmith_mult_u32(3609u, 1u), _wgslsmith_clamp_u32(u_input.a, 0u, u_input.a)), max(~vec4<u32>(u_input.a, u_input.a, 1u, 0u), vec4<u32>(u_input.a, u_input.a, 0u, 29974u))));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> vec3<u32> {
    var var_0 = func_2(Struct_4(global0.a, global0.b));
    var var_1 = var_0.d;
    let var_2 = var_0.d;
    global0 = Struct_4(select(vec2<bool>(true, true), !select(!var_2.wz, func_2(Struct_4(vec2<bool>(var_1.x, false), global0.b)).d.wx, false), select(-1i, max(global0.b, 31766i), false) <= _wgslsmith_mod_i32(i32(-1i) * -32192i, global0.b)), min(global0.b, _wgslsmith_dot_vec4_i32(~(vec4<i32>(global0.b, 0i, 22366i, -56958i) | vec4<i32>(0i, -28732i, 1i, global0.b)), countOneBits(vec4<i32>(global0.b, 2147483647i, -14941i, global0.b)))));
    var_0 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(29379u, var_0.a)), var_0.e.wy), ~vec2<u32>(1u, 4294967295u)), _wgslsmith_f_op_vec3_f32(select(var_0.b, _wgslsmith_f_op_vec3_f32(step(func_2(Struct_4(var_1.zx, 1i)).b, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1137f, arg_1, 2338f)))))), false)), arg_0.x, !var_0.d, select(countOneBits(~vec4<u32>(var_0.e.x, 35372u, 72681u, 61203u)), ~func_2(Struct_4(global0.a, global0.b)).e, !any(var_1.xyy)));
    return ~var_0.e.wyw;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>) -> Struct_5 {
    var var_0 = global0.b & (-5773i | global0.b);
    let var_1 = arg_0;
    var var_2 = ~countOneBits(0i);
    var_2 = 29226i;
    var var_3 = vec2<i32>(2147483647i, global0.b);
    return Struct_5(vec4<f32>(_wgslsmith_f_op_f32(555f - _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(-var_1.a.x), arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -262f) + -1638f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1067f, -362f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-748f, -289f, 616f) * vec3<f32>(1462f, -737f, 399f))) * _wgslsmith_div_vec3_f32(vec3<f32>(250f, 518f, 253f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1670f, -188f, 1024f)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-174f, 124f, -228f))))))));
    var var_1 = func_4(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1781f))) - var_0.zz)), func_1(vec3<u32>(u_input.a, ~(~u_input.a), countOneBits(~48910u)), _wgslsmith_f_op_f32(-var_0.x)));
    var_1 = func_4(Struct_3(_wgslsmith_f_op_vec2_f32(-var_0.zy)), ~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, u_input.a), ~4294967295u), _wgslsmith_sub_u32(0u, u_input.a), _wgslsmith_div_u32(min(4294967295u, u_input.a), 0u | u_input.a)));
    global0 = Struct_4(select(global0.a, vec2<bool>(true, false), !func_2(Struct_4(global0.a, global0.b)).d.xz), global0.b);
    var var_2 = func_2(Struct_4(global0.a, _wgslsmith_sub_i32(~global0.b, _wgslsmith_sub_i32(-2147483647i, global0.b)) | -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-697f)))), var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.b.x)) + 276f));
}

