struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<u32>;

var<private> global2: u32 = 60811u;

var<private> global3: Struct_2;

var<private> global4: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(488f, -174f, -1354f), vec3<f32>(-130f, 1788f, 687f), vec3<f32>(-1545f, -651f, -2465f), vec3<f32>(928f, -597f, -364f), vec3<f32>(-1257f, -2198f, -1288f), vec3<f32>(-434f, 895f, -1692f), vec3<f32>(-2039f, -1269f, -1000f), vec3<f32>(-268f, -564f, -201f), vec3<f32>(-176f, -298f, -1541f), vec3<f32>(1735f, -1754f, 1048f), vec3<f32>(-1000f, -1025f, 840f), vec3<f32>(172f, -426f, -449f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-33793i, 29448i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.c), vec2<i32>(u_input.a.x, -2147483647i)), u_input.b.x) >> (~_wgslsmith_mod_u32(arg_0, arg_0) % 32u), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b.x, 7183i), countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.b.x), u_input.b.yz))), -1i, i32(-1i) * -75149i), reverseBits(vec4<i32>(51919i ^ ~u_input.a.x, -u_input.c, _wgslsmith_add_i32(1i, -2147483647i), 1i)));
    global2 = ~(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, 80242u), vec3<u32>(50679u, 4294967295u, arg_0)), global1.zzx), max(_wgslsmith_dot_vec3_u32(vec3<u32>(27595u, arg_0, arg_0), global1.wyz), 1u), ~_wgslsmith_sub_u32(4294967295u, 1u)));
    let var_1 = Struct_1(vec4<i32>(u_input.b.x, _wgslsmith_mult_i32(-u_input.b.x, _wgslsmith_dot_vec4_i32(-u_input.a, u_input.a)), u_input.a.x ^ var_0, firstLeadingBit(-2147483647i)), countOneBits(vec3<u32>(4294967295u, min(global1.x, 1u), global1.x)), global3.a);
    global0 = arg_0;
    let var_2 = 4294967295u;
    return select(var_1.c, arg_1.a, select(true, !(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.x, u_input.c), vec2<i32>(u_input.c, u_input.c)) != -17510i), all(vec2<bool>(arg_1.a, all(vec4<bool>(true, false, false, true))))));
}

fn func_2(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = Struct_2(!(!func_3(_wgslsmith_add_u32(4294967295u, global1.x), arg_0, arg_0)));
    return !select(!vec2<bool>(!var_0.a, true), select(vec2<bool>(true == arg_0.a, true), !select(vec2<bool>(global3.a, var_0.a), vec2<bool>(true, arg_0.a), var_0.a), false), select(vec2<bool>(true, true), select(select(vec2<bool>(arg_0.a, true), vec2<bool>(true, arg_0.a), vec2<bool>(false, global3.a)), vec2<bool>(false, false), !vec2<bool>(arg_0.a, true)), !select(vec2<bool>(false, true), vec2<bool>(arg_0.a, var_0.a), vec2<bool>(var_0.a, global3.a))));
}

