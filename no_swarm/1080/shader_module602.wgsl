struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28>;

var<private> global1: array<vec2<i32>, 14>;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<f32>(-1323f, -596f, -1168f, 778f), vec4<u32>(1u, 20377u, 1u, 1u), vec3<u32>(4294967295u, 42687u, 1u), 36479i));

var<private> global3: array<i32, 30> = array<i32, 30>(-1i, 1i, -1i, 1i, -14430i, -11321i, 1i, 55684i, -13263i, 23905i, -5660i, -19916i, 2147483647i, -1683i, 0i, -1i, -10293i, 23178i, -37263i, 2147483647i, 2147483647i, -1i, 65669i, i32(-2147483648), 0i, i32(-2147483648), 2147483647i, i32(-2147483648), -1i, 1i);

var<private> global4: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(vec2<bool>(true, false), 2958u), Struct_3(vec2<bool>(true, true), 91707u), Struct_3(vec2<bool>(false, true), 4294967295u), Struct_3(vec2<bool>(true, true), 1u), Struct_3(vec2<bool>(true, true), 0u), Struct_3(vec2<bool>(true, true), 0u), Struct_3(vec2<bool>(true, true), 50037u), Struct_3(vec2<bool>(true, true), 16720u), Struct_3(vec2<bool>(false, false), 7491u), Struct_3(vec2<bool>(false, false), 1u), Struct_3(vec2<bool>(true, true), 1u), Struct_3(vec2<bool>(true, true), 49359u), Struct_3(vec2<bool>(false, false), 4294967295u), Struct_3(vec2<bool>(true, true), 4294967295u), Struct_3(vec2<bool>(true, true), 58985u), Struct_3(vec2<bool>(true, false), 13437u), Struct_3(vec2<bool>(true, false), 1u), Struct_3(vec2<bool>(true, false), 52362u), Struct_3(vec2<bool>(false, false), 1u), Struct_3(vec2<bool>(true, false), 0u), Struct_3(vec2<bool>(false, true), 51953u), Struct_3(vec2<bool>(true, false), 108661u), Struct_3(vec2<bool>(false, true), 1u), Struct_3(vec2<bool>(true, false), 17107u), Struct_3(vec2<bool>(false, true), 0u), Struct_3(vec2<bool>(true, true), 4294967295u), Struct_3(vec2<bool>(true, false), 1u), Struct_3(vec2<bool>(false, true), 34497u), Struct_3(vec2<bool>(false, false), 4294967295u), Struct_3(vec2<bool>(true, false), 45759u), Struct_3(vec2<bool>(false, false), 0u), Struct_3(vec2<bool>(false, false), 0u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = !any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, false), false)) | true;
    global3 = array<i32, 30>();
    var var_1 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(-7988i, -27571i), -vec2<i32>(arg_1.d, 1724i)), vec2<i32>(-1i) * -global1[_wgslsmith_index_u32(arg_1.c.x, 14u)]), arg_1.d), 0i);
    global2 = Struct_2(arg_0);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(arg_0.a.x, arg_0.a.x), _wgslsmith_f_op_f32(trunc(1183f)), global2.a.a.x, arg_0.a.x), arg_0.a, select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), false), true)))), ~abs(max(arg_1.b >> (arg_0.b % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(global2.a.b, global2.a.b, global2.a.b))), vec3<u32>(arg_1.b.x, min(~(23148u >> (global2.a.c.x % 32u)), 75769u), 0u), ~(-_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(var_1.x, var_1.x, arg_0.d)), reverseBits(u_input.b))));
    return 24916u;
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(global2.a.a, vec4<f32>(global2.a.a.x, -878f, 289f, global2.a.a.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-880f, 1003f, global2.a.a.x, -121f))))), vec4<u32>(min(arg_0.b, 3395u) ^ 22745u, _wgslsmith_mod_u32(max(global0[_wgslsmith_index_u32(0u, 28u)], u_input.a), global0[_wgslsmith_index_u32(24378u, 28u)]), u_input.a, global2.a.c.x), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.b, firstTrailingBit(17162u), 18425u), vec3<u32>(_wgslsmith_sub_u32(6999u, 1u), func_3(global2.a, global2.a), ~global0[_wgslsmith_index_u32(arg_0.b, 28u)])), select(~(-10925i), _wgslsmith_add_i32(-922i, -global3[_wgslsmith_index_u32(1u, 30u)]), arg_0.a.x)));
    global4 = array<Struct_3, 32>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1790f, var_0.a.a.x, -557f, global2.a.a.x) + vec4<f32>(global2.a.a.x, -1819f, var_0.a.a.x, var_0.a.a.x))), _wgslsmith_mult_vec4_u32(global2.a.b, var_0.a.b), ~vec3<u32>(~u_input.a, global0[_wgslsmith_index_u32(55209u, 28u)], _wgslsmith_dot_vec4_u32(vec4<u32>(40953u, 2015u, 32851u, global0[_wgslsmith_index_u32(0u, 28u)]), global2.a.b)), global2.a.d));
    let var_2 = abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, 49087i, arg_1)), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.a.d, -48206i, var_0.a.d), u_input.b, u_input.b) << (vec3<u32>(arg_0.b, arg_0.b, 1u) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(var_1.a.d, u_input.b.x, global2.a.d), vec3<i32>(var_1.a.d, -46922i, global2.a.d)) >> (var_0.a.b.wwy % vec3<u32>(32u)))));
    var var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-999f * _wgslsmith_f_op_f32(-var_0.a.a.x))), _wgslsmith_div_f32(global2.a.a.x, -1139f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a.a.x))));
    return Struct_3(!select(!(!arg_0.a), vec2<bool>(arg_0.a.x | arg_0.a.x, true), select(!vec2<bool>(arg_0.a.x, true), arg_0.a, select(arg_0.a, vec2<bool>(arg_0.a.x, arg_0.a.x), vec2<bool>(true, arg_0.a.x)))), arg_0.b);
}

