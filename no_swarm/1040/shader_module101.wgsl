struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: vec4<bool>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(1i, -1i, 31299i);

var<private> global1: Struct_2 = Struct_2(Struct_1(1000f, vec3<f32>(1008f, 528f, 3022f), vec3<i32>(-25324i, 67336i, -1i)), false, false, vec4<bool>(false, false, false, false), vec4<i32>(0i, i32(-2147483648), 0i, -25101i));

var<private> global2: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false));

var<private> global3: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(Struct_2(Struct_1(-1090f, vec3<f32>(-1011f, 940f, 591f), vec3<i32>(50601i, -1i, 51610i)), false, false, vec4<bool>(true, true, false, true), vec4<i32>(0i, 0i, 37375i, i32(-2147483648))), vec3<f32>(479f, 255f, 474f), -688f, Struct_1(1000f, vec3<f32>(-292f, 1015f, 134f), vec3<i32>(-1i, -1i, 0i)), vec3<bool>(false, false, false)), Struct_3(Struct_2(Struct_1(-1048f, vec3<f32>(-286f, -348f, 1554f), vec3<i32>(-51678i, 95080i, -11902i)), true, false, vec4<bool>(true, true, true, true), vec4<i32>(9155i, -1i, i32(-2147483648), -28032i)), vec3<f32>(895f, -755f, 681f), -2152f, Struct_1(-159f, vec3<f32>(-254f, -757f, -202f), vec3<i32>(i32(-2147483648), 0i, 22803i)), vec3<bool>(true, true, false)), Struct_3(Struct_2(Struct_1(-1330f, vec3<f32>(1000f, -642f, -1000f), vec3<i32>(0i, 558i, 28534i)), true, true, vec4<bool>(false, true, false, false), vec4<i32>(-26604i, 0i, 1i, -5585i)), vec3<f32>(-499f, -830f, 769f), 2008f, Struct_1(2619f, vec3<f32>(722f, 1154f, 993f), vec3<i32>(-16341i, -2039i, -18458i)), vec3<bool>(true, false, false)));

