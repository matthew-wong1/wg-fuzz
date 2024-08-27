struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2;

var<private> global2: i32;

var<private> global3: array<i32, 18> = array<i32, 18>(2147483647i, 0i, 19052i, 16287i, 2147483647i, 21647i, -7033i, -1i, i32(-2147483648), -37607i, 1i, 2147483647i, 1i, 9802i, i32(-2147483648), -718i, -16091i, i32(-2147483648));

var<private> global4: vec3<i32> = vec3<i32>(-1i, -2173i, 2147483647i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = vec3<bool>(true, true, true);
    var var_1 = arg_2.a.x;
    global4 = abs(reverseBits(global1.a.b << ((_wgslsmith_clamp_vec3_u32(global1.e, vec3<u32>(global1.a.a.x, 13754u, arg_2.a.x), vec3<u32>(arg_1.a.x, global1.e.x, 41527u)) & _wgslsmith_add_vec3_u32(global1.e, vec3<u32>(arg_2.a.x, arg_2.a.x, 92634u))) % vec3<u32>(32u))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(774f)) - global1.d.x));
    global4 = -global1.a.b;
    return -36747i <= arg_2.b.x;
}

fn func_3(arg_0: bool) -> vec2<f32> {
    global1 = Struct_2(global1.a, ~36195u, firstTrailingBit(-69412i) >> (_wgslsmith_div_u32(_wgslsmith_mult_u32(firstTrailingBit(47222u), ~global1.b), global1.b) % 32u), vec2<f32>(413f, 1320f), ~(~(~vec3<u32>(27514u, global1.e.x, global1.e.x))));
    global3 = array<i32, 18>();
    global1 = Struct_2(Struct_1(firstTrailingBit(vec2<u32>(0u, global1.e.x)) | global1.a.a, select(global1.a.b, vec3<i32>(global1.a.b.x, i32(-1i) * -1i, 0i), vec3<bool>(arg_0, true, arg_0 && true))), global1.b, _wgslsmith_dot_vec3_i32(max(firstTrailingBit(vec3<i32>(global4.x, -1i, -36831i)), vec3<i32>(select(-2147483647i, u_input.a.x, arg_0), -1i, global4.x)), vec3<i32>(-2147483647i, -(u_input.a.x >> (global1.b % 32u)), abs(global3[_wgslsmith_index_u32(global1.a.a.x, 18u)]) | (-1i ^ global1.a.b.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.d, vec2<f32>(global1.d.x, -2238f)) + global1.d))))), abs(min(vec3<u32>(28327u, 4294967295u, global1.b), ~vec3<u32>(global1.e.x, 4294967295u, global1.b))) >> (~(~_wgslsmith_add_vec3_u32(vec3<u32>(global1.e.x, global1.a.a.x, 4294967295u), global1.e)) % vec3<u32>(32u)));
    return _wgslsmith_f_op_vec2_f32(-global1.d);
}

