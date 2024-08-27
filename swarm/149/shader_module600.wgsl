struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 26>;

var<private> global1: vec2<f32> = vec2<f32>(1000f, -455f);

var<private> global2: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(428f, 1000f, 629f, 104f), vec4<f32>(1152f, 1000f, -231f, 720f), vec4<f32>(2112f, -2196f, -303f, -690f), vec4<f32>(1967f, 313f, 220f, -970f), vec4<f32>(763f, 825f, 487f, -701f), vec4<f32>(-282f, 499f, -2061f, -845f), vec4<f32>(383f, -579f, -497f, 227f), vec4<f32>(-862f, 210f, -1744f, 428f), vec4<f32>(-937f, 1768f, 1487f, 1870f), vec4<f32>(-122f, -502f, 506f, -782f), vec4<f32>(816f, 1189f, -1979f, 1113f), vec4<f32>(-561f, -100f, -394f, -1455f), vec4<f32>(-1215f, -815f, 891f, -643f), vec4<f32>(-1420f, -1138f, -261f, 1000f), vec4<f32>(2867f, 1789f, -287f, -2184f), vec4<f32>(1154f, 1990f, 623f, -399f), vec4<f32>(-604f, 683f, -365f, 1000f), vec4<f32>(691f, -1196f, 636f, 3266f), vec4<f32>(-1006f, -1000f, 687f, -337f), vec4<f32>(619f, 950f, 1491f, -637f));

var<private> global3: Struct_3;

var<private> global4: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(1i, 1i), vec2<i32>(i32(-2147483648), 28763i), vec2<i32>(14651i, 15157i), vec2<i32>(i32(-2147483648), -11789i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(_wgslsmith_add_i32(i32(-1i) * -1i, max(global3.b.b.b, global3.a) >> (~29850u % 32u)) | ~(~10590i | _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 6070i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))), global3.b, select(vec2<i32>(-42143i ^ ~u_input.c.x, 0i), vec2<i32>(countOneBits(-global3.a), u_input.c.x), select(select(vec2<bool>(false, global3.b.a), !global3.b.c, select(global3.b.c, vec2<bool>(global3.b.c.x, global3.b.a), false)), global3.b.c, true)));
    global3 = Struct_3(-u_input.c.x, global3.b, ~(-vec2<i32>(_wgslsmith_add_i32(global3.c.x, 28055i), u_input.c.x)));
    var var_1 = reverseBits(~vec4<i32>(min(2147483647i, global3.c.x), firstLeadingBit(-var_0.a), i32(-1i) * -global3.b.b.b, 17697i));
    var var_2 = select(select(!vec3<bool>(true, !var_0.b.a, global3.b.c.x == false), vec3<bool>(global3.b.a, any(vec3<bool>(global3.b.a, var_0.b.a, global3.b.c.x)) | var_0.b.c.x, !(!var_0.b.a)), !select(select(vec3<bool>(false, global3.b.c.x, global3.b.c.x), vec3<bool>(var_0.b.a, false, true), vec3<bool>(var_0.b.a, global3.b.c.x, global3.b.c.x)), vec3<bool>(true, true, true), true)), vec3<bool>(any(select(!vec2<bool>(var_0.b.c.x, false), vec2<bool>(var_0.b.c.x, var_0.b.c.x), any(global3.b.c))), true, 1408f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.x)) + _wgslsmith_f_op_f32(sign(1114f)))), select(!(!(!vec3<bool>(false, global3.b.c.x, false))), select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, global3.b.c.x, false), true), select(vec3<bool>(true, var_0.b.c.x, true), vec3<bool>(var_0.b.a, true, var_0.b.c.x), vec3<bool>(true, global3.b.a, true)), select(vec3<bool>(global3.b.a, var_0.b.c.x, true), vec3<bool>(global3.b.c.x, false, var_0.b.c.x), vec3<bool>(var_0.b.a, true, false))), !select(vec3<bool>(false, true, var_0.b.c.x), vec3<bool>(false, var_0.b.a, false), vec3<bool>(var_0.b.c.x, false, var_0.b.a)), any(vec2<bool>(false, global3.b.c.x))), vec3<bool>(_wgslsmith_div_f32(267f, global1.x) >= _wgslsmith_f_op_f32(-global1.x), var_0.b.c.x, true)));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(var_0.b.b.c.x, 26u)] + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -153f), _wgslsmith_f_op_f32(select(global1.x, global1.x, global3.b.a)), _wgslsmith_f_op_f32(abs(839f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(100501u, 26u)]) + _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(4294967295u, 26u)])))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_div_f32(-896f, 420f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1207f * global1.x) - 586f), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, _wgslsmith_div_f32(-350f, global1.x)))));
    return ~_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.b, 0u), ~(~global3.b.b.c)));
}

