struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
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

var<private> global0: bool = true;

var<private> global1: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(0i, -11095i, 37801i, -3789i), vec4<i32>(-1i, -44866i, -55200i, -1122i), vec4<i32>(-30557i, 81062i, -37717i, 17560i), vec4<i32>(-18624i, 42318i, -1i, 2147483647i), vec4<i32>(i32(-2147483648), 5010i, -17627i, 68231i), vec4<i32>(3794i, 51158i, 1i, -1i), vec4<i32>(1i, -35243i, 1i, -1i), vec4<i32>(i32(-2147483648), 44158i, 43702i, 1i), vec4<i32>(-21530i, 0i, 33109i, 28431i), vec4<i32>(2147483647i, 18902i, -17174i, 0i), vec4<i32>(1i, -39831i, 31194i, 23696i), vec4<i32>(i32(-2147483648), 2147483647i, 0i, 23784i));

var<private> global2: array<u32, 2>;

var<private> global3: i32 = 1i;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> u32 {
    global2 = array<u32, 2>();
    let var_0 = Struct_1(!(1u > ((global2[_wgslsmith_index_u32(0u, 2u)] & 0u) | _wgslsmith_add_u32(55189u, global2[_wgslsmith_index_u32(5782u, 2u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1891f)), -1089f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(955f))) + 1601f)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(121f)) - _wgslsmith_f_op_f32(f32(-1f) * -541f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1857f)))), min(firstLeadingBit(47373u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(17651u, 0u), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)], 2u)], 24203u)), select(_wgslsmith_mod_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(110844u, 2u)], 2u)], 45898u), vec2<u32>(global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)])), firstLeadingBit(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 2u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 2u)])), vec2<bool>(true, true))), 2u)], 2u)]));
    return var_0.e;
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    let var_0 = Struct_2(arg_0, arg_0.x, max(26256u, arg_0.x), Struct_1(all(vec4<bool>(true, true, true, true)) || false, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -393f) + -667f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -973f))))), !any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), true)), _wgslsmith_f_op_f32(-1908f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * -1380f)), 13196u));
    var var_1 = var_0.d;
    global2 = array<u32, 2>();
    return 0u;
}

fn func_4(arg_0: u32, arg_1: u32) -> i32 {
    var var_0 = u_input.a.x;
    var var_1 = Struct_2(abs(firstLeadingBit(vec2<u32>(arg_0, 42412u))) & vec2<u32>(~(2093u & arg_1), 4294967295u & arg_1), ~_wgslsmith_add_u32(~(4294967295u ^ arg_0), 4603u), arg_0, Struct_1(!any(vec3<bool>(false, true, true)) != true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -933f) + _wgslsmith_f_op_f32(-1329f - 347f))), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, -1584f, true)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-886f + -2318f)))), max(8484u, arg_0)));
    var var_2 = select(select(!vec4<bool>(true, var_1.d.c, any(vec4<bool>(true, false, false, var_1.d.a)), var_1.d.a), select(!vec4<bool>(var_1.d.c, true, false, var_1.d.c), vec4<bool>(-2147483647i < u_input.a.x, !var_1.d.c, all(vec2<bool>(true, var_1.d.c)), true), any(!vec2<bool>(var_1.d.c, var_1.d.c))), select(!select(vec4<bool>(true, var_1.d.a, false, var_1.d.c), vec4<bool>(var_1.d.c, var_1.d.c, var_1.d.c, false), var_1.d.c), vec4<bool>(any(vec3<bool>(false, true, true)), var_1.d.c, all(vec4<bool>(var_1.d.a, var_1.d.c, false, var_1.d.a)), true), any(select(vec3<bool>(var_1.d.a, var_1.d.c, true), vec3<bool>(var_1.d.a, var_1.d.a, true), vec3<bool>(true, var_1.d.c, var_1.d.a))))), vec4<bool>(true, false, false, var_1.d.c), !var_1.d.a);
    var var_3 = var_1.d;
    var var_4 = !var_2.zzy;
    return firstLeadingBit(abs(u_input.a.x));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global2 = array<u32, 2>();
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.d.d, arg_0.d.d)));
    var var_1 = vec3<u32>(19206u, ~func_2(), func_2());
    var var_2 = -func_4(15310u, _wgslsmith_mod_u32(max(~global2[_wgslsmith_index_u32(arg_0.d.e, 2u)], func_3(arg_0.a)), arg_0.c));
    global3 = u_input.a.x;
    return arg_0.d;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: vec3<bool>) -> vec3<bool> {
    var var_0 = 8484i;
    let var_1 = select(arg_2.c, ~(arg_0.e ^ 0u), false);
    global0 = false;
    let var_2 = global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec2_u32(arg_2.a, max(arg_2.a, _wgslsmith_mult_vec2_u32(arg_2.a, vec2<u32>(4294967295u, 95387u)) & (arg_2.a & arg_2.a))), var_1), 12u)];
    var_0 = _wgslsmith_add_i32(~(~(~(~(-6442i)))), -58614i);
    return vec3<bool>(arg_2.d.a, (1i & u_input.a.x) < _wgslsmith_mod_i32(-45952i, select(var_2.x, u_input.b, true) & var_2.x), !arg_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (all(func_5(func_1(Struct_2(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19112u, 2u)], 2u)], 2u)], 1u), 48349u, 95854u, Struct_1(false, -1476f, true, -887f, 4294967295u))), -360f, Struct_2(vec2<u32>(3418u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)]), 37125u, global2[_wgslsmith_index_u32(1u, 2u)], Struct_1(false, 1300f, false, 530f, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(36992u, 2u)], 2u)], 2u)])), vec3<bool>(true, true, false))) & any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true))) | true;
    let var_1 = -1i;
    global3 = -max(_wgslsmith_sub_i32(-u_input.b, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, var_1), vec2<i32>(var_1, -1i)), vec2<i32>(28644i, u_input.a.x))), countOneBits(-(~(-69873i))));
    var var_2 = 1i;
    global3 = firstLeadingBit(u_input.b);
    var var_3 = Struct_2(vec2<u32>(reverseBits(max(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)], 2u)]), 2u)], 2u)], 2u)], 2u)])), 1u), _wgslsmith_clamp_u32(~(~_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)], 0u)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(13694u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(35538u, 2u)], 2u)], 4294967295u)), countOneBits(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 2u)])), 2u)], ~abs(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)])), 68601u, func_1(Struct_2(vec2<u32>(~56384u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 2u)], 2u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global2[_wgslsmith_index_u32(45222u, 2u)], 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(10036u, 2u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 2u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)], 2u)], 2u)]), vec3<u32>(20769u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16641u, 2u)], 2u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)]))), ~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 2u)]), func_1(Struct_2(vec2<u32>(0u, global2[_wgslsmith_index_u32(79099u, 2u)]), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46503u, 2u)], 2u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(8696u, 2u)], 2u)], Struct_1(false, 318f, true, -640f, 0u))))));
    var var_4 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(~func_2() >> (~abs(~0u) % 32u), 2u)]);
}

