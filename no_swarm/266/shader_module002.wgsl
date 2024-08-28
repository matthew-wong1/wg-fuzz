struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_5 {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<bool>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_4, 2>;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = Struct_4(firstTrailingBit(arg_1 << (abs(max(vec2<u32>(1u, 95460u), global1.zx)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.c))))) >= 1470f, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(~global3.a, min(4693i, u_input.e)), -2147483647i, max(-1i, -1i), 2147483647i), vec4<i32>(~(~global3.b), -2147483647i, ~0i, -11969i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(337f, global3.c, 1430f, -176f), vec4<f32>(arg_2.c, 1405f, -357f, global3.c))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(476f, global3.d.x, global3.d.x, -1000f) - vec4<f32>(global3.c, -712f, 213f, arg_2.c)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(304f - -515f), global3.d.x, -242f, arg_2.c))), true);
    global3 = Struct_1(global3.a, -(_wgslsmith_mult_i32(arg_2.b >> (0u % 32u), -2147483647i) | arg_2.a), arg_2.c, _wgslsmith_f_op_vec2_f32(sign(var_0.d.yw)));
    global3 = arg_2;
    var var_1 = u_input.b;
    let var_2 = _wgslsmith_mod_i32(-2147483647i, var_0.c);
    return reverseBits(min(vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(~17222u, min(0u, u_input.a.x)), firstTrailingBit(13229u << (global1.x % 32u)), global1.x), reverseBits(abs(vec4<u32>(u_input.a.x, 35518u, u_input.d.x, u_input.a.x) ^ vec4<u32>(4294967295u, global1.x, 1u, 66839u)))));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: i32, arg_3: u32) -> vec3<f32> {
    let var_0 = global3.c;
    global0 = max(31996u, _wgslsmith_sub_u32(arg_3, global1.x));
    let var_1 = Struct_2(func_3(~reverseBits(_wgslsmith_mod_i32(arg_2, -15437i)), min(u_input.b.xy, u_input.b.yz), Struct_1(-u_input.e, 2147483647i, -837f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.x, global3.c))) + vec2<f32>(-1141f, 335f)))));
    global1 = func_3(arg_0, _wgslsmith_sub_vec2_i32(vec2<i32>(firstLeadingBit(arg_0), abs(~(-80451i))), vec2<i32>(14744i, abs(countOneBits(arg_2)))), Struct_1(1i, ~(-2147483647i), -904f, arg_1));
    global0 = var_1.a.x | countOneBits(~48767u);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.c))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(607f)))), all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-1107f * _wgslsmith_f_op_f32(-152f + -831f)), 2051f) * _wgslsmith_div_vec3_f32(vec3<f32>(1035f, global3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * arg_1.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.d.x, 1502f, global3.d.x) * vec3<f32>(global3.c, global3.c, global3.d.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.x, global3.c, arg_1.x), vec3<f32>(-1686f, -1000f, -177f))))))));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    let var_0 = Struct_5(_wgslsmith_add_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_add_u32(global1.x << (global1.x % 32u), 10751u)), ~global1.zw), -164f, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(-global3.a, _wgslsmith_f_op_vec2_f32(-global3.d), -u_input.e, firstTrailingBit(arg_0.a.x))) + vec3<f32>(_wgslsmith_f_op_f32(round(-798f)), _wgslsmith_f_op_f32(-839f * -974f), -1226f)))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true || any(vec2<bool>(true, false))), Struct_4(select(_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(33051i, arg_1)), firstTrailingBit(u_input.b.xz)), vec2<i32>(arg_1 >> (u_input.c % 32u), 2147483647i), all(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(112f * _wgslsmith_div_f32(-582f, global3.d.x)) >= global3.c, max(arg_1 & -2147483647i, 21948i) | -2147483647i, vec4<f32>(_wgslsmith_f_op_f32(global3.d.x + _wgslsmith_div_f32(global3.d.x, -1287f)), 1110f, _wgslsmith_f_op_vec3_f32(func_2(arg_1, vec2<f32>(global3.c, 803f), -16998i, 0u)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c + global3.d.x))), true));
    let var_1 = var_0.c.x;
    global1 = vec4<u32>(4294967295u, 0u, global1.x, global1.x) & vec4<u32>(~1u >> (0u % 32u), ~arg_0.a.x, ~_wgslsmith_dot_vec4_u32(arg_0.a & vec4<u32>(0u, 0u, u_input.a.x, 77174u), abs(vec4<u32>(var_0.a.x, 1u, 27769u, global1.x))), var_0.a.x);
    let var_2 = Struct_4(u_input.b.xy, true, -28561i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_0.e.d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-599f, var_1, var_0.e.d.x, 1659f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_0.e.d), _wgslsmith_f_op_vec4_f32(var_0.e.d - var_0.e.d))))), true);
    global0 = ~_wgslsmith_div_u32(_wgslsmith_mult_u32(~global1.x, var_0.a.x ^ arg_0.a.x) | 0u, 4294967295u);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1615f;
    var var_1 = func_1(Struct_2(_wgslsmith_add_vec4_u32(~firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, 1u, 0u)), vec4<u32>(global1.x >> (u_input.a.x % 32u), 0u, global1.x, 1760u))), global3.a);
    let var_2 = Struct_5(firstTrailingBit(~(firstLeadingBit(vec2<u32>(global1.x, 4294967295u)) >> (func_1(Struct_2(var_1.a), 11308i).a.wy % vec2<u32>(32u)))), var_0, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1310f, 542f, global3.c) - vec3<f32>(global3.d.x, 372f, -294f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.d.x, -417f, global3.d.x) + vec3<f32>(global3.c, var_0, var_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(948f, var_0, var_0))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1431f, global3.c, var_0), vec3<f32>(-859f, var_0, var_0))))))), vec3<bool>(any(vec2<bool>(true, true)) != true, true, !select(true, true, true)), global2[_wgslsmith_index_u32(54493u << (~var_1.a.x % 32u), 2u)]);
    var var_3 = false;
    let var_4 = var_1.a.zxz;
    global0 = var_4.x;
    let var_5 = countOneBits(_wgslsmith_add_u32(~(~10463u), ~(firstTrailingBit(48060u) & u_input.d.x)));
    global1 = vec4<u32>(abs(71196u << (reverseBits(~var_2.a.x) % 32u)), 25372u, ~4294967295u, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(1u, global3.c, 78930u);
}

