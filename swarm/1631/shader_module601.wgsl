struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, true, 14303u, 276f, 15249i);

var<private> global1: array<Struct_4, 3> = array<Struct_4, 3>(Struct_4(vec4<u32>(7471u, 4294967295u, 1u, 94432u), Struct_1(true, true, 35961u, 1567f, -1282i), -489f, vec2<f32>(-1124f, 374f), vec2<bool>(true, true)), Struct_4(vec4<u32>(4294967295u, 39604u, 1201u, 2644u), Struct_1(true, true, 4294967295u, -339f, i32(-2147483648)), -497f, vec2<f32>(191f, 1171f), vec2<bool>(false, true)), Struct_4(vec4<u32>(1u, 49895u, 25012u, 1u), Struct_1(false, true, 1u, 362f, -8315i), 1035f, vec2<f32>(-1000f, 1002f), vec2<bool>(false, true)));

var<private> global2: array<vec4<u32>, 10>;

var<private> global3: array<Struct_3, 2>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = vec3<bool>(any(arg_0), false, true);
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.d)))));
    var var_2 = select(vec2<bool>(any(!vec4<bool>(true, global0.b, arg_0.x, true)), any(!(!arg_0))), select(vec2<bool>(false, arg_0.x), select(arg_0, select(select(arg_0, var_0.zx, var_0.yx), vec2<bool>(true, true), var_0.x || var_0.x), !var_0.zx), select(!vec2<bool>(false, arg_0.x), arg_0, arg_0.x || select(false, arg_0.x, true))), !vec2<bool>(global0.b, (0u < global0.c) && !global0.a));
    let var_3 = Struct_2(firstLeadingBit(min(vec4<i32>(0i, abs(-1i), global0.e, _wgslsmith_clamp_i32(1i, u_input.b.x, u_input.b.x)), firstTrailingBit(vec4<i32>(-2147483647i, arg_1.a.x, 8666i, u_input.b.x)))));
    global1 = array<Struct_4, 3>();
    return vec4<bool>(false, (firstLeadingBit(arg_1.a.x) & 2147483647i) < u_input.b.x, global0.a | all(arg_0), !any(!(!vec4<bool>(arg_0.x, true, true, false))));
}

fn func_2(arg_0: f32) -> Struct_4 {
    global2 = array<vec4<u32>, 10>();
    var var_0 = _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32((vec3<u32>(1u, 47906u, 9426u) & vec3<u32>(58179u, 0u, global0.c)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(3803u, u_input.a, global0.c), vec3<u32>(1u, 4294967295u, 32740u)) % vec3<u32>(32u)), ~vec3<u32>(global0.c, 25476u, 1u))), ~_wgslsmith_add_u32(global0.c, _wgslsmith_clamp_u32(global0.c, abs(4294967295u), u_input.a)));
    let var_1 = select(select(!func_3(select(vec2<bool>(global0.b, false), vec2<bool>(true, global0.a), false), Struct_2(vec4<i32>(0i, global0.e, global0.e, 1504i))), select(!(!vec4<bool>(global0.a, true, true, global0.a)), vec4<bool>(!global0.b, all(vec2<bool>(true, false)), global0.d != global0.d, true), -global0.e != u_input.b.x), vec4<bool>(global0.a, any(vec4<bool>(false, false, true, global0.b)) && true, false, global0.a | (-23065i >= u_input.b.x))), select(func_3(!func_3(vec2<bool>(global0.a, global0.b), Struct_2(vec4<i32>(62762i, u_input.b.x, u_input.b.x, 2147483647i))).wz, Struct_2(u_input.b)), !func_3(vec2<bool>(true, true), Struct_2(vec4<i32>(-81349i, global0.e, global0.e, 2147483647i))), global0.b), !(!(!select(vec4<bool>(true, false, global0.b, global0.a), vec4<bool>(false, global0.b, false, false), global0.a))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.d, 115f, 1329f), vec3<f32>(-137f, 1015f, -352f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(304f, arg_0, global0.d) + vec3<f32>(arg_0, global0.d, 1000f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.d, arg_0, 414f), vec3<f32>(arg_0, global0.d, global0.d))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-2961f, arg_0, 1288f))) * vec3<f32>(-906f, -1000f, arg_0))))));
    global2 = array<vec4<u32>, 10>();
    return Struct_4(max(~max(vec4<u32>(u_input.a, 32114u, 12368u, 9553u), ~global2[_wgslsmith_index_u32(u_input.a, 10u)]), ~vec4<u32>(u_input.a, ~54256u, 4294967295u ^ u_input.a, u_input.a)), Struct_1(var_1.x, !any(vec3<bool>(true, true, false)), global0.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_2.x)), global0.d, false)), countOneBits(global0.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-890f - arg_0))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-828f)))) + _wgslsmith_f_op_f32(select(-351f, _wgslsmith_f_op_f32(max(global0.d, 1517f)), true))), global0.d), !select(var_1.yy, !select(var_1.zw, vec2<bool>(true, false), vec2<bool>(false, var_1.x)), vec2<bool>(arg_0 <= -567f, true)));
}

fn func_1() -> Struct_5 {
    var var_0 = u_input.a;
    var var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.d))));
    var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(var_1.a.x >> (abs(_wgslsmith_div_u32(_wgslsmith_mult_u32(25772u, global0.c), 1u)) % 32u)), 3u)];
    var var_2 = var_1.c;
    var var_3 = var_1.b;
    return Struct_5(Struct_3(Struct_2(~vec4<i32>(-2147483647i, u_input.b.x, 13961i, global0.e)), func_2(global0.d).b, global0.d), u_input.b.xw, vec2<bool>(true, global0.b));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_5, arg_3: u32) -> vec4<i32> {
    global3 = array<Struct_3, 2>();
    let var_0 = ~0u;
    return ~u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(global0.a, global0.a, all(vec3<bool>(!(!global0.b), global0.b, true)), true);
    global1 = array<Struct_4, 3>();
    var var_1 = Struct_2(func_4(global0.c, _wgslsmith_sub_vec4_u32(~global2[_wgslsmith_index_u32(global0.c, 10u)], ~(~global2[_wgslsmith_index_u32(global0.c, 10u)])), func_1(), 45744u));
    let var_2 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -859f));
    let var_3 = ~var_1.a.xzz;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(~global0.c, ~17080u << (abs(global0.c) % 32u), var_2.a.x, u_input.a | firstLeadingBit(4294967295u)), ~(~var_2.a), vec4<bool>(var_0.x, true, (var_1.a.x ^ 26958i) == ~(-2147483647i), var_2.e.x)), -1041f, (_wgslsmith_div_i32(u_input.b.x, -22876i >> (1u % 32u)) >> (_wgslsmith_dot_vec3_u32(reverseBits(var_2.a.wyx), ~var_2.a.wwx) % 32u)) << ((countOneBits(_wgslsmith_add_u32(u_input.a, 1607u)) ^ u_input.a) % 32u));
}

