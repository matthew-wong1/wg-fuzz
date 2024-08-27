struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: f32,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19> = array<i32, 19>(1i, 9490i, -1i, 46612i, 1i, 2147483647i, 1i, 2147483647i, -25289i, 0i, i32(-2147483648), 36963i, -16029i, 2147483647i, 0i, i32(-2147483648), 14870i, 20989i, 1i);

var<private> global1: array<i32, 9> = array<i32, 9>(31110i, i32(-2147483648), 2147483647i, -22222i, -40724i, 2147483647i, 2147483647i, 18637i, -1i);

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<u32>(4294967295u, 48490u, 0u, 1u)), Struct_1(vec4<u32>(4294967295u, 62239u, 61274u, 29685u)), Struct_1(vec4<u32>(1u, 1u, 1u, 4294967295u)), Struct_1(vec4<u32>(48871u, 95156u, 0u, 60820u)), Struct_1(vec4<u32>(4294967295u, 45547u, 85060u, 0u)), Struct_1(vec4<u32>(1u, 1u, 103352u, 0u)));

var<private> global3: i32 = -1i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool) -> vec4<u32> {
    return vec4<u32>(~(arg_0.x << (arg_0.x % 32u)), u_input.a ^ u_input.a, u_input.a, arg_0.x);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> f32 {
    var var_0 = select(_wgslsmith_sub_vec4_u32(~(~(arg_1.a >> (vec4<u32>(0u, u_input.a, arg_2, 4294967295u) % vec4<u32>(32u)))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a, 11078u, 84373u), arg_1.a))), _wgslsmith_add_vec4_u32(func_2((vec4<u32>(arg_1.a.x, arg_1.a.x, 26297u, 77622u) | arg_1.a) << (arg_1.a % vec4<u32>(32u)), ~global1[_wgslsmith_index_u32(u_input.a, 9u)] >= select(-5175i, 49319i, true)), vec4<u32>(~(~arg_2), 38196u, u_input.a, _wgslsmith_sub_u32(7834u, 336u) << (arg_1.a.x % 32u))), select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, arg_1.a.x >= u_input.a, true), false), !select(true, all(vec4<bool>(false, false, true, true)), false)));
    var var_1 = Struct_1(vec4<u32>(firstTrailingBit(abs(~0u)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~6052u, _wgslsmith_clamp_u32(8190u, arg_2, 0u), arg_2), ~1u), 0u, _wgslsmith_sub_u32(firstLeadingBit(4294967295u), var_0.x) << (~select(25321u, 1u, false) % 32u)));
    var var_2 = vec4<u32>((var_0.x ^ firstTrailingBit(countOneBits(5046u))) << (reverseBits(~func_2(vec4<u32>(4294967295u, 0u, u_input.a, 1u), true).x) % 32u), 0u, countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, arg_2), _wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, var_0.x), ~vec2<u32>(35048u, u_input.a)))), 75938u);
    global3 = 0i >> (arg_1.a.x % 32u);
    global1 = array<i32, 9>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-175f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(exp2(arg_0)))))));
}

