struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(1365u, 77209u, 4294967295u), vec3<u32>(14629u, 4294967295u, 17021u), vec3<u32>(25346u, 20305u, 24893u), vec3<u32>(4294967295u, 0u, 26262u), vec3<u32>(0u, 64883u, 1u), vec3<u32>(1u, 78811u, 0u), vec3<u32>(44667u, 16024u, 0u));

var<private> global1: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> bool {
    global0 = array<vec3<u32>, 7>();
    var var_0 = countOneBits(-u_input.b.yx);
    var_0 = -((vec2<i32>(arg_1, arg_0.a) ^ -vec2<i32>(u_input.b.x, 2310i)) | _wgslsmith_mult_vec2_i32(-u_input.b.xz, u_input.b.yx));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(~(countOneBits(92353u) << (_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, u_input.d) % 32u)), ~_wgslsmith_mult_u32(1u, u_input.c)), firstLeadingBit(firstLeadingBit(vec2<u32>(5508u, u_input.a.x)) << (abs(~vec2<u32>(36320u, u_input.c)) % vec2<u32>(32u))));
    return true;
}

fn func_2(arg_0: bool) -> vec3<bool> {
    global1 = Struct_1(u_input.b.x, global1.c.yyw, global1.c, !(func_3(Struct_1(u_input.b.x, global1.b, vec4<f32>(global1.c.x, global1.c.x, global1.c.x, 853f), false), -u_input.b.x) | global1.d));
    var var_0 = _wgslsmith_f_op_vec3_f32(-global1.c.zxz);
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-942f + _wgslsmith_f_op_f32(-global1.c.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-254f - -1368f)))))), -436f, -935f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_0.x, global1.b.x)))))));
    return !vec3<bool>(all(vec2<bool>(true, true)) == true, arg_0, !(!all(vec3<bool>(global1.d, arg_0, false))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = array<vec3<u32>, 7>();
    let var_0 = 4294967295u;
    global1 = arg_0;
    var var_1 = u_input.b;
    var_1 = vec3<i32>(~2147483647i, 1i, abs(-35499i));
    return Struct_1(~_wgslsmith_sub_i32(firstTrailingBit(abs(33082i)), reverseBits(arg_0.a) >> (select(1842u, 1u, global1.d) % 32u)), _wgslsmith_f_op_vec3_f32(-arg_0.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, -1096f, global1.b.x, -1056f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-700f, global1.c.x, -1379f, 537f), global1.c))), arg_0.c)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.c - global1.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(-285f, -224f, arg_0.c.x, global1.c.x) * vec4<f32>(global1.c.x, global1.b.x, -835f, 436f))))), all(vec2<bool>(global1.d, (global1.d && true) && (u_input.c <= 1u))));
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    let var_0 = func_4(Struct_1(firstLeadingBit(-u_input.b.x), vec3<f32>(_wgslsmith_div_f32(arg_0.x, -385f), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * global1.b.x))), global1.c, all(select(func_2(false), select(vec3<bool>(global1.d, true, global1.d), vec3<bool>(false, true, false), vec3<bool>(global1.d, global1.d, true)), global1.d))));
    let var_1 = Struct_1(u_input.b.x, global1.c.zzx, global1.c, all(vec2<bool>(1u < _wgslsmith_mult_u32(u_input.e, u_input.e), false)));
    var var_2 = vec3<u32>(u_input.d, u_input.a.x, u_input.e);
    global0 = array<vec3<u32>, 7>();
    var var_3 = !var_1.d;
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(abs(select(vec3<u32>(1u, 46196u, 1u), vec3<u32>(var_2.x, 27794u, 4939u), true) & ~vec3<u32>(59618u, 1674u, var_2.x)), firstLeadingBit(~select(vec3<u32>(18025u, 0u, 54337u), vec3<u32>(52675u, u_input.a.x, u_input.e), vec3<bool>(var_0.d, true, var_1.d)))), ~(~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_u32(min(min(vec4<u32>(u_input.d, u_input.e, u_input.e, 0u) >> (vec4<u32>(u_input.e, u_input.e, u_input.e, 4294967295u) % vec4<u32>(32u)), ~(~vec4<u32>(u_input.c, u_input.d, u_input.a.x, 672u))), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(26413u, u_input.d, u_input.c, u_input.d) ^ vec4<u32>(u_input.d, 0u, u_input.d, u_input.e), _wgslsmith_mod_vec4_u32(vec4<u32>(31630u, 1u, u_input.a.x, 72338u), vec4<u32>(16585u, u_input.e, 3857u, 1u)), select(vec4<u32>(u_input.c, u_input.e, u_input.d, u_input.a.x), vec4<u32>(1498u, 845u, u_input.a.x, 4294967295u), vec4<bool>(global1.d, global1.d, true, true))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(9896u, u_input.d, 4294967295u, 15010u), vec4<u32>(u_input.c, u_input.e, u_input.e, u_input.c)), u_input.d, abs(1u), u_input.e))), vec4<u32>(_wgslsmith_clamp_u32(func_1(vec2<f32>(global1.c.x, 1545f)), _wgslsmith_div_u32(13005u, ~0u), u_input.c), u_input.e, 14432u, firstLeadingBit(u_input.c ^ 62972u)), vec4<u32>(81252u, u_input.d, 9260u, u_input.a.x));
    let var_1 = !(!func_2(global1.d).zz);
    global0 = array<vec3<u32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(global1.b, global1.c.yzz, false)), ~min(vec4<i32>(-4710i, global1.a | u_input.b.x, ~u_input.b.x, u_input.b.x), vec4<i32>(_wgslsmith_clamp_i32(u_input.b.x, global1.a, u_input.b.x), firstLeadingBit(u_input.b.x), global1.a, _wgslsmith_sub_i32(-16613i, -54150i))));
}

