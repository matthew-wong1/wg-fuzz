struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15>;

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: i32 = -18741i;

var<private> global3: array<vec3<i32>, 20>;

var<private> global4: bool = true;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = -489f;
    var var_1 = var_0;
    var_1 = _wgslsmith_f_op_f32(-var_0);
    global0 = array<Struct_2, 15>();
    global2 = -2147483647i;
    return vec3<u32>(914u, min(_wgslsmith_sub_u32(~select(15146u, u_input.b.x, true), 33071u), u_input.c >> (14809u % 32u)), ~_wgslsmith_mod_u32(47810u, _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a.x, u_input.c), 28121u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    global4 = arg_1.b;
    let var_0 = Struct_2(vec3<i32>(0i, arg_2.a.x, -2147483647i), arg_0.c.x);
    let var_1 = ~_wgslsmith_div_u32(u_input.a.x, 59579u);
    var var_2 = Struct_3(any(vec4<bool>(all(vec2<bool>(arg_2.b, arg_1.b)), true, false, var_1 == 1u)) | !(!(true || arg_1.b)), vec4<f32>(542f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -490f)))), _wgslsmith_f_op_f32(658f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1267f, 1684f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1746f))))));
    global3 = array<vec3<i32>, 20>();
    return !any(vec3<bool>(false && arg_1.b, any(vec4<bool>(true, false, global1.x, true)), select(false, var_2.a, global1.x))) && arg_2.b;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> vec2<bool> {
    let var_0 = true;
    let var_1 = ~arg_0.a;
    let var_2 = vec4<u32>(u_input.d, u_input.a.x, ~(~61658u), 1u) ^ _wgslsmith_div_vec4_u32(min(~(~vec4<u32>(u_input.d, 67140u, 56187u, u_input.a.x)), ~firstLeadingBit(vec4<u32>(u_input.d, u_input.d, 1u, 38951u))), ~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, u_input.b.x, 696u, u_input.c), vec4<u32>(u_input.a.x, u_input.d, u_input.c, 4594u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(84209u, 1u, 93572u, u_input.a.x), vec4<u32>(12473u, u_input.c, 0u, u_input.c), vec4<u32>(71194u, 4294967295u, u_input.b.x, u_input.d))));
    global1 = select(vec2<bool>(true, arg_0.b), select(vec2<bool>(true, true), !select(vec2<bool>(false, arg_0.b), select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(var_0, false), vec2<bool>(var_0, false))), select(vec2<bool>(true, !arg_0.b), !(!vec2<bool>(var_0, true)), vec2<bool>(global1.x, arg_0.b))), vec2<bool>(4386u == u_input.b.x, global1.x));
    var var_3 = true;
    return vec2<bool>(false, any(select(!vec2<bool>(arg_0.b, true), !select(vec2<bool>(arg_0.b, false), vec2<bool>(global1.x, true), vec2<bool>(var_0, var_0)), (var_2.x <= 0u) | any(vec4<bool>(arg_0.b, arg_0.b, false, true)))));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<f32>) -> StorageBuffer {
    global4 = true;
    var var_0 = Struct_2(-select(~vec3<i32>(45987i, 19750i, -45116i), global3[_wgslsmith_index_u32(abs(19210u), 20u)], select(vec3<bool>(arg_1.x, true, true), select(vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(false, false, false), vec3<bool>(false, arg_1.x, false)), !arg_1.x)), select(any(vec4<bool>(global1.x, arg_1.x, false, true)) || select(true, func_2(Struct_1(global3[_wgslsmith_index_u32(1u, 20u)], -2147483647i, vec3<bool>(true, false, false)), global0[_wgslsmith_index_u32(91502u, 15u)], Struct_2(global3[_wgslsmith_index_u32(arg_0, 20u)], global1.x)), func_2(Struct_1(global3[_wgslsmith_index_u32(arg_0, 20u)], -1i, vec3<bool>(false, true, true)), global0[_wgslsmith_index_u32(u_input.a.x, 15u)], Struct_2(global3[_wgslsmith_index_u32(44568u, 20u)], global1.x))), false, !(!(1081u > u_input.d))));
    let var_1 = Struct_1(vec3<i32>(var_0.a.x, 28510i, -var_0.a.x), var_0.a.x, !vec3<bool>(func_2(Struct_1(global3[_wgslsmith_index_u32(u_input.d, 20u)], 1969i, vec3<bool>(true, false, false)), Struct_2(vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x), var_0.b), Struct_2(vec3<i32>(41047i, var_0.a.x, var_0.a.x), false)), !var_0.b && false, arg_1.x));
    var var_2 = Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~firstTrailingBit(arg_0), 1u) << (~min(0u, ~30758u) % 32u), 20u)], var_1.a.x, var_1.c);
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_2.x)), -385f, _wgslsmith_f_op_f32(-arg_2.x)))))));
    return StorageBuffer(_wgslsmith_f_op_f32(floor(arg_2.x)), func_1(var_1).x, _wgslsmith_mult_u32(0u ^ _wgslsmith_mod_u32(reverseBits(arg_0), ~4294967295u), ~(_wgslsmith_div_u32(1u, arg_0) | _wgslsmith_add_u32(u_input.b.x, arg_0))), min(_wgslsmith_clamp_vec3_i32(max(~vec3<i32>(427i, -34313i, var_2.a.x), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.a.x, var_1.b, 1i), var_0.a)), vec3<i32>(31270i, var_2.a.x >> (1u % 32u), _wgslsmith_add_i32(var_0.a.x, 2147483647i)), ~(~vec3<i32>(-3494i, var_2.a.x, var_0.a.x))), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(44730i, var_1.b), ~(-34364i), var_1.b), ~(-vec3<i32>(54890i, -2147483647i, -16290i)), _wgslsmith_mod_vec3_i32(select(var_2.a, vec3<i32>(-29558i, var_1.a.x, var_0.a.x), var_1.c.x), ~vec3<i32>(2421i, 55154i, var_0.a.x)))), var_2.a.yy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~func_1(Struct_1(global3[_wgslsmith_index_u32(4294967295u, 20u)], -9918i, vec3<bool>(global1.x, true, false)))));
    let x = u_input.a;
    s_output = func_4(4294967295u, select(!select(!vec2<bool>(true, global1.x), !vec2<bool>(true, global1.x), vec2<bool>(true, false)), vec2<bool>(select(19100u < var_0.x, true, func_2(Struct_1(global3[_wgslsmith_index_u32(4294967295u, 20u)], 38557i, vec3<bool>(false, true, global1.x)), Struct_2(vec3<i32>(-1i, 2147483647i, 1i), true), Struct_2(vec3<i32>(-2147483647i, 15525i, 8503i), true))), true), func_3(Struct_2(global3[_wgslsmith_index_u32(max(var_0.x, 0u), 20u)], any(vec3<bool>(global1.x, global1.x, global1.x))), reverseBits(vec2<i32>(1i, 1i)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(sign(-1512f)), -1000f, _wgslsmith_f_op_f32(167f - -2478f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1396f, 1264f, 335f), vec3<f32>(-331f, 1457f, -178f))))));
}

