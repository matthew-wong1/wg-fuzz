struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 13>;

var<private> global1: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec4<u32>(0u, 5245u, 1u, 4294967295u), 41847u), Struct_3(vec4<u32>(45577u, 1u, 0u, 0u), 17132u), Struct_3(vec4<u32>(1u, 2142u, 4294967295u, 1u), 16650u), Struct_3(vec4<u32>(0u, 0u, 66858u, 75563u), 58087u), Struct_3(vec4<u32>(7650u, 36183u, 32453u, 4294967295u), 11252u), Struct_3(vec4<u32>(7236u, 4294967295u, 10986u, 0u), 0u), Struct_3(vec4<u32>(20864u, 33501u, 1u, 1u), 113399u), Struct_3(vec4<u32>(10560u, 50293u, 0u, 4294967295u), 4294967295u), Struct_3(vec4<u32>(82935u, 57034u, 4294967295u, 4294967295u), 0u), Struct_3(vec4<u32>(2321u, 1u, 14717u, 4294967295u), 98584u), Struct_3(vec4<u32>(4294967295u, 53733u, 108762u, 0u), 14856u), Struct_3(vec4<u32>(4294967295u, 4294967295u, 30254u, 4294967295u), 28144u), Struct_3(vec4<u32>(4294967295u, 8662u, 1920u, 4294967295u), 4294967295u), Struct_3(vec4<u32>(0u, 1u, 44505u, 4294967295u), 16980u), Struct_3(vec4<u32>(0u, 1u, 1u, 7315u), 62204u), Struct_3(vec4<u32>(4294967295u, 47033u, 4294967295u, 1u), 49656u), Struct_3(vec4<u32>(2276u, 1u, 71152u, 75752u), 51525u));

var<private> global2: Struct_2;

var<private> global3: vec4<f32>;

