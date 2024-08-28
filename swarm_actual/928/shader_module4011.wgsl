struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 9>;

var<private> global1: array<Struct_1, 12>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<bool>) -> bool {
    global0 = array<vec3<f32>, 9>();
    var var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(select(u_input.c.xx, vec2<i32>(u_input.a, i32(-1i) * -39275i), select(arg_1, !arg_1, true)), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(max(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(22615i, u_input.a)), u_input.c.zw), select(u_input.c.yy, u_input.c.zw, vec2<bool>(arg_1.x, true)) >> ((vec2<u32>(107074u, 0u) >> (u_input.e.xx % vec2<u32>(32u))) % vec2<u32>(32u)))), -23852i);
    var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1478i, i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(43549i, u_input.a), vec2<i32>(-37285i, 24376i)), -(~(-6574i >> (u_input.b % 32u))), abs(max(firstTrailingBit(-2147483647i), -1i))), ~vec4<i32>(-7986i, countOneBits(~(-27629i)), reverseBits(_wgslsmith_mult_i32(u_input.c.x, u_input.a)), u_input.c.x));
    var var_1 = Struct_1(countOneBits(reverseBits(vec4<u32>(4294967295u, 1u ^ u_input.b, ~u_input.b, 1u))));
    let var_2 = Struct_1(~firstTrailingBit(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 1u, var_1.a.x, 0u), vec4<u32>(u_input.d, 4294967295u, 4294967295u, u_input.b), u_input.e))));
    return arg_1.x;
}

fn func_2(arg_0: vec2<i32>) -> bool {
    var var_0 = vec4<bool>(any(!select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, false))), true, ~(~_wgslsmith_dot_vec3_u32(u_input.e.wzy, u_input.e.wwx)) > u_input.e.x, func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(2506f, -1826f, 1252f, -912f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-759f, -1308f, 1000f, 181f)))))), !select(vec2<bool>(false, true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)))));
    var_0 = select(select(vec4<bool>(!select(var_0.x, false, var_0.x), select(false, true, !var_0.x), any(select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.zzz)), !var_0.x), select(vec4<bool>(true, select(false, true, var_0.x), true, true), vec4<bool>(all(var_0.wxz), var_0.x, true, var_0.x), var_0.x), var_0.x), select(vec4<bool>(select(all(vec2<bool>(true, var_0.x)), !var_0.x, var_0.x), ~arg_0.x >= ~u_input.c.x, var_0.x, true), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), !vec4<bool>(true, true, var_0.x, true), vec4<bool>(var_0.x, true, var_0.x, var_0.x)), true), all(vec4<bool>(!(var_0.x | false), !var_0.x, true, any(!vec4<bool>(true, var_0.x, false, var_0.x)))));
    var var_1 = global1[_wgslsmith_index_u32(1u, 12u)];
    let var_2 = !var_0.x;
    let var_3 = _wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c));
    return true;
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = !select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), false), any(vec3<bool>(true, false, true))), vec4<bool>(true, true, any(vec3<bool>(false, true, false)) || true, any(vec3<bool>(true, false, false))), select(vec4<bool>(false, true, all(vec2<bool>(true, true)), any(vec2<bool>(false, false))), vec4<bool>(true, true, 1i < u_input.c.x, false), vec4<bool>(func_2(vec2<i32>(u_input.c.x, 1i)), any(vec4<bool>(false, true, false, true)), true, any(vec2<bool>(true, true)))));
    let var_1 = vec3<bool>(true, true, false);
    global0 = array<vec3<f32>, 9>();
    let var_2 = -(~2147483647i);
    let var_3 = Struct_1(u_input.e);
    return Struct_1(min(_wgslsmith_div_vec4_u32(max(u_input.e, vec4<u32>(19839u, var_3.a.x, u_input.d, 0u)) << (abs(vec4<u32>(u_input.e.x, 0u, u_input.b, u_input.e.x)) % vec4<u32>(32u)), vec4<u32>(4294967295u, 54282u & u_input.b, u_input.d | 1u, ~21795u)), ~_wgslsmith_div_vec4_u32(~u_input.e, vec4<u32>(0u, 25471u, 7490u, 47902u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 12>();
    var var_0 = func_1(-631f);
    var var_1 = Struct_1(~var_0.a);
    var_0 = Struct_1(var_1.a);
    var_0 = func_1(-709f);
    let var_2 = !(!(!vec4<bool>(all(vec3<bool>(false, false, false)), true, false, true)));
    let var_3 = var_2.x;
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.c), _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(~u_input.e.x, 9454u), abs(firstTrailingBit(_wgslsmith_add_u32(9926u, 20749u))), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.e.x, var_0.a.x, 4294967295u, 1u)) ^ u_input.e, _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1.a.x, u_input.d, u_input.e.x, var_1.a.x), var_1.a, var_0.a))));
}

