struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12>;

var<private> global1: array<u32, 3> = array<u32, 3>(4294967295u, 1u, 1u);

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, false, true, true), vec2<i32>(36173i, -27454i), vec4<i32>(-2629i, 27243i, 2147483647i, 0i), false, vec3<i32>(0i, 1777i, -21181i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_sub_u32(~(global1[_wgslsmith_index_u32(56592u, 3u)] ^ global1[_wgslsmith_index_u32(~(u_input.a >> (global1[_wgslsmith_index_u32(u_input.a, 3u)] % 32u)), 3u)]), firstTrailingBit(1990u));
    let var_1 = arg_0;
    let var_2 = arg_0;
    global2 = var_2;
    var var_3 = Struct_1(!(!(!var_1.a)), arg_0.e.yy, vec4<i32>(arg_0.c.x, 2147483647i, firstLeadingBit(-2147483647i >> (global1[_wgslsmith_index_u32(1u, 3u)] % 32u)) >> (global1[_wgslsmith_index_u32(0u, 3u)] % 32u), _wgslsmith_clamp_i32(var_1.e.x, 42213i, _wgslsmith_dot_vec2_i32(var_1.e.zy, abs(vec2<i32>(arg_0.c.x, var_1.b.x))))), true, var_2.e);
    return _wgslsmith_mod_u32(abs(17246u), _wgslsmith_mod_u32(min(min(~1u, ~4294967295u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 3u)], 3u)], 3u)], 3u)], 15934u, 1u), vec3<u32>(3545u, u_input.a, 0u))), ~(~(~4294967295u))));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: vec2<u32>) -> u32 {
    global0 = array<vec4<i32>, 12>();
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(~func_3(Struct_1(vec4<bool>(global2.d, arg_0, arg_0, true), global2.b, global2.c, false, global2.e)), 1u, ~(_wgslsmith_sub_u32(5158u, global1[_wgslsmith_index_u32(1u, 3u)]) ^ abs(34438u))), vec3<u32>(~_wgslsmith_div_u32(abs(u_input.a), global1[_wgslsmith_index_u32(arg_3.x, 3u)]), ~_wgslsmith_mult_u32(reverseBits(u_input.a), 36248u), _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(~1u, 3u)], ~(~u_input.a), ~min(u_input.a, 0u))));
    var var_1 = Struct_1(select(select(!(!global2.a), vec4<bool>(true, arg_0, !arg_0, true), !global2.a), !global2.a, vec4<bool>(arg_0, false, true, true)), vec2<i32>(-1i, max(reverseBits(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(var_0.x, 12u)], vec4<i32>(arg_1, global2.e.x, -2147483647i, 31213i))), _wgslsmith_sub_i32(arg_2, arg_1))), abs(abs(-(vec4<i32>(arg_2, arg_2, -62194i, 4073i) ^ global2.c))), false, vec3<i32>(arg_2, 4761i, 1i) << (~var_0 % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-398f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-183f * _wgslsmith_f_op_f32(f32(-1f) * -1176f))))));
    global0 = array<vec4<i32>, 12>();
    return 10687u;
}

fn func_4(arg_0: u32, arg_1: vec4<f32>) -> f32 {
    var var_0 = 1i;
    let var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(global2.e, global2.c.wyz), global2.e);
    var_0 = var_1.x;
    let var_2 = !select(!global2.a, select(vec4<bool>(false, any(global2.a), select(global2.a.x, global2.a.x, global2.d), u_input.a != 0u), select(global2.a, select(global2.a, global2.a, vec4<bool>(global2.a.x, global2.a.x, false, false)), global2.d || global2.d), vec4<bool>(global2.d & false, global2.d, all(vec4<bool>(global2.a.x, true, true, global2.d)), global2.a.x)), vec4<bool>(true, !global2.d, any(!vec2<bool>(global2.a.x, true)), true));
    global2 = Struct_1(vec4<bool>(true, false, false, true), var_1.zx, vec4<i32>(~(-_wgslsmith_mult_i32(global2.c.x, global2.b.x)), -abs(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.b.x, -1i, 25358i, -22367i), vec4<i32>(7571i, global2.e.x, -2924i, global2.e.x))), reverseBits(~1i), -1i), false, var_1);
    return 1305f;
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> f32 {
    return _wgslsmith_f_op_f32(func_4(func_2(global2.a.x, -14667i, -2147483647i, max(vec2<u32>(_wgslsmith_div_u32(31165u, u_input.a), u_input.a), vec2<u32>(~1u, 4294967295u))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -410f) * -1000f), _wgslsmith_f_op_f32(trunc(539f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(714f)), _wgslsmith_f_op_f32(147f * 193f)), -1222f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1646f, -1392f, 907f, 1165f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1165f, 139f, -411f, 1083f)))), select(!global2.a, global2.a, all(arg_0.zz))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    let var_1 = _wgslsmith_f_op_f32(func_1(global2.a, 12752u));
    var var_2 = Struct_1(vec4<bool>(global2.a.x, false, all(global2.a), global2.d), vec2<i32>(max(_wgslsmith_dot_vec2_i32(global2.e.xy, ~global2.e.xx), firstTrailingBit(1i)), -4817i), _wgslsmith_mod_vec4_i32(global2.c, vec4<i32>(~0i, var_0, select(global2.e.x, var_0, global2.d), 1i) | vec4<i32>(0i, 1i, global2.e.x | global2.b.x, -9278i & global2.c.x)), select(global2.d, !(!global2.a.x), true), vec3<i32>(var_0, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(global2.c, global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 3u)], 12u)]), _wgslsmith_mod_i32(2147483647i, -var_0)), _wgslsmith_div_i32(min(global2.e.x, var_0), 28597i)));
    global2 = Struct_1(select(select(select(select(global2.a, vec4<bool>(false, false, false, var_2.d), global2.a), global2.a, false), var_2.a, global2.d), global2.a, true), -(vec2<i32>(-1i) * -vec2<i32>(-50470i, -11444i)), var_2.c, !(!all(global2.a)), global2.e);
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