fn func_1() -> Struct_5 {
    let var_0 = Struct_1(~(~countOneBits(func_2(vec4<u32>(9037u, 16429u, 92725u, u_input.a), false))));
    var var_1 = vec3<u32>(~(0u | _wgslsmith_mod_u32(4294967295u >> (u_input.a % 32u), 1u)), 19351u | u_input.a, 1u);
    let var_2 = Struct_2(Struct_1(select(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, 9058u, 21085u) | vec4<u32>(var_0.a.x, 19131u, 0u, 21620u), var_0.a), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, var_0.a.x, var_0.a.x, var_1.x) ^ vec4<u32>(var_1.x, 73223u, var_1.x, var_0.a.x), firstLeadingBit(var_0.a)), true)));
    var var_3 = Struct_5(_wgslsmith_f_op_f32(func_3(1067f, Struct_1(min(var_0.a, var_2.a.a)), 60022u >> (abs(0u) % 32u), abs(0i >> (u_input.a % 32u)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f * 235f)))), global1[_wgslsmith_index_u32(u_input.a, 9u)], _wgslsmith_f_op_f32(f32(-1f) * -2226f), vec3<bool>(all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), 100152u < u_input.a)), false, select(true, all(vec3<bool>(true, true, true)), false)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(292f * 719f), _wgslsmith_f_op_f32(-1193f * -1347f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 758f));
    let var_4 = _wgslsmith_mult_vec3_i32(select(_wgslsmith_sub_vec3_i32(-firstLeadingBit(vec3<i32>(global0[_wgslsmith_index_u32(var_0.a.x, 19u)], global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(var_0.a.x, 9u)])), vec3<i32>(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 1i), ~1i, 4456i ^ global0[_wgslsmith_index_u32(var_0.a.x, 19u)])), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(global1[_wgslsmith_index_u32(var_2.a.a.x, 9u)], -2147483647i, global0[_wgslsmith_index_u32(var_0.a.x, 19u)])), ~vec3<i32>(-24546i, global1[_wgslsmith_index_u32(62148u, 9u)], global0[_wgslsmith_index_u32(var_1.x, 19u)])), vec3<i32>(-4897i, 1i, global1[_wgslsmith_index_u32(~1u, 9u)])), !select(select(vec3<bool>(false, false, false), vec3<bool>(var_3.a, var_3.d.x, true), var_3.d), select(var_3.d, var_3.d, var_3.d.x), select(vec3<bool>(true, var_3.d.x, var_3.d.x), var_3.d, var_3.d))), -((~vec3<i32>(var_3.b, global0[_wgslsmith_index_u32(var_2.a.a.x, 19u)], global1[_wgslsmith_index_u32(17003u, 9u)]) >> (countOneBits(var_0.a.yyx) % vec3<u32>(32u))) << (~abs(var_2.a.a.yxy) % vec3<u32>(32u))));
    return Struct_5(var_3.a, min(-1i, global0[_wgslsmith_index_u32(countOneBits(60215u), 19u)]), var_3.e.x, !var_3.d, _wgslsmith_f_op_vec3_f32(step(var_3.e, _wgslsmith_f_op_vec3_f32(vec3<f32>(1024f, _wgslsmith_f_op_f32(-var_3.e.x), 500f) * _wgslsmith_f_op_vec3_f32(-var_3.e)))));
}

fn func_4(arg_0: f32, arg_1: Struct_5, arg_2: vec3<u32>, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_2.x, u_input.a, arg_2.x, 0u), ~vec4<u32>(12947u, 47676u, u_input.a, 4294967295u))));
    let var_1 = arg_1;
    var var_2 = global2[_wgslsmith_index_u32(7066u, 6u)];
    var_2 = global2[_wgslsmith_index_u32(abs(~abs(22184u)), 6u)];
    global2 = array<Struct_1, 6>();
    return global2[_wgslsmith_index_u32(3185u, 6u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    global3 = _wgslsmith_add_i32(-(~(-1i)), -2147483647i);
    var var_1 = Struct_2(func_4(_wgslsmith_f_op_f32(362f - -559f), func_1(), _wgslsmith_mult_vec3_u32(max(~vec3<u32>(u_input.a, u_input.a, 27719u), ~vec3<u32>(13663u, u_input.a, u_input.a)), vec3<u32>(0u, 0u, u_input.a) >> ((vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, 1u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))), vec4<f32>(-1809f, -101f, _wgslsmith_div_f32(-1101f, _wgslsmith_f_op_f32(f32(-1f) * -1709f)), func_1().e.x)));
    let var_2 = Struct_3(~u_input.a, select(~max(-vec2<i32>(20550i, global0[_wgslsmith_index_u32(var_1.a.a.x, 19u)]), vec2<i32>(global1[_wgslsmith_index_u32(var_1.a.a.x, 9u)], 18072i)), ~vec2<i32>(global0[_wgslsmith_index_u32(~u_input.a, 19u)], countOneBits(29375i)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), 76347u);
    global1 = array<i32, 9>();
    var_0 = ~(~31547u);
    var var_3 = Struct_4(vec3<i32>(global0[_wgslsmith_index_u32(0u, 19u)], 18333i, ~global0[_wgslsmith_index_u32((u_input.a >> (u_input.a % 32u)) & 1u, 19u)]), _wgslsmith_sub_i32(_wgslsmith_mult_i32(func_1().b, global0[_wgslsmith_index_u32(u_input.a, 19u)]), global1[_wgslsmith_index_u32(firstLeadingBit(~u_input.a), 9u)]));
    global3 = -23142i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-min(countOneBits(global1[_wgslsmith_index_u32(var_2.c, 9u)]), abs(global1[_wgslsmith_index_u32(1u, 9u)])), global0[_wgslsmith_index_u32(0u, 19u)]), min(2147483647i, -global0[_wgslsmith_index_u32(~u_input.a, 19u)]) & 2147483647i);
}