var<private> global4: vec4<i32> = vec4<i32>(-1203i, 33401i, 29017i, -13211i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<u32>) -> f32 {
    let var_0 = ~countOneBits(countOneBits(vec3<u32>(1u, select(u_input.a.x, u_input.b, true), 1u)));
    global3 = array<Struct_3, 3>();
    var var_1 = global1.e;
    global3 = array<Struct_3, 3>();
    global4 = reverseBits(vec4<i32>(arg_0.c.x, reverseBits(u_input.d.x | (arg_0.c.x & u_input.d.x)), 0i, _wgslsmith_dot_vec2_i32(~u_input.d.xx, ~(~var_1.xz))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b.x))))));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: u32) -> f32 {
    var var_0 = ~_wgslsmith_mult_vec3_u32(u_input.a.xxz, (u_input.a.wyx >> (u_input.a.yzz % vec3<u32>(32u))) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) << (_wgslsmith_div_vec3_u32(u_input.a.wzz, min(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, u_input.a.x), u_input.a.zwz), ~0u, 45365u), ~(~vec3<u32>(46095u, arg_2, 0u)))) % vec3<u32>(32u));
    global0 = array<i32, 3>();
    global3 = array<Struct_3, 3>();
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(global1.a.b.zx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.a.a + -415f), -100f))))));
    let var_2 = var_0.yz;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1079f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1.a, vec4<u32>(39227u, var_2.x, 0u, 0u), vec4<u32>(20558u, var_0.x, u_input.b, 4294967295u)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.a.a)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1274f, _wgslsmith_f_op_f32(var_1.x * -862f)))))));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: f32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(select(vec3<bool>(true, arg_2 <= -499f, true), global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global1.b), -firstLeadingBit(~global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), min(1u, min(u_input.a.x, firstTrailingBit(0u))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(810f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -402f)))))));
    var var_1 = reverseBits(~select((u_input.a.x >> (78774u % 32u)) & countOneBits(arg_1), u_input.a.x, global1.d.x));
    var var_2 = -1522f;
    let var_3 = 110382u;
    global4 = _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, reverseBits(global0[_wgslsmith_index_u32(reverseBits(1u), 3u)]), 2147483647i, ~2147483647i) & global1.e, ~_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-23659i, global0[_wgslsmith_index_u32(6001u, 3u)]), -51982i, 1i, ~14923i), vec4<i32>(global0[_wgslsmith_index_u32(var_3, 3u)], global4.x, 17416i, u_input.c.x) & firstTrailingBit(global1.e)));
    return Struct_4(Struct_2(global1.a, !all(vec4<bool>(global1.c, global1.d.x, false, false)) & true, false & all(select(vec2<bool>(false, true), global1.d.yx, global1.b)), global1.d, ~global1.e), global1.a, u_input.a.zyz, _wgslsmith_add_u32(~var_3, u_input.b), Struct_2(Struct_1(-126f, vec3<f32>(_wgslsmith_f_op_f32(floor(867f)), _wgslsmith_f_op_f32(-1475f + -534f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), select(u_input.d, u_input.d, vec3<bool>(global1.b, true, global1.b)) | (vec3<i32>(-14408i, global1.e.x, 3094i) >> (vec3<u32>(u_input.a.x, 0u, u_input.b) % vec3<u32>(32u)))), global1.b | all(global1.d.yyy), true, !vec4<bool>(global1.c & true, any(global2[_wgslsmith_index_u32(arg_1, 20u)]), select(true, false, true), select(false, global1.d.x, true)), global1.e));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = 0u;
    var var_1 = func_1(_wgslsmith_f_op_f32(sign(-164f)), max(~(~var_0), _wgslsmith_div_u32(22700u, 657u)) >> (firstLeadingBit(arg_0.c.x) % 32u), arg_0.a.a.b.x).a.a;
    let var_2 = true & all(select(global1.d.xzz, vec3<bool>(true, true, true), !(!vec3<bool>(false, global1.c, arg_0.a.b))));
    let var_3 = -1i;
    global4 = _wgslsmith_add_vec4_i32(vec4<i32>(-54507i, global4.x, _wgslsmith_div_i32(-arg_2.c.x, global4.x), i32(-1i) * -8656i), -vec4<i32>(~u_input.d.x, reverseBits(func_1(var_1.a, 79701u, global1.a.a).b.c.x), _wgslsmith_dot_vec4_i32(global1.e, vec4<i32>(-11340i, 2147483647i, -33002i, 9968i)), select(2147483647i, global1.e.x, func_1(var_1.b.x, arg_0.d, global1.a.b.x).a.d.x)));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(all(select(vec2<bool>(true, false), select(vec2<bool>(global1.d.x, true), global1.d.zx, global1.d.yw), true)), global1.b), global1.d.zw, !global1.d.x | global1.d.x);
    global1 = func_4(func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a.b.x))), _wgslsmith_mod_u32(u_input.b, _wgslsmith_clamp_u32(u_input.a.x, ~0u, 14262u)), _wgslsmith_f_op_f32(step(1162f, _wgslsmith_f_op_f32(-global1.a.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(global1.a.a - _wgslsmith_f_op_f32(-global1.a.b.x)), global1.a.a, global1.a.a, _wgslsmith_f_op_f32(func_3(func_1(_wgslsmith_f_op_f32(-global1.a.b.x), 69296u, _wgslsmith_f_op_f32(-global1.a.a)).b, select(u_input.a, u_input.a, global1.c) << (vec4<u32>(u_input.a.x, u_input.b, 1u, 102395u) % vec4<u32>(32u)), ~select(u_input.a, u_input.a, global1.b)))), func_1(global1.a.b.x, 4294967295u, _wgslsmith_f_op_f32(-932f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -632f), _wgslsmith_f_op_f32(1000f - -1665f))))).a.a);
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    var var_1 = global1.d.yw;
    var var_2 = func_1(-927f, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(738f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1554f + 810f))) - _wgslsmith_f_op_f32(min(global1.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.a) + _wgslsmith_div_f32(651f, global1.a.a))))));
    var var_3 = 2147483647i;
    global3 = array<Struct_3, 3>();
    let var_4 = global3[_wgslsmith_index_u32(u_input.b, 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -1i, ~(-25691i), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~var_2.c.x, ~u_input.b, ~var_2.c.x), _wgslsmith_dot_vec3_u32(u_input.a.xzw, ~u_input.a.yyy)), _wgslsmith_clamp_u32(~4294967295u ^ var_2.c.x, u_input.b, 6488u), _wgslsmith_div_u32(1u, abs(_wgslsmith_mod_u32(8790u, var_2.c.x))), 1u));
}

