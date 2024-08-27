struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(true), Struct_1(false), vec2<bool>(true, false), vec3<bool>(false, false, true), false), Struct_2(Struct_1(true), Struct_1(false), vec2<bool>(true, true), vec3<bool>(true, false, false), true), Struct_2(Struct_1(false), Struct_1(false), vec2<bool>(false, true), vec3<bool>(true, true, false), false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    global0 = array<Struct_2, 3>();
    global0 = array<Struct_2, 3>();
    global0 = array<Struct_2, 3>();
    let var_0 = Struct_1(true);
    global0 = array<Struct_2, 3>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(313f, -153f)), 1f)), 284f))));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 0u), 3u)];
    global0 = array<Struct_2, 3>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(sign(856f)));
    var var_2 = Struct_2(Struct_1(true || var_0.b.a), arg_0, select(var_0.d.yz, vec2<bool>(true, !(true && arg_0.a)), true), vec3<bool>(false, !(!(!arg_0.a)), var_1 < var_1), any(!select(!vec4<bool>(true, arg_0.a, arg_0.a, false), vec4<bool>(true, true, true, true), !vec4<bool>(var_0.e, true, false, arg_0.a))));
    var var_3 = global0[_wgslsmith_index_u32(u_input.d.x, 3u)];
    return any(vec3<bool>(var_0.d.x, !select(any(var_0.d), arg_1 == -3421i, all(vec3<bool>(arg_0.a, true, false))), any(!vec4<bool>(var_2.a.a, true, var_2.c.x, var_2.c.x)) & !all(var_0.d.xz)));
}

fn func_4(arg_0: bool, arg_1: i32) -> Struct_2 {
    var var_0 = Struct_1(true);
    var var_1 = -(~arg_1);
    var var_2 = Struct_2(Struct_1(all(select(select(vec3<bool>(arg_0, var_0.a, var_0.a), vec3<bool>(false, var_0.a, true), vec3<bool>(false, arg_0, false)), vec3<bool>(var_0.a, arg_0, var_0.a), select(false, true, var_0.a)))), Struct_1(!all(!vec3<bool>(true, arg_0, var_0.a))), !select(vec2<bool>(!var_0.a, true), !vec2<bool>(arg_0, true), select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, true), select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, true), vec2<bool>(true, true)))), !(!select(select(vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(arg_0, true, false), vec3<bool>(false, arg_0, arg_0)), vec3<bool>(false, true, var_0.a), arg_0)), !(all(select(vec4<bool>(true, false, arg_0, false), vec4<bool>(false, true, true, true), false)) & all(vec3<bool>(true, false, arg_0))));
    var var_3 = Struct_2(Struct_1(all(!(!vec4<bool>(true, true, var_0.a, false)))), var_2.b, var_2.c, var_2.d, !arg_0);
    var_1 = (u_input.b.x >> (~_wgslsmith_clamp_u32(26573u, u_input.e.x, ~1u) % 32u)) >> (~max(u_input.a.x, abs(u_input.d.x)) % 32u);
    return Struct_2(var_3.a, Struct_1(!any(!vec3<bool>(var_2.a.a, false, var_0.a))), vec2<bool>(var_0.a, any(select(select(var_2.d, var_2.d, vec3<bool>(var_2.d.x, true, true)), var_2.d, var_0.a))), var_2.d, all(vec2<bool>(true, all(var_3.d) || true)));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = func_4(arg_2.d.x & select(!func_2(Struct_1(arg_2.d.x), u_input.c.x), true, true), 1i);
    var_0 = arg_2;
    let var_1 = vec3<u32>(~(~_wgslsmith_div_u32(u_input.e.x, countOneBits(u_input.e.x))), countOneBits(select(~(~1u), ~(0u & u_input.e.x), true)), _wgslsmith_clamp_u32(22715u, u_input.e.x, 48063u));
    var_0 = Struct_2(func_4(func_4(true, _wgslsmith_mod_i32(i32(-1i) * -53283i, ~u_input.b.x)).a.a, -9993i).b, arg_2.a, !vec2<bool>(all(vec3<bool>(var_0.d.x, var_0.e, true)), func_4(0u != u_input.d.x, u_input.b.x).a.a), !var_0.d, all(select(vec4<bool>(true, true, true, true), !(!vec4<bool>(false, var_0.c.x, var_0.c.x, true)), vec4<bool>(true, all(var_0.d.zz), true, !arg_2.c.x))));
    var var_2 = func_4(false, u_input.b.x).a;
    return ~(min(~(var_1 & vec3<u32>(var_1.x, 25629u, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(42104u, var_1.x, var_1.x), vec3<u32>(1u, u_input.d.x, var_1.x) >> (var_1 % vec3<u32>(32u)), vec3<u32>(u_input.d.x, u_input.d.x, 1u))) & max(_wgslsmith_div_vec3_u32(u_input.a, var_1), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.e.x, u_input.a.x, u_input.d.x), vec4<u32>(1u, 13675u, 24266u, u_input.a.x)), ~33546u, var_1.x | 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.d.x), vec2<u32>(u_input.d.x, select(0u, 7720u, false))) > u_input.a.x;
    let var_1 = abs(~_wgslsmith_add_vec3_u32(u_input.a, ~func_1(1000f, 460f, global0[_wgslsmith_index_u32(u_input.e.x, 3u)])));
    var var_2 = func_4(!select(any(vec3<bool>(true, true, true)), false, false), _wgslsmith_sub_i32(u_input.c.x, u_input.b.x));
    var var_3 = func_4(var_2.c.x, u_input.c.x).b;
    let var_4 = ~vec4<u32>(u_input.d.x, 4294967295u, var_1.x, u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, 4294967295u, firstTrailingBit(u_input.d.x), firstLeadingBit(0u)) | var_4, ~var_1.x);
}

