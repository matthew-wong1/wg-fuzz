struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<i32>(-1i, -12981i, -26588i, 48985i), true, vec3<u32>(0u, 5085u, 1u)), Struct_1(vec4<i32>(2147483647i, 6118i, 28974i, 0i), false, vec3<u32>(6717u, 63164u, 0u)), Struct_1(vec4<i32>(1i, 10702i, -1i, 0i), false, vec3<u32>(0u, 4294967295u, 98870u)), Struct_1(vec4<i32>(i32(-2147483648), -31373i, -42468i, 2352i), true, vec3<u32>(26119u, 15944u, 46965u)), Struct_1(vec4<i32>(1i, 42466i, i32(-2147483648), 1i), true, vec3<u32>(1u, 30368u, 0u)), Struct_1(vec4<i32>(-38043i, -86i, 0i, -3124i), true, vec3<u32>(51166u, 1u, 96445u)), Struct_1(vec4<i32>(-65580i, -15568i, -1i, -54177i), false, vec3<u32>(66976u, 1u, 4294967295u)), Struct_1(vec4<i32>(-1i, -34466i, 25277i, 22613i), true, vec3<u32>(11085u, 4294967295u, 22575u)), Struct_1(vec4<i32>(i32(-2147483648), 0i, 36184i, -12731i), false, vec3<u32>(37419u, 52237u, 27917u)), Struct_1(vec4<i32>(1i, 0i, 21644i, -1i), true, vec3<u32>(0u, 87738u, 1u)), Struct_1(vec4<i32>(3308i, -10255i, -1620i, i32(-2147483648)), true, vec3<u32>(8633u, 0u, 0u)), Struct_1(vec4<i32>(25633i, -1908i, 2147483647i, 1i), false, vec3<u32>(4294967295u, 4294967295u, 32941u)), Struct_1(vec4<i32>(10673i, 2147483647i, -1i, 0i), true, vec3<u32>(0u, 45672u, 1u)), Struct_1(vec4<i32>(2147483647i, 16233i, 2147483647i, 1i), true, vec3<u32>(55465u, 82426u, 1u)));

var<private> global2: bool;

var<private> global3: vec2<i32>;

