struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(false, false, false, false, false, false, false, true);

var<private> global1: Struct_2 = Struct_2(Struct_1(false, vec2<u32>(0u, 1699u), -3081f, -217f, vec4<i32>(2147483647i, i32(-2147483648), -34674i, 673i)));

var<private> global2: Struct_2;

var<private> global3: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(false, vec2<u32>(1u, 4294967295u), 469f, 1797f, vec4<i32>(-1i, 2147483647i, -18873i, -21896i)), Struct_1(false, vec2<u32>(1u, 15505u), -182f, -392f, vec4<i32>(i32(-2147483648), 31848i, -1i, -6068i)), Struct_1(true, vec2<u32>(0u, 67310u), -1000f, 219f, vec4<i32>(-35165i, 0i, i32(-2147483648), 1i)), Struct_1(false, vec2<u32>(1u, 1u), -1000f, 1000f, vec4<i32>(2147483647i, 30712i, -1i, 0i)), Struct_1(false, vec2<u32>(0u, 21912u), 993f, 188f, vec4<i32>(80457i, -15851i, -526i, 22664i)), Struct_1(false, vec2<u32>(1u, 40544u), -1000f, 1431f, vec4<i32>(-11121i, 1i, 26962i, 2147483647i)));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = global3[_wgslsmith_index_u32(global2.a.b.x, 6u)];
    global1 = Struct_2(global1.a);
    global0 = array<bool, 8>();
    var var_1 = Struct_1(!(var_0.a & any(!vec4<bool>(true, false, arg_0.a, global2.a.a))), firstTrailingBit(vec2<u32>(firstTrailingBit(~arg_0.b.x), ~global2.a.b.x)), -1030f, var_0.c, vec4<i32>(~arg_0.e.x, 1i, 2147483647i, 13494i));
    var_0 = Struct_1(false, _wgslsmith_sub_vec2_u32(min(vec2<u32>(~69644u, var_1.b.x), _wgslsmith_clamp_vec2_u32(~vec2<u32>(91371u, 16174u), vec2<u32>(global1.a.b.x, 4294967295u), reverseBits(var_1.b))), reverseBits(u_input.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_0.d)), var_0.d)))), arg_0.d, arg_0.e);
    return min(var_0.e, vec4<i32>(var_0.e.x, 65666i, ~arg_0.e.x | ~var_1.e.x, 1i) & _wgslsmith_sub_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -4281i, 64414i, var_0.e.x), vec4<i32>(var_1.e.x, -17457i, var_0.e.x, var_1.e.x)), select(~global1.a.e, ~var_0.e, !global2.a.a)));
}

fn func_2() -> Struct_1 {
    var var_0 = 2147483647i;
    var var_1 = -457f;
    global2 = Struct_2(Struct_1(true, u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(496f, 668f)), _wgslsmith_f_op_f32(ceil(503f))), 635f, -func_3(Struct_1(false, global1.a.b, -561f, global2.a.d, global1.a.e))));
    var var_2 = vec4<f32>(1395f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.a.d))), global1.a.d, 417f);
    var var_3 = Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, 0i), vec2<i32>(2147483647i, global2.a.e.x)) <= -29002i, u_input.a, var_2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(floor(-775f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_2.x))), global2.a.e));
    return Struct_1(true, ~vec2<u32>(~u_input.a.x, var_3.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1459f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-134f, var_3.a.c, var_3.a.a)))))), global2.a.c, vec4<i32>(-12219i, 21663i, (i32(-1i) * -57569i) | (func_3(global3[_wgslsmith_index_u32(var_3.a.b.x, 6u)]).x ^ min(var_3.a.e.x, global1.a.e.x)), 3289i));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = vec3<u32>(21627u, abs(~global1.a.b.x), _wgslsmith_clamp_u32(arg_2.x, 700u, 59528u));
    let var_1 = Struct_2(arg_1);
    global3 = array<Struct_1, 6>();
    global3 = array<Struct_1, 6>();
    var var_2 = 1000f;
    return var_1;
}

