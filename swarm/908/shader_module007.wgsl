struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec3<f32>;

var<private> global2: array<bool, 1>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    var var_0 = vec2<i32>(u_input.c, ~u_input.a);
    var var_1 = reverseBits(5002u) >= arg_1.a.x;
    var var_2 = Struct_1(abs(~vec3<i32>(arg_1.b, 1i, u_input.b | 2147483647i)), abs(countOneBits(abs(~vec4<i32>(var_0.x, 2147483647i, 2147483647i, var_0.x)))), global0.yzy);
    let var_3 = ~vec2<u32>(1u, firstLeadingBit(u_input.d.x << (1u % 32u)) | 1u);
    var_1 = any(select(select(select(!vec4<bool>(true, false, false, arg_0.x), select(vec4<bool>(false, global2[_wgslsmith_index_u32(102466u, 1u)], true, global2[_wgslsmith_index_u32(u_input.d.x, 1u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 1u)], true, global2[_wgslsmith_index_u32(13526u, 1u)]), false), false), select(!vec4<bool>(global2[_wgslsmith_index_u32(1893u, 1u)], true, true, arg_0.x), !vec4<bool>(false, arg_0.x, true, arg_0.x), select(vec4<bool>(global2[_wgslsmith_index_u32(54860u, 1u)], global2[_wgslsmith_index_u32(arg_1.c, 1u)], true, true), vec4<bool>(global2[_wgslsmith_index_u32(0u, 1u)], false, false, global2[_wgslsmith_index_u32(51563u, 1u)]), vec4<bool>(arg_0.x, false, false, true))), select(!vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.d.x, 1u)], true, global2[_wgslsmith_index_u32(2120u, 1u)]), select(vec4<bool>(false, arg_0.x, global2[_wgslsmith_index_u32(var_3.x, 1u)], false), vec4<bool>(false, arg_0.x, false, global2[_wgslsmith_index_u32(33319u, 1u)]), vec4<bool>(false, false, false, false)), any(arg_0))), select(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 1u)], arg_0.x, arg_0.x, arg_0.x), !(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 1u)], false, global2[_wgslsmith_index_u32(u_input.d.x, 1u)], true)), select(vec4<bool>(true, arg_0.x, arg_0.x, global2[_wgslsmith_index_u32(var_3.x, 1u)]), !vec4<bool>(false, arg_0.x, global2[_wgslsmith_index_u32(u_input.d.x, 1u)], false), arg_0.x)), !select(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 1u)], arg_0.x, global2[_wgslsmith_index_u32(6762u, 1u)], false), vec4<bool>(true, arg_0.x, true, arg_0.x), global0.x != var_2.c.x)));
    return arg_0.x;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec2<bool>) -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + global0.x) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-359f - global1.x))))));
    let var_1 = _wgslsmith_sub_vec3_i32(abs(_wgslsmith_mod_vec3_i32(-vec3<i32>(-1i, arg_1, arg_0), vec3<i32>(arg_0, 2147483647i, arg_1) >> (u_input.d % vec3<u32>(32u))) ^ vec3<i32>(-2147483647i, abs(-192i), 2147483647i)), _wgslsmith_mod_vec3_i32(select(~vec3<i32>(-47013i, 1i, 12017i), -max(vec3<i32>(-31300i, arg_1, arg_1), vec3<i32>(u_input.a, 5185i, 27586i)), !(global1.x >= global1.x)), vec3<i32>(select(firstTrailingBit(-4965i), countOneBits(-1i), true), 18426i, _wgslsmith_mult_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(0i, 58428i))))));
    var var_2 = ~4294967295u;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-var_0.a)), var_0.a, func_3(!vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.d.x, 1u)]), Struct_3(vec4<u32>(0u, 40773u, 1u, 1u), arg_1, u_input.d.x), Struct_2(775f))))), -315f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1158f - var_0.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-796f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a)))) + _wgslsmith_f_op_f32(max(1788f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x - var_0.a)))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(921f, -789f), 569f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(abs(424f))) * _wgslsmith_f_op_vec3_f32(round(global0.wyz)));
    return vec3<bool>(any(select(vec3<bool>(any(arg_2), true, true), !(!vec3<bool>(true, arg_2.x, arg_2.x)), arg_2.x)), all(vec4<bool>(arg_2.x, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), vec2<u32>(351u, u_input.d.x))), 1u)], arg_2.x && arg_2.x, !any(vec2<bool>(false, true)))), func_3(select(select(!vec2<bool>(false, arg_2.x), vec2<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 1u)], true), select(arg_2, vec2<bool>(global2[_wgslsmith_index_u32(6740u, 1u)], true), arg_2)), !(!arg_2), true), Struct_3(max(vec4<u32>(u_input.d.x, 0u, u_input.d.x, 95865u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, 1u, 69998u, 1u), vec4<u32>(u_input.d.x, u_input.d.x, 47301u, 0u))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 0i, 2147483647i, -15160i), vec4<i32>(u_input.a, arg_1, var_1.x, -16390i)), u_input.d.x), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-904f - var_0.a)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, 686f, _wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(f32(-1f) * -685f)))))));
    var var_0 = select(func_2(firstLeadingBit(~(-1i)) >> (1u % 32u), arg_1.x, !vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 1u)] & global2[_wgslsmith_index_u32(u_input.d.x, 1u)], global2[_wgslsmith_index_u32(~u_input.d.x, 1u)])), !vec3<bool>(all(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 1u)], false, global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(42768u, 1u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(u_input.d.x, 1u)], false), true)), !(global2[_wgslsmith_index_u32(52194u, 1u)] == global2[_wgslsmith_index_u32(1u, 1u)]), true), select(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(abs(u_input.d.x), firstTrailingBit(6282u)), u_input.d.x << (23127u % 32u)), 1u)], global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(u_input.d.x | 4294967295u), _wgslsmith_sub_u32(u_input.d.x, u_input.d.x) >> (1u % 32u)), 1u)], global2[_wgslsmith_index_u32(u_input.d.x, 1u)]));
    let var_1 = 45364u == u_input.d.x;
    let var_2 = Struct_3(~(~vec4<u32>(~4294967295u, 7155u, _wgslsmith_sub_u32(u_input.d.x, u_input.d.x), _wgslsmith_dot_vec2_u32(vec2<u32>(28866u, u_input.d.x), u_input.d.yz))), ~min(9651i, max(_wgslsmith_div_i32(49160i, u_input.a), firstLeadingBit(-2147483647i))), u_input.d.x);
    var var_3 = 14696u;
    return Struct_2(_wgslsmith_f_op_f32(global1.x - -1415f));
}

