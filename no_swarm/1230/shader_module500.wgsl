struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 0u, 4294967295u, 1u);

var<private> global1: array<bool, 26>;

var<private> global2: vec2<u32> = vec2<u32>(43182u, 4294967295u);

var<private> global3: array<u32, 28>;

var<private> global4: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec3<u32>) -> bool {
    var var_0 = vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 26u)] && global1[_wgslsmith_index_u32(u_input.b.x, 26u)], false, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.x, 28u)], 26u)]);
    var var_1 = Struct_3(~_wgslsmith_mod_vec2_u32(select(global0.xw, vec2<u32>(arg_2.x, global3[_wgslsmith_index_u32(global0.x, 28u)]) | vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], global2.x), vec2<bool>(true, true)), abs(u_input.a.ww)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -915f, arg_0.x) * vec3<f32>(arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(174f, -298f, 689f))))));
    global3 = array<u32, 28>();
    var var_2 = vec4<u32>(min(19059u, reverseBits(arg_2.x)), u_input.b.x, ~abs(4294967295u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(4294967295u, 28u)], 4294967295u & (global2.x ^ var_1.a.x)), select(u_input.a.x, ~_wgslsmith_add_u32(arg_2.x, 18640u), _wgslsmith_f_op_f32(-var_1.b.x) <= var_1.b.x)));
    let var_3 = false;
    return global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(arg_2.x, global3[_wgslsmith_index_u32(~50220u, 28u)])), 28u)] <= abs(~min(global3[_wgslsmith_index_u32(0u, 28u)], arg_2.x));
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<bool>) -> i32 {
    global1 = array<bool, 26>();
    global1 = array<bool, 26>();
    global3 = array<u32, 28>();
    var var_0 = vec2<i32>(_wgslsmith_clamp_i32(-(~(~(-1i))), _wgslsmith_dot_vec4_i32(firstLeadingBit(-vec4<i32>(arg_0, arg_0, 25661i, -27327i)), ~(-vec4<i32>(arg_0, -1i, arg_0, arg_0))), 0i), arg_0);
    var var_1 = max(vec3<i32>(countOneBits(15294i), 0i, arg_0), ~countOneBits(vec3<i32>(-14159i, arg_0, 2147483647i))) << (max(global0.ywx, select(vec3<u32>(_wgslsmith_add_u32(0u, u_input.b.x), max(1u, 1u), 1u), _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(global0.x, global0.x, 13442u)), u_input.a.xyw), all(arg_2.xz))) % vec3<u32>(32u));
    return -33804i;
}

fn func_5(arg_0: u32, arg_1: i32) -> u32 {
    let var_0 = select(firstLeadingBit(vec2<u32>(abs(global0.x), 1u)), vec2<u32>(~global3[_wgslsmith_index_u32(4294967295u ^ ~global2.x, 28u)], u_input.a.x), !any(!vec3<bool>(true, global1[_wgslsmith_index_u32(67020u, 26u)], true)) || true);
    global3 = array<u32, 28>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1308f, -141f, 568f))), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 1956f, -348f), vec3<f32>(-856f, -2000f, 1059f)), vec3<bool>(true, true, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1054f, 570f, 101f))))), reverseBits(arg_1), _wgslsmith_f_op_f32(floor(395f)));
    let var_2 = vec4<f32>(var_1.a.a.x, 1091f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-171f * _wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.c), -139f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, var_1.a.a.x)) * _wgslsmith_f_op_f32(-var_1.c)))));
    let var_3 = _wgslsmith_sub_vec4_u32(u_input.a, _wgslsmith_clamp_vec4_u32(max(vec4<u32>(u_input.a.x, 31604u, ~4294967295u, 4294967295u), u_input.a), vec4<u32>(1u, _wgslsmith_sub_u32(countOneBits(u_input.b.x), ~global3[_wgslsmith_index_u32(var_0.x, 28u)]), abs(~var_0.x), 71350u), countOneBits(u_input.a ^ vec4<u32>(global2.x, arg_0, var_0.x, global3[_wgslsmith_index_u32(1u, 28u)])) ^ (u_input.a ^ vec4<u32>(global0.x, var_0.x, 19997u, global3[_wgslsmith_index_u32(1u, 28u)]))));
    return 0u;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: i32) -> f32 {
    var var_0 = func_5(firstLeadingBit(10956u), _wgslsmith_add_i32(-((arg_0 | -1i) & arg_0), func_4(arg_0, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, arg_1, 1269f, arg_1), vec4<f32>(arg_1, arg_1, arg_1, -638f), vec4<bool>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 28u)], 26u)], global1[_wgslsmith_index_u32(u_input.a.x, 26u)], false, true))))), vec3<bool>(!global1[_wgslsmith_index_u32(0u, 26u)], func_3(vec2<f32>(arg_1, arg_1), vec2<i32>(arg_2, 1i), vec3<u32>(u_input.a.x, global2.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(13348u, 28u)], 28u)])), false))));
    var var_1 = Struct_3(u_input.a.yz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1, 1000f, 988f), vec3<f32>(331f, 354f, arg_1))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, 805f) - vec3<f32>(arg_1, arg_1, 272f)))) + vec3<f32>(-224f, arg_1, 303f)));
    let var_2 = Struct_2(Struct_1(vec3<f32>(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -949f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.b.x)) * arg_1))), -(arg_0 ^ _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2, 12538i, 1i, 11770i), vec4<i32>(-4974i, -2669i, -2147483647i, arg_0), vec4<i32>(arg_2, -4732i, arg_0, arg_0)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 33042i, -10295i, 56719i), vec4<i32>(arg_2, 28865i, 6249i, 2147483647i)))), _wgslsmith_f_op_f32(f32(-1f) * -964f));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * var_1.b.x) + _wgslsmith_div_f32(arg_1, 870f)))));
}

