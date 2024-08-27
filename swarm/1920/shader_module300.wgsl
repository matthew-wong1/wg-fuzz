struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1426f, -647f, 2824f, 475f);

var<private> global1: array<Struct_2, 26>;

var<private> global2: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(34369i, 1i, 0i), vec3<i32>(57436i, 11511i, 33770i), vec3<i32>(i32(-2147483648), -1i, 0i), vec3<i32>(42102i, -8277i, -19896i), vec3<i32>(39088i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-1i, -56699i, 1i), vec3<i32>(10465i, 14733i, -1i), vec3<i32>(2147483647i, 25623i, 1i), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec3<i32>(2147483647i, i32(-2147483648), 1i), vec3<i32>(116765i, 9325i, -25666i), vec3<i32>(-1596i, 1i, 10015i), vec3<i32>(37113i, 19489i, 6735i), vec3<i32>(-12i, -3021i, 0i), vec3<i32>(12693i, 0i, 9536i), vec3<i32>(-62254i, 1i, 2147483647i), vec3<i32>(-1i, -1i, 2147483647i), vec3<i32>(1i, -15405i, 59398i), vec3<i32>(-9961i, 9586i, 2147483647i), vec3<i32>(-1i, -66i, -56972i), vec3<i32>(i32(-2147483648), i32(-2147483648), 39220i), vec3<i32>(-18164i, -19397i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, -91073i), vec3<i32>(-1i, -59012i, 39524i), vec3<i32>(36698i, 29981i, 2340i), vec3<i32>(1i, 1i, -12747i), vec3<i32>(-21608i, 50982i, 1i), vec3<i32>(2147483647i, -8658i, -33714i));

var<private> global3: array<i32, 19>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: u32) -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), -max(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), global3[_wgslsmith_index_u32(1u, 19u)]), global3[_wgslsmith_index_u32(0u, 19u)], vec2<u32>(arg_2, _wgslsmith_mod_u32(1u, 31943u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1 + 873f))))));
    let var_1 = _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(var_0.d.x, 4294967295u, firstLeadingBit(arg_2))), _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(1u, countOneBits(arg_2), ~arg_2)), vec3<u32>(~_wgslsmith_mult_u32(1u, var_0.d.x), 3922u, abs(~28362u))), ~(~firstLeadingBit(vec3<u32>(0u, var_0.d.x, 23636u))) >> (~max(vec3<u32>(arg_2, var_0.d.x, var_0.d.x) ^ vec3<u32>(arg_2, 1u, arg_2), vec3<u32>(0u, 4294967295u, 30179u)) % vec3<u32>(32u)));
    let var_2 = arg_2;
    global3 = array<i32, 19>();
    var var_3 = ~(1u | _wgslsmith_dot_vec2_u32(var_0.d, vec2<u32>(_wgslsmith_clamp_u32(0u, arg_2, var_2), 55438u)));
    return u_input.a >> (select(~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d.x, var_0.d.x, 0u, 1u), vec4<u32>(1u, 1u, 70253u, 4294967295u)), vec4<u32>(47803u, 1u, var_1.x, 4294967295u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(63671u, var_2, 1u, var_0.d.x), ~vec4<u32>(arg_2, 18753u, arg_2, var_1.x), firstLeadingBit(vec4<u32>(13805u, 53082u, 16583u, arg_2))) >> (min(~vec4<u32>(var_0.d.x, var_2, 92821u, 884u), ~vec4<u32>(33789u, 4294967295u, 0u, arg_2)) % vec4<u32>(32u)), select(!(!vec4<bool>(false, arg_0, arg_0, arg_0)), select(select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, false, true), arg_0), select(vec4<bool>(true, false, true, true), vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(arg_0, arg_0, false, arg_0)), arg_0), select(!arg_0, all(vec2<bool>(true, true)), all(vec4<bool>(true, arg_0, true, arg_0))))) % vec4<u32>(32u));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(max(837f, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(sign(global0.x))))))), global3[_wgslsmith_index_u32(countOneBits(~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(9657u, 19933u)), vec2<u32>(44102u, 1u))), 19u)], 35915i, select(~(~(~vec2<u32>(7019u, 4294967295u))), ~firstTrailingBit(reverseBits(vec2<u32>(17516u, 11362u))), all(vec3<bool>(true, false, all(vec3<bool>(false, true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)));
    var var_1 = u_input.a.zxw;
    let var_2 = Struct_3(select(abs(func_3(true, -422f, 146u)), vec4<i32>(-1i, u_input.a.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(78579u, 1u, var_0.d.x, var_0.d.x), vec4<u32>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x)) % 32u), 1524i, ~firstLeadingBit(var_0.b)), vec4<bool>(_wgslsmith_f_op_f32(-var_0.a) < _wgslsmith_f_op_f32(1225f + var_0.a), true, false, -1000f != _wgslsmith_f_op_f32(floor(-728f)))));
    global2 = array<vec3<i32>, 28>();
    var var_3 = select(true, !(!all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true))), true);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1447f, var_0.a)))), (~35347i >> (var_0.d.x % 32u)) >> (~(~var_0.d.x) % 32u), u_input.a.x, ~vec2<u32>(16851u, ~25884u), _wgslsmith_f_op_f32(-var_0.e)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = vec3<u32>(_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.d.x, arg_0.a.d.x, arg_0.a.d.x, arg_0.a.d.x), vec4<u32>(arg_0.a.d.x, 0u, arg_0.a.d.x, arg_0.a.d.x) >> (vec4<u32>(4294967295u, 0u, arg_0.a.d.x, arg_0.a.d.x) % vec4<u32>(32u))), arg_0.a.d.x), arg_0.a.d.x << (4294967295u % 32u), 0u);
    var var_1 = arg_3.zy;
    var_0 = ~(~(~(~max(vec3<u32>(var_0.x, arg_0.a.d.x, arg_0.a.d.x), vec3<u32>(var_0.x, 96644u, 4294967295u)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))), -8647i, arg_0.a.b, (abs(vec2<u32>(arg_0.a.d.x, var_0.x)) ^ min(vec2<u32>(var_0.x, var_0.x), arg_0.a.d)) | arg_0.a.d, global0.x);
    var_1 = vec2<bool>(!var_1.x, arg_3.x);
    return func_2().a;
}

