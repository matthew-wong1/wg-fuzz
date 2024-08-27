struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(-545f, -388f));

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec3<u32>(4294967295u, 1u, 29713u), 162f, -1446f, vec2<i32>(i32(-2147483648), 2147483647i), vec3<u32>(35160u, 4294967295u, 50652u)), Struct_1(vec3<u32>(4294967295u, 28562u, 1u), -103f, -772f, vec2<i32>(2147483647i, -952i), vec3<u32>(1u, 23873u, 22323u)), Struct_1(vec3<u32>(0u, 4294967295u, 41422u), 1014f, 1556f, vec2<i32>(2147483647i, -36918i), vec3<u32>(29902u, 4294967295u, 1u)), Struct_1(vec3<u32>(0u, 61653u, 19214u), -1911f, -856f, vec2<i32>(-12469i, -44682i), vec3<u32>(4294967295u, 54573u, 4611u)), Struct_1(vec3<u32>(30508u, 22905u, 27623u), -471f, -1116f, vec2<i32>(-22483i, i32(-2147483648)), vec3<u32>(40738u, 4294967295u, 60905u)), Struct_1(vec3<u32>(34372u, 1u, 32696u), 1651f, -1062f, vec2<i32>(0i, 0i), vec3<u32>(47802u, 27492u, 31793u)), Struct_1(vec3<u32>(24978u, 50775u, 4294967295u), 546f, 515f, vec2<i32>(16327i, 1i), vec3<u32>(4040u, 0u, 1u)), Struct_1(vec3<u32>(12012u, 81806u, 24497u), 350f, -549f, vec2<i32>(0i, -1i), vec3<u32>(975u, 4294967295u, 24319u)), Struct_1(vec3<u32>(4294967295u, 4771u, 0u), 1071f, -1300f, vec2<i32>(2147483647i, 0i), vec3<u32>(4294967295u, 36675u, 12339u)), Struct_1(vec3<u32>(0u, 14363u, 51225u), -1071f, 791f, vec2<i32>(-8647i, -8638i), vec3<u32>(45673u, 4294967295u, 26293u)), Struct_1(vec3<u32>(1u, 1u, 37841u), -1319f, -400f, vec2<i32>(1i, 0i), vec3<u32>(26761u, 10199u, 45600u)), Struct_1(vec3<u32>(25403u, 57382u, 79829u), -1219f, -453f, vec2<i32>(79840i, 2147483647i), vec3<u32>(37349u, 71809u, 4294967295u)), Struct_1(vec3<u32>(0u, 1u, 92012u), 132f, -643f, vec2<i32>(-1i, 2147483647i), vec3<u32>(16423u, 1u, 48180u)), Struct_1(vec3<u32>(59793u, 8338u, 20156u), -804f, -246f, vec2<i32>(i32(-2147483648), -30496i), vec3<u32>(1u, 4294967295u, 61959u)), Struct_1(vec3<u32>(27820u, 5620u, 0u), 443f, 145f, vec2<i32>(2147483647i, -1i), vec3<u32>(4889u, 23001u, 0u)), Struct_1(vec3<u32>(105703u, 4294967295u, 0u), 803f, 667f, vec2<i32>(20880i, 0i), vec3<u32>(25011u, 36329u, 49651u)), Struct_1(vec3<u32>(7317u, 4294967295u, 8863u), 105f, 794f, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<u32>(54812u, 0u, 1u)));

var<private> global2: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(4294967295u), Struct_2(57321u), Struct_2(40735u), Struct_2(67910u), Struct_2(10074u), Struct_2(0u), Struct_2(4294967295u));

var<private> global3: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(0u), Struct_2(12286u), Struct_2(6116u), Struct_2(4294967295u), Struct_2(4294967295u), Struct_2(0u), Struct_2(4294967295u), Struct_2(1u), Struct_2(42482u), Struct_2(1u), Struct_2(9153u), Struct_2(69724u), Struct_2(481u), Struct_2(41257u), Struct_2(0u), Struct_2(40601u), Struct_2(10402u), Struct_2(9027u), Struct_2(7011u), Struct_2(7124u), Struct_2(12804u), Struct_2(4294967295u), Struct_2(4294967295u), Struct_2(17089u), Struct_2(10178u), Struct_2(1u));

var<private> global4: vec2<i32> = vec2<i32>(0i, 4655i);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: u32) -> vec3<bool> {
    var var_0 = _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(20129i, 2147483647i, -select(u_input.b.x, 0i, false), u_input.a)), min(reverseBits(vec4<i32>(-1i, ~global4.x, -1i, ~global4.x)), abs(firstTrailingBit(vec4<i32>(u_input.b.x, 2147483647i, 28727i, u_input.b.x))) << (vec4<u32>(_wgslsmith_div_u32(23230u, 1u), 12178u, 12982u, 15656u >> (arg_1.a % 32u)) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(103f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-944f * 1795f) + _wgslsmith_f_op_f32(-2086f + -146f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1000f, 277f)))))))));
    var var_2 = abs(abs(countOneBits(_wgslsmith_mult_i32(var_0.x, u_input.a)) >> (~arg_2 % 32u)));
    let var_3 = Struct_3(Struct_2(_wgslsmith_mod_u32(106431u, 61101u)), select(select(vec3<bool>(true, arg_0.x, true), vec3<bool>(false, arg_2 > arg_2, !arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x || arg_0.x)), vec3<bool>(!all(arg_0), arg_0.x, true), vec3<bool>(arg_0.x, arg_0.x, true)));
    var var_4 = any(!(!var_3.b.xy));
    return vec3<bool>(var_3.b.x, any(var_3.b), arg_0.x);
}

