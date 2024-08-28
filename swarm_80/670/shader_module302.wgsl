struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec4<u32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(true, true, false, false, true, false, false, false, false, true, false, false, true, false, true);

var<private> global1: Struct_2;

var<private> global2: array<u32, 12> = array<u32, 12>(40482u, 0u, 1u, 4294967295u, 4294967295u, 1u, 0u, 1u, 66693u, 49893u, 4294967295u, 1u);

var<private> global3: vec3<u32> = vec3<u32>(4294967295u, 1u, 0u);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: vec2<bool>) -> i32 {
    global0 = array<bool, 15>();
    var var_0 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(-68249i, -2147483647i, i32(-1i) * -1867i, global1.d ^ u_input.b) & countOneBits(_wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(global1.d, global1.d, -2147483647i, global1.d))), u_input.c ^ ~u_input.c));
    var var_1 = Struct_2(global3.zx << (firstTrailingBit(_wgslsmith_sub_vec2_u32(max(u_input.d.zz, vec2<u32>(93319u, global3.x)), global3.zy)) % vec2<u32>(32u)), any(!select(arg_2, select(arg_2, vec2<bool>(global1.b, false), arg_0.x), true)), global1.c, global1.d << (~(~(~4294967295u)) % 32u));
    var_1 = Struct_2(global1.c.yw, !arg_0.x, ~(_wgslsmith_clamp_vec4_u32(var_1.c, select(var_1.c, var_1.c, true), var_1.c) ^ ~var_1.c), -var_1.d);
    var_0 = Struct_1(u_input.c);
    return min(min(~var_0.a.x, ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, var_1.d), vec3<i32>(u_input.c.x, var_0.a.x, u_input.a)))), _wgslsmith_mult_i32(firstLeadingBit(2147483647i), ~(-69094i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: i32, arg_3: Struct_3) -> f32 {
    global3 = global1.c.wyw;
    global2 = array<u32, 12>();
    global2 = array<u32, 12>();
    var var_0 = ~_wgslsmith_div_u32(_wgslsmith_div_u32(abs(_wgslsmith_dot_vec2_u32(u_input.d.zx, vec2<u32>(global2[_wgslsmith_index_u32(global1.c.x, 12u)], global3.x))), firstTrailingBit(firstLeadingBit(u_input.d.x))), ~_wgslsmith_clamp_u32(select(8478u, u_input.d.x, false), select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.c.x, 12u)], 12u)], global3.x, false), global1.a.x));
    var var_1 = arg_3.a.a;
    return _wgslsmith_f_op_f32(max(-631f, -302f));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-103f, _wgslsmith_f_op_f32(func_3(vec2<f32>(_wgslsmith_f_op_f32(sign(929f)), 714f), ~global1.d ^ func_2(vec2<bool>(arg_2.b, false), -1005f, vec2<bool>(global1.b, false)), 2147483647i, Struct_3(arg_1, false))), 554f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1017f, -263f))))));
    let var_1 = 57992u;
    let var_2 = arg_2;
    var var_3 = Struct_3(Struct_1(max(~arg_1.a, u_input.c) >> (global1.c % vec4<u32>(32u))), -20350i > arg_2.a.a.x);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1704f, 1609f, var_0.x, var_0.x) - vec4<f32>(1283f, 2043f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1230f, 709f, -154f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -755f, var_0.x, 356f))), true)) - vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * -529f), var_0.x)), var_0.x, _wgslsmith_f_op_f32(max(var_0.x, var_0.x)), var_0.x)));
    return vec3<bool>(var_2.b, var_2.b, all(select(!vec4<bool>(global1.b, false, arg_0, var_2.b), vec4<bool>(true, false, global1.b, true), global0[_wgslsmith_index_u32(var_1, 15u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 675f;
    var var_1 = !(!(!func_1(global0[_wgslsmith_index_u32(~global1.a.x, 15u)], Struct_1(u_input.c), Struct_3(Struct_1(u_input.c), false))));
    var var_2 = Struct_3(Struct_1(_wgslsmith_div_vec4_i32(select(max(u_input.c, u_input.c), vec4<i32>(u_input.b, -13409i, 0i, 4252i), func_1(true, Struct_1(vec4<i32>(global1.d, u_input.b, 1i, -2147483647i)), Struct_3(Struct_1(vec4<i32>(-16001i, u_input.a, -1i, 785i)), global1.b)).x), abs(u_input.c))), any(var_1.zx));
    let var_3 = Struct_3(Struct_1(_wgslsmith_div_vec4_i32(~max(u_input.c, u_input.c), vec4<i32>(2147483647i | global1.d, var_2.a.a.x, -1i ^ var_2.a.a.x, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c)))), select(var_2.b, global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(0u, global1.c.x, _wgslsmith_div_u32(1u, 45674u)), 15u)], _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(41792u, u_input.d.x), global3.xz), global3.x) > _wgslsmith_div_u32(1u, 1u)));
    let var_4 = Struct_1(vec4<i32>(func_2(var_1.zz, _wgslsmith_f_op_f32(-var_0), var_1.xx) ^ var_3.a.a.x, _wgslsmith_mult_i32(u_input.a, var_3.a.a.x) & -15328i, -2147483647i, _wgslsmith_sub_i32(-23128i, global1.d) >> (~_wgslsmith_clamp_u32(global3.x, global3.x, u_input.d.x) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1007f) + var_0)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1200f, var_0)), _wgslsmith_f_op_f32(-var_0), func_1(false, var_3.a, Struct_3(var_4, var_1.x)).x))), -638f), var_0, var_2.a.a.x | ~u_input.a);
}

