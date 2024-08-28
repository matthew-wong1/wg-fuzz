struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
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

var<private> global0: array<i32, 12> = array<i32, 12>(32194i, 6092i, -3427i, i32(-2147483648), -14247i, -10391i, 2147483647i, -33593i, 1i, 12851i, -1i, -36879i);

var<private> global1: array<i32, 12> = array<i32, 12>(-1661i, 63892i, 1i, 40692i, 56204i, 48014i, 0i, i32(-2147483648), 0i, -8576i, 12781i, 1i);

var<private> global2: array<bool, 27>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    global0 = array<i32, 12>();
    return _wgslsmith_add_u32(firstTrailingBit(min(firstLeadingBit(reverseBits(u_input.a.x)), ~0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u) >> (abs(u_input.a.zy) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(42926u, u_input.b.x), ~u_input.b.zx)) ^ 51487u);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_3();
    let var_1 = !select(arg_1.a, !arg_1.a, !(arg_0.x && global2[_wgslsmith_index_u32(1u, 27u)]));
    var var_2 = abs(-21816i);
    var var_3 = Struct_1(arg_1.a, arg_1.b, select(firstTrailingBit(_wgslsmith_div_vec3_i32(arg_1.c, firstTrailingBit(vec3<i32>(arg_1.c.x, arg_1.c.x, 56244i)))), vec3<i32>(~29743i, global1[_wgslsmith_index_u32(~var_0, 12u)], abs(_wgslsmith_mult_i32(arg_1.c.x, 34210i))), true), var_0);
    var_3 = arg_1;
    return arg_1;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(sign(1f));
    var var_1 = arg_0;
    global0 = array<i32, 12>();
    return Struct_1(!select(var_1.a, var_1.a, true), vec4<u32>(~var_1.b.x, 19843u, 0u, 29907u), firstTrailingBit(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 12u)] ^ global1[_wgslsmith_index_u32(84146u, 12u)], -1i, -global0[_wgslsmith_index_u32(arg_0.b.x, 12u)]) << (~(~u_input.a) % vec3<u32>(32u))), 51962u);
}

fn func_5(arg_0: Struct_1) -> vec4<i32> {
    global2 = array<bool, 27>();
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1166f, _wgslsmith_f_op_f32(ceil(-633f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-714f)))), _wgslsmith_f_op_f32(f32(-1f) * -136f))));
    let var_1 = _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x));
    let var_2 = vec3<i32>(arg_0.c.x, min(-35815i, global1[_wgslsmith_index_u32(select(1u, _wgslsmith_sub_u32(1u, min(1u, arg_0.b.x)), true), 12u)]), ~(~59402i << (~arg_0.d % 32u)));
    var var_3 = !func_2(!vec2<bool>(!global2[_wgslsmith_index_u32(0u, 27u)], arg_0.a.x), func_4(func_2(arg_0.a.xz, arg_0))).a;
    return -(~(~(-vec4<i32>(var_2.x, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 1i, global0[_wgslsmith_index_u32(u_input.b.x, 12u)]))) ^ _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -1i, arg_0.c.x, global1[_wgslsmith_index_u32(arg_0.d, 12u)]), reverseBits(vec4<i32>(-2147483647i, 1i, 0i, 27443i))), countOneBits(vec4<i32>(-1i, var_2.x, -1i, -48896i))));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = firstLeadingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(48430u, 12u)], -32009i), _wgslsmith_mod_i32(10918i, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), 98620i, -1i), func_5(func_4(func_2(vec2<bool>(false, true), Struct_1(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 27u)], true, false), vec4<u32>(21708u, arg_0.x, u_input.a.x, 58806u), vec3<i32>(-43130i, global0[_wgslsmith_index_u32(arg_0.x, 12u)], global1[_wgslsmith_index_u32(43036u, 12u)]), u_input.b.x))))));
    global2 = array<bool, 27>();
    let var_1 = !(!(!vec4<bool>(true, true, global2[_wgslsmith_index_u32(~38651u, 27u)], !global2[_wgslsmith_index_u32(0u, 27u)])));
    let var_2 = func_4(Struct_1(select(var_1, !(!vec4<bool>(var_1.x, false, global2[_wgslsmith_index_u32(1u, 27u)], global2[_wgslsmith_index_u32(u_input.a.x, 27u)])), !var_1), ~(~vec4<u32>(4294967295u, 43373u, 38781u, u_input.a.x)), vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(firstLeadingBit(75621u), 12u)], ~(-global1[_wgslsmith_index_u32(u_input.a.x, 12u)])), func_2(func_4(func_2(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], var_1.x), Struct_1(var_1, vec4<u32>(u_input.a.x, arg_0.x, 0u, arg_0.x), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(7580u, 12u)], global1[_wgslsmith_index_u32(arg_0.x, 12u)]), 1u))).a.yx, func_2(func_4(Struct_1(vec4<bool>(var_1.x, global2[_wgslsmith_index_u32(u_input.a.x, 27u)], false, global2[_wgslsmith_index_u32(63382u, 27u)]), vec4<u32>(24583u, u_input.b.x, arg_0.x, arg_0.x), vec3<i32>(4735i, global0[_wgslsmith_index_u32(arg_0.x, 12u)], global1[_wgslsmith_index_u32(7276u, 12u)]), 15501u)).a.zw, Struct_1(var_1, vec4<u32>(84508u, 4294967295u, arg_0.x, u_input.a.x), vec3<i32>(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(arg_0.x, 12u)]), u_input.a.x))).d));
    global2 = array<bool, 27>();
    return func_2(var_1.zz, Struct_1(select(var_1, vec4<bool>(!global2[_wgslsmith_index_u32(var_2.d, 27u)], true, all(vec2<bool>(true, true)), true), var_1), ~(~(~var_2.b)), var_2.c, ~var_2.d));
}

