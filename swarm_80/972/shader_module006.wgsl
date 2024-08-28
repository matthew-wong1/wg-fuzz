struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11>;

var<private> global1: bool;

var<private> global2: vec4<i32>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> i32 {
    var var_0 = Struct_2(~(~4294967295u));
    var_0 = Struct_2(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(7799u, var_0.a, 4294967295u, 20539u), vec4<u32>(var_0.a, 24202u, var_0.a, var_0.a)), _wgslsmith_mult_u32(var_0.a, 0u)));
    var_0 = Struct_2(~(~var_0.a) << (_wgslsmith_mod_u32(~(~1503u), _wgslsmith_mod_u32(~var_0.a, countOneBits(13801u))) % 32u));
    let var_1 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(max(1u, var_0.a), ~1u) ^ var_0.a, 11u)] != (!all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 11u)], true)) | any(!vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.a, 11u)], global0[_wgslsmith_index_u32(1u, 11u)]))), global2.yx, Struct_1(vec2<u32>(var_0.a, 0u), ~0u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1883f - 545f), 2428f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-268f * 735f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-637f, -694f, 655f, -2652f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(552f, -1000f, 2238f, -1064f))))), any(vec4<bool>(!global0[_wgslsmith_index_u32(92768u, 11u)], global0[_wgslsmith_index_u32(abs(var_0.a), 11u)], true, all(vec2<bool>(global0[_wgslsmith_index_u32(var_0.a, 11u)], false))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-124f, _wgslsmith_f_op_f32(1694f - 414f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -712f), -488f, true)), -1613f));
    let var_2 = u_input.a;
    return abs(_wgslsmith_sub_i32(17213i, -47980i));
}

fn func_2() -> i32 {
    global2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-17607i, min(max(global2.x, i32(-1i) * -27500i), func_3() & -global2.x), -85171i, -2147483647i), firstTrailingBit(~(~vec4<i32>(global2.x, -2147483647i, global2.x, 2147483647i))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(~1u, ~1u, 62260u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 24792u, 0u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u))), ~vec4<u32>(48871u, 15717u, 4294967295u, 42821u)) % vec4<u32>(32u)), ~vec4<i32>(firstLeadingBit(~34780i), global2.x, -(~u_input.a.x), max(u_input.a.x, reverseBits(-5152i))));
    global2 = vec4<i32>(_wgslsmith_mult_i32(i32(-1i) * -8230i, global2.x), i32(-1i) * -11861i, 0i, -global2.x);
    global1 = global0[_wgslsmith_index_u32(~4294967295u, 11u)];
    var var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), firstTrailingBit(select(abs(vec3<u32>(4294967295u, 17476u, 0u)), vec3<u32>(1u, 1u, 0u), select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(14523u, 11u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(19966u, 11u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(45526u, 11u)], false)))) >> (abs(vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)));
    var var_1 = firstTrailingBit(_wgslsmith_mod_i32(1i, 46943i));
    return global2.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_2 {
    global2 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(i32(-1i) * -13631i, -21937i), ~_wgslsmith_mult_i32(arg_0.x, u_input.a.x), 5010i, -global2.x), -arg_0);
    global0 = array<bool, 11>();
    global1 = !global0[_wgslsmith_index_u32(arg_3.a, 11u)];
    global0 = array<bool, 11>();
    let var_0 = firstLeadingBit(-35171i);
    return Struct_2(arg_3.a);
}