var<private> global4: array<f32, 8>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> f32 {
    global1 = array<Struct_3, 17>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(36992u, 8u)]), _wgslsmith_f_op_f32(2314f * global2.a.x)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.a.x, global3.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 8u)], -1187f)))))), vec2<f32>(662f, 720f));
    var var_1 = !all(global2.e);
    var_0 = _wgslsmith_f_op_vec2_f32(-global3.yy);
    let var_2 = select(select(global2.e.yxx, !select(select(global2.e.wxz, global2.e.xyw, false), !global2.e.www, !global2.e.yyx), select(select(!vec3<bool>(global2.e.x, true, false), vec3<bool>(global2.e.x, false, global2.e.x), any(vec3<bool>(global2.e.x, false, global2.e.x))), vec3<bool>(1i == global2.c.x, true, all(global2.e.zy)), !vec3<bool>(global2.e.x, true, global2.e.x))), global2.e.wwx, any(global2.e.yy));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-204f))), _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(1277f * global2.a.x))) - global4[_wgslsmith_index_u32(select(select(u_input.a.x, 10941u, !(u_input.c == 4294967295u)), firstLeadingBit(u_input.c ^ 1u), false), 8u)]);
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: u32, arg_3: bool) -> Struct_2 {
    global2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-974f, arg_1, -1176f), global2.a)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, 261f, -496f))), global2.a, false))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global2.a, vec3<f32>(596f, 652f, -1000f), true))))), -7168i, countOneBits(_wgslsmith_mult_vec4_i32(select(_wgslsmith_sub_vec4_i32(global0[_wgslsmith_index_u32(u_input.c, 13u)], global0[_wgslsmith_index_u32(0u, 13u)]), abs(global2.c), global2.e), -vec4<i32>(-2147483647i, 2147483647i, -32439i, 22381i) | vec4<i32>(-1i, global2.b, global2.d.x, 10736i))), abs(-vec2<i32>(firstTrailingBit(-1i), -global2.d.x)), !global2.e);
    return Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, global2.a.x)), 1f), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.a.x), arg_1, true)), _wgslsmith_f_op_f32(global2.a.x - _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(~104983u, 8u)] - global3.x))), global2.d.x, -((countOneBits(global0[_wgslsmith_index_u32(2554u, 13u)]) | vec4<i32>(1i, -35284i, 1i, global2.d.x)) | global2.c), vec2<i32>(-58449i, _wgslsmith_mult_i32(global2.d.x, -1i)) >> (vec2<u32>(1u, abs(_wgslsmith_mod_u32(4294967295u, u_input.b.x))) % vec2<u32>(32u)), select(vec4<bool>(!(true & arg_3), false, !select(false, global2.e.x, true), !arg_3 && arg_3), vec4<bool>(arg_3, select(all(global2.e.wz), !global2.e.x, true), global2.e.x, global2.e.x), !select(!vec4<bool>(arg_3, global2.e.x, global2.e.x, false), select(global2.e, vec4<bool>(true, false, false, global2.e.x), true), !global2.e)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = vec4<bool>(true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-749f + _wgslsmith_div_f32(global4[_wgslsmith_index_u32(u_input.a.x, 8u)], 1097f)))) > 273f, all(!(!global2.e)), all(vec2<bool>(true, true)));
    let var_2 = func_2(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, ~54589u), 0u), u_input.c), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global3.x, -171f)))), ~(~(~(u_input.a.x << (1u % 32u)))), all(vec2<bool>(all(global2.e.xyy), !(u_input.b.x != 1u))));
    var var_3 = !(!vec2<bool>(true, ~0u <= _wgslsmith_div_u32(u_input.a.x, 30580u)));
    let var_4 = _wgslsmith_f_op_f32(step(global2.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global2.a.x))))));
    return Struct_1(vec3<u32>(_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(u_input.c, 4294967295u), u_input.b.x, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(16727u, 0u, 1u, u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 12924u, 58636u)))), u_input.c, 1u), 22186i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1381f, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(37298u, 8u)], global4[_wgslsmith_index_u32(4294967295u, 8u)])), 512f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a.xy) - var_2.a.zx))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_2.a.yy), vec2<f32>(-209f, 1000f)))), select(!(!var_2.e.yw), select(select(global2.e.wy, vec2<bool>(var_3.x, global2.e.x), var_2.e.xw), vec2<bool>(true, true), 29817i > var_2.b), var_1.yy))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>, arg_3: i32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(func_2(~_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(arg_2.x, u_input.a.x)), global3.x, 4294967295u, any(select(vec3<bool>(arg_1, true, arg_1), global2.e.zww, vec3<bool>(true, arg_1, false)))).a, vec3<f32>(1314f, _wgslsmith_f_op_f32(min(arg_0.d.x, _wgslsmith_div_f32(2484f, -285f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.a.x)))), !(any(global2.e.wwz) & true))));
    global0 = array<vec4<i32>, 13>();
    let var_1 = global2.b;
    let var_2 = func_2(reverseBits(min(arg_0.a.yy, _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 15028u), arg_0.a.xx), vec2<u32>(1u, 34443u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(arg_0.d.x * -275f))) + -755f), func_1(-1i).a.x >> (u_input.a.x % 32u), all(global2.e));
    let var_3 = arg_0.c.xyz;
    return ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a.x, u_input.c, arg_2.x, 1u) << (vec4<u32>(arg_2.x, u_input.b.x, arg_2.x, arg_0.a.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.x, 30820u, u_input.b.x, arg_0.a.x), vec4<u32>(arg_0.a.x, arg_0.a.x, 29295u, u_input.a.x)))) << (_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~(~vec4<u32>(49706u, 45740u, 37687u, arg_2.x)), countOneBits(reverseBits(vec4<u32>(u_input.c, 35842u, arg_0.a.x, 0u)))), ~abs(~vec4<u32>(arg_2.x, arg_0.a.x, 30089u, arg_0.a.x))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstLeadingBit(func_4(func_1(~global2.b), !(global2.e.x && global2.e.x), vec3<u32>(20569u, u_input.c, u_input.a.x) | (vec3<u32>(u_input.c, u_input.b.x, 44790u) | vec3<u32>(u_input.b.x, 0u, 46549u)), -1i));
    global4 = array<f32, 8>();
    var_0 = func_4(Struct_1(func_4(Struct_1(abs(var_0.xxz), _wgslsmith_sub_i32(global2.b, global2.b), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, 977f, -581f, global3.x), vec4<f32>(528f, 1000f, 760f, 759f), global2.e)), vec2<f32>(313f, -1075f)), true, var_0.xxz, 30517i).ywz, _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(firstLeadingBit(global2.c), global0[_wgslsmith_index_u32(u_input.c, 13u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.a.x, global4[_wgslsmith_index_u32(39267u, 8u)], global4[_wgslsmith_index_u32(var_0.x, 8u)], global2.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(4294967295u, 8u)], global4[_wgslsmith_index_u32(0u, 8u)], global2.a.x, -1044f) * vec4<f32>(268f, global3.x, 833f, 167f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 8u)]), _wgslsmith_f_op_f32(select(global2.a.x, global4[_wgslsmith_index_u32(var_0.x, 8u)], global2.e.x))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1168f, global4[_wgslsmith_index_u32(var_0.x, 8u)])), vec2<f32>(global4[_wgslsmith_index_u32(u_input.c, 8u)], -373f), true)))), global2.e.x, var_0.zwz, firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_clamp_i32(abs(global2.c.x), -5587i, ~global2.c.x), global2.c.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(406f, -414f, global2.a.x, -483f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 8u)], global3.x, -404f, 1708f), vec4<f32>(global4[_wgslsmith_index_u32(0u, 8u)], global3.x, 480f, -312f), global2.e)))))));
    var var_2 = func_2(vec2<u32>(1u, ~abs(u_input.a.x)), var_1.x, ~0u, true);
    let var_3 = Struct_1(countOneBits(vec3<u32>(_wgslsmith_dot_vec2_u32(func_4(Struct_1(var_0.wxx, 0i, vec4<f32>(311f, var_1.x, 471f, 2092f), global3.wy), var_2.e.x, vec3<u32>(61760u, 1u, u_input.b.x), global2.b).zw, u_input.a), ~(~4294967295u), _wgslsmith_div_u32(59492u, 22371u))), -2147483647i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(1047f)), var_2.a.x, _wgslsmith_f_op_f32(676f * -1345f), 1987f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3()), func_1(2147483647i).d.x, _wgslsmith_div_f32(363f, 690f), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(77874u, 8u)]))), vec4<bool>(global2.e.x, func_2(vec2<u32>(u_input.a.x, 1u), 608f, 4294967295u, var_2.e.x).e.x != var_2.e.x, false, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-1233f)), _wgslsmith_f_op_f32(step(global2.a.x, 973f))) - func_1(-global2.d.x).d)));
    let var_4 = Struct_1(var_3.a, -1i, vec4<f32>(-2435f, var_3.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * var_2.a.x) + global2.a.x), -936f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(265f, _wgslsmith_f_op_f32(select(global3.x, global2.a.x, true))) + global4[_wgslsmith_index_u32(~59515u, 8u)]), -315f));
    var var_5 = Struct_3(~(~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, var_0.x, 0u, u_input.a.x), vec4<u32>(1u, 1u, var_4.a.x, var_4.a.x) & vec4<u32>(22176u, var_4.a.x, 1u, var_4.a.x))), ~1u);
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<u32>(~u_input.c, var_5.b, countOneBits(var_4.a.x)) ^ (firstTrailingBit(vec3<u32>(var_4.a.x, var_4.a.x, var_0.x)) << (vec3<u32>(u_input.c, var_3.a.x, 4294967295u) % vec3<u32>(32u)))), var_3.c.xwz, -var_2.c);
}

