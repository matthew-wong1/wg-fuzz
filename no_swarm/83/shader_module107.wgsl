struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec2<u32>,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3>;

var<private> global1: vec3<i32> = vec3<i32>(-4977i, -1i, 1i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<u32> {
    var var_0 = select(vec3<bool>(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)], ~45490u) <= global0[_wgslsmith_index_u32(4294967295u, 3u)], any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), true)), true && any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), true))), vec3<bool>(true, all(vec2<bool>(true, true)), !(true || any(vec3<bool>(false, true, true)))), true);
    var var_1 = global1.x;
    var var_2 = ~u_input.a.x;
    var_2 = u_input.a.x;
    let var_3 = _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(select(vec4<i32>(-1i) * -u_input.a, abs(vec4<i32>(u_input.a.x, global1.x, u_input.a.x, 24036i)), select(select(vec4<bool>(false, false, true, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(false, var_0.x, var_0.x, false), true), 53924u == global0[_wgslsmith_index_u32(35146u, 3u)])), u_input.a), ~(~_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, global1.x, 0i, -1i)), vec4<i32>(global1.x, global1.x, u_input.a.x, 1i))));
    return abs(abs(min(vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0[_wgslsmith_index_u32(1u, 3u)]), vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)]))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(41351u, 3u)], 1u), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], 50993u)))));
}

fn func_2(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-727f, _wgslsmith_f_op_f32(f32(-1f) * -818f))) - _wgslsmith_f_op_f32(abs(-457f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -668f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(306f, -1340f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(958f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-979f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1108f + -427f))), -1746f) * _wgslsmith_div_f32(614f, _wgslsmith_f_op_f32(1f + 719f))), -208f);
    var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(316f, var_0.x, var_0.x, -1081f)))))))));
    global1 = min(select(~vec3<i32>(_wgslsmith_clamp_i32(1i, u_input.a.x, 2147483647i), u_input.a.x, ~global1.x), ~(~select(vec3<i32>(0i, global1.x, global1.x), vec3<i32>(global1.x, -1i, 1i), false)), true), u_input.a.zwy);
    var var_1 = Struct_3(~(~(~(~arg_0.a.x))), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x - -643f)))))));
    let var_2 = arg_0.a.x;
    return select(~vec2<i32>(0i, 2147483647i) >> (abs(_wgslsmith_add_vec2_u32(func_3(), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(var_1.a, 3u)]))) % vec2<u32>(32u)), global1.yz, all(!vec4<bool>(true, global1.x >= 20020i, true, true)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>) -> vec3<f32> {
    global0 = array<u32, 3>();
    var var_0 = arg_1;
    var var_1 = any(!vec4<bool>(!arg_1.x, arg_0.x, arg_0.x, arg_0.x));
    global0 = array<u32, 3>();
    let var_2 = vec2<i32>(-1i) * -firstLeadingBit(func_2(Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(62920u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]))) ^ (vec2<i32>(0i, 2147483647i) & vec2<i32>(u_input.a.x, 0i)));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-826f, -274f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(237f + 329f))), _wgslsmith_div_f32(495f, -862f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-303f, 1180f, 858f), vec3<f32>(-2206f, 1000f, -630f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(670f, -663f, -1457f) - vec3<f32>(340f, 527f, -1463f)), !arg_1)))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1275f, _wgslsmith_f_op_f32(-1725f + 1000f), _wgslsmith_f_op_f32(select(190f, -222f, var_0.x)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: Struct_5, arg_3: Struct_5) -> vec3<i32> {
    var var_0 = arg_3;
    var var_1 = arg_0.x;
    var var_2 = vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(742f * arg_0.x));
    var var_3 = ~_wgslsmith_mult_vec3_u32(select(vec3<u32>(_wgslsmith_clamp_u32(6216u, 26036u, arg_1.x), reverseBits(4294967295u), global0[_wgslsmith_index_u32(var_0.a.x, 3u)] << (4294967295u % 32u)), select(_wgslsmith_sub_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(arg_2.a.x, 3u)], 0u, var_0.a.x), vec3<u32>(arg_1.x, 23794u, 61236u)), ~vec3<u32>(1u, arg_1.x, arg_2.a.x), var_0.b), arg_3.c.x > _wgslsmith_mod_i32(var_0.c.x, -9830i)), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_3.a.x, arg_3.a.x, var_0.a.x, arg_3.a.x), vec4<u32>(arg_1.x, arg_3.a.x, arg_2.a.x, arg_1.x) ^ vec4<u32>(1u, 78251u, var_0.a.x, var_0.a.x)), arg_3.a.x, 36017u));
    let var_4 = Struct_1(~countOneBits(vec3<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], arg_2.a.x), 1u, var_3.x)));
    return vec3<i32>(1i, -var_0.c.x, 22974i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 762f;
    var var_1 = -290f;
    global1 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec2<bool>(true, true), vec3<bool>(false, false, false)))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(-759f + -956f), -546f, _wgslsmith_f_op_f32(-1360f - 607f))))), ~(countOneBits(~vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)], 3u)], 3u)])) & func_3()), Struct_5(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 3u)]), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8014u, 3u)], 3u)], 3u)], 3u)]), vec2<u32>(53645u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)], 3u)]))), true | any(vec4<bool>(false, true, true, true)), vec2<i32>(firstTrailingBit(~63946i), reverseBits(-global1.x))), Struct_5(vec2<u32>((global0[_wgslsmith_index_u32(0u, 3u)] << (2303u % 32u)) & reverseBits(59178u), abs(10189u)), any(vec3<bool>(true, true, true)), (global1.yz >> (vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34416u, 3u)], 3u)], 3u)], 3u)], 3u)], 0u) % vec2<u32>(32u))) & _wgslsmith_div_vec2_i32(vec2<i32>(global1.x, u_input.a.x), global1.yz)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-480f)))))));
    var var_3 = _wgslsmith_f_op_f32(-1f);
    let x = u_input.a;
    s_output = StorageBuffer(~(min(firstLeadingBit(global1.x), -1406i) >> (global0[_wgslsmith_index_u32(1u, 3u)] % 32u)), vec4<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(0u >> (min(114801u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)]) % 32u), 3u)], global0[_wgslsmith_index_u32(~(4294967295u & global0[_wgslsmith_index_u32(1u, 3u)]), 3u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(countOneBits(~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(31655u, 3u)], 3u)]), 3u)], 3u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30880u, 3u)], 3u)], 0u), 3u)], 3u)] << (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54071u, 3u)], 3u)], 3u)], 3u)] % 32u), 3u)], ~min(35056u, global0[_wgslsmith_index_u32(406u, 3u)] >> (4294967295u % 32u))), vec3<i32>(max(-14897i, global1.x), -global1.x, countOneBits(global1.x & 1i)), ~(u_input.a.x | _wgslsmith_dot_vec4_i32(vec4<i32>(-30830i, u_input.a.x, 1i, global1.x), u_input.a)) & -1i, _wgslsmith_f_op_f32(-var_2));
}

