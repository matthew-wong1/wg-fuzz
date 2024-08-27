struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(4294967295u, vec4<u32>(1u, 0u, 121858u, 43514u), vec3<i32>(26895i, i32(-2147483648), 48339i)), Struct_1(17083u, vec4<u32>(12036u, 19870u, 29715u, 17023u), vec3<i32>(25957i, -6603i, 2147483647i)), Struct_1(1u, vec4<u32>(37953u, 45675u, 57247u, 4294967295u), vec3<i32>(2147483647i, -35240i, -20113i)), Struct_1(4294967295u, vec4<u32>(3113u, 15952u, 4294967295u, 1u), vec3<i32>(i32(-2147483648), 1i, 8444i)), Struct_1(4294967295u, vec4<u32>(25951u, 10194u, 86774u, 60363u), vec3<i32>(33983i, 1i, 0i)), Struct_1(4294967295u, vec4<u32>(76175u, 1u, 0u, 78183u), vec3<i32>(2147483647i, 47517i, 56731i)), Struct_1(1u, vec4<u32>(0u, 1u, 103321u, 8647u), vec3<i32>(111i, 2147483647i, 39873i)), Struct_1(2463u, vec4<u32>(0u, 58125u, 0u, 14651u), vec3<i32>(30485i, 1i, 2147483647i)), Struct_1(4294967295u, vec4<u32>(128567u, 18571u, 1u, 4294967295u), vec3<i32>(i32(-2147483648), 19827i, 2147483647i)));

var<private> global1: vec4<i32>;

var<private> global2: vec3<bool> = vec3<bool>(false, false, false);

var<private> global3: bool = false;

var<private> global4: array<vec3<f32>, 19>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f)));
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_add_i32(-select(max(52999i, 1i), -15054i, any(vec4<bool>(global2.x, arg_0.a, false, arg_0.a))), firstTrailingBit(arg_2.x >> (41235u % 32u)) ^ reverseBits(2147483647i)), abs(countOneBits(-1i)));
    global3 = arg_0.a;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-566f, -1047f)), 1f)))) * 1431f);
    let var_3 = !vec4<bool>(select(!(global2.x | global2.x), select(true, all(vec4<bool>(global2.x, false, true, false)), global2.x), arg_2.x < var_1), global2.x, !(_wgslsmith_add_i32(global1.x, arg_2.x) < ~global1.x), arg_0.a);
    return u_input.d.x;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = vec3<u32>(~arg_1.a, ~(~72705u), ~(arg_1.a ^ arg_1.b.x));
    var_0 = vec3<u32>(4294967295u, func_3(Struct_2(false), 8701u, u_input.c), ~abs(0u));
    let var_1 = Struct_2(global2.x);
    global4 = array<vec3<f32>, 19>();
    let var_2 = global2.x;
    return var_0.zx;
}

fn func_1() -> vec4<f32> {
    global1 = firstLeadingBit(vec4<i32>(u_input.c.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-7036i, global1.x), 2147483647i), 1i, global1.x)) << (u_input.d % vec4<u32>(32u));
    global2 = select(vec3<bool>(global2.x, false, true), vec3<bool>((~u_input.a | u_input.d.x) >= _wgslsmith_dot_vec2_u32(select(vec2<u32>(109399u, u_input.a), vec2<u32>(u_input.d.x, 4294967295u), global2.zz), func_2(-758f, Struct_1(0u, u_input.d, global1.wyy))), false, true), !select(vec3<bool>(!global2.x, true && global2.x, any(vec4<bool>(true, global2.x, global2.x, true))), !(!vec3<bool>(true, global2.x, false)), all(select(global2.zx, global2.yz, global2.xz))));
    global0 = array<Struct_1, 9>();
    global3 = global2.x;
    global0 = array<Struct_1, 9>();
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(486f, -461f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -405f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -800f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1696f)) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(311f, -905f), 1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-848f, 496f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-288f + -296f)))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1039f - -1000f), _wgslsmith_f_op_f32(ceil(-1657f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !(!(!select(!vec3<bool>(true, true, global2.x), select(vec3<bool>(global2.x, true, false), vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, global2.x, true)), global2.x && global2.x)));
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-756f - _wgslsmith_div_f32(986f, -1182f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1441f + _wgslsmith_f_op_f32(floor(1313f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -999f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-799f - 437f), 178f))), -1014f) + _wgslsmith_f_op_vec4_f32(func_1()));
    global1 = u_input.b;
    var var_1 = Struct_2(2147483647i != ~(u_input.c.x & global1.x));
    global4 = array<vec3<f32>, 19>();
    var var_2 = min(_wgslsmith_sub_i32(u_input.c.x, -18254i), _wgslsmith_dot_vec2_i32(u_input.b.wz, _wgslsmith_add_vec2_i32(vec2<i32>(12624i, 0i), _wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(2147483647i, global1.x)), u_input.b.zy))));
    var var_3 = Struct_1(_wgslsmith_sub_u32(~(~(~u_input.a)), ~u_input.d.x ^ _wgslsmith_clamp_u32(u_input.d.x, abs(4294967295u), u_input.d.x)), ~u_input.d, ~global1.wyy);
    var var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.b.zw, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a, 1u, u_input.d.x), 0u), -500f, ~(~(~abs(6269u))), -1267f);
}