fn func_4(arg_0: Struct_2) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -170f, global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-506f, 909f), -250f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1301f, -470f, _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_div_f32(790f, arg_0.a))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(global1.x * -489f), -1000f, _wgslsmith_f_op_f32(-global1.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1748f, global0.x, -946f, arg_0.a)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1147f, arg_0.a, -689f, 1881f) - vec4<f32>(global1.x, 1475f, -731f, -183f))))));
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -253f)));
    global1 = global0.wzx;
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * global1.x) * 2339f)));
    var var_2 = !select(select(!select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.d.x, 1u)], global2[_wgslsmith_index_u32(u_input.d.x, 1u)], true), vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(u_input.d.x, 1u)]), false), vec4<bool>(global2[_wgslsmith_index_u32(~u_input.d.x, 1u)], true, global2[_wgslsmith_index_u32(~u_input.d.x, 1u)], true), !global2[_wgslsmith_index_u32(~16131u, 1u)]), vec4<bool>(max(1u, u_input.d.x) >= u_input.d.x, !(!global2[_wgslsmith_index_u32(34996u, 1u)]), all(vec3<bool>(global2[_wgslsmith_index_u32(2253u, 1u)], true, global2[_wgslsmith_index_u32(u_input.d.x, 1u)])), any(vec3<bool>(true, false, global2[_wgslsmith_index_u32(42678u, 1u)]))), !select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 1u)], false, global2[_wgslsmith_index_u32(4294967295u, 1u)], false), select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 1u)], false, global2[_wgslsmith_index_u32(u_input.d.x, 1u)], false), vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(u_input.d.x, 1u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.d.x, 1u)], global2[_wgslsmith_index_u32(u_input.d.x, 1u)], global2[_wgslsmith_index_u32(u_input.d.x, 1u)])), all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 1u)], false))));
    return _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, arg_0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, arg_0.a) + global1.x))), -1314f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -267f, -828f, -564f) - vec4<f32>(516f, 189f, -741f, arg_0.a))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - var_0)), 646f, -468f, _wgslsmith_f_op_f32(sign(global1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_4(func_1(_wgslsmith_f_op_vec3_f32(exp2(global0.wxx)), ~vec4<i32>(u_input.c, 21250i, u_input.a, u_input.a))))))));
    var var_2 = Struct_3(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.d.xy, u_input.d.zy), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), u_input.d.xy)), ~u_input.d.x, ~firstLeadingBit(7828u), 1u), ~u_input.b, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_mult_vec3_u32(u_input.d, vec3<u32>(4214u, u_input.d.x, 33782u))), ~(~vec3<u32>(u_input.d.x, u_input.d.x, 1u))), 50315u));
    let var_3 = select(!vec3<bool>(!all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 1u)], global2[_wgslsmith_index_u32(29749u, 1u)])), false, any(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 1u)], global2[_wgslsmith_index_u32(19713u, 1u)], true))), vec3<bool>(!(!(var_2.b <= -1i)), any(select(!vec2<bool>(global2[_wgslsmith_index_u32(var_2.a.x, 1u)], false), vec2<bool>(global2[_wgslsmith_index_u32(var_2.c, 1u)], false), select(vec2<bool>(global2[_wgslsmith_index_u32(17172u, 1u)], false), vec2<bool>(false, global2[_wgslsmith_index_u32(var_2.c, 1u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(7360u, 1u)])))), global2[_wgslsmith_index_u32(var_2.a.x, 1u)]), true);
    var var_4 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_1(_wgslsmith_f_op_vec3_f32(exp2(var_1.yzy)), vec4<i32>(2147483647i, 2147483647i, 1i, var_2.b) | vec4<i32>(-1i, var_2.b, 20179i, u_input.c)))).xxx), ~vec4<i32>(~select(-4580i, -1i, true), 0i, -1i, -32319i));
    global2 = array<bool, 1>();
    let var_5 = Struct_3(vec4<u32>(~1u, ~countOneBits(u_input.d.x), 0u, 31241u) >> (~firstLeadingBit(~var_2.a) % vec4<u32>(32u)), min(~_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-8707i, -1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-12911i, u_input.b), vec2<i32>(-57352i, 0i), vec2<i32>(u_input.c, u_input.b))), var_2.b), 1u);
    global0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(-1569f, ~vec3<i32>(-max(1i, 2147483647i), 0i, -122260i), select(1u, ~_wgslsmith_add_u32(~var_5.a.x, _wgslsmith_add_u32(u_input.d.x, 15785u)), global2[_wgslsmith_index_u32(~(4294967295u << (select(var_2.a.x, var_5.c, var_3.x) % 32u)), 1u)]), -2147483647i);
}