fn func_1(arg_0: bool) -> vec3<bool> {
    global0 = array<bool, 8>();
    let var_0 = func_4(!(!global0[_wgslsmith_index_u32(global1.a.b.x, 8u)]), func_2(), ~vec4<u32>(firstLeadingBit(~4294967295u), 0u, 30082u, u_input.a.x));
    let var_1 = func_2();
    let var_2 = any(!select(select(select(vec4<bool>(true, true, global2.a.a, true), vec4<bool>(arg_0, arg_0, global1.a.a, global2.a.a), false), !vec4<bool>(global1.a.a, true, var_1.a, global2.a.a), true), vec4<bool>(true, global1.a.a, select(false, global1.a.a, false), any(vec4<bool>(false, global2.a.a, false, global2.a.a))), !(!vec4<bool>(true, global2.a.a, false, global1.a.a))));
    var var_3 = _wgslsmith_clamp_vec2_u32(~global1.a.b, vec2<u32>(_wgslsmith_dot_vec2_u32(var_1.b, vec2<u32>(49427u, global2.a.b.x)) | select(u_input.a.x, var_1.b.x, var_2), _wgslsmith_clamp_u32(~4294967295u, global2.a.b.x, var_0.a.b.x)), ~(vec2<u32>(u_input.a.x, 20323u) | vec2<u32>(var_1.b.x, var_0.a.b.x)) >> (((vec2<u32>(4294967295u, var_1.b.x) ^ vec2<u32>(1u, global2.a.b.x)) ^ ~var_0.a.b) % vec2<u32>(32u))) & vec2<u32>(_wgslsmith_sub_u32(~(~global2.a.b.x), reverseBits(54201u)), countOneBits(6937u));
    return select(vec3<bool>(true, any(!(!vec3<bool>(global0[_wgslsmith_index_u32(76313u, 8u)], var_0.a.a, var_0.a.a))), ~(1u << (var_1.b.x % 32u)) == _wgslsmith_sub_u32(~10738u, global1.a.b.x)), vec3<bool>(true, var_3.x >= _wgslsmith_sub_u32(func_4(true, global3[_wgslsmith_index_u32(4294967295u, 6u)], vec4<u32>(0u, global2.a.b.x, 0u, 4294967295u)).a.b.x, u_input.a.x), -(~global2.a.e.x) < -func_3(Struct_1(false, global2.a.b, 790f, -194f, vec4<i32>(-1i, var_0.a.e.x, -54286i, var_1.e.x))).x), !(!select(!vec3<bool>(true, var_1.a, true), select(vec3<bool>(arg_0, global1.a.a, global2.a.a), vec3<bool>(false, var_2, arg_0), var_1.a), !vec3<bool>(global1.a.a, global2.a.a, true))));
}

