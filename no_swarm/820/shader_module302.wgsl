struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec4<u32>(98333u, 72170u, 103373u, 4294967295u), vec3<u32>(5716u, 961u, 1u), 4294967295u, Struct_1(vec2<u32>(1u, 18301u)), Struct_1(vec2<u32>(1u, 37044u))), Struct_2(vec4<u32>(4294967295u, 4294967295u, 42887u, 31089u), vec3<u32>(1u, 4294967295u, 1u), 51769u, Struct_1(vec2<u32>(0u, 0u)), Struct_1(vec2<u32>(1u, 1u))), Struct_2(vec4<u32>(76673u, 1u, 0u, 23661u), vec3<u32>(0u, 57550u, 4294967295u), 8092u, Struct_1(vec2<u32>(4294967295u, 31392u)), Struct_1(vec2<u32>(36164u, 73302u))), Struct_2(vec4<u32>(6412u, 16997u, 9158u, 44770u), vec3<u32>(0u, 5890u, 58245u), 0u, Struct_1(vec2<u32>(1u, 16282u)), Struct_1(vec2<u32>(99394u, 109477u))), Struct_2(vec4<u32>(8261u, 1u, 11300u, 0u), vec3<u32>(0u, 0u, 1u), 9331u, Struct_1(vec2<u32>(45650u, 4294967295u)), Struct_1(vec2<u32>(4294967295u, 4294967295u))), Struct_2(vec4<u32>(4294967295u, 4294967295u, 102298u, 1u), vec3<u32>(1u, 4294967295u, 61320u), 4294967295u, Struct_1(vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(4294967295u, 4294967295u))), Struct_2(vec4<u32>(0u, 29950u, 30908u, 4294967295u), vec3<u32>(0u, 32204u, 4294967295u), 8622u, Struct_1(vec2<u32>(23220u, 232u)), Struct_1(vec2<u32>(1u, 4294967295u))), Struct_2(vec4<u32>(111950u, 0u, 10909u, 961u), vec3<u32>(50476u, 26699u, 4294967295u), 14883u, Struct_1(vec2<u32>(21006u, 0u)), Struct_1(vec2<u32>(0u, 1u))), Struct_2(vec4<u32>(74803u, 35343u, 32257u, 13043u), vec3<u32>(51659u, 4294967295u, 1u), 1u, Struct_1(vec2<u32>(0u, 23101u)), Struct_1(vec2<u32>(1u, 16533u))), Struct_2(vec4<u32>(15047u, 4294967295u, 0u, 68196u), vec3<u32>(18990u, 1u, 22914u), 1u, Struct_1(vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(19851u, 0u))), Struct_2(vec4<u32>(0u, 0u, 17737u, 22371u), vec3<u32>(0u, 68965u, 70655u), 1u, Struct_1(vec2<u32>(113264u, 3377u)), Struct_1(vec2<u32>(4294967295u, 0u))), Struct_2(vec4<u32>(17097u, 51252u, 0u, 26126u), vec3<u32>(1u, 10954u, 62135u), 6336u, Struct_1(vec2<u32>(91141u, 78711u)), Struct_1(vec2<u32>(1u, 18415u))), Struct_2(vec4<u32>(4294967295u, 4294967295u, 29339u, 10720u), vec3<u32>(4294967295u, 3290u, 18002u), 65225u, Struct_1(vec2<u32>(0u, 39033u)), Struct_1(vec2<u32>(4294967295u, 1u))), Struct_2(vec4<u32>(1u, 0u, 54819u, 32840u), vec3<u32>(27985u, 4294967295u, 0u), 4294967295u, Struct_1(vec2<u32>(16841u, 74687u)), Struct_1(vec2<u32>(4818u, 59527u))), Struct_2(vec4<u32>(1u, 4294967295u, 4294967295u, 0u), vec3<u32>(1u, 62087u, 9327u), 52462u, Struct_1(vec2<u32>(94u, 105086u)), Struct_1(vec2<u32>(12056u, 1u))), Struct_2(vec4<u32>(4294967295u, 1u, 4601u, 1u), vec3<u32>(2171u, 12812u, 0u), 0u, Struct_1(vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(4294967295u, 43418u))), Struct_2(vec4<u32>(14748u, 29963u, 41990u, 1u), vec3<u32>(0u, 50105u, 12891u), 0u, Struct_1(vec2<u32>(832u, 27978u)), Struct_1(vec2<u32>(31861u, 4294967295u))), Struct_2(vec4<u32>(4294967295u, 4294967295u, 16603u, 2978u), vec3<u32>(278u, 4294967295u, 26025u), 22813u, Struct_1(vec2<u32>(139180u, 1u)), Struct_1(vec2<u32>(4294967295u, 92268u))), Struct_2(vec4<u32>(0u, 0u, 1u, 30596u), vec3<u32>(0u, 0u, 4294967295u), 4294967295u, Struct_1(vec2<u32>(48475u, 1u)), Struct_1(vec2<u32>(4294967295u, 58872u))), Struct_2(vec4<u32>(0u, 0u, 1u, 4294967295u), vec3<u32>(1u, 50801u, 1u), 49079u, Struct_1(vec2<u32>(77642u, 36600u)), Struct_1(vec2<u32>(37420u, 15344u))), Struct_2(vec4<u32>(1u, 1u, 45226u, 0u), vec3<u32>(56571u, 11066u, 108843u), 27637u, Struct_1(vec2<u32>(1u, 2898u)), Struct_1(vec2<u32>(1u, 21252u))), Struct_2(vec4<u32>(14395u, 0u, 0u, 75210u), vec3<u32>(75382u, 4294967295u, 60601u), 1u, Struct_1(vec2<u32>(1u, 30611u)), Struct_1(vec2<u32>(78795u, 1u))), Struct_2(vec4<u32>(1u, 19163u, 1161u, 0u), vec3<u32>(0u, 4294967295u, 22206u), 0u, Struct_1(vec2<u32>(78584u, 40213u)), Struct_1(vec2<u32>(20379u, 3356u))), Struct_2(vec4<u32>(73787u, 4294967295u, 10840u, 0u), vec3<u32>(52938u, 0u, 0u), 47562u, Struct_1(vec2<u32>(20239u, 6588u)), Struct_1(vec2<u32>(4294967295u, 34994u))));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_2) -> vec4<u32> {
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    var var_0 = arg_2;
    var var_1 = any(!select(!(!vec4<bool>(arg_1, false, true, true)), !(!vec4<bool>(false, arg_1, arg_1, arg_1)), all(select(vec2<bool>(arg_1, true), vec2<bool>(false, false), vec2<bool>(true, true)))));
    var_1 = false;
    return ~arg_2.a;
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: vec3<f32>, arg_3: f32) -> u32 {
    let var_0 = ~abs(u_input.b);
    global0 = array<Struct_2, 24>();
    var var_1 = -1i;
    let var_2 = func_3(_wgslsmith_div_f32(arg_3, -946f), arg_0.x, global0[_wgslsmith_index_u32(min(~(~arg_1), arg_1), 24u)]) & abs(select(~firstLeadingBit(vec4<u32>(u_input.d, 4294967295u, 15103u, var_0.x)), u_input.b, !vec4<bool>(true, arg_0.x, arg_0.x, false)));
    var_1 = 2147483647i >> (_wgslsmith_dot_vec4_u32(~(var_0 & (vec4<u32>(6481u, 0u, 11908u, u_input.a) << (vec4<u32>(0u, u_input.a, 1u, arg_1) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_u32(~(vec4<u32>(1u, 4294967295u, u_input.d, u_input.b.x) | vec4<u32>(u_input.d, var_2.x, u_input.b.x, 4294967295u)), ~max(vec4<u32>(4294967295u, 47603u, 1u, 16822u), var_2))) % 32u);
    return u_input.b.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_2 {
    global0 = array<Struct_2, 24>();
    let var_0 = arg_2.e.a;
    let var_1 = global0[_wgslsmith_index_u32(u_input.d, 24u)];
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    return global0[_wgslsmith_index_u32(abs(max(_wgslsmith_mult_u32(1u, ~1u), ~_wgslsmith_mod_u32(42553u, u_input.b.x))) & 1u, 24u)];
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_2, 24>();
    let var_0 = func_4(Struct_2(firstTrailingBit(_wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.d, 109252u, 42176u, u_input.b.x)), u_input.b << (vec4<u32>(u_input.a, 31013u, u_input.b.x, 0u) % vec4<u32>(32u)))), vec3<u32>(~u_input.a, firstTrailingBit(53157u), _wgslsmith_mult_u32(u_input.d, func_2(vec3<bool>(false, true, false), 23222u, vec3<f32>(1000f, -324f, 280f), 465f))), 42152u, Struct_1(u_input.b.xx), Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a) >> (u_input.b.wx % vec2<u32>(32u)), ~u_input.b.yy))), reverseBits(abs(firstLeadingBit(vec2<i32>(-20059i, u_input.c)))), Struct_2(reverseBits(max(u_input.b, vec4<u32>(u_input.a, u_input.b.x, u_input.a, u_input.a) >> (vec4<u32>(4294967295u, 95858u, 10393u, u_input.a) % vec4<u32>(32u)))), select(u_input.b.yxz, abs(u_input.b.wxz), select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))), _wgslsmith_mult_u32(u_input.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(18115u, u_input.d), u_input.b.xw)), Struct_1(select(~vec2<u32>(u_input.b.x, 54978u), u_input.b.yy << (u_input.b.yw % vec2<u32>(32u)), true)), Struct_1(~vec2<u32>(u_input.d, 1u))));
    var var_1 = _wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(~(~var_0.a), vec4<u32>(0u, _wgslsmith_add_u32(0u, 32283u), var_0.a.x & u_input.b.x, 33222u)), u_input.b);
    var var_2 = vec2<u32>(~(~(~(u_input.b.x ^ 74571u))), u_input.a);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2269f)));
    return Struct_1(select(~var_1.wy, ~vec2<u32>(~var_1.x, 28174u), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = reverseBits(_wgslsmith_add_vec4_u32(u_input.b, func_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-230f * 1895f))), !(u_input.b.x != var_0.a.x), func_4(func_4(Struct_2(vec4<u32>(var_0.a.x, u_input.b.x, 4294967295u, 4294967295u), u_input.b.yyx, 26164u, Struct_1(u_input.b.wz), Struct_1(var_0.a)), vec2<i32>(0i, u_input.c), Struct_2(vec4<u32>(var_0.a.x, u_input.b.x, u_input.d, var_0.a.x), u_input.b.wxz, 1u, Struct_1(vec2<u32>(11030u, 0u)), Struct_1(var_0.a))), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(u_input.c, 2147483647i)), global0[_wgslsmith_index_u32(u_input.d << (28468u % 32u), 24u)]))));
    let var_2 = u_input.c;
    var var_3 = ~firstTrailingBit(u_input.a);
    let var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(~var_2, firstTrailingBit(var_2 >> (1u % 32u)), abs(-2147483647i), var_2));
}

