struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec4<u32>(0u, 40962u, 4294967295u, 0u), vec3<bool>(false, false, true), vec2<u32>(27929u, 40220u), vec3<bool>(false, true, false), vec4<bool>(false, true, true, false)), Struct_2(vec4<u32>(2088u, 0u, 1072u, 1u), vec3<bool>(true, true, true), vec2<u32>(4294967295u, 1u), vec3<bool>(true, false, false), vec4<bool>(false, false, true, true)), Struct_2(vec4<u32>(1u, 64734u, 0u, 81553u), vec3<bool>(false, true, false), vec2<u32>(4294967295u, 1u), vec3<bool>(true, false, true), vec4<bool>(false, true, true, true)), Struct_2(vec4<u32>(4294967295u, 43804u, 1u, 0u), vec3<bool>(true, false, true), vec2<u32>(15201u, 1u), vec3<bool>(false, true, false), vec4<bool>(false, true, true, false)));

var<private> global1: vec4<i32> = vec4<i32>(33232i, 1i, 1i, 2147483647i);

var<private> global2: f32;

var<private> global3: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec4<u32>(34410u, 38026u, 8940u, 46175u), vec3<bool>(true, false, false), vec2<u32>(1u, 0u), vec3<bool>(false, true, true), vec4<bool>(true, false, true, false)), Struct_2(vec4<u32>(56974u, 1u, 9148u, 70663u), vec3<bool>(false, false, false), vec2<u32>(53660u, 52323u), vec3<bool>(true, false, true), vec4<bool>(true, true, false, true)), Struct_2(vec4<u32>(0u, 1u, 9795u, 6179u), vec3<bool>(false, false, false), vec2<u32>(59672u, 4294967295u), vec3<bool>(false, true, false), vec4<bool>(true, true, true, false)), Struct_2(vec4<u32>(17859u, 57078u, 0u, 4294967295u), vec3<bool>(true, true, false), vec2<u32>(0u, 4294967295u), vec3<bool>(false, false, false), vec4<bool>(true, false, false, false)), Struct_2(vec4<u32>(2942u, 0u, 88077u, 1u), vec3<bool>(true, false, false), vec2<u32>(10035u, 48336u), vec3<bool>(true, true, true), vec4<bool>(true, true, true, false)), Struct_2(vec4<u32>(4294967295u, 81201u, 9823u, 30990u), vec3<bool>(true, true, true), vec2<u32>(4294967295u, 0u), vec3<bool>(false, true, true), vec4<bool>(true, false, false, true)), Struct_2(vec4<u32>(4378u, 5691u, 28296u, 1u), vec3<bool>(true, true, false), vec2<u32>(39367u, 9338u), vec3<bool>(false, true, false), vec4<bool>(true, false, false, false)), Struct_2(vec4<u32>(278u, 35613u, 0u, 4294967295u), vec3<bool>(false, false, false), vec2<u32>(12945u, 8740u), vec3<bool>(true, false, true), vec4<bool>(true, true, true, true)), Struct_2(vec4<u32>(1u, 0u, 1u, 26638u), vec3<bool>(true, false, false), vec2<u32>(19098u, 14986u), vec3<bool>(true, false, true), vec4<bool>(true, false, true, true)), Struct_2(vec4<u32>(23839u, 32970u, 1u, 39517u), vec3<bool>(false, false, false), vec2<u32>(1u, 62522u), vec3<bool>(false, true, true), vec4<bool>(true, true, true, false)), Struct_2(vec4<u32>(0u, 61649u, 12569u, 0u), vec3<bool>(false, false, false), vec2<u32>(1u, 34864u), vec3<bool>(false, true, true), vec4<bool>(true, true, false, true)), Struct_2(vec4<u32>(19011u, 28643u, 1u, 7202u), vec3<bool>(true, false, true), vec2<u32>(43084u, 37091u), vec3<bool>(true, false, true), vec4<bool>(false, true, false, false)), Struct_2(vec4<u32>(4294967295u, 43200u, 4294967295u, 20279u), vec3<bool>(true, true, false), vec2<u32>(20169u, 1u), vec3<bool>(true, false, true), vec4<bool>(false, false, true, true)), Struct_2(vec4<u32>(1u, 1u, 1u, 0u), vec3<bool>(true, true, false), vec2<u32>(26108u, 4294967295u), vec3<bool>(false, true, true), vec4<bool>(false, false, false, false)), Struct_2(vec4<u32>(42176u, 4294967295u, 7612u, 0u), vec3<bool>(true, false, true), vec2<u32>(4294967295u, 0u), vec3<bool>(false, false, true), vec4<bool>(true, true, false, true)), Struct_2(vec4<u32>(1u, 42811u, 0u, 50703u), vec3<bool>(true, false, false), vec2<u32>(1u, 80210u), vec3<bool>(false, false, true), vec4<bool>(true, false, true, true)), Struct_2(vec4<u32>(0u, 4294967295u, 4294967295u, 14718u), vec3<bool>(true, true, false), vec2<u32>(12905u, 4294967295u), vec3<bool>(true, true, true), vec4<bool>(true, true, true, true)), Struct_2(vec4<u32>(19275u, 17351u, 0u, 27205u), vec3<bool>(true, true, false), vec2<u32>(1u, 2346u), vec3<bool>(true, false, true), vec4<bool>(true, true, false, true)), Struct_2(vec4<u32>(25479u, 0u, 4586u, 13282u), vec3<bool>(false, false, true), vec2<u32>(21322u, 0u), vec3<bool>(false, true, true), vec4<bool>(false, true, false, false)), Struct_2(vec4<u32>(0u, 41029u, 4294967295u, 0u), vec3<bool>(false, false, false), vec2<u32>(3643u, 6966u), vec3<bool>(false, true, true), vec4<bool>(false, true, true, true)), Struct_2(vec4<u32>(1u, 1647u, 1u, 18270u), vec3<bool>(true, true, false), vec2<u32>(4294967295u, 4294967295u), vec3<bool>(true, true, false), vec4<bool>(false, true, true, true)), Struct_2(vec4<u32>(4294967295u, 68463u, 82237u, 50575u), vec3<bool>(true, false, false), vec2<u32>(52381u, 4294967295u), vec3<bool>(false, false, false), vec4<bool>(true, false, true, true)), Struct_2(vec4<u32>(80472u, 13631u, 54575u, 21941u), vec3<bool>(false, false, true), vec2<u32>(12596u, 4294967295u), vec3<bool>(false, true, true), vec4<bool>(true, true, true, false)), Struct_2(vec4<u32>(19352u, 1u, 93061u, 56192u), vec3<bool>(false, true, true), vec2<u32>(1u, 41748u), vec3<bool>(true, false, true), vec4<bool>(false, true, true, false)), Struct_2(vec4<u32>(4294967295u, 1u, 4294967295u, 39940u), vec3<bool>(true, true, false), vec2<u32>(2608u, 9042u), vec3<bool>(false, false, false), vec4<bool>(true, true, false, false)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> u32 {
    var var_0 = !vec4<bool>(true, ~u_input.b.x > select(_wgslsmith_dot_vec2_u32(u_input.b.yy, u_input.b.xx), abs(17815u), all(vec3<bool>(false, false, true))), !(u_input.b.x >= ~27077u), true);
    var var_1 = var_0.x;
    var var_2 = countOneBits(global1.x);
    var var_3 = var_0.zw;
    let var_4 = _wgslsmith_mult_vec2_u32(u_input.b.zz, _wgslsmith_mod_vec2_u32(~u_input.b.zz, _wgslsmith_mod_vec2_u32(countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.xz, vec2<u32>(u_input.b.x, 23770u))), vec2<u32>(~u_input.b.x, min(u_input.b.x, u_input.b.x)))));
    return var_4.x;
}