fn func_2(arg_0: f32, arg_1: Struct_5) -> Struct_2 {
    let var_0 = Struct_4(Struct_2(Struct_1(~global1.e.xx, -vec3<i32>(-81004i, 12536i, -11268i) ^ u_input.a.xwx), ~global1.a.a.x, global4.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(all(vec4<bool>(false, false, false, true)))) + vec2<f32>(_wgslsmith_f_op_f32(select(-1452f, -216f, arg_1.a.x)), _wgslsmith_f_op_f32(global1.d.x + 600f))), global1.e), _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(countOneBits(0u), 1u, _wgslsmith_add_u32(global1.e.x, global1.e.x))), vec3<u32>(global1.e.x, _wgslsmith_dot_vec3_u32(global1.e, ~vec3<u32>(global1.e.x, global1.a.a.x, 4294967295u)), ~(1u >> (global1.e.x % 32u))), vec3<u32>(28104u | global1.a.a.x, 4294967295u, _wgslsmith_mod_u32(global1.b, 1u) >> (global1.a.a.x % 32u))));
    var var_1 = _wgslsmith_div_vec3_i32(u_input.a.www, vec3<i32>(-5514i, -_wgslsmith_dot_vec3_i32(global1.a.b, vec3<i32>(var_0.a.a.b.x, global3[_wgslsmith_index_u32(var_0.b.x, 18u)], global3[_wgslsmith_index_u32(0u, 18u)])), reverseBits(~global4.x))) & vec3<i32>(global1.c, _wgslsmith_clamp_i32(~var_0.a.c, 0i, abs(var_0.a.c)) & -18853i, u_input.a.x);
    let var_2 = Struct_5(vec3<bool>(true, arg_1.a.x, false), global1.d.x, firstLeadingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(6946i, 1i, 0i), vec3<i32>(global1.c, global3[_wgslsmith_index_u32(global1.e.x, 18u)], global4.x)) | vec3<i32>(39054i, 0i, 0i), vec3<i32>(_wgslsmith_dot_vec2_i32(var_1.yz, arg_1.c.xz), 1i, _wgslsmith_mult_i32(u_input.a.x, 11982i)))), var_0.a.d);
    global1 = Struct_2(Struct_1(min(select(vec2<u32>(5179u, 76173u) | global1.a.a, global1.e.xy, any(vec3<bool>(var_2.a.x, false, var_2.a.x))), select(firstTrailingBit(global1.e.yy), countOneBits(global1.e.xz), var_2.a.x)), vec3<i32>(2147483647i, ~(global4.x ^ 2147483647i), u_input.a.x << ((var_0.b.x ^ var_0.b.x) % 32u))), ~firstLeadingBit(~(~48213u)), ~(-global3[_wgslsmith_index_u32(global1.e.x, 18u)]), vec2<f32>(global1.d.x, _wgslsmith_f_op_f32(-global1.d.x)), ~reverseBits(~vec3<u32>(global1.e.x, 0u, 0u)));
    let var_3 = _wgslsmith_f_op_f32(722f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) * _wgslsmith_f_op_vec2_f32(func_3(false)).x))))));
    return Struct_2(var_0.a.a, 4294967295u, var_0.a.c, _wgslsmith_f_op_vec2_f32(func_3(true)), vec3<u32>(global1.a.a.x, ~global1.b, ~((global1.b | 51626u) >> (~31140u % 32u))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_4 {
    return Struct_4(Struct_2(func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.d.x, arg_1.d.x) * _wgslsmith_f_op_f32(global1.d.x + 1000f)), Struct_5(arg_0.xzy, _wgslsmith_f_op_f32(-global1.d.x), vec3<i32>(arg_1.c, u_input.a.x, 2147483647i), _wgslsmith_div_vec2_f32(vec2<f32>(-363f, -498f), vec2<f32>(global1.d.x, 1000f)))).a, 794u, 0i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-920f, global1.d.x), _wgslsmith_f_op_vec2_f32(-global1.d))) * arg_1.d), abs(reverseBits(vec3<u32>(30848u, 17219u, global1.e.x))) | global1.e), ~(~_wgslsmith_div_vec3_u32(select(vec3<u32>(global1.a.a.x, global1.b, 5787u), vec3<u32>(6565u, 0u, arg_1.e.x), arg_0.www), _wgslsmith_mod_vec3_u32(global1.e, vec3<u32>(46542u, 4294967295u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global4.x, Struct_1(global1.a.a, _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, ~global4.x, _wgslsmith_sub_i32(0i, -36780i)), global1.a.b)), Struct_1(firstTrailingBit(~global1.e.yz), -_wgslsmith_mult_vec3_i32(-global1.a.b, ~vec3<i32>(global1.a.b.x, 1i, -7617i))));
    let var_1 = !vec2<bool>(!(global3[_wgslsmith_index_u32(firstLeadingBit(global1.e.x), 18u)] != 1i), true);
    let var_2 = func_4(select(!vec4<bool>(var_1.x, var_1.x, false, global3[_wgslsmith_index_u32(5630u, 18u)] >= -11407i), vec4<bool>(true, var_1.x, select(true, false, var_1.x), true), any(vec3<bool>(true, !var_1.x, true))), func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)))), Struct_5(vec3<bool>(var_1.x, false, var_1.x), global1.d.x, ~abs(global1.a.b), _wgslsmith_f_op_vec2_f32(min(global1.d, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.d.x, global1.d.x))))))));
    var var_3 = var_2.a.a;
    global4 = firstLeadingBit(global1.a.b);
    var var_4 = 651f;
    var var_5 = any(!select(select(vec2<bool>(var_1.x, false), !vec2<bool>(false, var_1.x), select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, var_1.x), var_1)), var_1, var_1.x));
    var var_6 = Struct_4(Struct_2(Struct_1((global1.e.zx << (vec2<u32>(var_3.a.x, var_3.a.x) % vec2<u32>(32u))) >> (global1.e.zy % vec2<u32>(32u)), global1.a.b), 0u, 17692i, vec2<f32>(var_2.a.d.x, 1000f), vec3<u32>(4294967295u, 0u, 1u)), var_2.a.e);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(firstLeadingBit(var_3.b.zy)), _wgslsmith_mod_u32(~1u, countOneBits(_wgslsmith_sub_u32(4294967295u, ~11898u))), global1.a.b, vec4<u32>(var_2.b.x, _wgslsmith_mod_u32(firstTrailingBit(var_3.a.x) | ~0u, 4294967295u), 79935u, ~var_6.a.b), u_input.a.zzx);
}

