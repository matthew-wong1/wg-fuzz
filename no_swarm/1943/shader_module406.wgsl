struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: vec3<u32>;

var<private> global2: Struct_1 = Struct_1(1u, vec2<bool>(true, false), false, 4294967295u, 598f);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<bool>) -> vec2<bool> {
    let var_0 = Struct_1(~(1u << (~(~global2.d) % 32u)), !global2.b, global2.b.x, global2.d ^ _wgslsmith_add_u32(~firstTrailingBit(1u), ~countOneBits(1u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(298f + -1468f)), _wgslsmith_f_op_f32(-730f * _wgslsmith_f_op_f32(-global2.e)))));
    global0 = array<Struct_1, 21>();
    let var_1 = max(~_wgslsmith_sub_vec3_u32(~(vec3<u32>(global1.x, global1.x, var_0.a) << (vec3<u32>(global1.x, var_0.d, 77816u) % vec3<u32>(32u))), min(_wgslsmith_clamp_vec3_u32(vec3<u32>(66604u, 10037u, 1u), vec3<u32>(global1.x, var_0.a, global2.d), vec3<u32>(4294967295u, global2.d, 4294967295u)), reverseBits(vec3<u32>(var_0.a, 111230u, var_0.a)))), ~(~_wgslsmith_div_vec3_u32(~vec3<u32>(global2.a, 13869u, 0u), vec3<u32>(4294967295u, global1.x, global1.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.e, _wgslsmith_f_op_f32(trunc(-1805f)), _wgslsmith_f_op_f32(floor(1208f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2.e)), _wgslsmith_f_op_f32(abs(-1684f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_0.e, var_0.e)), _wgslsmith_f_op_f32(var_0.e - global2.e))), -659f))));
    var var_3 = true;
    return select(!vec2<bool>((global1.x >> (var_1.x % 32u)) < _wgslsmith_div_u32(global1.x, 50192u), all(vec3<bool>(var_0.b.x, false, var_0.b.x))), select(vec2<bool>(false, all(!vec4<bool>(true, arg_0.x, false, false))), global2.b, any(select(select(vec3<bool>(arg_0.x, global2.b.x, var_0.c), vec3<bool>(var_0.b.x, global2.b.x, true), var_0.b.x), vec3<bool>(var_0.b.x, var_0.c, true), !vec3<bool>(var_0.c, arg_0.x, var_0.c)))), arg_0);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32) -> u32 {
    global2 = Struct_1(29033u, func_3(!(!(!arg_1.b))), func_3(vec2<bool>((3970u > arg_1.d) & any(vec2<bool>(true, arg_1.c)), arg_0.x)).x, _wgslsmith_clamp_u32(max(max(~global1.x, global2.d), global2.d), 4294967295u, _wgslsmith_sub_u32(global2.d, abs(_wgslsmith_add_u32(arg_1.a, 1u)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_1.e)))));
    global2 = Struct_1(1u, vec2<bool>(all(select(select(vec3<bool>(arg_0.x, true, false), arg_0.yzw, arg_0.xzw), !vec3<bool>(global2.b.x, global2.c, arg_1.b.x), -1169i > u_input.a.x)), !(global2.e < -1089f)), !arg_1.c, 1u, -1266f);
    var var_0 = Struct_2(_wgslsmith_sub_i32(u_input.a.x, -2147483647i), select(!(!arg_1.c), !(arg_2 < select(arg_2, arg_1.d, false)), !(!(arg_1.d < 0u))), Struct_1(arg_2, select(vec2<bool>(all(vec2<bool>(false, false)), arg_0.x), arg_0.wy, vec2<bool>(true, global2.c)), func_3(func_3(select(global2.b, vec2<bool>(true, arg_1.c), arg_0.x))).x, arg_2, arg_1.e), Struct_1(21055u, !global2.b, 2147483647i >= (0i | firstLeadingBit(u_input.a.x)), global1.x, _wgslsmith_f_op_f32(-arg_1.e)), arg_1.a);
    var var_1 = _wgslsmith_mult_vec3_i32(u_input.a.wyy, vec3<i32>(var_0.a, select(1i << (abs(global1.x) % 32u), -2147483647i, !select(true, true, arg_1.b.x)), var_0.a));
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_2, 1u), _wgslsmith_dot_vec3_u32(max(_wgslsmith_mult_vec3_u32(~vec3<u32>(87054u, 17645u, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(global2.a, arg_1.a, var_0.d.a), vec3<u32>(29567u, arg_1.a, 4294967295u))), (vec3<u32>(arg_2, 9102u, 51189u) ^ vec3<u32>(global1.x, 7487u, 4294967295u)) | vec3<u32>(1u, global2.a, 0u)), abs(reverseBits(countOneBits(vec3<u32>(arg_2, var_0.d.d, 16924u))))));
    return 2827u;
}

