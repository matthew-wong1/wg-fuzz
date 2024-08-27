struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: u32,
    d: Struct_4,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(vec4<f32>(-941f, -289f, 317f, 853f), 2142f, false, vec3<u32>(0u, 0u, 12512u)), true, 1232f));

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_5, arg_2: vec4<u32>, arg_3: bool) -> vec3<u32> {
    var var_0 = _wgslsmith_sub_vec2_u32(global1.d.xz, ~(~firstTrailingBit(max(vec2<u32>(21176u, u_input.d.x), u_input.d.ww))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-global1.a), _wgslsmith_f_op_f32(-global1.b), arg_1.d.a.c, _wgslsmith_clamp_vec3_u32(max(vec3<u32>(~u_input.c, ~var_0.x, 1u), vec3<u32>(~0u, 13162u << (1u % 32u), max(u_input.d.x, 15650u))), ~_wgslsmith_mult_vec3_u32(~global1.d, arg_1.b.c.a.d), vec3<u32>(~4294967295u, ~min(1u, 9929u), ~abs(arg_0.a.d.x))));
    global0 = array<Struct_2, 1>();
    global1 = arg_0.a;
    var var_2 = true;
    return firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec2_u32(arg_1.d.a.d.zy, arg_1.b.c.a.d.zz), _wgslsmith_sub_u32(4294967295u, _wgslsmith_sub_u32(global1.d.x, global1.d.x)), ~31535u), global1.d));
}

fn func_2() -> Struct_4 {
    let var_0 = ~_wgslsmith_mult_u32(~4294967295u, global1.d.x) | ~firstTrailingBit(~(36942u & u_input.d.x));
    var var_1 = global0[_wgslsmith_index_u32(~49004u, 1u)];
    var var_2 = vec4<bool>((global1.d.x | 1u) == 4294967295u, !var_1.a.c, true, var_1.b);
    return Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(step(var_1.a.a, _wgslsmith_f_op_vec4_f32(-global1.a))), -650f, all(!var_2.yz), vec3<u32>(_wgslsmith_dot_vec3_u32(func_3(Struct_4(var_1.a, 15290i), Struct_5(Struct_1(global1.a, -918f, false, vec3<u32>(var_1.a.d.x, var_1.a.d.x, 4294967295u)), Struct_3(var_1.b, var_2.www, Struct_2(Struct_1(var_1.a.a, 292f, false, vec3<u32>(var_1.a.d.x, u_input.c, var_0)), false, global1.b)), 48878u, Struct_4(var_1.a, 2147483647i), Struct_4(Struct_1(var_1.a.a, -130f, global1.c, vec3<u32>(28027u, global1.d.x, 1u)), u_input.b)), vec4<u32>(global1.d.x, u_input.d.x, var_1.a.d.x, 0u), false), countOneBits(vec3<u32>(u_input.c, 4294967295u, 23935u))), 79446u, u_input.d.x)), countOneBits(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 47919i, -1i), vec4<i32>(u_input.a.x, u_input.b, -25092i, u_input.e))));
}