fn func_4(arg_0: vec2<bool>, arg_1: u32) -> Struct_2 {
    global0 = ~4294967295u;
    let var_0 = Struct_1(-vec4<i32>(12207i, countOneBits(16995i) & -u_input.c, -24684i >> (_wgslsmith_add_u32(29440u, global1.x) % 32u), u_input.b.x), global1.xzw | min(vec3<u32>(firstLeadingBit(global1.x), arg_1 >> (4294967295u % 32u), arg_1), ~(~vec3<u32>(0u, arg_1, global1.x))), true);
    global3 = Struct_2(all(vec3<bool>(!(!arg_0.x), false, true)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(-682f)) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -904f) - -648f))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(215f + 303f) - -500f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(859f, 742f), _wgslsmith_f_op_f32(sign(949f)))))));
    return var_1;
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(global1.x, 4294967295u, arg_1.x)), firstTrailingBit(vec3<u32>(firstTrailingBit(4294967295u | arg_1.x), reverseBits(abs(arg_3.b.x)), arg_3.b.x)));
    var var_1 = -_wgslsmith_clamp_vec4_i32(~(~arg_3.a), _wgslsmith_mult_vec4_i32(arg_3.a, vec4<i32>(arg_2, i32(-1i) * -5491i, -2147483647i, 1i)), vec4<i32>(1i, ~max(-18973i, -1i), _wgslsmith_sub_i32(~57141i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 0i), vec3<i32>(1i, arg_3.a.x, arg_3.a.x))), arg_3.a.x));
    var var_2 = func_4(func_2(Struct_2(!any(vec4<bool>(true, global3.a, arg_3.c, global3.a)))), arg_1.x);
    global3 = func_4(vec2<bool>(true, select(all(vec2<bool>(true, true)), false, all(select(vec2<bool>(false, arg_3.c), vec2<bool>(var_2.a, true), arg_0)))), _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec4_u32(arg_1, arg_1), 49200u, ~global1.x, arg_1.x), arg_1));
    var var_3 = Struct_2(func_2(Struct_2(func_3(0u, Struct_2(arg_0), Struct_2(false)))).x);
    return countOneBits(u_input.a);
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: vec3<f32>) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-449f, arg_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -646f) - 1551f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1816f - arg_1) + _wgslsmith_f_op_f32(min(-723f, arg_3.x)))), _wgslsmith_f_op_f32(floor(-1000f)), 1000f) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-148f, 310f, arg_3.x, 955f) * vec4<f32>(255f, 1000f, arg_3.x, arg_3.x))))))));
    global1 = reverseBits(vec4<u32>(abs(min(48980u, arg_0.b.x & arg_0.b.x)), ~global1.x, _wgslsmith_add_u32(~(~global1.x), _wgslsmith_dot_vec2_u32(max(global1.zy, vec2<u32>(global1.x, arg_0.b.x)), ~vec2<u32>(20315u, arg_0.b.x))), ~(~12176u)));
    let var_1 = Struct_1(vec4<i32>(~countOneBits(1i ^ u_input.b.x), firstTrailingBit(-39952i | u_input.b.x), arg_0.a.x, u_input.a.x), abs(arg_0.b), !select(all(vec2<bool>(arg_2.a, false)), false | arg_0.c, func_3(global1.x, Struct_2(false), Struct_2(true))) | true);
    global1 = min(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(abs(global1.x), ~var_1.b.x, min(global1.x, 4294967295u), reverseBits(var_1.b.x))), reverseBits(abs(vec4<u32>(arg_0.b.x, arg_0.b.x, var_1.b.x, 50799u))) >> (vec4<u32>(~47800u, arg_0.b.x >> (21298u % 32u), ~var_1.b.x, global1.x) % vec4<u32>(32u))), ~(~abs(~vec4<u32>(var_1.b.x, 0u, var_1.b.x, arg_0.b.x))));
    var var_2 = vec3<bool>(arg_0.c, arg_0.c, !all(!vec2<bool>(global3.a, var_1.c)));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.x, 929f, -1732f, -615f), vec4<f32>(-338f, var_0.x, -388f, arg_1), arg_2.a)))))), ~var_1.a.wy, _wgslsmith_div_f32(-2013f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!(!global3.a));
    let var_1 = Struct_2(true);
    let var_2 = Struct_1(~min(u_input.a, (vec4<i32>(u_input.a.x, 1i, 11699i, 1i) & vec4<i32>(u_input.b.x, 2147483647i, u_input.a.x, -33363i)) & reverseBits(vec4<i32>(-1i, u_input.c, 0i, -42067i))), abs(select(max(~global1.wwz, global1.wyw), ~vec3<u32>(1u, 0u, 37993u), false)), var_1.a);
    let var_3 = Struct_2(false);
    global4 = array<vec3<f32>, 12>();
    let x = u_input.a;
    s_output = func_5(Struct_1(select(var_2.a, max(func_1(var_0.a, vec4<u32>(global1.x, global1.x, global1.x, 1u), var_2.a.x, var_2), -u_input.a), !select(vec4<bool>(var_2.c, true, global3.a, global3.a), vec4<bool>(var_2.c, global3.a, false, var_0.a), vec4<bool>(var_0.a, var_3.a, false, true))), global1.xzy, !(countOneBits(var_2.a.x) > var_2.a.x)), _wgslsmith_div_f32(-825f, 1f), Struct_2(global3.a), _wgslsmith_f_op_vec3_f32(round(global4[_wgslsmith_index_u32(max(select(32103u, var_2.b.x ^ global1.x, false), ~var_2.b.x & ~global1.x), 12u)])));
}