fn func_1() -> Struct_3 {
    global3 = array<i32, 19>();
    let var_0 = Struct_2(func_4(func_2(), Struct_3(vec4<i32>(u_input.a.x, u_input.a.x | 19389i, -82934i, reverseBits(1i))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -212f, -612f, -1008f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1168f, global0.x, -579f, 429f))))), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true))));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.e));
    global2 = array<vec3<i32>, 28>();
    return Struct_3(abs(vec4<i32>(-41305i, 3197i, -1i, ~countOneBits(global3[_wgslsmith_index_u32(1u, 19u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = array<Struct_2, 26>();
    global1 = array<Struct_2, 26>();
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, global0.x, 526f, global0.x))) - vec4<f32>(-599f, _wgslsmith_f_op_f32(-global0.x), global0.x, func_4(Struct_2(Struct_1(global0.x, 26539i, u_input.a.x, vec2<u32>(4111u, 13484u), 209f)), Struct_3(var_0.a), vec4<f32>(3102f, global0.x, -487f, -346f), vec3<bool>(false, false, false)).e)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(448f, global0.x, global0.x, 256f))) - vec4<f32>(global0.x, global0.x, -1626f, global0.x)))));
    var_0 = Struct_3(~vec4<i32>(-global3[_wgslsmith_index_u32(1u, 19u)], firstTrailingBit(global3[_wgslsmith_index_u32(13667u, 19u)]), _wgslsmith_div_i32(-13094i, global3[_wgslsmith_index_u32(29736u, 19u)]), u_input.a.x) << (_wgslsmith_mult_vec4_u32(max(select(vec4<u32>(0u, 0u, 3520u, 1u), vec4<u32>(306u, 52605u, 50030u, 38537u), true), vec4<u32>(4294967295u, 6889u, 10417u, 0u)), vec4<u32>(11971u, 18704u, ~50870u, 1u << (1u % 32u))) % vec4<u32>(32u)));
    var_0 = Struct_3(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(0u), countOneBits(-2147483647i), var_0.a.x);
}

