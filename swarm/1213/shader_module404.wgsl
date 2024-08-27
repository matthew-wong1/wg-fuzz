struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: vec3<i32> = vec3<i32>(160i, 36037i, -1i);

var<private> global2: Struct_1;

var<private> global3: Struct_2 = Struct_2(vec3<bool>(true, true, true), vec2<i32>(0i, -1i), 2147483647i);

var<private> global4: f32;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(790f)))), 777f, _wgslsmith_f_op_f32(global2.a.x + global2.a.x), _wgslsmith_div_f32(global2.a.x, _wgslsmith_f_op_f32(-global2.a.x)))), ~vec2<u32>(~global2.b.x, 40540u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global2.c.x))))), -1925f, -785f, global2.c.x), ~_wgslsmith_clamp_i32(~67404i, -global3.b.x, _wgslsmith_add_i32(~(-1i), _wgslsmith_mod_i32(-1i, global1.x))), vec3<u32>(min(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 0u, global2.b.x), global2.e), 1u), u_input.d.x), u_input.d.x, 1u));
    global0 = array<Struct_2, 12>();
    var var_0 = Struct_2(global3.a, reverseBits(global1.yy), global2.d);
    let var_1 = 0i;
    global3 = Struct_2(global3.a, -u_input.b.ww, reverseBits(min(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b.wzz, u_input.b.wzy), vec3<i32>(48708i, var_1, 0i)), _wgslsmith_mod_i32(-global2.d, ~(-26782i)))));
    return _wgslsmith_div_i32(~min(~0i, select(34111i, var_0.b.x, !global3.a.x)), select(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, ~var_0.c, -73282i >> (0u % 32u), countOneBits(-2147483647i)), u_input.b), var_0.c, false));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2) -> vec4<u32> {
    global3 = global0[_wgslsmith_index_u32(global2.e.x, 12u)];
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-467f, 698f, global2.a.x, -264f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, -1015f, global2.c.x, -158f)))))), ~(~(~reverseBits(vec2<u32>(u_input.d.x, u_input.d.x)))), global2.a, max(func_3(), ~select(abs(global1.x), 2147483647i, global3.a.x)), firstTrailingBit(vec3<u32>(~global2.e.x, 1135u >> ((global2.b.x >> (1u % 32u)) % 32u), _wgslsmith_add_u32(firstTrailingBit(u_input.d.x), global2.b.x))));
    var var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(-arg_1.c, -18464i, global1.x), _wgslsmith_clamp_vec3_i32(abs(min(vec3<i32>(arg_1.b.x, -20026i, global1.x), vec3<i32>(-4286i, 72015i, -39915i))), -_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b.yyy, u_input.b.ywx), -u_input.b.yyx), u_input.b.wyy));
    let var_2 = Struct_1(var_0.a, _wgslsmith_sub_vec2_u32(global2.e.zz, ~_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(var_0.b, u_input.d), var_0.e.zy, ~var_0.e.zz)), global2.c, min(-global3.b.x, select(1i, arg_1.b.x, any(vec2<bool>(global3.a.x, arg_1.a.x)))), ~(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(1u, global2.e.x, 4294967295u)), var_0.e) >> (var_0.e % vec3<u32>(32u))));
    var var_3 = !vec3<bool>(any(select(arg_1.a.yz, !vec2<bool>(false, arg_1.a.x), !arg_1.a.x)), true, !any(select(arg_0, vec4<bool>(arg_0.x, true, false, arg_1.a.x), arg_0)));
    return countOneBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(reverseBits(1u), var_0.e.x >> (var_2.e.x % 32u), 0u, 14588u), vec4<u32>(firstLeadingBit(4294967295u), global2.e.x, 4294967295u, 11125u)));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(354f)), global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x + global2.c.x) - 307f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1091f) - _wgslsmith_div_f32(global2.c.x, 2044f)))));
    let var_1 = !(!(!vec3<bool>(any(global3.a), any(global3.a), true)));
    let var_2 = Struct_2(select(vec3<bool>(global3.a.x, all(!vec4<bool>(global3.a.x, false, true, var_1.x)), true), vec3<bool>(_wgslsmith_f_op_f32(-global2.c.x) >= _wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, global2.e.x), vec2<u32>(u_input.d.x, 4294967295u)) >= 0u, true), !(!vec3<bool>(var_1.x, var_1.x, true))), ~max(~vec2<i32>(global3.c, -1i), u_input.b.yw) >> (_wgslsmith_sub_vec2_u32(global2.b, vec2<u32>(min(0u, 0u), ~27295u)) % vec2<u32>(32u)), global2.d);
    var var_3 = max(vec4<u32>(_wgslsmith_mult_u32(global2.b.x, min(22186u, u_input.d.x)), ~(~u_input.d.x), global2.b.x, 0u) ^ max(firstLeadingBit(vec4<u32>(global2.e.x, global2.e.x, global2.b.x, 4294967295u)), ~func_2(vec4<bool>(false, true, var_2.a.x, global3.a.x), global0[_wgslsmith_index_u32(4294967295u, 12u)])), countOneBits(vec4<u32>(1u, u_input.d.x, ~(~u_input.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.b.x, u_input.d.x, 1u, global2.e.x) << (vec4<u32>(1194u, u_input.d.x, u_input.d.x, 1u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(global2.b.x, u_input.d.x, u_input.d.x, global2.b.x), vec4<u32>(global2.e.x, 15212u, u_input.d.x, 34840u))))));
    var var_4 = ~_wgslsmith_clamp_i32(global3.b.x, _wgslsmith_sub_i32(~(i32(-1i) * -11790i), global2.d), global1.x);
    return Struct_2(vec3<bool>(select(true, any(!vec4<bool>(false, true, var_2.a.x, var_2.a.x)), any(vec2<bool>(global3.a.x, var_1.x))), true, var_2.a.x), vec2<i32>(abs(12187i) | global2.d, -(global2.d ^ global3.b.x)) & vec2<i32>(10151i, ~_wgslsmith_sub_i32(2147483647i, u_input.b.x)), -17358i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_i32(~(-firstTrailingBit(vec4<i32>(u_input.a, global3.c, 1i, global3.c))), -_wgslsmith_mult_vec4_i32(-u_input.b, -_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, u_input.b)));
    let var_1 = func_1();
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1645f, _wgslsmith_f_op_f32(floor(-543f)), _wgslsmith_div_f32(global2.a.x, -227f), _wgslsmith_f_op_f32(exp2(global2.c.x))) - vec4<f32>(870f, 387f, -2068f, _wgslsmith_f_op_f32(max(-2123f, global2.a.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(636f, global2.a.x, global2.c.x, -729f))), _wgslsmith_f_op_vec4_f32(floor(global2.c))), vec4<f32>(_wgslsmith_div_f32(global2.a.x, global2.a.x), _wgslsmith_div_f32(735f, 1302f), global2.a.x, _wgslsmith_f_op_f32(trunc(-800f))))), global2.b, global2.a, var_1.b.x, vec3<u32>(~4294967295u, ~(~(~2911u)), 85729u << (u_input.d.x % 32u)));
    let var_2 = ~min(u_input.d.x, ~(~_wgslsmith_dot_vec3_u32(global2.e, vec3<u32>(1u, 0u, 51873u))));
    global1 = _wgslsmith_div_vec3_i32(u_input.b.xzx, _wgslsmith_sub_vec3_i32(-min(u_input.b.xxy, vec3<i32>(44545i, -2147483647i, var_1.c)), u_input.b.xyz));
    let var_3 = true;
    let var_4 = _wgslsmith_mult_vec3_i32(vec3<i32>(1i, _wgslsmith_clamp_i32(reverseBits(1i), 0i, _wgslsmith_add_i32(global2.d ^ global3.c, var_1.b.x)), countOneBits(~(-2282i))), abs(vec3<i32>(func_1().b.x, countOneBits(func_3()), -min(u_input.a, var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2, firstLeadingBit(vec3<u32>(~(~global2.e.x), var_2, global2.b.x)), ~_wgslsmith_dot_vec2_u32(~func_2(vec4<bool>(true, var_1.a.x, false, false), Struct_2(var_1.a, vec2<i32>(global1.x, 16024i), var_4.x)).yx, ~vec2<u32>(var_2, global2.b.x)), global2.c.x);
}

