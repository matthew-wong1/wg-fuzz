struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(vec2<i32>(i32(-2147483648), 28500i), -11541i, Struct_1(1u, 4294967295u, vec4<bool>(false, true, false, false), vec4<f32>(848f, -212f, -264f, -371f))));

var<private> global2: Struct_2;

var<private> global3: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(-398f, 1631f, -1268f, -672f), vec4<f32>(-1151f, 163f, 529f, -874f), vec4<f32>(421f, -1199f, -1020f, 1802f), vec4<f32>(-261f, 364f, -883f, -112f), vec4<f32>(-1000f, -176f, 736f, -541f), vec4<f32>(-978f, -1551f, -811f, -1541f), vec4<f32>(577f, -445f, -387f, -103f), vec4<f32>(-384f, -1454f, 263f, 1014f), vec4<f32>(-342f, -783f, -361f, -1000f), vec4<f32>(-364f, -119f, 236f, -1416f), vec4<f32>(-1207f, 1464f, -735f, 1000f), vec4<f32>(1007f, -994f, 1075f, 183f), vec4<f32>(538f, 1853f, -776f, -109f), vec4<f32>(1484f, 2515f, 390f, 125f), vec4<f32>(1941f, -525f, 576f, 1202f));

var<private> global4: i32 = -13042i;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec3_u32(abs(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global2.c.b, 119235u, 23980u), vec3<u32>(global2.c.a, global2.c.a, global2.c.b)), ~vec3<u32>(global2.c.b, 4294967295u, 30473u))) & vec3<u32>(firstTrailingBit(4799u), 27522u, ~(~116787u)), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 4294967295u, global2.c.b), firstTrailingBit(vec3<u32>(39719u, 0u, global2.c.b)), vec3<u32>(4294967295u, 13121u, _wgslsmith_div_u32(global2.c.b, global2.c.b))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global2.c.a, 4294967295u, global2.c.a), vec3<u32>(global2.c.a, global2.c.b, 4294967295u))));
    global4 = -u_input.a;
    global2 = global1[_wgslsmith_index_u32(0u, 1u)];
    var var_1 = vec2<bool>(global2.c.c.x, true);
    var var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(-(~0i), global2.b << (_wgslsmith_add_u32(36104u, 58772u) % 32u), global2.a.x, _wgslsmith_div_i32(-u_input.b, global2.a.x & 1i)) | _wgslsmith_mod_vec4_i32(-(~vec4<i32>(global2.b, -1i, global2.b, u_input.a)), abs(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.c, 2147483647i, -61128i), vec4<i32>(1i, -2147483647i, 15539i, u_input.b)))), _wgslsmith_clamp_vec4_i32(abs(~vec4<i32>(global2.a.x, 2147483647i, 1i, global2.a.x)) & (vec4<i32>(-1i) * -vec4<i32>(2147483647i, u_input.b, global2.b, 20067i)), ~(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, 0i, -36746i, 2147483647i), vec4<i32>(global2.a.x, -11053i, global2.a.x, u_input.c)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 0u, var_0.x, var_0.x), vec4<u32>(var_0.x, 4294967295u, var_0.x, global2.c.a)) % vec4<u32>(32u))), vec4<i32>(u_input.c, ~(global2.b ^ global2.a.x), -min(1620i, 18763i), ~1i)));
    return global2.c;
}

