struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 17>;

var<private> global2: Struct_3 = Struct_3(vec3<f32>(392f, -1000f, 860f), true, Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), Struct_2(-374f, vec4<u32>(49354u, 1u, 116250u, 0u), vec3<f32>(125f, -1422f, 934f)), Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)));

var<private> global3: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = global2.c.b.xw;
    var var_1 = arg_0.c.zx;
    global1 = array<u32, 17>();
    var var_2 = -vec3<i32>(u_input.a, ~_wgslsmith_mult_i32(22366i, u_input.a), _wgslsmith_sub_i32(u_input.a, -15671i) ^ 53285i) << (~(~_wgslsmith_mult_vec3_u32(u_input.b.xyx, vec3<u32>(arg_0.b.x, global2.d.b.x, 48589u)) | vec3<u32>(firstTrailingBit(29264u), arg_0.b.x & 4294967295u, firstLeadingBit(46496u))) % vec3<u32>(32u));
    let var_3 = Struct_1(global0.a, !(!vec4<bool>(true, global2.d.a <= 1000f, 9906u == global2.d.b.x, global2.c.b.x)));
    return u_input.a << (_wgslsmith_div_u32(_wgslsmith_sub_u32(min(~arg_0.b.x, 8191u), arg_0.b.x), ~min(_wgslsmith_add_u32(1u, 6506u), ~8408u)) % 32u);
}

fn func_2() -> bool {
    let var_0 = !vec3<bool>(!(!any(vec2<bool>(true, true))), true, global2.c.b.x);
    let var_1 = firstLeadingBit(func_3(Struct_2(_wgslsmith_f_op_f32(global2.a.x * 333f), u_input.b, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, global2.d.a, 1047f)))))));
    let var_2 = Struct_1(vec4<bool>(select(var_0.x, any(!vec4<bool>(global2.b, var_0.x, var_0.x, false)), !var_0.x && var_0.x), global0.a.x, (5663i < u_input.a) & global0.b.x, true), vec4<bool>(!(4294967295u <= ~global2.d.b.x), var_0.x, !all(!vec4<bool>(true, global0.b.x, var_0.x, var_0.x)), !(global2.d.c.x <= 1692f)));
    global2 = Struct_3(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global2.a.x, global2.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1446f, global2.a.x, var_2.b.x)), _wgslsmith_f_op_f32(global2.a.x - 204f))), 1993f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d.a, global2.a.x, global2.d.c.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1158f, global2.d.c.x, 1028f) + global2.d.c)) * _wgslsmith_f_op_vec3_f32(step(global2.a, global2.d.c))))), !(!(286f >= _wgslsmith_f_op_f32(max(global2.a.x, -521f)))), var_2, global2.d, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(46056u, 17u)], 3u)]);
    var var_3 = -((_wgslsmith_mult_vec4_i32(-vec4<i32>(-37054i, -2147483647i, -7245i, -2147483647i), -vec4<i32>(var_1, 0i, -19245i, u_input.a)) ^ vec4<i32>(var_1, -5278i, _wgslsmith_clamp_i32(-1i, 11149i, -53301i), 500i)) << (abs(u_input.b << (vec4<u32>(1u, global2.d.b.x, u_input.c, 28797u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return !(all(select(select(vec3<bool>(global2.c.a.x, true, var_0.x), vec3<bool>(global2.c.a.x, false, global2.b), false), vec3<bool>(false, var_2.a.x, true), vec3<bool>(true, global2.e.a.x, var_0.x))) | (global2.c.a.x | select(true, true, false)));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    let var_0 = vec2<i32>(u_input.a, 15608i);
    let var_1 = global2.e;
    let var_2 = -113f;
    global0 = Struct_1(select(!vec4<bool>(func_2(), var_1.b.x, true, var_1.b.x), select(!(!var_1.b), var_1.b, var_1.a), !(!var_1.a)), select(vec4<bool>(global0.a.x, ~u_input.b.x >= _wgslsmith_div_u32(1u, global2.d.b.x), all(!vec2<bool>(global0.b.x, true)), global2.c.a.x), global0.a, false));
    global2 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, global2.d.c.x, -1056f) + vec3<f32>(var_2, 1123f, 616f))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global2.d.c + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-829f, var_2, global2.a.x)))))), global0.b.x, Struct_1(var_1.b, !select(vec4<bool>(true, global0.b.x, true, global2.b), !vec4<bool>(global2.b, true, var_1.a.x, true), select(global0.b, var_1.b, global0.b))), Struct_2(_wgslsmith_f_op_f32(-var_2), select(u_input.b, ~vec4<u32>(global1[_wgslsmith_index_u32(48622u, 17u)], 57644u, arg_0.x, global1[_wgslsmith_index_u32(17768u, 17u)]), select(select(vec4<bool>(global2.b, global0.b.x, false, global0.b.x), global2.e.b, true), vec4<bool>(global2.b, true, false, true), !global2.c.b)), vec3<f32>(_wgslsmith_f_op_f32(global2.a.x - var_2), _wgslsmith_f_op_f32(-1190f + _wgslsmith_f_op_f32(round(-559f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 - var_2), _wgslsmith_f_op_f32(min(2422f, var_2))))), global2.e);
    return ~(0u >> (global2.d.b.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(0i, _wgslsmith_mod_i32(1i << (reverseBits(func_1(vec3<u32>(4294967295u, 53779u, 4294967295u))) % 32u), reverseBits(1i >> (_wgslsmith_dot_vec3_u32(u_input.b.yzx, global2.d.b.zzz) % 32u))), u_input.a);
    global1 = array<u32, 17>();
    var var_1 = Struct_1(vec4<bool>(any(!vec3<bool>(true, global0.b.x, global0.b.x)), global0.b.x, all(select(vec3<bool>(global0.b.x, global2.e.b.x, global2.e.a.x), !vec3<bool>(true, false, global0.a.x), !global0.b.x)), true), global2.c.b);
    global3 = array<Struct_1, 3>();
    global1 = array<u32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(-global2.d.c.x), 341f), select(~(~vec2<u32>(1u, u_input.b.x)), vec2<u32>(countOneBits(global2.d.b.x), min(u_input.b.x, global1[_wgslsmith_index_u32(60089u, 17u)]) >> (firstTrailingBit(4294967295u) % 32u)), vec2<bool>(select(global2.c.b.x, func_2(), false), all(global2.c.b.yyx))), global2.d.b, -var_0.x);
}

