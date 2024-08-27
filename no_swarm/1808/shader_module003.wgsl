struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool = false;

var<private> global2: array<bool, 31>;

var<private> global3: Struct_4;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool) -> bool {
    let var_0 = -arg_0.a;
    let var_1 = select(vec2<bool>(!(firstLeadingBit(u_input.b.x) >= 104901u), !global2[_wgslsmith_index_u32(u_input.b.x, 31u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 31u)], any(select(vec4<bool>(arg_2, true, false, false), vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.b.x, 31u)], true), false)) && true), false);
    var var_2 = Struct_1(arg_0.a);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1658f - arg_1.x), _wgslsmith_div_f32(-2260f, arg_1.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2726f) * _wgslsmith_f_op_f32(-528f - global3.a)));
    let var_3 = Struct_2(select(!select(vec3<bool>(true, var_1.x, true), vec3<bool>(arg_2, var_1.x, false), select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.b.x, 31u)]), vec3<bool>(var_1.x, false, false), vec3<bool>(true, true, var_1.x))), select(!(!vec3<bool>(global2[_wgslsmith_index_u32(64442u, 31u)], arg_2, true)), select(!vec3<bool>(false, true, global2[_wgslsmith_index_u32(47742u, 31u)]), vec3<bool>(true, var_1.x, true), true || global2[_wgslsmith_index_u32(u_input.b.x, 31u)]), arg_2), true), u_input.a.zz, arg_0, arg_0);
    return !arg_2;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<bool>) -> Struct_1 {
    global2 = array<bool, 31>();
    var var_0 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -976f));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3.a, var_0.a), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1272f, var_0.a)))))))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global3.a, _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, -326f), vec2<f32>(var_0.a, var_0.a)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a, 539f) * vec2<f32>(1000f, global3.a))))), vec2<f32>(_wgslsmith_f_op_f32(global3.a + _wgslsmith_f_op_f32(min(global3.a, global3.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a + global3.a))))));
    global1 = func_3(Struct_1(u_input.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1f), var_1.x, -1000f)), true);
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1358f, var_0.a, global3.a, -2002f)) - vec4<f32>(-1388f, _wgslsmith_f_op_f32(max(1000f, 362f)), _wgslsmith_f_op_f32(var_0.a + var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -160f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(533f, -886f)) * -2245f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.a, var_0.a)), -690f, global3.a)))));
    return Struct_1(_wgslsmith_sub_i32(u_input.d.x, 2147483647i));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec4<f32>) -> bool {
    let var_0 = countOneBits(_wgslsmith_mult_vec2_u32(u_input.b.xy, ~abs(u_input.b.yy)));
    var var_1 = !global2[_wgslsmith_index_u32(4294967295u & ~_wgslsmith_dot_vec3_u32(vec3<u32>(35059u, 1u, u_input.c), u_input.b), 31u)];
    let var_2 = Struct_3(arg_2.a, Struct_1(arg_0.a));
    var_1 = !any(arg_1.xy);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -283f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))))) < arg_3.x;
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> StorageBuffer {
    var var_0 = Struct_2(select(vec3<bool>(func_4(Struct_1(u_input.d.x), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 31u)], true, true), func_2(vec3<u32>(44010u, 69678u, u_input.b.x), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 31u)], global2[_wgslsmith_index_u32(u_input.c, 31u)], false, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a, arg_1, arg_1, -1000f) - vec4<f32>(903f, -284f, -190f, global3.a))), !global2[_wgslsmith_index_u32(~u_input.c, 31u)], func_4(func_2(u_input.b, vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.c, 31u)], global2[_wgslsmith_index_u32(u_input.b.x, 31u)])), select(vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 31u)], true, global2[_wgslsmith_index_u32(u_input.b.x, 31u)]), vec4<bool>(true, true, global2[_wgslsmith_index_u32(36516u, 31u)], global2[_wgslsmith_index_u32(u_input.b.x, 31u)]), false), Struct_1(37860i), vec4<f32>(global3.a, global3.a, global3.a, 659f))), select(select(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(0u, 31u)], false), select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(80997u, 31u)], false), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 31u)], global2[_wgslsmith_index_u32(u_input.c, 31u)]), false), !vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 31u)], global2[_wgslsmith_index_u32(u_input.c, 31u)])), select(vec3<bool>(false, global2[_wgslsmith_index_u32(39940u, 31u)], true), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 31u)], false, global2[_wgslsmith_index_u32(u_input.c, 31u)]), vec3<bool>(true, false, true), global2[_wgslsmith_index_u32(4294967295u, 31u)]), select(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 31u)], true), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(u_input.c, 31u)], global2[_wgslsmith_index_u32(u_input.b.x, 31u)]), global2[_wgslsmith_index_u32(1u, 31u)])), vec3<bool>(1151f < global3.a, arg_0.x > u_input.d.x, false)), all(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 31u)], true, true))), abs(u_input.a.yz), func_2(u_input.b, !vec4<bool>(true, all(vec2<bool>(global2[_wgslsmith_index_u32(0u, 31u)], false)), !global2[_wgslsmith_index_u32(4294967295u, 31u)], any(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 31u)], false)))), Struct_1(u_input.a.x));
    var_0 = Struct_2(vec3<bool>(var_0.a.x, true, global2[_wgslsmith_index_u32(countOneBits(u_input.b.x), 31u)]), var_0.b, var_0.d, var_0.d);
    var_0 = Struct_2(select(vec3<bool>(true, select(!global2[_wgslsmith_index_u32(0u, 31u)], true, false), (1u >> (u_input.c % 32u)) <= 1u), select(select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(1u, 31u)]), vec3<bool>(var_0.a.x, true, var_0.a.x), true), !select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 31u)], var_0.a.x, false), var_0.a, var_0.a.x), ~u_input.b.x < ~u_input.b.x), var_0.a), abs((vec2<i32>(arg_0.x, u_input.a.x) >> (_wgslsmith_mod_vec2_u32(u_input.b.xx, vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u))) | -(u_input.d.zx << (u_input.b.xz % vec2<u32>(32u)))), func_2(_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 63169u, 32287u), vec3<u32>(~30075u, ~u_input.b.x, _wgslsmith_clamp_u32(1u, 21392u, 15147u))), !vec4<bool>(0i >= arg_0.x, global2[_wgslsmith_index_u32(u_input.b.x, 31u)] != var_0.a.x, any(vec4<bool>(global2[_wgslsmith_index_u32(0u, 31u)], false, global2[_wgslsmith_index_u32(u_input.b.x, 31u)], global2[_wgslsmith_index_u32(67651u, 31u)])), global2[_wgslsmith_index_u32(countOneBits(27840u), 31u)])), Struct_1(var_0.b.x));
    let var_1 = var_0.b.x;
    var var_2 = _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~(vec2<u32>(u_input.b.x, u_input.c) >> (u_input.b.zx % vec2<u32>(32u))) & _wgslsmith_sub_vec2_u32(min(u_input.b.yz, vec2<u32>(u_input.b.x, u_input.c)), _wgslsmith_mult_vec2_u32(u_input.b.yx, u_input.b.xy)), vec2<u32>(1u, u_input.c)), u_input.b.zx);
    return StorageBuffer(reverseBits(var_2.x), _wgslsmith_dot_vec4_u32(select(vec4<u32>(~0u, firstTrailingBit(var_2.x), ~var_2.x, _wgslsmith_add_u32(u_input.c, u_input.c)), ~countOneBits(vec4<u32>(1u, var_2.x, 21880u, var_2.x)), vec4<bool>(var_0.a.x != var_0.a.x, any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 31u)], false, true, global2[_wgslsmith_index_u32(4294967295u, 31u)])), var_0.a.x, !var_0.a.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, 83052u, var_2.x), u_input.b, global2[_wgslsmith_index_u32(23528u, 31u)]), _wgslsmith_mult_vec3_u32(u_input.b, u_input.b)), max(_wgslsmith_add_u32(u_input.c, 4294967295u), ~var_2.x), ~(~var_2.x), 96495u)), vec2<u32>(35653u, ~firstLeadingBit(u_input.c ^ 57341u)), -197f, var_0.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 8104i;
    let var_1 = 1u;
    let var_2 = ~(-u_input.d);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1425f, 1807f)))));
    var var_3 = global3.a;
    global2 = array<bool, 31>();
    var var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.a, global3.a), vec2<f32>(-137f, global3.a), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1759f, -1136f) - vec2<f32>(349f, global3.a))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1090f))), _wgslsmith_f_op_f32(trunc(global3.a))))));
    let x = u_input.a;
    s_output = func_1(vec4<i32>(0i, -u_input.a.x, u_input.d.x, var_0), _wgslsmith_div_f32(-878f, -1307f));
}

