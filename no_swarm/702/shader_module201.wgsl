struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_2,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(45741u, 52271u, 55421u, 4294967295u);

var<private> global1: array<i32, 29>;

var<private> global2: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    global0 = abs(~_wgslsmith_mod_vec4_u32(~vec4<u32>(global0.x, global0.x, global0.x, 1u), firstLeadingBit(vec4<u32>(u_input.a, 35139u, u_input.b, 1u))) & _wgslsmith_sub_vec4_u32(~(vec4<u32>(global0.x, u_input.b, 1269u, u_input.b) ^ vec4<u32>(u_input.b, u_input.a, 54269u, global0.x)), vec4<u32>(~58308u, 1u, 4294967295u, 1u)));
    global1 = array<i32, 29>();
    var var_0 = _wgslsmith_dot_vec2_u32(~global0.yz, ~_wgslsmith_mod_vec2_u32(max(global0.xx, global0.xx), vec2<u32>(0u, 1u) ^ vec2<u32>(1u, u_input.b))) <= ~(~countOneBits(u_input.a) << (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, 0u), countOneBits(global0.xyx)) % 32u));
    global1 = array<i32, 29>();
    var var_1 = vec3<u32>(u_input.a, _wgslsmith_div_u32(_wgslsmith_clamp_u32(~u_input.b, reverseBits(u_input.a), 4294967295u), u_input.b), ~21995u);
    return var_1.x;
}

fn func_2() -> Struct_3 {
    return Struct_3(Struct_2(Struct_1(_wgslsmith_div_u32(_wgslsmith_mod_u32(global0.x, 0u), func_3()), -426f, global0.wy >> (select(vec2<u32>(0u, 0u), global0.xx, true) % vec2<u32>(32u)), abs(1i), -125f), false & all(vec4<bool>(true, true, true, true))), Struct_1(_wgslsmith_div_u32(min(u_input.b, firstTrailingBit(4294967295u)), u_input.a), -293f, ~select(global0.yw, vec2<u32>(u_input.b, global0.x), true) | global0.wx, min(_wgslsmith_mod_i32(firstLeadingBit(global1[_wgslsmith_index_u32(62670u, 29u)]), 0i << (u_input.a % 32u)), -u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(292f + -423f))), vec2<bool>(~min(0u, 37973u) <= _wgslsmith_mod_u32(~u_input.b, 1u), any(vec4<bool>(true, true, true, true))), Struct_2(Struct_1(u_input.b, -392f, ~_wgslsmith_div_vec2_u32(global0.xz, global0.xy), global1[_wgslsmith_index_u32(1u, 29u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), true), select(select(vec4<bool>(true, true, all(vec2<bool>(true, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, false, false)), any(select(vec2<bool>(false, false), vec2<bool>(false, true), true))), vec4<bool>(true, true, !all(vec3<bool>(false, true, false)), any(vec2<bool>(false, true)) | false), true));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: u32) -> vec4<u32> {
    var var_0 = func_2();
    let var_1 = Struct_2(var_0.d.a, arg_0 <= 857f);
    let var_2 = global2[_wgslsmith_index_u32(7684u, 20u)];
    var_0 = Struct_3(func_2().d, var_1.a, !select(select(select(vec2<bool>(var_1.b, var_0.e.x), vec2<bool>(true, var_1.b), var_2.xy), !var_0.c, !vec2<bool>(var_2.x, var_2.x)), func_2().c, var_2.xx), Struct_2(Struct_1(4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1254f))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, 28774u), vec2<u32>(var_1.a.a, 14731u), global0.zz), 1i, func_2().b.b), _wgslsmith_f_op_f32(floor(-514f)) < _wgslsmith_f_op_f32(-var_1.a.b)), var_0.e);
    let var_3 = _wgslsmith_add_i32(_wgslsmith_add_i32(reverseBits(var_0.d.a.d), -_wgslsmith_add_i32(5309i, var_0.a.a.d)), global1[_wgslsmith_index_u32(1u, 29u)]);
    return ~_wgslsmith_add_vec4_u32(vec4<u32>(~firstTrailingBit(u_input.a), 43913u, global0.x, 78911u), ~select(select(vec4<u32>(arg_2, u_input.a, var_0.d.a.c.x, 24671u), vec4<u32>(var_1.a.a, 1u, arg_2, 4294967295u), vec4<bool>(true, arg_1, true, var_2.x)), vec4<u32>(1u, 43592u, 3720u, 1u), var_0.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(select(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(10489u, 4294967295u, 0u, 52019u), vec4<u32>(52291u, u_input.b, global0.x, global0.x)), func_1(-906f, false, 0u)), ~vec4<u32>(global0.x, 37217u, u_input.a, global0.x), vec4<bool>(true, true, true, true)) ^ select(vec4<u32>(~u_input.a, ~24332u, 1u, global0.x), countOneBits(vec4<u32>(43805u, global0.x, global0.x, 0u)), func_2().e));
    global2 = array<vec3<bool>, 20>();
    let var_1 = ~(~abs(min(u_input.b, _wgslsmith_mult_u32(var_0.x, u_input.b))));
    let var_2 = select(global2[_wgslsmith_index_u32(~63046u, 20u)], !func_2().e.wyx, !vec3<bool>(all(vec3<bool>(false, true, true)), u_input.b < _wgslsmith_add_u32(0u, var_0.x), all(vec4<bool>(true, false, true, true))));
    global0 = _wgslsmith_clamp_vec4_u32(var_0, ~var_0, firstTrailingBit(var_0));
    let var_3 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(462f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2205f, -1000f)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(360f, -1565f) + vec2<f32>(1235f, -715f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(579f, 447f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1085f, -664f) - vec2<f32>(-521f, -1288f)), var_2.x)), true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(firstTrailingBit(-(vec2<i32>(1i, -2147483647i) << (vec2<u32>(global0.x, u_input.b) % vec2<u32>(32u)))), ~(~vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(83739u, 29u)])) ^ -(~vec2<i32>(u_input.e, -2147483647i))));
}