var<private> global4: i32;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1532f));
    global3 = vec2<i32>(firstLeadingBit(arg_1 >> (u_input.a % 32u)), -(~(~global3.x & -32965i)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -553f));
    var var_2 = Struct_2(var_1.a);
    var var_3 = firstTrailingBit(abs(arg_0.a.xww));
    return 1u;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(firstLeadingBit(2147483647i), ~0i), -20924i), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 5962i, global3.x), vec3<i32>(-41636i, global3.x, global3.x)), -vec3<i32>(-2147483647i, global3.x, -32299i)) << (1u % 32u), _wgslsmith_sub_i32(1i, global3.x), 17100i | _wgslsmith_add_i32(global3.x, countOneBits(global3.x))), (func_3(Struct_1(vec4<i32>(-2147483647i, 44432i, 2147483647i, 0i), false, vec3<u32>(4294967295u, 4294967295u, 518u)), global3.x) ^ u_input.a) > (~u_input.a << (~_wgslsmith_sub_u32(12520u, u_input.a) % 32u)), vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 65068u, u_input.a), vec3<u32>(u_input.a, u_input.a, 16475u), vec3<u32>(1u, 19585u, u_input.a)), vec3<u32>(u_input.a, u_input.a, u_input.a) | vec3<u32>(u_input.a, 0u, u_input.a)) & ~_wgslsmith_clamp_u32(4294967295u, u_input.a, 107237u), u_input.a & 1u));
    global3 = ~(~(vec2<i32>(-1i) * -(~var_0.a.yx)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-394f - -517f))), _wgslsmith_f_op_f32(sign(-598f)))))));
    let var_2 = var_1;
    let var_3 = -462f;
    return Struct_1(vec4<i32>(2147483647i, -57302i, _wgslsmith_sub_i32(1i, var_0.a.x), min(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, var_0.a.x), var_0.a.yx)), -global3.x)), var_0.b, var_0.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<bool> {
    var var_0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(max(max(arg_1.c.x, 84036u), arg_0.c.x ^ 1u), max(arg_0.c.x, arg_1.c.x), _wgslsmith_mult_u32(0u, ~arg_1.c.x)), vec3<u32>(73308u, ~(~35236u), max(countOneBits(firstTrailingBit(80192u)), _wgslsmith_add_u32(1u >> (arg_0.c.x % 32u), ~4294967295u))));
    let var_1 = arg_0.a.x;
    var var_2 = !select(!select(vec2<bool>(true, true), select(vec2<bool>(arg_1.b, false), vec2<bool>(arg_0.b, arg_1.b), arg_0.b), vec2<bool>(false, arg_1.b)), select(vec2<bool>(arg_1.b, false | arg_0.b), select(!vec2<bool>(true, arg_0.b), select(vec2<bool>(true, arg_1.b), vec2<bool>(true, true), true), arg_1.b), var_1 < _wgslsmith_mult_i32(2147483647i, arg_0.a.x)), vec2<bool>(!select(false, arg_0.b, true), arg_0.b));
    var_0 = arg_1.c.x & (arg_1.c.x >> (reverseBits(36760u) % 32u));
    let var_3 = Struct_2(-739f);
    return select(vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(arg_1.b, arg_0.b), var_2.x)), all(vec4<bool>(false, true, all(vec4<bool>(true, arg_1.b, false, arg_1.b)), arg_0.b || true)), !var_2.x), select(!(!(!vec3<bool>(arg_1.b, arg_0.b, arg_0.b))), vec3<bool>(true, true, true), select(vec3<bool>(var_2.x, arg_0.a.x <= arg_0.a.x, var_2.x), vec3<bool>(true, true, true), vec3<bool>(arg_0.b, var_2.x == true, false))), vec3<bool>(!(!arg_1.b), var_2.x, !arg_0.b));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = arg_2.c.x;
    global0 = !any(!func_4(Struct_1(arg_2.a, false, arg_1), func_2(), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.a, arg_3.a) * vec2<f32>(arg_3.a, 861f))));
    global3 = _wgslsmith_clamp_vec2_i32(arg_2.a.xz, firstTrailingBit(vec2<i32>(1i, ~min(global3.x, -22620i))), firstTrailingBit(vec2<i32>(-func_2().a.x, 42946i)));
    let var_1 = func_2();
    global1 = array<Struct_1, 14>();
    return func_4(Struct_1(_wgslsmith_mult_vec4_i32(countOneBits(var_1.a), var_1.a), !all(select(vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(var_1.b, var_1.b), vec2<bool>(true, false))), arg_1), Struct_1(-(~vec4<i32>(var_1.a.x, var_1.a.x, 0i, global3.x)), all(vec3<bool>(arg_2.b, var_1.b || var_1.b, func_4(arg_2, var_1, vec2<f32>(1938f, arg_3.a)).x)), var_1.c), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(251f, arg_3.a) - vec2<f32>(arg_3.a, arg_3.a)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(451f, arg_3.a)))))).yx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~(-select(vec2<i32>(0i, global3.x), vec2<i32>(30166i, global3.x), false)) << (((vec2<u32>(u_input.a, 4312u) & vec2<u32>(u_input.a, 32469u)) >> (~vec2<u32>(5812u, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global1 = array<Struct_1, 14>();
    global4 = firstTrailingBit(~(~(~var_0.x)));
    var var_1 = 1527f;
    var var_2 = select(~select(~vec2<u32>(42055u, u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.a, u_input.a)), func_1(global3.x, vec3<u32>(0u, 1041u, 0u), Struct_1(vec4<i32>(var_0.x, -15350i, global3.x, global3.x), true, vec3<u32>(0u, u_input.a, 4294967295u)), Struct_2(-1230f))) ^ func_2().c.zx, _wgslsmith_add_vec2_u32(vec2<u32>(select(u_input.a, ~u_input.a, true), 50973u), reverseBits(select(_wgslsmith_add_vec2_u32(vec2<u32>(23021u, u_input.a), vec2<u32>(105478u, 48160u)), vec2<u32>(u_input.a, u_input.a), 28696u < u_input.a))), !(!vec2<bool>(any(vec3<bool>(true, false, true)), true)));
    global0 = func_4(func_2(), func_2(), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1952f - -926f))), _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1727f, -572f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-299f, 256f))))))).x;
    var var_3 = vec3<u32>(func_3(func_2(), var_0.x), 828u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.x, var_2.x, u_input.a), vec3<u32>(firstTrailingBit(4294967295u), 1u, _wgslsmith_add_u32(7628u, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(global3.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -723f)), _wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(125f, 348f))))), -(i32(-1i) * -2147483647i), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-734f, -458f, _wgslsmith_f_op_f32(select(-1000f, 164f, true)), -1000f)))));
}

