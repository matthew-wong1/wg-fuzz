struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(-229f, vec2<bool>(true, true), 0u), Struct_2(-1418f, vec2<bool>(false, true), 21732u), Struct_2(638f, vec2<bool>(false, true), 28213u), Struct_2(-1000f, vec2<bool>(true, false), 8747u), Struct_2(1707f, vec2<bool>(false, false), 1u), Struct_2(-1157f, vec2<bool>(false, true), 46796u), Struct_2(479f, vec2<bool>(true, false), 1691u), Struct_2(365f, vec2<bool>(true, false), 32682u), Struct_2(1000f, vec2<bool>(false, false), 61333u), Struct_2(-190f, vec2<bool>(false, false), 1u), Struct_2(1546f, vec2<bool>(false, true), 0u), Struct_2(-1405f, vec2<bool>(true, false), 6552u), Struct_2(407f, vec2<bool>(true, false), 32107u), Struct_2(1639f, vec2<bool>(true, false), 0u));

var<private> global1: vec3<i32>;

var<private> global2: Struct_2 = Struct_2(-1000f, vec2<bool>(true, false), 57038u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global2.a, _wgslsmith_f_op_f32(round(global2.a)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global2.a, -1000f)))))), global2.a, global2.a);
    let var_1 = Struct_1(any(vec2<bool>(false, false)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(0i, 8575i), firstTrailingBit(11498i), ~(-2147483647i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global1.x, global1.x, global1.x), vec3<i32>(u_input.d, u_input.a.x, global1.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, u_input.c.x, u_input.a.x), vec3<i32>(u_input.c.x, u_input.a.x, u_input.c.x)), -vec3<i32>(-18399i, -7187i, u_input.c.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) - var_0.x), -1320f, 1f, var_0.x));
    global0 = array<Struct_2, 14>();
    var var_2 = select(!vec2<bool>(false, (global1.x & -1i) <= countOneBits(var_1.b.x)), !global2.b, !vec2<bool>(!(!global2.b.x), true));
    var_2 = vec2<bool>(!var_2.x, !any(vec4<bool>(true, true, true, true)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -614f), -1088f, global2.b.x))), 1f));
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_2 {
    let var_0 = !vec4<bool>(global2.b.x | global2.b.x, !(!global2.b.x), true, true);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a + 514f) * _wgslsmith_f_op_f32(func_3())) + _wgslsmith_f_op_f32(max(-308f, _wgslsmith_f_op_f32(min(-653f, 390f))))))), !vec2<bool>(global2.b.x, !var_0.x), 0u);
    var var_2 = min(global1.x, 2147483647i);
    var var_3 = var_1.a;
    var var_4 = vec2<u32>(1u, _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_div_u32(1u, ~0u) ^ global2.c));
    return Struct_2(_wgslsmith_div_f32(401f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) - _wgslsmith_f_op_f32(f32(-1f) * -2395f))), vec2<bool>(true, !(var_1.c != var_4.x) | !var_1.b.x), ~(u_input.b.x | _wgslsmith_div_u32(~4294967295u, global2.c)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<u32>) -> Struct_2 {
    global2 = func_2(u_input.c.x, -45914i);
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -2105f))))));
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(abs(arg_1.x)), max(29182u, reverseBits(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(10061u, 23680u, 0u, arg_0.x), vec4<u32>(62788u, 1u, 1u, global2.c)), ~13271u)))), 14u)];
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(firstTrailingBit(~vec3<u32>(arg_0.x, arg_0.x, arg_1.x)), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(global2.c, 66490u, 30205u)), min(vec3<u32>(0u, global2.c, arg_1.x), vec3<u32>(arg_1.x, 2965u, u_input.b.x)))), firstTrailingBit(vec3<u32>(~73401u, ~3871u, ~12288u) & ~min(vec3<u32>(629u, 4294967295u, 11399u), vec3<u32>(arg_1.x, 0u, 4294967295u)))), 14u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 14>();
    global2 = func_1(reverseBits(u_input.b & _wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(global2.c, u_input.b.x))) << (~(~u_input.b) % vec2<u32>(32u)), abs(~(vec2<u32>(60152u, global2.c) | select(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.b.x, 4549u), global2.b))));
    global0 = array<Struct_2, 14>();
    global1 = _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.d, firstTrailingBit(firstLeadingBit(99487i)), 1i), select(firstTrailingBit(~vec3<i32>(u_input.d, -45113i, global1.x)) ^ firstLeadingBit(reverseBits(vec3<i32>(global1.x, 0i, global1.x))), vec3<i32>(max(global1.x, global1.x | 0i), _wgslsmith_mod_i32(u_input.d, 1i) << (global2.c % 32u), firstLeadingBit(1i)), vec3<bool>(true, false, !(u_input.c.x > global1.x))));
    var var_0 = ~countOneBits(global2.c);
    global2 = global0[_wgslsmith_index_u32(10095u, 14u)];
    var var_1 = -1i;
    var var_2 = _wgslsmith_mod_vec4_u32(select(firstLeadingBit(select(vec4<u32>(global2.c, u_input.b.x, 0u, 65093u) & vec4<u32>(global2.c, u_input.b.x, 47003u, 18144u), vec4<u32>(global2.c, 19111u, 49781u, global2.c) >> (vec4<u32>(1u, 4294967295u, u_input.b.x, global2.c) % vec4<u32>(32u)), global2.b.x || true)), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(global2.c, 0u, 1u, 0u)), ~vec4<u32>(global2.c, 3083u, u_input.b.x, 1u), ~vec4<u32>(1u, 1u, 44174u, 0u)), max(abs(vec4<u32>(0u, 0u, 65025u, 4294967295u)), ~vec4<u32>(u_input.b.x, global2.c, 73533u, u_input.b.x))), !(!select(vec4<bool>(true, true, false, global2.b.x), vec4<bool>(true, true, true, true), vec4<bool>(false, true, global2.b.x, true)))), ~_wgslsmith_sub_vec4_u32(~reverseBits(vec4<u32>(26692u, 30538u, 67712u, 4294967295u)), ~(~vec4<u32>(98787u, global2.c, 3378u, global2.c))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(func_2(-2147483647i, global1.x).c, var_2.x, 1u, max(var_2.x, ~u_input.b.x | min(1u, 79755u))), abs(global1.zz), firstLeadingBit(global1.xy));
}