fn func_3() -> vec3<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global2.c.d.zy, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(465f, global2.c.d.x)))), select(!global2.c.c.xw, !global2.c.c.wx, global2.c.c.ww)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x + global0.x)))), global2.c.d.x));
    global3 = array<vec4<f32>, 15>();
    var var_0 = global1[_wgslsmith_index_u32(min(1u, ~58910u), 1u)];
    global3 = array<vec4<f32>, 15>();
    var var_1 = Struct_1(~_wgslsmith_clamp_u32(2249u, abs(~1u), ~1u & func_2().b), var_0.c.b, vec4<bool>(func_2().c.x, true, true, (~4294967295u >= ~global2.c.b) || (var_0.b == u_input.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) + _wgslsmith_f_op_f32(global0.x * global2.c.d.x)), _wgslsmith_f_op_f32(var_0.c.d.x * _wgslsmith_f_op_f32(-global2.c.d.x)), _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1865f + global0.x)))) * var_0.c.d));
    return func_2().c.yyz;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = func_3();
    global3 = array<vec4<f32>, 15>();
    global1 = array<Struct_2, 1>();
    global2 = Struct_2(vec2<i32>(~(-(~global2.b)), ~(-global2.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(abs(~global2.b), -5366i, -u_input.b), _wgslsmith_div_vec3_i32(abs(vec3<i32>(-56596i, global2.a.x, global2.a.x)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(5755i, global2.b, u_input.a), vec3<i32>(global2.b, -2147483647i, u_input.d), vec3<i32>(global2.a.x, -1i, -29882i)))), var_0);
    return global1[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, ~var_0.a, 22992u, ~var_0.a), ~vec4<u32>(var_0.a, 4294967295u, arg_2.x, arg_1.x) & _wgslsmith_div_vec4_u32(vec4<u32>(52542u, 8384u, 36744u, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, 9040u, global2.c.b)))), 1u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<i32>) -> bool {
    let var_0 = firstTrailingBit(29166u) >> (18412u % 32u);
    let var_1 = vec2<u32>(18552u, ~18257u);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.x + _wgslsmith_f_op_f32(global0.x * -254f)) * -1101f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.c.d.x)) - -820f));
    var var_3 = global2.b;
    var var_4 = func_1(true, var_1 & vec2<u32>(max(_wgslsmith_mod_u32(arg_1.a, global2.c.b), ~4294967295u), 4294967295u), var_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.c.d)));
    return !global2.c.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 15>();
    let var_0 = !global2.c.c.xww;
    var var_1 = select(global2.c.c.xxw, vec3<bool>(func_4(func_1(true, ~vec2<u32>(global2.c.b, 13539u), ~vec2<u32>(global2.c.a, global2.c.a), _wgslsmith_f_op_vec4_f32(-global2.c.d)), global2.c, vec4<i32>(-1i) * -vec4<i32>(global2.b, u_input.b, global2.b, 12562i)), func_4(func_1(false | global2.c.c.x, vec2<u32>(0u, 4294967295u), ~vec2<u32>(0u, 522u), vec4<f32>(global2.c.d.x, global0.x, 702f, global0.x)), Struct_1(~1u, _wgslsmith_div_u32(global2.c.a, global2.c.a), select(vec4<bool>(var_0.x, false, false, global2.c.c.x), global2.c.c, global2.c.c.x), vec4<f32>(-1537f, -2030f, global0.x, global0.x)), countOneBits(vec4<i32>(global2.b, 34317i, 26787i, u_input.d))), var_0.x), true);
    global2 = Struct_2(vec2<i32>(i32(-1i) * -1431i, -29345i), _wgslsmith_clamp_i32(_wgslsmith_add_i32(-2147483647i, u_input.b), 2147483647i, max(~(1i | u_input.c), select(~(-1i), _wgslsmith_mod_i32(u_input.b, 1164i), true))), global2.c);
    var var_2 = global2.c.a << ((select(func_1(true, vec2<u32>(global2.c.a, global2.c.a), vec2<u32>(13622u, global2.c.b), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(89603u, global2.c.a), vec2<u32>(4294967295u, 1u)), 15u)]).c.a, global2.c.a & select(global2.c.b, global2.c.b, global2.c.c.x), all(select(vec2<bool>(false, var_1.x), vec2<bool>(var_0.x, false), global2.c.c.x))) << (global2.c.b % 32u)) % 32u);
    global3 = array<vec4<f32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.b, _wgslsmith_dot_vec3_i32(-vec3<i32>(global2.a.x, global2.a.x, -27058i), ~vec3<i32>(global2.a.x, -69121i, 12347i))) >> (abs(~(vec2<u32>(2939u, global2.c.a) ^ vec2<u32>(1u, global2.c.b))) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(global2.c.a << (global2.c.a % 32u), 15u)] * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1152f, -1126f, -419f, 231f))))));
}

