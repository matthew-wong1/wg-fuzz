struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: u32,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(2619f, 534f, -3088f, 493f);

var<private> global1: array<vec3<f32>, 10>;

var<private> global2: Struct_4 = Struct_4(Struct_3(true, vec3<f32>(202f, -512f, 608f)), vec4<i32>(-1i, -23063i, -3717i, 1i), 1u, Struct_3(true, vec3<f32>(-1044f, 1978f, -1145f)));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: u32) -> vec3<u32> {
    global1 = array<vec3<f32>, 10>();
    let var_0 = Struct_5(Struct_1(vec2<bool>(true, global2.a.a), _wgslsmith_f_op_f32(global0.x - -323f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-arg_1.a.b.x))) - global0.x), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(arg_0.x, arg_1.c, global2.c), arg_0.wyw >> (arg_0.xyx % vec3<u32>(32u))), vec3<u32>(abs(1u), 119331u, arg_3))), arg_1, _wgslsmith_f_op_vec3_f32(min(global0.xyx, vec3<f32>(global0.x, 266f, _wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, 364f), global2.a.b.x)))));
    var var_1 = Struct_5(var_0.a, arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(835f, _wgslsmith_f_op_f32(-var_0.b.a.b.x), _wgslsmith_f_op_f32(-759f - _wgslsmith_f_op_f32(global0.x * arg_1.d.b.x)))));
    let var_2 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(arg_1.a.a, any(vec3<bool>(arg_1.a.a, arg_1.a.a, true))), true), _wgslsmith_f_op_f32(-134f - var_0.b.a.b.x), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b.a.b.x))), global2.d.b.x), 404f), ~vec3<u32>(countOneBits(4294967295u), select(59742u, 3913u, var_1.a.a.x), 35323u));
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-2528f + global2.d.b.x), _wgslsmith_div_f32(var_1.b.a.b.x, _wgslsmith_f_op_f32(sign(var_1.a.c))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-222f, -823f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.a.b.x), var_1.a.c))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1086f, global0.x, arg_1.d.b.x, -477f) * vec4<f32>(global2.d.b.x, var_2.c, arg_1.a.b.x, global0.x)))), vec4<f32>(989f, 133f, _wgslsmith_f_op_f32(f32(-1f) * -786f), _wgslsmith_f_op_f32(max(-1059f, 1093f))))), vec4<bool>(true, any(var_0.a.a), all(vec3<bool>(false, true, global2.a.a)), all(!vec3<bool>(var_1.b.a.a, var_2.a.x, var_2.a.x)))))));
    return ~var_0.a.d;
}

fn func_2(arg_0: u32) -> Struct_4 {
    var var_0 = Struct_5(Struct_1(!(!select(vec2<bool>(global2.a.a, true), vec2<bool>(global2.a.a, global2.a.a), vec2<bool>(false, true))), 1048f, 370f, func_3(~(~vec4<u32>(84321u, global2.c, 6450u, 43795u)), Struct_4(Struct_3(global2.a.a, global2.a.b), select(global2.b, global2.b, global2.d.a), _wgslsmith_mod_u32(24221u, arg_0), Struct_3(global2.a.a, global2.a.b)), -_wgslsmith_mult_vec3_i32(vec3<i32>(46904i, 497i, -2147483647i), vec3<i32>(global2.b.x, global2.b.x, global2.b.x)), ~u_input.a.x | 24888u)), Struct_4(Struct_3(true, global0.zzx), -(global2.b << (_wgslsmith_mult_vec4_u32(vec4<u32>(76623u, u_input.a.x, 6765u, 0u), vec4<u32>(u_input.b, arg_0, 27975u, arg_0)) % vec4<u32>(32u))), 4294967295u, global2.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(929f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x + 135f), global0.x, global2.b.x < 2147483647i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global2.d.b.x, global0.x)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1098f, 831f, -1000f)));
    global0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -307f, 793f, global0.x))))))));
    let var_2 = Struct_2(global2.d.a, Struct_1(vec2<bool>(true, !select(false, var_0.a.a.x, false)), var_0.a.b, global2.d.b.x, vec3<u32>(~(global2.c & global2.c), global2.c, max(34200u, global2.c) | ~30937u)), var_0.b.b.x, var_0.b.b.x);
    let var_3 = !(!(true && !(true & var_2.b.a.x)));
    return Struct_4(global2.d, _wgslsmith_add_vec4_i32((~global2.b & vec4<i32>(var_0.b.b.x, 33059i, var_2.c, -3729i)) << ((reverseBits(vec4<u32>(u_input.b, global2.c, 4294967295u, 58086u)) << (firstTrailingBit(vec4<u32>(37636u, var_0.a.d.x, var_2.b.d.x, var_2.b.d.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), select(max(vec4<i32>(-2147483647i, 0i, 1i, global2.b.x), global2.b), global2.b, !select(vec4<bool>(var_0.a.a.x, var_0.b.a.a, var_0.b.d.a, var_2.b.a.x), vec4<bool>(true, var_2.b.a.x, false, var_2.b.a.x), vec4<bool>(global2.a.a, var_3, true, false)))), _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.b, var_0.a.d.x, 97337u, global2.c), reverseBits(vec4<u32>(u_input.a.x, 4294967295u, u_input.b, var_0.b.c)), true) ^ ~max(vec4<u32>(global2.c, 0u, 26317u, var_0.b.c), vec4<u32>(u_input.a.x, var_0.b.c, var_0.a.d.x, 0u)), _wgslsmith_div_vec4_u32(select(firstTrailingBit(vec4<u32>(arg_0, 0u, u_input.b, u_input.a.x)), select(vec4<u32>(global2.c, arg_0, var_0.a.d.x, global2.c), vec4<u32>(1u, global2.c, 12154u, 13535u), var_0.b.a.a), !vec4<bool>(true, var_0.a.a.x, global2.a.a, var_0.a.a.x)), vec4<u32>(58773u, _wgslsmith_mod_u32(61521u, u_input.b), _wgslsmith_mult_u32(84102u, 0u), u_input.b & 4294967295u))), var_0.b.a);
}

