struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 869u, 0u, 33118u);

var<private> global1: array<Struct_3, 14>;

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(57805i, 1i), Struct_1(i32(-2147483648), 0i), Struct_1(i32(-2147483648), -19742i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(0u, 14u)];
    global2 = array<Struct_1, 3>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1777f, arg_0, _wgslsmith_f_op_f32(-var_0.a.d.x), arg_1.a.x))), Struct_1(2147483647i, -30943i), global2[_wgslsmith_index_u32(73100u, 3u)], _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(1527f + _wgslsmith_f_op_f32(-arg_1.a.x)), 1000f))), ~(-vec4<i32>(var_0.b.a, -arg_1.c.b, ~51882i, -arg_1.e.x)));
    let var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(547f, -207f), vec2<f32>(arg_0, 876f))) + _wgslsmith_f_op_vec2_f32(-arg_1.d))))), arg_1);
    var var_3 = var_0.a.a.x;
    return ~4294967295u;
}

fn func_1(arg_0: Struct_4, arg_1: f32) -> Struct_5 {
    var var_0 = ~firstTrailingBit(~(~(global0.yzx << (vec3<u32>(u_input.d.x, u_input.c, arg_0.a) % vec3<u32>(32u)))));
    global2 = array<Struct_1, 3>();
    global2 = array<Struct_1, 3>();
    var_0 = min(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_0.a, 4294967295u), 4294967295u, ~_wgslsmith_div_u32(u_input.c, 4294967295u)), ~u_input.d.x, func_2(-888f, Struct_2(vec4<f32>(arg_0.b.x, arg_1, arg_0.b.x, arg_1), global2[_wgslsmith_index_u32(u_input.e.x, 3u)], Struct_1(u_input.b, u_input.b), vec2<f32>(787f, -1246f), vec4<i32>(-5717i, u_input.a.x, u_input.a.x, 52558i))) >> (countOneBits(global0.x) % 32u)), _wgslsmith_mult_vec3_u32(~global0.yww, vec3<u32>(global0.x, ~global0.x, ~21346u)));
    var var_1 = Struct_4(~_wgslsmith_div_u32(5724u, func_2(-429f, Struct_2(vec4<f32>(-189f, arg_1, arg_1, arg_0.b.x), Struct_1(0i, u_input.a.x), global2[_wgslsmith_index_u32(u_input.c, 3u)], arg_0.b.zz, vec4<i32>(1i, -22509i, u_input.b, u_input.b)))), arg_0.b);
    return Struct_5(var_1.b.yz, Struct_2(vec4<f32>(2771f, _wgslsmith_f_op_f32(sign(-228f)), arg_0.b.x, _wgslsmith_f_op_f32(-var_1.b.x)), Struct_1(_wgslsmith_div_i32(~u_input.a.x, 0i), -select(-1i, 1i, false)), Struct_1(_wgslsmith_sub_i32(-13088i, u_input.b), _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a.x, -1i, u_input.a.x), 1483i)), vec2<f32>(713f, _wgslsmith_f_op_f32(sign(-1827f))), -max(-vec4<i32>(u_input.a.x, -1i, u_input.b, u_input.a.x), vec4<i32>(u_input.b, 2147483647i, u_input.a.x, -2002i))));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>) -> u32 {
    global2 = array<Struct_1, 3>();
    global0 = ~u_input.e;
    global0 = u_input.e;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(754f - -243f));
    let var_1 = select(select(select(!vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), !select(vec4<bool>(false, arg_1.x, arg_1.x, false), vec4<bool>(arg_1.x, false, arg_1.x, true), vec4<bool>(arg_1.x, arg_1.x, false, true)), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), !(!(!vec4<bool>(true, arg_1.x, arg_1.x, false))), vec4<bool>(arg_1.x, (var_0 == var_0) | true, _wgslsmith_f_op_f32(var_0 - -146f) > 861f, !(!arg_1.x))), vec4<bool>(all(!vec4<bool>(false, false, true, arg_1.x)) == all(vec4<bool>(true, false, true, false)), true, _wgslsmith_f_op_f32(sign(var_0)) == 299f, !any(arg_1.zx) & all(vec2<bool>(arg_1.x, arg_1.x))), vec4<bool>(all(!vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)), select(arg_1.x, -1192f <= _wgslsmith_f_op_f32(-var_0), arg_1.x), false, any(vec4<bool>(true, true, arg_1.x, arg_1.x))));
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_4(55227u, vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -523f)))));
    global2 = array<Struct_1, 3>();
    global2 = array<Struct_1, 3>();
    let var_1 = var_0.b.e.x;
    global0 = firstLeadingBit(vec4<u32>(_wgslsmith_clamp_u32(~0u, _wgslsmith_add_u32(u_input.d.x, 97977u), abs(global0.x)), 4294967295u, ~_wgslsmith_sub_u32(1u, u_input.d.x), 17048u) | ~vec4<u32>(max(u_input.c, 44615u), global0.x, 20135u, func_3(0u, vec3<bool>(false, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a << (~global0.wy % vec2<u32>(32u)), u_input.c, var_0.a);
}

