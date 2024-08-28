struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<u32>,
    d: vec3<bool>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 13>;

var<private> global1: Struct_1;

var<private> global2: array<bool, 5> = array<bool, 5>(false, false, false, false, false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> u32 {
    global0 = array<vec4<bool>, 13>();
    var var_0 = select(!global1.d.xy, select(arg_2.d.zy, !vec2<bool>(global1.b <= arg_1.b, arg_1.a), select(!arg_1.d.zz, select(arg_1.d.zz, arg_2.d.yx, select(arg_1.d.xy, vec2<bool>(global1.d.x, global2[_wgslsmith_index_u32(0u, 5u)]), global1.d.xx)), vec2<bool>(arg_1.d.x, arg_1.d.x))), any(vec4<bool>(false, true, true, _wgslsmith_f_op_f32(-arg_0.x) >= arg_3)));
    global0 = array<vec4<bool>, 13>();
    let var_1 = arg_3;
    var_0 = global1.d.zz;
    return arg_2.e;
}

fn func_2() -> vec2<u32> {
    let var_0 = u_input.b.x;
    let var_1 = !(1i >= select(~u_input.c, -1i, -1179f == _wgslsmith_f_op_f32(floor(-338f))));
    var var_2 = !vec2<bool>(_wgslsmith_mod_u32(15317u, func_3(vec3<f32>(global1.b, global1.b, 986f), Struct_1(global1.d.x, global1.b, vec3<u32>(u_input.b.x, 49788u, 4294967295u), vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a, 5u)]), 30642u), Struct_1(var_1, -931f, global1.c, global1.d, 42255u), -1000f)) >= _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, 0u), _wgslsmith_add_u32(1u, var_0)), !(any(vec4<bool>(global2[_wgslsmith_index_u32(global1.e, 5u)], false, true, global2[_wgslsmith_index_u32(25621u, 5u)])) || global2[_wgslsmith_index_u32(u_input.a | 0u, 5u)]));
    var var_3 = Struct_1(any(global1.d) | true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.b))) * -449f) * global1.b), ~(~(~(~global1.c))), global1.d, firstLeadingBit(_wgslsmith_mod_u32(86312u, ~var_0)));
    let var_4 = -1i;
    return vec2<u32>(~_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(0u, var_3.e, var_3.e, 4294967295u)), vec4<u32>(var_0, 20668u, var_3.c.x, var_0) & (vec4<u32>(global1.e, 39157u, var_0, global1.c.x) & vec4<u32>(u_input.a, var_0, 39134u, u_input.a))), 4294967295u);
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1) -> i32 {
    global2 = array<bool, 5>();
    var var_0 = _wgslsmith_f_op_f32(-global1.b);
    var var_1 = vec3<bool>((_wgslsmith_f_op_f32(814f + global1.b) <= _wgslsmith_f_op_f32(sign(global1.b))) || (any(!vec3<bool>(arg_0, false, true)) & ((4294967295u != u_input.b.x) | arg_0)), true, true);
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1.b)), _wgslsmith_f_op_f32(round(global1.b))) * global1.b), global1.b));
    let var_3 = arg_2;
    return u_input.c;
}

fn func_1() -> Struct_1 {
    global2 = array<bool, 5>();
    let var_0 = func_4(any(!vec3<bool>(false, true, false || global2[_wgslsmith_index_u32(24763u, 5u)])), func_2() << (~(~abs(vec2<u32>(u_input.a, 37501u))) % vec2<u32>(32u)), Struct_1(!global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(10622u, 17817u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), global1.c.yz)), 5u)], _wgslsmith_f_op_f32(max(-1136f, global1.b)), ~(countOneBits(vec3<u32>(0u, global1.e, u_input.b.x)) ^ select(vec3<u32>(u_input.b.x, u_input.b.x, 1u), global1.c, global1.d.x)), select(global1.d, !global1.d, vec3<bool>(all(global1.d.xx), global1.a || true, 1u != u_input.b.x)), _wgslsmith_mod_u32(u_input.a, max(33654u << (1u % 32u), ~global1.c.x))));
    global0 = array<vec4<bool>, 13>();
    let var_1 = Struct_1(!global1.a & !(!(global2[_wgslsmith_index_u32(u_input.b.x, 5u)] & true)), _wgslsmith_f_op_f32(-global1.b), _wgslsmith_sub_vec3_u32((global1.c >> ((vec3<u32>(9267u, u_input.a, 9998u) << (vec3<u32>(40584u, global1.c.x, u_input.b.x) % vec3<u32>(32u))) % vec3<u32>(32u))) | ~global1.c, vec3<u32>(u_input.b.x & u_input.a, 34858u, 4294967295u)), select(global1.d, vec3<bool>(true, all(vec4<bool>(false, global2[_wgslsmith_index_u32(global1.c.x, 5u)], false, global2[_wgslsmith_index_u32(33770u, 5u)])), any(!global1.d.xy)), global1.d), 0u);
    var var_2 = global2[_wgslsmith_index_u32(firstTrailingBit(~((global1.e | select(var_1.e, 21761u, true)) & ~max(u_input.a, u_input.b.x))), 5u)];
    return Struct_1(true, _wgslsmith_f_op_f32(-1183f + _wgslsmith_f_op_f32(var_1.b - global1.b)), global1.c, global1.d, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = func_1();
    var_0 = Struct_1(any(global1.d.xx), _wgslsmith_f_op_f32(trunc(global1.b)), ~vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(var_0.c.yx, u_input.b)), ~firstLeadingBit(global1.c.x), 103985u), vec3<bool>(any(global0[_wgslsmith_index_u32(~global1.e, 13u)]) | true, any(func_1().d) | select(true, true, global1.d.x), true), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.b.x & 0u), var_0.c.yy));
    let var_1 = ~vec4<u32>(u_input.b.x, global1.e, ~(~global1.c.x), 0u);
    let var_2 = Struct_1(false, 1000f, firstTrailingBit(~(~vec3<u32>(59900u, 4294967295u, 25911u))), !var_0.d, 48398u >> (~(~var_1.x) % 32u));
    let var_3 = func_1();
    var_0 = func_1();
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.zz, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3.b)) * _wgslsmith_f_op_f32(step(670f, -273f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1000f))))))));
}

