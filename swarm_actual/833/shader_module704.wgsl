struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1000f, 584f, 870f);

var<private> global1: Struct_1 = Struct_1(true, vec2<f32>(-526f, -499f), false, vec3<bool>(true, false, true), 51610u);

var<private> global2: vec4<f32> = vec4<f32>(-924f, -332f, -1000f, 468f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = Struct_2(all(!select(global1.d.xx, !vec2<bool>(global1.d.x, false), vec2<bool>(false, false))), Struct_1(false, _wgslsmith_f_op_vec2_f32(min(global0.zx, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-374f, 1319f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, global1.b.x)))))), !global1.a & true, vec3<bool>(any(vec3<bool>(true, true, global1.a)), !any(vec4<bool>(global1.a, false, global1.c, global1.a)), _wgslsmith_f_op_f32(min(global1.b.x, global2.x)) >= _wgslsmith_f_op_f32(global1.b.x * global2.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.b, global1.e), vec4<u32>(u_input.c.x, arg_0, arg_0, global1.e)), vec4<u32>(24073u, 6853u, 36391u, u_input.b) | vec4<u32>(arg_0, global1.e, arg_0, 44679u)) >> (global1.e % 32u)), !global1.c, all(global1.d));
    var var_1 = vec3<u32>(63700u, ~global1.e, 0u);
    let var_2 = -(~vec2<i32>(27440i, u_input.a & 0i));
    global2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, 368f, 260f, global2.x) + vec4<f32>(global2.x, -1000f, global2.x, 912f)))))));
    global1 = var_0.b;
    return true;
}

fn func_2() -> vec3<f32> {
    global2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-161f, 174f, -1612f, 535f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1134f, 1267f, 447f, 914f), vec4<f32>(global2.x, global1.b.x, 880f, global2.x))), func_3(14736u)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-443f, global0.x, -460f, global0.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, 1131f, global1.b.x, global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.x, 2051f, -1898f, global1.b.x)))))), true))));
    let var_0 = Struct_2(true, Struct_1(select(all(vec2<bool>(global1.c, false)), global1.a, false == (false & global1.c)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -346f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * global1.b.x), _wgslsmith_f_op_f32(min(-873f, 687f)), true))), func_3(~u_input.b), global1.d, 11921u), false || any(select(global1.d.xy, select(vec2<bool>(global1.c, global1.a), global1.d.yz, global1.d.x), !vec2<bool>(false, global1.a))), true);
    var var_1 = ~(-_wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.a, u_input.a, -1i), u_input.a) << (_wgslsmith_dot_vec2_u32(~u_input.c.xz, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.e, 1u), vec2<u32>(45604u, 14188u)), firstLeadingBit(global1.e))) % 32u));
    var var_2 = vec4<u32>(u_input.c.x, countOneBits(_wgslsmith_add_u32(max(max(0u, 34145u), 0u), 1u)), 4294967295u, u_input.c.x | 0u);
    var var_3 = var_0.b;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.ywx) * global2.yyy);
}

fn func_1() -> u32 {
    global0 = _wgslsmith_f_op_vec3_f32(func_2());
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, _wgslsmith_div_f32(global1.b.x, 670f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(172f, global0.x), _wgslsmith_f_op_f32(select(global0.x, global0.x, global1.c)))) + global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global2.x)))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * global0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + 1000f))), 834f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), -476f))));
    global2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.b.x, global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.b.x, _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-935f, global2.x, true)), _wgslsmith_f_op_f32(-global2.x))))));
    return 57746u;
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: i32) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, 2068f, 594f, -1069f)))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(729f, global0.x, arg_1, -1000f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1138f, -527f, global0.x, arg_1), vec4<f32>(arg_1, global1.b.x, global1.b.x, 1196f), vec4<bool>(global1.c, global1.a, true, global1.a))))), vec4<f32>(_wgslsmith_f_op_vec3_f32(func_2()).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(833f - 151f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 540f, _wgslsmith_f_op_f32(-global2.x)), false)));
    global0 = global2.xyz;
    let var_1 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(select(~vec4<u32>(u_input.b, 4294967295u, 11900u, 50475u), min(vec4<u32>(1u, arg_0.x, u_input.b, 1u), vec4<u32>(global1.e, u_input.b, arg_0.x, 0u)), select(vec4<bool>(false, global1.c, global1.a, true), vec4<bool>(false, true, false, global1.d.x), global1.d.x)), vec4<u32>(~4294967295u, arg_0.x, 835u, 3085u)), ~(~countOneBits(vec4<u32>(4294967295u, 6028u, 0u, 4294967295u))));
    let var_2 = 75780u;
    global0 = vec3<f32>(-252f, 333f, _wgslsmith_f_op_f32(select(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(656f * 1205f)))), false)));
    return Struct_2(var_0.x < -2016f, Struct_1(var_2 != 61731u, vec2<f32>(_wgslsmith_f_op_f32(floor(global2.x)), -1743f), _wgslsmith_f_op_f32(-128f - _wgslsmith_f_op_f32(-880f + 664f)) > _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(1121f * -400f)), vec3<bool>(!(-747f < var_0.x), any(!vec3<bool>(global1.d.x, true, false)), arg_1 > _wgslsmith_f_op_f32(trunc(global2.x))), select(~_wgslsmith_sub_u32(global1.e, u_input.c.x), var_1, global1.d.x)), true, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~vec3<u32>(min(u_input.b & 0u, ~u_input.b), func_1(), u_input.b), global2.x, firstLeadingBit(u_input.a));
    let var_1 = Struct_2(false, Struct_1(global1.c, global0.xz, true, vec3<bool>(false, !global1.c, all(vec3<bool>(global1.d.x, var_0.a, global1.d.x))), global1.e), func_4(vec3<u32>(var_0.b.e, global1.e & 0u, 1u), global1.b.x, min(u_input.a, u_input.a)).a == !(true && var_0.c), func_4(~max(u_input.c, u_input.c) ^ u_input.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) * global0.x), _wgslsmith_f_op_f32(-global1.b.x)), 45305i).d);
    var var_2 = vec2<bool>(all(var_1.b.d), true);
    let var_3 = var_1.c;
    let var_4 = var_1.b;
    var var_5 = !func_4(vec3<u32>(~global1.e, u_input.b, var_4.e), _wgslsmith_f_op_f32(trunc(-109f)), u_input.a).b.d;
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b.x)) - _wgslsmith_f_op_f32(-344f + 726f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(global1.b.x, _wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b.b.x, global1.b.x))))), true)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * func_4(u_input.c, var_0.b.b.x, -19761i).b.b.x), _wgslsmith_f_op_f32(-var_0.b.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1096f, var_4.b.x))))), _wgslsmith_clamp_i32(reverseBits(u_input.a), -55350i, -2147483647i), vec3<f32>(-1021f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-388f, global1.b.x)))), _wgslsmith_f_op_f32(f32(-1f) * -329f)));
}

