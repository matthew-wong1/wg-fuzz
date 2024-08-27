struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
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

var<private> global0: Struct_4 = Struct_4(Struct_1(71792u, vec2<f32>(-951f, -276f), false, vec4<i32>(-6775i, -45876i, 38144i, 49000i)), 1i, vec3<i32>(2147483647i, i32(-2147483648), 0i), 7850i);

var<private> global1: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(Struct_1(15096u, vec2<f32>(-1776f, -439f), false, vec4<i32>(30698i, 15320i, 0i, 24345i)), 3717i, vec3<i32>(1i, -67219i, 2147483647i), 32454i), Struct_4(Struct_1(67668u, vec2<f32>(140f, -1999f), false, vec4<i32>(i32(-2147483648), 38058i, 0i, 29816i)), 23571i, vec3<i32>(-74i, 0i, i32(-2147483648)), 36539i), Struct_4(Struct_1(18810u, vec2<f32>(-458f, 1292f), false, vec4<i32>(-18238i, 11027i, 2147483647i, 20754i)), i32(-2147483648), vec3<i32>(-532i, 0i, 0i), 0i), Struct_4(Struct_1(1355u, vec2<f32>(277f, 2079f), true, vec4<i32>(18925i, -1i, 2147483647i, 76340i)), -1i, vec3<i32>(24090i, -26070i, 2147483647i), -32811i), Struct_4(Struct_1(4294967295u, vec2<f32>(-991f, -613f), false, vec4<i32>(i32(-2147483648), 2147483647i, 0i, 0i)), i32(-2147483648), vec3<i32>(1i, 0i, 1i), -1i), Struct_4(Struct_1(0u, vec2<f32>(214f, -594f), true, vec4<i32>(0i, 64278i, 2147483647i, -1809i)), 0i, vec3<i32>(1979i, 1i, -15875i), i32(-2147483648)), Struct_4(Struct_1(29817u, vec2<f32>(-1942f, 387f), false, vec4<i32>(13580i, i32(-2147483648), i32(-2147483648), -31550i)), -22392i, vec3<i32>(0i, -1i, -34728i), 2147483647i), Struct_4(Struct_1(11942u, vec2<f32>(-1737f, 504f), true, vec4<i32>(7793i, -1i, -20964i, -29104i)), i32(-2147483648), vec3<i32>(0i, 41030i, 0i), 8014i), Struct_4(Struct_1(4294967295u, vec2<f32>(1316f, 1428f), true, vec4<i32>(-1i, i32(-2147483648), 35681i, -47820i)), i32(-2147483648), vec3<i32>(2147483647i, 1i, 45841i), i32(-2147483648)), Struct_4(Struct_1(4294967295u, vec2<f32>(636f, 1000f), true, vec4<i32>(2147483647i, -33161i, -58521i, -28467i)), 47793i, vec3<i32>(-22743i, 2147483647i, 1i), 16624i), Struct_4(Struct_1(30274u, vec2<f32>(1099f, 1530f), true, vec4<i32>(-12786i, -22291i, i32(-2147483648), 1i)), -1i, vec3<i32>(2147483647i, 0i, 1i), 0i), Struct_4(Struct_1(1u, vec2<f32>(-1219f, 821f), false, vec4<i32>(-39211i, 2918i, 2147483647i, 0i)), -10836i, vec3<i32>(-19045i, 14060i, 1i), 25373i), Struct_4(Struct_1(1u, vec2<f32>(917f, 528f), false, vec4<i32>(0i, 0i, 69524i, -1i)), -80927i, vec3<i32>(i32(-2147483648), -24360i, -1i), 1i), Struct_4(Struct_1(31609u, vec2<f32>(1819f, 106f), false, vec4<i32>(2147483647i, 1i, -70i, i32(-2147483648))), i32(-2147483648), vec3<i32>(23932i, 0i, 0i), i32(-2147483648)));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> bool {
    let var_0 = global0.a.b;
    global1 = array<Struct_4, 14>();
    let var_1 = arg_1.b;
    let var_2 = Struct_4(Struct_1(1u, arg_1.a.b, !(!all(vec3<bool>(true, arg_1.b.b.c, true))), arg_1.b.b.d), arg_1.b.a.x, ~_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.b.b.d.x, var_1.a.x, _wgslsmith_mod_i32(-9001i, 1i)), ~vec3<i32>(10831i, arg_1.a.d.x, var_1.a.x)), min(-(~(-1i)), 0i) ^ arg_1.b.a.x);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.a.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.b.x * var_2.a.b.x) - var_0.x) * arg_1.b.b.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1644f + 1681f), -519f)), _wgslsmith_div_f32(var_2.a.b.x, -373f)))));
    return true;
}

