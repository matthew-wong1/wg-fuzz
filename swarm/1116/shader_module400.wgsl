struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
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

var<private> global0: array<vec2<i32>, 18>;

var<private> global1: array<u32, 8>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = -412f >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-414f, _wgslsmith_f_op_f32(sign(818f)))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(1382f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1557f))), -(~countOneBits(reverseBits(u_input.d))), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, firstLeadingBit(_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(1u, 8u)], _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)])))), -491f, u_input.a.x);
    var var_2 = ~_wgslsmith_mod_u32(~u_input.c, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(3289u, 8u)], 99990u, 7807u), vec3<u32>(4294967295u, 57691u, 4294967295u) << (vec3<u32>(u_input.c, var_1.c, 45183u) % vec3<u32>(32u))), ~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(u_input.c, 8u)], 1u, u_input.c)));
    var var_3 = ~(~_wgslsmith_add_vec3_u32(abs(~vec3<u32>(53182u, u_input.c, 46741u)), vec3<u32>(u_input.a.x, 94129u, 1u)));
    var_2 = ~u_input.c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)) - var_1.d);
}

fn func_4(arg_0: vec4<f32>) -> u32 {
    global1 = array<u32, 8>();
    global0 = array<vec2<i32>, 18>();
    global1 = array<u32, 8>();
    let var_0 = Struct_4(select(_wgslsmith_mod_i32(u_input.d, u_input.d), u_input.d, true), -1i);
    var var_1 = firstTrailingBit(_wgslsmith_clamp_vec4_u32(select(~(~vec4<u32>(0u, global1[_wgslsmith_index_u32(68712u, 8u)], u_input.c, u_input.c)), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(74715u, 8u)], 0u, 4294967295u, 11955u)), vec4<u32>(u_input.c, u_input.a.x, u_input.c, 0u)), true), _wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(reverseBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16880u, 8u)], 8u)]), 8u)], 8u)], 8u)], ~16647u, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(24868u, 8u)], u_input.c), ~0u), _wgslsmith_div_vec4_u32(~vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(0u, u_input.c, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 8u)], 8u)]) ^ vec4<u32>(u_input.a.x, 0u, global1[_wgslsmith_index_u32(u_input.a.x, 8u)], 4294967295u))), ~(~vec4<u32>(u_input.c, global1[_wgslsmith_index_u32(54532u, 8u)], 55118u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)]))));
    return var_1.x;
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    global1 = array<u32, 8>();
    global0 = array<vec2<i32>, 18>();
    let var_0 = vec2<bool>(!(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_0.x, 464f)), _wgslsmith_f_op_f32(-2110f - 124f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x))), 325f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))) - 1f));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), -(~2147483647i >> (u_input.c % 32u)), func_4(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-478f - arg_0.x), arg_0.x), _wgslsmith_f_op_f32(func_3()), arg_0.x, _wgslsmith_f_op_f32(-777f + -1137f))), _wgslsmith_f_op_f32(-547f - _wgslsmith_div_f32(-2248f, arg_0.x)), firstLeadingBit(_wgslsmith_clamp_u32(u_input.c, u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 8u)]) ^ (abs(u_input.a.x) & (u_input.a.x & u_input.c))));
    global0 = array<vec2<i32>, 18>();
    return _wgslsmith_dot_vec3_u32(~(~reverseBits(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x))) | vec3<u32>(max(~global1[_wgslsmith_index_u32(u_input.c, 8u)], _wgslsmith_div_u32(3151u, global1[_wgslsmith_index_u32(50792u, 8u)])), global1[_wgslsmith_index_u32(~(~u_input.a.x), 8u)], u_input.c), ~vec3<u32>(0u, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(var_1.e, 8u)], 8u)], _wgslsmith_sub_u32(~var_1.c, 4294967295u)));
}

fn func_1() -> Struct_4 {
    global1 = array<u32, 8>();
    global0 = array<vec2<i32>, 18>();
    global1 = array<u32, 8>();
    let var_0 = true;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(211f)))) - -448f), ~(abs(u_input.b) & 2147483647i), _wgslsmith_sub_u32(countOneBits(~u_input.a.x & u_input.c), 47207u), _wgslsmith_f_op_f32(f32(-1f) * -572f), _wgslsmith_sub_u32(u_input.a.x & u_input.a.x, select(83549u, countOneBits(func_2(vec3<f32>(-246f, -1268f, -110f))), true)));
    return Struct_4(-1900i, abs(var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = array<u32, 8>();
    var var_1 = vec2<bool>((true & !(0u > global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(144879u, 8u)], 8u)])) || !((u_input.a.x << (4294967295u % 32u)) <= ~15158u), !select(all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), true, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))));
    var var_2 = _wgslsmith_div_i32(reverseBits(reverseBits(_wgslsmith_add_i32(~var_0.a, -1i << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)], 8u)] % 32u)))), -firstTrailingBit(_wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.d, u_input.b, u_input.b, 8135i), vec4<i32>(var_0.b, u_input.b, u_input.b, 1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(14858i, 0i, -1i, -1i), vec4<i32>(u_input.b, u_input.b, var_0.b, u_input.d), vec4<i32>(2958i, u_input.d, 6831i, 6771i)))));
    global1 = array<u32, 8>();
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -300f, -664f, -812f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, -1385f, -2006f, _wgslsmith_f_op_f32(step(-2043f, -1041f))))), !(_wgslsmith_mult_i32(u_input.d, u_input.d) == -u_input.b)))));
    var_0 = Struct_4(firstLeadingBit(min(-max(1i, var_0.b), -5579i)), _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(abs(u_input.b)), -465i, max(-1i, var_0.b) ^ var_0.a, (i32(-1i) * -2147483647i) ^ _wgslsmith_mod_i32(var_0.a, -2147483647i)), vec4<i32>(~(i32(-1i) * -15387i), _wgslsmith_sub_i32(-22543i ^ var_0.a, -13545i), _wgslsmith_mod_i32(abs(2147483647i), 1i), ~func_1().a)));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(7883u, global1[_wgslsmith_index_u32(u_input.c, 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)], 8u)], 26170u), vec4<u32>(u_input.a.x, 12466u, 36346u, 0u), ~vec4<u32>(u_input.a.x, 0u, u_input.c, global1[_wgslsmith_index_u32(u_input.c, 8u)])), ~(vec4<u32>(u_input.a.x, 40222u, 115145u, 1u) & vec4<u32>(57469u, global1[_wgslsmith_index_u32(u_input.a.x, 8u)], 78178u, u_input.a.x))), _wgslsmith_mult_u32(u_input.c, min(1u, u_input.c))), 8u)]);
}

