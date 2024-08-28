struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31>;

var<private> global1: array<Struct_2, 29>;

var<private> global2: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(17613u, 1u, 4294967295u), vec3<u32>(0u, 38420u, 4294967295u), vec3<u32>(22348u, 17073u, 0u), vec3<u32>(52197u, 28867u, 16855u), vec3<u32>(59555u, 1u, 0u), vec3<u32>(85241u, 45552u, 0u), vec3<u32>(1u, 26508u, 25107u), vec3<u32>(4294967295u, 1u, 22182u), vec3<u32>(4708u, 0u, 9679u), vec3<u32>(11776u, 23246u, 67903u), vec3<u32>(23864u, 0u, 28859u), vec3<u32>(0u, 57880u, 4294967295u), vec3<u32>(40126u, 1u, 11974u), vec3<u32>(123804u, 69135u, 21007u), vec3<u32>(36352u, 4294967295u, 38082u), vec3<u32>(1u, 40307u, 9771u), vec3<u32>(4294967295u, 70367u, 68332u), vec3<u32>(32727u, 4294967295u, 49595u), vec3<u32>(0u, 47782u, 14684u), vec3<u32>(9057u, 94089u, 1u), vec3<u32>(4294967295u, 18151u, 15069u));

var<private> global3: bool = true;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> i32 {
    var var_0 = arg_1;
    let var_1 = Struct_1(select(select(select(vec2<bool>(arg_1.a.d.x, arg_1.b.d.x), select(var_0.a.d, arg_1.a.a, arg_1.b.d.x), !var_0.a.a), vec2<bool>(all(var_0.a.d), !var_0.b.c), !(false && arg_1.b.a.x)), arg_1.b.d, arg_1.b.a.x), _wgslsmith_f_op_vec3_f32(round(arg_1.a.b)), !((_wgslsmith_f_op_f32(-arg_1.a.b.x) != _wgslsmith_f_op_f32(-arg_1.b.b.x)) | arg_1.a.c), arg_1.a.d);
    let var_2 = -1439f < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-397f, var_0.b.b.x, var_0.b.c)) + _wgslsmith_f_op_f32(round(1000f)))));
    var_0 = arg_1;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.b.x))), var_1.d.x))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return reverseBits(-2147483647i);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_3 {
    global1 = array<Struct_2, 29>();
    var var_0 = Struct_2(arg_0.b, arg_0.a, ~max(vec2<u32>(~30395u, u_input.d), min(arg_0.c, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, 16889u), arg_0.c))), func_3(i32(-1i) * -25542i, Struct_2(arg_0.b, Struct_1(select(vec2<bool>(false, false), arg_0.a.a, vec2<bool>(false, true)), arg_0.a.b, all(vec2<bool>(arg_0.a.d.x, arg_0.a.d.x)), vec2<bool>(arg_0.a.c, arg_0.a.a.x)), arg_0.c, 1i | _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d, u_input.c, arg_0.d, 54631i), vec4<i32>(u_input.c, -53107i, u_input.c, 17466i)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-479f)) - var_0.b.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.b.x)))));
    var var_2 = Struct_2(var_0.b, var_0.a, _wgslsmith_mod_vec2_u32(countOneBits(var_0.c), max(_wgslsmith_mult_vec2_u32(arg_0.c, vec2<u32>(19469u, arg_0.c.x)) | ~vec2<u32>(4294967295u, var_0.c.x), firstTrailingBit(var_0.c))), ~(i32(-1i) * -(arg_0.d ^ 55827i)));
    var var_3 = vec4<u32>(u_input.d, arg_0.c.x & 4294967295u, 3011u, var_0.c.x) | (select(reverseBits(~vec4<u32>(u_input.d, 0u, 1139u, 4294967295u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 1u, 0u, var_2.c.x), vec4<u32>(arg_0.c.x, 0u, u_input.d, u_input.d)), global0[_wgslsmith_index_u32(~(var_2.c.x & var_0.c.x), 31u)]) >> (reverseBits(vec4<u32>(~var_0.c.x, 7404u, _wgslsmith_div_u32(u_input.d, u_input.d), 1u)) % vec4<u32>(32u)));
    return Struct_3(Struct_1(var_0.b.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b.x, arg_0.b.b.x, -1000f))), true, select(!arg_0.b.a, var_0.a.d, _wgslsmith_f_op_f32(exp2(var_0.a.b.x)) != 1292f)), min(arg_0.d, var_0.d) != u_input.a.x, abs(max(~0u, select(max(var_3.x, var_2.c.x), ~41580u, all(vec2<bool>(var_0.a.d.x, true))))), Struct_1(!(!var_2.a.d), var_0.a.b, select(false, true, arg_0.a.d.x), var_2.a.d));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    global0 = array<vec4<bool>, 31>();
    return func_2(Struct_2(Struct_1(vec2<bool>(arg_3, all(vec3<bool>(true, arg_3, arg_1.b))), arg_0.d.b, select(arg_0.a.c & arg_1.a.c, arg_2.b.d.x, true), !select(arg_1.d.d, vec2<bool>(arg_2.b.c, arg_3), false)), arg_1.a, ~vec2<u32>(u_input.d, ~0u), 2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a.b.x, arg_1.d.b.x, -944f), vec3<f32>(-1811f, arg_1.a.b.x, -1270f), arg_3))) + vec3<f32>(_wgslsmith_f_op_f32(step(arg_0.a.b.x, arg_0.a.b.x)), arg_0.a.b.x, _wgslsmith_f_op_f32(-419f + arg_2.b.b.x))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1080f + arg_1.d.b.x) - _wgslsmith_f_op_f32(-1000f + -945f)), _wgslsmith_f_op_f32(arg_0.d.b.x - _wgslsmith_div_f32(arg_1.a.b.x, 2270f)), _wgslsmith_f_op_f32(max(arg_0.a.b.x, arg_1.d.b.x))))).a;
}