fn func_2(arg_0: vec3<f32>) -> vec3<f32> {
    var var_0 = vec4<bool>(global0.a.c, func_3(-(~u_input.c.x) >= ((global0.a.d.x ^ u_input.c.x) | global0.c.x), Struct_3(Struct_1(global0.a.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1552f, 2923f)), !global0.a.c, u_input.c & vec4<i32>(-2147483647i, 1i, global0.a.d.x, -2147483647i)), Struct_2(-u_input.c.yw, global0.a, global0.a.d.wyx | global0.c))), false, all(select(!select(vec2<bool>(global0.a.c, global0.a.c), vec2<bool>(true, true), vec2<bool>(false, false)), !select(vec2<bool>(true, false), vec2<bool>(global0.a.c, false), vec2<bool>(global0.a.c, false)), (arg_0.x > arg_0.x) || !global0.a.c)));
    let var_1 = vec3<i32>(_wgslsmith_mult_i32(35327i, u_input.c.x), global0.c.x, _wgslsmith_dot_vec4_i32(-global0.a.d << (u_input.d % vec4<u32>(32u)), u_input.c) | _wgslsmith_div_i32(u_input.c.x, 5112i));
    var var_2 = Struct_1(firstTrailingBit(global0.a.a), arg_0.zy, false, u_input.c);
    var_2 = Struct_1(abs(var_2.a), _wgslsmith_f_op_vec2_f32(arg_0.xy - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1893f), _wgslsmith_f_op_f32(-var_2.b.x)))), true, -_wgslsmith_sub_vec4_i32(vec4<i32>(~var_2.d.x, reverseBits(global0.d), -u_input.c.x, max(u_input.c.x, u_input.c.x)), var_2.d));
    var var_3 = select(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, global0.a.c, false, true), !vec4<bool>(var_2.c, var_0.x, true, false)), select(!select(vec4<bool>(global0.a.c, var_0.x, false, true), vec4<bool>(global0.a.c, var_0.x, var_2.c, global0.a.c), var_2.c), vec4<bool>(true, !var_0.x, all(vec2<bool>(global0.a.c, var_0.x)), all(var_0.yx)), any(!vec4<bool>(global0.a.c, global0.a.c, global0.a.c, var_2.c))), -(i32(-1i) * -38580i) == var_2.d.x), !vec4<bool>(true, false, true, !any(vec4<bool>(true, true, false, true))), !vec4<bool>(!all(vec2<bool>(true, var_0.x)), global0.a.c || var_0.x, false, global0.a.c));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(select(516f, -719f, true)))), var_2.b.x, 252f)), arg_0));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: f32) -> f32 {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_0, _wgslsmith_f_op_vec3_f32(arg_0 * vec3<f32>(-1000f, arg_1.a.b.x, -1831f))), arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.a.b.x, -1266f, -822f), arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(135f, global0.a.b.x, 1864f)))) + _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-816f, arg_1.a.b.x, -158f))))))));
    let var_2 = var_0;
    let var_3 = ~vec4<u32>(56031u, select(~u_input.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(19960u, 43751u, u_input.a.x), select(u_input.b.wwz, vec3<u32>(4294967295u, 0u, 1240u), false)), all(vec3<bool>(arg_1.b.b.c, global0.a.c, true)) | any(vec3<bool>(global0.a.c, false, true))), 5187u, 114954u | (~arg_1.a.a >> (~arg_1.a.a % 32u)));
    var var_4 = arg_1.b;
    return _wgslsmith_f_op_f32(-821f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1543f + _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec3_f32(var_1 * arg_0))).x)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_3 {
    let var_0 = arg_1.a;
    let var_1 = (_wgslsmith_div_vec4_u32(vec4<u32>(76444u, global0.a.a, 0u, arg_0.x) << (max(u_input.b, vec4<u32>(5737u, 78508u, u_input.a.x, 4294967295u)) % vec4<u32>(32u)), reverseBits(arg_0) | ~u_input.b) >> (u_input.d % vec4<u32>(32u))) & _wgslsmith_clamp_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(1u, 4294967295u), ~1u, _wgslsmith_div_u32(0u, ~arg_0.x), global0.a.a), ~(~(u_input.d << (vec4<u32>(41890u, arg_1.b.b.a, 4294967295u, 0u) % vec4<u32>(32u)))), vec4<u32>(~1u, countOneBits(1u), 18230u, ~global0.a.a));
    let var_2 = false & ((_wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, 88759u, 1u), ~1u) >= ~32902u) || true);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(sign(538f)), 1485f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.b.x - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.b.x, arg_1.a.b.x)))) + _wgslsmith_div_f32(928f, global0.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1174f, var_0.b.x, global0.a.b.x) + vec3<f32>(207f, 1000f, -157f))), arg_1, -1098f))));
    var var_4 = countOneBits(reverseBits(_wgslsmith_add_u32(select(26934u, arg_0.x, !global0.a.c), global0.a.a)));
    return Struct_3(var_0, arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.b.x;
    global1 = array<Struct_4, 14>();
    global1 = array<Struct_4, 14>();
    global0 = global1[_wgslsmith_index_u32(global0.a.a, 14u)];
    var var_1 = func_4(vec4<u32>(4294967295u, _wgslsmith_mod_u32(45479u, 1u), u_input.a.x ^ ~firstTrailingBit(11338u), u_input.a.x), Struct_3(Struct_1(u_input.a.x, vec2<f32>(354f, _wgslsmith_f_op_f32(func_1(vec3<f32>(-443f, global0.a.b.x, -549f), Struct_3(global0.a, Struct_2(vec2<i32>(u_input.c.x, u_input.c.x), Struct_1(1u, global0.a.b, true, u_input.c), global0.a.d.yzw)), global0.a.b.x))), !all(vec4<bool>(false, global0.a.c, false, false)), -(vec4<i32>(0i, -26511i, u_input.c.x, -65087i) | vec4<i32>(global0.d, 18323i, global0.a.d.x, -2147483647i))), Struct_2(firstTrailingBit(vec2<i32>(2147483647i, u_input.c.x)), Struct_1(~1u, _wgslsmith_f_op_vec3_f32(func_2(vec3<f32>(global0.a.b.x, -1000f, global0.a.b.x))).yx, global0.a.b.x >= 834f, select(global0.a.d, global0.a.d, vec4<bool>(false, false, false, true))), (vec3<i32>(-987i, global0.c.x, global0.b) & u_input.c.zwx) >> (vec3<u32>(12435u, 75453u, 4294967295u) % vec3<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, var_1.b.b.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.b.x + global0.a.b.x) + _wgslsmith_f_op_f32(409f - var_1.b.b.b.x)))), 1250f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-563f, var_1.a.b.x, global0.a.b.x, var_1.b.b.b.x)), vec4<f32>(-426f, 1269f, _wgslsmith_f_op_f32(abs(588f)), -471f), (var_1.b.b.b.x >= 164f) || false)))));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, ~countOneBits(~(44286u & var_1.b.b.a))), 14u)];
    var var_4 = var_3.a;
    var_1 = Struct_3(func_4(u_input.b, func_4(u_input.b, Struct_3(var_3.a, Struct_2(vec2<i32>(var_3.c.x, 2147483647i), Struct_1(global0.a.a, var_4.b, false, var_3.a.d), global0.c)))).b.b, var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_4.d.x, 2147483647i));
}

