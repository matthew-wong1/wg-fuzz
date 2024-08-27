struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(-1i, -41793i, 0i, -16750i, 78072i);

var<private> global1: i32 = 40846i;

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(440f, vec2<i32>(-5864i, 2147483647i), vec2<i32>(-38658i, -64720i), 4294967295u, 171f), Struct_1(-1215f, vec2<i32>(-24569i, 2147483647i), vec2<i32>(-1i, 2147483647i), 11838u, -628f), Struct_1(-1000f, vec2<i32>(0i, -48049i), vec2<i32>(-1i, 15530i), 1u, 1043f), Struct_1(156f, vec2<i32>(-1i, -27312i), vec2<i32>(i32(-2147483648), 17454i), 4294967295u, -1190f), Struct_1(1365f, vec2<i32>(-13986i, -1i), vec2<i32>(2147483647i, 29115i), 29367u, 1000f), Struct_1(973f, vec2<i32>(55877i, -1i), vec2<i32>(41392i, 8296i), 0u, 2803f), Struct_1(950f, vec2<i32>(0i, 2147483647i), vec2<i32>(-1i, -4193i), 21124u, -904f), Struct_1(-383f, vec2<i32>(-38385i, -1i), vec2<i32>(6403i, i32(-2147483648)), 24062u, -1143f), Struct_1(1851f, vec2<i32>(-5848i, 31594i), vec2<i32>(-6061i, 33936i), 18u, 1000f), Struct_1(361f, vec2<i32>(17257i, 45805i), vec2<i32>(-1i, i32(-2147483648)), 54689u, 224f), Struct_1(-442f, vec2<i32>(44174i, 36744i), vec2<i32>(-30427i, 2147483647i), 16251u, 1000f), Struct_1(1002f, vec2<i32>(-1i, -1i), vec2<i32>(3192i, -39671i), 4294967295u, -277f), Struct_1(1251f, vec2<i32>(1i, 26072i), vec2<i32>(-1i, 2147483647i), 0u, 451f), Struct_1(532f, vec2<i32>(-42466i, -23641i), vec2<i32>(30447i, 1i), 89252u, -144f), Struct_1(-1000f, vec2<i32>(i32(-2147483648), 30066i), vec2<i32>(0i, -49643i), 1u, 2217f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec3<bool>) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.e)) + _wgslsmith_f_op_f32(select(arg_1.e, 732f, arg_0))))), _wgslsmith_f_op_f32(f32(-1f) * -593f))), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(min(vec4<i32>(-1i, 12413i, arg_1.b.x, 2147483647i), vec4<i32>(2147483647i, 2147483647i, arg_1.b.x, arg_1.b.x)), vec4<i32>(57099i, global0[_wgslsmith_index_u32(arg_2.x, 5u)], u_input.b.x, -12556i)), -arg_1.c.x << ((0u << (0u % 32u)) % 32u)), 1i & u_input.b.x), _wgslsmith_div_vec2_i32(vec2<i32>(abs(u_input.b.x) | _wgslsmith_mod_i32(u_input.b.x, global0[_wgslsmith_index_u32(9676u, 5u)]), ~1i), min(-vec2<i32>(-90319i, u_input.b.x), reverseBits(-vec2<i32>(arg_1.c.x, 1i)))), _wgslsmith_dot_vec2_u32(~firstTrailingBit(~vec2<u32>(u_input.a.x, 19763u)), arg_2), -1008f);
    var var_1 = -220f;
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), var_0.e));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(select(254f, _wgslsmith_f_op_f32(sign(-2495f)), false)), var_0.b, -vec2<i32>(2147483647i, u_input.b.x), min(1u, 1u) >> (~(~1643u & _wgslsmith_clamp_u32(1u, 0u, arg_2.x)) % 32u), 626f);
    var var_3 = var_2;
    return _wgslsmith_sub_vec2_i32(u_input.b.xy, vec2<i32>(var_0.b.x, select(u_input.b.x, select(var_0.b.x, 2147483647i, true) ^ ~50205i, !(!arg_3.x))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> vec3<i32> {
    global2 = array<Struct_1, 15>();
    var var_0 = vec3<f32>(arg_1.e, 1134f, arg_0.x);
    global0 = array<i32, 5>();
    var var_1 = Struct_1(-944f, vec2<i32>(33796i, _wgslsmith_sub_i32(arg_1.c.x, arg_1.c.x)), u_input.b.xz, _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(u_input.a.yww, u_input.a.wwz & vec3<u32>(u_input.a.x, 49801u, u_input.a.x)), u_input.a.x), _wgslsmith_f_op_f32(446f + 472f));
    var var_2 = Struct_1(var_0.x, arg_1.b, _wgslsmith_add_vec2_i32(reverseBits(-u_input.b.xx), vec2<i32>(-8845i ^ arg_1.b.x, -1i ^ global0[_wgslsmith_index_u32(var_1.d, 5u)])) ^ select(min(abs(vec2<i32>(2147483647i, 2844i)), func_3(false, arg_1, u_input.a.xy, vec3<bool>(false, false, false))), firstTrailingBit(var_1.b), select(vec2<bool>(false, false), vec2<bool>(true, false), any(vec4<bool>(false, true, true, true)))), ~firstTrailingBit(~1u), arg_1.a);
    return _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, func_3(false, Struct_1(_wgslsmith_f_op_f32(floor(-1478f)), _wgslsmith_mod_vec2_i32(arg_1.b, var_1.c), var_1.b & arg_1.c, ~var_1.d, 1000f), vec2<u32>(max(var_1.d, 67070u), u_input.a.x >> (arg_1.d % 32u)), vec3<bool>(true, true, true)).x, u_input.b.x), vec3<i32>(_wgslsmith_div_i32(var_1.c.x, -27578i), var_1.c.x, ~u_input.b.x >> (_wgslsmith_sub_u32(1u, var_2.d ^ var_1.d) % 32u)), -_wgslsmith_mult_vec3_i32(vec3<i32>(select(global0[_wgslsmith_index_u32(4294967295u, 5u)], u_input.b.x, true), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_2.b.x, u_input.b.x), u_input.b), 2147483647i), vec3<i32>(var_2.b.x, 30353i, 9133i)));
}

