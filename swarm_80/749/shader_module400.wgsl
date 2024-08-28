struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: u32,
    c: Struct_3,
    d: Struct_4,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
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

var<private> global0: Struct_3 = Struct_3(vec4<f32>(-1884f, 183f, 1413f, 2552f), 1134f, vec2<bool>(false, false), Struct_1(vec2<f32>(1413f, 2557f)), vec4<i32>(i32(-2147483648), -1i, 28852i, 2889i));

var<private> global1: i32;

var<private> global2: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(vec2<f32>(-839f, -1002f)), Struct_1(vec2<f32>(1300f, 365f)), Struct_1(vec2<f32>(533f, 886f)), 9584i), Struct_2(Struct_1(vec2<f32>(1926f, 1000f)), Struct_1(vec2<f32>(132f, 940f)), Struct_1(vec2<f32>(-238f, 658f)), i32(-2147483648)), Struct_2(Struct_1(vec2<f32>(-1442f, 309f)), Struct_1(vec2<f32>(1547f, 1300f)), Struct_1(vec2<f32>(165f, -1001f)), 0i), Struct_2(Struct_1(vec2<f32>(-126f, 435f)), Struct_1(vec2<f32>(-1544f, -220f)), Struct_1(vec2<f32>(-1090f, 105f)), -54086i), Struct_2(Struct_1(vec2<f32>(169f, -321f)), Struct_1(vec2<f32>(983f, -1499f)), Struct_1(vec2<f32>(454f, 918f)), -1i), Struct_2(Struct_1(vec2<f32>(-642f, 471f)), Struct_1(vec2<f32>(1584f, 1000f)), Struct_1(vec2<f32>(1773f, -344f)), 0i), Struct_2(Struct_1(vec2<f32>(-1644f, -348f)), Struct_1(vec2<f32>(-1000f, 1341f)), Struct_1(vec2<f32>(680f, 320f)), -1i));

var<private> global3: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(14811u, 38955u), vec2<u32>(1u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(5089u, 1u), vec2<u32>(1u, 1u), vec2<u32>(15152u, 4294967295u), vec2<u32>(4294967295u, 579u), vec2<u32>(13852u, 82780u), vec2<u32>(1u, 18320u));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: u32) -> bool {
    let var_0 = global0.d;
    global1 = firstLeadingBit(67049i);
    return global0.c.x;
}

