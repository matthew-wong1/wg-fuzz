struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: bool) -> u32 {
    let var_0 = Struct_2(vec3<u32>(firstLeadingBit(4294967295u) << (u_input.c.x % 32u), 1u, _wgslsmith_mult_u32(u_input.c.x, 0u)) | u_input.c, arg_1, Struct_1(~_wgslsmith_dot_vec3_u32(~u_input.c, firstTrailingBit(u_input.c)), global0.x != ~_wgslsmith_dot_vec2_u32(global0.zx, vec2<u32>(global0.x, 0u)), ~max(vec3<u32>(14504u, global0.x, 45359u), _wgslsmith_mult_vec3_u32(vec3<u32>(14856u, 1u, global0.x), u_input.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(604f, -384f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_0)))))), -229f);
    global0 = vec3<u32>(abs(_wgslsmith_sub_u32(~abs(global0.x), min(1u, var_0.c.c.x) << ((1u & var_0.a.x) % 32u))), abs(var_0.c.a), _wgslsmith_mult_u32(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, global0.x, global0.x), vec4<u32>(4294967295u, var_0.a.x, global0.x, global0.x))), ~4294967295u));
    global0 = u_input.c;
    global0 = ~(~(~u_input.c)) & max(u_input.c, firstLeadingBit(~vec3<u32>(0u, u_input.b, 21114u)));
    let var_1 = var_0;
    return abs(_wgslsmith_add_u32(~select(var_0.c.c.x, global0.x, var_0.b > var_0.b), ~((4760u >> (var_0.c.a % 32u)) ^ var_1.a.x)));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> vec3<u32> {
    var var_0 = Struct_2(select(u_input.c, countOneBits(~(~vec3<u32>(arg_0, 4294967295u, global0.x))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), all(vec3<bool>(false, true, true)) || true)), arg_1.x, Struct_1(1u >> (((arg_0 << (4294967295u % 32u)) >> (~4294967295u % 32u)) % 32u), ~func_3(arg_1.x, arg_1.x, false) >= ~firstLeadingBit(arg_0), vec3<u32>(_wgslsmith_mod_u32(1u, ~0u), func_3(-901f, _wgslsmith_f_op_f32(-arg_1.x), true), global0.x & ~42221u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -1010f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -1150f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.x)) - _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(-831f - arg_1.x), false)))));
    var var_1 = select(vec3<bool>(true, true, any(vec3<bool>(all(vec2<bool>(false, var_0.c.b)), true, false & var_0.c.b))), select(select(vec3<bool>(true, select(false, var_0.c.b, var_0.c.b), true), !select(vec3<bool>(var_0.c.b, true, true), vec3<bool>(false, true, var_0.c.b), true), all(vec3<bool>(true, true, true))), !(!vec3<bool>(var_0.c.b, var_0.c.b, var_0.c.b)), global0.x == countOneBits(31961u)), var_0.c.b);
    var_0 = Struct_2(vec3<u32>(18883u, u_input.c.x, global0.x), arg_1.x, Struct_1(firstTrailingBit(_wgslsmith_mod_u32(1u, ~var_0.c.c.x)), var_1.x, vec3<u32>(_wgslsmith_clamp_u32(~3176u, ~15113u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.c.x, u_input.b), vec4<u32>(2107u, global0.x, var_0.c.c.x, 73229u))), ~(~arg_0), _wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.b, u_input.c.x, 4294967295u, 1u), vec4<u32>(1u, arg_0, 13993u, global0.x)), ~vec4<u32>(u_input.b, 772u, u_input.b, var_0.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-917f - arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -3079f)))), arg_1.x);
    var_0 = Struct_2(vec3<u32>(var_0.c.c.x, arg_0, arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(514f))), var_0.c, arg_1.x);
    let var_2 = Struct_2(u_input.c, -761f, var_0.c, 1746f);
    return vec3<u32>(_wgslsmith_mult_u32(30696u, ~var_0.c.c.x), 1u, arg_0);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: vec2<bool>) -> Struct_2 {
    global0 = u_input.c;
    global0 = func_2(global0.x, vec4<f32>(-2581f, _wgslsmith_f_op_f32(1040f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1006f)), _wgslsmith_f_op_f32(1625f + -436f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-1072f, 682f)));
    var var_0 = Struct_2(u_input.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-313f - -1039f))), _wgslsmith_f_op_f32(312f + -420f))))), Struct_1(_wgslsmith_clamp_u32(global0.x, func_3(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-523f + 422f), 4043u >= global0.x), u_input.c.x), arg_1.x || true, u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(246f, -814f), vec2<f32>(390f, -107f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-949f, _wgslsmith_f_op_f32(f32(-1f) * -515f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1333f, 1000f)))), 111f))));
    return Struct_2(~(~max(~vec3<u32>(0u, 18410u, var_0.c.c.x), ~vec3<u32>(var_0.a.x, global0.x, u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.d)) - _wgslsmith_f_op_f32(trunc(1097f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) * _wgslsmith_f_op_f32(ceil(var_0.c.d.x)))) * -1000f), var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -112f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(global0.x, countOneBits(_wgslsmith_div_u32(global0.x, global0.x)) & global0.x), _wgslsmith_div_vec2_u32(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, u_input.b, 0u, global0.x), vec4<u32>(0u, 1u, 1u, 0u)), ~vec4<u32>(0u, global0.x, 4294967295u, 68513u))), global0.xy));
    let var_1 = func_1(max(reverseBits(-(~vec4<i32>(-24797i, u_input.a, u_input.a, 1i))), ~_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a, 2147483647i, 16275i, u_input.a), select(vec4<i32>(2147483647i, -2147483647i, u_input.a, 45998i), vec4<i32>(1i, 47457i, 2147483647i, u_input.a), true))), vec3<bool>(select(false, true, !all(vec4<bool>(false, true, false, false))), true, true), vec2<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, false, false, false))))));
    var var_2 = select(true, true, max(u_input.a, 1i) == (countOneBits(49002i) << (~u_input.b % 32u)));
    var var_3 = vec3<bool>(var_1.c.b, var_1.c.b, false);
    var_3 = select(select(vec3<bool>(var_1.c.b, true, !(25830u > global0.x)), vec3<bool>(true, true, true), select(select(select(vec3<bool>(var_3.x, true, false), vec3<bool>(var_3.x, var_1.c.b, false), false), vec3<bool>(var_3.x, var_3.x, true), select(vec3<bool>(var_3.x, true, var_1.c.b), vec3<bool>(var_1.c.b, true, var_1.c.b), vec3<bool>(true, var_3.x, var_1.c.b))), !vec3<bool>(var_1.c.b, var_1.c.b, true), !select(vec3<bool>(true, var_1.c.b, false), vec3<bool>(true, var_3.x, true), var_3.x))), vec3<bool>(30983i >= -reverseBits(u_input.a), any(!(!vec3<bool>(var_3.x, var_1.c.b, var_1.c.b))), select(true, var_3.x, func_1(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 26680i, 70662i)), vec3<bool>(false, var_1.c.b, var_1.c.b), vec2<bool>(var_3.x, var_1.c.b)).c.b)), !vec3<bool>((var_1.b <= 1159f) || select(true, var_3.x, var_3.x), true, select(u_input.a, 1i, var_3.x) <= u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<u32>(0u, reverseBits(firstTrailingBit(37010u)), ~reverseBits(1u), abs(func_1(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), vec3<bool>(var_3.x, var_3.x, var_1.c.b), var_3.zy).a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(40636u, 5799u, 0u, max(0u, 1u)), select(vec4<u32>(1u, 4294967295u, global0.x, u_input.b), ~vec4<u32>(0u, u_input.b, global0.x, var_1.a.x), false))), global0.xx);
}

