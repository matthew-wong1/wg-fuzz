struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: Struct_1;

var<private> global2: Struct_3;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c)));
    var_0 = global1.c;
    global1 = global2.e;
    let var_1 = _wgslsmith_add_i32(u_input.b, -global2.e.a.x) == firstTrailingBit(-7642i);
    var var_2 = vec2<u32>(42630u, ~5466u);
    return global2.e;
}

fn func_3(arg_0: f32, arg_1: f32) -> vec4<f32> {
    let var_0 = _wgslsmith_mod_i32(-global1.a.x ^ global1.a.x, global1.a.x);
    let var_1 = Struct_3(~min(_wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.a.x, 8547u, 100464u), global2.a, vec3<bool>(true, false, global2.e.b)), u_input.a), ~u_input.a), global1.a.x, 79414i, func_1(Struct_2(arg_1)), global2.e);
    let var_2 = Struct_3(vec3<u32>(0u, (~var_1.a.x << (select(0u, 0u, false) % 32u)) & ~1u, ~1u), var_1.d.a.x & global1.a.x, -38982i, var_1.d, Struct_1(((vec4<i32>(12467i, 1i, u_input.b, -1i) | global2.e.a) >> ((vec4<u32>(29778u, var_1.a.x, u_input.a.x, 4294967295u) & vec4<u32>(0u, 40967u, global0[_wgslsmith_index_u32(65258u, 24u)], 0u)) % vec4<u32>(32u))) >> (~countOneBits(vec4<u32>(global0[_wgslsmith_index_u32(var_1.a.x, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], 39646u, 0u)) % vec4<u32>(32u)), !any(!vec2<bool>(global2.e.b, global1.b)), global1.c));
    let var_3 = var_1.a.x;
    var var_4 = 22218u;
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-463f, -114f, 661f, 2551f) + vec4<f32>(global1.c.x, arg_0, -734f, arg_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(923f, -1116f, 307f, -169f) + vec4<f32>(525f, arg_0, -675f, 3120f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global1.c.x, 181f, arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(481f, var_2.d.c.x, 270f, -263f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-785f, arg_1, 985f, 1385f))))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.e.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.d.c.x, 2055f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.d.c.x + global1.c.x))))))));
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-882f)), -562f, _wgslsmith_f_op_f32(round(global2.e.c.x)), _wgslsmith_div_f32(global2.e.c.x, 942f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_f32(global1.c.x, global2.e.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1628f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-728f, global2.d.c.x, -396f, global1.c.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(326f, global2.d.c.x, -321f, -1314f))), vec4<bool>(global1.b, false, true, true))))) + vec4<f32>(global2.e.c.x, 611f, global2.d.c.x, _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_f32(-494f, _wgslsmith_f_op_f32(-global1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1174f + global2.d.c.x)))).x));
    global1 = global2.d;
    var var_1 = Struct_3(vec3<u32>(u_input.a.x, select(_wgslsmith_clamp_u32(u_input.a.x, 50766u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(83608u, 24u)], 24u)]), _wgslsmith_div_u32(1u, 4294967295u), false) << (0u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(max(15956u, 27535u), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global2.a.x, 24u)], global2.a.x), ~4294967295u), ~firstLeadingBit(u_input.a))), -2147483647i, -global2.d.a.x, func_1(Struct_2(_wgslsmith_f_op_f32(global2.e.c.x - _wgslsmith_f_op_f32(global1.c.x * -1223f)))), Struct_1(~global2.e.a, select(min(0u, 17277u), global2.a.x | 20839u, any(vec2<bool>(global2.d.b, global1.b))) <= 21666u, _wgslsmith_f_op_vec2_f32(global1.c * vec2<f32>(global2.d.c.x, global2.e.c.x))));
    let var_2 = firstTrailingBit(-(~_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(-7720i, global1.a.x)), vec2<i32>(-4564i, global2.b) << (var_1.a.zx % vec2<u32>(32u)))));
    var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(-954f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -256f) - 124f), global2.d.c.x, global1.c.x), vec4<f32>(_wgslsmith_f_op_f32(step(var_1.e.c.x, -243f)), _wgslsmith_f_op_f32(global2.d.c.x - var_0.x), global2.e.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_3(1000f, _wgslsmith_f_op_f32(-659f * global2.e.c.x))).x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1042f * var_1.e.c.x), _wgslsmith_f_op_f32(abs(var_1.e.c.x))))))));
    return global1.a.x;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_3 {
    global1 = func_1(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x * 1418f) + _wgslsmith_f_op_f32(-arg_0)))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-310f * 1000f)), _wgslsmith_div_f32(491f, arg_1.d.c.x))), _wgslsmith_f_op_vec4_f32(func_3(-226f, -491f)).x)).x);
    global1 = func_1(Struct_2(_wgslsmith_f_op_vec4_f32(func_3(479f, global2.e.c.x)).x));
    global2 = Struct_3(~max(max(max(global2.a, u_input.a), vec3<u32>(global0[_wgslsmith_index_u32(11027u, 24u)], global2.a.x, global0[_wgslsmith_index_u32(13467u, 24u)]) >> (u_input.a % vec3<u32>(32u))), vec3<u32>(arg_1.a.x << (global0[_wgslsmith_index_u32(34905u, 24u)] % 32u), u_input.a.x, ~1u)), global1.a.x, 45638i, Struct_1(vec4<i32>(min(firstLeadingBit(1i), arg_1.e.a.x), _wgslsmith_mult_i32(global1.a.x, arg_3.x), 15502i, abs(global1.a.x)), global2.e.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global2.d.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.d.c)))), global2.e);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(floor(global2.d.c.x)), -2782f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.c.x, 988f))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global2.e.c))))));
    let var_1 = 4294967295u;
    var var_2 = func_1(Struct_2(_wgslsmith_f_op_f32(min(232f, var_0.x))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1060f, var_2.c.x))))))));
    let var_4 = func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1369f - var_2.c.x)))))), Struct_3(u_input.a, max(global1.a.x & -1i, func_2(u_input.b)) ^ global2.d.a.x, ~_wgslsmith_mod_i32(1i, -18439i) & _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, 56203i), vec3<i32>(global2.b, 21523i, var_2.a.x)), func_1(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -435f))), global2.d), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1483f)), vec4<i32>(global2.e.a.x, func_1(Struct_2(-359f)).a.x, ~(-global2.e.a.x | var_2.a.x), func_1(Struct_2(_wgslsmith_f_op_f32(min(var_2.c.x, global1.c.x)))).a.x));
    global0 = array<u32, 24>();
    global2 = Struct_3(firstTrailingBit(vec3<u32>(firstLeadingBit(1u), 40014u, var_4.a.x)), abs(_wgslsmith_mult_i32(-global1.a.x, select(global1.a.x, u_input.b, global2.d.b))) & func_4(var_4.e.c.x, var_4, Struct_2(1000f), vec4<i32>(47146i, 0i, abs(global2.d.a.x), _wgslsmith_mod_i32(37185i, global1.a.x))).d.a.x, global1.a.x ^ ~(~u_input.b), Struct_1(select(global2.d.a, vec4<i32>(~global2.d.a.x, func_1(Struct_2(global2.e.c.x)).a.x, -24455i & global1.a.x, _wgslsmith_mult_i32(4138i, var_4.e.a.x)), select(!vec4<bool>(var_4.e.b, false, false, true), select(vec4<bool>(var_4.e.b, false, var_2.b, var_4.e.b), vec4<bool>(global1.b, var_4.e.b, global1.b, true), vec4<bool>(var_2.b, var_4.e.b, true, true)), func_1(Struct_2(-1000f)).b)), !(false | var_2.b) && true, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_4.e.c), _wgslsmith_f_op_vec2_f32(-global2.e.c), global1.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 2067f))))), Struct_1(select(vec4<i32>(u_input.b, 48840i, -2460i, 0i) << ((vec4<u32>(77390u, 16219u, 61575u, global0[_wgslsmith_index_u32(77600u, 24u)]) | vec4<u32>(20989u, 4294967295u, var_1, 8219u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a.x, var_2.a.x, global1.a.x, u_input.b), global1.a) << (reverseBits(vec4<u32>(5050u, 46155u, global2.a.x, 42781u)) % vec4<u32>(32u)), select(vec4<bool>(var_4.d.b, global2.e.b, false, false), !vec4<bool>(global1.b, true, false, var_4.d.b), vec4<bool>(var_4.d.b, global1.b, global2.e.b, true))), global1.b, _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) - _wgslsmith_f_op_f32(floor(var_4.e.c.x))), var_0.x)).xw));
    var var_5 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -861f), _wgslsmith_f_op_f32(-770f + global2.d.c.x))) + 976f) * _wgslsmith_f_op_f32(var_2.c.x * -832f)));
    global2 = Struct_3(abs(~vec3<u32>(1u, var_1 >> (55790u % 32u), 29027u)), ~0i ^ global2.d.a.x, 1i ^ -global2.e.a.x, var_4.e, Struct_1(var_2.a, all(select(vec2<bool>(true, global1.b), !vec2<bool>(var_2.b, global1.b), var_4.d.b)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.a, 848f))), vec2<f32>(-859f, -1520f), !(!var_2.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(539f, _wgslsmith_f_op_f32(ceil(-1195f)), _wgslsmith_f_op_vec4_f32(func_3(-1326f, global2.e.c.x)).x) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, -1057f, -161f) + vec3<f32>(global2.e.c.x, 2157f, global1.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, 1573f, global1.c.x) + vec3<f32>(global1.c.x, 807f, 3123f))))) + vec3<f32>(var_4.d.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.e.c.x - var_5.a), func_4(-298f, Struct_3(var_4.a, 0i, var_2.a.x, Struct_1(var_2.a, false, vec2<f32>(1278f, var_0.x)), var_4.e), Struct_2(var_3), vec4<i32>(10954i, var_2.a.x, global1.a.x, -25910i)).d.c.x), -1000f)), _wgslsmith_mult_u32(~select(var_1, ~var_4.a.x, true), _wgslsmith_add_u32(~41345u, var_1)));
}

