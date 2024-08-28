struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: u32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true));

var<private> global1: array<Struct_4, 31>;

var<private> global2: array<i32, 9>;

var<private> global3: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true));

var<private> global4: f32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: Struct_1) -> u32 {
    let var_0 = arg_1.a.a;
    var var_1 = arg_1;
    global1 = array<Struct_4, 31>();
    let var_2 = var_1.b.c;
    var var_3 = all(global0[_wgslsmith_index_u32(1u & reverseBits(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_1.a.c), vec2<u32>(var_1.a.c, var_1.a.c)), 0u)), 9u)]);
    return 1u;
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_4) -> vec3<u32> {
    var var_0 = arg_2.a.a.wx;
    var var_1 = _wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(arg_1.x, 105114u));
    let var_2 = arg_2.b.c;
    global2 = array<i32, 9>();
    var var_3 = var_2;
    return ~_wgslsmith_clamp_vec3_u32(~arg_1, firstLeadingBit(arg_1), arg_1);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: vec2<bool>) -> Struct_1 {
    global4 = arg_1.x;
    var var_0 = i32(-1i) * -9773i;
    var var_1 = (func_4(arg_3.x || true, vec3<u32>(func_3(-1339f, Struct_4(Struct_2(vec4<i32>(2147483647i, -30946i, arg_0.a, arg_0.a), true, u_input.a, true, vec4<f32>(arg_1.x, 832f, -1164f, arg_1.x)), Struct_3(arg_0.a, vec3<bool>(arg_3.x, arg_3.x, false), Struct_1(global2[_wgslsmith_index_u32(0u, 9u)]), 241f, vec3<bool>(true, arg_3.x, true))), arg_0), 1u << (u_input.a % 32u), firstTrailingBit(u_input.a)), global1[_wgslsmith_index_u32(0u, 31u)]) >> (firstTrailingBit(vec3<u32>(_wgslsmith_add_u32(u_input.a, u_input.a), u_input.a, ~u_input.a)) % vec3<u32>(32u))) | _wgslsmith_sub_vec3_u32(((vec3<u32>(u_input.a, u_input.a, 4294967295u) & vec3<u32>(61904u, u_input.a, 26049u)) << (~vec3<u32>(u_input.a, u_input.a, 26971u) % vec3<u32>(32u))) | countOneBits(vec3<u32>(u_input.a, 95059u, u_input.a)), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, 62744u, 25488u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(1u, 0u, 1u))), vec3<u32>(1u, 26620u, 55368u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-arg_1);
    var_2 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -683f), -169f, _wgslsmith_f_op_f32(sign(arg_1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -2609f, 1536f) - vec3<f32>(-1044f, -546f, -1336f)), _wgslsmith_f_op_vec3_f32(-arg_1))) + _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 660f, 153f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, var_2.x, 433f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -1758f, 783f))) * arg_1))));
    return Struct_1(_wgslsmith_add_i32(arg_2.x, ~0i));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>) -> vec2<i32> {
    var var_0 = firstTrailingBit(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(9105i, 1i, arg_2.x) << (~vec3<u32>(arg_1, u_input.a, arg_1) % vec3<u32>(32u)), vec3<i32>(~(-1i), abs(10189i), 26347i)), ~((vec3<i32>(-1i, 0i, global2[_wgslsmith_index_u32(1u, 9u)]) & vec3<i32>(-1i, -1i, global2[_wgslsmith_index_u32(13065u, 9u)])) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 8245u, 1u), vec3<u32>(4294967295u, 4294967295u, arg_1)) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(arg_2), arg_2 | vec2<i32>(66619i, arg_2.x)), -func_2(Struct_1(-49788i), vec3<f32>(-1000f, 1000f, 1937f), vec2<i32>(-50006i, arg_2.x), vec2<bool>(false, false)).a, 32500i)));
    let var_1 = Struct_3(arg_0.a, select(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true), select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), !all(vec3<bool>(true, true, false))), true), func_2(arg_0, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(603f, -1756f, -1151f)))))), arg_2, !select(vec2<bool>(true, true), vec2<bool>(false, true), true)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(-438f))), !(!vec3<bool>(any(vec3<bool>(true, true, false)), false, true)));
    var var_2 = var_0.zy;
    var var_3 = _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, var_2.x, var_0.x), abs(-(vec3<i32>(-40838i, var_1.c.a, 2147483647i) << (_wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(75966u, u_input.a, 0u)) % vec3<u32>(32u)))), _wgslsmith_div_vec3_i32(max(vec3<i32>(countOneBits(2147483647i), -var_0.x, var_0.x), select(~vec3<i32>(arg_0.a, 1i, arg_2.x), ~vec3<i32>(20815i, 9504i, 0i), var_1.e.x || var_1.b.x)), -select(vec3<i32>(-2147483647i, 1i, 32308i), vec3<i32>(-34342i, var_2.x, -2147483647i), vec3<bool>(false, true, true)) ^ vec3<i32>(25810i, _wgslsmith_mult_i32(-6441i, var_2.x), var_0.x << (18602u % 32u))));
    global4 = _wgslsmith_f_op_f32(-var_1.d);
    return -max(((vec2<i32>(global2[_wgslsmith_index_u32(21391u, 9u)], 17688i) | vec2<i32>(global2[_wgslsmith_index_u32(65392u, 9u)], var_2.x)) << ((vec2<u32>(29398u, u_input.a) ^ vec2<u32>(arg_1, 58787u)) % vec2<u32>(32u))) >> (countOneBits(vec2<u32>(arg_1, u_input.a)) % vec2<u32>(32u)), arg_2);
}

