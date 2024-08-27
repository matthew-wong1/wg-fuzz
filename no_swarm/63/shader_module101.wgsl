struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<bool>(true, true, true, false), 1573f), Struct_1(vec4<bool>(false, false, true, true), -242f), Struct_1(vec4<bool>(true, false, true, false), -743f), Struct_1(vec4<bool>(false, true, true, true), 275f), Struct_1(vec4<bool>(true, false, false, false), -523f), Struct_1(vec4<bool>(false, false, false, true), -384f), Struct_1(vec4<bool>(false, true, true, true), 1024f), Struct_1(vec4<bool>(false, true, false, false), 187f), Struct_1(vec4<bool>(false, false, false, true), 245f), Struct_1(vec4<bool>(false, false, false, true), 516f), Struct_1(vec4<bool>(true, false, false, true), -148f), Struct_1(vec4<bool>(false, true, false, false), 1000f), Struct_1(vec4<bool>(false, true, false, true), 472f), Struct_1(vec4<bool>(true, false, true, true), -1731f));

var<private> global1: array<i32, 20>;

var<private> global2: vec2<u32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<bool> {
    global1 = array<i32, 20>();
    global1 = array<i32, 20>();
    var var_0 = Struct_1(vec4<bool>(any(vec2<bool>(true, true)), _wgslsmith_div_u32(global2.x, 97022u) <= ~(~global2.x), !(all(vec3<bool>(false, false, true)) || true), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2209f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1198f)))))) * -1215f));
    var var_1 = vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 20u)], -23133i, select(_wgslsmith_mod_i32(u_input.a, i32(-1i) * -9829i), firstLeadingBit(u_input.a), var_0.a.x));
    var var_2 = abs(vec3<i32>(((-13702i | var_1.x) ^ -8483i) | ~(-2147483647i), var_1.x, countOneBits(47336i)));
    return var_0.a;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec4<u32>) -> i32 {
    var var_0 = 54218u;
    let var_1 = vec4<u32>(~(~global2.x), ~_wgslsmith_clamp_u32(40747u, global2.x, _wgslsmith_clamp_u32(min(arg_2.x, 1u), arg_2.x, 1u)), arg_2.x, 10982u);
    var var_2 = -2147483647i;
    var var_3 = Struct_4(Struct_1(select(vec4<bool>(arg_0.b.x, any(vec3<bool>(true, arg_0.b.x, arg_0.b.x)), true, true | arg_0.b.x), !func_3(), arg_0.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + -583f), -1716f))), ~(~select(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(1u, 20u)], arg_1, global1[_wgslsmith_index_u32(1u, 20u)]), vec4<i32>(-29886i, arg_1, 6637i, -2147483647i), vec4<bool>(arg_0.b.x, arg_0.b.x, false, false)) & _wgslsmith_clamp_vec4_i32(max(vec4<i32>(-16012i, -2147483647i, arg_1, 34483i), vec4<i32>(-7278i, arg_0.a.x, -11066i, 2147483647i)), reverseBits(vec4<i32>(27123i, arg_0.a.x, -2147483647i, -23912i)), vec4<i32>(arg_0.a.x, arg_1, 13482i, 23861i) << (vec4<u32>(41195u, u_input.b.x, arg_2.x, 0u) % vec4<u32>(32u)))));
    global2 = vec2<u32>(u_input.b.x, 0u);
    return -_wgslsmith_dot_vec2_i32(min(var_3.b.yz, arg_0.a.zy), min(vec2<i32>(~var_3.b.x, -arg_0.a.x), vec2<i32>(min(u_input.a, var_3.b.x), 1i)));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: i32) -> Struct_1 {
    var var_0 = -vec3<i32>(arg_3 >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, u_input.b.x, u_input.b.x), u_input.b) % 32u), func_2(Struct_2(vec3<i32>(2147483647i, arg_2, arg_2), vec2<bool>(true, arg_0)), -arg_3, ~vec4<u32>(1u, 0u, global2.x, global2.x)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global2.x, 0u), 20u)]) ^ _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(arg_1, -73309i, global1[_wgslsmith_index_u32(4294967295u, 20u)])), abs(vec3<i32>(u_input.a, -6822i, arg_1))), max(vec3<i32>(arg_2, u_input.a, -2147483647i) ^ vec3<i32>(-35440i, arg_2, arg_2), firstLeadingBit(vec3<i32>(46397i, u_input.a, arg_3))), vec3<i32>(31557i, u_input.a, countOneBits(arg_2))), _wgslsmith_mod_vec3_i32(-vec3<i32>(arg_2, 6459i, arg_1) >> (~vec3<u32>(11304u, 37452u, 78982u) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(global1[_wgslsmith_index_u32(0u, 20u)], 2147483647i, arg_1))));
    global2 = u_input.b.xy;
    let var_1 = Struct_2(firstLeadingBit(select(vec3<i32>(~u_input.a, 39136i, u_input.a), vec3<i32>(global1[_wgslsmith_index_u32(~1u, 20u)], ~(-9042i), arg_3 ^ var_0.x), all(!vec3<bool>(false, false, arg_0)))), func_3().wx);
    let var_2 = global2.x;
    let var_3 = Struct_4(Struct_1(vec4<bool>(arg_0, all(select(vec4<bool>(false, var_1.b.x, arg_0, false), vec4<bool>(true, false, false, arg_0), vec4<bool>(arg_0, arg_0, false, false))), !any(vec4<bool>(false, true, arg_0, var_1.b.x)), all(select(vec3<bool>(true, true, arg_0), vec3<bool>(false, true, var_1.b.x), arg_0))), 1f), vec4<i32>(reverseBits(u_input.a), 3736i, -1i, _wgslsmith_add_i32(-(-2147483647i >> (u_input.b.x % 32u)), (1i >> (u_input.b.x % 32u)) >> (4303u % 32u))));
    return var_3.a;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> f32 {
    var var_0 = -39389i << (_wgslsmith_add_u32(72306u, ~36101u & global2.x) % 32u);
    global2 = reverseBits(_wgslsmith_mod_vec2_u32(~select(u_input.b.zz, firstLeadingBit(u_input.b.zx), arg_0.a.x), u_input.b.xy));
    var var_1 = Struct_2(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1, arg_1, -1i), abs(vec4<i32>(-10176i, 18395i, 4396i, global1[_wgslsmith_index_u32(global2.x, 20u)]) << (vec4<u32>(global2.x, 68903u, u_input.b.x, 56034u) % vec4<u32>(32u)))), ~arg_1, -2147483647i), vec2<bool>(arg_0.a.x, arg_0.a.x));
    var var_2 = Struct_2(countOneBits(countOneBits(-vec3<i32>(u_input.a, global1[_wgslsmith_index_u32(global2.x, 20u)], 484i)) << (u_input.b % vec3<u32>(32u))), func_3().yy);
    global1 = array<i32, 20>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.b)), arg_0.b))), arg_0.b)) + -264f);
}

