struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_4, 18>;

var<private> global3: array<i32, 2> = array<i32, 2>(32258i, 47813i);

var<private> global4: array<vec4<bool>, 22>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_5) -> bool {
    var var_0 = Struct_2(Struct_1(select(min(arg_1.b, vec3<i32>(global1.d.b.x, arg_3.c, global3[_wgslsmith_index_u32(38829u, 2u)])), -(global1.a.a >> (u_input.a.zxy % vec3<u32>(32u))), arg_2), ~select(_wgslsmith_mod_vec3_i32(vec3<i32>(51187i, arg_1.b.x, -1i), arg_1.b), arg_1.b, arg_1.e), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_1.c))), vec4<bool>(any(global1.a.e.zz), ~global3[_wgslsmith_index_u32(36664u, 2u)] == _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(57949u, 21u)], -1i), global1.d.b.xx), false, true && all(vec4<bool>(false, false, global1.d.d.x, false))), global1.a.e), -(~global1.b), arg_1, Struct_1(_wgslsmith_mult_vec3_i32(-arg_1.b, abs(arg_1.a)) | min(-arg_1.a, global1.c.a), -(~vec3<i32>(arg_3.c, -3455i, arg_1.a.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.c.x, _wgslsmith_f_op_f32(-global1.d.c.x), _wgslsmith_f_op_f32(-global1.c.c.x), 125f))), arg_1.d, vec3<bool>(true, true, true)));
    return arg_2;
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    let var_0 = vec2<u32>(4294967295u, ~select(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c), countOneBits(vec2<u32>(u_input.b.x, 78478u))), any(vec3<bool>(arg_0.a.e.x, true, false)) && global1.c.e.x));
    global1 = Struct_2(Struct_1(~vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], -1i >> (u_input.b.x % 32u), i32(-1i) * -6444i), abs(abs(-global1.a.b)), _wgslsmith_f_op_vec4_f32(-arg_0.a.c), vec4<bool>(arg_0.a.d.x, !global1.a.d.x, true, global1.d.e.x), select(select(vec3<bool>(arg_0.a.e.x, global1.c.d.x, global1.c.d.x), vec3<bool>(true, arg_0.a.e.x, global1.a.e.x), !arg_0.a.d.x), vec3<bool>(global1.a.e.x, arg_0.a.e.x, !global1.c.e.x), !func_3(1u, Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(var_0.x, 21u)], -35682i, global1.b.x), global1.d.a, vec4<f32>(global1.a.c.x, -291f, 1569f, -536f), arg_0.a.d, vec3<bool>(true, true, false)), true, Struct_5(u_input.a.yy, 17052i, -2147483647i)))), global1.b, arg_0.a, arg_0.a);
    let var_1 = Struct_1(vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(global1.d.b, arg_0.a.a), -vec3<i32>(firstLeadingBit(-1i) & global3[_wgslsmith_index_u32(~var_0.x, 2u)], arg_0.a.b.x, arg_0.a.a.x), global1.a.c, select(select(global1.c.d, vec4<bool>(arg_0.a.e.x || true, arg_0.a.d.x, !global1.a.d.x, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, global1.a.e.x, global1.a.e.x, arg_0.a.d.x), !vec4<bool>(arg_0.a.d.x, arg_0.a.d.x, false, arg_0.a.d.x))), global4[_wgslsmith_index_u32(1u, 22u)], select(!arg_0.a.d.x, arg_0.a.e.x == global1.a.e.x, !(arg_0.a.c.x > global1.c.c.x))), select(global1.d.d.wwz, select(vec3<bool>(true, true, arg_0.a.d.x), select(vec3<bool>(arg_0.a.e.x, true, arg_0.a.e.x), !vec3<bool>(false, global1.a.e.x, true), select(vec3<bool>(arg_0.a.e.x, false, arg_0.a.d.x), vec3<bool>(true, true, arg_0.a.e.x), global1.a.e)), true), true));
    var var_2 = ~vec4<i32>(global1.d.a.x, global1.b.x, global3[_wgslsmith_index_u32(~(~firstTrailingBit(var_0.x)), 2u)], -(~(arg_0.a.a.x ^ global1.c.a.x)));
    let var_3 = arg_0.a.c.x;
    return Struct_1(vec3<i32>(-1i) * -arg_0.a.a, (vec3<i32>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.a.x), vec2<u32>(14701u, 1u)), 2u)], global0[_wgslsmith_index_u32(var_0.x << (0u % 32u), 21u)], global1.d.a.x) << (vec3<u32>(1u, 4294967295u, ~u_input.b.x) % vec3<u32>(32u))) << (countOneBits(vec3<u32>(firstTrailingBit(0u), 0u, 0u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-var_1.c), vec4<bool>(all(vec2<bool>(true, global1.c.e.x)), global1.d.e.x, func_3(_wgslsmith_sub_u32(1u, 1u), arg_0.a, arg_0.a.e.x, Struct_5(var_0, global3[_wgslsmith_index_u32(4294967295u, 2u)], 2147483647i)) | func_3(_wgslsmith_dot_vec2_u32(u_input.a.yw, var_0), global1.d, false, Struct_5(vec2<u32>(0u, u_input.c), 11368i, global3[_wgslsmith_index_u32(var_0.x, 2u)])), arg_0.a.e.x), select(select(arg_0.a.d.wzy, !select(arg_0.a.d.zyx, vec3<bool>(arg_0.a.e.x, true, true), vec3<bool>(global1.c.e.x, true, true)), var_1.e), vec3<bool>(true, var_1.d.x, global1.a.e.x), select(false, true, any(arg_0.a.e.zz))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: u32) -> u32 {
    let var_0 = select(!global4[_wgslsmith_index_u32(u_input.c, 22u)], !(!select(vec4<bool>(global1.a.e.x, global1.c.d.x, true, true), select(global1.c.d, vec4<bool>(true, global1.a.d.x, global1.c.d.x, false), global1.a.d), !global1.d.d.x)), !(global1.c.c.x != -673f));
    global4 = array<vec4<bool>, 22>();
    global1 = Struct_2(Struct_1(vec3<i32>(global1.d.a.x, max(1i, global0[_wgslsmith_index_u32(1u, 21u)]), -(~2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(14906i, -31148i, global3[_wgslsmith_index_u32(arg_2, 2u)]) | global1.b.yyz, firstLeadingBit(arg_1)) | _wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 21u)], global3[_wgslsmith_index_u32(41330u, 2u)], 1i), arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.d.c - _wgslsmith_f_op_vec4_f32(global1.a.c + vec4<f32>(-308f, -497f, global1.a.c.x, -1743f)))), vec4<bool>(false, var_0.x, false, true), select(vec3<bool>(false, global1.d.e.x, true), select(var_0.wxw, vec3<bool>(false, true, true), !var_0.x), !select(vec3<bool>(global1.d.d.x, false, var_0.x), vec3<bool>(true, global1.d.e.x, global1.c.d.x), var_0.x))), _wgslsmith_sub_vec4_i32(~(_wgslsmith_mult_vec4_i32(vec4<i32>(-9351i, global1.a.a.x, 1i, global0[_wgslsmith_index_u32(48319u, 21u)]), vec4<i32>(49964i, global1.a.a.x, global1.d.a.x, 1i)) << (~u_input.b % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(global1.b, vec4<i32>(global3[_wgslsmith_index_u32(0u, 2u)], 0i, global1.c.a.x, arg_1.x) ^ vec4<i32>(-1i, 0i, global1.a.b.x, -1i)), global1.b)), func_2(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~0u, ~arg_0.x), 1u, arg_2), 18u)]), func_2(Struct_4(Struct_1(global1.b.yyz, _wgslsmith_mod_vec3_i32(global1.c.a, vec3<i32>(global1.b.x, -2147483647i, global1.c.a.x)), _wgslsmith_f_op_vec4_f32(sign(global1.c.c)), var_0, func_2(Struct_4(global1.c)).d.wzz))));
    var var_1 = abs(_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_0.x, arg_2, 63322u), ~u_input.b.xzw) >> (~vec3<u32>(33119u, 1u, arg_0.x) % vec3<u32>(32u))) << (arg_0 % vec3<u32>(32u));
    return ~(~19882u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(2147483647i, -34125i, !global1.d.d.x);
    global2 = array<Struct_4, 18>();
    let var_1 = _wgslsmith_f_op_f32(sign(global1.d.c.x));
    global0 = array<i32, 21>();
    var var_2 = 1i >= _wgslsmith_mod_i32(firstTrailingBit(~var_0), firstTrailingBit(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global1.a.a.x, global1.a.b.x)) >> (func_1(u_input.b.zwz, global1.d.b, countOneBits(30111u)) % 32u));
    let var_3 = _wgslsmith_sub_vec3_u32(vec3<u32>(~0u, u_input.a.x, func_1(reverseBits(reverseBits(vec3<u32>(u_input.c, u_input.b.x, u_input.a.x))), countOneBits(global1.c.a), u_input.a.x)), min(vec3<u32>(89268u, u_input.b.x, 11046u ^ u_input.b.x), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.c), ~u_input.a.zyw)) >> (_wgslsmith_add_vec3_u32(u_input.a.zzw, ~u_input.b.zyy) % vec3<u32>(32u)));
    let var_4 = global1.a.e.x;
    var var_5 = select(vec2<bool>(true, any(!vec3<bool>(true, true, global1.a.e.x))), !(!func_2(global2[_wgslsmith_index_u32(u_input.b.x, 18u)]).d.xy), !func_2(global2[_wgslsmith_index_u32(10566u, 18u)]).e.xx);
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

