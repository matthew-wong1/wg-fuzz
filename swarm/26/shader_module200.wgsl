struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(15259u, vec4<bool>(true, true, true, true), 1u);

var<private> global2: vec4<i32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    var var_0 = ~1u;
    global2 = ~select(u_input.a, _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global2.x, global2.x, 1i, 2161i), u_input.a) | _wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(-16206i, u_input.a.x, 0i, u_input.a.x), vec4<i32>(4403i, 1i, -32304i, 0i)), u_input.a), any(select(!global0.b, vec4<bool>(false, global1.b.x, true, true), vec4<bool>(arg_2.b.x, arg_2.b.x, false, true))));
    global1 = arg_2;
    var var_1 = Struct_4(global0.b, -2147483647i, ~_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.c.zz), u_input.a.x, select(-1i, global2.x, false), global2.x), vec4<i32>(u_input.a.x, global2.x, _wgslsmith_dot_vec3_i32(u_input.a.yxx, vec3<i32>(global2.x, 0i, -2147483647i)), -1i), vec4<i32>(global2.x, global2.x, 2147483647i, i32(-1i) * -25247i)), global1.a);
    var var_2 = all(select(var_1.a.xxy, select(global0.b.yyw, !select(global1.b.xyx, vec3<bool>(global0.b.x, global0.b.x, false), var_1.a.zzz), !vec3<bool>(global1.b.x, arg_2.b.x, arg_2.b.x)), false));
    return abs(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(firstLeadingBit(u_input.b.wyw), firstTrailingBit(vec3<u32>(global0.a, global1.c, 0u))), vec3<u32>(global0.c, var_1.d ^ global0.c, 18758u)));
}

fn func_2(arg_0: f32) -> Struct_4 {
    var var_0 = _wgslsmith_sub_u32(func_3(-137f, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, arg_0, 390f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0, 1004f, arg_0)))) * vec3<f32>(_wgslsmith_div_f32(-465f, arg_0), 1788f, _wgslsmith_f_op_f32(floor(-483f)))), Struct_1(~global0.a, global0.b, 4294967295u)), _wgslsmith_mult_u32(abs(15846u), 1u));
    let var_1 = arg_0;
    let var_2 = Struct_1(u_input.d.x & firstLeadingBit(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 37539u, global0.c, global0.c), u_input.b))), select(global1.b, vec4<bool>(any(select(global0.b.zxx, global0.b.yyx, global0.b.xyy)), global1.b.x, all(select(global1.b, vec4<bool>(global0.b.x, global0.b.x, global1.b.x, true), vec4<bool>(true, global0.b.x, global0.b.x, global1.b.x))), global1.b.x), !global1.b), 4234u);
    var var_3 = var_1;
    var var_4 = ~(~global0.a);
    return Struct_4(!global1.b, _wgslsmith_dot_vec3_i32(global2.wxx, abs(firstTrailingBit(u_input.c << (vec3<u32>(14873u, 0u, 4294967295u) % vec3<u32>(32u))))), vec4<i32>(u_input.a.x, _wgslsmith_add_i32(-22041i, countOneBits(global2.x) | -16222i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a.x) ^ global2.zz, _wgslsmith_mod_vec2_i32(vec2<i32>(global2.x, global2.x), global2.zy)) | select(_wgslsmith_clamp_i32(u_input.a.x, 1i, u_input.a.x), -2147483647i, global0.b.x), (_wgslsmith_mod_i32(global2.x, -2147483647i) ^ -9946i) >> (abs(var_2.c) % 32u)), ~global0.a);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4) -> Struct_3 {
    var var_0 = Struct_2(Struct_1(1u, func_2(863f).a, _wgslsmith_sub_u32(~_wgslsmith_add_u32(u_input.b.x, u_input.b.x), arg_0.x)), true, _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(_wgslsmith_sub_u32(abs(~arg_0.x), _wgslsmith_sub_u32(global1.c & 75777u, 0u)), select(arg_1.a, arg_1.a, vec4<bool>(all(arg_1.a), true, true, true)), ~1u), _wgslsmith_div_f32(1277f, -610f));
    let var_1 = all(global1.b.yzy);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(338f, -1186f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(413f)), -340f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-212f, var_0.e)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.c))))));
    return Struct_3(func_2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(max(var_0.c, var_0.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2)), var_0.c), var_0.b | !global1.b.x))).a.yy);
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: Struct_4) -> Struct_1 {
    var var_0 = global1.b.ww;
    global2 = ~u_input.a;
    global1 = Struct_1(~abs(7475u), func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1))), arg_1))).a, 0u);
    let var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(firstLeadingBit(global2.x) & arg_2.b, arg_2.c.x), -arg_2.c.wy, vec2<i32>(u_input.c.x, min(-2529i >> (global1.c % 32u), arg_2.b >> (select(global1.c, global1.c, arg_2.a.x) % 32u))));
    global1 = Struct_1(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 4294967295u, global0.c)), max(vec3<u32>(global0.a, 1u, 35267u), vec3<u32>(arg_2.d, global0.a, 28139u))) >> (0u % 32u), global1.b, 23452u);
    return Struct_1(~abs(u_input.d.x), !select(vec4<bool>(true, -38i != global2.x, arg_2.a.x, all(global0.b)), !select(arg_2.a, vec4<bool>(true, true, true, global1.b.x), true), func_2(_wgslsmith_f_op_f32(-arg_1)).a), firstLeadingBit(arg_2.d));
}

