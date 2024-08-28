struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: f32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(15552u, 32258u, 52471u, 58102u, 4294967295u, 13052u, 6789u, 28553u, 0u, 1u, 4294967295u, 0u, 4294967295u, 71583u, 13531u, 0u, 1u, 4294967295u);

var<private> global1: vec3<f32> = vec3<f32>(1000f, -898f, -460f);

var<private> global2: array<vec4<u32>, 17> = array<vec4<u32>, 17>(vec4<u32>(9672u, 64652u, 0u, 1u), vec4<u32>(0u, 4294967295u, 31937u, 3361u), vec4<u32>(4294967295u, 5400u, 10983u, 0u), vec4<u32>(4294967295u, 1u, 59513u, 11879u), vec4<u32>(4294967295u, 1u, 4294967295u, 47845u), vec4<u32>(4294967295u, 113396u, 4294967295u, 33178u), vec4<u32>(1u, 37665u, 12789u, 8527u), vec4<u32>(10762u, 86984u, 4294967295u, 0u), vec4<u32>(4294967295u, 1u, 383u, 56154u), vec4<u32>(17361u, 49788u, 4294967295u, 22180u), vec4<u32>(4294967295u, 0u, 1u, 4459u), vec4<u32>(0u, 19625u, 51047u, 79564u), vec4<u32>(4294967295u, 4294967295u, 28363u, 4294967295u), vec4<u32>(38939u, 21692u, 0u, 0u), vec4<u32>(0u, 152517u, 1u, 29165u), vec4<u32>(27806u, 55819u, 53060u, 1u), vec4<u32>(0u, 4294967295u, 11373u, 0u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_3 {
    var var_0 = vec2<u32>(max(abs(max(~global0[_wgslsmith_index_u32(1u, 18u)], u_input.b)), ~_wgslsmith_mod_u32(25748u, u_input.b)), _wgslsmith_add_u32(~4294967295u, ~u_input.b));
    return Struct_3(Struct_1(~_wgslsmith_mod_vec4_i32(arg_0.b.a, select(vec4<i32>(24859i, 1i, 0i, 2698i), vec4<i32>(1432i, 0i, 46147i, u_input.c), arg_0.e.x)), i32(-1i) * -(u_input.e ^ u_input.c), arg_0.c), arg_0, Struct_2(any(arg_0.e.wzx), arg_0.b, -13922i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x)))), select(vec4<bool>(true, true, !arg_0.e.x, any(arg_0.e.xwx)), select(select(vec4<bool>(true, false, true, arg_0.e.x), arg_0.e, arg_0.e), !arg_0.e, !vec4<bool>(arg_0.a, arg_0.e.x, arg_0.e.x, arg_0.a)), vec4<bool>(true, true, any(arg_0.e.xyw), true == arg_0.a))), Struct_1(vec4<i32>(-max(18510i, 224i), select(0i, 25244i, true), -1i, abs(reverseBits(21475i))), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.e, -2147483647i, -20650i), -vec3<i32>(arg_0.c, arg_0.b.c, arg_0.b.a.x)), countOneBits(u_input.d.x << ((global0[_wgslsmith_index_u32(var_0.x, 18u)] ^ 33947u) % 32u))));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_2) -> vec3<bool> {
    global2 = array<vec4<u32>, 17>();
    let var_0 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, arg_2, arg_2, 1i), arg_3.b.a, arg_3.b.a), vec4<i32>(-arg_2, arg_3.c, 56790i, _wgslsmith_dot_vec3_i32(~arg_3.b.a.zyw, select(vec3<i32>(10977i, 0i, -1i), arg_3.b.a.xxy, arg_1.x)))), arg_2, arg_2);
    let var_1 = (abs(global0[_wgslsmith_index_u32(27331u ^ u_input.b, 18u)]) << (_wgslsmith_mult_u32(u_input.a.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, 1u), _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(u_input.b, 17u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 17u)])), 18u)]) % 32u)) ^ ~1u;
    return !vec3<bool>(arg_1.x, arg_3.a, false);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(floor(-1717f)), 335f, _wgslsmith_f_op_f32(max(arg_2.d, _wgslsmith_f_op_f32(sign(-631f)))))));
    var var_0 = firstTrailingBit(-firstTrailingBit(arg_1.d.b));
    var var_1 = vec2<f32>(arg_2.d, arg_0.x);
    let var_2 = Struct_2(func_2(Struct_2(all(vec2<bool>(arg_1.b.e.x, arg_1.c.e.x)), func_2(Struct_2(arg_1.c.e.x, arg_1.c.b, arg_2.c, 348f, arg_2.e), vec3<f32>(606f, global1.x, 1000f)).a, select(-1i, -1i, false), _wgslsmith_f_op_f32(round(-764f)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, arg_0.x, -1984f) - vec3<f32>(arg_0.x, -686f, arg_1.c.d)))).b.c != -16964i, Struct_1(vec4<i32>(39191i, 0i, _wgslsmith_add_i32(5676i << (arg_3.x % 32u), u_input.e), arg_2.c), _wgslsmith_add_i32(1i, 0i >> ((u_input.b & 0u) % 32u)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-23834i, arg_2.b.a.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-59694i, arg_1.b.c), vec2<i32>(-1i, 21439i)), _wgslsmith_add_i32(-24615i, arg_2.c)), _wgslsmith_mult_i32(-2147483647i, func_2(Struct_2(false, Struct_1(vec4<i32>(-10490i, -30535i, 54533i, arg_2.c), arg_1.a.b, arg_2.c), arg_2.c, arg_2.d, arg_2.e), vec3<f32>(arg_1.c.d, 1000f, 115f)).d.b))), 0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), vec4<bool>(false, arg_2.a, _wgslsmith_sub_i32(arg_1.b.b.c << (u_input.a.x % 32u), 2465i) > min(_wgslsmith_mult_i32(-36028i, 7782i), _wgslsmith_dot_vec2_i32(arg_2.b.a.yw, u_input.d.wy)), all(select(vec3<bool>(false, true, arg_2.e.x), vec3<bool>(arg_2.a, arg_2.a, arg_2.e.x), select(false, arg_1.b.a, false)))));
    var var_3 = arg_2.b.a;
    return Struct_2(!arg_1.b.a, func_2(Struct_2(arg_2.e.x, Struct_1(func_2(arg_1.b, vec3<f32>(-222f, 1389f, arg_0.x)).d.a, 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c, 21016i), vec2<i32>(-49761i, 22725i))), 1i, global1.x, !arg_2.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(350f, 568f, global1.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.x, arg_0.x, 291f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.d, global1.x, global1.x), vec3<f32>(-397f, global1.x, var_2.d)))))).c.b, ~(reverseBits(12574i) >> (global0[_wgslsmith_index_u32(countOneBits(1u), 18u)] % 32u)) << (~countOneBits(u_input.b) % 32u), arg_1.b.d, select(vec4<bool>(arg_1.c.e.x, arg_1.b.a, var_2.a, arg_2.a | true), var_2.e, vec4<bool>(any(!var_2.e), !(-716f >= var_1.x), _wgslsmith_f_op_f32(arg_1.b.d + arg_1.b.d) < _wgslsmith_f_op_f32(-1620f + arg_0.x), true)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = vec4<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(f32(-1f) * -161f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) - -1968f));
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_0.yy * var_0.xz))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.zy)))), func_2(Struct_2((arg_0.x || true) & all(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), arg_1, -arg_1.c, global1.x, !select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, true))), var_0.www), Struct_2(arg_0.x, func_2(Struct_2(arg_0.x, Struct_1(vec4<i32>(51684i, arg_1.a.x, -26461i, -41139i), 49503i, u_input.e), ~u_input.d.x, _wgslsmith_f_op_f32(-global1.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec3_f32(select(var_0.wzx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1737f, var_0.x, global1.x)), func_3(false, vec3<bool>(arg_0.x, false, false), -2147483647i, Struct_2(arg_0.x, arg_1, 2147483647i, -1442f, vec4<bool>(true, true, false, arg_0.x)))))).d, u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(global1.x - var_0.x)) - var_0.x), vec4<bool>(arg_0.x, !any(vec2<bool>(arg_0.x, false)), true, !arg_0.x)), firstTrailingBit(firstTrailingBit(max(u_input.a.zy, countOneBits(u_input.a.yz)))));
    let var_2 = u_input.c;
    var var_3 = var_1;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1605f))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_3) -> Struct_2 {
    global2 = array<vec4<u32>, 17>();
    let var_0 = Struct_1(reverseBits(-vec4<i32>(1i, -arg_2.d.b, arg_2.c.c, arg_1.c >> (4294967295u % 32u))), -18324i, 49494i & ~arg_0.b.c);
    let var_1 = ~(~vec3<u32>(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(24714u, u_input.a.x), 18u)], u_input.b, ~u_input.a.x), select(~u_input.b, 21585u, false), global0[_wgslsmith_index_u32(~90798u, 18u)] ^ _wgslsmith_clamp_u32(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(85905u, 18u)], 18u)], 4294967295u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.d, -897f, 953f, arg_3.b.d)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, arg_1.d, 1561f, -712f), vec4<f32>(1000f, -1158f, -237f, arg_2.c.d), arg_3.c.e)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2417f * 789f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(-arg_1.d))), _wgslsmith_f_op_f32(-global1.x), 1f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_3.b.d + -1000f), arg_2.c.d, arg_0.d, _wgslsmith_f_op_f32(2709f + arg_2.b.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-217f, arg_1.d, -1552f, arg_2.c.d)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(338f, arg_0.d, 2836f, -431f) + vec4<f32>(413f, arg_0.d, arg_0.d, 849f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1694f, 311f, 423f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1045f, global1.x, -316f, -857f) * vec4<f32>(arg_1.d, global1.x, -726f, 116f))))))), !(any(!arg_1.e.wx) & false)));
    let var_3 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.xz * var_2.xz), _wgslsmith_f_op_vec2_f32(var_2.yy * vec2<f32>(global1.x, arg_3.b.d))))), Struct_3(arg_0.b, func_2(func_2(arg_2.b, _wgslsmith_f_op_vec3_f32(var_2.yzz * vec3<f32>(arg_1.d, var_2.x, -467f))).c, var_2.yww).c, func_2(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, arg_0.d)), arg_2, Struct_2(arg_1.e.x, Struct_1(vec4<i32>(-1i, var_0.b, 16392i, 0i), -33759i, arg_0.b.a.x), arg_2.d.b, -786f, arg_0.e), vec2<u32>(u_input.a.x, var_1.x)), _wgslsmith_f_op_vec3_f32(select(var_2.zyw, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.x, 614f, arg_2.c.d))), select(vec3<bool>(false, arg_1.e.x, true), vec3<bool>(arg_0.e.x, arg_3.b.e.x, false), vec3<bool>(arg_2.b.e.x, arg_3.c.e.x, false))))).c, arg_2.d), arg_3.c, select(vec2<u32>(~(~var_1.x), 55231u), ~(~abs(vec2<u32>(global0[_wgslsmith_index_u32(var_1.x, 18u)], u_input.a.x))), !select(!vec2<bool>(arg_0.e.x, false), !arg_0.e.yw, !arg_0.e.yz)));
    return func_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_3.c.d, 344f), _wgslsmith_f_op_vec2_f32(select(var_2.wx, var_2.yx, false)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.xx * vec2<f32>(arg_2.b.d, 605f)))))), Struct_3(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1474f, arg_0.d))), Struct_3(Struct_1(vec4<i32>(u_input.c, 1i, 1i, var_0.a.x), -63342i, -9291i), func_2(Struct_2(false, arg_1.b, arg_3.d.c, arg_3.c.d, vec4<bool>(false, true, arg_0.e.x, true)), vec3<f32>(894f, -955f, -1573f)).b, func_2(Struct_2(true, Struct_1(var_0.a, 1i, 1i), 0i, arg_0.d, arg_2.c.e), vec3<f32>(arg_0.d, arg_2.b.d, arg_0.d)).c, Struct_1(vec4<i32>(-9669i, var_0.c, 1i, 31902i), -1i, arg_3.d.c)), Struct_2(all(vec3<bool>(true, arg_3.c.a, false)), arg_3.b.b, ~u_input.e, -409f, vec4<bool>(arg_0.a, false, false, arg_3.b.a)), ~abs(var_1.yx)).b, arg_1, arg_3.c, func_2(arg_1, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(var_2.yyy, vec3<f32>(412f, 334f, arg_1.d), arg_1.e.zwx))))).d), Struct_2(arg_0.e.x && var_3.e.x, Struct_1(u_input.d, func_4(_wgslsmith_f_op_vec2_f32(global1.zx + var_2.yy), Struct_3(Struct_1(arg_1.b.a, arg_3.c.b.c, arg_1.b.b), Struct_2(false, arg_0.b, arg_1.c, var_3.d, vec4<bool>(arg_2.b.a, arg_3.b.e.x, false, arg_3.c.e.x)), arg_1, Struct_1(arg_0.b.a, var_0.c, -21869i)), func_2(Struct_2(false, arg_3.d, -18747i, -278f, arg_2.c.e), var_2.wwx).c, ~vec2<u32>(u_input.b, 1u)).c, ~1i), ~(~_wgslsmith_mult_i32(arg_2.b.b.a.x, var_3.b.b)), _wgslsmith_f_op_f32(-arg_2.b.d), !(!vec4<bool>(false, arg_1.a, arg_2.c.e.x, arg_0.e.x))), vec2<u32>(abs(_wgslsmith_mult_u32(57078u, 47546u)) << (abs(~var_1.x) % 32u), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1u, 18u)], u_input.b), vec2<u32>(1u, 40096u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 17>();
    global0 = array<u32, 18>();
    var var_0 = Struct_3(Struct_1(vec4<i32>(u_input.d.x, ~(u_input.c | -23741i), ~firstLeadingBit(u_input.d.x), u_input.c), ~abs(u_input.c), _wgslsmith_add_i32(u_input.c, u_input.e)), func_5(Struct_2(true, Struct_1(vec4<i32>(u_input.c, u_input.d.x, 13467i, u_input.c), 1i, u_input.e), 14701i, _wgslsmith_f_op_f32(func_1(vec2<bool>(false, false), Struct_1(u_input.d, -1i, 54217i))), vec4<bool>(true, true, any(vec3<bool>(true, false, false)), u_input.e > 7003i)), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) - global1.yx)), Struct_3(func_2(Struct_2(true, Struct_1(vec4<i32>(-26336i, u_input.e, 2147483647i, 40252i), -2147483647i, u_input.c), -1i, 917f, vec4<bool>(false, true, true, true)), vec3<f32>(2393f, global1.x, 397f)).b.b, Struct_2(true, Struct_1(u_input.d, u_input.d.x, 0i), 28212i, 700f, vec4<bool>(false, true, true, false)), func_2(Struct_2(false, Struct_1(vec4<i32>(-18920i, u_input.d.x, 1i, 2147483647i), u_input.d.x, -2147483647i), u_input.c, 1082f, vec4<bool>(false, true, false, false)), vec3<f32>(global1.x, global1.x, global1.x)).b, Struct_1(vec4<i32>(u_input.c, u_input.e, -51674i, 2147483647i), u_input.e, 20041i)), func_4(_wgslsmith_f_op_vec2_f32(-global1.xx), func_2(Struct_2(false, Struct_1(u_input.d, 0i, u_input.c), u_input.c, 1034f, vec4<bool>(false, true, false, false)), vec3<f32>(-424f, global1.x, global1.x)), Struct_2(false, Struct_1(u_input.d, u_input.c, 15717i), u_input.e, global1.x, vec4<bool>(false, true, false, false)), _wgslsmith_mod_vec2_u32(vec2<u32>(48909u, 0u), u_input.a.xy)), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], 12715u) << (abs(u_input.a.yx) % vec2<u32>(32u))), func_2(func_4(_wgslsmith_f_op_vec2_f32(abs(global1.zz)), Struct_3(Struct_1(vec4<i32>(-1i, 19080i, u_input.e, 4199i), -1i, u_input.c), Struct_2(false, Struct_1(u_input.d, -2147483647i, -1i), u_input.d.x, 1031f, vec4<bool>(true, false, false, false)), Struct_2(true, Struct_1(vec4<i32>(0i, 2147483647i, 1i, -22757i), 11985i, u_input.c), u_input.c, 1206f, vec4<bool>(false, true, true, false)), Struct_1(u_input.d, u_input.e, u_input.d.x)), func_2(Struct_2(true, Struct_1(vec4<i32>(u_input.e, 17243i, -22558i, u_input.e), u_input.d.x, -1i), 1i, -987f, vec4<bool>(false, true, true, false)), vec3<f32>(414f, global1.x, global1.x)).b, u_input.a.zz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 539f, 169f)))), func_2(Struct_2(any(vec3<bool>(true, true, true)), Struct_1(u_input.d, u_input.c, -21683i), u_input.d.x, _wgslsmith_f_op_f32(sign(global1.x)), vec4<bool>(true, false, false, true)), vec3<f32>(_wgslsmith_f_op_f32(round(179f)), _wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(-1000f + 634f)))), func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.x, -1410f), vec2<f32>(global1.x, global1.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(806f, global1.x), vec2<f32>(-1506f, -977f))))), func_2(Struct_2(false, Struct_1(u_input.d, -1i, u_input.d.x), i32(-1i) * -39690i, global1.x, vec4<bool>(false, false, true, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1048f, -564f, 271f))), func_4(global1.xy, func_2(Struct_2(false, Struct_1(vec4<i32>(u_input.c, u_input.d.x, u_input.d.x, u_input.d.x), 2858i, u_input.e), -35325i, 1489f, vec4<bool>(false, false, false, true)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1234f, 935f, global1.x)))), func_2(Struct_2(true, Struct_1(vec4<i32>(24948i, 1i, u_input.e, u_input.e), u_input.d.x, u_input.d.x), 2147483647i, global1.x, vec4<bool>(true, false, false, true)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.x, 1423f, -961f), vec3<f32>(global1.x, global1.x, -1596f)))).b, vec2<u32>(1u >> (u_input.b % 32u), ~u_input.b)), ~u_input.a.zy), func_4(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) * global1.yy))))), func_2(func_2(Struct_2(false, Struct_1(vec4<i32>(u_input.e, 1i, 21237i, u_input.e), -2147483647i, u_input.d.x), u_input.e, global1.x, vec4<bool>(false, true, true, true)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, 1229f, global1.x), vec3<f32>(-1000f, -184f, -119f), vec3<bool>(true, true, true)))).c, vec3<f32>(_wgslsmith_f_op_f32(-global1.x), 640f, 1969f)), Struct_2(func_5(Struct_2(true, Struct_1(u_input.d, u_input.e, 42185i), u_input.e, -932f, vec4<bool>(false, true, true, true)), func_5(Struct_2(false, Struct_1(u_input.d, -1660i, -21971i), -2147483647i, 634f, vec4<bool>(true, false, false, false)), Struct_2(false, Struct_1(vec4<i32>(u_input.d.x, u_input.c, u_input.e, u_input.c), u_input.d.x, -8820i), 2147483647i, global1.x, vec4<bool>(false, true, true, true)), Struct_3(Struct_1(u_input.d, 0i, u_input.d.x), Struct_2(true, Struct_1(u_input.d, 0i, 36291i), -14196i, 668f, vec4<bool>(true, false, true, true)), Struct_2(false, Struct_1(u_input.d, u_input.d.x, 0i), u_input.c, 363f, vec4<bool>(true, false, false, true)), Struct_1(vec4<i32>(-8411i, 0i, u_input.c, -2147483647i), 2147483647i, 1i)), Struct_3(Struct_1(vec4<i32>(1i, u_input.d.x, u_input.d.x, u_input.d.x), 2147483647i, u_input.d.x), Struct_2(true, Struct_1(u_input.d, u_input.c, u_input.c), u_input.e, 269f, vec4<bool>(true, false, false, false)), Struct_2(false, Struct_1(u_input.d, u_input.c, u_input.e), u_input.d.x, -712f, vec4<bool>(true, false, true, false)), Struct_1(u_input.d, 0i, u_input.e))), func_2(Struct_2(true, Struct_1(u_input.d, u_input.c, -62843i), 17140i, -297f, vec4<bool>(false, false, true, false)), vec3<f32>(-1174f, global1.x, 1015f)), Struct_3(Struct_1(vec4<i32>(0i, 1i, 1i, -1i), u_input.d.x, u_input.d.x), Struct_2(false, Struct_1(u_input.d, -53291i, 0i), -1i, global1.x, vec4<bool>(true, false, true, false)), Struct_2(false, Struct_1(u_input.d, 0i, u_input.d.x), -1i, global1.x, vec4<bool>(false, false, true, true)), Struct_1(u_input.d, u_input.e, u_input.c))).a, func_4(_wgslsmith_f_op_vec2_f32(select(global1.yy, vec2<f32>(global1.x, global1.x), false)), Struct_3(Struct_1(u_input.d, 2967i, u_input.e), Struct_2(false, Struct_1(vec4<i32>(72809i, -30212i, 0i, u_input.c), -26283i, 1i), u_input.c, global1.x, vec4<bool>(false, false, true, true)), Struct_2(false, Struct_1(u_input.d, u_input.d.x, u_input.c), u_input.d.x, global1.x, vec4<bool>(false, false, false, false)), Struct_1(vec4<i32>(u_input.d.x, u_input.e, u_input.d.x, u_input.c), u_input.e, u_input.d.x)), Struct_2(true, Struct_1(vec4<i32>(14215i, -2147483647i, u_input.e, 2147483647i), 18547i, -2147483647i), 6771i, global1.x, vec4<bool>(false, true, false, false)), u_input.a.yy).b, u_input.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x)), select(func_5(Struct_2(true, Struct_1(vec4<i32>(15638i, 2147483647i, 29318i, u_input.d.x), u_input.e, u_input.e), u_input.d.x, global1.x, vec4<bool>(false, false, false, false)), Struct_2(false, Struct_1(u_input.d, 16198i, 0i), u_input.e, global1.x, vec4<bool>(false, false, true, false)), Struct_3(Struct_1(vec4<i32>(1i, u_input.e, -47i, u_input.e), u_input.e, u_input.e), Struct_2(false, Struct_1(vec4<i32>(1i, 29875i, 64521i, 0i), -23716i, u_input.d.x), u_input.d.x, global1.x, vec4<bool>(false, true, true, true)), Struct_2(true, Struct_1(u_input.d, u_input.c, u_input.e), u_input.c, -531f, vec4<bool>(false, true, true, true)), Struct_1(u_input.d, u_input.d.x, u_input.c)), Struct_3(Struct_1(u_input.d, u_input.d.x, u_input.c), Struct_2(false, Struct_1(u_input.d, -1i, u_input.d.x), u_input.d.x, global1.x, vec4<bool>(true, true, true, true)), Struct_2(true, Struct_1(vec4<i32>(0i, u_input.c, u_input.d.x, 2147483647i), u_input.e, u_input.c), -2147483647i, global1.x, vec4<bool>(false, false, false, true)), Struct_1(vec4<i32>(u_input.d.x, u_input.c, 20519i, u_input.d.x), u_input.c, u_input.d.x))).e, func_5(Struct_2(false, Struct_1(u_input.d, u_input.c, u_input.d.x), u_input.e, -2292f, vec4<bool>(true, true, true, true)), Struct_2(true, Struct_1(vec4<i32>(u_input.c, u_input.c, u_input.d.x, -55801i), 60931i, u_input.c), 8023i, global1.x, vec4<bool>(true, true, false, false)), Struct_3(Struct_1(vec4<i32>(u_input.d.x, u_input.e, u_input.e, 1i), 0i, -6994i), Struct_2(false, Struct_1(u_input.d, -6211i, 23642i), u_input.d.x, global1.x, vec4<bool>(false, true, true, true)), Struct_2(true, Struct_1(u_input.d, -30285i, u_input.c), u_input.e, -141f, vec4<bool>(false, true, true, false)), Struct_1(vec4<i32>(u_input.e, -43875i, u_input.e, 2147483647i), u_input.c, u_input.e)), Struct_3(Struct_1(vec4<i32>(u_input.e, u_input.d.x, -2147483647i, -29573i), -53494i, 0i), Struct_2(true, Struct_1(vec4<i32>(u_input.c, 1i, u_input.d.x, u_input.d.x), -4107i, -40893i), 57040i, global1.x, vec4<bool>(false, false, true, true)), Struct_2(false, Struct_1(vec4<i32>(u_input.c, u_input.c, -1i, 30193i), -1i, 0i), 1i, global1.x, vec4<bool>(false, true, false, false)), Struct_1(vec4<i32>(u_input.e, -1i, -1i, 0i), u_input.d.x, -1i))).e, vec4<bool>(true, true, true, true))), u_input.a.zz).b);
    var_0 = func_2(func_2(var_0.c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1016f)), 2166f, _wgslsmith_f_op_f32(-116f + var_0.b.d))).c, vec3<f32>(641f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1708f * -659f) * global1.x))), 643f));
    var var_1 = vec2<u32>(max(u_input.a.x, _wgslsmith_mult_u32(~1u, u_input.a.x)), 65120u);
    let var_2 = -abs(-(i32(-1i) * -32022i));
    var var_3 = var_0.c;
    var_0 = Struct_3(Struct_1(reverseBits(abs(-vec4<i32>(-40279i, var_3.b.b, var_0.c.b.c, u_input.d.x))), var_2, var_2), Struct_2(select(all(select(var_3.e, vec4<bool>(var_3.e.x, true, var_0.b.e.x, var_3.e.x), vec4<bool>(var_3.e.x, var_3.a, true, false))), (u_input.b & u_input.a.x) >= 71412u, !var_3.e.x & true), var_0.a, func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(1257f, global1.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-100f, var_0.c.d))), func_2(Struct_2(var_0.b.e.x, var_0.a, var_2, var_0.b.d, vec4<bool>(false, var_3.a, false, false)), vec3<f32>(var_3.d, global1.x, -1000f)), func_4(_wgslsmith_f_op_vec2_f32(-global1.yx), Struct_3(var_3.b, Struct_2(var_0.b.e.x, var_3.b, 1i, -454f, vec4<bool>(false, false, true, true)), Struct_2(false, var_0.d, var_0.d.c, -128f, vec4<bool>(true, false, false, true)), Struct_1(u_input.d, var_0.b.c, -2147483647i)), var_0.c, _wgslsmith_div_vec2_u32(vec2<u32>(35729u, global0[_wgslsmith_index_u32(u_input.a.x, 18u)]), u_input.a.xy)), ~(~u_input.a.zz)).b.c, _wgslsmith_f_op_f32(f32(-1f) * -238f), var_0.c.e), var_0.c, Struct_1(vec4<i32>(u_input.e, _wgslsmith_dot_vec4_i32(abs(u_input.d), -vec4<i32>(var_0.d.b, 1i, u_input.e, var_0.c.c)), ~(-var_0.b.b.c), func_2(var_0.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.d, -1890f, global1.x))).a.c), -func_2(Struct_2(false, var_0.a, var_0.a.b, 1000f, var_0.c.e), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.d, -395f, var_0.c.d)))).b.b.b, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(0i, u_input.e), var_3.b.a.x >> (1u % 32u)), vec2<i32>(max(var_2, var_0.a.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(47886i, var_0.b.c))))));
    var_0 = Struct_3(func_5(Struct_2((765f <= var_0.c.d) || (var_3.a || var_3.e.x), Struct_1(var_3.b.a, -1i, var_0.d.c >> (u_input.b % 32u)), -2147483647i, _wgslsmith_f_op_f32(max(-1000f, 1074f)), vec4<bool>(false, var_3.a, !var_3.a, var_3.e.x)), Struct_2(select(false, true, any(vec3<bool>(false, var_0.c.e.x, var_0.b.e.x))), func_5(var_0.b, var_0.b, func_2(var_0.b, vec3<f32>(115f, var_3.d, -450f)), func_2(var_0.c, vec3<f32>(2505f, 941f, var_3.d))).b, ~(-u_input.e), _wgslsmith_f_op_f32(step(1332f, global1.x)), !var_3.e), Struct_3(Struct_1(vec4<i32>(0i, 426i, var_3.b.b, 2820i), firstLeadingBit(var_3.c), ~u_input.e), var_0.c, var_0.c, Struct_1(abs(vec4<i32>(var_3.b.a.x, -42470i, -1i, var_3.b.a.x)), i32(-1i) * -2389i, -u_input.d.x)), Struct_3(Struct_1(select(var_0.a.a, u_input.d, var_3.e), var_2 | -1i, var_0.b.c), func_2(Struct_2(true, var_3.b, u_input.d.x, -499f, var_3.e), vec3<f32>(var_3.d, var_0.c.d, -1290f)).b, Struct_2(true, var_0.a, _wgslsmith_sub_i32(-1i, -20838i), -1096f, !vec4<bool>(false, true, var_3.e.x, false)), func_2(Struct_2(false, Struct_1(var_0.d.a, -2147483647i, -2147483647i), var_3.c, -408f, var_0.c.e), vec3<f32>(var_0.c.d, var_0.b.d, -862f)).b.b)).b, var_0.c, var_0.b, var_0.c.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.d * -3009f) * var_0.c.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(104f, global1.x, 1404f, var_3.d))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.d - -638f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.d), _wgslsmith_f_op_f32(-var_3.d), var_3.e.x && var_3.e.x))) - _wgslsmith_f_op_vec2_f32(-global1.zx)));
}