fn func_1(arg_0: f32) -> u32 {
    global1 = array<Struct_4, 31>();
    global0 = array<vec4<bool>, 9>();
    var var_0 = vec2<i32>(-1i) * -func_5(func_2(Struct_1(global2[_wgslsmith_index_u32(0u, 9u)]), vec3<f32>(arg_0, -893f, 207f), vec2<i32>(global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(1u, 9u)]) | vec2<i32>(-2147483647i, 2147483647i), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), u_input.a, _wgslsmith_div_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(u_input.a, 9u)]), vec2<i32>(global2[_wgslsmith_index_u32(47234u, 9u)], -9283i)) & ~vec2<i32>(2149i, -2147483647i));
    global2 = array<i32, 9>();
    global2 = array<i32, 9>();
    return ~(_wgslsmith_clamp_u32(~(~u_input.a), 1u, _wgslsmith_sub_u32(~1u, 11180u)) | (~(u_input.a | u_input.a) ^ ~93945u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 27075u), vec3<u32>(50647u, 4294967295u, 0u)), func_1(806f))), _wgslsmith_div_vec3_u32(abs(~vec3<u32>(4294967295u, 158541u, u_input.a)), max(firstTrailingBit(vec3<u32>(1533u, u_input.a, u_input.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)))))), 9u)];
    let var_1 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, 1i >= global2[_wgslsmith_index_u32(1u, 9u)], select(false, true, false)), vec3<bool>(true, false, all(vec4<bool>(false, true, true, true)))), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), global2[_wgslsmith_index_u32(47423u, 9u)] < 69202i), vec3<bool>(true, true, any(vec2<bool>(true, true))));
    global1 = array<Struct_4, 31>();
    global2 = array<i32, 9>();
    var var_2 = vec3<bool>(var_1.x, var_1.x, true);
    global2 = array<i32, 9>();
    global0 = array<vec4<bool>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1769f, -534f, _wgslsmith_f_op_f32(1454f * 179f)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(286f, 1000f, 772f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-976f, 1306f, -408f))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1515f, _wgslsmith_f_op_f32(round(-265f)), _wgslsmith_f_op_f32(sign(936f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-428f, -1215f, 1249f))))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, 607f), _wgslsmith_f_op_f32(round(-754f)), var_1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-743f + -778f) - _wgslsmith_f_op_f32(f32(-1f) * -1189f)), -902f, !var_2.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-168f)), _wgslsmith_div_f32(927f, _wgslsmith_f_op_f32(f32(-1f) * -878f)))), _wgslsmith_sub_vec4_i32(-max(~vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 9u)], 2147483647i, -2597i, global2[_wgslsmith_index_u32(u_input.a, 9u)]), vec4<i32>(global2[_wgslsmith_index_u32(13759u, 9u)], 16186i, global2[_wgslsmith_index_u32(23872u, 9u)], 1i)), firstLeadingBit(~select(vec4<i32>(-2147483647i, -2147483647i, global2[_wgslsmith_index_u32(u_input.a, 9u)], -2258i), vec4<i32>(51282i, global2[_wgslsmith_index_u32(u_input.a, 9u)], -2147483647i, 31661i), false))));
}