fn func_1() -> Struct_1 {
    global0 = array<i32, 5>();
    let var_0 = -_wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(countOneBits(u_input.a.x & u_input.a.x), 5u)], _wgslsmith_sub_i32(u_input.b.x, u_input.b.x) ^ ~global0[_wgslsmith_index_u32(u_input.a.x, 5u)], firstLeadingBit(33560i)), _wgslsmith_add_vec3_i32(select(_wgslsmith_clamp_vec3_i32(u_input.b, u_input.b, u_input.b), u_input.b | u_input.b, true), func_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(610f, -2589f, -273f, -2808f))), Struct_1(151f, vec2<i32>(u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 5u)]), vec2<i32>(0i, -2147483647i), u_input.a.x, 1546f))));
    global1 = min(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.x, 45884i, global0[_wgslsmith_index_u32(0u, 5u)], 79336i), select(vec4<i32>(var_0.x, 1i, 42028i, -17644i), vec4<i32>(u_input.b.x, 1i, -17980i, u_input.b.x), vec4<bool>(true, false, true, false))), _wgslsmith_add_i32(-16037i, u_input.b.x) | global0[_wgslsmith_index_u32(~u_input.a.x, 5u)]) | ((-var_0.x ^ -u_input.b.x) >> (~(~1u) % 32u)), ~(-(~var_0.x)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), -481f, false)));
    let var_2 = !(!select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, all(vec2<bool>(true, true)), all(vec4<bool>(false, false, true, false))), vec3<bool>(true, true, true)));
    return Struct_1(var_1, ~_wgslsmith_sub_vec2_i32(min(var_0.zz, u_input.b.zz), ~vec2<i32>(u_input.b.x, -15283i)), _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(var_0.x, 22420i)), u_input.b.zy), u_input.a.x, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-108f + -180f) + -1978f), var_0.a) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e, var_0.a, var_0.e)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a, 2086f, 442f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-675f, var_0.e, 956f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e, -289f, var_0.a) - vec3<f32>(1615f, 544f, -254f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))) + vec3<f32>(602f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) - 872f), _wgslsmith_f_op_f32(1231f + _wgslsmith_f_op_f32(1000f + var_0.a)))));
    let var_2 = -9970i;
    let var_3 = global2[_wgslsmith_index_u32(~u_input.a.x, 15u)];
    global1 = abs(_wgslsmith_sub_i32(9403i, var_0.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1076f, _wgslsmith_f_op_f32(step(1077f, var_0.e)), var_1.x, var_1.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, 200f, -1237f) * vec3<f32>(var_3.e, var_0.e, var_1.x))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(148f, var_0.a, var_3.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 964f, var_0.a)))))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1262f, 1000f, -1000f) - vec3<f32>(-953f, var_0.e, -465f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 362f, -271f) - vec3<f32>(var_1.x, var_3.e, var_1.x))), vec3<f32>(_wgslsmith_f_op_f32(-var_3.e), func_1().e, var_3.a)))), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_2, 0i, 0i, global0[_wgslsmith_index_u32(0u, 5u)]), vec4<i32>(-23004i, -1i, 51745i, global0[_wgslsmith_index_u32(var_0.d, 5u)])), -(~vec4<i32>(214i, var_3.b.x, var_2, 0i))), -u_input.b.x));
}

