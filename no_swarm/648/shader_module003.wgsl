struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec3<bool>, 15>;

var<private> global2: array<i32, 1> = array<i32, 1>(1i);

var<private> global3: array<Struct_1, 8>;

var<private> global4: vec4<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    global2 = array<i32, 1>();
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(458f, -403f), vec2<f32>(-121f, global0.x), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 916f) + vec2<f32>(global0.x, global0.x)), select(vec2<bool>(false, global4.x), global4.yz, false)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -754f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(ceil(-959f))) - global0.x)), abs(~(-global2[_wgslsmith_index_u32(4294967295u, 1u)])) < (0i >> (0u % 32u))));
    global0 = vec2<f32>(global0.x, -1071f);
    global4 = vec4<bool>(_wgslsmith_sub_u32(~(~u_input.a.x), ~4294967295u) <= abs(0u), !global4.x, true, !global4.x);
    var var_0 = -max(-vec2<i32>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 35353u), 1u)], global2[_wgslsmith_index_u32(u_input.a.x, 1u)] ^ global2[_wgslsmith_index_u32(u_input.a.x, 1u)]), ~(-vec2<i32>(-43469i, global2[_wgslsmith_index_u32(4294967295u, 1u)])));
    return _wgslsmith_f_op_f32(-1667f * _wgslsmith_f_op_f32(abs(789f)));
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    var var_0 = ~countOneBits(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.a.x, 6508u), u_input.a.wwy, u_input.a.wzy), vec3<u32>(1u, 39870u, 69202u))) ^ vec3<u32>(1u, _wgslsmith_add_u32(0u, u_input.a.x), ~(~4294967295u) << (_wgslsmith_div_u32(43555u, ~1u) % 32u));
    global3 = array<Struct_1, 8>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(535f * global0.x) - _wgslsmith_f_op_f32(max(global0.x, global0.x))), _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1629f, global0.x)))))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(global0.x * 545f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(2308f, global0.x), _wgslsmith_div_f32(1720f, 1000f), global4.x | false))))), 926f);
    let var_2 = select(vec2<bool>(any(select(!vec4<bool>(arg_0.x, false, global4.x, global4.x), vec4<bool>(arg_0.x, false, arg_0.x, true), !vec4<bool>(global4.x, true, false, global4.x))), false), vec2<bool>(!global4.x, _wgslsmith_f_op_f32(-global0.x) != -264f), any(vec4<bool>(!global4.x, _wgslsmith_f_op_f32(sign(var_1.x)) == -1649f, true, global4.x)));
    let var_3 = Struct_2(global3[_wgslsmith_index_u32(var_0.x, 8u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x)))), !vec2<bool>(false, false | var_2.x), global3[_wgslsmith_index_u32(4294967295u, 8u)]);
    return ~_wgslsmith_clamp_u32(~u_input.a.x, 54301u, ~u_input.a.x);
}

fn func_1() -> vec2<bool> {
    global3 = array<Struct_1, 8>();
    var var_0 = 1u;
    let var_1 = global3[_wgslsmith_index_u32(~abs(func_2(vec3<bool>(global4.x, true, true))), 8u)];
    var var_2 = global0.x;
    return vec2<bool>(global4.x, true);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = global3[_wgslsmith_index_u32(u_input.a.x, 8u)];
    let var_1 = ~(~(~(~vec4<u32>(u_input.a.x, var_0.b.x, 49502u, 25972u)) | vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 18161u), vec3<u32>(43519u, 0u, u_input.a.x)), u_input.a.x, ~u_input.a.x, reverseBits(u_input.a.x))));
    let var_2 = Struct_2(Struct_1(~func_2(select(vec3<bool>(true, false, true), arg_0, vec3<bool>(arg_2.x, false, arg_2.x))), select(var_1, reverseBits(vec4<u32>(u_input.a.x, var_1.x, var_0.e, 20541u) | u_input.a), !vec4<bool>(arg_0.x, false, arg_2.x, false)), 1i, var_1.zxx, 1u), -532f, arg_0.zx, global3[_wgslsmith_index_u32(var_1.x, 8u)]);
    var var_3 = Struct_1(u_input.a.x, ~vec4<u32>(_wgslsmith_div_u32(1u, var_0.e & var_2.d.e), var_0.b.x, ~1u, var_0.a), 1i, ~(~vec3<u32>(_wgslsmith_div_u32(var_0.d.x, 1u), u_input.a.x, var_1.x)), 39140u);
    var_0 = var_2.d;
    return Struct_3(firstLeadingBit(var_2.a.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(-arg_1.x), -869f)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, arg_1.x, global0.x))))), global3[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(var_1.x, firstLeadingBit(func_2(arg_0))), ~_wgslsmith_clamp_u32(var_3.e, 14051u, ~u_input.a.x)), 8u)], _wgslsmith_mod_i32(var_3.c, i32(-1i) * -1i), _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(~(~4294967295u) | _wgslsmith_sub_u32(0u, _wgslsmith_sub_u32(22682u, var_3.b.x)), 1u)], -5778i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(~u_input.a.x, 8u)];
    global3 = array<Struct_1, 8>();
    let var_1 = func_4(!(!vec3<bool>(!global4.x, global4.x, true)), vec3<f32>(_wgslsmith_f_op_f32(825f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), global0.x, global0.x), select(func_1(), global4.zz, vec2<bool>(true, !global4.x || all(vec4<bool>(global4.x, true, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(0u, u_input.a.x, var_0.e), ~vec3<u32>(0u, u_input.a.x, var_1.c.b.x), true), vec3<u32>(~4294967295u, _wgslsmith_add_u32(20024u, var_0.b.x), 27994u >> (u_input.a.x % 32u)), ~u_input.a.zyy | u_input.a.zyw) & firstLeadingBit(var_0.b.yzz), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(396f, -216f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-138f))))), vec3<f32>(_wgslsmith_f_op_f32(-1000f + global0.x), var_1.b.x, _wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b.x))))));
}