fn func_1() -> vec4<u32> {
    let var_0 = func_4(func_2(global1[_wgslsmith_index_u32(u_input.d, 29u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-214f, -518f, -176f) - vec3<f32>(550f, 1199f, 1040f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(162f, -590f, 174f)))), Struct_3(Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1919f, 116f, 1067f), vec3<f32>(-556f, -1000f, -3444f), true)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-331f, -195f, 1935f))), any(vec2<bool>(false, true)), vec2<bool>(true, true)), !(!any(vec3<bool>(false, true, false))), 4294967295u, Struct_1(vec2<bool>(true, false), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(268f, 180f, -527f))), vec3<f32>(-1256f, -563f, 208f))), !any(vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), global1[_wgslsmith_index_u32(~u_input.d, 29u)], !all(vec2<bool>(all(vec3<bool>(false, true, false)), true)));
    global0 = array<vec4<bool>, 31>();
    global3 = false;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b.x)));
    let var_2 = -5864i;
    return firstTrailingBit(abs(select(~reverseBits(vec4<u32>(u_input.d, 16246u, u_input.d, 0u)), reverseBits(vec4<u32>(u_input.d, 7967u, 4294967295u, u_input.d) >> (vec4<u32>(13016u, 4294967295u, u_input.d, u_input.d) % vec4<u32>(32u))), vec4<bool>(true, true, true, var_0.d.x))));
}

