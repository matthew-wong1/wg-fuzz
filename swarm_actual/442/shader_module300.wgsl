struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 5> = array<f32, 5>(1655f, -469f, -1000f, -1455f, -746f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: u32, arg_1: bool) -> vec2<i32> {
    return vec2<i32>(-(~_wgslsmith_mod_i32(27545i, u_input.a.x) ^ 1i), ~0i);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global0 = Struct_1(global0.a ^ (vec2<u32>(select(arg_0.e.x, arg_1.b.x, true), arg_1.d >> (global0.a.x % 32u)) >> (vec2<u32>(33593u, 1u) % vec2<u32>(32u))), vec4<u32>(global0.e.x, arg_1.b.x, arg_1.b.x, 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c)), _wgslsmith_div_u32(26763u, arg_0.a.x), vec3<u32>(4294967295u, 0u, 16784u));
    global1 = array<f32, 5>();
    let var_0 = vec4<i32>(u_input.a.x, u_input.b.x, -_wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.c, u_input.a.x, -37630i) & 0i, u_input.b.x), _wgslsmith_mod_i32(~(-_wgslsmith_clamp_i32(2147483647i, -1i, u_input.c)), u_input.c));
    global0 = Struct_1(max(arg_0.e.xy, arg_0.b.zx) & firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.x, global0.a.x, global0.b.x), global0.b.wyw), ~arg_1.b.x)), ~global0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)), arg_0.c.x)), ~(~21770u), vec3<u32>(21039u, arg_1.a.x >> (_wgslsmith_add_u32(abs(4294967295u), arg_0.d) % 32u), 1u));
    return _wgslsmith_f_op_f32(-arg_0.c.x);
}

