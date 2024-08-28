struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(26485i, 0i), vec2<i32>(i32(-2147483648), 64303i), vec2<i32>(12804i, 4679i));

var<private> global1: array<u32, 6>;

var<private> global2: array<f32, 10>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: f32) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b));
}

fn func_3(arg_0: vec3<f32>) -> vec2<f32> {
    var var_0 = select(!select(vec2<bool>(any(vec4<bool>(false, true, true, true)), true), vec2<bool>(true, true), !all(vec3<bool>(false, false, true))), vec2<bool>(false, true), (all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)) || true) & (global1[_wgslsmith_index_u32(~(4294967295u >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 6u)] % 32u)), 6u)] <= 37812u));
    var var_1 = arg_0.x;
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.yy, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, arg_0.x), vec2<f32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)], 10u)], global2[_wgslsmith_index_u32(0u, 10u)]), !vec2<bool>(true, var_0.x))), select(true, true, true))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(64430u, 10u)], arg_0.x), arg_0.xx)))))));
    var var_3 = abs(firstTrailingBit(min(vec3<u32>(10430u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(67954u, 6u)], 6u)], 65153u), ~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 19010u, 64630u))) & vec3<u32>(2408u, 4294967295u, _wgslsmith_div_u32(_wgslsmith_sub_u32(36446u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4387u, 6u)], 6u)], 6u)], 6u)]), 4294967295u)));
    let var_4 = 35884u;
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_0.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-647f, var_2.a.x)), var_2.a.x))), _wgslsmith_f_op_vec2_f32(sign(var_2.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(var_2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -671f) * arg_0.x)) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a) + _wgslsmith_f_op_vec2_f32(select(arg_0.yy, vec2<f32>(global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11729u, 6u)], 6u)], 10u)]), vec2<bool>(var_0.x, false)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, 372f))))))));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>, arg_3: vec4<bool>) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_0.b - vec3<f32>(-1503f, global2[_wgslsmith_index_u32(1u, 10u)], arg_0.b.x)))))))));
    global1 = array<u32, 6>();
    let var_1 = abs(vec3<i32>(u_input.a.x, ~2147483647i << ((_wgslsmith_dot_vec2_u32(vec2<u32>(18429u, global1[_wgslsmith_index_u32(arg_0.d.x, 6u)]), arg_0.d.zy) << (arg_1 % 32u)) % 32u), -arg_2.x));
    let var_2 = vec4<u32>(max(arg_1 << (global1[_wgslsmith_index_u32(~1u, 6u)] % 32u), min(19878u, ~arg_0.d.x)), global1[_wgslsmith_index_u32(969u, 6u)], 78688u, ~1u);
    let var_3 = firstLeadingBit(var_2);
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(8852u, global1[_wgslsmith_index_u32(~(~(~4331u)), 6u)]), 6u)], 6u)];
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(7849u, global1[_wgslsmith_index_u32(7392u, 6u)]), 10u)]))), global2[_wgslsmith_index_u32(~reverseBits(var_1), 10u)]) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1, 10u)]), -627f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22666u, 6u)], 10u)], 1100f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 10u)], -131f, var_0)), _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(54598u, 10u)]))))));
    global2 = array<f32, 10>();
    let var_3 = global2[_wgslsmith_index_u32(func_2(Struct_1(select(!select(vec4<bool>(var_0, true, true, true), vec4<bool>(false, var_0, true, true), vec4<bool>(var_0, true, false, false)), vec4<bool>(true, 104f < var_2.x, var_0, -24673i >= u_input.a.x), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1030f, -1094f, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(43156u, 10u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 10u)])) * _wgslsmith_f_op_vec3_f32(func_1(Struct_1(vec4<bool>(var_0, false, true, true), vec3<f32>(-1000f, -604f, global2[_wgslsmith_index_u32(var_1, 10u)]), global2[_wgslsmith_index_u32(63380u, 10u)], vec4<u32>(var_1, 33027u, var_1, var_1)), -u_input.a.x, u_input.a.x, _wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4286u, 10u)]), firstLeadingBit(countOneBits(vec4<u32>(44800u, var_1, 0u, 65111u))) >> (vec4<u32>(var_1, max(var_1, var_1), 4294967295u, var_1) % vec4<u32>(32u))), global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_div_u32(var_1, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)]), 6u)]), _wgslsmith_div_u32(_wgslsmith_div_u32(20919u, 51134u), 1u)), 6u)], -(min(global0[_wgslsmith_index_u32(var_1, 3u)], ~vec2<i32>(u_input.a.x, u_input.a.x)) & ~_wgslsmith_mod_vec2_i32(global0[_wgslsmith_index_u32(4294967295u, 3u)], vec2<i32>(u_input.a.x, -1i))), !vec4<bool>(any(select(vec3<bool>(true, true, var_0), vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, var_0, true))), false, var_0 || (u_input.a.x <= u_input.a.x), 1u > global1[_wgslsmith_index_u32(1u, 6u)])), 10u)];
    global1 = array<u32, 6>();
    let var_4 = Struct_1(!select(!vec4<bool>(true, true, var_0, var_0), vec4<bool>(true, var_0, -3250i == u_input.a.x, var_0), !var_0), vec3<f32>(_wgslsmith_f_op_f32(floor(-320f)), -714f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, -660f, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(var_1, 6u)], global1[_wgslsmith_index_u32(28003u, 6u)], 6193u, var_1)), select(vec4<u32>(var_1, 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 6u)], 4294967295u), vec4<u32>(59535u, 47867u, var_1, 12375u), vec4<bool>(false, false, true, false))), 10u)])), countOneBits(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(var_1, 6u)], 22570u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 0u), vec4<u32>(12011u, global1[_wgslsmith_index_u32(4294967295u, 6u)], 4294967295u, var_1)), var_1, reverseBits(var_1 >> (var_1 % 32u)), 55088u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1669f, var_2.x), var_4.b.zx))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_4.b.xx, var_4.b.xy)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-568f, var_4.b.x)))), ((vec3<i32>(-1i) * -u_input.a.yzx) & vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), u_input.a.x << (var_4.d.x % 32u), 0i)) >> (~(~select(vec3<u32>(4294967295u, var_1, 0u), vec3<u32>(16001u, 4294967295u, 19935u), var_4.a.yyz)) % vec3<u32>(32u)), 1i);
}

