struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec2<u32> {
    global0 = array<u32, 26>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(1020f - 501f)))), any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))), -u_input.a.zz), vec2<bool>(true, !all(vec4<bool>(true, true, true, true))), 0u);
    global0 = array<u32, 26>();
    var var_1 = !(~max(arg_1 >> (var_0.c % 32u), _wgslsmith_sub_u32(0u, global0[_wgslsmith_index_u32(var_0.c, 26u)])) <= 4294967295u);
    global0 = array<u32, 26>();
    return vec2<u32>(~4294967295u, 4294967295u);
}

fn func_4(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_4) -> vec4<bool> {
    var var_0 = arg_0.b.b;
    return select(vec4<bool>(!(!any(vec3<bool>(arg_0.a.b, arg_3.b.a.b, var_0.x))), true, all(vec3<bool>(true, all(vec3<bool>(false, true, arg_3.b.b.x)), true)), false), !vec4<bool>(false, true, arg_3.b.b.x, !any(vec4<bool>(var_0.x, arg_3.b.a.b, true, true))), arg_0.a.b);
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_4(-u_input.a.x, Struct_2(Struct_1(-802f, any(vec4<bool>(false, true, false, true)), _wgslsmith_mult_vec2_i32(u_input.a.zz, u_input.a.zz) | _wgslsmith_sub_vec2_i32(u_input.a.zx, vec2<i32>(u_input.a.x, 11863i))), !select(vec2<bool>(true, true), vec2<bool>(false, true), u_input.a.x != u_input.a.x), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~0u, 26u)], 26u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1976f, 553f)) - -1186f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1275f)) * 1270f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -925f)))));
    let var_1 = func_4(Struct_5(var_0.b.a, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1866f)), _wgslsmith_mod_vec2_u32(func_3(-2157f, global0[_wgslsmith_index_u32(4294967295u, 26u)]), vec2<u32>(50115u, 1u) ^ vec2<u32>(var_0.b.c, var_0.b.c)) ^ vec2<u32>(~4294967295u, global0[_wgslsmith_index_u32(4294967295u, 26u)] ^ 4294967295u), firstLeadingBit(max(vec4<i32>(30483i, var_0.a, 90509i, 0i), vec4<i32>(var_0.a, 2147483647i, var_0.a, var_0.b.a.c.x))) >> (abs(~vec4<u32>(var_0.b.c, 63303u, 34103u, var_0.b.c)) % vec4<u32>(32u))), countOneBits(~min(countOneBits(vec2<u32>(18669u, global0[_wgslsmith_index_u32(24206u, 26u)])), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 26u)], global0[_wgslsmith_index_u32(27320u, 26u)]))), _wgslsmith_f_op_f32(-var_0.b.a.a), Struct_4(u_input.a.x, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.c, var_0.c)), _wgslsmith_f_op_f32(var_0.c * var_0.c), 0u < global0[_wgslsmith_index_u32(6492u, 26u)])))));
    var_0 = Struct_4(~(-20091i), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, var_0.c)), true, u_input.a.xy), vec2<bool>(any(var_0.b.b), var_1.x), 14719u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-267f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c, var_0.b.a.a, false)))), 2181f));
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    return Struct_4(_wgslsmith_dot_vec2_i32(min(vec2<i32>(-var_0.a, ~(-18862i)), vec2<i32>(7248i, 12349i) ^ ~vec2<i32>(var_0.b.a.c.x, -46298i)), vec2<i32>(min(firstLeadingBit(-2147483647i), -73324i), var_0.b.a.c.x)), var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.a.a + _wgslsmith_f_op_f32(556f + _wgslsmith_div_f32(var_0.b.a.a, var_0.b.a.a))), _wgslsmith_f_op_f32(select(-1618f, var_0.b.a.a, !(!var_0.b.b.x)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<i32>) -> Struct_3 {
    global1 = ~(~(1u << (~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 26u)], 26u)], 1u) % 32u)));
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)) - _wgslsmith_f_op_vec3_f32(abs(arg_0))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2043f, _wgslsmith_f_op_f32(round(345f)), _wgslsmith_f_op_f32(trunc(var_0.c))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c, var_0.b.a.a, var_0.c), arg_0, false)))), select(vec3<bool>(var_0.b.a.b, false, var_0.b.b.x), vec3<bool>(var_0.b.b.x, false, var_0.b.b.x), !vec3<bool>(var_0.b.b.x, false, true)))), !vec3<bool>(var_0.b.b.x | var_0.b.a.b, all(var_0.b.b), any(vec4<bool>(true, var_0.b.a.b, var_0.b.b.x, false))))));
    global0 = array<u32, 26>();
    global1 = ~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(38611u, 1u), 26u)];
    return Struct_3(vec2<u32>(func_3(-338f, var_0.b.c).x, ~var_0.b.c), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - -904f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.c * var_0.c))) > arg_0.x, _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.xy << (vec2<u32>(4294967295u, var_0.b.c) % vec2<u32>(32u)), -vec2<i32>(57017i, 0i)), u_input.a.yy)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1325f), false, u_input.a.yz), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~var_0.b.c, 43535u, 28234u), 26u)], ~(vec4<u32>(~4294967295u, var_0.b.c, ~var_0.b.c, select(27278u, 33881u, var_0.b.a.b)) >> (reverseBits(min(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14170u, 26u)], 26u)], 0u, var_0.b.c), vec4<u32>(global0[_wgslsmith_index_u32(0u, 26u)], 4294967295u, 1u, 1u))) % vec4<u32>(32u))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_5, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.b.a.a)) - _wgslsmith_f_op_f32(-arg_1.a.a)), -282f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -646f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1.b.a.a)), _wgslsmith_f_op_f32(arg_0.b.a - 663f)))));
    global1 = countOneBits(min(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(8631u, 26u)], 9611u, 0u), vec3<u32>(arg_0.e.x, arg_0.d, global0[_wgslsmith_index_u32(4294967295u, 26u)])), 26u)], ~43991u) << (~max(arg_0.e.x, global0[_wgslsmith_index_u32(0u, 26u)]) % 32u), ~8548u));
    let var_1 = ~(func_3(-1289f, _wgslsmith_mult_u32(_wgslsmith_mod_u32(59716u, arg_0.a.x), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(arg_0.a.x, 26u)], 77534u, 4294967295u))) >> (arg_1.d % vec2<u32>(32u)));
    let var_2 = 1000f;
    let var_3 = !(0i == (i32(-1i) * -firstLeadingBit(u_input.a.x)));
    return Struct_1(399f, true, firstLeadingBit(u_input.a.xz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_clamp_u32(21091u, global0[_wgslsmith_index_u32(10362u, 26u)], 0u) ^ global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 26u)], 26u)], 26u)], 26u)], _wgslsmith_dot_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(36087u, 26u)], 11135u), ~vec2<u32>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(53397u, 26u)]))), ~(~(vec3<u32>(global0[_wgslsmith_index_u32(1u, 26u)], 52337u, 50835u) | vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)], 26u)], 26u)], 26u)], 26u)], 26u)], 26u)], 61823u)))), global0[_wgslsmith_index_u32(abs(~10147u << (global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(0u, 26u)]), 26u)] % 32u)), 26u)]);
    let var_1 = select(u_input.a.x << (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(var_0.x, global0[_wgslsmith_index_u32(0u, 26u)], var_0.x), vec3<u32>(var_0.x, var_0.x, 4294967295u) ^ vec3<u32>(global0[_wgslsmith_index_u32(7654u, 26u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 26u)], var_0.x)), vec3<u32>(~1u, abs(0u), ~var_0.x)) % 32u), min(u_input.a.x, u_input.a.x), false);
    global1 = 4617u;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1968f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-632f - -466f)), 229f))), 1916f));
    var var_3 = func_5(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-748f, 1000f, -105f), vec3<f32>(2153f, -573f, -889f), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -271f, -2371f) - vec3<f32>(107f, 1000f, -186f)), true))), -(vec3<i32>(var_1, 1i, var_1) ^ _wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(var_1, -15064i, -2147483647i), vec3<i32>(0i, -1i, var_1)))), Struct_5(func_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-284f, 1986f, 1148f)))), min(u_input.a << (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 26u)], 20757u, global0[_wgslsmith_index_u32(0u, 26u)]) % vec3<u32>(32u)), u_input.a)).b, Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1373f), true, -u_input.a.xx), func_4(Struct_5(Struct_1(761f, true, vec2<i32>(1i, u_input.a.x)), Struct_2(Struct_1(441f, true, u_input.a.yy), vec2<bool>(false, false), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3556u, 26u)], 26u)]), 1415f, vec2<u32>(25475u, 1u), vec4<i32>(var_1, -2147483647i, -2147483647i, u_input.a.x)), vec2<u32>(var_0.x, 1u), -828f, Struct_4(-2792i, Struct_2(Struct_1(165f, true, vec2<i32>(-1i, 0i)), vec2<bool>(false, false), 66819u), 616f)).wz, 1u), 2028f, ~_wgslsmith_mod_vec2_u32(~vec2<u32>(37975u, 13870u), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 26u)], 26u)])), firstTrailingBit(firstLeadingBit(vec4<i32>(-37107i, 0i, u_input.a.x, u_input.a.x))) | (min(vec4<i32>(u_input.a.x, -1i, u_input.a.x, -1i), vec4<i32>(var_1, -1i, -1i, -1i)) | _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, var_1, var_1, 1i), vec4<i32>(-9341i, u_input.a.x, var_1, 22426i)))), func_4(Struct_5(func_2().b.a, Struct_2(func_1(vec3<f32>(-391f, 379f, 516f), u_input.a).c, func_2().b.b, _wgslsmith_mod_u32(var_0.x, global0[_wgslsmith_index_u32(var_0.x, 26u)])), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2057f, 168f, -435f)), u_input.a).b.a, ~abs(vec2<u32>(var_0.x, 81340u)), max(max(vec4<i32>(var_1, 3213i, 1055i, -21099i), vec4<i32>(var_1, var_1, var_1, var_1)), -vec4<i32>(u_input.a.x, 22892i, var_1, var_1))), vec2<u32>(func_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(999f, -149f, -546f), vec3<f32>(-215f, -648f, -107f))), vec3<i32>(38615i, 38795i, u_input.a.x)).d, select(firstTrailingBit(1u), 30610u << (global0[_wgslsmith_index_u32(0u, 26u)] % 32u), all(vec3<bool>(false, true, true)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-func_1(vec3<f32>(-1000f, -1000f, 2674f), vec3<i32>(u_input.a.x, 31374i, -45735i)).c.a), -1033f)), func_2()).zzx);
    let var_4 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~0u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(30838u, 1u, var_0.x, global0[_wgslsmith_index_u32(var_0.x, 26u)]), vec4<u32>(4294967295u, 27129u, var_0.x, global0[_wgslsmith_index_u32(34724u, 26u)]), vec4<u32>(var_0.x, 4294967295u, global0[_wgslsmith_index_u32(51263u, 26u)], var_0.x)), ~vec4<u32>(var_0.x, 1u, 25643u, global0[_wgslsmith_index_u32(var_0.x, 26u)])), ~(~var_0.x)) >> (30158u % 32u), 26u)] <= ~abs(~global0[_wgslsmith_index_u32(1u, 26u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1727f - -240f)), _wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(ceil(var_3.a))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -306f), -620f)), func_5(func_1(vec3<f32>(var_3.a, var_3.a, 1198f), u_input.a), Struct_5(func_1(vec3<f32>(var_3.a, var_3.a, 433f), u_input.a).c, func_2().b, _wgslsmith_f_op_f32(-552f - -473f), ~vec2<u32>(global0[_wgslsmith_index_u32(var_0.x, 26u)], 0u), _wgslsmith_div_vec4_i32(vec4<i32>(-18535i, -9424i, var_3.c.x, -2147483647i), vec4<i32>(var_3.c.x, -1i, var_1, -13089i))), vec3<bool>(!var_4, var_1 != var_1, true)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<f32>(-1325f, var_3.a, 1341f), u_input.a).b.a * _wgslsmith_f_op_f32(abs(var_3.a))) - var_3.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + var_3.a))), var_3.a))));
}