fn func_1(arg_0: i32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -617f) - -918f);
    let var_1 = vec3<i32>(~(-14873i), u_input.a.x, -30557i) & firstTrailingBit(-u_input.a);
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(18676u, ~(0u | countOneBits(global1.d.x))), _wgslsmith_mod_u32(1u, _wgslsmith_div_u32(abs(global1.d.x), _wgslsmith_sub_u32(46083u, global1.d.x)) << (global1.d.x % 32u)));
    var_0 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-global1.a.x));
    let var_3 = !(!vec4<bool>(_wgslsmith_f_op_f32(-672f - -135f) < global1.b, any(!vec4<bool>(false, global1.c, true, true)), any(!vec4<bool>(true, global1.c, true, true)), false));
    return func_2();
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> f32 {
    global1 = arg_1.a;
    var var_0 = global0[_wgslsmith_index_u32(~min(76690u, _wgslsmith_dot_vec3_u32(min(~vec3<u32>(4294967295u, u_input.c, arg_1.a.d.x), vec3<u32>(arg_1.a.d.x, global1.d.x, 44977u)), _wgslsmith_mod_vec3_u32(abs(global1.d), vec3<u32>(89498u, arg_1.a.d.x, arg_1.a.d.x)))), 1u)];
    let var_1 = func_2().a;
    let var_2 = global0[_wgslsmith_index_u32(countOneBits(43022u), 1u)];
    let var_3 = select(select(!select(select(vec4<bool>(false, global1.c, var_1.c, var_1.c), vec4<bool>(false, global1.c, true, var_0.b), true), !vec4<bool>(var_2.a.c, false, false, global1.c), vec4<bool>(false, var_1.c, false, false)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, arg_1.a.c, var_1.c, false), any(vec4<bool>(true, global1.c, global1.c, var_0.a.c))), !select(vec4<bool>(var_2.b, var_0.a.c, true, var_1.c), vec4<bool>(var_1.c, var_0.b, true, false), vec4<bool>(global1.c, arg_1.a.c, var_0.a.c, arg_1.a.c))), select(!select(select(vec4<bool>(var_2.a.c, global1.c, arg_1.a.c, false), vec4<bool>(true, false, arg_1.a.c, var_1.c), vec4<bool>(var_1.c, true, false, true)), vec4<bool>(global1.c, true, true, false), !var_2.a.c), select(select(select(vec4<bool>(true, var_1.c, var_2.b, false), vec4<bool>(false, global1.c, var_2.b, arg_1.a.c), vec4<bool>(false, false, true, var_2.b)), select(vec4<bool>(arg_1.a.c, var_1.c, true, var_2.a.c), vec4<bool>(false, false, arg_1.a.c, var_2.b), false), select(var_2.b, true, false)), select(select(vec4<bool>(true, false, arg_1.a.c, true), vec4<bool>(global1.c, false, false, arg_1.a.c), arg_1.a.c), !vec4<bool>(true, global1.c, var_2.a.c, var_2.a.c), select(vec4<bool>(var_0.b, false, true, true), vec4<bool>(false, false, false, global1.c), false)), vec4<bool>(var_2.b, true, true, u_input.b <= 1i)), func_2().a.c), func_2().a.c);
    return func_1(countOneBits(arg_1.b)).a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(-(~vec4<i32>(53917i, -1i, u_input.a.x, _wgslsmith_clamp_i32(198i, -1i, u_input.b))), ~(vec4<i32>(_wgslsmith_mod_i32(-431i, u_input.e), 8494i ^ u_input.a.x, ~u_input.a.x, ~(-8267i)) >> (_wgslsmith_mult_vec4_u32(u_input.d << (u_input.d % vec4<u32>(32u)), u_input.d) % vec4<u32>(32u))), !(~1i < ~firstTrailingBit(17700i)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global1.a + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, global1.a.x, 1040f, global1.b)), _wgslsmith_f_op_vec4_f32(global1.a + global1.a), global1.c == global1.c))))), _wgslsmith_f_op_f32(func_4(_wgslsmith_mult_u32(7257u, u_input.c), func_1(~(~var_0.x)))), var_0.x >= _wgslsmith_div_i32(_wgslsmith_sub_i32(1i, 2147483647i), var_0.x), global1.d);
    var var_2 = vec2<u32>(_wgslsmith_add_u32(~_wgslsmith_div_u32(46074u, var_1.d.x), _wgslsmith_div_u32(var_1.d.x, 0u)), _wgslsmith_div_u32(41326u, func_2().a.d.x));
    let var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(step(global1.a, _wgslsmith_f_op_vec4_f32(select(global1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, global1.a.x, var_1.b, var_1.b)), !vec4<bool>(global1.c, global1.c, true, var_1.c))))), _wgslsmith_f_op_f32(f32(-1f) * -165f), true, global1.d), ~firstLeadingBit(~var_0.x));
    var var_4 = var_0.x;
    var_4 = _wgslsmith_sub_i32(func_2().b, ~(~(~(-63813i) << (~var_1.d.x % 32u))));
    var var_5 = reverseBits(~(~18671i));
    let var_6 = !select(vec2<bool>(!(true | var_1.c), any(select(vec2<bool>(true, var_1.c), vec2<bool>(false, var_3.a.c), vec2<bool>(var_1.c, false)))), select(vec2<bool>(true, func_2().a.c), vec2<bool>(global1.c, true), !vec2<bool>(true, var_1.c)), vec2<bool>(!func_2().a.c, func_2().a.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, ~var_3.a.d.x), max(_wgslsmith_mult_vec3_u32(var_3.a.d, vec3<u32>(1u, 0u, var_3.a.d.x)), vec3<u32>(0u, var_3.a.d.x, 1u) ^ vec3<u32>(0u, var_1.d.x, 0u))) >> (~(~global1.d.x << (firstLeadingBit(0u) % 32u)) % 32u));
}

