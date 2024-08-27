struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec3<bool>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 12>;

var<private> global1: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(56184u, 2746u, 26612u, 21915u), vec4<u32>(237u, 54520u, 52362u, 84282u));

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(false, 87119u, 4811u, -5539i, vec3<f32>(1000f, -1067f, 438f)), Struct_1(false, 11050u, 1u, 2147483647i, vec3<f32>(1356f, 1705f, 680f)));

var<private> global3: array<i32, 32>;

var<private> global4: Struct_5;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: Struct_3) -> i32 {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(-arg_2.a << (reverseBits(vec4<u32>(38296u, 30158u, 1u, 1u)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(arg_2.a, select(vec4<i32>(57584i, arg_2.a.x, global4.a, -2147483647i), arg_2.a, select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, global4.b.x, true), arg_2.b.x)), arg_2.a)), 0i, firstLeadingBit(60234i));
    var var_1 = min(u_input.c.x, ~(~4294967295u));
    global1 = array<vec4<u32>, 2>();
    var var_2 = Struct_3(arg_2.a & vec4<i32>(-2147483647i, u_input.d, ~select(arg_2.a.x, -1i, true), _wgslsmith_clamp_i32(~2147483647i, -var_0.x, 247i)), global4.b, -58922i);
    let var_3 = vec4<u32>(~u_input.c.x, ~(~reverseBits(~u_input.c.x)), u_input.b.x, ~66470u >> (_wgslsmith_add_u32(75409u, min(u_input.b.x, 84109u) ^ u_input.c.x) % 32u));
    return reverseBits(~(-firstTrailingBit(2147483647i)));
}

fn func_2() -> vec2<bool> {
    var var_0 = global0[_wgslsmith_index_u32(u_input.e, 12u)];
    var var_1 = Struct_5(func_3(_wgslsmith_clamp_vec2_i32(vec2<i32>(-10378i, abs(2490i)), _wgslsmith_mod_vec2_i32(var_0.c.a.zw, vec2<i32>(global3[_wgslsmith_index_u32(var_0.b.x, 32u)], u_input.d) << (vec2<u32>(var_0.a, u_input.b.x) % vec2<u32>(32u))), vec2<i32>(2147483647i ^ u_input.d, var_0.c.c ^ -26596i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global4.d, global4.d) + vec3<f32>(global4.d, global4.d, 564f))))), var_0.c), select(global4.b, select(global4.b, !(!var_0.c.b), select(!vec3<bool>(true, var_0.c.b.x, global4.b.x), select(vec3<bool>(true, false, false), var_0.c.b, true), any(vec2<bool>(global4.b.x, true)))), vec3<bool>(!select(true, false, false), any(vec4<bool>(true, var_0.c.b.x, false, global4.b.x)), any(var_0.c.b.xz))), 2147483647i, _wgslsmith_f_op_f32(global4.d * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global4.d))) * 1010f)));
    global3 = array<i32, 32>();
    var var_2 = _wgslsmith_dot_vec2_i32(var_0.c.a.wy | ((select(var_0.c.a.xz, vec2<i32>(-28680i, -34689i), vec2<bool>(true, var_0.c.b.x)) << (select(vec2<u32>(u_input.b.x, u_input.a.x), u_input.c, vec2<bool>(var_1.b.x, var_0.c.b.x)) % vec2<u32>(32u))) ^ vec2<i32>(abs(2147483647i), -global4.a)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(global4.a ^ 0i, global4.a), vec2<i32>(~(-1i), 7213i), vec2<i32>(var_0.c.c, -var_0.c.a.x)));
    let var_3 = global4.a;
    return global4.b.xz;
}

fn func_1(arg_0: Struct_3) -> Struct_5 {
    global1 = array<vec4<u32>, 2>();
    var var_0 = !all(func_2());
    global2 = array<Struct_1, 2>();
    let var_1 = vec4<bool>(any(!select(!vec3<bool>(false, global4.b.x, false), arg_0.b, arg_0.b)), -1i == _wgslsmith_mult_i32(0i, abs(u_input.d)), false, true);
    let var_2 = global2[_wgslsmith_index_u32(81639u, 2u)];
    return Struct_5(arg_0.a.x, vec3<bool>(!all(vec4<bool>(true, true, true, var_1.x)), !(var_1.x && true) && global4.b.x, var_1.x), u_input.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1711f * global4.d), -592f)))), _wgslsmith_f_op_f32(step(-1910f, -814f)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_5) -> Struct_4 {
    let var_0 = min(_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_mod_u32(u_input.a.x, ~26382u)), ~u_input.c.x) ^ _wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, 0u), _wgslsmith_clamp_u32(u_input.a.x, ~_wgslsmith_dot_vec2_u32(u_input.b.wy, vec2<u32>(17002u, 43235u)), 1u));
    global4 = arg_1;
    let var_1 = global2[_wgslsmith_index_u32(min(reverseBits(u_input.a.x), _wgslsmith_div_u32(15416u, _wgslsmith_dot_vec4_u32(abs(u_input.b), ~u_input.b) << (~4294967295u % 32u))), 2u)];
    var var_2 = ~(151727u ^ firstLeadingBit(var_1.b));
    let var_3 = Struct_2(global2[_wgslsmith_index_u32(16573u, 2u)], _wgslsmith_f_op_vec3_f32(var_1.e + vec3<f32>(_wgslsmith_f_op_f32(-161f + 140f), -1961f, 297f)), global4.d);
    return Struct_4(~_wgslsmith_add_u32(~u_input.e, 4294967295u), global1[_wgslsmith_index_u32(u_input.a.x >> (var_3.a.b % 32u), 2u)], Struct_3(vec4<i32>(global3[_wgslsmith_index_u32(~4384u, 32u)], abs(_wgslsmith_div_i32(77747i, 1i)), ~43543i, 1i), vec3<bool>(global4.b.x, any(global4.b.yx), !(!var_1.a)), i32(-1i) * -1i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 12>();
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global4.d, -934f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1322f, global4.d))))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global4.d)), _wgslsmith_div_f32(-370f, global4.d)), 1203f)), func_1(Struct_3(abs(-vec4<i32>(u_input.d, -2147483647i, global4.c, -1i)), !select(vec3<bool>(false, true, false), global4.b, global4.b.x), ~(-2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u & u_input.b.x, ~19100u), ~7405u), ~118u), global4.d);
}