fn func_2() -> bool {
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.b, 2050f, global0.d.a.x, global0.a.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a - global0.a)))), _wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_f_op_f32(select(-293f, 661f, any(select(vec4<bool>(global0.c.x, global0.c.x, global0.c.x, global0.c.x), vec4<bool>(global0.c.x, false, false, global0.c.x), vec4<bool>(global0.c.x, true, false, global0.c.x))))), any(vec4<bool>(!global0.c.x, true, all(vec2<bool>(true, global0.c.x)), global0.c.x)))), select(!select(vec2<bool>(true, global0.c.x), select(vec2<bool>(global0.c.x, false), global0.c, true), true), vec2<bool>(global0.c.x, func_3(_wgslsmith_f_op_f32(round(1041f)), true, 1u)), select(global0.c, vec2<bool>(false, func_3(global0.d.a.x, false, 75242u)), 9529u == ~u_input.a.x)), global0.d, vec4<i32>(global0.e.x, 22561i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(global0.e.x, global0.e.x, global0.e.x) << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.b.x) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(-5547i, 54704i, -36828i)), !global0.c.x), vec3<i32>(global0.e.x, _wgslsmith_mult_i32(global0.e.x, global0.e.x), global0.e.x)), _wgslsmith_dot_vec4_i32(select(global0.e, global0.e, true) << (vec4<u32>(1968u, u_input.a.x, 61117u, u_input.a.x) % vec4<u32>(32u)), -_wgslsmith_add_vec4_i32(global0.e, vec4<i32>(0i, 2147483647i, 2147483647i, global0.e.x)))));
    global3 = array<vec2<u32>, 11>();
    var var_0 = Struct_4(global0.e.x, global0.e.x, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(7818u >> (reverseBits(u_input.a.x >> (u_input.a.x % 32u)) % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.b.x, 0u), select(vec3<u32>(44233u, u_input.b.x, 35185u), max(vec3<u32>(58681u, u_input.b.x, 1u), vec3<u32>(u_input.b.x, u_input.a.x, u_input.a.x)), false)), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, u_input.a.x, u_input.b.x), ~vec3<u32>(0u, u_input.a.x, 54459u))), 7u)], Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global0.a * vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1603f, global0.b, -2010f, global0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(abs(global0.d.a.x))) + 878f), !global0.c, global0.d, global0.e));
    var_0 = Struct_4(var_0.d.e.x, 1i << (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b.x, 0u, u_input.a.x), ~vec3<u32>(1u, 1u, u_input.b.x)), firstLeadingBit(vec3<u32>(u_input.b.x, u_input.a.x, u_input.b.x))) % 32u), global2[_wgslsmith_index_u32(u_input.b.x, 7u)], Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_0.d.a, global0.a)) - global0.a), var_0.d.a, var_0.d.c.x)), -117f, vec2<bool>(global0.c.x & (var_0.d.c.x || true), true), var_0.d.d, _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(global0.e.x, var_0.d.e.x, -47091i, 18808i)), -(vec4<i32>(global0.e.x, 2147483647i, global0.e.x, 1i) | global0.e))));
    var var_1 = var_0.c;
    return var_0.d.c.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: i32, arg_3: vec2<i32>) -> Struct_5 {
    var var_0 = u_input.b;
    let var_1 = Struct_3(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1641f)), vec2<bool>(global0.c.x, all(vec3<bool>(0u < var_0.x, true, any(vec3<bool>(true, global0.c.x, global0.c.x))))), arg_1.b, global0.e);
    let var_2 = var_0.x > ~(min(_wgslsmith_add_u32(4294967295u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, 1u), vec3<u32>(var_0.x, 1u, 4294967295u))) << (u_input.a.x % 32u));
    global2 = array<Struct_2, 7>();
    global1 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(12863i, 1i, -6536i, 40168i) >> (vec4<u32>(11659u, u_input.a.x, 26211u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(global0.e.x, -2147483647i, var_1.e.x, arg_2), func_2()), _wgslsmith_add_vec4_i32(~vec4<i32>(arg_1.d, arg_3.x, arg_2, -15195i), vec4<i32>(var_1.e.x, var_1.e.x, arg_2, 1i))), max(1i, firstTrailingBit(71188i)) >> (arg_0.x % 32u)) | 0i;
    return Struct_5(vec2<u32>(~u_input.b.x, u_input.a.x), 0u, var_1, Struct_4(((-2147483647i ^ var_1.e.x) | _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.x, 5446i, arg_1.d), vec3<i32>(27999i, 2147483647i, arg_1.d))) & max(0i, max(var_1.e.x, -4849i)), _wgslsmith_dot_vec4_i32(min(var_1.e, var_1.e), firstTrailingBit(global0.e)), global2[_wgslsmith_index_u32(60795u, 7u)], var_1), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), arg_0), max(u_input.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, arg_0.x, 95883u), ~vec3<u32>(arg_0.x, 0u, 21749u))), max(7642u, max(~1354u, u_input.b.x)), ~_wgslsmith_sub_u32(u_input.b.x, 4294967295u)));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_5, arg_3: vec3<bool>) -> u32 {
    let var_0 = arg_1.d.c.x;
    global3 = array<vec2<u32>, 11>();
    var var_1 = func_1(vec2<u32>(u_input.a.x, ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(39611u, arg_0), 0u)), Struct_2(arg_1.d.d, func_1(vec2<u32>(_wgslsmith_sub_u32(arg_0, 13994u), ~4294967295u), func_1(vec2<u32>(arg_2.a.x, arg_0), Struct_2(Struct_1(vec2<f32>(arg_2.d.d.a.x, 1000f)), Struct_1(vec2<f32>(global0.d.a.x, -1320f)), Struct_1(arg_2.c.d.a), -24145i), min(2147483647i, -1i), ~vec2<i32>(arg_1.a, -21529i)).d.c, -3774i, firstTrailingBit(func_1(arg_2.a, Struct_2(arg_2.d.d.d, global0.d, arg_2.c.d, -1i), arg_2.c.e.x, arg_1.d.e.yx).c.e.wx)).d.d.d, Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.c.a.x, 441f), global0.a.zz)), 3488i), arg_2.d.d.e.x ^ reverseBits(-_wgslsmith_add_i32(arg_2.c.e.x, global0.e.x)), -vec2<i32>(arg_1.d.e.x, -arg_2.d.b >> (1u % 32u))).d;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-220f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.b.a.x))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(411f, arg_1.c.a.a.x) + vec2<f32>(global0.b, arg_1.d.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_div_vec2_f32(arg_1.c.c.a, var_1.d.a.xz))))));
    var_1 = Struct_4(~(i32(-1i) * -7013i), _wgslsmith_mult_i32(-_wgslsmith_sub_i32(1i, min(var_1.b, 27648i)), _wgslsmith_dot_vec2_i32(~(~global0.e.xz), vec2<i32>(-3924i, -19655i) ^ var_1.d.e.zw)), Struct_2(var_1.d.d, func_1(countOneBits(select(arg_2.a, vec2<u32>(u_input.b.x, 12930u), global0.c.x)), var_1.c, arg_2.c.e.x, ~global0.e.yx).c.d, func_1(reverseBits(vec2<u32>(arg_2.e.x, 17875u)), Struct_2(arg_1.d.d, var_1.c.c, Struct_1(vec2<f32>(global0.a.x, global0.d.a.x)), _wgslsmith_add_i32(0i, 0i)), var_1.b, vec2<i32>(1i, min(16203i, -1i))).c.d, reverseBits(~arg_1.c.d)), func_1(_wgslsmith_mult_vec2_u32(max(vec2<u32>(39682u, u_input.b.x), vec2<u32>(arg_2.b, 1u)), vec2<u32>(u_input.a.x, arg_2.e.x)) & _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 13256u), global3[_wgslsmith_index_u32(arg_2.b, 11u)]), ~global3[_wgslsmith_index_u32(u_input.b.x, 11u)]), Struct_2(var_1.d.d, Struct_1(vec2<f32>(-281f, 879f)), Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.c.b.a)), global0.e.x), -11510i, ~(vec2<i32>(var_1.d.e.x, 9361i) | ~arg_1.d.e.xx)).c);
    return _wgslsmith_div_u32(_wgslsmith_add_u32(~arg_0, min(~arg_2.a.x, arg_2.e.x) << (_wgslsmith_div_u32(_wgslsmith_sub_u32(4674u, arg_2.e.x), arg_2.e.x) % 32u)), ~0u);
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<u32>) -> Struct_4 {
    var var_0 = 539i;
    let var_1 = countOneBits(global0.e.x);
    var var_2 = ~(~0u) | (arg_0.x | arg_0.x);
    let var_3 = false;
    var_2 = arg_1.x;
    return Struct_4(var_1, 9562i, func_1(min(~vec2<u32>(arg_0.x, 1u), ~(vec2<u32>(u_input.b.x, 59148u) >> (vec2<u32>(arg_1.x, 3305u) % vec2<u32>(32u)))), Struct_2(func_1(vec2<u32>(48199u, arg_0.x), Struct_2(Struct_1(vec2<f32>(-526f, global0.d.a.x)), Struct_1(vec2<f32>(global0.d.a.x, global0.b)), Struct_1(vec2<f32>(global0.a.x, global0.a.x)), -2147483647i), _wgslsmith_dot_vec4_i32(global0.e, vec4<i32>(global0.e.x, global0.e.x, global0.e.x, var_1)), global0.e.wx).d.d.d, func_1(~vec2<u32>(arg_0.x, 4294967295u), func_1(u_input.a, global2[_wgslsmith_index_u32(0u, 7u)], global0.e.x, vec2<i32>(var_1, -15414i)).d.c, min(45198i, 2147483647i), abs(vec2<i32>(-2147483647i, global0.e.x))).d.c.c, global0.d, abs(_wgslsmith_div_i32(var_1, 0i))), firstTrailingBit(_wgslsmith_dot_vec4_i32(~global0.e, select(vec4<i32>(global0.e.x, global0.e.x, var_1, -21967i), vec4<i32>(var_1, global0.e.x, 39976i, -1i), vec4<bool>(true, false, false, global0.c.x)))), -reverseBits(global0.e.zy) << (_wgslsmith_mod_vec2_u32(~u_input.b, min(vec2<u32>(514u, arg_0.x), arg_1.xx)) % vec2<u32>(32u))).d.c, func_1(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), vec2<u32>(arg_1.x, 4294967295u)), 4294967295u, ~arg_0.x), ~4294967295u), 11u)], global2[_wgslsmith_index_u32(abs(~u_input.b.x), 7u)], _wgslsmith_dot_vec4_i32(vec4<i32>(8647i, _wgslsmith_mod_i32(1i, global0.e.x), _wgslsmith_mod_i32(-75007i, 2147483647i), var_1), global0.e), vec2<i32>(-18410i, _wgslsmith_mod_i32(global0.e.x & global0.e.x, -global0.e.x))).c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec2<u32>(func_4(_wgslsmith_add_u32(u_input.b.x, ~4294967295u), Struct_4(1i, 0i, Struct_2(global0.d, global0.d, global0.d, 0i), Struct_3(vec4<f32>(-413f, global0.a.x, 162f, -307f), global0.a.x, vec2<bool>(global0.c.x, global0.c.x), Struct_1(global0.d.a), vec4<i32>(global0.e.x, -12831i, global0.e.x, 2147483647i))), func_1(~global3[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(u_input.a.x, 7u)], -2147483647i, global0.e.xw), !vec3<bool>(global0.c.x, false, global0.c.x)), u_input.b.x), vec4<u32>(u_input.a.x, 36159u, ~(~(~u_input.a.x)), _wgslsmith_sub_u32(32243u, 6682u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a.xw + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-341f, -636f), global0.d.a) + global0.d.a) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(877f, var_0.d.a.x)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c.c.a * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a.xx - global0.a.zz) - _wgslsmith_f_op_vec2_f32(global0.a.wx + global0.d.a)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-1000f)), global0.b)));
    var var_3 = vec4<bool>(true, var_0.d.c.x, func_1(vec2<u32>(74703u, 0u), var_0.c, global0.e.x, _wgslsmith_mult_vec2_i32(vec2<i32>(0i, 1i), _wgslsmith_mod_vec2_i32(-global0.e.zx, abs(vec2<i32>(25661i, global0.e.x))))).d.d.c.x, false);
    global2 = array<Struct_2, 7>();
    var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-708f, 572f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.b)))), vec2<f32>(598f, var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