fn func_1(arg_0: vec2<i32>) -> vec3<u32> {
    let var_0 = global2.a;
    var var_1 = var_0.b & ~(~var_0.b);
    var var_2 = arg_0.x | -15849i;
    let var_3 = func_2(global4[_wgslsmith_index_u32(0u, 32u)], _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(28098u, ~global2.a.b.x), 30u)], -1i ^ arg_0.x));
    global0 = array<u32, 28>();
    return reverseBits(var_1.zyw);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_3(func_2(func_2(global4[_wgslsmith_index_u32(min(max(44087u, 1534u), 1u), 32u)], 0i), -arg_1.d).a, 7959u);
    var var_1 = global4[_wgslsmith_index_u32(u_input.c, 32u)];
    var var_2 = arg_1;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1022f)), var_2.a.x)) + _wgslsmith_div_f32(-744f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-460f - -371f))))), -732f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.a.x)) + arg_1.a.x))), -482f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2, -1000f))))) + var_2.a.x));
    global1 = array<vec2<i32>, 14>();
    return Struct_2(global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(global2.a.a, global2.a.b, vec3<u32>(~global2.a.b.x, firstLeadingBit(abs(5863u)), ~u_input.a), -2147483647i));
    global0 = array<u32, 28>();
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-2779f)), var_0.a.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-2020f)), var_0.a.a.x))));
    global2 = func_4(Struct_1(var_0.a.a, global2.a.b, func_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(-9726i, 48723i), global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(40602u, 14u)])) | select(vec3<u32>(global2.a.c.x, global0[_wgslsmith_index_u32(u_input.c, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)]), vec3<u32>(8384u, global0[_wgslsmith_index_u32(var_0.a.b.x, 28u)], u_input.c), true), firstTrailingBit(reverseBits(0i >> (global0[_wgslsmith_index_u32(var_0.a.b.x, 28u)] % 32u)))), Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a.a), vec4<u32>(func_3(var_0.a, var_0.a), var_0.a.b.x, var_0.a.b.x, ~var_0.a.b.x) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(var_0.a.b.x, 28u)], 1u), var_0.a.c), ~4294967295u, ~4294967295u, ~var_0.a.c.x) % vec4<u32>(32u)), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(0u, 28u)], u_input.c), 4294967295u), global2.a.c.x, _wgslsmith_mult_u32(abs(46842u), abs(global0[_wgslsmith_index_u32(1u, 28u)]))), _wgslsmith_mod_i32(reverseBits(6998i), global3[_wgslsmith_index_u32(countOneBits(29787u), 30u)]) >> (~firstTrailingBit(93358u) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.x + -762f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global2.a.a.x)), var_0.a.a.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -129f) * global2.a.a.x) * var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(select(25858i ^ countOneBits(global3[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(global2.a.c.x, 28u)], 59459u), 30u)]), _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)] | 4294967295u, 30u)], _wgslsmith_mult_i32(u_input.b.x, -33600i)) >> (~func_3(Struct_1(global2.a.a, vec4<u32>(62842u, 10042u, 59669u, var_0.a.c.x), var_0.a.b.xzz, global2.a.d), global2.a) % 32u), !(func_4(Struct_1(var_0.a.a, vec4<u32>(0u, 71037u, 125718u, 33839u), vec3<u32>(14496u, var_0.a.b.x, 0u), global2.a.d), global2.a, var_2.x).a.b.x <= _wgslsmith_mult_u32(1u, 1u))), 23451u, var_0.a.c.x & 4294967295u);
}

