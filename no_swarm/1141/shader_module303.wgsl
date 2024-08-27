struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
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

var<private> global0: bool;

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_1, 11>;

var<private> global3: Struct_1 = Struct_1(vec4<bool>(false, false, true, true), i32(-2147483648), vec4<f32>(1958f, 755f, -811f, 1482f), vec3<bool>(false, true, false));

var<private> global4: i32 = 1i;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: f32) -> u32 {
    var var_0 = global1.xwy;
    var var_1 = global3.c;
    var var_2 = Struct_2(select(1i, _wgslsmith_dot_vec2_i32(global1.wy, global1.yx), false));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 644f, 1600f, arg_2) * global3.c));
    let var_3 = arg_2;
    return select(1u, _wgslsmith_sub_u32(select(firstLeadingBit(select(18552u, 4294967295u, global3.d.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 4294967295u, 17477u, 17521u)), global3.d.x), 4294967295u), (!all(vec3<bool>(global3.d.x, true, false)) || !select(false, true, global3.d.x)) && global3.a.x);
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> vec4<u32> {
    let var_0 = max(~abs(firstLeadingBit(~23322u)), countOneBits(_wgslsmith_sub_u32(~abs(51703u), ~(~65076u))));
    global1 = -(~(-(~(vec4<i32>(-1i, global3.b, 0i, global3.b) ^ vec4<i32>(51033i, u_input.b.x, -2348i, 0i)))));
    global0 = true;
    let var_1 = arg_0;
    global3 = Struct_1(global3.a, 31308i, global3.c, select(!vec3<bool>(true, global3.c.x == global3.c.x, all(vec2<bool>(false, global3.d.x))), global3.a.yzz, global3.a.zwz));
    return ~vec4<u32>(~(~(~4294967295u)), 1u, select(var_0, ~(~var_0), true), _wgslsmith_dot_vec3_u32(~max(vec3<u32>(46217u, var_0, 461u), vec3<u32>(var_0, 1u, var_0)), min(vec3<u32>(42451u, 4294967295u, var_0), _wgslsmith_add_vec3_u32(vec3<u32>(var_0, var_0, 0u), vec3<u32>(103816u, 52507u, 4294967295u)))));
}

fn func_2() -> vec4<bool> {
    var var_0 = func_4(Struct_2(global1.x), u_input.a.x >> (_wgslsmith_add_u32(1u, func_3(~global3.b, _wgslsmith_add_i32(global1.x, global1.x), _wgslsmith_div_f32(-317f, -464f))) % 32u));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.x))));
    global2 = array<Struct_1, 11>();
    let var_2 = vec4<u32>(var_0.x, _wgslsmith_div_u32(var_0.x, ~_wgslsmith_clamp_u32(~0u, _wgslsmith_clamp_u32(var_0.x, var_0.x, 0u), _wgslsmith_dot_vec3_u32(var_0.xyz, vec3<u32>(1u, 1u, 15645u)))), var_0.x, 1u);
    var var_3 = countOneBits(_wgslsmith_mod_vec4_u32(~var_2, abs(max(vec4<u32>(var_0.x, 0u, var_2.x, var_0.x), var_2)))) ^ vec4<u32>(_wgslsmith_clamp_u32(0u, ~var_2.x, var_2.x) | ~func_3(0i, u_input.a.x, -174f), ~max(_wgslsmith_dot_vec4_u32(var_2, vec4<u32>(var_0.x, var_2.x, 0u, 0u)), var_2.x), var_2.x, _wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(var_0.x, var_0.x), min(var_0.x, 4294967295u)) | 0u);
    return select(vec4<bool>(false, global3.d.x, global3.a.x, false), select(global3.a, global3.a, !select(vec4<bool>(false, global3.d.x, false, global3.a.x), !global3.a, !global3.a)), global3.d.x);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1) -> vec2<u32> {
    global3 = arg_1;
    global4 = ~(-257i);
    var var_0 = _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(_wgslsmith_add_i32(global3.b, global1.x), -2147483647i & global3.b, _wgslsmith_div_i32(0i, arg_1.b))) << (vec3<u32>(4247u, ~countOneBits(0u), func_4(Struct_2(0i), ~0i).x) % vec3<u32>(32u)), abs(u_input.b.xxy));
    let var_1 = func_2().zz;
    let var_2 = vec4<u32>(_wgslsmith_dot_vec3_u32(func_4(Struct_2(1i), -(~(-2147483647i))).zxw, _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), ~firstTrailingBit(vec3<u32>(32992u, 1u, 1428u)))), ~(~reverseBits(_wgslsmith_mod_u32(50597u, 1u))), ~(~abs(30204u)), ~1u);
    return _wgslsmith_mult_vec2_u32(~abs(vec2<u32>(1u, countOneBits(var_2.x))), max(var_2.ww, vec2<u32>(~30663u, ~4294967295u)));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: f32) -> vec2<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(max(global3.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1002f)))), global3.c.x))), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(round(global3.c.x)));
    global4 = ~(-1i);
    let var_1 = !(!vec4<bool>(global3.a.x | global3.a.x, true, true, arg_1.x || false));
    let var_2 = 0i;
    global4 = var_2;
    return func_5(!func_2(), Struct_1(!global3.a, reverseBits(abs(global1.x)), _wgslsmith_f_op_vec4_f32(global3.c - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 796f, arg_0, -855f))))), !(!vec3<bool>(arg_1.x, false, arg_1.x))));
}

