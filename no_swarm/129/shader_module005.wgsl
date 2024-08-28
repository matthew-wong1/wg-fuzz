struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 42126u, 6737u, 68261u);

var<private> global1: array<Struct_2, 19>;

var<private> global2: u32 = 1u;

var<private> global3: array<Struct_2, 4>;

var<private> global4: array<vec4<u32>, 5>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>) -> vec4<u32> {
    var var_0 = ~(~_wgslsmith_mult_i32(0i, 1i));
    let var_1 = Struct_2(global0.xzw, vec4<u32>(u_input.a, min(17501u, _wgslsmith_add_u32(0u, abs(global0.x))), max(abs(select(arg_1.x, 110392u, arg_0)), 0u), ~2848u));
    let var_2 = vec4<bool>(!arg_0, arg_0, false, any(vec3<bool>(arg_0, any(vec3<bool>(arg_0, true, arg_0)), global0.x >= 0u)) && arg_0);
    global4 = array<vec4<u32>, 5>();
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -596f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-571f * _wgslsmith_f_op_f32(select(117f, 379f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1120f, -1545f))), false))), 512f);
    return global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(abs(u_input.a << (0u % 32u)) >> (global0.x % 32u)), arg_1.x, 18603u), 5u)];
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: Struct_2) -> u32 {
    global2 = 21132u;
    let var_0 = Struct_2(reverseBits(vec3<u32>(1u, ~1u, arg_2.a.x)), countOneBits(abs(vec4<u32>(6875u, 37215u, 51960u, 0u << (arg_2.a.x % 32u)))));
    global0 = _wgslsmith_mult_vec4_u32(select(vec4<u32>(4294967295u, var_0.b.x, 0u, _wgslsmith_mult_u32(55067u, var_0.b.x) >> (firstLeadingBit(56733u) % 32u)), func_3(!(1u < u_input.a), vec2<u32>(_wgslsmith_sub_u32(var_0.b.x, 2130u), 26685u)), !select(!vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, false, true), arg_0.x)), arg_2.b);
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_1.yz);
    global0 = var_0.b;
    return ~_wgslsmith_div_u32(~_wgslsmith_clamp_u32(1u, ~global0.x, global0.x), _wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, ~u_input.a), _wgslsmith_div_u32(var_0.a.x, 78422u), 0u));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> vec3<u32> {
    global3 = array<Struct_2, 4>();
    global2 = 4294967295u;
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global0.x, 65088u), 5u)] << (~_wgslsmith_div_vec4_u32(global4[_wgslsmith_index_u32(0u, 5u)], vec4<u32>(u_input.a, 0u, 69845u, u_input.a)) % vec4<u32>(32u))), vec4<u32>(~(~1u), _wgslsmith_div_u32(~global0.x, ~4294967295u), 0u, ~67689u ^ min(u_input.a, 58611u)) ^ _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, global0.x, u_input.a, global0.x), reverseBits(vec4<u32>(u_input.a, 4294967295u, global0.x, u_input.a)))), 19u)];
    global2 = ~(~_wgslsmith_clamp_u32(u_input.a ^ 237u, ~40574u, abs(u_input.a)) | ~func_2(vec3<bool>(false, true, true), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1024f, arg_2, arg_0.c, arg_0.c), vec4<f32>(1000f, -1009f, 420f, -459f))), Struct_2(vec3<u32>(0u, 25529u, 0u), global4[_wgslsmith_index_u32(23134u, 5u)])));
    let var_1 = true;
    return firstTrailingBit(min(_wgslsmith_div_vec3_u32(~vec3<u32>(global0.x, global0.x, global0.x), _wgslsmith_sub_vec3_u32(var_0.b.www, vec3<u32>(9329u, u_input.a, global0.x))), global0.zzz) ^ min(vec3<u32>(~15387u, ~var_0.b.x, 0u | global0.x), var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_mod_vec3_u32(func_1(Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, false, true, true), _wgslsmith_f_op_f32(step(-238f, -178f))), 16117i, _wgslsmith_f_op_f32(f32(-1f) * -647f)), global0.zyz), select(vec4<u32>(1u << (1u % 32u), ~global0.x, 1u >> (1u % 32u), firstLeadingBit(global0.x)), vec4<u32>(~u_input.a, ~39371u, max(4294967295u, global0.x), _wgslsmith_clamp_u32(global0.x, u_input.a, 1u)), any(vec2<bool>(true, true))) >> (func_3(true, max(func_1(Struct_1(vec3<bool>(true, false, false), vec4<bool>(true, false, false, false), -515f), -2147483647i, 1785f).zy, global0.ww)) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 1i), vec2<i32>(~(-2147483647i), ~firstTrailingBit(-1i))), ~1i, -51880i);
    global2 = _wgslsmith_div_u32(_wgslsmith_div_u32(abs(~(~36784u)), _wgslsmith_div_u32(var_0.a.x, u_input.a)), reverseBits(~39590u));
    let var_2 = Struct_2(abs(func_1(Struct_1(vec3<bool>(true, false, true), vec4<bool>(true, true, false, false), -680f), _wgslsmith_mult_i32(-34670i, 0i), _wgslsmith_f_op_f32(floor(484f)))) >> (global0.zxy % vec3<u32>(32u)), vec4<u32>(~66752u, global0.x, 28844u, 32121u));
    var var_3 = u_input.a;
    var var_4 = !select(any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false))), all(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), true);
    let var_5 = Struct_1(!vec3<bool>(true, select(true, true, true), true), !vec4<bool>(true, true, !any(vec3<bool>(true, true, false)), -148f >= _wgslsmith_f_op_f32(round(-919f))), 1502f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_5.c), _wgslsmith_f_op_f32(var_5.c - -811f), _wgslsmith_div_f32(-1259f, var_5.c))), vec3<u32>(_wgslsmith_mult_u32(~var_2.a.x & _wgslsmith_mult_u32(u_input.a, global0.x), firstLeadingBit(~u_input.a)), 4880u, 75491u));
}

