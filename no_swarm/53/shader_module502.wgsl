struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(i32(-2147483648), false, 4183u, vec4<bool>(false, false, false, true), 10568i), true), Struct_2(Struct_1(i32(-2147483648), false, 41435u, vec4<bool>(false, false, true, false), 1750i), false), Struct_2(Struct_1(2147483647i, true, 65453u, vec4<bool>(false, false, true, true), 28049i), false), Struct_2(Struct_1(i32(-2147483648), true, 0u, vec4<bool>(false, true, true, true), 2147483647i), true), Struct_2(Struct_1(0i, true, 1u, vec4<bool>(false, true, true, true), -1i), true), Struct_2(Struct_1(-40198i, false, 0u, vec4<bool>(true, true, true, false), 2147483647i), true), Struct_2(Struct_1(-47181i, false, 16711u, vec4<bool>(false, false, false, true), -26489i), false), Struct_2(Struct_1(6266i, false, 0u, vec4<bool>(true, false, true, false), 1i), true), Struct_2(Struct_1(-18246i, true, 4294967295u, vec4<bool>(false, false, false, false), -1i), false), Struct_2(Struct_1(38115i, true, 50881u, vec4<bool>(false, false, true, false), 7167i), false), Struct_2(Struct_1(-13354i, false, 90086u, vec4<bool>(false, true, false, true), i32(-2147483648)), true), Struct_2(Struct_1(-35632i, true, 12975u, vec4<bool>(true, true, false, true), i32(-2147483648)), false), Struct_2(Struct_1(i32(-2147483648), true, 60032u, vec4<bool>(true, true, false, false), 1i), false), Struct_2(Struct_1(1i, true, 97340u, vec4<bool>(false, false, true, false), 1i), false), Struct_2(Struct_1(15721i, false, 16012u, vec4<bool>(false, true, false, false), 67944i), true));

var<private> global1: array<Struct_2, 1>;

var<private> global2: array<vec2<i32>, 13>;

