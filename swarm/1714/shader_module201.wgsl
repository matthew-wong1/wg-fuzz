struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: vec3<i32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: vec4<bool>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(0u, 0u, 1u, 77614u), vec4<u32>(30027u, 0u, 6166u, 4517u), vec4<u32>(4294967295u, 4294967295u, 1u, 39683u), vec4<u32>(94806u, 23343u, 35617u, 1u), vec4<u32>(1u, 9483u, 7596u, 15407u), vec4<u32>(107883u, 7716u, 50560u, 61858u), vec4<u32>(0u, 1u, 71479u, 105948u), vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<u32>(4294967295u, 20385u, 0u, 3373u), vec4<u32>(4294967295u, 26575u, 4294967295u, 2177u), vec4<u32>(1u, 11020u, 1u, 1u), vec4<u32>(23862u, 0u, 65284u, 30009u), vec4<u32>(84361u, 34078u, 23038u, 0u), vec4<u32>(1u, 47457u, 0u, 0u), vec4<u32>(4294967295u, 1u, 1u, 0u), vec4<u32>(1u, 0u, 1u, 59633u));

var<private> global1: array<u32, 2>;

var<private> global2: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec2<i32> {
    var var_0 = !(!(!select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), vec3<bool>(false, false, true))));
    return u_input.b.ww;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> vec4<bool> {
    global0 = array<vec4<u32>, 16>();
    let var_0 = _wgslsmith_sub_i32(countOneBits(-_wgslsmith_clamp_i32(u_input.a.x & u_input.a.x, ~arg_1.x, u_input.b.x)), 14591i);
    global2 = any(arg_0.a);
    global2 = false;
    let var_1 = Struct_3(true, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(317f, _wgslsmith_f_op_f32(max(-152f, 677f))))), arg_0.b)), vec4<bool>(_wgslsmith_div_i32(select(-17443i, u_input.b.x, arg_0.a.x), ~2147483647i) != var_0, (true | arg_0.a.x) & !all(vec2<bool>(true, false)), !(true & arg_0.b), all(vec3<bool>(!arg_0.b, arg_0.b, global1[_wgslsmith_index_u32(52712u, 2u)] >= global1[_wgslsmith_index_u32(23617u, 2u)]))), true, select(u_input.a.x, 0i, all(!(!vec3<bool>(arg_0.b, false, true)))));
    return var_1.c;
}

