struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<u32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(i32(-2147483648), -31156i));

var<private> global1: bool = false;

var<private> global2: array<f32, 9>;

var<private> global3: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(false, vec3<bool>(false, true, true), vec2<bool>(false, true), vec2<f32>(1084f, -914f), -24724i), Struct_1(true, vec3<bool>(false, false, true), vec2<bool>(true, true), vec2<f32>(1397f, 416f), -1i), Struct_1(true, vec3<bool>(true, false, false), vec2<bool>(true, false), vec2<f32>(1093f, -362f), 2147483647i), Struct_1(false, vec3<bool>(true, false, false), vec2<bool>(false, false), vec2<f32>(-408f, -413f), -4335i), Struct_1(true, vec3<bool>(false, false, false), vec2<bool>(true, false), vec2<f32>(1000f, -397f), i32(-2147483648)), Struct_1(true, vec3<bool>(false, true, true), vec2<bool>(false, false), vec2<f32>(-402f, 527f), 0i), Struct_1(false, vec3<bool>(false, true, false), vec2<bool>(true, true), vec2<f32>(206f, 121f), -1i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_4) -> vec2<f32> {
    global3 = array<Struct_1, 7>();
    var var_0 = firstLeadingBit(arg_1.b.d.yz);
    var var_1 = arg_1;
    var var_2 = select(~select(~_wgslsmith_mod_vec2_u32(vec2<u32>(16386u, 10607u), var_1.b.d.xy), _wgslsmith_mod_vec2_u32(var_1.a.xx, ~vec2<u32>(1u, arg_1.b.e)), false), reverseBits(_wgslsmith_sub_vec2_u32(max(firstLeadingBit(vec2<u32>(1u, 4294967295u)), vec2<u32>(7526u, u_input.d)), ~abs(vec2<u32>(0u, arg_0)))), select(!vec2<bool>(select(arg_1.b.c.a, false, arg_1.b.c.c.x), true), vec2<bool>(!any(vec4<bool>(true, false, false, var_1.b.a)), !var_1.b.a == arg_1.b.c.a), select(select(var_1.b.c.b.xy, vec2<bool>(false, var_1.b.c.b.x), arg_1.b.c.b.yz), select(select(var_1.b.c.b.zy, var_1.b.c.c, vec2<bool>(true, arg_1.b.c.a)), select(arg_1.b.c.b.yy, vec2<bool>(true, arg_1.b.a), true), arg_1.b.a), !select(var_1.b.c.c, var_1.b.c.b.xz, var_1.b.a))));
    global2 = array<f32, 9>();
    return arg_1.b.c.d;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec4_i32(firstLeadingBit(firstLeadingBit(vec4<i32>(u_input.c.x, i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(u_input.c, u_input.c), -42768i))), vec4<i32>(1i, 0i, _wgslsmith_mult_i32(1i, 1i) & _wgslsmith_mult_i32(u_input.b.x, -19706i), -u_input.c.x));
    let var_1 = Struct_3(Struct_2(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 53472u, 44731u), vec3<u32>(u_input.d, u_input.d, 2319u)), vec3<u32>(36952u, u_input.d, 59994u)) >= firstLeadingBit(4294967295u), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a, u_input.a) | _wgslsmith_add_vec3_i32(var_0.zzz, vec3<i32>(u_input.c.x, 0i, -8306i)), vec3<i32>(~var_0.x, 1i, 54982i)), Struct_1(false && any(vec2<bool>(true, false)), vec3<bool>(true, true, true), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(func_3(~0u, Struct_4(vec3<u32>(1u, 0u, u_input.d), Struct_2(false, var_0.zxy, Struct_1(false, vec3<bool>(true, true, false), vec2<bool>(false, true), vec2<f32>(-217f, global2[_wgslsmith_index_u32(0u, 9u)]), var_0.x), vec3<u32>(u_input.d, 1u, u_input.d), u_input.d)))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, -17953i), u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, 0i, 0i), u_input.b))), _wgslsmith_mult_vec3_u32(~(vec3<u32>(4294967295u, 80632u, 1u) << (vec3<u32>(1u, 13935u, u_input.d) % vec3<u32>(32u))), ~(~vec3<u32>(u_input.d, u_input.d, u_input.d))), ~11262u), Struct_1(false, !select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), any(vec4<bool>(true, false, false, false))), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec4<bool>(false, false, false, false)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 2575f)))))), -2147483647i));
    var var_2 = _wgslsmith_add_vec4_u32(reverseBits(abs(vec4<u32>(var_1.a.e, 1u, 4294967295u, 46427u)) ^ ~_wgslsmith_add_vec4_u32(vec4<u32>(4594u, u_input.d, 81442u, 26655u), vec4<u32>(137220u, 0u, u_input.d, u_input.d))), ~(~max(vec4<u32>(var_1.a.e, 11223u, u_input.d, 25578u), abs(vec4<u32>(u_input.d, 44686u, 18342u, 100285u)))));
    global2 = array<f32, 9>();
    let var_3 = 134f;
    return Struct_1(false, var_1.b.b, var_1.b.c, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1916f, _wgslsmith_f_op_f32(f32(-1f) * -618f)), _wgslsmith_f_op_vec2_f32(abs(var_1.b.d)), !(!select(var_1.b.b.yy, var_1.b.b.yy, var_1.b.b.yy)))), -1i);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> Struct_1 {
    var var_0 = -arg_1.a.b.yz;
    global3 = array<Struct_1, 7>();
    var var_1 = u_input.c;
    global1 = !(!arg_0.a.a);
    global0 = array<vec2<i32>, 1>();
    return func_2();
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_1 {
    global1 = select(!arg_1.a, !func_1(Struct_3(arg_1, func_1(Struct_3(arg_1, Struct_1(false, vec3<bool>(false, arg_1.a, arg_1.a), vec2<bool>(arg_1.c.b.x, true), arg_1.c.d, -15084i)), Struct_3(arg_1, global3[_wgslsmith_index_u32(arg_1.e, 7u)]))), Struct_3(arg_1, func_2())).b.x, arg_1.c.c.x);
    return Struct_1(!func_2().a, !arg_1.c.b, vec2<bool>(arg_1.a, select(!all(vec2<bool>(false, arg_1.c.b.x)), !func_2().a, arg_1.a && arg_1.c.b.x)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.d.x * global2[_wgslsmith_index_u32(4294967295u, 9u)]) * 1508f), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(40337u, 4294967295u, 46873u, arg_1.e), vec4<u32>(u_input.d, arg_1.e, u_input.d, u_input.d) ^ vec4<u32>(45766u, 4294967295u, 4294967295u, u_input.d)), 9u)]), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.c.d * arg_1.c.d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.c.d * arg_1.c.d) - _wgslsmith_f_op_vec2_f32(-arg_1.c.d))))), -_wgslsmith_div_i32((arg_1.b.x & 28270i) ^ _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(arg_0.x, arg_0.x, arg_1.b.x, 8319i)), (arg_1.c.e | 2147483647i) | (37115i & arg_1.b.x)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_3 {
    let var_0 = Struct_3(Struct_2(((4294967295u >= u_input.d) || true) | arg_0.c.x, -u_input.c, func_2(), countOneBits(vec3<u32>(0u, u_input.d, ~u_input.d)), ~(~1u)), global3[_wgslsmith_index_u32((u_input.d << (~30805u % 32u)) & 58626u, 7u)]);
    let var_1 = ~_wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -var_0.a.b.yy, vec2<i32>(-1i) * -(~vec2<i32>(0i, 0i)));
    global1 = arg_0.c.x;
    let var_2 = var_0;
    global3 = array<Struct_1, 7>();
    return Struct_3(var_0.a, func_4(~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-18388i, 2147483647i, -7302i), vec3<i32>(var_1.x, u_input.c.x, 49060i)), -14637i), Struct_2(!(!arg_0.b.x), max(~vec3<i32>(u_input.c.x, 31811i, 60290i), u_input.c), func_1(var_2, var_2), vec3<u32>(_wgslsmith_add_u32(4294967295u, var_0.a.e), 1u, _wgslsmith_dot_vec2_u32(var_0.a.d.yz, var_2.a.d.xy)), 1u)));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    var var_0 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(reverseBits(max(73091u, 1655u)), arg_1.a.d.x, _wgslsmith_sub_u32(~u_input.d, _wgslsmith_mod_u32(arg_1.a.e, arg_0.a.e))), vec3<u32>(arg_0.a.d.x, _wgslsmith_sub_u32(arg_0.a.d.x, arg_0.a.d.x) & 1u, arg_0.a.e));
    var var_1 = vec3<bool>(!(!(!(!arg_0.b.a))), arg_1.b.c.x, arg_0.a.a);
    var var_2 = !arg_0.b.b;
    var var_3 = Struct_4(arg_0.a.d, func_5(Struct_1(arg_0.b.a, !func_4(vec2<i32>(1i, arg_0.b.e), arg_1.a).b, !select(vec2<bool>(false, var_2.x), vec2<bool>(false, arg_1.a.a), var_1.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.b.d, arg_1.a.c.d, var_1.x)) - arg_0.b.d), ~select(-18800i, arg_1.a.c.e, false)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32(arg_1.a.e, 9u)], 1042f, -637f, -828f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(arg_0.a.d.x, 9u)], 1157f, 659f, arg_1.b.d.x) * vec4<f32>(arg_0.a.c.d.x, 819f, arg_0.b.d.x, -1100f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-801f, 236f, arg_1.b.d.x, arg_1.b.d.x) * vec4<f32>(-587f, global2[_wgslsmith_index_u32(var_0.x, 9u)], global2[_wgslsmith_index_u32(arg_1.a.d.x, 9u)], arg_1.b.d.x)))))).a);
    var var_4 = var_3.b;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 7>();
    global3 = array<Struct_1, 7>();
    let var_0 = -u_input.a;
    var var_1 = func_6(func_5(func_4(var_0.xy, Struct_2(true, -vec3<i32>(83491i, var_0.x, var_0.x), func_1(Struct_3(Struct_2(true, u_input.c, Struct_1(false, vec3<bool>(true, true, false), vec2<bool>(true, true), vec2<f32>(-204f, 367f), var_0.x), vec3<u32>(u_input.d, 28988u, u_input.d), u_input.d), Struct_1(true, vec3<bool>(true, true, false), vec2<bool>(false, false), vec2<f32>(global2[_wgslsmith_index_u32(u_input.d, 9u)], 569f), -1i)), Struct_3(Struct_2(true, u_input.c, Struct_1(true, vec3<bool>(true, true, true), vec2<bool>(false, true), vec2<f32>(-1568f, global2[_wgslsmith_index_u32(u_input.d, 9u)]), -2147483647i), vec3<u32>(16247u, 33564u, u_input.d), u_input.d), global3[_wgslsmith_index_u32(4294967295u, 7u)])), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, u_input.d, 1u), vec3<u32>(30751u, 1u, 36949u)), u_input.d)), vec4<f32>(global2[_wgslsmith_index_u32(19201u, 9u)], 832f, -1584f, global2[_wgslsmith_index_u32(~abs(u_input.d), 9u)])), Struct_3(func_5(func_1(func_5(Struct_1(true, vec3<bool>(true, true, true), vec2<bool>(true, true), vec2<f32>(global2[_wgslsmith_index_u32(28782u, 9u)], 1119f), -2147483647i), vec4<f32>(global2[_wgslsmith_index_u32(u_input.d, 9u)], global2[_wgslsmith_index_u32(u_input.d, 9u)], 526f, global2[_wgslsmith_index_u32(u_input.d, 9u)])), func_5(global3[_wgslsmith_index_u32(50673u, 7u)], vec4<f32>(global2[_wgslsmith_index_u32(9698u, 9u)], global2[_wgslsmith_index_u32(1u, 9u)], -1099f, global2[_wgslsmith_index_u32(26625u, 9u)]))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.d, 9u)], -596f, 478f, global2[_wgslsmith_index_u32(28036u, 9u)]))))).a, global3[_wgslsmith_index_u32(u_input.d, 7u)]));
    let var_2 = vec3<bool>(true, select(var_1.a.a, func_1(Struct_3(var_1.a, Struct_1(var_1.a.c.b.x, vec3<bool>(true, var_1.a.c.a, var_1.a.c.c.x), vec2<bool>(false, true), var_1.b.d, var_1.a.b.x)), Struct_3(Struct_2(var_1.a.c.a, vec3<i32>(var_0.x, var_1.b.e, 1i), var_1.a.c, vec3<u32>(4294967295u, 0u, u_input.d), 0u), var_1.b)).b.x, false), var_1.b.c.x);
    var var_3 = func_5(Struct_1(func_6(Struct_3(var_1.a, var_1.b), Struct_3(Struct_2(true, u_input.a, Struct_1(true, var_2, var_2.xx, vec2<f32>(var_1.a.c.d.x, -637f), var_1.b.e), var_1.a.d, var_1.a.e), Struct_1(true, var_1.b.b, vec2<bool>(var_1.b.b.x, false), var_1.a.c.d, var_1.a.b.x))).b.d.x <= var_1.b.d.x, vec3<bool>(func_2().a, true, var_2.x), func_1(Struct_3(var_1.a, func_5(global3[_wgslsmith_index_u32(37849u, 7u)], vec4<f32>(437f, global2[_wgslsmith_index_u32(2548u, 9u)], var_1.b.d.x, -1000f)).b), func_5(func_6(Struct_3(var_1.a, Struct_1(false, var_1.b.b, vec2<bool>(var_2.x, var_2.x), vec2<f32>(629f, global2[_wgslsmith_index_u32(var_1.a.e, 9u)]), 21893i)), Struct_3(var_1.a, Struct_1(false, vec3<bool>(var_2.x, false, var_2.x), var_1.b.b.yy, var_1.b.d, -2147483647i))).a.c, vec4<f32>(global2[_wgslsmith_index_u32(var_1.a.e, 9u)], global2[_wgslsmith_index_u32(u_input.d, 9u)], 158f, 1000f))).c, _wgslsmith_f_op_vec2_f32(var_1.b.d - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-457f, var_1.b.d.x)))), ~(-31607i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.c.d.x, -243f, var_1.a.c.d.x, global2[_wgslsmith_index_u32(1u, 9u)])))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.b.d.x, _wgslsmith_div_f32(var_1.a.c.d.x, global2[_wgslsmith_index_u32(u_input.d, 9u)]), 1620f, -920f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(131f, var_1.b.d.x, 1391f, 1422f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2[_wgslsmith_index_u32(var_1.a.e, 9u)], 486f, 966f, -1332f), vec4<f32>(315f, -271f, 1000f, 282f))), var_1.a.a))))));
    global3 = array<Struct_1, 7>();
    var_3 = func_5(var_1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.b.d.x, 864f, -1000f, -1000f), vec4<f32>(137f, -468f, -239f, var_1.b.d.x))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2[_wgslsmith_index_u32(var_1.a.e, 9u)], 1017f, global2[_wgslsmith_index_u32(15205u, 9u)], -1388f), vec4<f32>(-1533f, -1881f, var_3.a.c.d.x, var_3.a.c.d.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-971f, 521f, var_3.b.d.x, var_1.b.d.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.d, 9u)], global2[_wgslsmith_index_u32(var_3.a.d.x, 9u)], var_3.a.c.d.x, var_3.b.d.x) * vec4<f32>(var_3.a.c.d.x, -354f, 685f, var_1.b.d.x))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(var_3.a.e ^ 4294967295u, 9u)], var_1.b.d.x, var_3.b.d.x, -2563f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(var_0.x, (-1i >> (u_input.d % 32u)) ^ 1i) | func_5(func_6(Struct_3(Struct_2(var_3.b.c.x, vec3<i32>(var_3.b.e, -1i, var_0.x), var_3.a.c, var_3.a.d, var_1.a.e), global3[_wgslsmith_index_u32(4294967295u, 7u)]), Struct_3(var_1.a, var_1.a.c)).a.c, vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.a.e, 9u)]), -1242f, -548f, _wgslsmith_f_op_f32(ceil(-797f)))).b.e);
}