fn func_1() -> vec4<i32> {
    var var_0 = func_4(-(~vec4<i32>(u_input.a.x, global2.x, 0i, func_2())), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(505f, 122f)), -169f, _wgslsmith_f_op_f32(1000f + -2111f), _wgslsmith_f_op_f32(f32(-1f) * -907f)) + vec4<f32>(_wgslsmith_f_op_f32(min(-109f, 648f)), _wgslsmith_f_op_f32(957f * 425f), _wgslsmith_f_op_f32(-1430f + -115f), 736f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-777f, _wgslsmith_f_op_f32(floor(-559f)), _wgslsmith_f_op_f32(abs(-711f)), -333f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-553f, -1448f), -1935f, _wgslsmith_f_op_f32(trunc(955f)), _wgslsmith_div_f32(-362f, 999f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1129f, -637f, 1348f, 1009f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(731f, 491f, -972f, 2070f) + vec4<f32>(3030f, -1584f, -911f, 847f))))), Struct_2(1u));
    let var_1 = global2.xx;
    var var_2 = Struct_1(vec2<u32>(var_0.a, ~(var_0.a ^ (4294967295u | var_0.a))), 52683u >> (var_0.a % 32u), _wgslsmith_f_op_f32(round(-1065f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1474f + -1092f), _wgslsmith_f_op_f32(-1276f - 583f))), 329f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(124f))))), ~(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, -27958i, -5468i), vec4<i32>(global2.x, 0i, var_1.x, -35957i)) | (i32(-1i) * -1i)) < (~abs(-1i) | _wgslsmith_sub_i32(_wgslsmith_sub_i32(global2.x, global2.x), global2.x)));
    var_2 = Struct_1(vec2<u32>(var_0.a, var_2.a.x), ~_wgslsmith_sub_u32(~0u, _wgslsmith_sub_u32(~var_2.b, _wgslsmith_div_u32(16011u, 90753u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.x) + _wgslsmith_f_op_f32(round(-818f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.c + 197f))) - var_2.d.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(946f - -1614f)) + _wgslsmith_f_op_f32(abs(var_2.c))), 182f, _wgslsmith_f_op_f32(select(1639f, _wgslsmith_div_f32(169f, _wgslsmith_f_op_f32(-387f * var_2.c)), var_2.e)), -1038f), !(!(!(!global0[_wgslsmith_index_u32(var_0.a, 11u)]))));
    var var_3 = var_2.e;
    return vec4<i32>(var_1.x, var_1.x, abs(u_input.a.x), abs(global2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -(~vec4<i32>(global2.x, _wgslsmith_dot_vec4_i32(func_1(), vec4<i32>(u_input.a.x, -2147483647i, 0i, 1i)), global2.x, -2147483647i));
    let var_0 = Struct_3(true, vec2<i32>(u_input.a.x, _wgslsmith_sub_i32(global2.x, 26082i)), Struct_1(vec2<u32>(1u, 1u), min(46650u, ~_wgslsmith_clamp_u32(50974u, 4294967295u, 12532u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1012f, _wgslsmith_f_op_f32(max(-435f, 444f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(757f, -562f, -1693f, -197f))), vec4<f32>(-737f, -753f, _wgslsmith_div_f32(580f, -1270f), _wgslsmith_f_op_f32(f32(-1f) * -289f))), true | select(global0[_wgslsmith_index_u32(~0u, 11u)], !global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(abs(0u), 11u)])), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(122f, -3212f)), _wgslsmith_f_op_f32(f32(-1f) * -1144f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(432f - 2026f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -141f), -2922f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(20902u, 35974u, 61667u), vec3<u32>(0u, 0u, 50334u)), 11u)]))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-773f, 387f, global0[_wgslsmith_index_u32(4294967295u, 11u)])) * -307f))), 184f));
    global1 = var_0.c.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-941f, -395f, var_0.c.d.x, var_0.d.x) - vec4<f32>(var_0.d.x, var_0.d.x, -1853f, var_0.d.x)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.c.d.x, var_0.d.x, var_0.d.x)))), select(var_0.b.x, var_0.b.x ^ global2.x, var_0.c.e || false) == u_input.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_0.c.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.c.b, 31258u), vec3<u32>(var_0.c.b, var_0.c.b, 4294967295u))), 4294967295u, 0u), vec3<u32>(max(~var_0.c.b, var_0.c.b), 1u, var_0.c.b)));
}

