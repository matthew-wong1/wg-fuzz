struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: array<Struct_2, 20>;

var<private> global2: i32;

var<private> global3: array<Struct_3, 13>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1.a;
    let var_1 = arg_1.b;
    var var_2 = Struct_4(1273f, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(max(var_0, var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-457f)) - 121f)))));
    var var_3 = global0[_wgslsmith_index_u32(u_input.a, 27u)];
    var var_4 = _wgslsmith_f_op_f32(round(-2938f));
    return u_input.b;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> Struct_3 {
    var var_0 = select(vec2<i32>(~min(func_3(vec2<bool>(true, false), Struct_1(1400f, vec4<f32>(-1000f, -934f, -1204f, -1572f))), _wgslsmith_clamp_i32(35305i, arg_1, 2147483647i)), ~firstLeadingBit(~0i)), arg_0, !select(false, any(vec2<bool>(true, true)), true));
    let var_1 = select(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, 73167u, 5718u) | ~vec4<u32>(u_input.a, 21888u, u_input.a, 21464u), ~max(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)))), firstLeadingBit(vec4<u32>(max(u_input.a, ~4294967295u), u_input.a, u_input.a, u_input.a)), (u_input.a >> (~4294967295u % 32u)) >= u_input.a);
    var var_2 = ~(~vec3<u32>(11113u, _wgslsmith_sub_u32(u_input.a, var_1.x), ~10053u)) | vec3<u32>(_wgslsmith_add_u32(3079u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, 4294967295u), 0u)), var_1.x, _wgslsmith_div_u32(max(_wgslsmith_clamp_u32(u_input.a, 28196u, var_1.x), _wgslsmith_mult_u32(var_1.x, var_1.x)), _wgslsmith_clamp_u32(u_input.a, 9847u, 5680u) & 1u));
    var var_3 = Struct_4(-752f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-567f, -2354f) * vec2<f32>(-1576f, -264f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1054f, -414f), vec2<f32>(-344f, -1843f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-737f, 845f), _wgslsmith_f_op_f32(f32(-1f) * -938f)) * vec2<f32>(-697f, _wgslsmith_f_op_f32(max(-1469f, 1720f)))), any(vec4<bool>(true, true, true, true)))));
    var var_4 = _wgslsmith_mult_vec2_u32(~countOneBits(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(var_1.yx, var_2.zy), vec2<u32>(var_2.x, u_input.a))), _wgslsmith_mod_vec2_u32(var_1.yz, _wgslsmith_div_vec2_u32(abs(firstLeadingBit(var_1.wz)), vec2<u32>(var_2.x, ~var_2.x))));
    return global3[_wgslsmith_index_u32(u_input.a, 13u)];
}

fn func_1() -> Struct_3 {
    global3 = array<Struct_3, 13>();
    global1 = array<Struct_2, 20>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-977f, _wgslsmith_f_op_f32(f32(-1f) * -533f)))));
    let var_1 = u_input.a;
    global0 = array<Struct_2, 27>();
    return func_2(-max(vec2<i32>(2147483647i, u_input.b) << (vec2<u32>(var_1, u_input.a) % vec2<u32>(32u)), ~(-vec2<i32>(u_input.b, u_input.b))), u_input.c);
}

fn func_4(arg_0: Struct_3) -> vec4<u32> {
    var var_0 = select(vec4<bool>(true, !any(vec4<bool>(true, true, false, false)), true, ~select(1u, 13546u, true) <= _wgslsmith_clamp_u32(u_input.a ^ 1u, _wgslsmith_mod_u32(51769u, 4294967295u), 4294967295u)), select(vec4<bool>(all(vec4<bool>(true, false, true, false)), true, true, false), vec4<bool>(_wgslsmith_f_op_f32(round(-1410f)) > -494f, true, true || all(vec2<bool>(true, false)), false), !vec4<bool>(true, all(vec2<bool>(true, true)), u_input.c <= 0i, arg_0.a.a == 121f)), !select(true, false, select(true, true, false)));
    return vec4<u32>(~(~u_input.a), 89595u, firstLeadingBit(4294967295u), abs(min(~(u_input.a << (100887u % 32u)), u_input.a)));
}

fn func_5(arg_0: vec4<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-702f - -204f), -278f, 804f) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1131f, 1165f, 1000f) * vec3<f32>(-343f, -379f, 704f)))))))));
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(arg_0.zyw, vec3<u32>(42208u, 18670u, u_input.a)), arg_0.x), arg_0.wz), arg_0.zz)), 13u)];
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-2084f - var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 383f))));
    let var_3 = Struct_4(var_1.a.b.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.x, 268f))))))), _wgslsmith_f_op_vec2_f32(-func_2(vec2<i32>(u_input.c, u_input.c), _wgslsmith_sub_i32(u_input.c, 21212i)).a.b.ww)));
    var var_4 = var_3;
    return Struct_4(func_2(reverseBits(max(vec2<i32>(u_input.b, u_input.c), vec2<i32>(u_input.c, 1i)) | max(vec2<i32>(36207i, 34718i), vec2<i32>(-36150i, u_input.b))), u_input.b).a.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(func_2(vec2<i32>(u_input.c, u_input.b), u_input.c).a.b.x, _wgslsmith_f_op_f32(abs(694f)))), var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(true, true, !all(vec4<bool>(true, u_input.a == u_input.a, u_input.a < 18280u, true)));
    let var_1 = u_input.c;
    var var_2 = func_5(func_4(func_1()));
    var_0 = true;
    let var_3 = false;
    global0 = array<Struct_2, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1().a.b.x * 389f)));
}

