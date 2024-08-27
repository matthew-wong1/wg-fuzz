struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-14181i, 0i, i32(-2147483648), 37376i);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(1u), Struct_1(25042u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(22273u), Struct_1(27827u), Struct_1(4294967295u), Struct_1(0u), Struct_1(0u), Struct_1(11726u), Struct_1(4294967295u), Struct_1(6375u), Struct_1(4294967295u), Struct_1(24400u), Struct_1(4294967295u), Struct_1(23796u), Struct_1(4294967295u), Struct_1(25077u), Struct_1(50822u), Struct_1(0u), Struct_1(0u), Struct_1(37022u), Struct_1(0u), Struct_1(0u), Struct_1(31707u));

var<private> global3: vec4<u32> = vec4<u32>(0u, 4294967295u, 0u, 57449u);

var<private> global4: f32 = -1000f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: vec4<i32>) -> u32 {
    global2 = array<Struct_1, 25>();
    var var_0 = vec4<bool>(arg_1.x, arg_1.x || (2147483647i != ~global0.x), arg_1.x, arg_1.x);
    let var_1 = 1783f;
    var var_2 = -abs(-_wgslsmith_mult_i32(24012i, i32(-1i) * -25522i));
    var var_3 = Struct_1(u_input.a);
    return u_input.e.x;
}

fn func_2() -> f32 {
    let var_0 = max(global3.wwx, vec3<u32>((func_3(vec2<f32>(352f, -446f), vec2<bool>(true, false), vec4<i32>(-1i, 0i, 2147483647i, -2147483647i)) << (global1.a % 32u)) >> (0u % 32u), ~72678u, _wgslsmith_mod_u32(global1.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 23243u, global1.a, 98007u), vec4<u32>(global1.a, global3.x, 46666u, u_input.e.x)))));
    var var_1 = vec2<bool>(true, true);
    global1 = global2[_wgslsmith_index_u32(29120u, 25u)];
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(219f + 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(921f, -1981f)) + _wgslsmith_f_op_f32(trunc(-821f)))) - _wgslsmith_f_op_f32(-2517f * -1094f));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = select(select(select(vec3<bool>(all(vec4<bool>(true, false, true, false)), true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), -260f <= _wgslsmith_f_op_f32(func_2())), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), false)), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(all(vec4<bool>(false, true, true, false)), u_input.c.x >= u_input.c.x, true), !any(vec3<bool>(false, true, false))), vec3<bool>(false, any(vec4<bool>(true, true, true, true)), true)), true);
    var var_1 = -_wgslsmith_sub_i32(_wgslsmith_add_i32(1i, -(i32(-1i) * -770i)), ~(~_wgslsmith_sub_i32(u_input.c.x, -1i)));
    global3 = select(_wgslsmith_sub_vec4_u32(~vec4<u32>(~46933u, 4294967295u, ~720u, _wgslsmith_add_u32(global1.a, arg_1.a)), firstTrailingBit(~abs(vec4<u32>(u_input.e.x, u_input.e.x, 0u, 31733u)))), ~vec4<u32>(countOneBits(u_input.d), global1.a, firstTrailingBit(_wgslsmith_sub_u32(u_input.e.x, 65065u)), (u_input.d | arg_1.a) & _wgslsmith_clamp_u32(28169u, global1.a, global3.x)), !all(vec4<bool>(any(var_0), all(vec3<bool>(var_0.x, true, false)), !var_0.x, !var_0.x)));
    let var_2 = firstLeadingBit(_wgslsmith_clamp_vec4_i32(~select(countOneBits(vec4<i32>(u_input.c.x, 58527i, u_input.c.x, global0.x)), vec4<i32>(-30272i, u_input.c.x, -1304i, global0.x), all(vec3<bool>(var_0.x, false, false))), vec4<i32>(_wgslsmith_div_i32(-18397i, -1i), -27559i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, global0.x), global0.zz), vec2<i32>(global0.x, 20743i) ^ vec2<i32>(global0.x, global0.x)), 39409i), min(~(~vec4<i32>(0i, u_input.c.x, global0.x, 0i)), abs(vec4<i32>(-1i, 2147483647i, global0.x, -8868i) | vec4<i32>(-1i, u_input.c.x, -12690i, 39814i)))));
    var var_3 = ~var_2;
    return global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, countOneBits(33897u)), 25u)];
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = arg_1;
    global3 = vec4<u32>(max(~0u, ~(~(~1u))), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(40225u, u_input.b, 0u, 44341u), ~vec4<u32>(global3.x, var_0.a, var_0.a, 9036u)), ~(~vec4<u32>(4294967295u, var_0.a, 45139u, global1.a))), firstLeadingBit(vec4<u32>(arg_1.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, var_0.a, 0u, 0u), vec4<u32>(0u, u_input.d, arg_1.a, 16723u)), ~5993u, 0u))), ~(~_wgslsmith_add_u32(func_1(1000f, Struct_1(19315u)).a, 1185u ^ u_input.e.x)), 4294967295u);
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-452f - _wgslsmith_f_op_f32(1504f * -538f)))));
    var var_1 = Struct_1(global1.a);
    var var_2 = Struct_1(global1.a);
    return StorageBuffer(abs(40849i) >> (1u % 32u), -129385i, abs(-select(abs(vec4<i32>(-1i, -53108i, 27977i, u_input.c.x)), ~vec4<i32>(2147483647i, -50765i, -11298i, global0.x), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-11234i, -1i, global0.x) ^ vec3<i32>(u_input.c.x, 12613i, u_input.c.x), _wgslsmith_div_vec3_i32(~global0.wzw, vec3<i32>(-2147483647i, 1i, 1i))), select(vec3<i32>(global0.x, 17403i, u_input.c.x), vec3<i32>(global0.x, -16599i, global0.x), vec3<bool>(true, true, true)) ^ vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global0.x, global0.x, u_input.c.x), vec4<i32>(u_input.c.x, 29376i, u_input.c.x, -25830i)), _wgslsmith_mult_i32(u_input.c.x, u_input.c.x), ~29902i)), func_1(1877f, Struct_1(u_input.a)));
}

