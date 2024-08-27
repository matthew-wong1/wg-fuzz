struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<u32>(0u, 20521u, 1u), true), Struct_1(vec3<u32>(76637u, 0u, 4294967295u), false), Struct_1(vec3<u32>(4294967295u, 0u, 30331u), false), Struct_1(vec3<u32>(17184u, 40316u, 10786u), false), Struct_1(vec3<u32>(1u, 1u, 65651u), false), Struct_1(vec3<u32>(93364u, 94532u, 67785u), true), Struct_1(vec3<u32>(0u, 19833u, 4294967295u), true), Struct_1(vec3<u32>(28096u, 0u, 0u), true), Struct_1(vec3<u32>(1u, 1u, 1u), true), Struct_1(vec3<u32>(0u, 1u, 0u), true), Struct_1(vec3<u32>(93405u, 4294967295u, 9545u), true));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = 1f;
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 48661u | u_input.e.x, u_input.c.x, _wgslsmith_sub_u32(4294967295u, 1u)) << (vec4<u32>(_wgslsmith_mult_u32(firstTrailingBit(45866u), _wgslsmith_div_u32(u_input.e.x, 54906u)), 1u >> (~u_input.c.x % 32u), max(countOneBits(u_input.e.x), ~39688u), ~1u) % vec4<u32>(32u)), min(u_input.e >> (firstTrailingBit(~vec4<u32>(u_input.d, 4294967295u, 27649u, 23441u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(49072u, u_input.e.x, u_input.d, 33960u), vec4<u32>(56751u, 33192u, 1u, u_input.a)) & ~vec4<u32>(u_input.d, 0u, u_input.d, 1u)));
    let var_2 = _wgslsmith_mult_u32(4718u, var_1);
    let var_3 = Struct_2(arg_0.a);
    var var_4 = -firstLeadingBit(-(~vec3<i32>(7394i, -4896i, 17840i) << (vec3<u32>(var_1, 0u, var_2) % vec3<u32>(32u))));
    return !vec2<bool>(any(vec4<bool>(true, all(vec3<bool>(false, true, false)), true, true)), all(vec3<bool>(true, true, true)));
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_1, 11>();
    var var_0 = !select(func_3(Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(-1629f, 1183f), vec2<f32>(862f, -2620f)))), func_3(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-560f, -326f)))), vec2<bool>(true, true));
    var_0 = select(vec2<bool>(!(!(!var_0.x)), var_0.x), func_3(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(881f - 214f), _wgslsmith_div_f32(-865f, -770f)))), false);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(603f + _wgslsmith_f_op_f32(247f + -1054f)))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1, -1261f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(464f, var_1))))))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.a.x, var_1, var_0.x)))))));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(vec3<u32>(34806u, _wgslsmith_clamp_u32(0u | (u_input.a >> (u_input.d % 32u)), u_input.e.x, select(_wgslsmith_mult_u32(4294967295u, u_input.a), 4294967295u >> (u_input.d % 32u), false)), u_input.a), u_input.a >= u_input.a);
    var var_1 = ~(~max(_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(3231u, 72709u)), abs(_wgslsmith_sub_vec2_u32(var_0.a.zy, var_0.a.zz))));
    let var_2 = vec2<bool>(true, 1282f > _wgslsmith_f_op_f32(sign(-1000f)));
    let var_3 = ~select(abs(abs(vec2<i32>(u_input.b, -1i))), ~(~(~vec2<i32>(-2147483647i, u_input.b))), var_0.b | false);
    var_0 = global0[_wgslsmith_index_u32(var_1.x, 11u)];
    return func_2();
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = _wgslsmith_mult_u32(abs(1u), select(u_input.d, ~68838u, all(vec2<bool>(true, true))));
    let var_1 = vec3<i32>(max(-1i, ~firstLeadingBit(~1i)), max(-countOneBits(i32(-1i) * -2147483647i), 21778i), u_input.b);
    var var_2 = 67639u;
    return select(u_input.e.zyw, u_input.e.zwz, select(vec3<bool>(true, true, true), !vec3<bool>(true, false, all(vec4<bool>(true, true, true, true))), vec3<bool>(any(vec3<bool>(false, false, true)) | false, false, false)));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    let var_0 = Struct_1(func_5(func_4(func_2()), func_2(), func_2()), func_3(func_2()).x);
    var var_1 = ~(~arg_3.a.x);
    let var_2 = arg_1.x;
    return Struct_1(func_5(func_4(func_2()), Struct_2(arg_1.zy), func_4(func_4(Struct_2(arg_1.wz)))), arg_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -u_input.b;
    global0 = array<Struct_1, 11>();
    let var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(683f, -2543f)), _wgslsmith_f_op_f32(1031f + 522f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(402f + 1211f))), 896f));
    global0 = array<Struct_1, 11>();
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a.x + 435f), _wgslsmith_f_op_f32(sign(var_1.a.x)))))))));
    let var_3 = func_1(~(-1i), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1404f, var_1.a.x, var_2, 612f))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(342f, 1000f, 1082f, 769f) - vec4<f32>(-1199f, -2944f, var_1.a.x, 388f))))))), _wgslsmith_mult_u32(~countOneBits(72604u), u_input.c.x), global0[_wgslsmith_index_u32(min(u_input.a, (u_input.c.x << (40206u % 32u)) | _wgslsmith_mult_u32(14055u, u_input.d)) >> (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(0u, u_input.e.x ^ u_input.c.x, u_input.e.x), firstLeadingBit(0u >> (u_input.c.x % 32u)), _wgslsmith_mod_u32(u_input.e.x | 51320u, u_input.e.x & 55919u)) % 32u), 11u)]);
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(~_wgslsmith_dot_vec3_u32(var_3.a, vec3<u32>(var_3.a.x, u_input.e.x, var_3.a.x))), u_input.b);
}