fn func_1() -> u32 {
    global0 = array<Struct_1, 21>();
    global1 = ~vec3<u32>(_wgslsmith_add_u32(countOneBits(func_2(vec4<bool>(true, true, false, false), global0[_wgslsmith_index_u32(32181u, 21u)], 38072u)), global1.x), _wgslsmith_mod_u32((global1.x << (4294967295u % 32u)) ^ (966u | global1.x), ~global2.a), 0u);
    var var_0 = Struct_2(u_input.a.x, func_3(global2.b).x, Struct_1(abs(abs(global2.d)) & _wgslsmith_sub_u32(global2.a, global1.x), vec2<bool>(global2.c, select(true, any(vec4<bool>(false, global2.c, global2.b.x, global2.b.x)), false)), true, 45222u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1282f))) * global2.e)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, firstLeadingBit(50604u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(select(1u, 54742u, global2.c), ~0u, 54693u, global2.a), firstLeadingBit(~vec4<u32>(1u, 35511u, global2.d, global2.a))) % 32u), 21u)], global2.a);
    let var_1 = Struct_2(0i, true, var_0.c, Struct_1(var_0.d.a, var_0.d.b, !(!var_0.d.c) && true, 112u, 898f), ~max(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.d, var_0.d.d) << (global1.zx % vec2<u32>(32u)), global1.zz), abs(~41248u)));
    var_0 = var_1;
    return _wgslsmith_dot_vec4_u32(select(vec4<u32>(~0u, ~0u, min(0u, 4294967295u), ~9757u), vec4<u32>(107803u, global1.x, var_1.c.d, var_0.d.d) >> (vec4<u32>(1u, global1.x, 0u, var_0.e) % vec4<u32>(32u)), vec4<bool>(true, var_0.b, !global2.c, func_3(vec2<bool>(false, false)).x)) << (_wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.d.d, global2.d, global1.x, 4294967295u), vec4<u32>(global1.x, var_0.c.a, var_1.e, 1u)), abs(~vec4<u32>(4294967295u, var_1.d.d, global1.x, 0u))) % vec4<u32>(32u)), ~vec4<u32>(~var_0.e | countOneBits(0u), global1.x, _wgslsmith_add_u32(0u, ~global2.d), ~abs(global2.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.b.x;
    var var_1 = global2.c;
    var var_2 = 41322i;
    global1 = ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, 26333u, ~37706u), ~vec3<u32>(24057u, 4294967295u, global2.a) ^ reverseBits(vec3<u32>(global2.a, global1.x, global2.d))));
    global1 = countOneBits(~vec3<u32>(min(func_1(), global1.x), _wgslsmith_dot_vec2_u32(global1.zy, abs(vec2<u32>(98228u, global2.d))), ~36709u));
    var_1 = any(global2.b);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a.yzz, u_input.a.zwz), abs(u_input.a.x), -31303i, u_input.a.x) & u_input.a), _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(global1.x & global2.d, ~global2.a), func_1() & _wgslsmith_mult_u32(0u, 44879u)), func_1()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global2.e, 358f, global2.e))) + vec4<f32>(_wgslsmith_f_op_f32(abs(-1000f)), global2.e, _wgslsmith_f_op_f32(max(global2.e, global2.e)), _wgslsmith_f_op_f32(step(-1055f, -1157f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2087f, -1762f, _wgslsmith_f_op_f32(floor(950f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.e, 462f, global2.e))), vec3<f32>(_wgslsmith_div_f32(-995f, 891f), _wgslsmith_f_op_f32(abs(-831f)), global2.e))), -621f);
}

