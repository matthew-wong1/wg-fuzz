struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: i32,
    d: Struct_2,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<bool>(true, false, true, false), vec2<u32>(4294967295u, 24660u), -28825i, Struct_2(vec3<i32>(41867i, -28921i, 1i), Struct_1(1i, vec4<bool>(false, false, false, true), 0u, vec4<u32>(32709u, 0u, 48989u, 0u)), true), vec3<u32>(0u, 23558u, 1u));

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(0i, vec4<bool>(true, false, true, false), 4294967295u, vec4<u32>(0u, 118367u, 0u, 1573u)), Struct_1(11i, vec4<bool>(true, true, false, false), 58221u, vec4<u32>(36713u, 31783u, 0u, 1u)), Struct_1(24576i, vec4<bool>(true, false, false, false), 34193u, vec4<u32>(0u, 6934u, 1u, 4294967295u)), Struct_1(2147483647i, vec4<bool>(false, false, true, true), 46227u, vec4<u32>(0u, 1u, 0u, 20422u)), Struct_1(0i, vec4<bool>(true, true, false, false), 14520u, vec4<u32>(1u, 4294967295u, 36361u, 4294967295u)), Struct_1(-1i, vec4<bool>(false, false, true, false), 25769u, vec4<u32>(47324u, 30615u, 31460u, 0u)), Struct_1(11814i, vec4<bool>(true, false, false, false), 73113u, vec4<u32>(40859u, 65759u, 0u, 15945u)), Struct_1(46360i, vec4<bool>(true, true, true, true), 72629u, vec4<u32>(59490u, 2461u, 15430u, 0u)), Struct_1(-36851i, vec4<bool>(true, false, false, true), 4294967295u, vec4<u32>(68634u, 27473u, 4294967295u, 0u)));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    var var_0 = vec4<u32>(~(max(55765u, 4294967295u | global0.d.b.d.x) >> (arg_0.x % 32u)), 26191u, ~(~(~arg_0.x & global0.d.b.d.x)), firstLeadingBit(abs(4294967295u)));
    var var_1 = global0.a;
    var var_2 = select(!select(vec2<bool>(!global0.a.x, global0.a.x), global0.a.wz, vec2<bool>(true, false)), select(!vec2<bool>(true, global0.d.c && global0.d.c), !global0.a.xy, vec2<bool>(!any(var_1.wyz), false)), !vec2<bool>(abs(u_input.a.x) == global0.e.x, false));
    var var_3 = reverseBits(u_input.a.x);
    var var_4 = u_input.a.yzz ^ u_input.a.zxz;
    return ~(~global0.d.a.x);
}

