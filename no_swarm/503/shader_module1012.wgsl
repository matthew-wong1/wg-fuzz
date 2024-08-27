struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(vec3<i32>(0i, i32(-2147483648), 0i), 0u, vec4<i32>(1i, -6040i, 78684i, 4112i)), Struct_4(vec3<i32>(-1i, i32(-2147483648), 0i), 0u, vec4<i32>(0i, 0i, 17972i, 6728i)), Struct_4(vec3<i32>(2147483647i, 81193i, 1241i), 0u, vec4<i32>(-1i, 2147483647i, -1i, i32(-2147483648))), Struct_4(vec3<i32>(-30327i, -1i, -1i), 4294967295u, vec4<i32>(-1i, 1i, 4858i, -72168i)), Struct_4(vec3<i32>(i32(-2147483648), 8581i, i32(-2147483648)), 4587u, vec4<i32>(1i, -1i, 0i, 1i)), Struct_4(vec3<i32>(2147483647i, 0i, 35664i), 4294967295u, vec4<i32>(-1i, i32(-2147483648), -8142i, 62287i)), Struct_4(vec3<i32>(1i, 2147483647i, -62918i), 4294967295u, vec4<i32>(-5057i, -1i, 204i, i32(-2147483648))), Struct_4(vec3<i32>(55921i, -14696i, i32(-2147483648)), 38570u, vec4<i32>(-25267i, 1i, 16742i, 35498i)), Struct_4(vec3<i32>(-1i, 0i, 2147483647i), 76117u, vec4<i32>(4016i, 26476i, 30533i, -10014i)), Struct_4(vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), 46962u, vec4<i32>(-8136i, -13659i, -53458i, 43507i)), Struct_4(vec3<i32>(-1i, -11668i, 57587i), 19600u, vec4<i32>(2147483647i, 28698i, 5241i, 1i)), Struct_4(vec3<i32>(i32(-2147483648), 1i, 2147483647i), 21648u, vec4<i32>(-43066i, i32(-2147483648), -21989i, 51465i)), Struct_4(vec3<i32>(-1i, -5467i, i32(-2147483648)), 1u, vec4<i32>(0i, 2147483647i, 16865i, i32(-2147483648))), Struct_4(vec3<i32>(2147483647i, 1i, 2147483647i), 88562u, vec4<i32>(i32(-2147483648), 0i, 16508i, 48042i)), Struct_4(vec3<i32>(1i, 2147483647i, -3385i), 4294967295u, vec4<i32>(0i, 0i, 37262i, 27273i)), Struct_4(vec3<i32>(1i, i32(-2147483648), 1i), 0u, vec4<i32>(-1i, -23232i, -1i, i32(-2147483648))), Struct_4(vec3<i32>(-1i, 456i, 39042i), 91966u, vec4<i32>(11404i, 1471i, 44096i, 1i)), Struct_4(vec3<i32>(360i, i32(-2147483648), 2147483647i), 66627u, vec4<i32>(1i, -1i, 2147483647i, 0i)), Struct_4(vec3<i32>(-26979i, 0i, 0i), 1u, vec4<i32>(-8527i, -8895i, 10546i, -70118i)), Struct_4(vec3<i32>(-53735i, 0i, -74120i), 0u, vec4<i32>(16185i, 29557i, -48217i, 16086i)), Struct_4(vec3<i32>(2147483647i, 23902i, 0i), 33043u, vec4<i32>(-5228i, 2147483647i, 29665i, 7367i)), Struct_4(vec3<i32>(1i, -52966i, 14216i), 1u, vec4<i32>(0i, -48621i, -34679i, i32(-2147483648))));

var<private> global1: array<bool, 15> = array<bool, 15>(true, false, false, false, false, true, true, false, true, false, false, false, true, false, false);

var<private> global2: Struct_4;

var<private> global3: Struct_4 = Struct_4(vec3<i32>(-3889i, 2147483647i, 18800i), 4294967295u, vec4<i32>(i32(-2147483648), 3400i, 31887i, 1i));

