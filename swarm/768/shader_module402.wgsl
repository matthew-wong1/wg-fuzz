struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec4<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(35173u, 65013u), Struct_3(1u, 17554u), Struct_3(1u, 4294967295u), Struct_3(510u, 2479u), Struct_3(1u, 47911u), Struct_3(44202u, 4294967295u), Struct_3(1u, 0u), Struct_3(0u, 4294967295u), Struct_3(47721u, 64927u), Struct_3(21289u, 78652u), Struct_3(31259u, 0u), Struct_3(62198u, 4294967295u), Struct_3(0u, 5327u), Struct_3(31809u, 0u), Struct_3(4294967295u, 99360u), Struct_3(0u, 4294967295u), Struct_3(0u, 17131u), Struct_3(4294967295u, 4294967295u), Struct_3(31680u, 24194u), Struct_3(0u, 4294967295u), Struct_3(35579u, 0u));

var<private> global1: Struct_4 = Struct_4(false);

var<private> global2: u32 = 1u;

var<private> global3: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(1u, vec2<i32>(2147483647i, 13027i), -573f, vec4<f32>(413f, 555f, -233f, 1000f), vec3<u32>(4294967295u, 23968u, 4294967295u)), Struct_1(0u, vec2<i32>(1i, -1i), 510f, vec4<f32>(-790f, -808f, 1588f, -1130f), vec3<u32>(46753u, 75397u, 78550u)), Struct_1(0u, vec2<i32>(32939i, -1i), -431f, vec4<f32>(2028f, 801f, -1253f, -760f), vec3<u32>(72239u, 1u, 57625u)), Struct_1(33047u, vec2<i32>(0i, 1i), -1000f, vec4<f32>(2052f, -1726f, 191f, 648f), vec3<u32>(12893u, 1u, 4294967295u)), Struct_1(1u, vec2<i32>(50617i, i32(-2147483648)), 1182f, vec4<f32>(1526f, 1137f, -1204f, -711f), vec3<u32>(1u, 54056u, 1u)), Struct_1(11215u, vec2<i32>(1i, 9328i), 295f, vec4<f32>(-641f, 833f, -250f, -450f), vec3<u32>(8866u, 0u, 4294967295u)), Struct_1(38785u, vec2<i32>(2147483647i, 1665i), 1000f, vec4<f32>(-561f, -1000f, 1296f, -1000f), vec3<u32>(1u, 65271u, 12166u)), Struct_1(14585u, vec2<i32>(24596i, 2147483647i), 1560f, vec4<f32>(-191f, -1627f, -2135f, 390f), vec3<u32>(3002u, 4294967295u, 1u)), Struct_1(0u, vec2<i32>(2147483647i, -1i), -1919f, vec4<f32>(1199f, 199f, 412f, 1837f), vec3<u32>(1u, 4294967295u, 0u)), Struct_1(0u, vec2<i32>(-1496i, -45126i), -363f, vec4<f32>(1590f, -965f, -1451f, -1017f), vec3<u32>(1u, 12754u, 1u)), Struct_1(58244u, vec2<i32>(-1i, 0i), 1399f, vec4<f32>(-577f, 202f, -755f, -971f), vec3<u32>(14126u, 4294967295u, 9730u)), Struct_1(0u, vec2<i32>(2147483647i, 15372i), 1026f, vec4<f32>(-220f, 542f, -358f, 397f), vec3<u32>(0u, 1u, 0u)), Struct_1(0u, vec2<i32>(1i, 1i), 131f, vec4<f32>(-1344f, -865f, 1875f, 1466f), vec3<u32>(0u, 25210u, 1u)), Struct_1(100849u, vec2<i32>(4797i, 2147483647i), -339f, vec4<f32>(-1267f, -627f, 665f, -352f), vec3<u32>(1u, 2986u, 1u)), Struct_1(1u, vec2<i32>(i32(-2147483648), 829i), -309f, vec4<f32>(776f, -423f, -1367f, -508f), vec3<u32>(65191u, 4294967295u, 4294967295u)), Struct_1(4294967295u, vec2<i32>(-1i, -1240i), -1075f, vec4<f32>(-992f, 826f, -2628f, -1435f), vec3<u32>(1u, 0u, 4294967295u)), Struct_1(1u, vec2<i32>(i32(-2147483648), -1586i), 266f, vec4<f32>(1168f, -2318f, -973f, -1000f), vec3<u32>(24609u, 1u, 62762u)), Struct_1(5572u, vec2<i32>(1i, -1i), 1000f, vec4<f32>(-409f, 1152f, -747f, 237f), vec3<u32>(37694u, 0u, 43839u)), Struct_1(4294967295u, vec2<i32>(-4299i, 664i), -175f, vec4<f32>(-448f, 1301f, -1657f, 960f), vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_1(59089u, vec2<i32>(4682i, -49161i), 807f, vec4<f32>(-800f, 2035f, -221f, -2028f), vec3<u32>(0u, 115010u, 0u)), Struct_1(44128u, vec2<i32>(0i, -30838i), 769f, vec4<f32>(524f, -1000f, -449f, -242f), vec3<u32>(31576u, 4294967295u, 12357u)), Struct_1(29014u, vec2<i32>(1i, 1i), 1061f, vec4<f32>(-331f, 666f, -504f, -346f), vec3<u32>(1u, 1819u, 55156u)), Struct_1(1u, vec2<i32>(2147483647i, 1i), 103f, vec4<f32>(-945f, 1616f, 245f, -444f), vec3<u32>(1u, 51599u, 4294967295u)), Struct_1(1u, vec2<i32>(0i, -24804i), 1000f, vec4<f32>(-1000f, 393f, -358f, 787f), vec3<u32>(1u, 0u, 38070u)), Struct_1(119588u, vec2<i32>(2147483647i, -1i), 989f, vec4<f32>(921f, -2664f, 811f, -1659f), vec3<u32>(0u, 4294967295u, 1938u)), Struct_1(0u, vec2<i32>(-15352i, -39144i), -1194f, vec4<f32>(516f, 443f, 1000f, -1423f), vec3<u32>(10681u, 24981u, 4294967295u)), Struct_1(0u, vec2<i32>(-74405i, 44435i), -517f, vec4<f32>(491f, 325f, -287f, 415f), vec3<u32>(2095u, 38004u, 64555u)), Struct_1(6960u, vec2<i32>(i32(-2147483648), 2147483647i), -1027f, vec4<f32>(1000f, -1002f, 749f, 316f), vec3<u32>(1u, 54665u, 1u)), Struct_1(0u, vec2<i32>(24577i, 5581i), -2002f, vec4<f32>(-1112f, -1746f, -1000f, 1325f), vec3<u32>(1u, 1u, 12645u)), Struct_1(0u, vec2<i32>(i32(-2147483648), -1i), 183f, vec4<f32>(284f, -319f, 256f, -186f), vec3<u32>(28809u, 26881u, 29581u)), Struct_1(1u, vec2<i32>(43537i, -33580i), -1511f, vec4<f32>(-976f, 206f, 286f, 132f), vec3<u32>(4294967295u, 5643u, 50626u)), Struct_1(0u, vec2<i32>(i32(-2147483648), i32(-2147483648)), -1381f, vec4<f32>(114f, -144f, 822f, -911f), vec3<u32>(87549u, 4294967295u, 4294967295u)));

