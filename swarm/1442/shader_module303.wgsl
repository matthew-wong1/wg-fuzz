struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: u32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: vec3<bool>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec2<u32>) -> vec4<f32> {
    var var_0 = arg_0.a.a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1000f, arg_0.b.b.b.x, -2443f > arg_0.b.b.b.x)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.e.x, 780f, global1.x)), _wgslsmith_f_op_f32(1000f - arg_0.b.b.b.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.e.x * -200f), _wgslsmith_f_op_f32(-arg_0.e.x)))));
    var var_2 = vec3<bool>(true, (global1.x | false) | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.b.b.x - arg_0.e.x)) == var_1), global1.x);
    var_0 = ~firstTrailingBit(vec4<u32>(_wgslsmith_mod_u32(var_0.x & 59312u, min(1u, u_input.a.x)), abs(var_0.x), _wgslsmith_clamp_u32(arg_2.x, var_0.x, arg_0.a.a.x) ^ 53442u, u_input.a.x >> (arg_0.b.a.x % 32u)));
    var_2 = vec3<bool>(_wgslsmith_dot_vec3_u32(~arg_0.a.a.zzy, max(var_0.wzx, arg_0.b.a.yxy)) > 4294967295u, select(any(vec3<bool>(global1.x, any(vec3<bool>(true, global1.x, false)), all(vec4<bool>(arg_0.c, false, arg_0.b.b.a.x, false)))), !any(select(arg_1, vec3<bool>(false, false, global1.x), true)), any(!(!arg_0.a.b.a))), _wgslsmith_clamp_u32(var_0.x, ~1u, abs(arg_2.x)) == max(_wgslsmith_sub_u32(~var_0.x, u_input.a.x >> (1u % 32u)), 0u));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b.b.b));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: bool) -> Struct_1 {
    global0 = array<Struct_1, 15>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_2(~vec4<u32>(112234u, u_input.a.x, 4294967295u, arg_1.c.b.a.x), Struct_1(vec2<bool>(false, arg_2), arg_1.c.a.b.b)), Struct_2(arg_1.c.a.a, arg_1.c.a.b), false, 50158u | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), arg_1.c.b.a.yz), _wgslsmith_f_op_vec4_f32(ceil(arg_1.c.b.b.b))), arg_1.b.xyx, vec2<u32>(~u_input.a.x, 38457u))) * _wgslsmith_f_op_vec4_f32(-arg_1.c.e));
    var var_1 = arg_1.c;
    let var_2 = select(arg_0.yz, vec2<bool>((i32(-1i) * -u_input.b) < ~_wgslsmith_dot_vec3_i32(u_input.d.wwz, vec3<i32>(8271i, 2147483647i, -56326i)), all(!global1.zy)), select(vec2<bool>(var_1.a.b.a.x, true), vec2<bool>(true, any(!arg_1.b)), arg_1.b.yz));
    let var_3 = false;
    return global0[_wgslsmith_index_u32(~0u | (u_input.a.x << (u_input.a.x % 32u)), 15u)];
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec2<u32>) -> Struct_1 {
    global0 = array<Struct_1, 15>();
    var var_0 = vec4<bool>(all(select(!vec3<bool>(true, true, global1.x), !select(vec3<bool>(global1.x, false, true), vec3<bool>(arg_1.a.x, global1.x, arg_1.a.x), vec3<bool>(global1.x, global1.x, arg_1.a.x)), select(arg_1.a.x, false, arg_1.a.x))), !arg_1.a.x, !any(vec3<bool>(27689i >= u_input.d.x, true, arg_1.a.x)), false);
    var var_1 = Struct_3(Struct_2(abs(vec4<u32>(10865u, _wgslsmith_mod_u32(arg_3.x, arg_3.x), _wgslsmith_add_u32(11249u, 17402u), reverseBits(u_input.a.x))), func_2(var_0.zxz, Struct_4(~vec4<u32>(arg_0.x, 134226u, arg_3.x, 88110u), !vec4<bool>(false, global1.x, true, var_0.x), Struct_3(Struct_2(vec4<u32>(arg_3.x, arg_3.x, u_input.a.x, u_input.a.x), arg_1), Struct_2(vec4<u32>(u_input.a.x, arg_0.x, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(arg_3.x, 15u)]), false, 1u, arg_1.b)), !(!var_0.x))), Struct_2(~_wgslsmith_clamp_vec4_u32(vec4<u32>(50102u, 27321u, 18589u, u_input.a.x), firstLeadingBit(vec4<u32>(arg_3.x, 39574u, 0u, 1u)), vec4<u32>(78706u, 4294967295u, 24919u, arg_0.x)), global0[_wgslsmith_index_u32(12131u >> (~_wgslsmith_dot_vec2_u32(arg_0.zx, arg_3) % 32u), 15u)]), _wgslsmith_f_op_f32(-arg_2.x) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1426f, -177f))), ~_wgslsmith_add_u32(arg_0.x, arg_3.x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-545f - arg_1.b.x) + _wgslsmith_f_op_f32(f32(-1f) * -595f)), _wgslsmith_f_op_f32(144f * _wgslsmith_f_op_f32(-arg_2.x)), 1720f, _wgslsmith_f_op_f32(arg_2.x + 1000f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_1.b))))))));
    global1 = vec3<bool>(any(select(var_0.wwy, select(select(vec3<bool>(arg_1.a.x, true, false), vec3<bool>(false, var_0.x, false), arg_1.a.x), var_0.ywz, vec3<bool>(global1.x, false, true)), vec3<bool>(false, global1.x, true))), arg_1.b.x > _wgslsmith_f_op_f32(trunc(arg_1.b.x)), !(!(true | all(vec3<bool>(true, global1.x, global1.x)))));
    let var_2 = vec4<u32>(var_1.b.a.x, 1u, arg_0.x, var_1.b.a.x);
    return Struct_1(global1.yz, arg_1.b);
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0;
    global0 = array<Struct_1, 15>();
    var var_1 = var_0.a.x;
    var var_2 = func_2(!vec3<bool>(true, true, any(func_4(vec3<u32>(4294967295u, 1u, 33222u), Struct_1(vec2<bool>(arg_0.b.a.x, var_0.b.a.x), var_0.b.b), arg_0.b.b.ww, vec2<u32>(12948u, u_input.a.x)).a)), Struct_4(vec4<u32>((1u << (var_0.a.x % 32u)) << (arg_0.a.x % 32u), _wgslsmith_dot_vec3_u32(firstTrailingBit(arg_0.a.zyw), ~arg_0.a.wxy), ~u_input.a.x, 1u), select(!(!vec4<bool>(arg_0.b.a.x, global1.x, false, false)), vec4<bool>(true, true, true, all(vec3<bool>(arg_0.b.a.x, global1.x, var_0.b.a.x))), vec4<bool>(arg_0.a.x >= var_0.a.x, true != global1.x, global1.x, any(vec3<bool>(global1.x, true, true)))), Struct_3(Struct_2(var_0.a, var_0.b), Struct_2(~vec4<u32>(3262u, u_input.a.x, arg_0.a.x, var_0.a.x), arg_0.b), !global1.x, 0u, _wgslsmith_f_op_vec4_f32(ceil(arg_0.b.b)))), func_4(reverseBits(vec3<u32>(1u, ~42809u, _wgslsmith_add_u32(arg_0.a.x, 50933u))), Struct_1(var_0.b.a, arg_0.b.b), arg_0.b.b.yy, u_input.a.zx).a.x).b.yx;
    var_1 = ~(~max(83407u, arg_0.a.x));
    return Struct_1(vec2<bool>(!global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.b.b.x, -762f, arg_0.b.a.x)) - _wgslsmith_f_op_f32(var_2.x * arg_0.b.b.x)) > 2142f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b.b) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2345f, 161f, var_2.x, -2469f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, _wgslsmith_f_op_f32(arg_0.b.b.x * arg_0.b.b.x), arg_0.b.b.x, -660f))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_3) -> Struct_4 {
    let var_0 = func_5(Struct_2(arg_0.a, func_4(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.b.a.x, 2131u, 38983u), vec3<u32>(29445u, arg_0.a.x, 38207u)), 8593u, 75090u), func_2(arg_1.b.ywx, arg_0, any(vec2<bool>(true, global1.x))), _wgslsmith_f_op_vec2_f32(-arg_1.c.e.xx), _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(6796u, arg_2.b.a.x)), ~arg_2.a.a.yy))));
    global1 = select(arg_1.b.www, select(select(!vec3<bool>(true, var_0.a.x, arg_2.c), select(vec3<bool>(true, true, true), !vec3<bool>(global1.x, false, global1.x), arg_1.b.xww), !arg_0.b.x), vec3<bool>(all(vec3<bool>(arg_0.b.x, false, true)) & all(arg_0.c.a.b.a), all(var_0.a), all(vec3<bool>(arg_1.c.c, false, arg_0.b.x))), true), vec3<bool>(false, any(arg_0.b), global1.x));
    global1 = arg_1.b.wyw;
    let var_1 = vec3<u32>(arg_1.c.a.a.x, _wgslsmith_sub_u32(arg_0.a.x >> ((arg_0.a.x ^ ~20926u) % 32u), _wgslsmith_mod_u32(~(~arg_0.a.x), 1u)), abs(_wgslsmith_mod_u32(_wgslsmith_sub_u32(firstTrailingBit(arg_0.c.b.a.x), ~arg_0.a.x), arg_1.a.x)));
    let var_2 = 1270f;
    return Struct_4(vec4<u32>(12456u, countOneBits(0u) << (_wgslsmith_dot_vec2_u32(var_1.zy, _wgslsmith_clamp_vec2_u32(var_1.zz, var_1.yy, arg_1.a.ww)) % 32u), 1u, ~(~(arg_0.c.b.a.x >> (var_1.x % 32u)))), vec4<bool>(false, false, arg_0.c.a.b.a.x, all(vec4<bool>(arg_2.b.b.a.x, false | global1.x, !arg_1.b.x, !arg_2.c))), Struct_3(Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, arg_2.a.a.x, 17978u, 41558u), vec4<u32>(44738u, 4294967295u, 0u, var_1.x) | vec4<u32>(arg_0.c.d, 1u, 8490u, 0u)), var_0), arg_1.c.b, any(arg_1.b.xx), u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.e + vec4<f32>(-702f, var_0.b.x, var_2, arg_1.c.e.x)))));
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: vec2<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(arg_1.c.b.b.b.x - arg_1.c.b.b.b.x);
    var var_1 = Struct_4(~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(29726u, 4294967295u, 1u, arg_2.x)), ~vec4<u32>(arg_0.x, 49065u, arg_2.x, 3765u)), func_1(func_1(Struct_4(~arg_1.a, vec4<bool>(true, true, true, true), arg_1.c), func_1(arg_1, arg_1, Struct_3(Struct_2(arg_1.c.a.a, global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), Struct_2(arg_1.a, global0[_wgslsmith_index_u32(54638u, 15u)]), global1.x, arg_0.x, vec4<f32>(arg_1.c.a.b.b.x, 1000f, arg_1.c.e.x, 519f))), Struct_3(func_1(Struct_4(vec4<u32>(arg_0.x, arg_2.x, 4294967295u, 0u), vec4<bool>(false, true, false, global1.x), Struct_3(arg_1.c.b, arg_1.c.b, global1.x, u_input.a.x, vec4<f32>(arg_1.c.a.b.b.x, arg_1.c.b.b.b.x, arg_1.c.b.b.b.x, arg_1.c.e.x))), Struct_4(arg_1.c.a.a, vec4<bool>(true, true, true, arg_1.c.b.b.a.x), Struct_3(Struct_2(arg_1.c.a.a, arg_1.c.b.b), Struct_2(vec4<u32>(u_input.a.x, 25155u, u_input.a.x, 26066u), global0[_wgslsmith_index_u32(34586u, 15u)]), true, u_input.a.x, vec4<f32>(arg_1.c.b.b.b.x, arg_1.c.e.x, arg_1.c.e.x, 957f))), Struct_3(arg_1.c.b, Struct_2(vec4<u32>(arg_1.a.x, 40451u, 6029u, u_input.a.x), Struct_1(global1.yz, arg_1.c.b.b.b)), true, arg_1.a.x, arg_1.c.e)).c.b, Struct_2(arg_1.c.b.a, Struct_1(global1.zy, vec4<f32>(arg_1.c.b.b.b.x, 324f, -857f, arg_1.c.e.x))), true, arg_0.x, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.c.a.b.b.x, arg_1.c.e.x, 2367f, 604f), vec4<f32>(arg_1.c.b.b.b.x, arg_1.c.b.b.b.x, -1312f, -600f))))), arg_1, func_1(Struct_4(arg_1.a, !vec4<bool>(true, arg_1.c.b.b.a.x, true, false), func_1(arg_1, Struct_4(vec4<u32>(u_input.a.x, arg_2.x, 0u, u_input.a.x), vec4<bool>(arg_1.c.b.b.a.x, true, true, arg_1.b.x), arg_1.c), arg_1.c).c), Struct_4(min(vec4<u32>(76922u, 0u, 4294967295u, 76278u), arg_1.a), vec4<bool>(false, global1.x, global1.x, global1.x), Struct_3(arg_1.c.b, Struct_2(vec4<u32>(u_input.a.x, 102383u, 1u, 1u), Struct_1(vec2<bool>(false, false), vec4<f32>(-1000f, -636f, arg_1.c.e.x, -638f))), global1.x, 5717u, arg_1.c.b.b.b)), arg_1.c).c).b, arg_1.c);
    let var_2 = arg_1.c.a.a;
    var var_3 = arg_1.c.e.yz;
    global0 = array<Struct_1, 15>();
    return vec3<bool>(all(var_1.b), !(!select(arg_1.b.x, var_1.c.b.b.a.x, true) || arg_1.c.c), global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(round(-1422f));
    global1 = !vec3<bool>(false, !(!any(vec3<bool>(global1.x, true, global1.x))), any(func_6(vec3<u32>(1u, u_input.a.x, u_input.a.x), func_1(Struct_4(vec4<u32>(u_input.a.x, 14253u, 13059u, 81126u), vec4<bool>(global1.x, false, true, global1.x), Struct_3(Struct_2(vec4<u32>(59907u, 1u, 49307u, 56218u), Struct_1(vec2<bool>(false, false), vec4<f32>(-1000f, var_0, 629f, var_0))), Struct_2(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), global1.x, u_input.a.x, vec4<f32>(var_0, var_0, var_0, -211f))), Struct_4(vec4<u32>(4294967295u, 40798u, u_input.a.x, 1u), vec4<bool>(true, global1.x, true, true), Struct_3(Struct_2(vec4<u32>(u_input.a.x, 1u, 6877u, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), Struct_1(vec2<bool>(global1.x, false), vec4<f32>(var_0, 1000f, var_0, var_0))), true, u_input.a.x, vec4<f32>(159f, -1721f, -366f, var_0))), Struct_3(Struct_2(vec4<u32>(u_input.a.x, 51850u, u_input.a.x, u_input.a.x), Struct_1(global1.yy, vec4<f32>(var_0, var_0, var_0, -371f))), Struct_2(vec4<u32>(u_input.a.x, 0u, 26492u, u_input.a.x), global0[_wgslsmith_index_u32(4294967295u, 15u)]), true, u_input.a.x, vec4<f32>(var_0, 541f, var_0, 545f))), u_input.a.zy)));
    let var_1 = select(min(max(u_input.d, ~countOneBits(u_input.d)), vec4<i32>(_wgslsmith_div_i32(~5925i, abs(2147483647i)), ~(~(-2147483647i)), u_input.c.x, u_input.d.x)), u_input.d, vec4<bool>(func_1(func_1(func_1(Struct_4(vec4<u32>(u_input.a.x, 76219u, u_input.a.x, u_input.a.x), vec4<bool>(global1.x, global1.x, true, global1.x), Struct_3(Struct_2(vec4<u32>(58477u, 4294967295u, 1u, u_input.a.x), global0[_wgslsmith_index_u32(1u, 15u)]), Struct_2(vec4<u32>(u_input.a.x, 67093u, 4294967295u, 44896u), global0[_wgslsmith_index_u32(41770u, 15u)]), true, 28268u, vec4<f32>(533f, -698f, var_0, var_0))), Struct_4(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), vec4<bool>(false, global1.x, global1.x, true), Struct_3(Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 4818u), Struct_1(global1.xx, vec4<f32>(1000f, 588f, -247f, var_0))), Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), Struct_1(global1.xx, vec4<f32>(1305f, var_0, -106f, var_0))), true, u_input.a.x, vec4<f32>(var_0, 870f, var_0, var_0))), Struct_3(Struct_2(vec4<u32>(4294967295u, 13922u, 4294967295u, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), Struct_2(vec4<u32>(0u, 0u, 0u, 0u), Struct_1(global1.yy, vec4<f32>(112f, var_0, -1000f, -294f))), global1.x, u_input.a.x, vec4<f32>(1719f, var_0, var_0, var_0))), func_1(Struct_4(vec4<u32>(4294967295u, 5993u, u_input.a.x, 1u), vec4<bool>(false, global1.x, global1.x, global1.x), Struct_3(Struct_2(vec4<u32>(1u, 0u, u_input.a.x, 1u), global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), Struct_2(vec4<u32>(u_input.a.x, 1u, 1u, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), global1.x, u_input.a.x, vec4<f32>(var_0, var_0, var_0, var_0))), Struct_4(vec4<u32>(70542u, 3052u, 4294967295u, u_input.a.x), vec4<bool>(global1.x, true, global1.x, global1.x), Struct_3(Struct_2(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), Struct_2(vec4<u32>(46710u, 26171u, 0u, 90282u), global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), global1.x, u_input.a.x, vec4<f32>(var_0, 1539f, var_0, var_0))), Struct_3(Struct_2(vec4<u32>(u_input.a.x, 1u, 9230u, 4294967295u), global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), Struct_2(vec4<u32>(u_input.a.x, 5607u, 20469u, 68165u), global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), true, 1u, vec4<f32>(1332f, -563f, -515f, var_0))), Struct_3(Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, 57010u, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), global1.x, 0u, vec4<f32>(-446f, var_0, -163f, var_0))), Struct_4(~vec4<u32>(u_input.a.x, 93049u, u_input.a.x, u_input.a.x), select(vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(true, global1.x, true, false), vec4<bool>(global1.x, false, global1.x, true)), Struct_3(Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), global0[_wgslsmith_index_u32(4294967295u, 15u)]), Struct_2(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 0u), Struct_1(global1.yy, vec4<f32>(538f, var_0, 575f, var_0))), true, u_input.a.x, vec4<f32>(-949f, 1524f, var_0, var_0))), Struct_3(func_1(Struct_4(vec4<u32>(u_input.a.x, u_input.a.x, 6724u, 32373u), vec4<bool>(true, global1.x, global1.x, global1.x), Struct_3(Struct_2(vec4<u32>(4294967295u, 17948u, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(100794u, 15u)]), Struct_2(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(global1.xy, vec4<f32>(-1971f, -1000f, 564f, -605f))), true, u_input.a.x, vec4<f32>(1241f, var_0, var_0, var_0))), Struct_4(vec4<u32>(6171u, 75251u, 49227u, u_input.a.x), vec4<bool>(global1.x, global1.x, true, global1.x), Struct_3(Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 15259u), Struct_1(global1.xx, vec4<f32>(825f, var_0, var_0, var_0))), Struct_2(vec4<u32>(1u, u_input.a.x, 25308u, 2615u), global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), global1.x, u_input.a.x, vec4<f32>(1119f, 815f, var_0, -921f))), Struct_3(Struct_2(vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 1u), global0[_wgslsmith_index_u32(83469u, 15u)]), Struct_2(vec4<u32>(0u, 47149u, 1u, 65134u), global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), true, 0u, vec4<f32>(608f, var_0, -133f, var_0))).c.b, Struct_2(vec4<u32>(u_input.a.x, 20945u, u_input.a.x, 25003u), global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), global1.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), vec4<f32>(var_0, 1000f, -1153f, 203f))).b.x, global1.x | (_wgslsmith_f_op_f32(floor(var_0)) > var_0), !global1.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(~select(u_input.a.x, 56004u, global1.x), _wgslsmith_mult_vec3_i32(abs(var_1.www), -(_wgslsmith_sub_vec3_i32(u_input.c, var_1.wxz) ^ abs(vec3<i32>(-32785i, -1i, u_input.b)))), _wgslsmith_add_vec4_i32(~select(vec4<i32>(u_input.d.x, u_input.b, 1i, -12495i) & var_1, -var_1, true), -vec4<i32>(1i, u_input.c.x, var_1.x, _wgslsmith_add_i32(-54735i, var_1.x))), ~u_input.a.x, var_1.x);
}