fn func_2(arg_0: i32) -> vec3<bool> {
    return !func_3(vec2<bool>(true, true), Struct_2(1u), ~57442u);
}

fn func_1() -> vec4<u32> {
    let var_0 = Struct_3(Struct_2(abs(1u)), !(!func_2(firstLeadingBit(53735i))));
    global0 = array<vec2<f32>, 1>();
    let var_1 = vec2<i32>(-global4.x, 2147483647i);
    var var_2 = !all(!(!var_0.b.yz));
    var var_3 = vec3<i32>(abs(1i), _wgslsmith_mod_i32(-32311i, _wgslsmith_clamp_i32(var_1.x, _wgslsmith_add_i32(-7855i, 2147483647i), global4.x)) << ((var_0.a.a >> (~_wgslsmith_clamp_u32(13696u, 1u, var_0.a.a) % 32u)) % 32u), -20352i);
    return firstLeadingBit(vec4<u32>(min(var_0.a.a, var_0.a.a), ~1u, firstTrailingBit(68490u), 61169u) >> (reverseBits(~(vec4<u32>(1u, 52796u, var_0.a.a, var_0.a.a) ^ vec4<u32>(20138u, 1u, 65530u, 5319u))) % vec4<u32>(32u)));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: vec4<u32>) -> f32 {
    var var_0 = any(vec3<bool>((!arg_1.x || (32012i < u_input.a)) || true, true, !any(vec2<bool>(true, true))));
    global0 = array<vec2<f32>, 1>();
    let var_1 = firstLeadingBit(_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(~arg_3.x, 4294967295u, arg_3.x)), ~(~(~arg_3.xwy))));
    let var_2 = Struct_1(vec3<u32>(~reverseBits(~arg_3.x), 1u, firstTrailingBit(15611u)), arg_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-331f)) * -866f))), ~(-vec2<i32>(firstLeadingBit(arg_2.x), firstTrailingBit(-1i))), vec3<u32>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_1.x, arg_3.x, 22747u, var_1.x)), max(abs(arg_3), arg_3)), arg_3.x, 1u & ~func_1().x));
    var var_3 = Struct_2(~(0u & arg_3.x));
    return 1620f;
}

fn func_5(arg_0: vec2<f32>, arg_1: f32) -> Struct_2 {
    var var_0 = ~4294967295u;
    global4 = u_input.b;
    return global2[_wgslsmith_index_u32(~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(6918u, 4294967295u), vec2<u32>(0u, 4294967295u)) << (~0u % 32u))), 7u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(237f, -741f)), _wgslsmith_f_op_f32(func_4(-999f, vec2<bool>(true, true), u_input.b, _wgslsmith_mod_vec4_u32(func_1(), abs(vec4<u32>(1u, 1u, 1u, 1u))))));
    var var_1 = !vec2<bool>(select(true, true, true) && false, false);
    global1 = array<Struct_1, 17>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-158f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1632f, -1262f)))));
    global3 = array<Struct_2, 26>();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(sign(566f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(trunc(246f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x - -569f)))))));
    var var_4 = global1[_wgslsmith_index_u32(~reverseBits(countOneBits(var_0.a)), 17u)];
    let var_5 = _wgslsmith_f_op_f32(select(-121f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(346f))), !(!var_1.x)));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -929f), _wgslsmith_f_op_f32(var_2.x - var_4.b))))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.c, _wgslsmith_f_op_f32(exp2(var_4.b))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(1640f, vec2<bool>(var_1.x, var_1.x), vec2<i32>(1i, -38817i), vec4<u32>(16457u, var_0.a, var_0.a, 1u))))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-855f * var_5), _wgslsmith_f_op_f32(var_5 + var_2.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-661f - _wgslsmith_f_op_f32(-var_4.b)) - _wgslsmith_f_op_f32(trunc(var_5)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -44194i), firstTrailingBit(_wgslsmith_div_vec2_i32(var_4.d, var_4.d) | -u_input.b)), _wgslsmith_mult_u32(~_wgslsmith_div_u32(var_4.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 64918u, 48671u, 9774u), vec4<u32>(31804u, var_4.e.x, var_0.a, 21764u))), firstTrailingBit(~0u)), vec3<i32>(countOneBits(-31186i), 22943i & ~var_4.d.x, -abs(var_4.d.x)), ~vec2<i32>(-1i, -(i32(-1i) * -1i)), vec3<u32>(_wgslsmith_sub_u32(var_4.a.x, 0u), ~abs(abs(16365u)), _wgslsmith_mod_u32(~_wgslsmith_mod_u32(0u, var_4.a.x), ~_wgslsmith_clamp_u32(var_0.a, var_0.a, 16708u))));
}

