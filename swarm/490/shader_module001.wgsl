struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11>;

var<private> global1: i32 = 31720i;

var<private> global2: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(-495f, -322f), vec2<f32>(1047f, 1505f), vec2<f32>(-710f, -682f), vec2<f32>(-891f, 663f), vec2<f32>(-132f, 342f), vec2<f32>(-306f, -1451f), vec2<f32>(-1028f, 1620f), vec2<f32>(537f, 205f), vec2<f32>(662f, -606f), vec2<f32>(166f, -2285f), vec2<f32>(1037f, 2136f), vec2<f32>(709f, 730f), vec2<f32>(-1031f, 1164f), vec2<f32>(392f, -795f), vec2<f32>(1983f, -299f), vec2<f32>(-748f, -649f), vec2<f32>(-854f, 1474f), vec2<f32>(-156f, 536f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(4294967295u, 18u)]) * _wgslsmith_f_op_vec2_f32(max(global2[_wgslsmith_index_u32(12794u << (u_input.b % 32u), 18u)], vec2<f32>(arg_0.b, arg_0.a.c))))));
    var var_1 = arg_0.a;
    var_1 = Struct_1(true, arg_0.a.b, 1f);
    var_1 = arg_0.a;
    var var_2 = !select(vec2<bool>(global0[_wgslsmith_index_u32(min(firstTrailingBit(25725u), 19625u), 11u)], true), !select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 11u)], false), !vec2<bool>(global0[_wgslsmith_index_u32(68508u, 11u)], arg_0.a.a), true), all(select(vec2<bool>(true, true), !vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 11u)]), true)));
    return -907f;
}

fn func_2() -> Struct_1 {
    var var_0 = 449f;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1109f + 753f), -933f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_5(Struct_1(true, u_input.a.x, 275f), -542f, global0[_wgslsmith_index_u32(4294967295u, 11u)])))))))), Struct_1(global0[_wgslsmith_index_u32(u_input.b, 11u)], ~max(u_input.a.x, u_input.a.x & u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -527f))));
    var var_2 = Struct_2(var_1.b);
    var var_3 = 970f;
    var var_4 = var_1;
    return Struct_1(all(!(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], false))), -abs(var_1.b.b), var_4.a);
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f))));
    var var_1 = Struct_4(Struct_2(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x)))) - _wgslsmith_f_op_f32(trunc(var_0.x))));
    global1 = -22962i;
    var var_2 = vec4<u32>(_wgslsmith_add_u32(arg_0.x, abs(_wgslsmith_clamp_u32(~arg_0.x, ~4294967295u, 44443u))), 4294967295u, ~_wgslsmith_div_u32(792u, _wgslsmith_mult_u32(1u, ~arg_0.x)), max(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, 0u) ^ vec3<u32>(u_input.b, 1u, 1u), vec3<u32>(0u, u_input.c, 4294967295u) >> (vec3<u32>(arg_0.x, u_input.b, 52202u) % vec3<u32>(32u))), 1u | arg_0.x));
    var_2 = vec4<u32>(select(~(~reverseBits(var_2.x)), _wgslsmith_add_u32(u_input.b, u_input.c), true), _wgslsmith_sub_u32(var_2.x, 35962u), min(~u_input.b, _wgslsmith_mod_u32(22723u, _wgslsmith_clamp_u32(~var_2.x, firstLeadingBit(2699u), arg_0.x))), max(~0u, abs(36354u)));
    return func_2();
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1) -> i32 {
    var var_0 = ~firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.a.x, -11132i), min(vec2<i32>(42370i, arg_0), vec2<i32>(-1i, arg_2.b) << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)))));
    var var_1 = max(~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(14978u, 0u, u_input.c, u_input.b), ~vec4<u32>(u_input.b & u_input.c, ~1u, ~28945u, u_input.c)));
    let var_2 = !select(select(!select(vec3<bool>(false, false, false), vec3<bool>(false, arg_2.a, global0[_wgslsmith_index_u32(2852u, 11u)]), vec3<bool>(arg_2.a, arg_2.a, true)), vec3<bool>(select(arg_2.a, true, arg_2.a), arg_2.a & false, true & arg_2.a), !(!global0[_wgslsmith_index_u32(u_input.b, 11u)])), !(!select(vec3<bool>(arg_2.a, arg_2.a, global0[_wgslsmith_index_u32(4294967295u, 11u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 11u)], arg_2.a, false), true)), select(!global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, u_input.c), 11u)], all(!vec3<bool>(true, arg_2.a, global0[_wgslsmith_index_u32(u_input.b, 11u)])), -472f > arg_1.x));
    var var_3 = Struct_1(global0[_wgslsmith_index_u32(1u, 11u)], abs(-5857i), -1657f);
    let var_4 = Struct_3(_wgslsmith_f_op_f32(-arg_2.c), Struct_1(all(vec4<bool>(true, false, true, false)), ~(5300i >> (u_input.c % 32u)), arg_1.x));
    return -(u_input.a.x & countOneBits(13086i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-u_input.a.x << (u_input.b % 32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-598f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(691f, 204f, false))))), _wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1185f * _wgslsmith_f_op_f32(f32(-1f) * -364f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-671f, -1431f))), _wgslsmith_f_op_f32(f32(-1f) * -257f)), vec4<f32>(588f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1109f, -1044f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(684f - -1088f) - _wgslsmith_f_op_f32(374f - 627f))), -487f), u_input.a.x <= func_4(i32(-1i) * -u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1371f * 1010f), _wgslsmith_f_op_f32(f32(-1f) * -1579f)), func_1(countOneBits(vec2<u32>(30163u, 4294967295u))))));
    var var_2 = _wgslsmith_f_op_f32(-var_1.x);
    let var_3 = u_input.b;
    global0 = array<bool, 11>();
    var var_4 = Struct_2(Struct_1(!select(global0[_wgslsmith_index_u32(u_input.b, 11u)] & true, !global0[_wgslsmith_index_u32(4294967295u, 11u)], any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(var_3, 11u)]))), 9442i, _wgslsmith_f_op_f32(-1062f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -461f)))));
    let var_5 = Struct_4(Struct_2(var_4.a), _wgslsmith_f_op_f32(step(var_1.x, var_1.x)));
    let var_6 = Struct_3(var_1.x, func_2());
    let x = u_input.a;
    s_output = StorageBuffer(min(countOneBits(_wgslsmith_dot_vec3_i32(-u_input.a.ywz, select(u_input.a.xyx, u_input.a.zxz, vec3<bool>(false, true, var_4.a.a)))), -2147483647i), abs(countOneBits(~vec2<u32>(var_3, 0u))), var_6.a, u_input.a.zyw & min(-abs(u_input.a.yzy), ~u_input.a.wyw & _wgslsmith_add_vec3_i32(u_input.a.zzx, u_input.a.zyy)));
}

