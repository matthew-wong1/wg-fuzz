struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 23>;

var<private> global1: vec3<u32> = vec3<u32>(40284u, 0u, 0u);

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(1i, vec4<u32>(23224u, 22936u, 34063u, 4294967295u), vec2<bool>(true, false)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<bool>) -> i32 {
    let var_0 = select(vec4<bool>(!arg_0.c.x, any(select(arg_0.c, vec2<bool>(false, arg_0.c.x), select(arg_0.c, vec2<bool>(arg_2.x, true), arg_0.c))), 17271i > select(_wgslsmith_mod_i32(-2147483647i, 20137i), abs(u_input.c), true), arg_2.x), vec4<bool>(arg_0.c.x, select(true, arg_0.c.x, _wgslsmith_dot_vec2_i32(u_input.b.xz, u_input.b.yz) >= arg_0.a), !(_wgslsmith_mod_u32(global1.x, 11188u) < ~51697u), false), !(!select(!vec4<bool>(arg_2.x, true, true, arg_0.c.x), select(vec4<bool>(false, true, arg_0.c.x, arg_0.c.x), vec4<bool>(arg_0.c.x, true, false, false), vec4<bool>(arg_2.x, false, arg_0.c.x, arg_0.c.x)), select(vec4<bool>(true, arg_2.x, arg_2.x, arg_0.c.x), vec4<bool>(arg_2.x, arg_0.c.x, true, true), true))));
    global2 = array<Struct_1, 1>();
    global0 = array<vec3<u32>, 23>();
    global0 = array<vec3<u32>, 23>();
    let var_1 = select(~abs(vec3<u32>(select(arg_1.x, global1.x, arg_2.x), 705u, abs(58318u))), min(arg_0.b.xzy, global0[_wgslsmith_index_u32(~abs(~arg_1.x), 23u)]), vec3<bool>(true, arg_2.x, true));
    return -6700i;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = true;
    var var_1 = all(!arg_2.c);
    var_0 = select(~u_input.b.x == func_3(global2[_wgslsmith_index_u32(28954u, 1u)], global1.yy, !arg_2.c), true, arg_2.c.x);
    let var_2 = _wgslsmith_mult_vec3_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~(~arg_1), _wgslsmith_mult_u32(46866u, 50370u)), 1u), 23u)], arg_2.b.xyx);
    global0 = array<vec3<u32>, 23>();
    return select(vec3<bool>(!(all(arg_2.c) || any(vec4<bool>(arg_2.c.x, false, true, true))), arg_2.c.x, max(5531i >> (arg_1 % 32u), arg_2.a ^ -1i) == _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.d, u_input.c, -1664i), vec4<i32>(-14876i, arg_2.a, 0i, 1i) & u_input.b)), select(select(select(!vec3<bool>(arg_2.c.x, arg_2.c.x, false), select(vec3<bool>(true, true, true), vec3<bool>(false, arg_2.c.x, false), false), vec3<bool>(true, true, true)), vec3<bool>(true, all(vec4<bool>(false, arg_2.c.x, true, arg_2.c.x)), all(vec4<bool>(arg_2.c.x, true, arg_2.c.x, false))), !vec3<bool>(arg_2.c.x, arg_2.c.x, true)), select(vec3<bool>(arg_2.c.x, arg_1 < 1u, true), vec3<bool>(arg_2.c.x || true, all(vec3<bool>(arg_2.c.x, false, false)), any(vec4<bool>(arg_2.c.x, true, arg_2.c.x, false))), arg_2.c.x), _wgslsmith_mult_u32(countOneBits(var_2.x), ~50752u) == (arg_2.b.x & 1u)), !arg_2.c.x);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> bool {
    global2 = array<Struct_1, 1>();
    global0 = array<vec3<u32>, 23>();
    let var_0 = vec2<i32>(0i, -2147483647i);
    global2 = array<Struct_1, 1>();
    var var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1005f * _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(floor(-628f)))))), 0u ^ arg_0.b.x, global2[_wgslsmith_index_u32(4294967295u, 1u)]);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec3<bool>(all(vec3<bool>(false, false, false)), true, func_1(global2[_wgslsmith_index_u32(global1.x, 1u)], 41262u, global2[_wgslsmith_index_u32(global1.x, 1u)]) || true), select(vec3<bool>(!func_2(-1352f, 50988u, Struct_1(u_input.c, vec4<u32>(global1.x, global1.x, global1.x, 4294967295u), vec2<bool>(false, true))).x, any(vec2<bool>(false, false)), false), vec3<bool>(true, true, true), true), !any(!func_2(2075f, global1.x, Struct_1(-1i, vec4<u32>(global1.x, global1.x, 0u, global1.x), vec2<bool>(false, true)))));
    var var_1 = _wgslsmith_mod_vec3_i32(u_input.b.yyw | u_input.b.zyx, vec3<i32>(-_wgslsmith_sub_i32(u_input.b.x, ~1i), _wgslsmith_div_i32(-1i, func_3(global2[_wgslsmith_index_u32(37150u, 1u)], global1.zy, select(vec2<bool>(true, var_0.x), var_0.zy, var_0.zy))), ~u_input.b.x));
    var var_2 = global2[_wgslsmith_index_u32(~36226u, 1u)];
    let var_3 = ~var_2.b.wwy;
    global2 = array<Struct_1, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_mult_i32(u_input.d, 1i)), ~(~select(global0[_wgslsmith_index_u32(var_3.x, 23u)], vec3<u32>(4294967295u, var_3.x, 4294967295u), vec3<bool>(false, true, var_2.c.x))) & var_2.b.zzz, ~(~(firstTrailingBit(var_3) | select(vec3<u32>(var_2.b.x, 27741u, 4294967295u), global0[_wgslsmith_index_u32(global1.x, 23u)], var_2.c.x))), ~vec4<i32>(var_2.a, 31315i, u_input.a.x, func_3(Struct_1(45279i, vec4<u32>(62560u, global1.x, var_3.x, var_3.x), vec2<bool>(var_0.x, false)), ~vec2<u32>(var_3.x, 0u), select(var_0.zy, vec2<bool>(var_0.x, false), var_2.c))));
}

