struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

var<private> global1: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(0u, 0u, 17204u, 46597u), vec4<u32>(1u, 35838u, 33273u, 0u), vec4<u32>(1u, 34607u, 1u, 38426u), vec4<u32>(23240u, 3855u, 1u, 87141u), vec4<u32>(41345u, 22945u, 16099u, 4294967295u), vec4<u32>(35615u, 0u, 4294967295u, 36053u), vec4<u32>(1423u, 1u, 0u, 0u), vec4<u32>(10279u, 12487u, 15313u, 0u), vec4<u32>(1u, 12651u, 24930u, 1u), vec4<u32>(1u, 83438u, 1962u, 16272u), vec4<u32>(0u, 1u, 12655u, 1u), vec4<u32>(56510u, 1u, 92187u, 86708u), vec4<u32>(4294967295u, 4294967295u, 45332u, 41822u), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec4<u32>(4294967295u, 20650u, 4294967295u, 8501u), vec4<u32>(1u, 4294967295u, 19945u, 0u), vec4<u32>(4294967295u, 386u, 1u, 70537u), vec4<u32>(31680u, 19u, 81408u, 16084u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec4<u32>(1u, 1u, 67413u, 21662u), vec4<u32>(1u, 0u, 0u, 1u), vec4<u32>(87962u, 37091u, 4294967295u, 14637u), vec4<u32>(0u, 97118u, 79188u, 1227u), vec4<u32>(10078u, 8039u, 33190u, 1u), vec4<u32>(1752u, 1u, 10140u, 4294967295u), vec4<u32>(1535u, 4294967295u, 1u, 22527u), vec4<u32>(4697u, 0u, 55318u, 0u), vec4<u32>(3341u, 4294967295u, 4294967295u, 0u), vec4<u32>(0u, 27427u, 0u, 1u));

var<private> global2: array<Struct_1, 24>;

var<private> global3: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global4: Struct_1;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(global4.a + _wgslsmith_f_op_f32(global4.a + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1736f, -1000f))))), firstLeadingBit(4294967295u), !vec3<bool>(true, global4.c.x, !(global4.c.x || global4.c.x)), i32(-1i) * -24092i);
    var var_1 = global3.yx;
    global0 = array<u32, 23>();
    global2 = array<Struct_1, 24>();
    var var_2 = 4294967295u;
    return min(36360u, 0u);
}

