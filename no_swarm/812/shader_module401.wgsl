struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 7> = array<vec3<i32>, 7>(vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec3<i32>(0i, -1i, 2147483647i), vec3<i32>(7852i, 1i, 8542i), vec3<i32>(0i, -79070i, -1i), vec3<i32>(2147483647i, -63880i, 0i), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(40380i, 1i, 1i));

var<private> global1: i32;

var<private> global2: vec4<f32>;

var<private> global3: array<Struct_3, 17>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_3) -> bool {
    var var_0 = u_input.c;
    var var_1 = firstTrailingBit(vec4<u32>(arg_2.b.c, u_input.c, 1u, u_input.c)) & _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.a.b, arg_2.a.b, ~0u, 73388u), ~countOneBits(firstLeadingBit(vec4<u32>(21720u, arg_2.b.b, arg_2.b.b, 11343u))));
    var var_2 = ~var_1.ww;
    var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 0u), vec2<u32>(80443u, arg_2.b.b)), ~abs(13024u), 16348u), select(arg_2.a.c, u_input.a.x, false), ((u_input.b ^ 27408u) >> (1u % 32u)) | ~1u, u_input.b), select(vec4<u32>(firstTrailingBit(arg_2.b.c), abs(~1u), _wgslsmith_mult_u32(~49848u, var_2.x), reverseBits(u_input.c)), ~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, 1u, 4294967295u, 0u), vec4<u32>(u_input.b, 49785u, var_1.x, 38735u)), vec4<u32>(var_1.x, 22744u, 25622u, 1u)), arg_2.a.a.x));
    let var_3 = u_input.a;
    return arg_2.c.b;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.a.x, _wgslsmith_div_f32(-593f, _wgslsmith_f_op_f32(-arg_0.a.d)), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.b.d, 139f))))) + vec4<f32>(arg_0.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1257f - 1000f), arg_0.c.a.x, func_3(arg_1.x, 113f, Struct_3(arg_0.a, Struct_1(vec4<bool>(true, arg_0.c.b, arg_0.a.a.x, arg_0.b.a.x), 72091u, 0u, global2.x), Struct_2(global2.xx, arg_0.c.b)))))), 451f, _wgslsmith_f_op_f32(sign(global2.x))));
    var var_0 = arg_0.a.b;
    let var_1 = vec2<bool>(false, all(select(arg_0.a.a.wzy, select(!arg_0.b.a.wwx, arg_0.a.a.zxx, select(vec3<bool>(true, arg_0.a.a.x, arg_0.b.a.x), arg_0.b.a.wwy, vec3<bool>(arg_0.c.b, arg_0.c.b, arg_0.b.a.x))), vec3<bool>(all(arg_0.a.a.wzx), false, true))));
    let var_2 = !select(!vec4<bool>(true, arg_0.b.a.x | false, false, true), !arg_0.a.a, any(arg_0.b.a) | false);
    let var_3 = ~(~_wgslsmith_div_u32(u_input.a.x, 0u));
    return Struct_1(var_2, 4294967295u, reverseBits(arg_0.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global3 = array<Struct_3, 17>();
    let var_0 = Struct_1(select(!select(!vec4<bool>(false, true, arg_0.a.x, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_1.a.x, false, arg_0.a.x), func_2(global3[_wgslsmith_index_u32(1u, 17u)], vec3<i32>(16103i, -1i, 33183i)).a), arg_0.a, !arg_1.a), abs(_wgslsmith_sub_u32(max(4294967295u, 0u), _wgslsmith_sub_u32(arg_0.b, arg_0.c))) | _wgslsmith_sub_u32(~4294967295u, ~select(arg_0.c, 1u, arg_1.a.x)), ~arg_1.b, _wgslsmith_f_op_f32(-742f * _wgslsmith_f_op_f32(arg_0.d - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-674f, -453f) + 650f))));
    var var_1 = false;
    global3 = array<Struct_3, 17>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d * _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.d, var_0.d), global2.x)) * _wgslsmith_f_op_f32(-arg_0.d));
    return arg_0.d;
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(arg_0.b.a, u_input.b, ~3392u, _wgslsmith_f_op_f32(-arg_0.c.a.x)), Struct_1(vec4<bool>(arg_0.a.a.x, true, any(vec2<bool>(false, arg_0.b.a.x)) || (arg_0.a.a.x || true), true), abs(arg_0.b.c), _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 44870u, arg_0.a.b), vec4<u32>(arg_0.a.c, 20614u, arg_0.a.c, 93u)), 0u), _wgslsmith_div_f32(arg_0.b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1775f))))), arg_0.c);
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.x)))), global2.x), all(select(vec4<bool>(!arg_0.c.b, false, !var_0.a.a.x, true), vec4<bool>(!var_0.b.a.x, true, var_0.c.b, all(arg_0.a.a.zwz)), select(false, true, var_0.a.a.x))));
    let var_2 = Struct_1(vec4<bool>(abs(96790u) >= ~(~arg_0.a.c), !var_0.c.b, all(!vec4<bool>(true, var_0.b.a.x, true, false)), arg_0.a.a.x), _wgslsmith_add_u32(28849u, var_0.b.c), 27286u, _wgslsmith_f_op_f32(func_4(func_2(global3[_wgslsmith_index_u32(0u, 17u)], ~vec3<i32>(-2147483647i, 46658i, 0i)), arg_0.a)));
    let var_3 = vec2<i32>(_wgslsmith_mult_i32(~firstLeadingBit(1i), 0i), min(~1i, _wgslsmith_sub_i32(2147483647i, abs(select(5255i, 2147483647i, true)))));
    let var_4 = arg_0;
    return func_2(Struct_3(Struct_1(var_0.b.a, reverseBits(_wgslsmith_mult_u32(arg_0.b.c, var_2.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_2.b, 1u, 108610u), vec4<u32>(1u, 0u, 1u, 54740u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-517f, var_4.a.d)))), var_2, var_4.c), abs(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(global0[_wgslsmith_index_u32(1u, 7u)], vec3<i32>(2147483647i, var_3.x, 35014i)), -global0[_wgslsmith_index_u32(1u, 7u)]) >> (firstTrailingBit(vec3<u32>(15166u, arg_0.a.b, 4294967295u)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global3[_wgslsmith_index_u32(u_input.b, 17u)]);
    let var_1 = max(~(min(vec4<u32>(51076u, 1u, 4294967295u, u_input.b), ~vec4<u32>(83881u, 4294967295u, var_0.b, u_input.a.x)) << (countOneBits(reverseBits(vec4<u32>(16542u, u_input.b, var_0.b, 4294967295u))) % vec4<u32>(32u))), vec4<u32>(1u, var_0.c, ~u_input.a.x ^ 4294967295u, 0u) >> (vec4<u32>(firstLeadingBit(firstTrailingBit(66006u)), u_input.a.x, u_input.b >> (1251u % 32u), _wgslsmith_mod_u32(var_0.b, firstTrailingBit(75058u))) % vec4<u32>(32u)));
    var var_2 = Struct_4(func_1(global3[_wgslsmith_index_u32(21305u, 17u)]), reverseBits(~vec2<u32>(var_1.x, select(u_input.a.x, 0u, false))), u_input.a, global2.wy);
    global0 = array<vec3<i32>, 7>();
    global2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.x, -1387f, global2.x, -576f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.d, var_0.d, -316f, 1308f))))) - vec4<f32>(_wgslsmith_f_op_f32(var_2.d.x + var_2.d.x), _wgslsmith_div_f32(-871f, -487f), _wgslsmith_f_op_f32(round(global2.x)), _wgslsmith_f_op_f32(-1213f + var_2.a.d))), var_0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.x, var_0.d, -689f, global2.x)) * vec4<f32>(-476f, global2.x, 504f, var_2.a.d)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, var_2.d.x, -1452f, var_2.d.x)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.d.x, var_2.a.d, var_2.d.x, 1457f))))))));
    var var_3 = Struct_4(func_1(global3[_wgslsmith_index_u32(max(4294967295u, 1u), 17u)]), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(var_2.b, ~reverseBits(vec2<u32>(4736u, var_0.b))), u_input.a, u_input.a), ~(~vec2<u32>(func_1(Struct_3(var_0, var_2.a, Struct_2(vec2<f32>(1084f, var_2.a.d), false))).b, var_1.x)), vec2<f32>(943f, var_0.d));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -586f)), global2.x, 1176f, -1844f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.d.x * var_0.d), -1752f))), var_0.d, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.d, -1067f), _wgslsmith_f_op_f32(round(689f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-456f, 1062f, false)))), -1342f), _wgslsmith_mult_vec2_u32(select(~vec2<u32>(var_0.c, 31237u), abs(min(u_input.a, vec2<u32>(1u, var_3.c.x))), vec2<bool>(any(vec3<bool>(true, false, false)), select(true, true, var_3.a.a.x))), var_3.b), ~(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, var_1.x, var_3.c.x, var_1.x), vec4<u32>(75217u, 0u, var_2.a.c, 68504u), var_1), vec4<u32>(54313u, 0u, var_2.a.b, var_3.a.b)) & select(vec4<u32>(var_0.b, 4294967295u, 4294967295u, 50584u), ~var_1, vec4<bool>(false, var_3.a.a.x, false, var_2.a.a.x))));
}