fn func_1() -> bool {
    global1 = array<f32, 5>();
    global1 = array<f32, 5>();
    let var_0 = _wgslsmith_clamp_u32(firstTrailingBit(59318u), 4615u, 28666u);
    let var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_add_i32(-1i, u_input.b.x)), _wgslsmith_div_vec2_i32(func_2(reverseBits(global0.b.x), true), max(vec2<i32>(-1i) * -vec2<i32>(-4419i, 20618i), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, u_input.c), _wgslsmith_add_vec2_i32(u_input.b, u_input.a.xy), u_input.b & u_input.a.zy))));
    let var_2 = ~_wgslsmith_dot_vec3_i32(u_input.a ^ select(u_input.a, u_input.a, false), u_input.a) <= 13951i;
    return var_2 | (var_2 | (true != (_wgslsmith_f_op_f32(trunc(-203f)) > _wgslsmith_f_op_f32(func_3(Struct_1(vec2<u32>(59109u, var_0), global0.b, global0.c, 1u, vec3<u32>(var_0, var_0, var_0)), Struct_1(global0.e.zy, vec4<u32>(var_0, 82881u, 22133u, 1u), global0.c, 81740u, global0.e))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_1(arg_0.e.yz, ~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 32055u, 90216u, global0.b.x) >> (arg_0.b % vec4<u32>(32u)), ~vec4<u32>(arg_0.e.x, 1u, arg_2.a.x, arg_2.a.x)), global0.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 5u)]), -280f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-914f, 693f))))), arg_0.d, (arg_0.e ^ _wgslsmith_clamp_vec3_u32(arg_2.b.wyw, ~vec3<u32>(1u, arg_2.d, global0.d), ~vec3<u32>(arg_2.d, 4294967295u, 43692u))) ^ firstLeadingBit(arg_0.e));
    global0 = var_0;
    global1 = array<f32, 5>();
    var var_1 = max(u_input.b.x, u_input.b.x);
    var var_2 = global0.e;
    return Struct_1(var_0.b.zy, vec4<u32>(arg_0.e.x, var_0.e.x, ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, 0u, arg_2.e.x)), vec3<u32>(40967u, arg_0.e.x, 15099u)), var_0.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, arg_0.c.x)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, global0.c.x)))))), firstLeadingBit(~var_0.a.x), ~countOneBits(vec3<u32>(global0.b.x, 34016u, 27704u)));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: vec4<u32>) -> vec2<i32> {
    let var_0 = arg_0;
    global1 = array<f32, 5>();
    var var_1 = Struct_1(vec2<u32>(22157u, arg_0.a.x), _wgslsmith_sub_vec4_u32(arg_3, _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(var_0.b.x, 0u), global0.b.x & 0u, 1820u, 1u), arg_3)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(var_0, func_4(Struct_1(vec2<u32>(4294967295u, arg_3.x), vec4<u32>(global0.e.x, 4294967295u, 28114u, 4294967295u), vec2<f32>(global0.c.x, 119f), var_0.a.x, vec3<u32>(1u, var_0.d, 104206u)), vec4<bool>(false, arg_2, arg_2, false), Struct_1(vec2<u32>(arg_3.x, 43652u), vec4<u32>(var_0.e.x, arg_0.d, 0u, var_0.a.x), vec2<f32>(1949f, global1[_wgslsmith_index_u32(4294967295u, 5u)]), 29467u, global0.b.zyy), false))), var_0.c.x)), arg_0.d >> ((global0.e.x | 37096u) % 32u), ~vec3<u32>(arg_0.b.x, min(abs(4294967295u), ~var_0.a.x), _wgslsmith_div_u32(arg_3.x | 49042u, ~arg_0.d)));
    let var_2 = arg_3.yw;
    global0 = func_4(var_0, select(select(vec4<bool>(false, all(vec4<bool>(arg_1, arg_1, arg_2, arg_1)), true, any(vec3<bool>(false, false, false))), !(!vec4<bool>(arg_2, arg_1, false, true)), vec4<bool>(arg_2 & false, u_input.c <= u_input.a.x, arg_2, global1[_wgslsmith_index_u32(arg_0.b.x, 5u)] > global0.c.x)), vec4<bool>(func_1(), true, any(vec2<bool>(true, true)), any(!vec4<bool>(false, arg_1, arg_1, false))), select(vec4<bool>(!arg_1, true, arg_2, any(vec3<bool>(true, arg_1, false))), vec4<bool>(!arg_2, true, arg_2, arg_1), !select(vec4<bool>(true, false, true, arg_1), vec4<bool>(arg_2, true, false, true), vec4<bool>(arg_2, arg_1, true, arg_1)))), func_4(Struct_1(_wgslsmith_add_vec2_u32(global0.b.zy, ~global0.a), _wgslsmith_add_vec4_u32(var_1.b, _wgslsmith_add_vec4_u32(var_0.b, vec4<u32>(0u, 21087u, 4294967295u, arg_0.a.x))), global0.c, 81379u, ~vec3<u32>(63181u, 15887u, arg_0.a.x) | vec3<u32>(var_1.a.x, var_0.b.x, 1u)), !select(!vec4<bool>(false, arg_2, false, false), !vec4<bool>(true, true, arg_2, false), all(vec4<bool>(false, true, false, arg_1))), var_0, true), !(_wgslsmith_add_u32(4294967295u, _wgslsmith_div_u32(39802u, var_1.d)) >= _wgslsmith_mult_u32(4294967295u, var_1.b.x)));
    return u_input.a.yy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-u_input.b.x);
    var var_1 = func_5(func_4(Struct_1(reverseBits(vec2<u32>(60379u, global0.b.x)), vec4<u32>(4294967295u, ~13177u, global0.b.x ^ 37645u, global0.d), global0.c, _wgslsmith_sub_u32(~global0.e.x, firstLeadingBit(2026u)), global0.b.xwx), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(func_1(), true, true, any(vec4<bool>(true, true, false, false)))), Struct_1(global0.e.zy, max(select(vec4<u32>(global0.e.x, global0.d, global0.d, global0.a.x), global0.b, vec4<bool>(false, false, true, false)), abs(vec4<u32>(995u, global0.e.x, 0u, global0.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(329f, 446f), global0.c))), 5868u, abs(abs(global0.b.wwz))), false), func_1(), false, global0.b);
    global1 = array<f32, 5>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(132f, global0.c.x, global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global0.e.x, 21497u), 5u)], _wgslsmith_f_op_f32(-834f * _wgslsmith_f_op_f32(func_3(Struct_1(global0.b.zw, global0.b, global0.c, global0.e.x, global0.e), Struct_1(vec2<u32>(global0.a.x, global0.e.x), vec4<u32>(0u, 7960u, 4294967295u, global0.d), global0.c, 0u, global0.b.zwz))))), vec4<f32>(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(abs(42097u), 5u)])), 1734f, _wgslsmith_div_f32(-3787f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.a.x, 5u)] * global1[_wgslsmith_index_u32(17202u, 5u)])), -448f))));
    var var_3 = select(select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), true || func_1()), vec3<bool>(true, false, true)), !(!vec3<bool>(all(vec4<bool>(true, true, false, true)), all(vec2<bool>(false, true)), true)), _wgslsmith_f_op_f32(-2981f + _wgslsmith_f_op_f32(step(var_2.x, global1[_wgslsmith_index_u32(global0.a.x, 5u)]))) >= func_4(Struct_1(vec2<u32>(global0.b.x, 8899u), select(vec4<u32>(4294967295u, 4294967295u, global0.b.x, 1u), global0.b, true), vec2<f32>(-1000f, var_2.x), global0.b.x, vec3<u32>(global0.b.x, global0.b.x, global0.b.x)), vec4<bool>(true, true, select(false, false, true), select(true, true, true)), func_4(Struct_1(vec2<u32>(38678u, 0u), vec4<u32>(global0.e.x, global0.b.x, 21308u, 24581u), var_2.zz, global0.e.x, global0.b.xzx), vec4<bool>(true, true, true, true), func_4(Struct_1(global0.b.xz, vec4<u32>(global0.b.x, 0u, 58498u, 21396u), vec2<f32>(970f, global1[_wgslsmith_index_u32(71292u, 5u)]), 4294967295u, vec3<u32>(0u, 10323u, 4294967295u)), vec4<bool>(false, false, true, true), Struct_1(vec2<u32>(0u, 52027u), vec4<u32>(22933u, global0.a.x, 0u, 42621u), var_2.yy, 0u, global0.b.zyz), true), true), any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false))).c.x);
    var var_4 = Struct_1(_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(4294967295u << (0u % 32u), ~4735u)), global0.e.xz), _wgslsmith_div_vec4_u32(global0.b >> (~global0.b % vec4<u32>(32u)), global0.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.c) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(var_2.x, -336f)), _wgslsmith_f_op_f32(-global0.c.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-464f, 1670f), vec2<f32>(global1[_wgslsmith_index_u32(global0.d, 5u)], global0.c.x)))))), global0.d, _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(global0.b.zyy, vec3<u32>(39752u, 79380u, global0.e.x)), global0.b.xxx), _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.b.x, global0.a.x, global0.d), ~global0.e, _wgslsmith_mult_vec3_u32(vec3<u32>(global0.a.x, global0.e.x, 80340u), global0.e))), global0.e));
    let var_5 = Struct_1(var_4.a, global0.b, _wgslsmith_f_op_vec2_f32(global0.c - var_2.zw), var_4.b.x, ~var_4.b.yyz);
    let var_6 = func_4(var_5, vec4<bool>(!(!(!var_3.x)), true, ~(~var_4.b.x) >= countOneBits(var_4.a.x | var_5.d), true), Struct_1(var_5.b.yy, firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(var_5.a.x, 21169u), var_4.a.x, select(2056u, var_5.e.x, false), ~20500u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1429f, 1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, var_2.x)))), var_2.zx), _wgslsmith_mod_u32(0u, global0.a.x | (var_4.b.x ^ 1u)), firstTrailingBit(global0.e)), true).c;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.wwy, var_2.yxx);
}

