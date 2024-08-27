struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: vec3<bool>,
}

struct Struct_5 {
    a: bool,
    b: vec4<bool>,
    c: Struct_3,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 2769f;

var<private> global1: vec2<bool>;

var<private> global2: f32;

var<private> global3: vec3<bool> = vec3<bool>(false, false, true);

var<private> global4: array<Struct_5, 27>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_5, arg_3: vec4<i32>) -> f32 {
    var var_0 = Struct_5(!global3.x, select(vec4<bool>(firstTrailingBit(16450i) > ~arg_3.x, arg_0.x, any(!vec2<bool>(false, arg_0.x)), global3.x), !select(!arg_2.b, !arg_2.b, 677f < arg_2.d.x), all(!global3.xx) | any(!arg_0)), arg_2.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(arg_2.d, arg_2.d)))))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.d.x))) * arg_1.x)) - -1000f);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, 627f))))));
    let var_2 = _wgslsmith_div_f32(-349f, var_0.c.c);
    var var_3 = false == !any(var_0.b);
    return 1815f;
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_mult_vec4_u32(u_input.c, ~(~u_input.c)) & _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 1u, 2696u), u_input.c), reverseBits(u_input.a), ~1u), u_input.c | ~u_input.c));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global3.yy, vec2<f32>(-1022f, _wgslsmith_f_op_f32(step(-139f, _wgslsmith_f_op_f32(f32(-1f) * -266f)))), global4[_wgslsmith_index_u32(u_input.d.x, 27u)], vec4<i32>(u_input.b, -2147483647i, ~8990i, ~u_input.b) & ~(~vec4<i32>(u_input.b, -15726i, 11966i, 4076i)))));
    let var_2 = Struct_4(Struct_2(var_0, !vec4<bool>(false, true, true, global3.x), var_0, _wgslsmith_sub_i32(select(_wgslsmith_dot_vec2_i32(vec2<i32>(53315i, 13532i), vec2<i32>(28112i, u_input.b)), u_input.b, false), select(~u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, 9476i), vec3<i32>(2147483647i, u_input.b, 30674i)), global3.x != global1.x))), Struct_2(Struct_1(vec4<u32>(_wgslsmith_add_u32(28102u, 23968u), u_input.c.x, 0u, var_0.a.x)), select(vec4<bool>(global3.x, true, all(vec4<bool>(global3.x, true, true, global3.x)), select(global3.x, global3.x, global1.x)), !select(vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(global1.x, true, false, global3.x), vec4<bool>(global3.x, global3.x, global1.x, false)), global3.x), Struct_1(~select(vec4<u32>(0u, u_input.c.x, 4294967295u, 1u), var_0.a, vec4<bool>(true, global3.x, true, global3.x))), 0i), _wgslsmith_f_op_f32(func_3(!vec2<bool>(!global3.x, false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1, var_1), vec2<f32>(var_1, 912f), global3.xy)))), Struct_5(all(select(vec3<bool>(true, global3.x, true), vec3<bool>(global1.x, global3.x, global3.x), vec3<bool>(false, global3.x, true))), !select(vec4<bool>(global3.x, global1.x, global3.x, global1.x), vec4<bool>(global1.x, global3.x, true, true), vec4<bool>(false, true, true, global1.x)), Struct_3(var_0, Struct_1(vec4<u32>(47240u, var_0.a.x, 4294967295u, 1u)), -205f, Struct_1(vec4<u32>(18955u, u_input.a, var_0.a.x, var_0.a.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1, var_1), vec2<f32>(-554f, var_1), false)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1, 404f))))), vec4<i32>(1i, 16818i, -31464i, u_input.b))), select(!select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global3.x, false), global1.x), vec3<bool>(any(select(vec4<bool>(false, false, global1.x, global3.x), vec4<bool>(false, global3.x, false, global3.x), false)), true, global3.x), true));
    let var_3 = true;
    let var_4 = !vec3<bool>(global3.x, var_2.a.b.x, var_2.d.x);
    return var_2.b.b;
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: bool) -> vec4<bool> {
    global4 = array<Struct_5, 27>();
    var var_0 = Struct_3(Struct_1(_wgslsmith_mod_vec4_u32(countOneBits(~u_input.c), ~(~u_input.c))), Struct_1(~(~vec4<u32>(4294967295u, arg_0, arg_0, 4294967295u))), -608f, Struct_1(u_input.c));
    let var_1 = Struct_3(Struct_1(countOneBits(vec4<u32>(abs(var_0.a.a.x), _wgslsmith_dot_vec2_u32(var_0.a.a.xx, vec2<u32>(4294967295u, 0u)), 4294967295u, ~1u))), Struct_1(select(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c.wyy, var_0.b.a.yxy), _wgslsmith_sub_u32(arg_0, var_0.d.a.x), var_0.d.a.x, ~21492u), var_0.b.a, all(vec3<bool>(false, global3.x, arg_2)))), var_0.c, Struct_1(_wgslsmith_sub_vec4_u32(var_0.a.a >> ((u_input.c >> (vec4<u32>(0u, 75297u, u_input.a, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.c)));
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(~1u, ~1u, var_1.d.a.x, 4294967295u), firstLeadingBit(~vec4<u32>(~4294967295u, ~var_0.a.a.x, ~77179u, 0u)));
    global0 = _wgslsmith_f_op_f32(-var_1.c);
    return select(!vec4<bool>(true, global3.x, false, global3.x), !vec4<bool>(false, true, _wgslsmith_mult_u32(u_input.c.x, var_1.b.a.x) >= _wgslsmith_dot_vec3_u32(u_input.c.wzy, u_input.c.xyw), all(!global3.yx)), func_2());
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    global4 = array<Struct_5, 27>();
    global1 = global3.xx;
    let var_0 = ~vec2<i32>(arg_2.d, abs(_wgslsmith_add_i32(arg_0.d, firstTrailingBit(1i))));
    var var_1 = _wgslsmith_f_op_f32(-1057f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -501f), _wgslsmith_f_op_f32(-747f - 364f))) * -194f)));
    let var_2 = abs(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(arg_0.d, -23773i), -27224i | var_0.x), 2147483647i >> (_wgslsmith_add_u32(arg_1.a.a.x, arg_2.c.a.x) % 32u), firstLeadingBit(-52100i)), -_wgslsmith_mult_vec3_i32(-vec3<i32>(arg_2.d, -14530i, arg_0.d), select(vec3<i32>(arg_0.d, -42020i, arg_0.d), vec3<i32>(2147483647i, arg_2.d, arg_1.d), true))));
    return Struct_2(Struct_1(firstTrailingBit(~arg_1.c.a << (~u_input.c % vec4<u32>(32u)))), func_4(min(1u, ~arg_2.c.a.x), func_2(), all(!arg_0.b.xz)), Struct_1(abs(_wgslsmith_add_vec4_u32(arg_0.c.a ^ vec4<u32>(0u, 49255u, 75744u, arg_0.a.a.x), vec4<u32>(arg_2.c.a.x, arg_0.c.a.x, arg_0.a.a.x, u_input.d.x)))), _wgslsmith_clamp_i32(1i, arg_2.d, arg_0.d));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: f32) -> vec4<i32> {
    let var_0 = ~u_input.d.x;
    global0 = _wgslsmith_f_op_f32(arg_2 + -2695f);
    let var_1 = vec3<bool>(global1.x, func_1(func_1(arg_1, Struct_2(func_1(Struct_2(Struct_1(u_input.c), vec4<bool>(false, arg_1.b.x, true, arg_0), Struct_1(vec4<u32>(u_input.d.x, 24826u, 88378u, 17849u)), 27994i), Struct_2(arg_1.c, vec4<bool>(true, arg_1.b.x, arg_1.b.x, false), Struct_1(vec4<u32>(u_input.d.x, 1u, 1u, 4294967295u)), -1i), arg_1).a, select(arg_1.b, vec4<bool>(global1.x, arg_0, arg_0, global3.x), true), arg_1.c, u_input.b), func_1(Struct_2(Struct_1(arg_1.c.a), arg_1.b, arg_1.c, arg_1.d), Struct_2(Struct_1(vec4<u32>(34184u, 4294967295u, arg_1.a.a.x, 54276u)), vec4<bool>(global1.x, arg_1.b.x, false, arg_1.b.x), arg_1.c, 1i), Struct_2(arg_1.c, vec4<bool>(false, arg_0, arg_0, false), arg_1.a, u_input.b))), Struct_2(func_1(Struct_2(arg_1.c, vec4<bool>(false, false, false, global1.x), arg_1.c, -2147483647i), arg_1, arg_1).c, arg_1.b, func_1(arg_1, arg_1, arg_1).c, abs(-u_input.b)), Struct_2(func_1(Struct_2(Struct_1(vec4<u32>(10453u, 42125u, 4294967295u, 71437u)), arg_1.b, arg_1.c, -36082i), func_1(Struct_2(Struct_1(vec4<u32>(4294967295u, arg_1.a.a.x, u_input.c.x, 46147u)), arg_1.b, Struct_1(vec4<u32>(arg_1.c.a.x, 77240u, 0u, var_0)), u_input.b), Struct_2(arg_1.c, arg_1.b, arg_1.c, 2147483647i), Struct_2(Struct_1(u_input.c), vec4<bool>(false, global3.x, true, global1.x), arg_1.c, -2147483647i)), func_1(Struct_2(Struct_1(u_input.c), arg_1.b, Struct_1(arg_1.a.a), -2147483647i), Struct_2(arg_1.a, arg_1.b, arg_1.c, 55411i), Struct_2(arg_1.a, arg_1.b, arg_1.a, u_input.b))).c, !func_1(Struct_2(arg_1.a, arg_1.b, arg_1.a, -2147483647i), Struct_2(arg_1.a, vec4<bool>(arg_1.b.x, global1.x, global3.x, global1.x), Struct_1(vec4<u32>(arg_1.a.a.x, 24999u, var_0, u_input.d.x)), 41608i), arg_1).b, func_1(func_1(arg_1, arg_1, arg_1), func_1(arg_1, arg_1, arg_1), Struct_2(arg_1.a, vec4<bool>(global3.x, arg_0, false, false), Struct_1(arg_1.a.a), arg_1.d)).a, 1i)).b.x, all(func_4(_wgslsmith_mult_u32(var_0, 9639u), vec4<bool>(arg_1.b.x, true, arg_0, false), global3.x | arg_1.b.x)) | (_wgslsmith_add_u32(46002u, u_input.d.x) >= abs(var_0)));
    let var_2 = _wgslsmith_clamp_i32(-u_input.b, firstLeadingBit(-1i), 9810i);
    let var_3 = arg_1.c.a.zy;
    return vec4<i32>(u_input.b, var_2, 1i << (var_0 % 32u), arg_1.d) ^ reverseBits(vec4<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.d, 0i, var_2), vec3<i32>(0i, arg_1.d, -107128i))), _wgslsmith_mult_i32(54066i, -1i) ^ -u_input.b, min(~979i, min(arg_1.d, var_2)), _wgslsmith_add_i32(select(-3420i, 2147483647i, arg_1.b.x), firstTrailingBit(arg_1.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    var var_1 = select(vec4<i32>(~u_input.b, firstLeadingBit(_wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.b, 40467i), vec2<i32>(u_input.b, 8670i)), -vec2<i32>(-29609i, -12116i))), u_input.b, 2147483647i), -(func_5(global3.x, func_1(Struct_2(Struct_1(vec4<u32>(u_input.c.x, 12919u, 6561u, u_input.a)), vec4<bool>(false, global1.x, true, global1.x), Struct_1(vec4<u32>(u_input.c.x, 0u, 16761u, 0u)), u_input.b), Struct_2(Struct_1(vec4<u32>(u_input.a, 0u, u_input.d.x, 1u)), vec4<bool>(true, true, false, global3.x), Struct_1(vec4<u32>(0u, u_input.d.x, 1u, u_input.d.x)), 5637i), Struct_2(Struct_1(vec4<u32>(6625u, u_input.d.x, 0u, 1u)), vec4<bool>(false, true, true, true), Struct_1(u_input.c), 0i)), _wgslsmith_f_op_f32(622f + 680f)) << ((vec4<u32>(26304u, 4703u, u_input.d.x, u_input.d.x) ^ vec4<u32>(u_input.c.x, 47423u, 4920u, u_input.d.x)) % vec4<u32>(32u))), false);
    global3 = !func_2().yxw;
    global2 = 1349f;
    let var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.c.x, u_input.a), vec3<u32>(~1u, _wgslsmith_add_u32(60244u, u_input.a), ~u_input.a)), 0u, countOneBits(0u), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(67149u, _wgslsmith_div_u32(1u, u_input.d.x), _wgslsmith_mod_u32(u_input.d.x, 61253u)), ~u_input.c.x & _wgslsmith_sub_u32(4294967295u, 1u))), ~vec4<u32>(_wgslsmith_sub_u32(~u_input.c.x, countOneBits(89589u)), 1u, _wgslsmith_add_u32(u_input.d.x & u_input.d.x, u_input.a), ~(~u_input.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(4294967295u, func_1(Struct_2(Struct_1(u_input.c), vec4<bool>(global3.x, true, global1.x, true), Struct_1(u_input.c), -61091i), Struct_2(Struct_1(vec4<u32>(u_input.c.x, var_2.x, 99941u, 8373u)), vec4<bool>(global1.x, false, true, false), Struct_1(var_2), 52086i), Struct_2(Struct_1(u_input.c), vec4<bool>(true, global3.x, global3.x, false), Struct_1(vec4<u32>(var_2.x, 1u, var_2.x, 9873u)), 1i)).a.a.x), 0u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-889f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1329f, -1972f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1399f)), _wgslsmith_f_op_f32(-1341f * -1577f)), -181f), vec4<f32>(335f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(419f))), -1449f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -639f)))), !select(vec4<bool>(true, global3.x, global3.x, true), select(vec4<bool>(global3.x, global3.x, false, global3.x), vec4<bool>(global1.x, true, global1.x, false), true), func_2()))));
}

