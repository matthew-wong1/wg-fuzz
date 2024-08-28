struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec3<u32>(52322u, 0u, 30408u)), Struct_2(vec3<u32>(53811u, 26128u, 36704u)), Struct_2(vec3<u32>(22508u, 0u, 4294967295u)), Struct_2(vec3<u32>(33122u, 0u, 3195u)), Struct_2(vec3<u32>(8645u, 4294967295u, 19548u)), Struct_2(vec3<u32>(119264u, 11201u, 86543u)), Struct_2(vec3<u32>(48395u, 4294967295u, 36823u)), Struct_2(vec3<u32>(4294967295u, 12287u, 8418u)), Struct_2(vec3<u32>(4294967295u, 28482u, 0u)), Struct_2(vec3<u32>(62474u, 1u, 37430u)), Struct_2(vec3<u32>(4294967295u, 17771u, 1u)), Struct_2(vec3<u32>(18313u, 0u, 4294967295u)), Struct_2(vec3<u32>(4294967295u, 24653u, 0u)), Struct_2(vec3<u32>(9831u, 47630u, 0u)), Struct_2(vec3<u32>(0u, 1u, 32056u)), Struct_2(vec3<u32>(0u, 1u, 0u)), Struct_2(vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_2(vec3<u32>(61528u, 29895u, 0u)), Struct_2(vec3<u32>(25654u, 13435u, 1465u)), Struct_2(vec3<u32>(106124u, 24726u, 4294967295u)));

var<private> global2: array<f32, 1>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_2) -> u32 {
    let var_0 = vec4<bool>(!(!((2147483647i & u_input.b.x) >= -800i)), false | (any(vec2<bool>(true, true)) & false), (!any(vec2<bool>(false, true)) & all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))) && any(vec4<bool>(true, true, true, true)), !select(true, !any(vec3<bool>(true, true, false)), true));
    var var_1 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(max(vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 0u), ~0u, 1u, ~51167u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_3.a.x, arg_3.a.x, u_input.c.x), vec4<u32>(u_input.a.x, 1u, arg_3.a.x, arg_3.a.x)) << ((vec4<u32>(arg_3.a.x, arg_3.a.x, arg_3.a.x, 0u) << (vec4<u32>(arg_3.a.x, arg_3.a.x, arg_3.a.x, arg_3.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(46265u, u_input.c.x, arg_3.a.x, u_input.c.x), vec4<u32>(0u, 32200u, u_input.c.x, 0u), vec4<u32>(arg_3.a.x, u_input.c.x, arg_3.a.x, 4294967295u)))), ~_wgslsmith_mult_vec4_u32(~min(vec4<u32>(u_input.c.x, u_input.a.x, arg_3.a.x, arg_3.a.x), vec4<u32>(u_input.a.x, 11144u, u_input.a.x, 0u)), min(vec4<u32>(44627u, 0u, 82732u, u_input.a.x), select(vec4<u32>(u_input.a.x, u_input.c.x, arg_3.a.x, arg_3.a.x), vec4<u32>(u_input.a.x, 62349u, 15546u, 1u), var_0))));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global0.a))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(step(918f, 304f)), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(27708u, arg_3.a.x, 66982u), 1u)]))));
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 1u)]), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true)) + _wgslsmith_f_op_f32(arg_1.x * -1206f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2385f, 512f, true)) + _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(3576u, 1u)], -184f, true))))), global0.a.x));
    let var_3 = arg_3;
    return ~abs(var_3.a.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, 1273f, global0.a.x, global2[_wgslsmith_index_u32(59394u, 1u)]) - vec4<f32>(-628f, arg_1, -660f, -1157f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, arg_1, -305f, global0.a.x))))))));
    let var_1 = Struct_2(arg_0.yzw);
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(51593u, u_input.c.x << (4294967295u % 32u)) >> (max(func_3(2147483647i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.yy, vec2<f32>(global2[_wgslsmith_index_u32(var_1.a.x, 1u)], -1667f))) * _wgslsmith_div_vec2_f32(vec2<f32>(1286f, global0.a.x), global0.a.yx)), u_input.b.x, var_1), ~13667u) % 32u), 1u)];
    global2 = array<f32, 1>();
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(arg_0.x, 1u)])))))), _wgslsmith_f_op_f32(f32(-1f) * -1148f)));
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec2<i32>, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = func_2(vec4<u32>(u_input.c.x, firstTrailingBit(reverseBits(u_input.c.x)), u_input.c.x, select(~(~67774u), u_input.c.x, true)), arg_0.a.x, 1u);
    global0 = arg_0;
    var var_1 = vec4<bool>(true, true, true, true);
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(~(~vec4<u32>(u_input.a.x, var_0.a.x, u_input.a.x, 0u) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(68173u, var_0.a.x, var_0.a.x, 65537u), vec4<u32>(22945u, u_input.a.x, 50089u, var_0.a.x)))), ~(~select(~vec4<u32>(1u, var_0.a.x, 0u, 87291u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, var_0.a.x, u_input.c.x), vec4<u32>(var_0.a.x, var_0.a.x, 4294967295u, 31202u)), all(var_1.zyx)))), 20u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(937f, -169f));
    return Struct_2(_wgslsmith_clamp_vec3_u32(u_input.c, var_0.a, vec3<u32>(10680u, 1u, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!all(vec3<bool>(false, true, true)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global0.a), global0.a))));
    var var_2 = func_1(Struct_1(var_1.a), u_input.b.x, u_input.b.xx ^ select(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), -u_input.b.xz, vec2<i32>(u_input.b.x, 2147483647i)), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.xx, u_input.b.xw), _wgslsmith_sub_vec2_i32(u_input.b.zy, vec2<i32>(-7929i, 39341i))), !var_0), ~u_input.b);
    global1 = array<Struct_2, 20>();
    var var_3 = true;
    let var_4 = func_2(vec4<u32>(4294967295u, u_input.c.x, u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(~57994u, ~8108u, var_2.a.x), _wgslsmith_sub_vec3_u32(var_2.a & var_2.a, max(vec3<u32>(u_input.c.x, 1u, 1u), u_input.c)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1465f)))), _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(u_input.c.x, u_input.c.x, 48317u, var_2.a.x))), ~(vec4<u32>(var_2.a.x, 90674u, u_input.a.x, 4294967295u) >> ((vec4<u32>(u_input.a.x, 48567u, u_input.a.x, 4294967295u) << (vec4<u32>(53328u, 51288u, 4294967295u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x)) ^ u_input.b.zy));
}