fn func_5(arg_0: vec3<bool>, arg_1: bool, arg_2: i32, arg_3: vec2<bool>) -> Struct_1 {
    global0 = array<bool, 8>();
    global3 = array<Struct_1, 6>();
    global2 = Struct_2(Struct_1(!(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global1.a.e.x), vec2<i32>(global1.a.e.x, 0i)) <= global2.a.e.x), _wgslsmith_div_vec2_u32(global1.a.b, ~vec2<u32>(global1.a.b.x, 28574u) >> (vec2<u32>(24270u, 42758u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.c) + global1.a.d), func_4(func_4(true, global3[_wgslsmith_index_u32(global2.a.b.x, 6u)], vec4<u32>(58909u, 0u, global2.a.b.x, u_input.a.x) >> (vec4<u32>(global1.a.b.x, 0u, 1u, global2.a.b.x) % vec4<u32>(32u))).a.a, func_2(), ~max(vec4<u32>(4294967295u, global2.a.b.x, 0u, global1.a.b.x), vec4<u32>(14184u, 13910u, 41143u, u_input.a.x))).a.d, global2.a.e));
    let var_0 = Struct_2(Struct_1(all(vec2<bool>(true, false)), _wgslsmith_clamp_vec2_u32((u_input.a ^ vec2<u32>(32056u, u_input.a.x)) & vec2<u32>(global2.a.b.x, global1.a.b.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(global2.a.b.x, u_input.a.x), ~u_input.a, vec2<u32>(global1.a.b.x, global2.a.b.x)), max(reverseBits(global1.a.b), select(global1.a.b, u_input.a, global1.a.a))), -813f, -1000f, global2.a.e));
    let var_1 = select(select(select(select(select(vec4<bool>(false, var_0.a.a, global2.a.a, global2.a.a), vec4<bool>(false, false, true, true), vec4<bool>(true, global0[_wgslsmith_index_u32(31131u, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], arg_1)), vec4<bool>(false, arg_0.x, arg_1, true), select(vec4<bool>(true, global2.a.a, global0[_wgslsmith_index_u32(66398u, 8u)], false), vec4<bool>(false, arg_3.x, global1.a.a, false), true)), vec4<bool>(arg_1, !arg_1, true, true), select(vec4<bool>(global0[_wgslsmith_index_u32(60529u, 8u)], true, var_0.a.a, global0[_wgslsmith_index_u32(var_0.a.b.x, 8u)]), vec4<bool>(false, global1.a.a, var_0.a.a, false), true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.a.a, false, false, true), vec4<bool>(false, true, arg_3.x, arg_1), select(vec4<bool>(false, global0[_wgslsmith_index_u32(106733u, 8u)], false, global2.a.a), vec4<bool>(false, false, arg_1, var_0.a.a), vec4<bool>(false, false, global2.a.a, true))), false), true), vec4<bool>(func_2().a, true && (!arg_0.x == false), true, _wgslsmith_sub_i32(func_2().e.x, ~(-2147483647i)) > global1.a.e.x), global2.a.a);
    return global2.a;
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = ~max(min(arg_1.e.zzz, vec3<i32>(global2.a.e.x, -18611i, global2.a.e.x) & (global1.a.e.wxw & vec3<i32>(-440i, arg_0.x, -2147483647i))), vec3<i32>(func_2().e.x, min(_wgslsmith_add_i32(global1.a.e.x, 2147483647i), _wgslsmith_sub_i32(global2.a.e.x, global2.a.e.x)), global2.a.e.x));
    global1 = Struct_2(Struct_1(false, vec2<u32>(global2.a.b.x >> (70403u % 32u), ~(0u >> (global2.a.b.x % 32u))), _wgslsmith_f_op_f32(1000f - arg_1.c), global2.a.c, ~global1.a.e << (reverseBits(vec4<u32>(global1.a.b.x, u_input.a.x, 40051u, global2.a.b.x)) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_f_op_f32(sign(global2.a.d));
    global2 = Struct_2(arg_1);
    var var_2 = func_4(func_1(true).x, func_2(), ~countOneBits(~select(vec4<u32>(6203u, 24580u, 41971u, global2.a.b.x), vec4<u32>(arg_2.x, global2.a.b.x, global2.a.b.x, arg_2.x), vec4<bool>(global2.a.a, global0[_wgslsmith_index_u32(arg_2.x, 8u)], arg_1.a, global0[_wgslsmith_index_u32(u_input.a.x, 8u)])))).a;
    return Struct_2(global3[_wgslsmith_index_u32(1u, 6u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(global2.a.e & _wgslsmith_mod_vec4_i32(abs(vec4<i32>(global2.a.e.x, global2.a.e.x, 1i, global1.a.e.x)) | (global2.a.e >> (vec4<u32>(global2.a.b.x, global1.a.b.x, global1.a.b.x, global1.a.b.x) % vec4<u32>(32u))), global2.a.e), func_5(select(!vec3<bool>(true, global1.a.a, global1.a.a), func_1(false), func_4(global0[_wgslsmith_index_u32(~49870u, 8u)], Struct_1(global1.a.a, global2.a.b, 1000f, 172f, global2.a.e), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, global1.a.b.x, u_input.a.x), vec4<u32>(global2.a.b.x, 31963u, global1.a.b.x, global2.a.b.x), vec4<u32>(1u, global2.a.b.x, global2.a.b.x, global2.a.b.x))).a.a), func_2().a, ~(global1.a.e.x >> (global2.a.b.x % 32u)) << (global2.a.b.x % 32u), select(select(vec2<bool>(true, false), vec2<bool>(true, global2.a.a), global1.a.a), vec2<bool>(all(vec2<bool>(global2.a.a, true)), 0i == global1.a.e.x), global2.a.a)), vec2<u32>(func_4(global1.a.a, Struct_1(global2.a.a, ~vec2<u32>(50554u, u_input.a.x), global1.a.c, _wgslsmith_f_op_f32(312f * global1.a.c), -global1.a.e), ~firstLeadingBit(vec4<u32>(8265u, global1.a.b.x, global1.a.b.x, global2.a.b.x))).a.b.x, global2.a.b.x));
    var var_1 = vec2<bool>(func_6(abs(vec4<i32>(global1.a.e.x, -6473i, var_0.a.e.x, global2.a.e.x)), func_2(), select(max(u_input.a, vec2<u32>(global2.a.b.x, 26528u)), ~vec2<u32>(var_0.a.b.x, 0u), !global2.a.a)).a.a || false, true);
    global1 = Struct_2(func_2());
    let var_2 = func_3(func_4(func_6(-func_6(vec4<i32>(global1.a.e.x, global2.a.e.x, 0i, global1.a.e.x), Struct_1(global1.a.a, vec2<u32>(42402u, u_input.a.x), -1380f, 1023f, vec4<i32>(4666i, 35258i, -1i, var_0.a.e.x)), u_input.a).a.e, global1.a, ~(~global1.a.b)).a.a, func_5(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 8u)], true, var_0.a.a), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(35721u, 19129u, var_0.a.b.x), ~vec3<u32>(0u, 4294967295u, 0u)), 8u)], global2.a.e.x, !select(vec2<bool>(false, true), vec2<bool>(var_0.a.a, global2.a.a), true)), vec4<u32>(~(~var_0.a.b.x), ~0u, ~_wgslsmith_div_u32(global2.a.b.x, 16804u), global2.a.b.x)).a).x;
    let var_3 = vec2<u32>(u_input.a.x, u_input.a.x);
    var var_4 = func_4(global1.a.a, func_5(!(!vec3<bool>(global2.a.a, global0[_wgslsmith_index_u32(0u, 8u)], global1.a.a)), global0[_wgslsmith_index_u32(global2.a.b.x, 8u)], global1.a.e.x, vec2<bool>(any(vec2<bool>(var_1.x, var_0.a.a)), any(vec3<bool>(false, var_1.x, var_1.x)))), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.a.b.x, var_3.x, 1u, global2.a.b.x) | vec4<u32>(22844u, var_3.x, var_0.a.b.x, 70780u), ~vec4<u32>(global1.a.b.x, 1u, 4294967295u, 2041u)), vec4<u32>(u_input.a.x, ~4294967295u, var_3.x, _wgslsmith_add_u32(u_input.a.x, var_3.x)))).a.e.x & (_wgslsmith_sub_i32(-1i, func_6(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, global2.a.e.x, -1222i, var_0.a.e.x), vec4<i32>(global2.a.e.x, var_2, var_2, 0i)), global2.a, u_input.a).a.e.x) ^ (var_2 >> ((~0u >> (~global2.a.b.x % 32u)) % 32u)));
    var var_5 = Struct_1(true, ~global2.a.b, -262f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(876f - _wgslsmith_f_op_f32(ceil(global1.a.c))))), var_0.a.d)), global2.a.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_5.c, global1.a.c, var_0.a.d))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.d, -2299f, -848f))))), vec3<f32>(_wgslsmith_f_op_f32(-var_5.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(287f * var_5.c)), 366f)), var_5.e.x);
}

