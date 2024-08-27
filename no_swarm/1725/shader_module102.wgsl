struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(746f, 1000f, 1000f, 720f), vec4<f32>(-513f, 1628f, 383f, -519f), vec4<f32>(-860f, 1075f, -1000f, 1168f), vec4<f32>(-1567f, -1029f, 1292f, -230f), vec4<f32>(1000f, 486f, 1445f, 690f), vec4<f32>(-449f, -1000f, -166f, 1307f));

var<private> global1: u32 = 6842u;

var<private> global2: Struct_1 = Struct_1(vec2<i32>(-1i, -1i));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: vec4<f32>) -> f32 {
    global1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(~vec4<u32>(u_input.a.x, 18205u, u_input.d, 90643u)), _wgslsmith_mod_vec4_u32(reverseBits(abs(vec4<u32>(arg_1.b.x, arg_2.x, arg_2.x, u_input.a.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 14689u, arg_2.x, 0u) ^ vec4<u32>(arg_1.b.x, u_input.d, 80310u, 845u), firstLeadingBit(vec4<u32>(40587u, 1u, 4210u, arg_2.x))))), vec4<u32>(_wgslsmith_dot_vec3_u32(~u_input.a, vec3<u32>(58186u, 0u, arg_2.x) | countOneBits(vec3<u32>(37636u, 32922u, 110375u))), select(~15309u, _wgslsmith_clamp_u32(u_input.a.x, arg_2.x, ~1u), true | !arg_1.c.e.a.x), u_input.d | arg_1.b.x, select(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.x, 32897u, 4294967295u, u_input.a.x), vec4<u32>(u_input.b, 1u, arg_2.x, 38488u)), ~vec4<u32>(0u, arg_1.b.x, arg_1.b.x, 4294967295u)), countOneBits(4294967295u | arg_1.b.x), (-2147483647i << (0u % 32u)) != min(-65402i, u_input.e.x))));
    global2 = Struct_1(_wgslsmith_clamp_vec2_i32(-u_input.c.yx ^ ~select(vec2<i32>(-17694i, arg_0.a.x), arg_0.a, vec2<bool>(false, arg_1.c.e.a.x)), arg_1.c.d.a, arg_0.a));
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(0u, u_input.b, arg_1.b.x)), 6u)]), vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_3.x)), _wgslsmith_f_op_f32(-arg_1.c.a.x), _wgslsmith_div_f32(-1132f, arg_3.x), 901f), !all(vec3<bool>(arg_1.c.e.a.x, false, arg_1.c.e.a.x))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.x))), arg_1.c.a.x, any(arg_1.c.e.a.xx))), arg_3.x, _wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(-508f - arg_1.c.a.x))));
    global0 = array<vec4<f32>, 6>();
    var var_1 = !arg_1.c.e.a.xyw;
    return _wgslsmith_f_op_f32(607f - arg_3.x);
}

fn func_2() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-678f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(1448f))))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), -171f), _wgslsmith_f_op_f32(-259f - _wgslsmith_div_f32(1310f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_0))))));
    var var_2 = Struct_1(-(~(~vec2<i32>(u_input.c.x, -47940i))));
    var var_3 = Struct_3(vec2<f32>(_wgslsmith_div_f32(var_1, -876f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<i32>(global2.a.x, -41292i)), Struct_4(Struct_1(u_input.e.yx), u_input.a.zz, Struct_3(vec2<f32>(var_0, var_1), Struct_1(var_2.a), -2247i, Struct_1(global2.a), Struct_2(vec4<bool>(true, false, true, true)))), vec3<u32>(u_input.b, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(0u, 6u)])) + -266f))), Struct_1(-var_2.a), ~var_2.a.x, Struct_1(vec2<i32>(var_2.a.x, 15621i)), Struct_2(vec4<bool>(true, true, all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), any(vec4<bool>(true, true, true, true)))));
    global0 = array<vec4<f32>, 6>();
    return var_3.e.a;
}

fn func_1(arg_0: Struct_2) -> Struct_4 {
    var var_0 = abs(~(~(vec4<u32>(87361u, u_input.a.x, 4294967295u, 4294967295u) ^ vec4<u32>(u_input.d, u_input.a.x, 4294967295u, 37367u)))) & ~(~vec4<u32>(u_input.b, min(4294967295u, u_input.a.x), 37608u, _wgslsmith_clamp_u32(u_input.a.x, u_input.b, u_input.d)));
    global0 = array<vec4<f32>, 6>();
    let var_1 = Struct_2(func_2());
    let var_2 = u_input.c.x;
    return Struct_4(Struct_1(_wgslsmith_mod_vec2_i32(u_input.c.xz, global2.a)), vec2<u32>(u_input.a.x, var_0.x), Struct_3(vec2<f32>(1f, 1f), Struct_1(global2.a), var_2, Struct_1(max(u_input.c.xy, ~global2.a)), Struct_2(!vec4<bool>(false, arg_0.a.x, true, true))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: u32, arg_3: bool) -> f32 {
    global1 = 34827u;
    let var_0 = all(func_2().zz);
    let var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-1927f - arg_1.c.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2000f)) - _wgslsmith_f_op_f32(arg_1.c.a.x + -653f))))), arg_1.a, 0i, arg_1.a, arg_1.c.e);
    global2 = Struct_1(arg_1.c.d.a);
    let var_2 = min(~u_input.a, countOneBits(firstLeadingBit(vec3<u32>(13462u >> (0u % 32u), ~arg_1.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4801u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(4294967295u, u_input.d, arg_2, arg_1.b.x))))));
    return arg_1.c.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(31764u, 6u)];
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x)))) + _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-759f + var_0.x), _wgslsmith_f_op_f32(func_4(vec4<i32>(u_input.e.x, u_input.e.x, -2181i, global2.a.x), func_1(Struct_2(vec4<bool>(false, true, true, false))), 1536u ^ u_input.d, any(vec3<bool>(false, false, false))))))));
    global2 = Struct_1(u_input.e.xz);
    global1 = ~max(u_input.b >> (u_input.b % 32u), reverseBits(1u));
    var_0 = global0[_wgslsmith_index_u32(countOneBits(0u), 6u)];
    var var_2 = _wgslsmith_f_op_f32(2030f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1, -668f))) + var_0.x))));
    var_2 = 1716f;
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, var_1, -145f, var_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(202f, -686f, var_1, 400f)))), func_2())) + _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 40176u, 20472u, u_input.b), select(vec4<u32>(49796u, u_input.b, u_input.d, u_input.b), vec4<u32>(4294967295u, u_input.a.x, 68890u, 6649u), false)), 6u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, abs(u_input.e.wzz), _wgslsmith_dot_vec2_u32(u_input.a.xx, _wgslsmith_mod_vec2_u32(~u_input.a.yz, abs(~vec2<u32>(30946u, u_input.b)))));
}

