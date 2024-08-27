struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: Struct_3,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<bool, 1> = array<bool, 1>(true);

var<private> global2: array<u32, 31>;

var<private> global3: vec3<u32> = vec3<u32>(41070u, 4294967295u, 75323u);

var<private> global4: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: i32) -> f32 {
    global1 = array<bool, 1>();
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(30103u, ~global3.x), global3.yy);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1978f, -687f)) * -660f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1517f) + -365f), any(select(global4[_wgslsmith_index_u32(92258u, 4u)], vec2<bool>(true, false), false)))))));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32) -> vec3<bool> {
    var var_0 = !(arg_0.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -821f))));
    let var_1 = _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-679f + 663f) + arg_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    let var_2 = vec3<u32>(global2[_wgslsmith_index_u32(1u, 31u)], ~(~(global3.x << (~global2[_wgslsmith_index_u32(31296u, 31u)] % 32u))), ~1u);
    global0 = u_input.a.xx;
    var_0 = true;
    return !vec3<bool>(any(vec2<bool>(false, false | global1[_wgslsmith_index_u32(global3.x, 1u)])), false, all(select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(global3.x, 1u)], true), !vec4<bool>(global1[_wgslsmith_index_u32(28165u, 1u)], global1[_wgslsmith_index_u32(40733u, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)], true), !global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(60446u, 31u)], 1u)])));
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_2 {
    global2 = array<u32, 31>();
    var var_0 = u_input.a.yx;
    var_0 = vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(select(vec2<i32>(arg_0, var_0.x), vec2<i32>(arg_0, 1i), all(global4[_wgslsmith_index_u32(arg_1, 4u)])), u_input.a.yz);
    return Struct_2(Struct_1(-1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-228f))))), arg_1, func_3(vec3<f32>(_wgslsmith_f_op_f32(func_2(var_0.x)), -153f, 1f), _wgslsmith_mult_i32(-arg_0, ~arg_0))), Struct_1(1i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(func_2(global0.x)))), _wgslsmith_mult_u32(_wgslsmith_div_u32(arg_1 & 55047u, 1u), ~(~4294967295u)), vec3<bool>(all(!vec4<bool>(global1[_wgslsmith_index_u32(7010u, 1u)], false, global1[_wgslsmith_index_u32(25977u, 1u)], false)), func_3(vec3<f32>(-163f, -2269f, -594f), global0.x).x || (true == global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.x, 31u)], 1u)]), !any(vec3<bool>(false, false, true)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-110f - -557f) - _wgslsmith_f_op_f32(-1000f - -580f)))))), ~firstLeadingBit(u_input.a));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = func_1(arg_1.x, firstLeadingBit(4294967295u));
    global1 = array<bool, 1>();
    let var_1 = arg_0.b.d;
    let var_2 = Struct_3(Struct_1(var_0.b.a, arg_0.a.b, var_0.b.c ^ select(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(7273u, 0u, 1u), vec3<u32>(2263u, 31802u, 19344u)), false), func_1(global0.x, ~1872u).b.d));
    var var_3 = var_0.b.d.x;
    return func_1(global0.x, _wgslsmith_add_u32(func_1(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, -24321i), arg_0.d.yy), -vec2<i32>(global0.x, arg_0.b.a)), var_0.a.c).b.c, var_2.a.c));
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> f32 {
    let var_0 = arg_0;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(-299f)), _wgslsmith_div_f32(func_1(_wgslsmith_add_i32(-22509i, arg_1.a.a), 41966u).b.b, arg_1.a.b));
    var var_2 = vec2<u32>(1u, _wgslsmith_add_u32(select(~(~3088u), ~global3.x, true), global2[_wgslsmith_index_u32(arg_1.a.c, 31u)]));
    global0 = vec2<i32>(_wgslsmith_div_i32(max(_wgslsmith_mult_i32(global0.x << (4294967295u % 32u), _wgslsmith_mult_i32(0i, global0.x)), arg_1.d.x), -u_input.a.x), 0i);
    let var_3 = _wgslsmith_f_op_f32(abs(func_4(func_1(~54495i, 0u), _wgslsmith_mod_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, global0.x, global0.x, arg_1.a.a), vec4<i32>(2147483647i, -9278i, -2147483647i, u_input.a.x)), vec4<i32>(-34848i, global0.x, 67671i, -2147483647i) >> (firstTrailingBit(vec4<u32>(global3.x, 35071u, 42750u, arg_1.a.c)) % vec4<u32>(32u)))).c));
    return -399f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(-51736i);
    var var_1 = vec4<f32>(-607f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -137f)))), _wgslsmith_f_op_f32(func_5(-593f, func_4(func_1(55324i, 0u), firstTrailingBit(abs(vec4<i32>(u_input.a.x, global0.x, global0.x, -24355i)))))), -1000f);
    global1 = array<bool, 1>();
    let var_2 = _wgslsmith_div_u32(max(firstLeadingBit(6838u) ^ _wgslsmith_div_u32(global3.x, ~2638u), global2[_wgslsmith_index_u32(countOneBits(~global2[_wgslsmith_index_u32(28786u, 31u)] ^ select(1u, global2[_wgslsmith_index_u32(64103u, 31u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 31u)], 31u)], 1u)])), 31u)]), 43234u);
    let var_3 = -405f;
    global0 = func_4(func_1(17712i, _wgslsmith_add_u32(1u, ~_wgslsmith_sub_u32(global3.x, 1u))), _wgslsmith_div_vec4_i32(select((vec4<i32>(2147483647i, 35592i, global0.x, var_0) ^ vec4<i32>(0i, -1i, u_input.a.x, u_input.a.x)) << (vec4<u32>(1u, 25454u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2, 31u)], 31u)], var_2) % vec4<u32>(32u)), min(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0, global0.x, 2147483647i, -52028i), vec4<i32>(var_0, u_input.a.x, 2147483647i, global0.x)), vec4<i32>(0i, var_0, 2147483647i, 26172i) | vec4<i32>(global0.x, 0i, -1i, 0i)), vec4<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(61033u, 31u)] ^ global2[_wgslsmith_index_u32(var_2, 31u)], 31u)], 31u)], 1u)], any(global4[_wgslsmith_index_u32(0u, 4u)]), global1[_wgslsmith_index_u32(1u, 1u)] & false, true)), select(_wgslsmith_mod_vec4_i32(vec4<i32>(-13780i, 0i, -1i, var_0), vec4<i32>(14481i, u_input.a.x, u_input.a.x, global0.x)), ~vec4<i32>(-17200i, var_0, u_input.a.x, 1279i), !vec4<bool>(false, false, global1[_wgslsmith_index_u32(global3.x, 1u)], false)) >> (~min(vec4<u32>(11001u, global2[_wgslsmith_index_u32(0u, 31u)], 10622u, 0u), vec4<u32>(4294967295u, 92498u, 1u, 1u)) % vec4<u32>(32u)))).d.xz;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(global3.x, 30999u, 17143u, 0u), vec4<u32>(1u, 1u, 4294967295u, 4294967295u))));
}