fn func_1() -> StorageBuffer {
    global3 = array<u32, 28>();
    var var_0 = vec3<bool>((_wgslsmith_f_op_f32(trunc(-1033f)) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(-11888i, 157f, -38791i))))) | !all(vec3<bool>(true, true, true)), global1[_wgslsmith_index_u32(1u, 26u)], all(vec4<bool>(select(false, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.x, 28u)], 26u)], true), func_3(vec2<f32>(834f, -914f), vec2<i32>(-2147483647i, 0i), vec3<u32>(global2.x, global2.x, u_input.a.x)), all(vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 26u)], true)), true)) | !((65066u >= global2.x) || !global1[_wgslsmith_index_u32(4294967295u, 26u)]));
    var var_1 = true;
    var var_2 = Struct_3(_wgslsmith_add_vec2_u32(vec2<u32>(global2.x, global2.x) & vec2<u32>(global0.x, ~4294967295u), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(min(vec2<u32>(20747u, 5750u), vec2<u32>(global0.x, u_input.b.x)), ~global0.zx), ~(~u_input.a.yy))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(116f, 1133f, 690f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-543f, -1289f, 796f), _wgslsmith_f_op_vec3_f32(vec3<f32>(301f, 144f, -1499f) - vec3<f32>(358f, -1000f, 646f)), select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 26u)], var_0.x, var_0.x), vec3<bool>(var_0.x, true, true), false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-792f, 412f, -1347f), vec3<f32>(-453f, 100f, 666f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1097f, -1380f) - vec3<f32>(-109f, -1409f, 246f)))), true)));
    let var_3 = false;
    return StorageBuffer(-339f, ~max(_wgslsmith_dot_vec4_i32(vec4<i32>(-10179i, -2147483647i, -2147483647i, 2147483647i), vec4<i32>(-2147483647i, 1i, -15647i, -2147483647i)), 2147483647i), ~_wgslsmith_div_i32(firstTrailingBit(max(0i, 2147483647i)), 84597i), countOneBits(countOneBits(~(~vec2<i32>(0i, -38457i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1302f, _wgslsmith_f_op_f32(f32(-1f) * -340f), _wgslsmith_f_op_f32(-var_2.b.x), var_2.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-277f, -2448f, -527f, -384f))))));
    var var_1 = countOneBits(u_input.a);
    global3 = array<u32, 28>();
    var var_2 = _wgslsmith_sub_vec3_i32(abs(-vec3<i32>(firstLeadingBit(-11736i), ~(-13915i), -2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(max(firstLeadingBit(0i), reverseBits(-22871i)), -max(0i, -9147i), 0i), -vec3<i32>(i32(-1i) * -57236i, ~(-2147483647i), ~(-46926i))));
    var var_3 = _wgslsmith_f_op_f32(min(308f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 1443f))))));
    let var_4 = !any(select(select(!vec2<bool>(global1[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(global0.x, 26u)]), vec2<bool>(true, true), global1[_wgslsmith_index_u32(84124u, 26u)] | global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 28u)], 26u)]), select(select(vec2<bool>(global1[_wgslsmith_index_u32(global2.x, 26u)], global1[_wgslsmith_index_u32(1u, 26u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 26u)]), vec2<bool>(global1[_wgslsmith_index_u32(global2.x, 26u)], false)), select(vec2<bool>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(40897u, 28u)], 26u)], false), vec2<bool>(false, global1[_wgslsmith_index_u32(global2.x, 26u)]), global1[_wgslsmith_index_u32(var_1.x, 26u)]), vec2<bool>(global1[_wgslsmith_index_u32(global2.x, 26u)], global1[_wgslsmith_index_u32(1u, 26u)])), select(select(vec2<bool>(global1[_wgslsmith_index_u32(69467u, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)]), vec2<bool>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5561u, 28u)], 26u)], false), vec2<bool>(global1[_wgslsmith_index_u32(var_1.x, 26u)], true)), !vec2<bool>(global1[_wgslsmith_index_u32(global2.x, 26u)], global1[_wgslsmith_index_u32(var_1.x, 26u)]), !global1[_wgslsmith_index_u32(79636u, 26u)])));
    let var_5 = _wgslsmith_mult_i32(var_2.x, -_wgslsmith_mult_i32(select(_wgslsmith_add_i32(var_2.x, 1i), _wgslsmith_add_i32(28586i, -2147483647i), !var_4), ~reverseBits(-84404i)));
    let x = u_input.a;
    s_output = func_1();
}