fn func_3(arg_0: i32) -> vec4<u32> {
    var var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-302f, _wgslsmith_f_op_f32(f32(-1f) * -198f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1006f * -428f) - _wgslsmith_f_op_f32(f32(-1f) * -721f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(100f)))) - -2540f), -976f) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, -555f, -1000f), vec3<f32>(974f, -1466f, -1474f))) * vec3<f32>(1f, 1f, 1f)), vec3<f32>(1f, -408f, _wgslsmith_f_op_f32(f32(-1f) * -985f)), !any(vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-296f, -1531f, -1519f)) + vec3<f32>(236f, -1000f, 819f))), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)))));
    global3 = array<Struct_2, 25>();
    var var_2 = Struct_2(select(vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x) >> (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u) % vec4<u32>(32u)), vec4<u32>(u_input.b.x, u_input.b.x, ~4294967295u, 1u), vec4<bool>(true, true, all(vec4<bool>(true, false, true, false)), false)) ^ vec4<u32>(40031u, ~u_input.b.x, _wgslsmith_div_u32(firstTrailingBit(u_input.b.x), _wgslsmith_mod_u32(7438u, u_input.b.x)), 0u), vec3<bool>(-countOneBits(4323i) >= _wgslsmith_dot_vec2_i32(global1.wx, vec2<i32>(0i, 35274i)), any(vec3<bool>(any(vec3<bool>(true, true, false)), true, any(vec4<bool>(false, false, true, false)))), any(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)))), vec2<u32>(~56861u, 6541u), vec3<bool>(true, any(vec3<bool>(true, true, true)), true), vec4<bool>(true, u_input.b.x <= u_input.b.x, any(vec2<bool>(true, true)), all(vec4<bool>(any(vec4<bool>(false, false, true, false)), true, global1.x > arg_0, all(vec4<bool>(false, false, false, true))))));
    var var_3 = _wgslsmith_f_op_f32(-var_1.x);
    return var_2.a ^ var_2.a;
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = _wgslsmith_div_i32(u_input.a, 20384i ^ _wgslsmith_div_i32(22962i, _wgslsmith_add_i32(max(u_input.a, -1370i), arg_0)));
    let var_1 = Struct_2(vec4<u32>(_wgslsmith_add_u32(2992u, func_2()), ~u_input.b.x >> (1u % 32u), _wgslsmith_div_u32(~u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, 0u)), 1u) | func_3(-(u_input.a >> (u_input.b.x % 32u))), !select(vec3<bool>(true, true, true), vec3<bool>(u_input.b.x >= u_input.b.x, true, all(vec3<bool>(false, true, false))), true), _wgslsmith_add_vec2_u32(vec2<u32>(~4294967295u, ~u_input.b.x), u_input.b.zy) >> (vec2<u32>(u_input.b.x << (4607u % 32u), u_input.b.x) % vec2<u32>(32u)), select(vec3<bool>(all(vec3<bool>(true, true, false)), all(vec4<bool>(true, true, true, true)), any(vec2<bool>(false, true))), vec3<bool>(all(vec2<bool>(true, true)), !(1u >= u_input.b.x), (u_input.b.x != 1u) | (u_input.b.x >= 26727u)), true), select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false))), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true))), vec4<bool>(true, true, true, true)));
    let var_2 = (firstTrailingBit(~_wgslsmith_mod_vec3_u32(var_1.a.xzw, vec3<u32>(21927u, var_1.c.x, var_1.c.x))) << (vec3<u32>(var_1.c.x, max(11521u, var_1.c.x), ~u_input.b.x) % vec3<u32>(32u))) & firstLeadingBit(~reverseBits(u_input.b));
    let var_3 = Struct_2(~var_1.a, var_1.b, u_input.b.xy, !(!vec3<bool>(true, false, var_1.b.x)), select(select(!(!vec4<bool>(var_1.d.x, var_1.d.x, true, var_1.b.x)), select(select(var_1.e, var_1.e, var_1.d.x), !vec4<bool>(var_1.e.x, true, false, var_1.e.x), select(vec4<bool>(var_1.e.x, var_1.d.x, var_1.e.x, var_1.b.x), var_1.e, var_1.e)), vec4<bool>(-2147483647i != global1.x, var_1.d.x, var_1.e.x, any(vec3<bool>(true, false, var_1.b.x)))), var_1.e, !all(!vec2<bool>(false, var_1.e.x))));
    global0 = array<Struct_2, 4>();
    return Struct_2(var_3.a, vec3<bool>(true, all(var_1.e.zw), var_1.e.x), var_2.xz, vec3<bool>(var_1.e.x, !all(vec3<bool>(true, var_3.b.x, true)), true), var_3.e);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 25>();
    var var_0 = func_1(global1.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1781f * _wgslsmith_f_op_f32(select(1169f, 225f, var_0.b.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-285f)) * _wgslsmith_div_f32(-167f, 1000f)))));
    let var_2 = func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-37611i, -20166i), global1.yz), 21794i) >> (var_0.a % vec4<u32>(32u)), vec4<i32>(select(-1i, global1.x | global1.x, !var_0.e.x), _wgslsmith_mod_i32(abs(u_input.a), 1i), ~8319i, ~max(global1.x, u_input.a)))).d.yz;
    let var_3 = all(vec2<bool>(!var_0.e.x, ((u_input.a << (u_input.b.x % 32u)) >> (0u % 32u)) < 2147483647i));
    var var_4 = var_0.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(495f - _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-2033f)), -1743f, !(!var_3)))), 1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-652f, 425f) * vec2<f32>(-268f, -1000f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-640f, 1667f) * vec2<f32>(983f, 821f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1904f, 307f) - vec2<f32>(401f, 1204f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-607f, 655f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-421f, 1000f))))), reverseBits(func_1(-57351i).c.x), max(_wgslsmith_dot_vec3_i32(select(vec3<i32>(0i, global1.x, global1.x), global1.ywx, var_0.d), vec3<i32>(global1.x, u_input.a, u_input.a)), min(2147483647i | u_input.a, u_input.a)) >> (~firstLeadingBit(~4294967295u) % 32u));
}