fn func_2() -> Struct_2 {
    let var_0 = select(select(!vec4<bool>(all(vec3<bool>(true, true, true)), true, true, true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), true), false), select(u_input.a.x <= u_input.b.x, true, true) || true), vec4<bool>(!all(vec3<bool>(true, true, false)), !all(vec3<bool>(true, true, true)), true, false), select(func_4(Struct_1(vec3<bool>(false, true, true), u_input.a.x < 36402i), func_3()), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false))))));
    global2 = !var_0.x;
    global0 = array<vec4<u32>, 16>();
    var var_1 = reverseBits(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(min(0u, 754u), 2u)], 2u)] ^ reverseBits(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39780u, 2u)], 2u)])), 16u)] | (global0[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 2u)], 2u)], 2u)], 2u)], 33921u, false) & 27359u, 16u)] << (firstTrailingBit(global0[_wgslsmith_index_u32(0u, 16u)]) % vec4<u32>(32u))));
    global1 = array<u32, 2>();
    return Struct_2(var_0.x, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-175f - 838f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-2198f, -673f, false)), _wgslsmith_f_op_f32(f32(-1f) * -324f)), 2446f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-197f * 1201f), _wgslsmith_f_op_f32(round(-132f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(601f, 677f, -1098f, -1215f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(619f, -1294f, 937f, 1424f)))))), vec3<i32>(abs(u_input.a.x), firstTrailingBit(func_3().x), u_input.a.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 51916u), 2u)], max(1u, 26926u), var_1.x), ~var_1.wzz), reverseBits(1u)), Struct_1(var_0.xwx, var_0.x));
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(abs(~vec2<u32>(69094u, 86999u))) >> (firstLeadingBit(vec2<u32>(~71032u, 1u)) % vec2<u32>(32u)), ~vec2<u32>(~1u, countOneBits(~global1[_wgslsmith_index_u32(1u, 2u)]))), 2u)], 2u)];
    global1 = array<u32, 2>();
    let var_1 = !(!vec4<bool>(true, arg_0, arg_0, arg_0));
    global0 = array<vec4<u32>, 16>();
    var var_2 = func_2();
    return 1u;
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_2) -> Struct_3 {
    let var_0 = u_input.a.xwy;
    let var_1 = arg_2.d;
    var var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(max(-1i, u_input.b.x), max(~arg_2.c.x, 1i) ^ -var_0.x, ~_wgslsmith_mult_i32(-1i, i32(-1i) * -23781i), var_0.x), vec4<i32>(var_0.x, -1i, -u_input.b.x, _wgslsmith_add_i32(0i, -44268i) << (global1[_wgslsmith_index_u32(1u, 2u)] % 32u)));
    let var_3 = ~(-1807i);
    var var_4 = Struct_1(func_2().e.a, !all(vec3<bool>(false, false, arg_1)) || false);
    return Struct_3(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 2u)], 2u)] >= ~((global1[_wgslsmith_index_u32(4294967295u, 2u)] | 11818u) << (countOneBits(0u) % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_2.b.zz, arg_2.b.yx)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-659f, _wgslsmith_f_op_f32(arg_2.b.x - 840f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, -823f))))), !select(vec4<bool>(!arg_2.a, false, func_4(arg_2.e, vec2<i32>(1i, var_0.x)).x, true & arg_2.a), !vec4<bool>(arg_2.e.a.x, arg_1, false, var_4.b), true), all(!(!(!vec4<bool>(false, arg_2.a, arg_1, true)))), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i) << (countOneBits(~vec2<u32>(4294967295u, arg_2.d)) % vec2<u32>(32u)), func_2().c.xx ^ (u_input.b.zz << (_wgslsmith_add_vec2_u32(vec2<u32>(var_1, 10336u), vec2<u32>(var_1, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37649u, 2u)], 2u)])) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let var_1 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(156f * 667f)) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(398f, -1071f), _wgslsmith_f_op_f32(876f + 169f)))) * -767f), !select(true, false, true), Struct_2(any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(650f + 1000f), _wgslsmith_f_op_f32(round(-1153f)), _wgslsmith_f_op_f32(sign(370f)), _wgslsmith_f_op_f32(f32(-1f) * -469f)))), vec3<i32>(1i, 1i, 1i), ~func_1(true), Struct_1(vec3<bool>(true, any(vec4<bool>(false, true, false, false)), func_2().e.b), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(83160u, 2u)], 2u)], 2u)], 2u)] <= global1[_wgslsmith_index_u32(~30077u, 2u)])));
    let var_2 = _wgslsmith_mult_u32(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(select(global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(54362u | global1[_wgslsmith_index_u32(72312u, 2u)], 2u)], var_1.d), 59191u), 2u)], 2u)]);
    var_0 = u_input.b;
    var var_3 = ~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_2, var_2, 44736u) & vec3<u32>(50016u, 38224u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], 2u)]), abs(vec3<u32>(14878u, 24745u, 4294967295u))) ^ min(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(var_2, 2u)], 4294967295u, var_2), vec3<u32>(var_2, 4153u, 1u), vec3<u32>(global1[_wgslsmith_index_u32(54073u, 2u)], var_2, 0u)), ~vec3<u32>(0u, 27435u, 1u)), vec3<u32>(func_2().d, _wgslsmith_mult_u32(var_2, 75408u), var_2) & firstTrailingBit(~vec3<u32>(var_2, 4294967295u, 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(51068u, _wgslsmith_div_vec2_u32(countOneBits(var_3.xx), var_3.xz));
}

