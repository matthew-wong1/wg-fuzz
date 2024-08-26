struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14> = array<u32, 14>(10642u, 30639u, 44131u, 45028u, 69003u, 1u, 48082u, 0u, 4294967295u, 73657u, 23608u, 1u, 57820u, 4294967295u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = arg_2;
    var var_1 = ~4294967295u;
    var_1 = select(~abs(~13181u) << (_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50112u, 14u)], 14u)]), 14u)], abs(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(0u, 14u)]))) % 32u), ~global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(~1u, global0[_wgslsmith_index_u32(~0u, 14u)])), 14u)], min(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32074u, 14u)], 14u)], 14u)], _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9331u, 14u)], 14u)], 14u)], 14u)], global0[_wgslsmith_index_u32(63806u, 14u)]), vec2<u32>(25289u, global0[_wgslsmith_index_u32(0u, 14u)]))), 14u)], _wgslsmith_add_u32(4566u, global0[_wgslsmith_index_u32(21540u, 14u)])) == 7659u);
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-707f - arg_2.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1115f - _wgslsmith_f_op_f32(abs(1068f))) - _wgslsmith_div_f32(-1000f, 976f))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.x, -2755f) - _wgslsmith_f_op_f32(-446f - arg_2.b.x));
    return min(_wgslsmith_div_vec4_u32(select(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(72435u, global0[_wgslsmith_index_u32(16452u, 14u)], 1u), vec3<u32>(2489u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(62609u, 14u)], 14u)], 45050u)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], global0[_wgslsmith_index_u32(4609u, 14u)]), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11121u, 14u)], 14u)], 14u)])), 14u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], 4294967295u, 59865u, global0[_wgslsmith_index_u32(22069u, 14u)]), vec4<u32>(global0[_wgslsmith_index_u32(31562u, 14u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33553u, 14u)], 14u)], 4294967295u)), global0[_wgslsmith_index_u32(4294967295u, 14u)]), select(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], 79310u, global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)]), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)], 14u)], 4294967295u, global0[_wgslsmith_index_u32(7224u, 14u)]) << (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], 0u, 0u, global0[_wgslsmith_index_u32(70642u, 14u)]) % vec4<u32>(32u)), !arg_0), select(select(vec4<bool>(arg_0, true, true, var_0.a), vec4<bool>(true, true, false, arg_2.a), vec4<bool>(true, true, arg_2.a, true)), select(vec4<bool>(true, var_0.a, false, arg_0), vec4<bool>(arg_0, false, arg_0, false), false), select(vec4<bool>(false, var_0.a, true, true), vec4<bool>(arg_2.a, var_0.a, var_0.a, arg_2.a), vec4<bool>(true, true, true, var_0.a)))), min(~_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], 53680u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)]), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40479u, 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)])), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(select(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)], var_0.a), 14u)], 14u)], 42090u, 12890u, 4294967295u))), ~(~min(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12374u, 14u)], 14u)], 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)], 14u)], global0[_wgslsmith_index_u32(13157u, 14u)]), vec4<u32>(global0[_wgslsmith_index_u32(66147u, 14u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36941u, 14u)], 14u)], 2386u))) ^ vec4<u32>(reverseBits(44896u), global0[_wgslsmith_index_u32(4294967295u ^ _wgslsmith_clamp_u32(14120u, global0[_wgslsmith_index_u32(0u, 14u)], 0u), 14u)], 0u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)]), 14u)], 14u)] % 32u), max(~0u, ~4294967295u)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(vec4<u32>(1u, global0[_wgslsmith_index_u32(firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, ~26440u), 14u)], 14u)]), 14u)], global0[_wgslsmith_index_u32(23007u, 14u)] ^ _wgslsmith_dot_vec4_u32(max(vec4<u32>(global0[_wgslsmith_index_u32(3289u, 14u)], global0[_wgslsmith_index_u32(91084u, 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], global0[_wgslsmith_index_u32(0u, 14u)]), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], 39597u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53098u, 14u)], 14u)], 76273u)), select(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38580u, 14u)], 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22849u, 14u)], 14u)], 1u, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)], 14831u, 1u, global0[_wgslsmith_index_u32(1u, 14u)]), true)), ~10528u), reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(15865u, 14u)] | global0[_wgslsmith_index_u32(reverseBits(14500u), 14u)], ~30441u, 38343u)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1207f - -2104f)))), Struct_1(select(true, true, true), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1340f, 1001f))))), Struct_1(false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-361f)), 880f))), min(reverseBits(reverseBits(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 0u))), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, 1u), global0[_wgslsmith_index_u32(~18661u, 14u)]), global0[_wgslsmith_index_u32(47886u, 14u)])));
    global0 = array<u32, 14>();
    var var_1 = var_0.a.xzy;
    var var_2 = -10019i;
    let var_3 = Struct_3(~(~_wgslsmith_mult_vec4_u32(func_3(var_0.c.b.a, u_input.a, Struct_1(var_0.d.a, var_0.d.b)), func_3(true, u_input.a, var_0.d))), _wgslsmith_div_vec3_u32(vec3<u32>(22001u, 33736u, 54406u), vec3<u32>(~max(79383u, var_1.x), var_0.a.x, abs(countOneBits(var_1.x)))), var_0.c, var_0.d, _wgslsmith_sub_vec2_u32(max(~var_1.xy, var_1.zz) & abs(vec2<u32>(39658u, global0[_wgslsmith_index_u32(1u, 14u)])), reverseBits(~vec2<u32>(global0[_wgslsmith_index_u32(1u, 14u)], 1u))));
    return var_3.c;
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> bool {
    var var_0 = Struct_3(~(vec4<u32>(arg_2, 4294967295u, arg_2, global0[_wgslsmith_index_u32(arg_2, 14u)]) & vec4<u32>(1u, 1u, 1u, 1u)) | ~vec4<u32>(_wgslsmith_sub_u32(32216u, 22710u), global0[_wgslsmith_index_u32(~3467u, 14u)], ~arg_2, ~13906u), ~(~(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, global0[_wgslsmith_index_u32(55887u, 14u)], 35723u), vec3<u32>(arg_2, 0u, global0[_wgslsmith_index_u32(arg_2, 14u)])))), func_2(), arg_1.b, func_3(all(!vec2<bool>(true, arg_1.b.a)), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, 13442i, 26176i), -u_input.a) & u_input.a, arg_1.b).wx);
    var_0 = Struct_3(var_0.a, var_0.a.xyy, func_2(), Struct_1(any(!vec4<bool>(arg_1.b.a, true, false, true)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, -1251f)) - var_0.d.b), var_0.c.b.b))), vec2<u32>(countOneBits(_wgslsmith_add_u32(53596u, 1u) ^ (global0[_wgslsmith_index_u32(4294967295u, 14u)] << (9881u % 32u))), ~min(63310u >> (arg_2 % 32u), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)], 65263u))));
    var_0 = Struct_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(50890u, 4294967295u, ~_wgslsmith_sub_u32(var_0.e.x, arg_2), global0[_wgslsmith_index_u32(var_0.b.x, 14u)]), ~(var_0.a << (var_0.a % vec4<u32>(32u))), ~vec4<u32>(~0u, ~2879u, 0u, var_0.b.x & arg_2)), var_0.b, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.b.x + var_0.c.b.b.x)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.c.b.b.x, 1532f))))), func_2().b), func_2().b, ~vec2<u32>(_wgslsmith_sub_u32(31846u, arg_2), ~var_0.a.x) & (var_0.a.wx & vec2<u32>(84703u, func_3(true, vec3<i32>(u_input.b.x, -2147483647i, arg_0), var_0.d).x)));
    let var_1 = func_2().b;
    global0 = array<u32, 14>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(~firstLeadingBit(firstTrailingBit(~vec2<u32>(1616u, 0u))));
    let var_1 = select(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), select(vec3<bool>(true, func_1(-u_input.a.x, Struct_2(-893f, Struct_1(false, vec2<f32>(748f, -962f))), var_0.x, u_input.b.x), true), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), select(true, false, true)), select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), true | all(vec2<bool>(false, false)))), vec3<bool>(all(vec2<bool>(all(vec4<bool>(false, false, false, true)), true)), !any(vec2<bool>(false, true)), all(vec2<bool>(true, true))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-361f))), func_2().b);
    var var_3 = func_2();
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(reverseBits(1u), 113672u, 28747u), _wgslsmith_add_i32(u_input.b.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(36518i, u_input.b.x), -vec2<i32>(u_input.a.x, -2408i))));
}