fn func_5(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = func_4(Struct_3(Struct_1(arg_2.d.a, vec3<f32>(_wgslsmith_div_f32(arg_0, 860f), _wgslsmith_f_op_f32(-1268f * arg_2.d.b.x), _wgslsmith_f_op_f32(sign(arg_2.d.b.x))), u_input.b.x > (i32(-1i) * -1i), select(vec2<bool>(arg_2.b, arg_2.a.a.x), arg_2.a.d, arg_2.a.c)), arg_2.b, _wgslsmith_dot_vec3_u32(arg_1.xyw, countOneBits(global2[_wgslsmith_index_u32(0u, 21u)] ^ vec3<u32>(arg_2.c, 52258u, arg_1.x))), Struct_1(vec2<bool>(true, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1429f, -434f, -147f), vec3<f32>(arg_0, -737f, -1659f))), true, arg_2.a.d)), Struct_3(arg_2.a, true, _wgslsmith_mod_u32(4294967295u, ~arg_2.c), Struct_1(func_4(func_2(global1[_wgslsmith_index_u32(30626u, 29u)], vec3<f32>(arg_2.a.b.x, arg_2.a.b.x, -471f)), func_2(Struct_2(arg_2.d, arg_2.a, arg_1.xw, -1i), arg_2.d.b), Struct_2(arg_2.a, arg_2.d, vec2<u32>(4294967295u, arg_2.c), u_input.b.x), arg_2.a.d.x).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d.b.x, -308f, arg_2.d.b.x))), false, select(select(vec2<bool>(arg_2.d.c, arg_2.d.a.x), vec2<bool>(true, arg_2.b), arg_2.a.a.x), !arg_2.d.a, arg_2.d.b.x > 2500f))), Struct_2(arg_2.a, arg_2.d, arg_1.zz, _wgslsmith_div_i32(u_input.a.x, abs(22354i)) | -_wgslsmith_sub_i32(u_input.b.x, u_input.c)), select(!(!arg_2.d.d.x), (-20256i << (arg_1.x % 32u)) == u_input.c, any(arg_2.d.a)));
    let var_1 = func_2(Struct_2(Struct_1(var_0.d, vec3<f32>(arg_0, 897f, _wgslsmith_f_op_f32(var_0.b.x * arg_2.a.b.x)), arg_2.d.d.x | func_4(Struct_3(arg_2.a, var_0.c, arg_1.x, Struct_1(var_0.d, vec3<f32>(arg_2.d.b.x, var_0.b.x, -1052f), false, var_0.a)), Struct_3(Struct_1(var_0.d, vec3<f32>(arg_2.d.b.x, arg_2.a.b.x, arg_2.d.b.x), true, var_0.a), true, arg_1.x, arg_2.d), global1[_wgslsmith_index_u32(u_input.d, 29u)], arg_2.a.d.x).c, vec2<bool>(true, func_2(global1[_wgslsmith_index_u32(u_input.d, 29u)], arg_2.a.b).b)), arg_2.d, _wgslsmith_clamp_vec2_u32(arg_1.wx, ~(~arg_1.wy), abs(vec2<u32>(arg_1.x, 0u))), u_input.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, -636f, _wgslsmith_f_op_f32(f32(-1f) * -167f)))).a;
    return global1[_wgslsmith_index_u32(func_2(global1[_wgslsmith_index_u32(u_input.d, 29u)], vec3<f32>(var_0.b.x, arg_2.d.b.x, _wgslsmith_f_op_f32(step(-194f, 1000f)))).c, 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(-1f), _wgslsmith_sub_vec4_u32(func_1(), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.d, u_input.d, u_input.d, 0u), ~vec4<u32>(u_input.d, 57648u, u_input.d, u_input.d) << (vec4<u32>(79353u, 1u, 117675u, u_input.d) % vec4<u32>(32u)))), func_2(Struct_2(Struct_1(func_2(global1[_wgslsmith_index_u32(6273u, 29u)], vec3<f32>(-338f, 359f, 1501f)).a.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(606f, 770f, -542f) * vec3<f32>(1441f, -596f, 1168f)), false, vec2<bool>(true, true)), func_2(Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(-795f, 813f, 795f), true, vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true), vec3<f32>(339f, -1000f, -203f), false, vec2<bool>(false, true)), vec2<u32>(u_input.d, u_input.d), -1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-795f, -1394f, -1268f))).a, _wgslsmith_mult_vec2_u32(~vec2<u32>(55553u, 1u), max(vec2<u32>(u_input.d, u_input.d), vec2<u32>(36294u, 4294967295u))), u_input.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1105f, -418f, 658f)))) - vec3<f32>(1f, 1f, 1f))));
    global0 = array<vec4<bool>, 31>();
    let var_1 = Struct_3(func_2(Struct_2(Struct_1(!var_0.b.a, var_0.a.b, all(global0[_wgslsmith_index_u32(u_input.d, 31u)]), var_0.a.d), Struct_1(func_5(-738f, vec4<u32>(4294967295u, 33739u, 4294967295u, 6188u), Struct_3(var_0.a, false, 35798u, Struct_1(var_0.a.a, vec3<f32>(var_0.b.b.x, 1000f, -570f), var_0.a.d.x, var_0.a.d))).a.a, _wgslsmith_div_vec3_f32(var_0.a.b, var_0.b.b), func_5(1644f, vec4<u32>(u_input.d, 1902u, 0u, 0u), Struct_3(Struct_1(var_0.a.d, var_0.a.b, true, vec2<bool>(var_0.b.d.x, var_0.b.a.x)), true, 0u, var_0.a)).a.d.x, func_4(Struct_3(Struct_1(var_0.b.a, var_0.a.b, var_0.b.a.x, vec2<bool>(var_0.a.d.x, true)), var_0.b.a.x, 0u, var_0.a), Struct_3(var_0.b, false, 1u, var_0.a), global1[_wgslsmith_index_u32(4294967295u, 29u)], false).d), ~vec2<u32>(40622u, var_0.c.x), 1i), vec3<f32>(-1631f, var_0.a.b.x, _wgslsmith_f_op_f32(var_0.b.b.x + 1884f))).a, var_0.a.a.x, _wgslsmith_mult_u32(~(~8952u ^ u_input.d), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(37717u, u_input.d, var_0.c.x), ~63103u, u_input.d), 4294967295u)), Struct_1(var_0.a.d, vec3<f32>(-249f, 334f, var_0.a.b.x), !(!select(true, true, false)), !var_0.b.d));
    var var_2 = Struct_2(var_1.d, func_4(Struct_3(Struct_1(func_2(Struct_2(Struct_1(var_0.a.a, vec3<f32>(var_1.a.b.x, -3436f, 391f), false, var_1.a.d), var_1.d, var_0.c, -18102i), vec3<f32>(var_0.a.b.x, var_0.b.b.x, var_0.a.b.x)).d.d, _wgslsmith_f_op_vec3_f32(exp2(var_0.a.b)), func_4(var_1, Struct_3(Struct_1(var_0.b.d, var_0.b.b, var_1.b, var_0.a.a), false, 4294967295u, var_0.a), var_0, false).c, !var_1.a.a), var_1.d.d.x, ~u_input.d, Struct_1(func_5(-1743f, vec4<u32>(var_0.c.x, 12538u, 19116u, u_input.d), var_1).b.a, var_0.a.b, true, !var_0.b.d)), var_1, func_5(722f, countOneBits(reverseBits(vec4<u32>(69777u, 9674u, var_0.c.x, var_1.c))), Struct_3(var_0.a, false, ~9383u, Struct_1(var_0.a.d, var_0.a.b, true, vec2<bool>(false, var_1.b)))), func_2(global1[_wgslsmith_index_u32(abs(34597u), 29u)], _wgslsmith_f_op_vec3_f32(-var_0.a.b)).d.b.x < _wgslsmith_div_f32(735f, _wgslsmith_f_op_f32(var_1.a.b.x * var_0.a.b.x))), var_0.c, _wgslsmith_mult_i32(-1i, -13693i));
    var var_3 = !vec2<bool>(var_0.a.a.x, (-1028f >= _wgslsmith_div_f32(var_2.a.b.x, var_2.a.b.x)) || false);
    let var_4 = abs((var_0.c >> (firstLeadingBit(var_2.c) % vec2<u32>(32u))) << (vec2<u32>(var_0.c.x, 0u | var_1.c) % vec2<u32>(32u))) >> (var_2.c % vec2<u32>(32u));
    let var_5 = var_2.a;
    var var_6 = true;
    var var_7 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~func_2(var_0, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_0.b.b, var_1.d.b), vec3<f32>(1000f, var_5.b.x, var_7.a.b.x))).c, i32(-1i) * -var_0.d, select(_wgslsmith_add_vec3_u32(vec3<u32>(func_1().x, firstTrailingBit(u_input.d), var_7.c ^ var_0.c.x), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(12971u, 4294967295u, 28460u), vec3<u32>(u_input.d, var_4.x, var_1.c)), ~1u, _wgslsmith_dot_vec2_u32(var_2.c, var_2.c))), reverseBits(vec3<u32>(1u, 601u, var_1.c >> (111043u % 32u))), select(vec3<bool>(true, true, true), select(vec3<bool>(var_7.b, false, var_1.d.a.x), select(vec3<bool>(false, var_2.a.a.x, true), vec3<bool>(false, true, true), false), true), true)), u_input.a);
}