fn func_6(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global0 = array<i32, 12>();
    var var_0 = vec4<i32>(abs(~(-27012i)), -(~arg_3.c.x), func_1(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 23398u), arg_3.b.wz)).c.x, 0i) | -_wgslsmith_div_vec4_i32(vec4<i32>(~arg_3.c.x, _wgslsmith_sub_i32(-27180i, arg_3.c.x), 1i, 7944i), vec4<i32>(global1[_wgslsmith_index_u32(arg_3.b.x, 12u)] >> (u_input.a.x % 32u), ~global0[_wgslsmith_index_u32(55747u, 12u)], -arg_3.c.x, ~arg_3.c.x));
    var var_1 = Struct_1(select(arg_3.a, arg_3.a, true), _wgslsmith_add_vec4_u32(~(~arg_3.b), arg_3.b), vec3<i32>(-(i32(-1i) * -70434i), 1i, min(_wgslsmith_dot_vec3_i32(select(vec3<i32>(var_0.x, -17532i, 8549i), arg_3.c, arg_3.a.x), arg_3.c), min(select(global1[_wgslsmith_index_u32(42834u, 12u)], -22181i, false), global1[_wgslsmith_index_u32(17444u, 12u)] ^ global0[_wgslsmith_index_u32(u_input.a.x, 12u)]))), abs(~arg_3.d >> (~(4294967295u | arg_3.b.x) % 32u)));
    var var_2 = arg_0.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2117f, -1155f) - 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2, -640f)) * -156f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2167f))), arg_0.x, true))));
    return func_1(_wgslsmith_div_vec2_u32(~arg_3.b.xw, vec2<u32>(~var_1.d, u_input.b.x)) | _wgslsmith_clamp_vec2_u32(~(~u_input.b.yx), vec2<u32>(_wgslsmith_mod_u32(1u, arg_3.d), _wgslsmith_div_u32(u_input.a.x, 4294967295u)), ~vec2<u32>(var_1.b.x, var_1.b.x)));
}

fn func_7(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_1(arg_2.a, ~(~arg_1.b), ~vec3<i32>(1i, firstTrailingBit(21261i) << (~1u % 32u), (-14491i << (arg_0.x % 32u)) << ((arg_1.d & arg_2.b.x) % 32u)), 1u);
    let var_1 = Struct_1(arg_2.a, var_0.b, var_0.c, abs(min(arg_0.x, 24479u)));
    var_0 = arg_2;
    var_0 = func_4(func_4(Struct_1(arg_2.a, _wgslsmith_add_vec4_u32(~arg_1.b, _wgslsmith_div_vec4_u32(vec4<u32>(5558u, arg_2.b.x, 1u, 0u), var_1.b)), _wgslsmith_mod_vec3_i32(vec3<i32>(-43030i, global1[_wgslsmith_index_u32(17705u, 12u)], -66295i), arg_1.c) | _wgslsmith_mod_vec3_i32(arg_1.c, var_0.c), _wgslsmith_mod_u32(countOneBits(var_0.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 274u, 91236u, u_input.b.x), arg_2.b)))));
    let var_2 = 4294967295u <= var_0.d;
    return arg_1;
}

fn func_8(arg_0: Struct_1) -> vec3<f32> {
    global2 = array<bool, 27>();
    let var_0 = arg_0;
    global1 = array<i32, 12>();
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(476f, 1948f, -1017f), vec3<f32>(904f, 1296f, -325f), arg_0.a.yyw))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-303f, -622f, 217f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 379f;
    global2 = array<bool, 27>();
    global1 = array<i32, 12>();
    global2 = array<bool, 27>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1211f, -921f, 924f), vec3<f32>(1033f, -719f, 555f))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-442f, -1840f, 625f))))), vec3<f32>(_wgslsmith_f_op_f32(round(1239f)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1075f))) * _wgslsmith_f_op_vec3_f32(func_8(func_7(u_input.a.yy, func_6(vec2<f32>(888f, 1122f), !vec2<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 27u)]), _wgslsmith_div_f32(-802f, 1000f), func_1(vec2<u32>(25555u, 43015u))), Struct_1(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], true, false, global2[_wgslsmith_index_u32(u_input.b.x, 27u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 27u)], true, true), false), _wgslsmith_div_vec4_u32(vec4<u32>(15688u, 1u, 30283u, u_input.b.x), vec4<u32>(u_input.a.x, 18921u, 43745u, 11718u)), vec3<i32>(-2147483647i, 836i, global1[_wgslsmith_index_u32(4294967295u, 12u)]), u_input.a.x << (4294967295u % 32u)), global1[_wgslsmith_index_u32(~u_input.b.x, 12u)]))));
    let var_2 = max(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.b.x, 34215u, u_input.b.x), vec4<u32>(u_input.a.x, u_input.b.x, 4294967295u, u_input.b.x)) | vec4<u32>(u_input.b.x, abs(1u), ~0u, 62799u)), vec4<u32>(u_input.a.x, _wgslsmith_add_u32(countOneBits(0u), u_input.a.x), ~u_input.b.x, 0u) ^ ~vec4<u32>(0u, u_input.b.x, 0u << (u_input.a.x % 32u), u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

