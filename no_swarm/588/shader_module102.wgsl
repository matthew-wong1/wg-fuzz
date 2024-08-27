struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(35903u, vec3<f32>(-1371f, -910f, 828f), vec4<i32>(44741i, 0i, -49150i, 2147483647i));

var<private> global1: array<i32, 28> = array<i32, 28>(i32(-2147483648), i32(-2147483648), -23822i, 2147483647i, 13950i, 2147483647i, 0i, i32(-2147483648), 0i, -1i, -1i, 11745i, -29775i, -24861i, 2147483647i, 0i, 19447i, 19812i, 1i, -4500i, 42042i, 18869i, 0i, 59150i, 18934i, -1i, 2147483647i, 1i);

var<private> global2: Struct_1 = Struct_1(1u, vec3<f32>(-618f, -1000f, -951f), vec4<i32>(2147483647i, 1i, 3659i, -1i));

var<private> global3: Struct_3 = Struct_3(vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 1i), -271f, Struct_2(vec4<i32>(1i, -27554i, 5029i, 1138i)), false);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = Struct_3(global0.c, global3.b, Struct_2(~(-vec4<i32>(2147483647i, -2147483647i, u_input.b.x, 18241i))), !(((1000f != global2.b.x) || false) & !(!global3.d)));
    let var_1 = ~vec2<u32>(select(_wgslsmith_dot_vec3_u32(vec3<u32>(4179u, u_input.a, global2.a), vec3<u32>(41225u, global2.a, 1u)), global2.a, true), 1u) & vec2<u32>(global0.a, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(113523u, 77791u, 29676u, 27070u), ~vec4<u32>(global0.a, global2.a, u_input.c, 1u)), min(~vec4<u32>(u_input.c, u_input.a, u_input.a, global0.a), _wgslsmith_add_vec4_u32(vec4<u32>(global0.a, 4294967295u, u_input.a, 0u), vec4<u32>(u_input.c, 19180u, 21825u, 0u)))));
    let var_2 = Struct_5(Struct_3(abs(vec4<i32>(-u_input.d, reverseBits(1i), ~u_input.b.x, _wgslsmith_clamp_i32(-19001i, -43944i, global3.c.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) - -614f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global2.b.x))))), Struct_2(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, -1i, -1i, 0i)), -vec4<i32>(arg_0.c.a.x, -51175i, 4685i, 16767i))), all(!(!vec3<bool>(false, arg_0.d, var_0.d)))), Struct_1(global2.a, global0.b, countOneBits(firstTrailingBit(~var_0.c.a))));
    global2 = var_2.b;
    var var_3 = true;
    return all(!vec3<bool>(!any(vec4<bool>(arg_0.d, true, false, var_0.d)), true, any(vec3<bool>(true, false, var_2.a.d))));
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = global3.d;
    var var_1 = !(!func_3(Struct_3(_wgslsmith_mod_vec4_i32(global2.c, global0.c), global3.b, Struct_2(global3.a), global2.a < global2.a)));
    let var_2 = 367f;
    let var_3 = 4294967295u;
    var var_4 = ~_wgslsmith_mult_vec3_i32(-_wgslsmith_clamp_vec3_i32(max(global3.a.xwz, global3.a.xxx), countOneBits(vec3<i32>(global1[_wgslsmith_index_u32(global0.a, 28u)], -48256i, global0.c.x)), vec3<i32>(global3.a.x, -67394i, 0i) >> (vec3<u32>(4294967295u, global0.a, 1u) % vec3<u32>(32u))), abs(~global0.c.wzy));
    return Struct_3(vec4<i32>(-1378i, _wgslsmith_dot_vec2_i32(~u_input.b.yy, _wgslsmith_sub_vec2_i32(~global0.c.zy, select(global2.c.ww, global2.c.yx, true))), reverseBits(reverseBits(global2.c.x) << (arg_0 % 32u)), 2147483647i), global3.b, Struct_2(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(1i, -37865i), 1i, global1[_wgslsmith_index_u32(arg_0, 28u)], abs(var_4.x)), global0.c)), all(select(vec2<bool>(global3.d, any(vec3<bool>(global3.d, global3.d, true))), !vec2<bool>(false, global3.d), true)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>) -> Struct_3 {
    let var_0 = func_2(6819u);
    global0 = Struct_1(~11609u ^ (_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a, 37313u), vec2<u32>(u_input.a, 0u)), select(vec2<u32>(global0.a, global2.a), vec2<u32>(global2.a, global0.a), global3.d)) | max(_wgslsmith_div_u32(7559u, global2.a), _wgslsmith_dot_vec4_u32(vec4<u32>(3343u, global0.a, 4294967295u, 1u), vec4<u32>(4294967295u, 1u, global2.a, global2.a)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global0.b)))), vec3<f32>(arg_0.x, global3.b, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(576f + 259f)))), countOneBits(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(var_0.c.a, -vec4<i32>(global2.c.x, global3.c.a.x, global3.a.x, global2.c.x)), var_0.c.a)));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2688f), arg_0.x))));
    var var_2 = var_0.a;
    let var_3 = ~max(global2.c, vec4<i32>(~global3.c.a.x, 1i, global2.c.x, i32(-1i) * -34784i));
    return func_2(53790u);
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: u32) -> Struct_2 {
    var var_0 = global0.a;
    var var_1 = Struct_1(_wgslsmith_add_u32(select(u_input.a, 0u, !global3.d), ~1u), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global2.b))), vec4<i32>(_wgslsmith_mod_i32(abs(-1i), -14458i), -7634i, -_wgslsmith_add_i32(-2660i, 2907i ^ global1[_wgslsmith_index_u32(40024u, 28u)]), 76716i));
    let var_2 = -1088f;
    var var_3 = Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(arg_1.x, 485f, arg_2.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b.x)) + _wgslsmith_f_op_f32(floor(global0.b.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_1.x)))))), vec4<i32>(-global1[_wgslsmith_index_u32(23562u, 28u)], 21861i, -abs(abs(1i)), arg_2.a.x));
    let var_4 = ~firstTrailingBit(abs(var_3.a));
    return Struct_2(global3.c.a & arg_2.a);
}

