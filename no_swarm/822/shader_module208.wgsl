struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22> = array<bool, 22>(false, false, true, false, false, true, true, false, true, false, false, false, false, false, true, true, true, false, true, false, false, true);

var<private> global1: Struct_1 = Struct_1(i32(-2147483648), vec3<i32>(0i, 1i, 2147483647i), 358f);

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

var<private> global3: array<Struct_1, 6>;

var<private> global4: vec2<f32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    global2 = select(vec3<bool>(true, !global0[_wgslsmith_index_u32(~(~34580u), 22u)], global0[_wgslsmith_index_u32(max(4294967295u, 23838u), 22u)]), !(!select(!vec3<bool>(global0[_wgslsmith_index_u32(51061u, 22u)], global2.x, false), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(57277u, 22u)], false), !global0[_wgslsmith_index_u32(4294967295u, 22u)])), max(-2147483647i, firstLeadingBit(u_input.a.x)) != 29943i);
    global1 = global3[_wgslsmith_index_u32(~abs(~4294967295u), 6u)];
    global0 = array<bool, 22>();
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) + 1484f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1596f))))));
    let var_0 = u_input.a.x >> (select(_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, ~4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(29166u, 0u, 0u, 0u), select(vec4<u32>(49790u, 16620u, 151796u, 4294967295u), vec4<u32>(1u, 69189u, 1u, 1u), global0[_wgslsmith_index_u32(0u, 22u)]))), ~1u, all(select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, global2.x, global0[_wgslsmith_index_u32(11481u, 22u)]), vec3<bool>(false, false, true)))) % 32u);
    return -(~u_input.a.x);
}

fn func_2() -> vec2<f32> {
    let var_0 = reverseBits(-(~(vec2<i32>(2147483647i, u_input.a.x) >> (select(vec2<u32>(19829u, 1896u), vec2<u32>(1u, 0u), true) % vec2<u32>(32u)))));
    global1 = global3[_wgslsmith_index_u32(1u, 6u)];
    global1 = Struct_1(_wgslsmith_mod_i32(2147483647i, firstTrailingBit(u_input.a.x) >> (_wgslsmith_div_u32(30846u, 72328u) % 32u)) ^ -12579i, firstLeadingBit(vec3<i32>(func_3(), abs(global1.b.x), ~firstLeadingBit(-5850i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-891f * -891f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x + 1942f) * -1325f), _wgslsmith_f_op_f32(abs(global1.c)), true)))));
    global0 = array<bool, 22>();
    global2 = select(select(vec3<bool>(global0[_wgslsmith_index_u32(~18047u, 22u)] & false, global2.x, global1.c < _wgslsmith_f_op_f32(min(-844f, global4.x))), vec3<bool>(any(select(vec2<bool>(false, global0[_wgslsmith_index_u32(51160u, 22u)]), vec2<bool>(true, global2.x), global2.x)), global2.x, _wgslsmith_f_op_f32(global1.c * global4.x) != _wgslsmith_f_op_f32(round(-184f))), global0[_wgslsmith_index_u32(~1u >> (1u % 32u), 22u)]), vec3<bool>(false, false, !(_wgslsmith_clamp_i32(-2147483647i, u_input.a.x, u_input.a.x) > _wgslsmith_div_i32(-4242i, u_input.a.x))), vec3<bool>(_wgslsmith_mod_i32(countOneBits(global1.b.x), 4870i) <= 1i, false, true));
    return _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global4.x), global1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(max(global1.c, 993f)), global0[_wgslsmith_index_u32(4294967295u, 22u)])) - _wgslsmith_f_op_f32(exp2(global1.c)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.c, -779f), vec2<f32>(856f, 1299f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-432f, global1.c) - vec2<f32>(global4.x, global4.x)))))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(162f * global1.c), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-global4.x)))) + _wgslsmith_f_op_f32(step(arg_1.x, global4.x))));
    global4 = _wgslsmith_f_op_vec2_f32(func_2());
    let var_1 = Struct_3(global3[_wgslsmith_index_u32(max(~min(25598u, arg_0.x), 35029u), 6u)], global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.x, 74715u), 6u)], _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.x, 1639f, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, arg_1.x))))), vec4<i32>(_wgslsmith_sub_i32(firstLeadingBit(global1.a), i32(-1i) * -2147483647i), -2147483647i, u_input.a.x, min(global1.a, -32380i)), global3[_wgslsmith_index_u32(countOneBits(3590u | ~arg_0.x), 6u)]);
    let var_2 = !vec4<bool>(true, false, global0[_wgslsmith_index_u32(arg_0.x, 22u)], ~(-2147483647i) <= -_wgslsmith_sub_i32(1i, u_input.a.x));
    let var_3 = var_1;
    return 18473u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global3[_wgslsmith_index_u32(((~62950u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 45398u, 4294967295u), ~vec4<u32>(94666u, 0u, 6160u, 0u))) << (~(~func_1(vec3<u32>(4294967295u, 1u, 10077u), vec3<f32>(-159f, -351f, -1000f))) % 32u)) ^ select(firstLeadingBit(_wgslsmith_sub_u32(1u, firstTrailingBit(27866u))), ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(18560u, 52080u), vec2<u32>(63829u, 1u), true), vec2<u32>(0u, 1u)), true), 6u)];
    let var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a, -(vec3<i32>(global1.a, u_input.a.x, -1020i) | u_input.a)), u_input.a) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(90988u, 51382u), vec2<u32>(67734u, 1u)), vec2<u32>(~4294967295u, 0u)), ~0u, ~(~select(1u, 1u, global2.x))) % vec3<u32>(32u));
    let var_1 = Struct_3(global3[_wgslsmith_index_u32(49807u, 6u)], Struct_1(_wgslsmith_dot_vec4_i32(~(vec4<i32>(1i, 0i, var_0.x, 103178i) >> (vec4<u32>(0u, 39600u, 0u, 1u) % vec4<u32>(32u))), -vec4<i32>(12621i, -37279i, -100895i, 0i)), global1.b, global4.x), vec4<f32>(_wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(453f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1123f - -2205f)), _wgslsmith_f_op_f32(1210f - _wgslsmith_f_op_f32(step(837f, global1.c))), u_input.a.x >= global1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(182f, global4.x))) - 462f), _wgslsmith_f_op_f32(-global4.x)), vec4<i32>(-global1.a, -68911i, u_input.a.x, u_input.a.x & u_input.a.x), Struct_1(-u_input.a.x, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -1i, var_0.x), vec3<i32>(var_0.x, var_0.x, u_input.a.x), vec3<i32>(var_0.x, u_input.a.x, 2147483647i) & vec3<i32>(u_input.a.x, u_input.a.x, -31219i)) & abs(var_0), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(2229f)), _wgslsmith_f_op_f32(f32(-1f) * -1809f)), _wgslsmith_f_op_f32(round(198f))))));
    global4 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c.zz + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, 468f) + var_1.c.zz)))))));
    global4 = vec2<f32>(var_1.a.c, var_1.a.c);
    var var_2 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(1f);
}