fn func_2() -> Struct_3 {
    let var_0 = global0.d.b.b.ywy;
    global1 = array<Struct_1, 9>();
    global1 = array<Struct_1, 9>();
    let var_1 = Struct_2(vec3<i32>(~global0.c, -2147483647i ^ func_3(u_input.a.yy << (global0.e.yz % vec2<u32>(32u))), global0.d.a.x), Struct_1(global0.d.b.a, select(select(select(global0.d.b.b, vec4<bool>(global0.a.x, global0.d.b.b.x, false, global0.d.c), global0.a), vec4<bool>(global0.a.x, false, var_0.x, false), select(vec4<bool>(global0.d.c, var_0.x, false, var_0.x), vec4<bool>(true, global0.a.x, var_0.x, true), vec4<bool>(true, true, var_0.x, var_0.x))), vec4<bool>(false, true, true, false), u_input.a.x >= ~4294967295u), u_input.a.x, _wgslsmith_mod_vec4_u32(global0.d.b.d, ~(~vec4<u32>(0u, 995u, 1u, global0.d.b.d.x)))), global0.a.x);
    var var_2 = ~var_1.a.x;
    return Struct_3(var_1.b.b, u_input.a.xw, -10099i, Struct_2(vec3<i32>(global0.c, var_1.a.x, _wgslsmith_mod_i32(-global0.d.b.a, var_1.a.x)), var_1.b, true), global0.d.b.d.zzw);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<i32>) -> i32 {
    let var_0 = global0.d.c;
    global0 = func_2();
    global0 = func_2();
    var var_1 = _wgslsmith_mult_i32(-20510i, _wgslsmith_mod_i32(~arg_1.a.x, arg_1.a.x));
    var var_2 = all(arg_1.b.b);
    return ~arg_1.a.x;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_3 {
    global0 = func_2();
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, 772f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.x)) * _wgslsmith_f_op_f32(arg_2.x + arg_2.x)), arg_2.x) + arg_2)));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(floor(arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1000f)), arg_2.x) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.x, 1093f, var_0.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -2380f, var_0.x)))))) + arg_2);
    let var_1 = func_2();
    var var_2 = vec3<bool>(countOneBits(arg_1.b.c) == reverseBits(var_1.d.b.c << (1u % 32u)), false, true);
    return var_1;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = abs(-(arg_1.d.b.a & ~arg_1.d.a.x));
    var var_1 = func_2().d.b;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(vec2<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(580f)))) == _wgslsmith_f_op_f32(f32(-1f) * -194f), true), func_4(~func_1(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), Struct_2(global0.d.a, Struct_1(global0.c, global0.d.b.b, 0u, vec4<u32>(76731u, 33996u, u_input.a.x, global0.d.b.d.x)), true), -vec3<i32>(global0.c, global0.d.a.x, 47560i)), Struct_2(~global0.d.a, global0.d.b, true && any(vec4<bool>(global0.d.b.b.x, false, true, global0.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-752f, 522f, 480f)))), Struct_1(global0.c, vec4<bool>(global0.d.c, true, true, true), ~1u, vec4<u32>(22413u, u_input.a.x, func_2().b.x, ~u_input.a.x))));
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(190f, -1070f, 135f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -997f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-296f - 632f), 936f, 1915f, _wgslsmith_f_op_f32(select(-720f, 592f, global0.a.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1521f, -170f, 234f, -930f), vec4<f32>(-753f, -1966f, -1000f, -667f), global0.d.b.b.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(2445f, -1000f, -682f, 2227f), vec4<f32>(678f, 1154f, 1000f, -164f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-705f, -246f, -541f, 359f), vec4<f32>(-1243f, -684f, 840f, -1122f)))), false)), !(!global0.d.b.b.x))));
    global0 = Struct_3(vec4<bool>(_wgslsmith_f_op_f32(-var_0.x) > _wgslsmith_f_op_f32(-var_0.x), global0.d.b.b.x, true, true), vec2<u32>(u_input.a.x, u_input.a.x), ~(i32(-1i) * -4379i), global0.d, vec3<u32>(firstLeadingBit(u_input.a.x), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(global0.e, vec3<u32>(global0.d.b.c, u_input.a.x, global0.e.x)), abs(countOneBits(global0.e.x))), 20858u));
    var var_1 = func_4(1i, func_5(global0.d.b.b.xy, func_5(global0.d.b.b.yy, Struct_3(!global0.a, _wgslsmith_sub_vec2_u32(vec2<u32>(global0.e.x, global0.b.x), vec2<u32>(u_input.a.x, u_input.a.x)), global0.d.b.a, global0.d, vec3<u32>(1u, 7614u, 20547u)))).d, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(133f, var_0.x, var_0.x) + _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -173f, -1569f), vec3<f32>(var_0.x, var_0.x, 370f))))))), func_4(countOneBits(_wgslsmith_add_i32(global0.d.a.x, global0.d.a.x) | global0.d.a.x), Struct_2(global0.d.a, func_2().d.b, global0.d.b.b.x), vec3<f32>(var_0.x, var_0.x, 212f), Struct_1(func_5(!global0.d.b.b.xw, func_5(vec2<bool>(global0.a.x, global0.a.x), Struct_3(global0.a, global0.d.b.d.yy, 2147483647i, Struct_2(global0.d.a, global1[_wgslsmith_index_u32(global0.b.x, 9u)], true), u_input.a.xxz))).c, global0.a, global0.e.x, global0.d.b.d)).d.b);
    var var_2 = var_0.x;
    global0 = func_2();
    let var_3 = Struct_3(vec4<bool>(!(var_0.x >= _wgslsmith_f_op_f32(var_0.x * -690f)), all(vec2<bool>(global0.a.x, true)), var_0.x < _wgslsmith_f_op_f32(-1f), var_1.a.x), select(var_1.e.zz, ~vec2<u32>(firstTrailingBit(global0.d.b.d.x), firstLeadingBit(0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) - 1244f) < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, var_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -800f)))), var_1.d.a.x << (4294967295u % 32u), Struct_2(var_1.d.a, func_5(!func_5(vec2<bool>(var_1.a.x, var_1.d.c), Struct_3(var_1.a, vec2<u32>(u_input.a.x, u_input.a.x), 2147483647i, global0.d, vec3<u32>(54242u, 20627u, global0.e.x))).a.ww, Struct_3(func_2().d.b.b, vec2<u32>(u_input.a.x, u_input.a.x), 1i, Struct_2(vec3<i32>(var_1.d.a.x, 0i, global0.c), Struct_1(1i, vec4<bool>(var_1.a.x, global0.d.c, global0.a.x, var_1.d.c), 42771u, u_input.a), var_1.d.c), min(var_1.e, vec3<u32>(var_1.b.x, u_input.a.x, global0.d.b.c)))).d.b, true), vec3<u32>(func_2().d.b.d.x, abs(~36195u & ~global0.d.b.d.x), ~var_1.d.b.d.x ^ (var_1.e.x >> ((u_input.a.x ^ 1u) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-firstLeadingBit(vec4<i32>(-13067i, var_1.d.a.x, -28936i, var_1.d.b.a))) >> (var_3.d.b.d % vec4<u32>(32u)), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d.b.a, var_3.d.a.x), vec2<i32>(var_3.c, -32372i)), ~0i, var_3.c & var_3.d.a.x), abs(~global0.d.a))), 1i, vec2<f32>(-140f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -492f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-179f, var_0.x)), _wgslsmith_f_op_f32(-141f - var_0.x)))), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(global0.d.a.x & global0.c, 7215i), ~firstLeadingBit(10034i)), firstTrailingBit(var_3.c)));
}