var<private> global4: Struct_3;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = ~4294967295u;
    let var_1 = vec3<bool>(select(true, firstTrailingBit(u_input.c.x) < min(~(-36659i), reverseBits(u_input.c.x)), global1.a), true != any(vec4<bool>(true, !global1.a, true, 46184u != arg_1.a)), false);
    global1 = Struct_4(any(vec2<bool>(!var_1.x | !var_1.x, false)));
    global3 = array<Struct_1, 32>();
    global2 = ~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(_wgslsmith_mult_u32(88452u, 1u), _wgslsmith_clamp_u32(arg_0.a, 4294967295u, 4123u), global4.b)), ~u_input.b.wwz);
    return vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.d.x, -460f)))))), 1429f);
}

fn func_3() -> vec4<f32> {
    let var_0 = 46018u;
    let var_1 = _wgslsmith_div_vec4_i32(~(-u_input.c), u_input.c);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-209f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 937f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1326f))));
    global3 = array<Struct_1, 32>();
    var var_3 = select(select(select(vec2<bool>(!global1.a, true), vec2<bool>(global1.a, u_input.a <= u_input.a), select(select(vec2<bool>(global1.a, false), vec2<bool>(global1.a, global1.a), true), vec2<bool>(global1.a, false), false)), !(!vec2<bool>(global1.a, false)), true), vec2<bool>(global1.a, !(_wgslsmith_f_op_f32(round(var_2.x)) == _wgslsmith_f_op_f32(exp2(var_2.x)))), vec2<bool>(any(!select(vec4<bool>(true, global1.a, global1.a, true), vec4<bool>(global1.a, true, true, false), global1.a)), true));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2275f, var_2.x, -471f, var_2.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(267f, var_2.x, -249f, var_2.x), vec4<f32>(var_2.x, -1023f, 242f, 183f)) - vec4<f32>(-1000f, 900f, 315f, 1144f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -1236f)), var_2.x))), var_1.x == ((var_1.x | var_1.x) | _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c.x), -vec2<i32>(var_1.x, -2147483647i)))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    global1 = Struct_4(false);
    var var_0 = 20118u;
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1868f, -1296f)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-314f, -1982f) - vec2<f32>(339f, -290f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_3(arg_0, u_input.b.x), Struct_1(global4.b, vec2<i32>(u_input.a, 26280i), 741f, vec4<f32>(2425f, 1000f, -1230f, -1007f), vec3<u32>(4294967295u, u_input.d.x, arg_0)), global3[_wgslsmith_index_u32(u_input.b.x, 32u)])) + vec2<f32>(-530f, 437f))))));
    let var_2 = ~_wgslsmith_mult_u32(global4.b, _wgslsmith_div_u32(global4.a, arg_0));
    global1 = Struct_4(global1.a);
    return Struct_1(global4.a, _wgslsmith_div_vec2_i32(-u_input.c.zy, u_input.c.yz), _wgslsmith_f_op_f32(f32(-1f) * -673f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.x)), 152f, var_1.x, _wgslsmith_f_op_f32(select(var_1.x, 485f, global1.a))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(832f, -224f, var_1.x, var_1.x)))))), _wgslsmith_f_op_vec4_f32(func_3())), vec3<u32>(global4.b, abs(arg_0), ~(~20132u & firstLeadingBit(var_2))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec3<f32>, arg_3: vec2<f32>) -> Struct_4 {
    let var_0 = Struct_3(~u_input.b.x, ~arg_0.a.e.x);
    let var_1 = arg_0;
    var var_2 = Struct_3(var_0.b, ~(~arg_0.a.a));
    let var_3 = Struct_4(global1.a);
    let var_4 = var_1;
    return Struct_4(true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(Struct_2(func_1(~(~u_input.b.x)), !(!select(vec4<bool>(global1.a, global1.a, global1.a, false), vec4<bool>(global1.a, global1.a, false, global1.a), global1.a)), vec3<f32>(1f, 1f, 1f), u_input.a), u_input.b.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1731f, _wgslsmith_f_op_f32(max(2054f, -1572f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-610f - _wgslsmith_f_op_f32(max(-1288f, -1009f)))), -581f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(476f, 1812f))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1083f, 284f) - vec2<f32>(422f, -275f)))))));
    var var_0 = !(!select(select(vec2<bool>(false, true), vec2<bool>(global1.a, false), select(vec2<bool>(true, false), vec2<bool>(true, false), global1.a)), select(select(vec2<bool>(global1.a, false), vec2<bool>(false, true), false), vec2<bool>(global1.a, global1.a), global1.a), false));
    let var_1 = global0[_wgslsmith_index_u32(~max(global4.a, 52247u), 21u)];
    global3 = array<Struct_1, 32>();
    global1 = Struct_4(false);
    global2 = 21608u;
    var var_2 = (u_input.c.xz << (u_input.b.zz % vec2<u32>(32u))) << (u_input.b.wz % vec2<u32>(32u));
    let var_3 = global4.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.b.x, var_1.a << (_wgslsmith_sub_u32(u_input.b.x, 1u) % 32u), ~(var_1.a << (45296u % 32u))) | max((vec3<u32>(0u, u_input.d.x, 62112u) | u_input.d.yzx) << (_wgslsmith_sub_vec3_u32(u_input.b.xwy, vec3<u32>(global4.a, 22002u, u_input.d.x)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(global4.b, var_1.b, var_1.b), vec3<u32>(var_1.b, u_input.b.x, u_input.d.x)) >> (u_input.d.zwz % vec3<u32>(32u))), ~(~u_input.b), u_input.c, ~u_input.d.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(853f, -1000f, 2317f, 293f) * vec4<f32>(-382f, 500f, 418f, 1596f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(2584f, -136f, 209f, 163f)))))), _wgslsmith_f_op_vec4_f32(func_3()), select(!(!vec4<bool>(global1.a, true, false, true)), vec4<bool>(true, all(vec4<bool>(true, var_0.x, global1.a, var_0.x)), true, false), var_0.x))));
}