var<private> global3: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(0i, false, 4294967295u, vec4<bool>(true, true, true, true), 12702i), true), Struct_2(Struct_1(i32(-2147483648), false, 65345u, vec4<bool>(false, false, true, false), -955i), true), Struct_2(Struct_1(-2646i, true, 1393u, vec4<bool>(false, false, false, false), 3571i), true), Struct_2(Struct_1(9023i, true, 20505u, vec4<bool>(true, false, true, true), -3993i), false), Struct_2(Struct_1(-1i, false, 12321u, vec4<bool>(true, false, true, false), 18526i), true), Struct_2(Struct_1(2482i, false, 58527u, vec4<bool>(true, false, true, true), 0i), false), Struct_2(Struct_1(9387i, true, 9963u, vec4<bool>(true, false, false, true), -7459i), true), Struct_2(Struct_1(-3563i, true, 65980u, vec4<bool>(false, true, true, true), -1i), false), Struct_2(Struct_1(49140i, true, 50658u, vec4<bool>(false, false, true, false), 11449i), false), Struct_2(Struct_1(-22269i, false, 24498u, vec4<bool>(false, true, true, false), -8182i), false), Struct_2(Struct_1(-1i, false, 297u, vec4<bool>(true, true, false, true), -21733i), true), Struct_2(Struct_1(2147483647i, true, 0u, vec4<bool>(false, false, true, false), -1i), false), Struct_2(Struct_1(27812i, true, 19622u, vec4<bool>(false, true, false, false), 45760i), false), Struct_2(Struct_1(i32(-2147483648), true, 5529u, vec4<bool>(false, false, true, true), -1621i), true), Struct_2(Struct_1(55421i, true, 120968u, vec4<bool>(true, false, true, true), 2147483647i), true), Struct_2(Struct_1(-1i, true, 0u, vec4<bool>(true, false, true, false), -45728i), false), Struct_2(Struct_1(i32(-2147483648), false, 35425u, vec4<bool>(true, false, false, false), i32(-2147483648)), true), Struct_2(Struct_1(1i, false, 4294967295u, vec4<bool>(true, false, true, false), -26047i), false), Struct_2(Struct_1(-11295i, false, 1u, vec4<bool>(false, false, true, true), 16414i), false), Struct_2(Struct_1(i32(-2147483648), false, 14997u, vec4<bool>(false, false, false, true), -21072i), true), Struct_2(Struct_1(23454i, true, 46565u, vec4<bool>(false, true, false, false), -22674i), true), Struct_2(Struct_1(4791i, true, 1u, vec4<bool>(true, true, true, false), 1i), true), Struct_2(Struct_1(-1i, false, 4294967295u, vec4<bool>(false, false, true, true), i32(-2147483648)), true), Struct_2(Struct_1(2147483647i, true, 4294967295u, vec4<bool>(false, true, true, true), 35883i), true), Struct_2(Struct_1(9821i, false, 16051u, vec4<bool>(false, true, true, false), 2449i), true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool, arg_3: vec4<bool>) -> f32 {
    let var_0 = Struct_2(Struct_1(1i, select(any(arg_3.zyz), true, arg_2 && false) || true, 1u | _wgslsmith_dot_vec3_u32(vec3<u32>(3325u, arg_1.c, arg_1.c), ~vec3<u32>(arg_1.c, 0u, arg_1.c)), vec4<bool>(true, all(!vec4<bool>(true, arg_2, false, arg_1.b)), arg_3.x, _wgslsmith_f_op_f32(trunc(437f)) == _wgslsmith_f_op_f32(-700f * -2337f)), u_input.b), arg_0.x);
    var var_1 = arg_0.x;
    global3 = array<Struct_2, 25>();
    global1 = array<Struct_2, 1>();
    let var_2 = 6767i;
    return 959f;
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_1(u_input.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -322f))))) == _wgslsmith_f_op_f32(func_3(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), Struct_1(~1217i, u_input.a > 9400i, 52064u, vec4<bool>(false, false, false, false), 0i), true, vec4<bool>(any(vec3<bool>(false, false, true)), all(vec2<bool>(false, false)), select(true, false, true), true))), abs(~_wgslsmith_add_u32(_wgslsmith_add_u32(0u, 0u), min(0u, 1u))), !(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)))), _wgslsmith_mult_i32(abs(-u_input.a), _wgslsmith_mod_i32(u_input.b, 39851i)));
    let var_1 = select(var_0.d.zy, !(!(!var_0.d.wx)), 5464u >= var_0.c);
    let var_2 = _wgslsmith_sub_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(9727i | var_0.e, _wgslsmith_div_i32(var_0.a, u_input.b), _wgslsmith_mod_i32(-1i, 5725i)), vec3<i32>(-1i, _wgslsmith_sub_i32(1i, u_input.a), 27478i << (var_0.c % 32u)))), min(vec3<i32>(u_input.b, ~0i, -min(-8585i, 4301i)), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_0.e, -8851i) & (vec3<i32>(var_0.e, 2147483647i, 2147483647i) & vec3<i32>(var_0.a, var_0.a, u_input.a)), reverseBits(~vec3<i32>(8869i, 31373i, 13030i)))));
    let var_3 = var_0;
    let var_4 = abs(~(~19640u));
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1706f, 778f, -539f), vec3<f32>(1000f, -1381f, 159f))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(174f, -1416f, -1572f) + vec3<f32>(938f, -875f, -450f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1194f, 512f, -1000f), vec3<f32>(435f, 523f, 348f)))))))));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1987f, _wgslsmith_f_op_f32(sign(297f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(536f - 742f), -1893f)) + 1f)), _wgslsmith_f_op_vec3_f32(func_2())));
    var var_1 = vec3<u32>(~abs(max(~11661u, _wgslsmith_div_u32(70308u, 91525u))), _wgslsmith_sub_u32(45286u, ~select(69109u, 1u, false)) << (~1u % 32u), abs(1u));
    var var_2 = var_1.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(func_2()).x;
    var_2 = var_1.x << (0u % 32u);
    return Struct_2(Struct_1(_wgslsmith_mod_i32(u_input.a, 2147483647i), false, ~(~(1733u | var_1.x)), vec4<bool>(false, select(true, true, all(vec4<bool>(false, false, true, true))), !(u_input.b > 8978i), !any(vec3<bool>(true, true, true))), min(_wgslsmith_mod_i32(u_input.a, u_input.a), -591i) ^ firstLeadingBit(-1907i)), (2147483647i << (var_1.x % 32u)) != _wgslsmith_mult_i32(countOneBits(countOneBits(8767i)), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global3 = array<Struct_2, 25>();
    let var_1 = 1i;
    global2 = array<vec2<i32>, 13>();
    var var_2 = _wgslsmith_f_op_vec3_f32(func_2()).xx;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

