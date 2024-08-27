struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: bool,
    d: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: vec3<i32> = vec3<i32>(2147483647i, 15237i, i32(-2147483648));

var<private> global2: f32 = -401f;

var<private> global3: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(vec2<u32>(4294967295u, 0u), i32(-2147483648), 25523i, false), Struct_4(vec2<u32>(4294967295u, 19208u), -4156i, -1i, false), Struct_4(vec2<u32>(15965u, 1u), -26324i, 1i, true), Struct_4(vec2<u32>(28195u, 16007u), 2242i, -1i, true), Struct_4(vec2<u32>(0u, 4294967295u), 2147483647i, -9678i, false), Struct_4(vec2<u32>(72195u, 0u), 19408i, -388i, true));

var<private> global4: i32 = -21207i;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4) -> bool {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_0.d.b)), -897f, !arg_1.d)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2428f), -1000f, arg_1.d))))));
    var var_0 = firstLeadingBit(countOneBits(-vec2<i32>(~(-54108i), select(-29188i, u_input.c, true))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.b) + _wgslsmith_f_op_f32(arg_0.d.b * 1f));
    var var_2 = var_1;
    var var_3 = _wgslsmith_dot_vec4_u32(u_input.d, u_input.d);
    return all(select(!select(select(vec4<bool>(false, arg_1.d, arg_1.d, arg_1.d), vec4<bool>(true, arg_1.d, true, arg_1.d), vec4<bool>(false, true, arg_1.d, false)), !vec4<bool>(false, arg_1.d, arg_1.d, arg_1.d), false | arg_1.d), !(!vec4<bool>(arg_1.d, false, false, false)), all(vec4<bool>(arg_1.d == false, true, true, all(vec3<bool>(arg_1.d, arg_1.d, arg_1.d))))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: bool) -> f32 {
    let var_0 = Struct_5(Struct_3(vec2<u32>(0u, ~(~arg_1)), ~u_input.d.zxx, false, arg_1), 1u);
    global2 = 676f;
    let var_1 = var_0.a;
    var var_2 = vec4<bool>(any(!vec3<bool>(true, all(vec4<bool>(true, var_1.c, var_0.a.c, var_1.c)), true)), false, false, !func_3(Struct_2(~global1.x, ~1u, ~vec2<u32>(arg_0, arg_0), Struct_1(u_input.d.xz, 823f)), Struct_4(u_input.d.yw, -global1.x, global1.x, true)));
    global0 = array<Struct_1, 8>();
    return 1477f;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(select(-1000f, arg_0, all(vec2<bool>(all(vec3<bool>(arg_1.c, arg_1.c, true)), true)))));
    var var_1 = min(~(-(~global1.x)), max(~u_input.b.x, _wgslsmith_mod_i32(-(~u_input.b.x), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global1.zz, global1.zz), u_input.b.x << (75811u % 32u)))));
    var var_2 = !(!vec2<bool>(abs(u_input.d.x) >= var_0.a.x, true));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, 106f, 524f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, 749f, -1358f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1000f, var_0.b)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, var_0.b, -1259f) * vec3<f32>(-1000f, arg_0, 329f))))));
    var var_4 = !(!arg_1.c);
    return Struct_1(vec2<u32>(~(~(~arg_2.x)), abs(_wgslsmith_mod_u32(var_0.a.x, ~var_0.a.x))), var_3.x);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(arg_1.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-334f - -172f))), 1974f, _wgslsmith_f_op_f32(-func_4(363f, Struct_3(vec2<u32>(arg_1.a.x, arg_1.a.x), u_input.d.yww, false, u_input.a), arg_1.a).b)) * _wgslsmith_f_op_vec4_f32(step(arg_2, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, -428f, arg_1.b) * _wgslsmith_div_vec4_f32(arg_2, vec4<f32>(221f, arg_1.b, arg_2.x, arg_2.x)))))));
    var var_1 = Struct_3(firstLeadingBit(vec2<u32>(arg_1.a.x, _wgslsmith_mult_u32(1u, u_input.d.x))), u_input.d.wwz, arg_3, ~u_input.d.x);
    var var_2 = Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.b.x, -1i, u_input.b.x, global1.x)), _wgslsmith_add_vec4_i32(vec4<i32>(global1.x, global1.x, -554i, -1i), vec4<i32>(u_input.b.x, 23368i, 0i, global1.x))), vec4<i32>(u_input.c, global1.x, 0i, 0i) | max(vec4<i32>(global1.x, u_input.b.x, 82055i, u_input.b.x), vec4<i32>(u_input.b.x, 1i, 1i, global1.x))) << (_wgslsmith_clamp_u32(var_1.a.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_1.a.x), vec2<u32>(0u, 4294967295u)) % 32u), 1u, ~_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(var_1.b.x, 0u, var_1.b.x, 59878u))) % 32u), u_input.d.x, _wgslsmith_clamp_vec2_u32(~arg_1.a << (var_1.a % vec2<u32>(32u)), abs(var_1.b.yy), arg_1.a), global0[_wgslsmith_index_u32(~(~(~(~43056u))), 8u)]);
    let var_3 = Struct_5(Struct_3(~reverseBits(vec2<u32>(40251u, var_1.b.x)), u_input.d.wxx, false, ~_wgslsmith_dot_vec2_u32(u_input.d.zy, vec2<u32>(arg_1.a.x, 4294967295u)) >> (~12844u % 32u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(select(u_input.d.wzy, _wgslsmith_mult_vec3_u32(var_1.b, var_1.b), vec3<bool>(false, arg_3, arg_3)), reverseBits(var_1.b)), 41625u));
    let var_4 = 615f;
    return 4294967295u;
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_1, 8>();
    global3 = array<Struct_4, 6>();
    let var_0 = vec3<u32>(func_5(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), func_4(_wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), ~u_input.d.x, select(true, false, true))), Struct_3(u_input.d.zx, vec3<u32>(4294967295u, u_input.a, u_input.a), true, ~0u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), u_input.d.xz) << (vec2<u32>(17617u, u_input.d.x) % vec2<u32>(32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(414f, -126f, 184f, 1061f), vec4<f32>(-1334f, 1353f, -411f, -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(450f, 602f, -2077f, -697f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-286f, -715f, 1000f, -195f)))), true), 50811u, u_input.d.x);
    let var_1 = ~vec3<i32>(1i, _wgslsmith_dot_vec2_i32(global1.zy, vec2<i32>(1i, -1i)), firstTrailingBit(u_input.b.x)) >> ((var_0 | vec3<u32>(0u, 9377u, u_input.a)) % vec3<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1065f, -1060f)), vec2<f32>(-981f, 1684f))))))));
    return Struct_3(var_0.xx, var_0, any(select(vec2<bool>(true, any(vec3<bool>(false, true, true))), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true))), ~reverseBits(23055u));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_5) -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(14033u, 6u)];
    var var_1 = select(firstTrailingBit(countOneBits(~(vec2<u32>(39202u, 56579u) ^ arg_0.d.a))), ~(vec2<u32>(~var_0.a.x, arg_1.d) ^ (arg_2.a.b.xy | vec2<u32>(4294967295u, arg_1.b.x))), 1i < -var_0.c);
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.d.b - 1004f))) >= _wgslsmith_f_op_f32(1705f - 164f);
    var var_3 = firstTrailingBit((vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, arg_0.a, var_0.c, 2147483647i), vec4<i32>(u_input.b.x, var_0.c, 0i, u_input.c)), -u_input.b.x) | firstTrailingBit(vec2<i32>(-15723i, 0i))) ^ vec2<i32>(abs(1i), _wgslsmith_sub_i32(-2147483647i, global1.x) & -18850i));
    var var_4 = Struct_4(countOneBits(abs(u_input.d.yy)), -1i, -47528i, !any(select(vec4<bool>(false, var_0.d, var_0.d, false), vec4<bool>(arg_1.c, arg_1.c, false, arg_1.c), vec4<bool>(arg_2.a.c, arg_1.c, var_0.d, false))));
    return arg_0.d.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(u_input.c, global1.x, -15086i)), countOneBits(vec3<i32>(global1.x, -27949i, 0i) ^ vec3<i32>(global1.x, u_input.b.x, global1.x))), 2147483647i ^ select(-u_input.c, global1.x, true)), -1i);
    global2 = _wgslsmith_f_op_f32(func_6(Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x >> (34505u % 32u), u_input.b.x, u_input.b.x, -1i << (u_input.a % 32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, global1.x, -69705i, u_input.c) ^ vec4<i32>(2147483647i, var_0.x, -8672i, -21237i), -vec4<i32>(-1i, var_0.x, var_0.x, 50536i))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(~1106u, u_input.a), 30440u), u_input.d.xz >> (u_input.d.yx % vec2<u32>(32u)), Struct_1(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, u_input.d.x), _wgslsmith_sub_vec2_u32(u_input.d.yy, vec2<u32>(u_input.d.x, 0u))), _wgslsmith_f_op_f32(f32(-1f) * -947f))), func_1(), Struct_5(func_1(), 0u)));
    var var_1 = min(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, ~u_input.d.x), u_input.d.x, max(u_input.a, 0u)), min(u_input.d, vec4<u32>(0u, u_input.a, 66046u, _wgslsmith_sub_u32(u_input.a, 4294967295u)))), vec4<u32>(~(~u_input.d.x), u_input.a, abs(1u) << (u_input.d.x % 32u), u_input.d.x) & (vec4<u32>(u_input.a, func_5(vec3<bool>(false, false, true), Struct_1(vec2<u32>(0u, u_input.d.x), -597f), vec4<f32>(862f, -239f, -176f, 950f), true), u_input.d.x, ~u_input.d.x) | (u_input.d | _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.d.x, u_input.d.x, 4294967295u), vec4<u32>(1u, u_input.d.x, u_input.d.x, 4294967295u)))));
    var var_2 = 9274i;
    var_2 = -24313i;
    let x = u_input.a;
    s_output = StorageBuffer(-(i32(-1i) * -19521i), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(335f + -551f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2185f, -580f) * -493f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1248f), _wgslsmith_f_op_f32(1054f + 1335f)))), _wgslsmith_f_op_f32(func_2(var_1.x, var_1.x, all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)))))), -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1543f * _wgslsmith_f_op_f32(step(262f, 1000f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1661f), 2120f)))));
}