fn func_6(arg_0: vec2<u32>, arg_1: vec4<f32>) -> u32 {
    global4 = global3.b;
    global2 = array<Struct_1, 11>();
    global1 = firstTrailingBit(abs(vec4<i32>(0i, global3.b, abs(global3.b), 0i) >> (vec4<u32>(arg_0.x, 0u, abs(arg_0.x), arg_0.x) % vec4<u32>(32u))));
    global1 = u_input.b;
    global3 = global2[_wgslsmith_index_u32(57271u, 11u)];
    return reverseBits(arg_0.x);
}

fn func_7(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = Struct_2(_wgslsmith_sub_i32(max(min(_wgslsmith_clamp_i32(-1i, arg_3.b, -2147483647i), arg_0.a), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(47834i, -6544i, global1.x), vec3<i32>(-1i, 99979i, u_input.c.x)), ~vec3<i32>(global3.b, arg_3.b, global1.x))), min(-1i, -arg_3.b) << (1u % 32u)));
    let var_1 = arg_3.c.x;
    var var_2 = firstLeadingBit(vec3<i32>(-1i, ~global1.x, u_input.b.x & arg_3.b));
    var var_3 = var_1;
    global1 = max(vec4<i32>(arg_0.a, abs(_wgslsmith_mult_i32(1i, 2147483647i) >> (~4294967295u % 32u)), 1i, -73199i), ~firstLeadingBit(-abs(vec4<i32>(-7015i, 1840i, -32961i, 31728i))));
    return select(arg_2, _wgslsmith_mod_vec3_u32(arg_2 ^ vec3<u32>(arg_2.x, 1u, arg_1.x), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(arg_1, vec3<u32>(arg_1.x, 4294967295u, arg_1.x)), _wgslsmith_mod_vec3_u32(arg_2, vec3<u32>(arg_1.x, arg_1.x, arg_1.x)))) & arg_1, true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(countOneBits(0i), _wgslsmith_clamp_i32(u_input.b.x, u_input.c.x, global3.b)), _wgslsmith_sub_i32(countOneBits(u_input.b.x), countOneBits(-19977i)), 1i, global1.x), firstTrailingBit(u_input.b)));
    var var_0 = global1.zz;
    var var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.c.x), -558f)) + 457f), _wgslsmith_f_op_f32(-global3.c.x), global3.c.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.x)) * global3.c.x), global3.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-876f, _wgslsmith_f_op_f32(-global3.c.x), true)), global3.c.x)))));
    global1 = -u_input.b;
    var var_2 = _wgslsmith_mult_vec3_u32(func_7(Struct_2(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), -2147483647i)), vec3<u32>(~max(79151u, 4294967295u), func_6(func_1(-509f, global3.d.xx, var_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, global3.c.x, -953f, var_1.x) * vec4<f32>(global3.c.x, global3.c.x, 359f, var_1.x))), 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), abs(vec3<u32>(1u, 1u, 1u)), vec3<u32>(86787u, ~12768u, ~0u)), global2[_wgslsmith_index_u32(4294967295u, 11u)]), vec3<u32>(1u, func_1(-427f, global3.d.xx, var_1.x).x, _wgslsmith_add_u32(1u, 1u)) | vec3<u32>(12860u, 8012u, 39037u));
    global2 = array<Struct_1, 11>();
    var var_3 = -global1.x;
    global4 = -17705i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_2.x, 0u, 0u, min(var_2.x, 16881u)) << (vec4<u32>(var_2.x, ~4294967295u, abs(4294967295u), var_2.x) % vec4<u32>(32u)));
}

