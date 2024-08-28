struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(4294967295u, 0u, 87471u), vec3<u32>(27282u, 17808u, 27u), vec3<u32>(1u, 84109u, 36274u), vec3<u32>(4294967295u, 1u, 14237u), vec3<u32>(8952u, 1u, 43029u), vec3<u32>(53331u, 1u, 18513u), vec3<u32>(7602u, 4294967295u, 0u), vec3<u32>(4294967295u, 1u, 52233u), vec3<u32>(4294967295u, 1u, 27581u), vec3<u32>(30062u, 0u, 0u), vec3<u32>(69148u, 1u, 4111u), vec3<u32>(4311u, 4294967295u, 0u), vec3<u32>(4294967295u, 53838u, 93132u), vec3<u32>(1u, 0u, 51692u), vec3<u32>(33353u, 43322u, 9338u), vec3<u32>(1u, 92284u, 97367u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(61163u, 86069u, 13697u), vec3<u32>(39954u, 113959u, 25421u), vec3<u32>(45592u, 0u, 0u), vec3<u32>(114353u, 0u, 25710u), vec3<u32>(4294967295u, 57896u, 1u), vec3<u32>(499u, 63242u, 6620u), vec3<u32>(4294967295u, 24963u, 4294967295u), vec3<u32>(79652u, 62369u, 56168u), vec3<u32>(6283u, 6720u, 1u), vec3<u32>(19126u, 1u, 99012u));

var<private> global1: array<i32, 16>;