fn func_2(arg_0: vec2<f32>) -> vec4<bool> {
    global3 = vec4<bool>(~(-37598i) <= (_wgslsmith_mod_i32(1i, -u_input.d) << (0u % 32u)), true, true, ~(~countOneBits(0u)) <= func_3(3197i, _wgslsmith_clamp_vec4_i32(vec4<i32>(global4.d, 19220i, global4.d, 0i) ^ u_input.c, abs(u_input.c), _wgslsmith_sub_vec4_i32(vec4<i32>(-31978i, u_input.c.x, global4.d, 2147483647i), vec4<i32>(u_input.c.x, 1i, -16441i, u_input.d)))));
    global2 = array<Struct_1, 24>();
    var var_0 = ~_wgslsmith_add_u32(global4.b, _wgslsmith_mod_u32(_wgslsmith_sub_u32(global4.b, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 10148u), 23u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global4.b, 23u)], 23u)]));
    let var_1 = Struct_1(global4.a, 22027u, vec3<bool>(arg_0.x <= _wgslsmith_f_op_f32(ceil(2267f)), true, !(!global4.c.x) != global3.x), reverseBits(1i));
    let var_2 = var_1;
    return select(select(select(!vec4<bool>(false, var_2.c.x, true, var_1.c.x), !vec4<bool>(false, global4.c.x, true, global4.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16165u, 23u)], 23u)], 0u, 1u), vec3<u32>(1u, 1u, 70028u)) != global0[_wgslsmith_index_u32(firstLeadingBit(91324u), 23u)]), select(vec4<bool>(true, true, global4.c.x, true), !vec4<bool>(global3.x, var_1.c.x, var_1.c.x, global4.c.x), vec4<bool>(var_1.c.x, false, any(vec4<bool>(true, false, var_2.c.x, false)), global4.c.x & var_2.c.x)), !(~42004u >= ~global4.b)), select(!(!(!vec4<bool>(true, global4.c.x, global3.x, true))), !vec4<bool>(any(vec2<bool>(false, global3.x)), global4.c.x, true, any(vec3<bool>(var_2.c.x, global4.c.x, var_2.c.x))), vec4<bool>(true, global4.d >= global4.d, global3.x, !(global3.x || false))), !(!(!vec4<bool>(var_2.c.x, global4.c.x, global3.x, global3.x))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>) -> vec3<i32> {
    var var_0 = Struct_1(arg_1.x, global0[_wgslsmith_index_u32(1u, 23u)], !(!(!(!global4.c))), -global4.d >> (~22553u % 32u));
    let var_1 = countOneBits(_wgslsmith_div_u32(0u, ~_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(25042u, 29u)]) >> (global0[_wgslsmith_index_u32(var_0.b, 23u)] % 32u)));
    let var_2 = var_0.c.x || global3.x;
    global3 = select(select(vec4<bool>(global3.x, (-1693f >= global4.a) || true, global3.x, !var_2), vec4<bool>(true, false, all(select(var_0.c, var_0.c, global4.c)), any(var_0.c) || !global3.x), func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1), arg_1, global3.x)))), vec4<bool>(true, var_0.c.x || (any(global4.c) & true), true, !(_wgslsmith_mod_i32(-2147483647i, -16925i) <= _wgslsmith_clamp_i32(3952i, 25900i, -43003i))), vec4<bool>(all(vec4<bool>(all(vec4<bool>(true, true, true, var_2)), true, !var_0.c.x, any(global3.xyw))), select(any(vec4<bool>(var_0.c.x, true, true, true)), true, all(vec3<bool>(var_0.c.x, false, var_2))), !select(true, !global3.x, any(vec3<bool>(var_2, var_0.c.x, var_0.c.x))), !(!global3.x)));
    global4 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1, 19744u), _wgslsmith_add_vec2_u32(vec2<u32>(~global4.b, 76202u), abs(vec2<u32>(50200u & global0[_wgslsmith_index_u32(0u, 23u)], countOneBits(u_input.b))))), 23u)], 24u)];
    return _wgslsmith_add_vec3_i32(vec3<i32>(i32(-1i) * -arg_0.x, u_input.a, 1i) >> (~abs(max(vec3<u32>(3115u, 4294967295u, var_1), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], u_input.b, var_0.b))) % vec3<u32>(32u)), abs(vec3<i32>(-18819i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-13393i, -21686i, -2147483647i), u_input.c.zzy), arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-1i) * -func_1(u_input.e, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1196f, -359f))))));
    var var_1 = vec3<i32>(u_input.a << (_wgslsmith_add_u32(u_input.b, global4.b) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 2436i), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(0i, u_input.e.x, global4.d), ~0i), i32(-1i) * -1i)), -9762i);
    var var_2 = Struct_1(1118f, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(38804u, 1u) << (vec2<u32>(global4.b, 55114u) % vec2<u32>(32u))), abs(~(vec2<u32>(global4.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)]) & vec2<u32>(0u, 4294967295u)))), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global4.a, -1000f), vec2<f32>(global4.a, global4.a))))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(654f, global4.a)))))).yxz, abs(-u_input.d));
    var var_3 = _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 23u)], 28411u, global4.b), vec3<u32>(u_input.b, 87834u, 0u)), select(vec3<u32>(4294967295u, ~var_2.b, 0u), vec3<u32>(var_2.b, global0[_wgslsmith_index_u32(func_3(24887i, u_input.c), 23u)], global0[_wgslsmith_index_u32(var_2.b, 23u)] >> (global4.b % 32u)), false), min(~vec3<u32>(var_2.b, 85000u, global4.b), ~vec3<u32>(global4.b, 4294967295u, global0[_wgslsmith_index_u32(1u, 23u)])) << ((_wgslsmith_add_vec3_u32(vec3<u32>(var_2.b, 32734u, u_input.b), vec3<u32>(26642u, global4.b, 0u)) & (vec3<u32>(4294967295u, global4.b, 4294967295u) & vec3<u32>(4294967295u, 1u, global4.b))) % vec3<u32>(32u))), ~(~_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(18275u, 0u, u_input.b)), ~vec3<u32>(global4.b, 0u, var_2.b), vec3<u32>(4294967295u, 107863u, 63186u))));
    var_1 = vec3<i32>(_wgslsmith_dot_vec4_i32(countOneBits(u_input.c), min(-vec4<i32>(global4.d, global4.d, 2147483647i, var_2.d), -vec4<i32>(20923i, -2132i, var_2.d, var_1.x))) | -func_1(~u_input.e, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global4.a, var_2.a), vec2<f32>(1467f, 315f)))).x, -29502i, ~(-26617i >> (_wgslsmith_mod_u32(_wgslsmith_div_u32(0u, 1u), u_input.b) % 32u)));
    var var_4 = var_2.b;
    let var_5 = reverseBits(~(~abs(min(vec3<u32>(var_3.x, var_2.b, 4u), vec3<u32>(4294967295u, u_input.b, 4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~vec3<u32>(u_input.b, 67075u, 0u)))));
}

