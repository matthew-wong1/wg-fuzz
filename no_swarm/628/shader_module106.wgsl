struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: f32,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(14717u, 13649u, 104731u, 48114u, 4294967295u, 1u, 4294967295u, 67007u, 0u, 79795u, 55933u, 59359u, 39838u, 4294967295u, 0u, 4294967295u);

var<private> global1: vec4<i32> = vec4<i32>(2147483647i, -23632i, 1i, 2147483647i);

var<private> global2: Struct_4;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<f32>) -> i32 {
    global2 = Struct_4(global2.a, abs(vec3<u32>(reverseBits(4294967295u), arg_0.b.x, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.b.x, 16u)], 16u)]) | global2.b), _wgslsmith_f_op_f32(-arg_2.x));
    let var_0 = Struct_3(Struct_1(arg_1, ~arg_0.b, arg_0.c, -select(vec3<i32>(43386i, global2.a.a.d.x, u_input.b), vec3<i32>(2147483647i, u_input.c.x, 13467i), !vec3<bool>(global2.a.a.a.x, true, false)), global0[_wgslsmith_index_u32(~firstLeadingBit(18837u), 16u)] < 6421u));
    global1 = _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.c.x, -43608i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_0.d.x, 1i), global2.a.a.d), 0i), vec4<i32>(u_input.b, arg_0.d.x, global1.x, u_input.c.x)) ^ vec4<i32>(min(-2147483647i, arg_0.d.x), ~0i, _wgslsmith_mod_i32(-2147483647i, -firstTrailingBit(-2147483647i)), _wgslsmith_div_i32(~min(-771i, -9139i), global1.x));
    let var_1 = var_0.a.c;
    var var_2 = Struct_4(Struct_3(arg_0), vec3<u32>(1u, 31224u, 12594u), var_1);
    return -18646i;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> vec4<i32> {
    var var_0 = vec3<i32>(-2147483647i, 2147483647i, _wgslsmith_mult_i32(global2.a.a.d.x, global1.x));
    var var_1 = global1.xyx;
    global1 = arg_0;
    global2 = Struct_4(Struct_3(global2.a.a), ~abs(~vec3<u32>(93515u, 0u, 17215u)), global2.a.a.c);
    global1 = _wgslsmith_sub_vec4_i32(-_wgslsmith_div_vec4_i32(-(vec4<i32>(global2.a.a.d.x, var_0.x, -1i, var_0.x) & arg_0), arg_0), arg_0);
    return ~vec4<i32>(-(~reverseBits(global1.x)), -func_3(global2.a.a, vec2<bool>(global2.a.a.e, true), vec2<f32>(1f, 1f)), 1i >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(80780u, 16u)], 16u)] % 32u), ~0i);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: bool) -> vec3<bool> {
    global0 = array<u32, 16>();
    let var_0 = max(_wgslsmith_mod_i32(-46158i, -_wgslsmith_div_i32(-6168i, reverseBits(u_input.c.x))), abs(global1.x));
    var var_1 = global1.x;
    global1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(24173i, var_0)), max(u_input.c.zz, vec2<i32>(-11524i, global2.a.a.d.x))), _wgslsmith_div_i32(1i | var_0, global1.x), 1i, 28032i), _wgslsmith_mod_vec4_i32((vec4<i32>(-2217i, u_input.c.x, global2.a.a.d.x, global2.a.a.d.x) | vec4<i32>(global1.x, global1.x, -2147483647i, 2147483647i)) << (vec4<u32>(global2.b.x, 23113u, 36817u, 37511u) % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(var_0, global2.a.a.d.x, global2.a.a.d.x, 25314i)), ~(~(~vec4<i32>(39260i, u_input.b, -51538i, -1i)))) | max(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(19281i, -2147483647i, -3802i, 0i), vec4<i32>(global1.x, -23424i, 2147483647i, u_input.b)), 36065i), global1.x, -(var_0 << (global0[_wgslsmith_index_u32(34987u, 16u)] % 32u)), _wgslsmith_dot_vec4_i32(-vec4<i32>(global1.x, global2.a.a.d.x, u_input.c.x, var_0), func_2(vec4<i32>(-90771i, 16273i, 42162i, 0i), global0[_wgslsmith_index_u32(global2.b.x, 16u)]))), ~(-vec4<i32>(0i, 1i, 2147483647i, 2147483647i)));
    let var_2 = vec3<bool>(all(vec3<bool>(global2.a.a.e, all(select(vec4<bool>(false, true, arg_2, arg_2), vec4<bool>(true, global2.a.a.e, arg_2, arg_2), false)), !all(vec3<bool>(false, true, global2.a.a.a.x)))), true, true);
    return vec3<bool>(any(vec3<bool>(true, true && any(vec4<bool>(true, false, var_2.x, global2.a.a.a.x)), !arg_2)), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(global2.a.a.e, any(func_1(0u, countOneBits(_wgslsmith_dot_vec4_u32(global2.a.a.b, global2.a.a.b)), true)), true, all(vec4<bool>(select(true & global2.a.a.e, any(vec4<bool>(true, true, true, false)), true), true, global2.a.a.e, true)));
    global0 = array<u32, 16>();
    var_0 = vec4<bool>(all(!var_0.yx), true, !(!(false && (var_0.x && true))), any(!vec2<bool>(any(vec3<bool>(global2.a.a.e, global2.a.a.e, global2.a.a.e)), !var_0.x)));
    var var_1 = Struct_1(vec2<bool>(true, var_0.x || all(!var_0.xxz)), vec4<u32>(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(global2.a.a.b.x, 1u, global0[_wgslsmith_index_u32(1u, 16u)]), u_input.a), global2.a.a.b.x, ~4399u, ~(~global2.a.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-630f))), global1.www, false);
    let var_2 = Struct_4(Struct_3(Struct_1(select(vec2<bool>(var_1.e, global2.a.a.a.x), global2.a.a.a, global2.a.a.a), firstLeadingBit(countOneBits(vec4<u32>(var_1.b.x, u_input.a, 4294967295u, 37372u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(2420f, -676f)), _wgslsmith_f_op_f32(f32(-1f) * -814f)), firstTrailingBit(vec3<i32>(global1.x, u_input.b, 5863i)), var_0.x)), _wgslsmith_add_vec3_u32(min(vec3<u32>(_wgslsmith_sub_u32(0u, var_1.b.x), ~1u, ~67254u), ~global2.b), ~(~global2.a.a.b.www)), var_1.c);
    let var_3 = _wgslsmith_f_op_f32(1692f + global2.c);
    let x = u_input.a;
    s_output = StorageBuffer(-127f, vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a, min(0u, global0[_wgslsmith_index_u32(var_1.b.x, 16u)])), ~(u_input.a ^ 4294967295u)), 1u), _wgslsmith_clamp_vec2_i32(global2.a.a.d.zz, min(~(~vec2<i32>(var_1.d.x, var_1.d.x)), -vec2<i32>(4382i, u_input.b)), _wgslsmith_sub_vec2_i32(max(global2.a.a.d.xz | vec2<i32>(var_2.a.a.d.x, var_1.d.x), max(vec2<i32>(var_2.a.a.d.x, -2147483647i), global1.wx)), vec2<i32>(_wgslsmith_div_i32(var_2.a.a.d.x, 40574i), _wgslsmith_clamp_i32(29487i, 13857i, global2.a.a.d.x)))), ~reverseBits(u_input.c.xz) | vec2<i32>(var_2.a.a.d.x, ~global1.x));
}