fn func_5(arg_0: Struct_4) -> Struct_1 {
    global3 = Struct_3(-(~select(min(vec4<i32>(0i, global0.c.x, 0i, 2147483647i), global2.c), select(global0.c, vec4<i32>(0i, arg_0.b.c.x, 2147483647i, global2.c.x), vec4<bool>(false, false, true, arg_0.e.d)), vec4<bool>(global3.d, false, arg_0.e.d, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global3.b)), global2.b.x, all(vec2<bool>(global3.d, arg_0.e.d)))) + _wgslsmith_f_op_f32(f32(-1f) * -247f)) + -1726f), func_1(_wgslsmith_f_op_vec2_f32(-arg_0.d), vec3<i32>(1i, 1i, func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1899f) * vec2<f32>(global3.b, arg_0.d.x)), global2.c.yyw | global3.a.yww).c.a.x)).c, global3.d);
    let var_0 = false;
    global1 = array<i32, 28>();
    let var_1 = Struct_5(func_1(vec2<f32>(_wgslsmith_f_op_f32(-755f - -590f), _wgslsmith_f_op_f32(-1289f * -1000f)), func_4(65673u & ~global0.a, _wgslsmith_f_op_vec3_f32(arg_0.b.b - _wgslsmith_f_op_vec3_f32(vec3<f32>(-935f, 110f, 525f) + arg_0.b.b)), arg_0.e, ~global2.a).a.zyy), arg_0.b);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -499f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1202f)) - arg_0.e.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(360f - global0.b.x), _wgslsmith_f_op_f32(315f - _wgslsmith_f_op_f32(-global0.b.x)))));
    return Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global0.b))), ~firstTrailingBit(firstLeadingBit(vec4<i32>(global3.c.a.x, global0.c.x, 15756i, global3.c.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.c;
    global2 = func_5(Struct_4(func_4(u_input.c, vec3<f32>(_wgslsmith_f_op_f32(global2.b.x - global3.b), global2.b.x, _wgslsmith_f_op_f32(-global0.b.x)), func_1(_wgslsmith_div_vec2_f32(vec2<f32>(global2.b.x, -1144f), global2.b.yy), global3.a.zxz), ~(~u_input.c)), Struct_1(~(~4294967295u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 2043f, -1094f)) * _wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, global2.b.x, global3.b), vec3<f32>(global0.b.x, -501f, 402f))), max(global0.c >> (vec4<u32>(108904u, 40967u, u_input.a, 9103u) % vec4<u32>(32u)), vec4<i32>(-1i, u_input.e, var_0.a.x, 22208i) & vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 28u)], 0i, 5304i, global0.c.x))), _wgslsmith_f_op_f32(max(-640f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-473f)) - _wgslsmith_f_op_f32(f32(-1f) * -656f)))), global2.b.xy, Struct_3(global0.c | -global0.c, _wgslsmith_f_op_f32(-337f + -103f), Struct_2(vec4<i32>(global0.c.x, -2147483647i, 4478i, -27904i)), _wgslsmith_div_f32(global0.b.x, global0.b.x) > 1000f)));
    let var_1 = !select(vec4<bool>(false, -1220f <= _wgslsmith_f_op_f32(global0.b.x * 664f), !global3.d, global3.d), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, global3.d, true, true), vec4<bool>(global3.d, true, true, global3.d), vec4<bool>(false, global3.d, true, false)), vec4<bool>(false, global3.d, global3.d, false), global2.b.x < global0.b.x), global2.a > ~global0.a), !select(select(vec4<bool>(true, global3.d, global3.d, global3.d), vec4<bool>(true, global3.d, global3.d, false), vec4<bool>(global3.d, true, global3.d, global3.d)), !vec4<bool>(false, global3.d, false, false), global2.a > global2.a));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b.yx))), select(var_0.a.ywz, global3.a.xxx, var_1.wwx)).a.x, 17797u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-726f, global2.b.x, global0.b.x))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-954f, global0.b.x, global0.b.x) * global0.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-577f, -618f, 708f))))));
}