var<private> global4: array<vec2<u32>, 18>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: bool, arg_3: vec4<bool>) -> u32 {
    var var_0 = select(vec4<bool>(global1[_wgslsmith_index_u32(121980u, 15u)], !arg_1.x, any(vec3<bool>(global2.a.x <= global2.c.x, false, arg_0 || false)), all(!vec4<bool>(arg_2, true, false, true)) | global1[_wgslsmith_index_u32(reverseBits(~global2.b), 15u)]), select(arg_3, !(!arg_1), arg_3), any(arg_1.wx));
    var var_1 = -803f;
    var var_2 = _wgslsmith_div_i32(-4007i, u_input.b);
    let var_3 = ~(~vec3<u32>(global3.b, 64659u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.b, global3.b, global2.b, global3.b) << (vec4<u32>(20985u, 4294967295u, 0u, 1u) % vec4<u32>(32u)), vec4<u32>(global3.b, 56931u, global2.b, global2.b))));
    var var_4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1394f, 887f, 858f)) * vec3<f32>(-1476f, _wgslsmith_f_op_f32(max(316f, -900f)), _wgslsmith_f_op_f32(max(-693f, -261f)))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1225f, -590f, _wgslsmith_f_op_f32(trunc(1020f))))))));
    return ~global2.b;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: bool) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_1.yx, _wgslsmith_div_vec2_f32(vec2<f32>(-1235f, arg_1.x), arg_1.zx), vec2<bool>(false, arg_2)))), global2.c), (global3.a << (~select(vec3<u32>(62496u, 1u, global2.b), vec3<u32>(global3.b, global2.b, global2.b), vec3<bool>(arg_2, global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(global3.b, 15u)])) % vec3<u32>(32u))) | firstLeadingBit(-firstLeadingBit(global2.c.xzz)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-599f, -616f) + arg_1.xz))) + arg_1.yx), global2.c));
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(~1u, ~func_3(true, vec4<bool>(arg_2, true, false, false), false, vec4<bool>(false, false, false, true))), max(_wgslsmith_clamp_u32(14369u << (global2.b % 32u), 0u ^ global2.b, 1u), max(global3.b, 5899u))), min(global4[_wgslsmith_index_u32(global2.b, 18u)], ~(~max(global4[_wgslsmith_index_u32(global2.b, 18u)], global4[_wgslsmith_index_u32(global2.b, 18u)]))));
    var var_2 = global4[_wgslsmith_index_u32(1u | ~_wgslsmith_div_u32(1u, _wgslsmith_mult_u32(var_1.x, 66108u | var_1.x)), 18u)];
    let var_3 = _wgslsmith_div_u32(~func_3(arg_2, !vec4<bool>(arg_2, true, true, true), -2014f != var_0.a.a.x, !select(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 15u)], true, true), vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(33518u, 15u)], arg_2), arg_2)), _wgslsmith_add_u32(61883u, 35450u));
    let var_4 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-948f, -524f, var_0.c.a.x, 977f), vec4<f32>(-1263f, -1180f, var_0.a.a.x, var_0.c.a.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-630f, -1814f, var_0.a.a.x, var_0.c.a.x), vec4<f32>(2094f, -2605f, 782f, -1028f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1613f, 1380f, var_0.c.a.x, 685f), vec4<f32>(var_0.a.a.x, 708f, var_0.a.a.x, var_0.a.a.x)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -2001f), vec4<f32>(var_0.c.a.x, arg_1.x, -671f, arg_1.x))))))));
    return 0u;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec3<u32>) -> vec2<i32> {
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_add_u32(global2.b, 1u) >> (arg_2.x % 32u), _wgslsmith_div_u32(~global3.b, arg_2.x)), 22u)];
    var var_0 = Struct_4(firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(global2.a, vec3<i32>(arg_1, 6954i, 15251i)), -2147483647i), -11928i, firstLeadingBit(global2.a.x))), firstLeadingBit(61248u), -global3.c);
    let var_1 = global3.a.x;
    var var_2 = ~min(firstLeadingBit(vec3<u32>(var_0.b, var_0.b, abs(var_0.b))), vec3<u32>(global3.b, ~(~arg_2.x), reverseBits(countOneBits(global2.b))));
    var var_3 = vec4<f32>(arg_0.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1000f)))) + arg_0.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.c.a.x)) * -1681f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1845f - arg_0.a.a.x)))))));
    return ~select(vec2<i32>(-1i, 0i << ((arg_2.x & 1u) % 32u)), vec2<i32>(-1i, u_input.b), !all(select(vec4<bool>(false, global1[_wgslsmith_index_u32(var_2.x, 15u)], global1[_wgslsmith_index_u32(21182u, 15u)], global1[_wgslsmith_index_u32(var_0.b, 15u)]), vec4<bool>(global1[_wgslsmith_index_u32(31168u, 15u)], global1[_wgslsmith_index_u32(global3.b, 15u)], global1[_wgslsmith_index_u32(34505u, 15u)], global1[_wgslsmith_index_u32(1u, 15u)]), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(1u, 15u)], false, true))));
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(Struct_2(Struct_1(vec2<f32>(_wgslsmith_div_f32(235f, -241f), _wgslsmith_div_f32(346f, 631f)), vec4<i32>(u_input.a ^ global3.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 51127i), global2.a.yy), ~0i, i32(-1i) * -51249i)), global3.a, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(1397f)), _wgslsmith_f_op_f32(f32(-1f) * -2632f)), global2.c)), (0i & u_input.b) & _wgslsmith_dot_vec2_i32(abs(-vec2<i32>(u_input.a, global3.a.x)), -(vec2<i32>(23942i, -13209i) << (global4[_wgslsmith_index_u32(global2.b, 18u)] % vec2<u32>(32u)))), vec3<u32>(global2.b >> (global2.b % 32u), func_2(firstTrailingBit(global2.c.wz), vec3<f32>(_wgslsmith_div_f32(744f, -1000f), _wgslsmith_f_op_f32(min(643f, 115f)), _wgslsmith_f_op_f32(f32(-1f) * -1197f)), global1[_wgslsmith_index_u32(35846u, 15u)]), 0u & _wgslsmith_clamp_u32(56752u, 0u, _wgslsmith_mult_u32(global2.b, global3.b))));
    let var_1 = vec4<u32>(global2.b, 0u, ~(func_3(true, vec4<bool>(true, false, false, true), global1[_wgslsmith_index_u32(global2.b, 15u)], vec4<bool>(global1[_wgslsmith_index_u32(global3.b, 15u)], false, global1[_wgslsmith_index_u32(42126u, 15u)], global1[_wgslsmith_index_u32(0u, 15u)])) >> (abs(70983u) % 32u)) & ~9702u, ~1u | ~global3.b);
    let var_2 = !vec3<bool>(!(false != (true & global1[_wgslsmith_index_u32(global2.b, 15u)])), !(!global1[_wgslsmith_index_u32(global3.b, 15u)]) && all(vec2<bool>(true, global1[_wgslsmith_index_u32(var_1.x, 15u)])), ~35133u <= var_1.x);
    var_0 = vec2<i32>(firstLeadingBit(~(~global2.a.x)), _wgslsmith_mod_i32(-firstTrailingBit(~(-1i)), -(~1i)));
    var var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(global2.b, countOneBits(~global3.b), 1u), var_1.zyy) & vec3<u32>(7524u, global3.b, 1u);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1113f, 1696f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(826f, -784f) - vec2<f32>(-994f, -1483f))))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.b, global3.c.x), firstTrailingBit(global3.a.x), _wgslsmith_div_i32(u_input.b, global3.a.x), -1i), ~vec4<i32>(-49712i, 93304i, 12342i, var_0.x))), -max(global3.c.www, _wgslsmith_div_vec3_i32(global3.c.yyy << (vec3<u32>(var_3.x, global2.b, global2.b) % vec3<u32>(32u)), reverseBits(global3.a))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1013f, 889f))))), vec4<i32>(abs(_wgslsmith_dot_vec4_i32(global3.c, vec4<i32>(-2147483647i, global2.c.x, 2147483647i, -52708i))), 2147483647i, var_0.x, global3.a.x)));
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> bool {
    var var_0 = !(!any(vec2<bool>(true, true))) && false;
    let var_1 = ~global2.b;
    global4 = array<vec2<u32>, 18>();
    var var_2 = global2.c.x;
    let var_3 = u_input.a;
    return global1[_wgslsmith_index_u32(468u, 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec3<bool>(func_5(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-325f - 505f))), false | all(select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(global3.b, 15u)], true), vec2<bool>(false, true))), false));
    global3 = Struct_4(min(abs(select(-global2.c.zzz, vec3<i32>(30679i, 2147483647i, global3.a.x), false | var_0)), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, global2.a.x), global3.a.xy), -u_input.a, -45484i), global2.a.x, global3.a.x)), _wgslsmith_clamp_u32(~(~102647u), abs(global2.b), 1u), firstLeadingBit(min(func_1().a.b, _wgslsmith_mult_vec4_i32(global3.c, global3.c))) << ((vec4<u32>(15340u, global2.b >> (6616u % 32u), 4294967295u | global2.b, _wgslsmith_div_u32(78752u, global3.b)) | vec4<u32>(global3.b, _wgslsmith_dot_vec2_u32(global4[_wgslsmith_index_u32(0u, 18u)], global4[_wgslsmith_index_u32(global2.b, 18u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.b, global3.b, 56573u, 1u), vec4<u32>(0u, global3.b, 0u, global3.b)), global3.b)) % vec4<u32>(32u)));
    var var_1 = firstLeadingBit(~_wgslsmith_sub_vec2_i32(vec2<i32>(~0i, ~u_input.b), ~global3.a.yx));
    var var_2 = func_1().a.a.x;
    var var_3 = 0u;
    var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(254f * -759f) * _wgslsmith_f_op_f32(select(-214f, 432f, false)))), -354f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1203f)))) - -1245f)));
    let x = u_input.a;
    s_output = StorageBuffer(-var_1.x, global2.c.x, ~func_2(vec2<i32>(2147483647i, var_1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-395f, -750f, -877f)), any(vec2<bool>(false, var_0))) | (4294967295u << (global3.b % 32u)), u_input.b);
}

