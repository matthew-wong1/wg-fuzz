struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(-527f, -1301f, -733f), vec3<f32>(274f, -1335f, -888f), vec3<f32>(-437f, 687f, -1213f));

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

var<private> global2: array<vec3<bool>, 7>;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: bool) -> vec2<i32> {
    return vec2<i32>(~firstTrailingBit(_wgslsmith_mult_i32(u_input.d, firstLeadingBit(arg_0.x))), global3.a.x);
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    let var_0 = 60509u;
    var var_1 = all(global2[_wgslsmith_index_u32(~(abs(4294967295u) ^ ~firstTrailingBit(var_0)), 7u)]);
    global2 = array<vec3<bool>, 7>();
    global3 = Struct_1((u_input.a >> (_wgslsmith_add_vec2_u32(u_input.b.yy, u_input.b.yy >> (u_input.b.zz % vec2<u32>(32u))) % vec2<u32>(32u))) >> (~(u_input.b.yy << (firstTrailingBit(u_input.b.xy) % vec2<u32>(32u))) % vec2<u32>(32u)), global3.b, _wgslsmith_f_op_f32(max(global3.c, 703f)), -1073f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1132f - _wgslsmith_f_op_f32(round(-957f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2742f)) + _wgslsmith_f_op_f32(-global3.c))), false);
    var var_2 = 4294967295u;
    return _wgslsmith_f_op_f32(f32(-1f) * -196f);
}

fn func_3(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_1(u_input.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global3.b, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, arg_0, arg_0, -1000f))), global3.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c, -417f, global3.c, -557f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1676f) + global3.b.x), true != global1.x, true);
    global3 = var_0;
    let var_1 = u_input.d;
    global0 = array<vec3<f32>, 3>();
    let var_2 = var_0;
    return Struct_1(_wgslsmith_div_vec2_i32(global3.a, ~vec2<i32>(firstLeadingBit(9431i), -2147483647i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_2.b.x, _wgslsmith_f_op_f32(1645f - var_0.c), var_2.c) * var_0.b), _wgslsmith_f_op_f32(global3.b.x - _wgslsmith_f_op_f32(f32(-1f) * -439f)), !any(select(!global1.xz, vec2<bool>(true, false), global1.xy)), 1366f != _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-var_2.b.x)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec2<i32> {
    var var_0 = !all(vec2<bool>(true, true));
    global3 = func_3(1153f);
    let var_1 = arg_0.x;
    let var_2 = all(select(vec4<bool>(true, !(arg_2.e && arg_2.d), !arg_3, _wgslsmith_f_op_f32(step(1669f, arg_1.b.x)) > _wgslsmith_f_op_f32(-global3.b.x)), vec4<bool>(global1.x, false, !(558f >= arg_1.b.x), all(select(vec4<bool>(false, global3.e, arg_1.e, false), vec4<bool>(arg_3, false, arg_1.e, arg_1.e), true))), !select(vec4<bool>(global1.x, global3.d, arg_1.d, global1.x), !vec4<bool>(arg_2.d, false, global1.x, false), !vec4<bool>(false, arg_1.e, true, global1.x))));
    let var_3 = Struct_1(~global3.a & ((~vec2<i32>(arg_2.a.x, 14991i) & func_3(-1071f).a) | arg_2.a), _wgslsmith_f_op_vec4_f32(abs(global3.b)), arg_2.b.x, global1.x == false, false);
    return _wgslsmith_sub_vec2_i32(-max(~vec2<i32>(var_1, -7715i), vec2<i32>(var_1, -27471i)), var_3.a ^ (firstTrailingBit(vec2<i32>(arg_0.x, global3.a.x)) ^ var_3.a)) << (vec2<u32>(firstLeadingBit(~0u), 13165u) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(func_1(vec2<i32>(global3.a.x, -29775i), global3.b.x, global3.d) ^ ~global3.a, abs(countOneBits(u_input.a))), func_4(_wgslsmith_sub_vec4_i32(vec4<i32>(global3.a.x, global3.a.x, global3.a.x, -2147483647i) | vec4<i32>(-1i, -2559i, -2147483647i, u_input.d), ~vec4<i32>(-16695i, u_input.a.x, 2147483647i, 0i)), Struct_1(u_input.a >> (vec2<u32>(0u, 16219u) % vec2<u32>(32u)), global3.b, 558f, global1.x, -2147483647i <= global3.a.x), func_3(_wgslsmith_f_op_f32(func_2(vec3<i32>(u_input.e.x, -1i, global3.a.x)))), global3.e)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.b.x)) + _wgslsmith_f_op_f32(-global3.b.x)), _wgslsmith_f_op_f32(global3.c + _wgslsmith_f_op_f32(-global3.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.c, 269f))), _wgslsmith_f_op_f32(max(-500f, _wgslsmith_div_f32(1000f, 1227f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-557f, global3.c, global3.b.x, global3.c)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.b) + global3.b))), 763f, true, select(all(vec2<bool>(select(true, false, false), global3.e)), global3.e || true, global1.x));
    global0 = array<vec3<f32>, 3>();
    let var_1 = -_wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.d, var_0.a.x | -2078i, reverseBits(1i), i32(-1i) * -6067i), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.x, global3.a.x, u_input.a.x, var_0.a.x), vec4<i32>(u_input.e.x, var_0.a.x, global3.a.x, var_0.a.x), vec4<i32>(1i, -1i, global3.a.x, -7383i)), -vec4<i32>(global3.a.x, 2147483647i, u_input.a.x, -2147483647i), vec4<i32>(global3.a.x, 20743i, 0i, global3.a.x)), _wgslsmith_f_op_f32(round(540f)) < var_0.c), vec4<i32>(0i, _wgslsmith_sub_i32(var_0.a.x | -2147483647i, -26316i), var_0.a.x, _wgslsmith_mod_i32(~var_0.a.x, -16628i << (u_input.b.x % 32u))));
    let var_2 = firstTrailingBit(~vec4<u32>(abs(~u_input.b.x), 4294967295u, countOneBits(u_input.c), u_input.c));
    global3 = func_3(_wgslsmith_f_op_f32(global3.b.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(_wgslsmith_add_vec3_i32(var_1.zzx, var_1.www))), _wgslsmith_f_op_f32(exp2(var_0.c))))));
    var var_3 = Struct_1(-vec2<i32>(var_1.x, 0i), vec4<f32>(global3.c, global3.b.x, 247f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + -1000f)))), global3.b.x, true, global1.x);
    var var_4 = func_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b.x))));
    var var_5 = func_3(161f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c & ~var_2.x, vec2<u32>(_wgslsmith_mod_u32(~0u, select(1u, 1u, true)), _wgslsmith_sub_u32(85240u, _wgslsmith_clamp_u32(1u, 16975u, u_input.b.x >> (5172u % 32u)))), 1i << (_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c, 1u), 42725u), 33558u) % 32u), u_input.c, _wgslsmith_clamp_u32(max(9108u, var_2.x), ~abs(u_input.c), 49405u | ~u_input.b.x) ^ _wgslsmith_sub_u32(abs(u_input.c), var_2.x | reverseBits(u_input.b.x)));
}

