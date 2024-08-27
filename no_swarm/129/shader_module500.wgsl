struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 2147f;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 25>;

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(-41390i, vec4<f32>(325f, -1000f, 713f, -490f), 1000f), Struct_1(-52065i, vec4<f32>(261f, -745f, -1440f, -946f), -394f), Struct_1(1i, vec4<f32>(638f, -122f, 142f, -1536f), 1000f), Struct_1(-1i, vec4<f32>(126f, 1000f, -2133f, 513f), 312f), Struct_1(-71031i, vec4<f32>(2689f, 172f, 1675f, 895f), -371f), Struct_1(i32(-2147483648), vec4<f32>(-1000f, 632f, 131f, 775f), -119f), Struct_1(47724i, vec4<f32>(-479f, -224f, -204f, -1062f), -301f), Struct_1(-35116i, vec4<f32>(-378f, -844f, -1000f, 1678f), 1903f), Struct_1(1i, vec4<f32>(-908f, -543f, -616f, -1975f), -792f), Struct_1(21702i, vec4<f32>(336f, -224f, -597f, 1547f), -185f), Struct_1(2147483647i, vec4<f32>(581f, -206f, 705f, -256f), 980f), Struct_1(-39981i, vec4<f32>(444f, 1345f, 292f, -1000f), 755f), Struct_1(i32(-2147483648), vec4<f32>(387f, 303f, 1000f, -1205f), 746f), Struct_1(1i, vec4<f32>(1553f, -135f, 1878f, -1979f), -1536f), Struct_1(-63258i, vec4<f32>(-2071f, 141f, 102f, 471f), -135f), Struct_1(-41516i, vec4<f32>(-120f, 778f, -558f, -1747f), 429f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32) -> Struct_3 {
    var var_0 = u_input.d;
    return Struct_3(~4294967295u);
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: i32, arg_3: vec3<u32>) -> u32 {
    global1 = Struct_1(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-27115i, u_input.e.x, arg_2, u_input.e.x), ~(~vec4<i32>(arg_2, arg_2, u_input.e.x, global1.a)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global1.b))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_1, -1250f, 1693f)) * _wgslsmith_f_op_vec4_f32(global1.b * vec4<f32>(-340f, -675f, global1.c, arg_1)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, -351f, -274f, 205f), vec4<f32>(-1176f, arg_1, 134f, global1.b.x), global1.a != u_input.b))), select(vec4<bool>(true, true, any(vec2<bool>(false, true)), u_input.d.x < 0u), vec4<bool>(arg_0.a >= arg_0.a, all(vec2<bool>(false, true)), true, any(vec2<bool>(true, false))), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global1.b.x, arg_1))))))));
    global2 = array<Struct_1, 25>();
    let var_0 = ~func_2(vec4<bool>(true, true, true, true), Struct_1(_wgslsmith_sub_i32(u_input.a, global1.a), vec4<f32>(_wgslsmith_f_op_f32(-arg_1), global1.c, _wgslsmith_f_op_f32(global1.b.x * arg_1), _wgslsmith_f_op_f32(ceil(arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x))), -1i).a;
    global1 = global2[_wgslsmith_index_u32(reverseBits(~firstLeadingBit(~abs(arg_3.x))), 25u)];
    var var_1 = vec3<i32>(~(~(~u_input.a >> (~var_0 % 32u))), -1i, arg_2);
    return _wgslsmith_clamp_u32(4294967295u, arg_0.a, 23957u);
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_3 {
    let var_0 = ~(~func_3(func_2(vec4<bool>(true, true, true, true), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(61796u, arg_1), 25u)], abs(u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1155f * global1.c) - _wgslsmith_div_f32(-1000f, arg_0)), u_input.a << (max(4294967295u, arg_1) % 32u), u_input.d.xyx << ((u_input.d.wxx ^ u_input.d.xwx) % vec3<u32>(32u))));
    var var_1 = Struct_3(~(var_0 | _wgslsmith_div_u32(59413u, 26673u)) >> (func_3(Struct_3(_wgslsmith_dot_vec2_u32(u_input.d.yw, vec2<u32>(arg_1, 3976u))), -1000f, u_input.b, vec3<u32>(~46567u, arg_1 ^ 23842u, ~var_0)) % 32u));
    let var_2 = func_2(vec4<bool>(true, any(vec2<bool>(true, true)), true, any(vec2<bool>(true, true))), Struct_1(~countOneBits(select(global1.a, u_input.b, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0 + global1.c), _wgslsmith_f_op_f32(global1.c + 104f), _wgslsmith_f_op_f32(1126f * -386f), _wgslsmith_f_op_f32(arg_0 * global1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -281f) + 1016f)), 16288i);
    let var_3 = any(vec4<bool>(true, !select(true, true, true), true, abs(~var_2.a) <= ~(~var_2.a)));
    var var_4 = -global1.a;
    return var_2;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_3 {
    global1 = Struct_1(_wgslsmith_div_i32(min(u_input.b, u_input.b), arg_2.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global1.b, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1666f, global1.b.x, 934f, global1.b.x))))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global1.b), global1.b, !vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x))), _wgslsmith_f_op_vec4_f32(global1.b + _wgslsmith_f_op_vec4_f32(vec4<f32>(1121f, global1.c, -326f, -1852f) - vec4<f32>(global1.b.x, 813f, 511f, -1466f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global1.b.x, global1.c, false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.c + 743f), -1115f)))) - global1.b.x));
    var var_0 = vec3<bool>(arg_1.x, true, arg_1.x);
    var_0 = !vec3<bool>(!arg_2.b, any(select(vec3<bool>(var_0.x, false, true), !vec3<bool>(false, arg_2.b, arg_1.x), arg_1.x)), var_0.x == arg_1.x);
    let var_1 = _wgslsmith_f_op_f32(418f * _wgslsmith_f_op_f32(-806f - 299f));
    global3 = array<Struct_1, 16>();
    return func_2(select(!vec4<bool>(any(vec2<bool>(arg_1.x, false)), !arg_2.b, all(vec4<bool>(arg_2.b, true, var_0.x, var_0.x)), any(vec4<bool>(arg_1.x, true, arg_1.x, arg_2.b))), vec4<bool>(!arg_1.x | all(vec3<bool>(false, var_0.x, arg_2.b)), any(select(arg_1, arg_1, var_0.x)), all(vec4<bool>(arg_1.x, arg_2.b, var_0.x, true)), all(!vec4<bool>(var_0.x, false, arg_2.b, true))), false), global2[_wgslsmith_index_u32(30974u, 25u)], ~reverseBits(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_2.a.x, -3002i), vec2<i32>(-24760i, 1i)), select(arg_2.a.zz, arg_2.a.zz, var_0.xy))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -16141i;
    let var_1 = func_4(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.c)) * _wgslsmith_f_op_f32(sign(global1.b.x))) + -1478f), ~u_input.d.x), vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1410f + global1.c)) >= global1.c, all(vec4<bool>(true, true, true, true)), true), Struct_2(-countOneBits(vec4<i32>(2147483647i, global1.a, global1.a, var_0) << (vec4<u32>(44660u, u_input.d.x, 84502u, u_input.d.x) % vec4<u32>(32u))), true));
    var var_2 = 66224u;
    let var_3 = global1.b.wxy;
    var var_4 = 460f;
    let x = u_input.a;
    s_output = StorageBuffer(max(-(~var_0) & _wgslsmith_add_i32(-16373i, -41066i), ~(select(var_0, 32660i, true) ^ -var_0)), u_input.e);
}