fn func_1() -> Struct_3 {
    let var_0 = global2.c;
    var var_1 = func_2(global2.c);
    var var_2 = _wgslsmith_dot_vec3_u32(max(vec3<u32>(~0u, ~(~1u), var_1.c), vec3<u32>(~135u | ~global2.c, u_input.b, select(_wgslsmith_add_u32(global2.c, 4294967295u), global2.c << (u_input.a.x % 32u), global2.a.a))), ~(~countOneBits(countOneBits(vec3<u32>(u_input.a.x, var_1.c, 35833u)))));
    var var_3 = Struct_5(Struct_1(vec2<bool>(true, true), -570f, _wgslsmith_f_op_f32(f32(-1f) * -1418f), vec3<u32>(~1u, u_input.a.x, _wgslsmith_mod_u32(9358u, 4294967295u) << (var_1.c % 32u))), func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(4111u, var_1.c), 13094u), vec2<u32>(u_input.b | 0u, ~u_input.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, global2.d.b.x, global2.d.b.x))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1064f, global0.x, 748f) + vec3<f32>(-134f, global0.x, global0.x)))))));
    var var_4 = !select(!select(!vec3<bool>(var_1.a.a, global2.a.a, var_1.a.a), vec3<bool>(true, true, true), select(vec3<bool>(global2.d.a, true, var_1.d.a), vec3<bool>(false, global2.d.a, true), vec3<bool>(var_1.a.a, var_3.a.a.x, false))), select(vec3<bool>(true, true, any(vec3<bool>(true, false, global2.a.a))), select(select(vec3<bool>(false, var_1.d.a, var_1.a.a), vec3<bool>(var_1.d.a, var_1.d.a, var_1.a.a), vec3<bool>(var_1.a.a, true, false)), vec3<bool>(var_3.a.a.x, false, var_1.a.a), true), vec3<bool>(true && var_1.d.a, any(vec4<bool>(true, global2.d.a, true, var_1.a.a)), true)), all(select(select(var_3.a.a, vec2<bool>(false, true), vec2<bool>(var_3.a.a.x, false)), vec2<bool>(global2.d.a, global2.d.a), !var_3.a.a.x)));
    return Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -996f) >= _wgslsmith_f_op_f32(-func_2(4294967295u).d.b.x), global2.d.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = global1[_wgslsmith_index_u32(~(~global2.c), 10u)];
    var var_2 = ~vec4<i32>(-1i, 36335i, func_2(_wgslsmith_mult_u32(u_input.a.x ^ u_input.a.x, ~1u)).b.x, 13510i);
    var var_3 = ~(~(~_wgslsmith_mult_i32(-15852i, ~global2.b.x)));
    let var_4 = Struct_4(Struct_3(func_2(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(15939u, global2.c), 1u, _wgslsmith_mult_u32(global2.c, global2.c))).a.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.d.b + var_0.b)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global0.wwz))))), vec4<i32>(17265i, 30754i, _wgslsmith_dot_vec3_i32(var_2.yxz, ~global2.b.zwz), 1389i) | _wgslsmith_clamp_vec4_i32(global2.b, global2.b | ~global2.b, ~global2.b), 8327u, func_1());
    let x = u_input.a;
    s_output = StorageBuffer(abs(4294967295u));
}

