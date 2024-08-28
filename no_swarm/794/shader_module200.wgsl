struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22> = array<i32, 22>(1i, -1i, -31124i, 10963i, 0i, -26573i, 23207i, -42283i, 0i, 6750i, 11684i, -42990i, 2147483647i, 5893i, 15091i, 1321i, i32(-2147483648), 0i, 1i, -39972i, 7478i, 0i);

var<private> global1: array<vec4<i32>, 29>;

var<private> global2: array<f32, 28>;

var<private> global3: vec4<f32> = vec4<f32>(-212f, 184f, 722f, 204f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32) -> vec2<f32> {
    var var_0 = global3.x;
    var var_1 = arg_0;
    global1 = array<vec4<i32>, 29>();
    let var_2 = _wgslsmith_div_i32(_wgslsmith_add_i32(arg_0.a, 0i), countOneBits(1420i & _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, -59385i) | vec2<i32>(var_1.a, 1i), vec2<i32>(17000i, global0[_wgslsmith_index_u32(u_input.a.x, 22u)]) << (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u)))));
    var var_3 = arg_0;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(380f)), 373f, true)), 1790f))));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.x, max(u_input.b.x, u_input.a.x)), 28u)], 930f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(global0[_wgslsmith_index_u32(1u, 22u)], vec4<bool>(false, false, false, true), arg_2, global3.xw, -1340f), vec3<u32>(u_input.b.x, 0u, 45579u), global3.x))))));
    global0 = array<i32, 22>();
    var var_1 = _wgslsmith_div_vec2_u32(~vec2<u32>(select(70267u, u_input.b.x, true), countOneBits(max(arg_0.x, u_input.a.x))), vec2<u32>(reverseBits(arg_0.x << (max(41347u, u_input.a.x) % 32u)), firstLeadingBit(reverseBits(arg_0.x))));
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(arg_0.x, 22u)], vec3<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(arg_0.x, u_input.a.x, var_1.x, 1u)), vec4<u32>(var_1.x, 34842u, abs(var_1.x), arg_0.x)), 4294967295u, 1u));
    var var_3 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 1u), 22u)], !select(select(!vec4<bool>(arg_2.x, false, false, arg_1), !vec4<bool>(true, arg_1, arg_2.x, false), !vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x)), vec4<bool>(true, arg_2.x, true, arg_1), any(select(vec4<bool>(arg_2.x, false, arg_1, arg_2.x), vec4<bool>(arg_1, true, arg_1, arg_1), arg_2.x))), !arg_2, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.xz - _wgslsmith_f_op_vec2_f32(vec2<f32>(209f, global2[_wgslsmith_index_u32(30783u, 28u)]) - vec2<f32>(-1277f, var_0.x))) - vec2<f32>(_wgslsmith_f_op_f32(select(-980f, -896f, false)), _wgslsmith_f_op_f32(-733f * global3.x))))), 343f);
    return Struct_2(8823i, vec3<u32>(u_input.a.x, u_input.a.x, 16907u));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool) -> bool {
    global1 = array<vec4<i32>, 29>();
    let var_0 = func_2(u_input.a, min(select(~global0[_wgslsmith_index_u32(44351u, 22u)], abs(global0[_wgslsmith_index_u32(u_input.a.x, 22u)]), true), -(global0[_wgslsmith_index_u32(u_input.a.x, 22u)] & -1i)) != _wgslsmith_dot_vec4_i32(-vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], global0[_wgslsmith_index_u32(2385u, 22u)], 1i, 54320i) & ~global1[_wgslsmith_index_u32(u_input.a.x, 29u)], vec4<i32>(max(-2147483647i, global0[_wgslsmith_index_u32(0u, 22u)]), ~45188i, reverseBits(global0[_wgslsmith_index_u32(u_input.a.x, 22u)]), reverseBits(global0[_wgslsmith_index_u32(0u, 22u)]))), select(!vec2<bool>(all(arg_0.wz), arg_1), vec2<bool>(true, any(select(arg_0.yw, arg_0.xz, arg_0.yy))), arg_0.x));
    let var_1 = arg_0.xxw;
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-570f, global3.x, global3.x, -1110f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1123f, -659f, -430f, 1985f) - vec4<f32>(global3.x, global3.x, global3.x, global2[_wgslsmith_index_u32(var_0.b.x, 28u)])))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, _wgslsmith_f_op_f32(sign(1054f)), 1585f, _wgslsmith_f_op_f32(trunc(244f)))))));
    var var_3 = Struct_1(~(-48282i), !select(!arg_0, vec4<bool>(arg_0.x, all(arg_0.yww), true, true), vec4<bool>(!arg_1, global0[_wgslsmith_index_u32(u_input.b.x, 22u)] != -9753i, u_input.b.x > u_input.b.x, true)), vec2<bool>(global3.x == _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1270f), -1993f), true), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2065f)) - -226f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(846f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2270f - _wgslsmith_f_op_f32(-260f * 1194f)) * _wgslsmith_f_op_f32(-138f + global3.x))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-375f))), -1306f, -176f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-116f + 788f) * _wgslsmith_f_op_f32(select(1695f, 1206f, false))))));
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, u_input.b.x), countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(8236u, 77433u), u_input.b))), 29u)], vec4<i32>(global0[_wgslsmith_index_u32(~(~u_input.a.x), 22u)], -_wgslsmith_div_i32(69855i, global0[_wgslsmith_index_u32(1u, 22u)]), firstLeadingBit(abs(global0[_wgslsmith_index_u32(u_input.b.x, 22u)])), _wgslsmith_add_i32(global0[_wgslsmith_index_u32(u_input.b.x, 22u)] ^ 0i, global0[_wgslsmith_index_u32(1u, 22u)]))), vec4<bool>(true, true, true, true), !(!vec2<bool>(all(vec4<bool>(true, true, true, true)), 7760u >= u_input.a.x)), global3.yx, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + global3.x))));
    var var_1 = any(vec3<bool>(true, false, var_0.c.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1323f, global2[_wgslsmith_index_u32(3684u | u_input.a.x, 28u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x * -1287f) * -459f)))));
    var_0 = Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], vec4<bool>(func_1(!vec4<bool>(true, false, true, var_0.c.x), !all(vec3<bool>(var_0.b.x, false, var_0.b.x))), any(vec4<bool>(all(var_0.b), var_0.c.x, all(vec4<bool>(var_0.b.x, false, false, true)), var_0.c.x)), var_0.b.x, !(_wgslsmith_f_op_f32(sign(213f)) > _wgslsmith_f_op_f32(exp2(global3.x)))), select(!vec2<bool>(u_input.a.x >= u_input.a.x, var_0.c.x), var_0.b.xz, var_0.b.yx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e, _wgslsmith_f_op_f32(global3.x * 1251f)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(global3.zx)), vec2<f32>(var_0.e, 156f), var_0.c))) * _wgslsmith_f_op_vec2_f32(var_0.d - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global3.wz)) + _wgslsmith_f_op_vec2_f32(trunc(var_0.d))))), 913f);
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -446f) * _wgslsmith_f_op_f32(min(1643f, var_0.e))))))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-970f - _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_3, 281f), -690f, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(global1[_wgslsmith_index_u32(abs(~1u), 29u)]));
}