var<private> global2: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> vec3<f32> {
    global1 = array<i32, 16>();
    var var_0 = ~(~vec2<u32>((76705u << (arg_1.c.x % 32u)) & min(arg_1.c.x, arg_1.c.x), _wgslsmith_mult_u32(0u | arg_1.c.x, arg_1.c.x)));
    var var_1 = arg_1.b.b;
    let var_2 = true;
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1.b.a.a), 1i);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_1.b.a.a, _wgslsmith_f_op_vec3_f32(ceil(arg_1.b.b.a)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(661f, 518f, arg_1.b.b.a.x), vec3<f32>(1278f, var_1.a.x, 1988f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-246f, arg_1.b.a.a.x, -1000f) - arg_1.b.b.a)), vec3<f32>(_wgslsmith_f_op_f32(275f + 822f), _wgslsmith_div_f32(601f, var_1.a.x), 1162f)))));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec4<bool>) -> Struct_1 {
    global2 = true;
    var var_0 = arg_0.b.b.a;
    let var_1 = arg_0.c;
    let var_2 = arg_1.x;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_add_i32(u_input.a.x, 1095i), arg_0)));
    return arg_0.b.b;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: Struct_2) -> Struct_3 {
    var var_0 = (vec3<i32>(arg_0.b, arg_0.b, i32(-1i) * -63462i) << (~vec3<u32>(46093u, _wgslsmith_dot_vec4_u32(vec4<u32>(97922u, 44311u, 51413u, 42574u), vec4<u32>(0u, 0u, 4294967295u, 96267u)), 1u) % vec3<u32>(32u))) & vec3<i32>(_wgslsmith_mod_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.b.b, -57145i), u_input.a)), -41269i), -arg_3.a.b, ~arg_1);
    var_0 = vec3<i32>(u_input.a.x, arg_3.b.b, _wgslsmith_div_i32(-(~(u_input.a.x >> (25925u % 32u))), _wgslsmith_dot_vec2_i32(firstLeadingBit(max(u_input.a, u_input.a)), var_0.zx)));
    return Struct_3(select(select(select(!vec2<bool>(false, arg_2), vec2<bool>(true, true), select(arg_3.c, false, arg_3.c)), select(select(vec2<bool>(false, arg_2), vec2<bool>(true, arg_2), arg_2), select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, arg_2), true), all(vec4<bool>(arg_3.c, false, false, true))), arg_2 | (arg_3.c | true)), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(arg_3.c, arg_2), vec2<bool>(false, true)), select(vec2<bool>(true, arg_3.c), vec2<bool>(arg_2, false), true), select(vec2<bool>(true, arg_2), vec2<bool>(false, arg_2), arg_2)), func_2(Struct_3(vec2<bool>(arg_2, arg_2), arg_3, vec3<u32>(49583u, 34507u, 1u)), global0[_wgslsmith_index_u32(43472u, 27u)], vec4<bool>(arg_3.c, arg_2, arg_2, false)).a.x >= _wgslsmith_f_op_vec3_f32(func_3(arg_1, Struct_3(vec2<bool>(arg_2, true), Struct_2(arg_0, Struct_1(arg_0.a, arg_0.b), arg_3.c), global0[_wgslsmith_index_u32(4294967295u, 27u)]))).x), select(arg_2, true, true)), Struct_2(func_2(Struct_3(!vec2<bool>(true, arg_3.c), Struct_2(arg_0, Struct_1(vec3<f32>(arg_3.b.a.x, -936f, -733f), 1i), false), ~vec3<u32>(1u, 1u, 60826u)), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(23488u, 50259u), 27u)], select(!vec4<bool>(false, true, false, arg_3.c), vec4<bool>(arg_2, arg_3.c, false, false), select(vec4<bool>(false, false, arg_3.c, arg_3.c), vec4<bool>(true, arg_3.c, true, false), true))), func_2(Struct_3(!vec2<bool>(arg_3.c, false), Struct_2(Struct_1(vec3<f32>(arg_3.b.a.x, -1000f, arg_0.a.x), 59685i), Struct_1(vec3<f32>(arg_3.a.a.x, 331f, -1000f), u_input.a.x), arg_3.c), global0[_wgslsmith_index_u32(1u, 27u)]), countOneBits(firstTrailingBit(vec3<u32>(1u, 45704u, 1u))), select(select(vec4<bool>(arg_2, false, true, false), vec4<bool>(arg_2, arg_3.c, false, true), true), vec4<bool>(arg_2, false, arg_2, false), select(vec4<bool>(true, arg_3.c, arg_3.c, true), vec4<bool>(true, true, true, false), true))), true), global0[_wgslsmith_index_u32(~43124u ^ _wgslsmith_sub_u32(5344u, _wgslsmith_dot_vec4_u32(vec4<u32>(5421u, 19994u, 4294967295u, 29558u), vec4<u32>(4294967295u, 22872u, 14814u, 1u))), 27u)]);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool, arg_3: vec3<f32>) -> f32 {
    let var_0 = vec2<f32>(arg_1.b.b.a.x, arg_0.a.x);
    global0 = array<vec3<u32>, 27>();
    var var_1 = arg_0.b;
    var_1 = firstLeadingBit(arg_0.b) | (abs(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(1u, 27u)], vec3<u32>(arg_1.c.x, 38712u, 30890u)), 16u)]) << (1u % 32u));
    let var_2 = _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(countOneBits(min(vec4<u32>(5728u, 1u, 1u, 1u), abs(vec4<u32>(arg_1.c.x, arg_1.c.x, 1u, 42301u)))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(46082u, arg_1.c.x, arg_1.c.x, arg_1.c.x), ~vec4<u32>(arg_1.c.x, 1u, arg_1.c.x, arg_1.c.x), vec4<u32>(0u, 0u, arg_1.c.x, arg_1.c.x))), vec4<u32>(firstLeadingBit(abs(reverseBits(43686u))), arg_1.c.x, ~(~arg_1.c.x), arg_1.c.x));
    return _wgslsmith_div_f32(1358f, _wgslsmith_f_op_f32(trunc(307f)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(func_5(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-476f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_1.a.a.x, 2234f)), -1018f, arg_1.c)), -1996f), _wgslsmith_mult_i32(-8289i, 19322i)), func_4(func_2(Struct_3(arg_0, arg_2, global0[_wgslsmith_index_u32(0u, 27u)] >> (global0[_wgslsmith_index_u32(1u, 27u)] % vec3<u32>(32u))), max(~global0[_wgslsmith_index_u32(0u, 27u)], vec3<u32>(95374u, 50872u, 4294967295u)), vec4<bool>(true, any(arg_0), false, all(vec3<bool>(true, arg_0.x, false)))), (-61945i >> (1u % 32u)) << (countOneBits(reverseBits(15369u)) % 32u), true, arg_1), arg_1.c, vec3<f32>(-1419f, arg_1.a.a.x, arg_1.a.a.x)));
    global1 = array<i32, 16>();
    var var_1 = abs(u_input.a);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(arg_1.a, 18509i, arg_2.c, Struct_2(arg_2.b, Struct_1(arg_1.a.a, -9642i), false)).b.b.a * _wgslsmith_f_op_vec3_f32(arg_1.a.a + vec3<f32>(arg_1.b.a.x, arg_2.b.a.x, arg_1.a.a.x))) + _wgslsmith_f_op_vec3_f32(arg_2.b.a * _wgslsmith_f_op_vec3_f32(ceil(arg_1.a.a)))), abs(u_input.a.x)), arg_1.a, all(select(select(select(vec4<bool>(false, arg_1.c, true, arg_0.x), vec4<bool>(arg_0.x, arg_3.x, false, arg_2.c), true), select(vec4<bool>(true, arg_1.c, arg_0.x, arg_1.c), vec4<bool>(arg_3.x, arg_1.c, true, true), vec4<bool>(arg_0.x, false, arg_1.c, arg_2.c)), true), select(vec4<bool>(false, false, arg_2.c, arg_3.x), !vec4<bool>(arg_0.x, true, false, false), select(vec4<bool>(arg_0.x, false, arg_1.c, arg_2.c), vec4<bool>(arg_3.x, arg_0.x, arg_1.c, arg_3.x), vec4<bool>(arg_0.x, arg_2.c, arg_3.x, arg_2.c))), select(select(vec4<bool>(true, false, false, arg_2.c), vec4<bool>(false, arg_3.x, arg_0.x, arg_0.x), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, arg_2.c, false), vec4<bool>(arg_3.x, true, arg_3.x, arg_0.x)), !vec4<bool>(arg_0.x, true, true, true)))));
    let var_3 = func_2(Struct_3(func_4(func_2(func_4(Struct_1(arg_2.b.a, var_2.a.b), 5097i, true, Struct_2(var_2.b, Struct_1(vec3<f32>(arg_2.b.a.x, arg_2.b.a.x, arg_2.a.a.x), 90782i), false)), global0[_wgslsmith_index_u32(1u, 27u)], !vec4<bool>(arg_0.x, true, var_2.c, true)), abs(1i), !any(vec2<bool>(arg_0.x, true)), func_4(Struct_1(arg_2.b.a, 34520i), -23422i, arg_0.x & arg_3.x, Struct_2(arg_2.a, arg_1.b, arg_3.x)).b).a, arg_2, firstTrailingBit(countOneBits(~global0[_wgslsmith_index_u32(26187u, 27u)]))), vec3<u32>(4300u, 1u, _wgslsmith_mod_u32(max(1u, firstTrailingBit(0u)), abs(1u))), vec4<bool>(var_2.c, !arg_3.x, true, false));
    return arg_2.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<f32>(1200f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(297f)), _wgslsmith_f_op_f32(f32(-1f) * -936f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(vec2<bool>(true, false), Struct_2(Struct_1(vec3<f32>(-1212f, 1711f, -1287f), u_input.a.x), Struct_1(vec3<f32>(-1000f, -104f, -723f), u_input.a.x), false), Struct_2(Struct_1(vec3<f32>(1321f, -1044f, 328f), u_input.a.x), Struct_1(vec3<f32>(636f, 661f, -487f), global1[_wgslsmith_index_u32(37077u, 16u)]), false), vec2<bool>(true, true))), _wgslsmith_f_op_f32(-231f + -1000f)))), -834f), u_input.a.x);
    let var_1 = _wgslsmith_mod_vec2_u32(abs(~(~vec2<u32>(1u, 4490u))), abs(vec2<u32>(1u, 1u) << (~select(vec2<u32>(7537u, 4294967295u), vec2<u32>(75992u, 24364u), vec2<bool>(false, true)) % vec2<u32>(32u))));
    var var_2 = ~(~(-firstTrailingBit(vec3<i32>(u_input.a.x, 23780i, global1[_wgslsmith_index_u32(var_1.x, 16u)]))) | ~(~select(vec3<i32>(1i, u_input.a.x, u_input.a.x), vec3<i32>(var_0.b, 47231i, -1i), vec3<bool>(true, true, false))));
    global1 = array<i32, 16>();
    var var_3 = func_4(Struct_1(var_0.a, var_0.b), ~var_2.x, select(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-1545f * var_0.a.x)) != var_0.a.x, !all(vec2<bool>(true, false)) || true, !(!all(vec2<bool>(true, false)))), func_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(663f, 451f, var_0.a.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x))), var_0.b), -u_input.a.x, var_1.x == ~4294967295u, func_4(func_4(Struct_1(vec3<f32>(-1409f, var_0.a.x, 709f), u_input.a.x), func_2(Struct_3(vec2<bool>(true, true), Struct_2(Struct_1(vec3<f32>(-744f, -125f, 1513f), var_0.b), Struct_1(var_0.a, 22439i), false), global0[_wgslsmith_index_u32(var_1.x, 27u)]), vec3<u32>(4294967295u, var_1.x, var_1.x), vec4<bool>(true, false, true, true)).b, all(vec4<bool>(true, true, true, true)), func_4(Struct_1(vec3<f32>(-1513f, var_0.a.x, -542f), 0i), 2147483647i, false, Struct_2(Struct_1(vec3<f32>(var_0.a.x, -962f, var_0.a.x), 0i), Struct_1(vec3<f32>(162f, var_0.a.x, var_0.a.x), var_0.b), true)).b).b.a, -30099i, true, func_4(func_2(Struct_3(vec2<bool>(true, false), Struct_2(Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), var_0.b), Struct_1(var_0.a, -45527i), true), vec3<u32>(18521u, 40176u, 1u)), vec3<u32>(4294967295u, 1u, 7103u), vec4<bool>(true, true, false, true)), var_0.b, global1[_wgslsmith_index_u32(var_1.x, 16u)] != var_0.b, Struct_2(Struct_1(var_0.a, var_2.x), Struct_1(var_0.a, 0i), true)).b).b).b).b.b.b;
    var var_4 = ~var_1.x <= var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_2.x, var_0.b));
}