fn func_5(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_3 {
    global1 = array<i32, 20>();
    var var_0 = vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.x))), arg_3.x);
    var var_1 = ~arg_2.a.x;
    let var_2 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0, ~arg_0), u_input.b.x, ~1u, reverseBits(~1u));
    var_1 = global1[_wgslsmith_index_u32(global2.x, 20u)];
    return Struct_3(-vec3<i32>(0i, ~(-2535i), 59481i >> (_wgslsmith_add_u32(39739u, u_input.b.x) % 32u)));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_4) -> Struct_2 {
    let var_0 = Struct_4(Struct_1(func_1(arg_1.a.a.x, -1i, countOneBits(93263i), u_input.a).a, 465f), min(vec4<i32>(2147483647i, firstLeadingBit(~2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_2.b.x) ^ arg_2.b.zw, ~arg_2.b.yy), func_5(vec2<u32>(u_input.b.x, u_input.b.x), false, Struct_2(vec3<i32>(-1i, 1i, 2147483647i), arg_1.a.a.yy), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1257f, arg_2.a.b, arg_1.a.b)))).a.x), countOneBits(countOneBits(vec4<i32>(arg_2.b.x, global1[_wgslsmith_index_u32(4294967295u, 20u)], arg_1.b.x, -2147483647i)))));
    global0 = array<Struct_1, 14>();
    let var_1 = global0[_wgslsmith_index_u32(global2.x, 14u)];
    let var_2 = func_1(true, ~(~(-1i)), -_wgslsmith_div_i32(~34624i, arg_0.a.x), ~max(var_0.b.x, -18924i));
    var var_3 = -12346i;
    return Struct_2(abs(_wgslsmith_mod_vec3_i32(firstLeadingBit(var_0.b.yyz), firstLeadingBit(~var_0.b.xyw))), var_0.a.a.xx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(u_input.b.zx, true, Struct_2(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.a, u_input.a, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -34564i, u_input.a), vec3<i32>(-1i, -1i, u_input.a))), vec2<bool>(true, true)), vec3<f32>(631f, _wgslsmith_f_op_f32(func_4(func_1(false, u_input.a, global1[_wgslsmith_index_u32(u_input.b.x, 20u)], u_input.a), 0i)), -512f)), Struct_4(global0[_wgslsmith_index_u32(28340u, 14u)], _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, ~u_input.a, u_input.a, 1i), -(vec4<i32>(-2147483647i, -2147483647i, -1i, 0i) & vec4<i32>(global1[_wgslsmith_index_u32(76168u, 20u)], global1[_wgslsmith_index_u32(0u, 20u)], 1i, -24724i)))), Struct_4(Struct_1(func_3(), -2800f), firstLeadingBit(_wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(global2.x, 20u)], u_input.a, u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(52366u, 20u)], global1[_wgslsmith_index_u32(98210u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)]), vec4<i32>(33624i, global1[_wgslsmith_index_u32(global2.x, 20u)], 0i, -2147483647i), vec4<i32>(33109i, global1[_wgslsmith_index_u32(53364u, 20u)], global1[_wgslsmith_index_u32(u_input.b.x, 20u)], 22254i))))));
    global1 = array<i32, 20>();
    global2 = firstLeadingBit(u_input.b.yy & ~(u_input.b.xy | vec2<u32>(global2.x, 1u)));
    global2 = _wgslsmith_sub_vec2_u32(u_input.b.xz, abs(_wgslsmith_mod_vec2_u32(u_input.b.xy, vec2<u32>(u_input.b.x, u_input.b.x) & u_input.b.yy)));
    let var_1 = vec4<bool>(var_0.a.x <= func_5(abs(u_input.b.xy), !(var_0.b.x || var_0.b.x), var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-911f, -1425f, 545f) * vec3<f32>(-617f, 210f, -953f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-1026f, -802f, 549f), vec3<f32>(-1904f, 627f, 1318f)))).a.x, !any(select(select(vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true), false), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true), var_0.b.x)), true, true);
    global1 = array<i32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(57751u, vec3<i32>(39931i, -2147483647i | ~select(1i, -12071i, var_1.x), _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_0.a.x, u_input.a), u_input.a), 1i)), ~_wgslsmith_div_vec4_i32(select(-vec4<i32>(1i, global1[_wgslsmith_index_u32(u_input.b.x, 20u)], 1i, u_input.a), -vec4<i32>(-36574i, global1[_wgslsmith_index_u32(u_input.b.x, 20u)], -32247i, 1i), func_1(var_0.b.x, 50644i, u_input.a, 44449i).a.x), vec4<i32>(2147483647i, u_input.a, 1i, reverseBits(-2147483647i))), -(firstTrailingBit(-var_0.a) ^ func_5(min(u_input.b.yy, u_input.b.zx), var_1.x, func_6(Struct_3(vec3<i32>(var_0.a.x, global1[_wgslsmith_index_u32(global2.x, 20u)], -1i)), Struct_4(Struct_1(var_1, 318f), vec4<i32>(-723i, -45444i, 33066i, 1i)), Struct_4(Struct_1(vec4<bool>(false, var_0.b.x, false, var_1.x), -190f), vec4<i32>(-27909i, var_0.a.x, -2147483647i, 2147483647i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(522f, 1060f, -817f) - vec3<f32>(-302f, -1700f, 682f))).a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -758f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(584f * 363f)))));
}

