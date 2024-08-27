struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_3, 2>;

var<private> global2: Struct_3 = Struct_3(Struct_1(17266i), Struct_1(1i), Struct_1(-15285i), Struct_1(-1i), vec4<i32>(18803i, -11326i, 1i, -46383i));

var<private> global3: array<vec4<bool>, 10>;

var<private> global4: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(4294967295u, true, Struct_1(-8894i), Struct_1(-22483i), vec3<u32>(4294967295u, 1u, 43218u)), Struct_2(1427u, true, Struct_1(-1i), Struct_1(1i), vec3<u32>(52493u, 10026u, 0u)), Struct_2(82594u, true, Struct_1(i32(-2147483648)), Struct_1(-26129i), vec3<u32>(54998u, 1u, 56856u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_3) -> bool {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1037f)));
    var var_1 = 1u;
    global3 = array<vec4<bool>, 10>();
    let var_2 = ~(~(~(~46036u)));
    let var_3 = vec4<bool>(select(false, true, true), any(vec4<bool>(true, true, any(vec2<bool>(true, true)), !all(vec3<bool>(false, false, false)))), !(firstTrailingBit(reverseBits(2147483647i)) != _wgslsmith_div_i32(arg_0.x, _wgslsmith_mult_i32(arg_0.x, global2.c.a))), select(true & (firstTrailingBit(1u) < 4294967295u), true, true || select(true, true, true)));
    return max(firstTrailingBit(~71351u), _wgslsmith_sub_u32(~(~var_2), abs(var_2))) > u_input.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> vec4<i32> {
    global4 = array<Struct_2, 3>();
    global2 = Struct_3(Struct_1(-61389i), arg_0, Struct_1(-_wgslsmith_add_i32(global2.e.x, _wgslsmith_mult_i32(7094i, global2.d.a))), arg_1, vec4<i32>(~(~global2.b.a | 95640i), (i32(-1i) * -global2.c.a) & ~global2.b.a, -firstLeadingBit(min(11335i, -1i)), _wgslsmith_dot_vec4_i32(global2.e, -(~vec4<i32>(arg_1.a, arg_1.a, u_input.b.x, -44376i)))));
    var var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 2u)];
    let var_1 = var_0.e;
    global0 = any(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(442f))) != _wgslsmith_f_op_f32(sign(1f)), !func_3(-u_input.b, var_0.d, vec4<f32>(346f, -939f, 250f, -262f), Struct_3(Struct_1(98658i), arg_0, Struct_1(-5931i), Struct_1(global2.c.a), var_0.e)), true));
    return global2.e;
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(~4935u, ~u_input.a.x), ~vec2<u32>(4294967295u, arg_3.e.x) << (_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_3.a, arg_3.a), arg_3.e.zz), _wgslsmith_mult_vec2_u32(vec2<u32>(17848u, 43047u), vec2<u32>(1u, u_input.a.x))) % vec2<u32>(32u)), select(arg_3.e.xy, arg_3.e.yz, func_3(arg_0.yw & arg_0.wy, arg_3.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_1, arg_1, -924f)), global1[_wgslsmith_index_u32(62169u, 2u)]))));
    var_0 = ~(u_input.a | ~arg_3.e.zx);
    var_0 = ~_wgslsmith_mult_vec2_u32(arg_3.e.yy | ~select(vec2<u32>(var_0.x, u_input.a.x), vec2<u32>(11921u, arg_3.a), arg_3.b), arg_3.e.zy);
    let var_1 = global4[_wgslsmith_index_u32(0u, 3u)];
    var var_2 = 12294u;
    return global2.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: u32) -> i32 {
    global3 = array<vec4<bool>, 10>();
    let var_0 = Struct_3(arg_0, global2.b, global2.a, func_4(~firstTrailingBit(global2.e), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-529f, 223f, false))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1134f)))))), 1f, global4[_wgslsmith_index_u32(0u, 3u)]), firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, ~global2.d.a, arg_2.x, global2.d.a & global2.c.a), global2.e)));
    global2 = Struct_3(arg_0, func_4(var_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(839f)) + -884f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -792f) * 388f), _wgslsmith_f_op_f32(trunc(1376f)))), Struct_2(abs(~0u), !any(global3[_wgslsmith_index_u32(arg_3, 10u)]), func_4(~vec4<i32>(u_input.b.x, arg_2.x, arg_0.a, 45899i), _wgslsmith_f_op_f32(ceil(288f)), _wgslsmith_f_op_f32(f32(-1f) * -2913f), global4[_wgslsmith_index_u32(arg_3 >> (arg_3 % 32u), 3u)]), Struct_1(_wgslsmith_mod_i32(arg_2.x, 1i)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), min(vec3<u32>(u_input.a.x, 0u, 75414u), vec3<u32>(4294967295u, 99417u, arg_3)), ~vec3<u32>(u_input.a.x, 1u, 4294967295u)))), global2.d, Struct_1(~(~arg_0.a)), ~vec4<i32>(_wgslsmith_mod_i32(firstLeadingBit(-1i), _wgslsmith_sub_i32(2147483647i, var_0.d.a)), var_0.c.a, arg_2.x, _wgslsmith_mult_i32(1i, u_input.b.x)));
    var var_1 = _wgslsmith_add_u32(arg_3 | firstTrailingBit(u_input.a.x), _wgslsmith_dot_vec4_u32(~firstLeadingBit(~vec4<u32>(arg_3, 1u, 24292u, 98u)), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3, arg_3, u_input.a.x, arg_3), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, 112728u, arg_3), vec4<u32>(arg_3, arg_3, 53256u, u_input.a.x))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(3380u, arg_3), u_input.a), 1u, 1u, 0u))));
    return abs(abs(1i));
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_1(func_5(func_4(reverseBits(func_2(global2.a, Struct_1(18650i), arg_0)), 1030f, -1617f, global4[_wgslsmith_index_u32(u_input.a.x, 3u)]), select(select(select(vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, false, false, arg_0.x), arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), select(true, arg_0.x, true)), vec4<bool>(!arg_0.x, !arg_0.x, true, arg_0.x), !any(vec3<bool>(true, arg_0.x, false))), firstLeadingBit(global2.e.zzy), select(_wgslsmith_add_u32(24011u, u_input.a.x), _wgslsmith_div_u32(u_input.a.x, 28147u), !any(vec4<bool>(arg_0.x, true, arg_0.x, true)))));
    var var_1 = arg_0.x;
    var var_2 = var_0;
    var var_3 = false;
    let var_4 = !all(select(select(arg_0, vec2<bool>(false, arg_0.x), vec2<bool>(false, arg_0.x)), select(arg_0, arg_0, arg_0.x), select(arg_0, arg_0, u_input.a.x <= u_input.a.x)));
    return Struct_2(_wgslsmith_clamp_u32(~(~u_input.a.x), 115339u, 1u), all(vec3<bool>(arg_0.x, true, !var_4)), global2.a, Struct_1(~_wgslsmith_mod_i32(var_2.a, _wgslsmith_dot_vec3_i32(global2.e.zxx, global2.e.wzz))), ~vec3<u32>(abs(u_input.a.x), u_input.a.x, 1u));
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> bool {
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~arg_1.e, select(_wgslsmith_mod_vec3_u32(min(~vec3<u32>(arg_1.e.x, 54852u, u_input.a.x), arg_1.e), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 5780u, 1773u), arg_1.e), vec3<u32>(1u, u_input.a.x, arg_1.e.x) << (vec3<u32>(21296u, u_input.a.x, 4294967295u) % vec3<u32>(32u)))), abs(arg_1.e), arg_1.b)), 3u)];
    let var_1 = vec2<i32>(_wgslsmith_div_i32(1i, _wgslsmith_clamp_i32(23851i | u_input.b.x, global2.b.a, global2.b.a)) | _wgslsmith_add_i32(_wgslsmith_add_i32(-2147483647i, global2.d.a) & (2147483647i & arg_0), 12878i), var_0.c.a);
    return all(select(select(vec4<bool>(!var_0.b, arg_1.b, false, all(vec2<bool>(false, true))), vec4<bool>(all(vec2<bool>(arg_1.b, true)), true, var_0.b, false), select(select(global3[_wgslsmith_index_u32(4294967295u, 10u)], global3[_wgslsmith_index_u32(75580u, 10u)], true), vec4<bool>(arg_1.b, true, arg_1.b, var_0.b), !global3[_wgslsmith_index_u32(15095u, 10u)])), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(var_0.e.x, var_0.e.x)), max(vec2<u32>(arg_1.a, arg_1.e.x), vec2<u32>(arg_1.a, u_input.a.x))) << (_wgslsmith_add_u32(var_0.e.x, 19271u) % 32u), 10u)], true));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 10>();
    global0 = !any(vec2<bool>(true, true));
    global0 = !func_6(~(i32(-1i) * -2147483647i), func_1(vec2<bool>(true, true)));
    let var_0 = global2.d;
    global0 = any(select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(func_1(vec2<bool>(true, false)).b, select(true, all(vec2<bool>(false, true)), true), true), 8310u < (~1u ^ u_input.a.x)));
    global4 = array<Struct_2, 3>();
    var var_1 = _wgslsmith_div_i32((global2.e.x << (21605u % 32u)) ^ (var_0.a >> (_wgslsmith_add_u32(~u_input.a.x, u_input.a.x) % 32u)), 20687i);
    global2 = global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.a.x, 1u, ~(~49225u) << (u_input.a.x % 32u)), 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(-vec4<i32>(-1i, 1i, 5090i, u_input.b.x) >> (vec4<u32>(firstTrailingBit(u_input.a.x), 4294967295u, reverseBits(4294967295u), min(u_input.a.x, 27086u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-37419i ^ var_0.a, 1i, _wgslsmith_div_i32(global2.e.x, -2890i), -global2.a.a), ~func_2(Struct_1(global2.d.a), global2.d, vec2<bool>(true, false)))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-213f, _wgslsmith_f_op_f32(f32(-1f) * -1882f)))));
}

