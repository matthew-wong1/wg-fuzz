struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<u32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
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

var<private> global0: vec4<bool>;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(11640i, 0i), vec2<i32>(41330i, 2147483647i), vec2<i32>(2147483647i, -64256i), vec2<i32>(22697i, 27530i), vec2<i32>(i32(-2147483648), 8551i), vec2<i32>(-13237i, 2147483647i), vec2<i32>(i32(-2147483648), -57725i), vec2<i32>(-949i, 1i), vec2<i32>(-23992i, -1i));

var<private> global3: u32 = 1u;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec2<f32>) -> u32 {
    global1 = _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_0.c.x, arg_2.e.c.x), 28811u);
    return arg_2.d.x;
}

fn func_3() -> vec4<bool> {
    var var_0 = _wgslsmith_clamp_vec2_u32(firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(357u, 1324u)))), firstTrailingBit(select(~abs(vec2<u32>(0u, 0u)), firstTrailingBit(vec2<u32>(4294967295u, 1u)), vec2<bool>(true, !global0.x))), vec2<u32>(4294967295u, countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(47181u, 125103u, 25366u, 4294967295u), vec4<u32>(4294967295u, 16809u, 16743u, 4294967295u)))));
    global2 = array<vec2<i32>, 9>();
    return select(!select(vec4<bool>(true, any(global0.zy), true, false), select(vec4<bool>(global0.x, true, false, global0.x), !vec4<bool>(global0.x, false, false, true), any(global0.yy)), !global0.x), vec4<bool>(global0.x, global0.x, any(!select(vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2495f)) + _wgslsmith_f_op_f32(832f * 1000f)) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -465f), _wgslsmith_f_op_f32(f32(-1f) * -306f))), true & global0.x);
}

fn func_2() -> u32 {
    global2 = array<vec2<i32>, 9>();
    global0 = !func_3();
    global1 = _wgslsmith_dot_vec3_u32(~firstTrailingBit(firstLeadingBit(~vec3<u32>(1u, 4294967295u, 0u))), countOneBits(vec3<u32>(1u, 1u, 1u)));
    global2 = array<vec2<i32>, 9>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), 337f);
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = 0u << (min(firstLeadingBit(_wgslsmith_sub_u32(~49325u, func_1(Struct_1(global0.x, global0.wwy, vec4<u32>(4294967295u, 0u, 1u, 4709u), -162f, true), vec3<bool>(true, true, global0.x), Struct_2(-726f, Struct_1(true, vec3<bool>(global0.x, global0.x, false), vec4<u32>(62031u, 4294967295u, 23521u, 1u), -2111f, global0.x), Struct_1(false, global0.zxw, vec4<u32>(6795u, 59301u, 76267u, 1u), 1826f, false), vec4<u32>(1470u, 1u, 12923u, 26570u), Struct_1(true, global0.wyz, vec4<u32>(1u, 0u, 4294967295u, 4294967295u), 1000f, true)), vec2<f32>(-590f, 1000f)))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_div_u32(4294967295u, 1u), func_2()))) % 32u);
    var var_0 = ~(countOneBits(u_input.b.wx) ^ _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x >> (0u % 32u)), global2[_wgslsmith_index_u32(abs(countOneBits(0u)), 9u)]));
    var_0 = global2[_wgslsmith_index_u32(min(~(select(~24089u, abs(1u), any(global0.wy)) & 1u), _wgslsmith_add_u32(51357u, 1u | ~func_1(Struct_1(global0.x, global0.xxz, vec4<u32>(18441u, 4294967295u, 41445u, 17445u), 1967f, false), vec3<bool>(false, global0.x, false), Struct_2(1372f, Struct_1(true, vec3<bool>(global0.x, global0.x, true), vec4<u32>(1u, 76848u, 50658u, 65562u), -205f, global0.x), Struct_1(global0.x, vec3<bool>(global0.x, global0.x, false), vec4<u32>(18165u, 3619u, 4294967295u, 40918u), 1773f, global0.x), vec4<u32>(10898u, 32083u, 4294967295u, 4294967295u), Struct_1(false, global0.zyy, vec4<u32>(56591u, 1u, 4294967295u, 60137u), -429f, true)), vec2<f32>(858f, 794f)))), 9u)];
    var var_1 = select(!vec4<bool>(global0.x, global0.x || true, func_3().x, all(vec2<bool>(true, true))), !vec4<bool>(any(!vec2<bool>(global0.x, global0.x)), true, global0.x, global0.x), select(vec4<bool>(!any(vec4<bool>(false, global0.x, false, false)), any(!vec4<bool>(true, true, global0.x, global0.x)), true, true), select(select(!vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(false, true, global0.x, true), global0.x), select(!vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, false, global0.x), vec4<bool>(true, global0.x, false, false), vec4<bool>(true, global0.x, global0.x, global0.x))), true), true));
    var var_2 = Struct_2(1504f, Struct_1(all(select(vec3<bool>(var_1.x, global0.x, false), !vec3<bool>(var_1.x, true, global0.x), all(vec4<bool>(var_1.x, true, global0.x, global0.x)))), vec3<bool>(global0.x, any(select(vec4<bool>(true, false, var_1.x, true), vec4<bool>(var_1.x, false, false, false), var_1.x)), false), _wgslsmith_div_vec4_u32(firstLeadingBit(~vec4<u32>(0u, 1u, 0u, 43030u)), ~vec4<u32>(1u, 1u, 1u, 1u)), 1000f, var_1.x), Struct_1(false, select(var_1.ywx, vec3<bool>(true, true, true), true), vec4<u32>(1u, 1u, 1u, 1u), -1575f, true), _wgslsmith_div_vec4_u32(~firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 53130u, 39101u), vec4<u32>(4294967295u, 11749u, 1u, 12534u))), ~vec4<u32>(1u, 19192u, 1u, 64035u)), Struct_1(!(1211f >= _wgslsmith_f_op_f32(select(-1973f, 1904f, false))), vec3<bool>(true, var_1.x, global0.x), vec4<u32>(select(63516u, 66517u, var_1.x), 4294967295u, 1u, firstTrailingBit(49663u)) | (select(vec4<u32>(1u, 4294967295u, 37915u, 9189u), vec4<u32>(4294967295u, 73820u, 28949u, 53764u), var_1.x) << (abs(vec4<u32>(3284u, 73890u, 31588u, 0u)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-668f))) + 1f), var_1.x));
    var_1 = vec4<bool>(true | all(select(!var_2.b.b, select(vec3<bool>(global0.x, false, global0.x), var_1.xzz, false), true)), var_2.b.a, any(select(vec2<bool>(var_1.x, global0.x), var_2.c.b.zx, var_2.b.b.x & true)), var_2.b.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1300f + 384f) * -190f));
}