fn func_1(arg_0: vec2<bool>) -> bool {
    global2 = ~(~u_input.a);
    global1 = func_5(func_4(vec4<u32>(_wgslsmith_clamp_u32(global0.a, firstTrailingBit(u_input.b.x), ~4294967295u), ~4294967295u ^ _wgslsmith_dot_vec3_u32(u_input.b.zwy, u_input.d), ~25866u, u_input.b.x), func_2(_wgslsmith_f_op_f32(round(1105f)))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1025f, 1991f, true)) - _wgslsmith_f_op_f32(-795f - -206f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1799f * 1746f), -1164f)))), Struct_4(global0.b, 45152i, u_input.a, 6565u));
    global2 = ~reverseBits(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-736f * -938f))).c);
    let var_0 = select(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(firstLeadingBit(select(vec3<u32>(global0.c, global1.c, global1.a), vec3<u32>(global0.c, u_input.b.x, 65134u), vec3<bool>(global1.b.x, true, false))), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(global1.c, 23635u, u_input.d.x)), vec3<u32>(11793u, u_input.b.x, u_input.b.x))), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~u_input.b.yzz, vec3<u32>(u_input.b.x, u_input.d.x, global1.c) >> (u_input.b.xwx % vec3<u32>(32u))), u_input.d), _wgslsmith_div_vec3_u32(vec3<u32>(30257u, 9781u, 1u), ~u_input.b.xzy) | u_input.d), u_input.b.xyy, true);
    global0 = func_5(func_4(select(u_input.b, vec4<u32>(u_input.b.x, 70884u, global1.c, 32815u) ^ u_input.b, any(vec4<bool>(arg_0.x, global1.b.x, true, false))) & select(~vec4<u32>(34623u, 4294967295u, global0.a, var_0.x), min(vec4<u32>(1u, 62606u, 0u, u_input.d.x), vec4<u32>(u_input.d.x, var_0.x, global1.c, global0.c)), false), func_2(_wgslsmith_f_op_f32(round(-912f)))), 549f, Struct_4(func_5(func_4(vec4<u32>(1u, 46078u, 0u, 0u), Struct_4(vec4<bool>(true, true, arg_0.x, false), -67957i, vec4<i32>(u_input.c.x, 56728i, u_input.a.x, 23963i), 4294967295u)), -629f, Struct_4(!global0.b, u_input.a.x ^ -1i, abs(vec4<i32>(-1i, u_input.a.x, -40814i, -14963i)), u_input.b.x)).b, 1i, vec4<i32>(-1i, ~firstLeadingBit(global2.x), _wgslsmith_mod_i32(-2147483647i, global2.x) >> (_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(4294967295u, u_input.d.x, 4294967295u, global0.c)) % 32u), firstTrailingBit(_wgslsmith_div_i32(global2.x, u_input.c.x))), _wgslsmith_div_u32(reverseBits(1u), u_input.d.x)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global1.a, !(!vec4<bool>(global1.b.x, global1.b.x, true, !global1.b.x)), ~4294967295u);
    let var_0 = !select(!select(vec3<bool>(false, global0.b.x, global0.b.x), global0.b.zww, global2.x < 0i), vec3<bool>(true, true, true), !all(global1.b.xwx));
    let var_1 = firstLeadingBit(~(~_wgslsmith_add_i32(0i, ~u_input.c.x)));
    global0 = Struct_1(abs(u_input.d.x), vec4<bool>(var_0.x, var_0.x, global1.b.x, global1.b.x), ~abs(_wgslsmith_sub_u32(6392u, ~4294967295u)));
    var var_2 = Struct_1(~(~38379u), select(vec4<bool>(any(global0.b), func_1(global1.b.xz), func_4(abs(vec4<u32>(u_input.b.x, global0.c, global1.a, global0.c)), func_2(506f)).a.x, true), !vec4<bool>(select(global0.b.x, global1.b.x, global1.b.x), !global0.b.x, true, true), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -811f) - _wgslsmith_f_op_f32(-594f - -1128f))).a), ~0u);
    let var_3 = func_2(436f);
    let var_4 = vec3<bool>(all(vec3<bool>(false, true, true)) != select(global0.b.x, _wgslsmith_f_op_f32(floor(1162f)) > _wgslsmith_f_op_f32(-1000f - 1002f), global0.b.x), !(618f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-637f)))), var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mult_u32(global0.c, _wgslsmith_sub_u32(_wgslsmith_mult_u32(global1.a, var_2.c), ~global0.a))));
}