fn func_2(arg_0: f32) -> Struct_2 {
    global4 = array<vec2<i32>, 4>();
    var var_0 = vec4<bool>(select(false, any(select(!global3.b.c, global3.b.c, select(global3.b.c, vec2<bool>(false, global3.b.a), vec2<bool>(false, false)))), global3.b.c.x), true, global3.b.a || global3.b.a, global3.b.b.c.x <= u_input.a.x);
    global4 = array<vec2<i32>, 4>();
    let var_1 = var_0.zyw;
    var var_2 = vec4<bool>(!(true && global3.b.c.x), ~8973u <= countOneBits(func_3()), false, !(!var_0.x));
    return global3.b;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: vec3<u32>) -> i32 {
    var var_0 = func_2(_wgslsmith_f_op_f32(ceil(arg_0.x)));
    global2 = array<vec4<f32>, 20>();
    var var_1 = max(-max(~_wgslsmith_add_vec4_i32(vec4<i32>(-4494i, global3.a, 37280i, global3.c.x), vec4<i32>(-51037i, u_input.c.x, u_input.c.x, 37760i)), ~max(vec4<i32>(global3.c.x, var_0.b.a.x, 11647i, -13139i), vec4<i32>(var_0.b.b, -1i, u_input.c.x, global3.c.x))), ~(~(-max(vec4<i32>(global3.a, u_input.c.x, 2147483647i, 59925i), vec4<i32>(u_input.c.x, var_0.b.b, u_input.c.x, 1i)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-arg_0);
    var var_3 = min(~min(var_1.wxx, vec3<i32>(0i, -1i, 46332i) >> (vec3<u32>(1u, global3.b.b.c.x, 83676u) % vec3<u32>(32u))), var_1.xxw >> (vec3<u32>(4294967295u, 1u, ~u_input.b) % vec3<u32>(32u)));
    return min(abs(global3.b.b.b >> (43019u % 32u)), abs(func_2(-1060f).b.d));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_3 {
    let var_0 = Struct_1(~select(global4[_wgslsmith_index_u32(arg_3.x, 4u)], global4[_wgslsmith_index_u32(~u_input.a.x, 4u)], vec2<bool>(false, func_2(-404f).c.x)), -1i, vec3<u32>(abs(_wgslsmith_mult_u32(_wgslsmith_mod_u32(46376u, arg_1.c.x), func_2(822f).b.c.x)), max(u_input.a.x, _wgslsmith_mod_u32(arg_1.c.x << (1u % 32u), ~u_input.a.x)), max(global3.b.b.c.x, _wgslsmith_clamp_u32(u_input.a.x, arg_1.c.x, 0u))), arg_0.x);
    global2 = array<vec4<f32>, 20>();
    var var_1 = _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.b), 26u)] * global0[_wgslsmith_index_u32(u_input.b, 26u)]);
    let var_2 = global0[_wgslsmith_index_u32(global3.b.b.c.x ^ _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.c.x, u_input.b), ~(func_2(global1.x).b.c.xz | select(arg_2.c.xy, vec2<u32>(1u, arg_3.x), global3.b.a))), 26u)];
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(sign(-1038f))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.x, var_1.x)))));
    return Struct_3(1i, Struct_2(global3.b.a, var_0, func_2(_wgslsmith_f_op_f32(1000f - var_1.x)).c), firstTrailingBit(global3.b.b.a << (arg_1.c.xx % vec2<u32>(32u))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> Struct_3 {
    var var_0 = vec2<i32>(-global3.c.x, arg_0.b.b.a.x);
    var var_1 = true;
    let var_2 = func_2(_wgslsmith_f_op_f32(abs(426f))).c;
    let var_3 = arg_2.b.a;
    let var_4 = arg_1.b.b;
    return func_4(-max(~vec3<i32>(6331i, -64483i, var_4.b), -vec3<i32>(global3.a, global3.a, -49097i)) ^ _wgslsmith_div_vec3_i32(vec3<i32>(0i, func_1(vec2<f32>(global1.x, -744f), arg_1.b.c, arg_1.b.b.c), ~5788i), vec3<i32>(max(arg_2.a, -3631i), _wgslsmith_dot_vec2_i32(u_input.c, u_input.c), arg_2.a & 2147483647i)), func_2(_wgslsmith_f_op_f32(352f + _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(1972f + -1482f)))).b, Struct_1(firstLeadingBit(var_4.a), abs(~(-12507i ^ u_input.c.x)), ~(~(~vec3<u32>(var_4.c.x, 4294967295u, u_input.a.x))), -2147483647i), _wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(u_input.a.x, 23427u) << ((vec2<u32>(arg_0.b.b.c.x, arg_2.b.b.c.x) | vec2<u32>(arg_1.b.b.c.x, var_4.c.x)) % vec2<u32>(32u))), ~(~select(global3.b.b.c.yy, arg_0.b.b.c.yz, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!vec3<bool>(any(global3.b.c), true, select(u_input.b < 23455u, true, u_input.a.x > 4294967295u)));
    var var_1 = func_5(Struct_3(~(-21558i), global3.b, _wgslsmith_clamp_vec2_i32(vec2<i32>(global3.a, abs(global3.c.x)), abs(max(vec2<i32>(0i, 2147483647i), vec2<i32>(global3.a, -26881i))), vec2<i32>(u_input.c.x, ~u_input.c.x))), func_4(vec3<i32>(i32(-1i) * -17353i, _wgslsmith_mult_i32(0i << (u_input.a.x % 32u), -50461i), ~global3.b.b.d), Struct_1(select(reverseBits(vec2<i32>(-43283i, global3.a)), vec2<i32>(33574i, 5692i), true), 0i, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 81521u, u_input.b), global3.b.b.c)), 0i), Struct_1(min(select(vec2<i32>(global3.b.b.b, u_input.c.x), vec2<i32>(global3.a, 1i), global3.b.c.x), vec2<i32>(u_input.c.x, 11721i)), func_1(vec2<f32>(global1.x, global1.x), select(global3.b.c, global3.b.c, global3.b.c), global3.b.b.c | global3.b.b.c), (global3.b.b.c | vec3<u32>(0u, u_input.a.x, 0u)) ^ global3.b.b.c, global3.b.b.b), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global3.b.b.c.x, 1u), vec2<u32>(1u, global3.b.b.c.x)), ~u_input.a) >> (vec2<u32>(global3.b.b.c.x, ~28733u) % vec2<u32>(32u))), Struct_3(~global3.c.x, func_4(~abs(vec3<i32>(-5382i, global3.b.b.a.x, u_input.c.x)), func_2(_wgslsmith_f_op_f32(global1.x + global1.x)).b, Struct_1(select(global3.c, vec2<i32>(1i, 29200i), global3.b.c), _wgslsmith_dot_vec3_i32(vec3<i32>(global3.a, u_input.c.x, u_input.c.x), vec3<i32>(0i, global3.a, global3.c.x)), ~global3.b.b.c, ~1i), abs(~global3.b.b.c.zz)).b, ~(~vec2<i32>(u_input.c.x, u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(round(188f)), !var_1.b.c.x)), global1.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) * vec2<f32>(global1.x, global1.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(446f, 1015f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(217f, global1.x), vec2<f32>(1925f, global1.x), var_1.b.c.x))))), global2[_wgslsmith_index_u32(global3.b.b.c.x, 20u)], ~min(vec4<u32>(_wgslsmith_mod_u32(4294967295u, 13655u), _wgslsmith_mod_u32(0u, var_1.b.b.c.x), ~27819u, 1u), min(vec4<u32>(u_input.b, 58545u, 1u, 0u), vec4<u32>(28850u, 35235u, global3.b.b.c.x, u_input.a.x)) << (_wgslsmith_add_vec4_u32(vec4<u32>(0u, 86629u, u_input.a.x, 17903u), vec4<u32>(4294967295u, global3.b.b.c.x, 8245u, 7569u)) % vec4<u32>(32u))));
}

