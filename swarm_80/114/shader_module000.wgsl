struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<f32, 29> = array<f32, 29>(-249f, -181f, 405f, 2200f, 146f, -270f, 774f, 519f, -396f, -147f, 1090f, -308f, 675f, 1153f, 454f, -164f, -377f, -488f, -1000f, -126f, 1123f, 417f, 710f, -498f, -1577f, 2050f, -764f, -207f, 1000f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32) -> vec2<bool> {
    let var_0 = Struct_3(!arg_0, any(select(vec3<bool>(arg_0.x, all(arg_0.ywy), all(arg_0.zz)), !select(arg_0.yxy, arg_0.yzx, arg_0.zxw), select(arg_0.xyw, arg_0.xwy, true))));
    let var_1 = Struct_2(Struct_1(1u, 44937u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1481f + _wgslsmith_f_op_f32(trunc(-743f))), _wgslsmith_f_op_f32(step(arg_1, arg_1)))), arg_0.x, _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a.x, 15878i, u_input.a.x, 44347i), max(u_input.a, ~vec4<i32>(-10989i, u_input.a.x, u_input.a.x, u_input.a.x)))), ~_wgslsmith_mult_vec2_i32(-vec2<i32>(2147483647i, 72252i), vec2<i32>(u_input.a.x, -39376i) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))) & -_wgslsmith_mult_vec2_i32(select(u_input.a.wz, u_input.a.wx, vec2<bool>(false, true)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, 1i), u_input.a.zz, u_input.a.xz)), Struct_1(1u, 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-772f + global0[_wgslsmith_index_u32(23651u, 29u)]) - global0[_wgslsmith_index_u32(4294967295u, 29u)])), arg_0.x, u_input.a ^ abs(max(u_input.a, vec4<i32>(u_input.a.x, 111595i, u_input.a.x, -636i)))));
    global0 = array<f32, 29>();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(~(vec4<u32>(1u, 4294967295u, 0u, 0u) & vec4<u32>(58009u, var_1.c.a, 0u, var_1.c.a))) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(var_1.a.b, var_1.a.b, var_1.c.a, var_1.a.a), ~(~vec4<u32>(var_1.c.a, var_1.a.b, var_1.c.b, 78047u))) % vec4<u32>(32u)), (max(countOneBits(vec4<u32>(0u, var_1.a.b, 1u, var_1.a.a)), ~vec4<u32>(var_1.c.b, var_1.c.b, 47845u, var_1.a.b)) >> (vec4<u32>(49175u, 4294967295u >> (var_1.a.b % 32u), 4294967295u, ~0u) % vec4<u32>(32u))) & countOneBits(~vec4<u32>(var_1.c.b, 19911u, var_1.a.a, 5471u) | firstLeadingBit(vec4<u32>(0u, 32856u, var_1.c.b, var_1.a.b)))), 29u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-337f, -319f) - vec2<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(firstTrailingBit(60394u ^ var_1.c.a), 29u)], -1455f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-186f * arg_1) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 29u)] * 900f))))));
    return select(arg_0.xy, select(!var_0.a.wx, arg_0.xz, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -476f), -367f)) != var_1.c.c), true);
}

fn func_2() -> Struct_2 {
    var var_0 = select(func_3(vec4<bool>(any(vec2<bool>(true, true)), true, ~28834u <= _wgslsmith_clamp_u32(0u, 63331u, 4294967295u), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1350f))), 128f))), vec2<bool>(true, true), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)));
    let var_1 = Struct_2(Struct_1(~67617u, max(~min(1u, 90416u), _wgslsmith_dot_vec4_u32(vec4<u32>(28926u, 70293u, 879u, 4294967295u), ~vec4<u32>(4294967295u, 1u, 38541u, 23136u))), global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 28130u, 4294967295u), vec4<u32>(1u, 23220u, 4294967295u, 0u)) >> (1u % 32u)), 29u)], !any(select(vec2<bool>(false, true), vec2<bool>(false, var_0.x), false)), abs(countOneBits(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)))), abs(_wgslsmith_add_vec2_i32(-(u_input.a.xw | u_input.a.yz), -vec2<i32>(-55942i, 0i))), Struct_1(_wgslsmith_sub_u32(~6087u, 1u), 0u, -203f, false, -firstLeadingBit(~u_input.a)));
    let var_2 = countOneBits(vec2<u32>(1u, 4294967295u));
    var var_3 = max(u_input.a.wx, reverseBits(~var_1.a.e.wx));
    let var_4 = Struct_1(~var_1.a.a, var_2.x ^ var_1.a.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1000f)))), any(select(vec2<bool>(var_1.b.x >= var_1.a.e.x, true), vec2<bool>(true, !var_0.x), vec2<bool>(func_3(vec4<bool>(var_0.x, true, false, var_0.x), var_1.c.c).x, all(vec3<bool>(var_1.c.d, true, true))))), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(var_1.a.e, -(~u_input.a)), var_1.c.e));
    return Struct_2(var_4, var_1.c.e.zw, Struct_1(~var_4.b, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-759f, var_4.c)))), all(select(vec2<bool>(false, var_1.c.d), vec2<bool>(var_4.d, var_0.x), var_4.d && var_0.x)), var_4.e));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_3) -> u32 {
    let var_0 = Struct_1(~(~_wgslsmith_mod_u32(~arg_0.a, ~20166u)), max(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(4294967295u, arg_0.b), min(_wgslsmith_dot_vec2_u32(vec2<u32>(23464u, 1u), vec2<u32>(1u, 33224u)), ~47796u)), arg_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.c) + _wgslsmith_f_op_f32(arg_0.c - arg_0.c)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.c)))), arg_0.d, ~arg_1.c.e);
    global0 = array<f32, 29>();
    let var_1 = select(vec2<bool>(func_2().a.d, _wgslsmith_div_f32(arg_1.c.c, arg_1.c.c) > _wgslsmith_f_op_f32(-arg_1.a.c)), arg_3.a.zw, firstTrailingBit(var_0.e.x) > 2147483647i);
    var var_2 = true;
    let var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.c, -653f))), -1719f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.c.c), -1407f, true)) - var_0.c), 685f), vec4<f32>(var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), -1162f), -212f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(406f)) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1.a.a, 29u)] + 1058f)))));
    return 68968u;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec4<f32>) -> Struct_3 {
    let var_0 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, -1i), vec2<i32>(u_input.a.x, -32530i)), _wgslsmith_add_vec2_i32(u_input.a.zw, vec2<i32>(-165i, 17105i))), -u_input.a.x), 16656i);
    let var_1 = ~var_0.x;
    let var_2 = arg_1;
    let var_3 = Struct_2(Struct_1(1u, arg_0.x, _wgslsmith_f_op_f32(367f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1060f - arg_2.x))), select(func_3(arg_1.a, arg_2.x).x, any(vec4<bool>(true, var_2.b, arg_1.a.x, arg_1.a.x)), all(var_2.a)), select(vec4<i32>(u_input.a.x, 0i | var_1, firstTrailingBit(var_1), -42950i), (u_input.a << (vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x) % vec4<u32>(32u))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, 22723u, 4294967295u, arg_0.x), vec4<u32>(arg_0.x, 13097u, arg_0.x, 18386u)) % vec4<u32>(32u)), vec4<bool>(arg_1.a.x, true, var_2.b, any(var_2.a.wz)))), -vec2<i32>(~(~(-10761i)), 0i), func_2().c);
    var var_4 = var_3.a;
    return Struct_3(vec4<bool>(_wgslsmith_sub_i32(-1i, _wgslsmith_div_i32(var_1, -1i)) > countOneBits(~(-1i)), arg_2.x != _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(49513u, 29u)])), any(!arg_1.a.yzy), true), arg_1.b);
}

fn func_1() -> Struct_1 {
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    var var_0 = 0i;
    global0 = array<f32, 29>();
    let var_1 = func_5(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_add_u32(1u, ~1u), select(4294967295u, 11051u, true) & 1u, 48838u), vec3<u32>(func_4(Struct_1(1u, 0u, -1000f, false, vec4<i32>(-74700i, u_input.a.x, 41337i, u_input.a.x)), func_2(), max(vec3<i32>(-1i, u_input.a.x, u_input.a.x), u_input.a.zzz), Struct_3(vec4<bool>(true, false, true, false), true)), ~(4294967295u >> (1u % 32u)), 52235u), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(59527u, 4294967295u), vec2<u32>(0u, 10250u)), ~50617u, 1u), vec3<u32>(func_4(Struct_1(71274u, 9434u, -1366f, true, u_input.a), Struct_2(Struct_1(1u, 71171u, 566f, true, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec2<i32>(u_input.a.x, u_input.a.x), Struct_1(0u, 31728u, 147f, false, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 76138i))), vec3<i32>(u_input.a.x, 0i, u_input.a.x), Struct_3(vec4<bool>(true, true, true, false), false)), 49565u, ~0u))), Struct_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec2<bool>(false, false)), false, all(vec2<bool>(false, true))), true), -2147483647i > ~select(u_input.a.x, 24049i, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(791f, global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(20661u, 29u)], -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(61005u, 29u)], 1066f, global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(21333u, 29u)]) + vec4<f32>(global0[_wgslsmith_index_u32(16331u, 29u)], global0[_wgslsmith_index_u32(27023u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], 262f)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), true))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-532f, global0[_wgslsmith_index_u32(49948u, 29u)], -541f, -1627f)))) * vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~12622u, 29u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 29u)]), 492f, global0[_wgslsmith_index_u32(1u, 29u)])));
    return Struct_1(0u, select(_wgslsmith_mod_u32(~1u, 30808u), 58281u, var_1.b && false) & (1u | ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 7460u), vec3<u32>(23656u, 7451u, 54250u))), -1328f, any(!select(select(var_1.a.xzy, var_1.a.zwx, var_1.a.xzy), select(var_1.a.wyy, vec3<bool>(false, var_1.b, var_1.a.x), false), func_5(vec3<u32>(4294967295u, 5925u, 93606u), Struct_3(vec4<bool>(var_1.a.x, var_1.b, var_1.a.x, true), var_1.b), vec4<f32>(global0[_wgslsmith_index_u32(33540u, 29u)], 410f, global0[_wgslsmith_index_u32(66402u, 29u)], -912f)).a.x)), _wgslsmith_add_vec4_i32((vec4<i32>(u_input.a.x, u_input.a.x, 15689i, -5094i) | (u_input.a | u_input.a)) | u_input.a, ~(~func_2().c.e)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 29>();
    var var_0 = func_1();
    let var_1 = func_2().a;
    global0 = array<f32, 29>();
    var var_2 = false;
    let var_3 = var_1;
    let var_4 = (any(select(!vec3<bool>(false, false, var_3.d), select(vec3<bool>(false, var_1.d, var_3.d), vec3<bool>(false, var_1.d, var_3.d), vec3<bool>(var_1.d, false, false)), vec3<bool>(false, var_3.d, var_3.d))) & func_1().d) && true;
    let var_5 = countOneBits(_wgslsmith_sub_vec4_u32((vec4<u32>(76541u, var_1.b, 0u, 4315u) >> (vec4<u32>(var_3.b, var_1.b, var_1.b, var_3.b) % vec4<u32>(32u))) >> (~vec4<u32>(0u, 32095u, var_0.b, var_1.b) % vec4<u32>(32u)), ~vec4<u32>(var_3.b, var_3.b, 21288u, var_1.b))) | ~reverseBits(firstLeadingBit(vec4<u32>(var_0.a, var_0.a, 24654u, 26452u)));
    let var_6 = Struct_2(var_3, abs(_wgslsmith_mod_vec2_i32(abs(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 2147483647i), var_1.e.yz)), select(var_1.e.zx, var_0.e.yy, vec2<bool>(false, var_3.d)) & vec2<i32>(29390i, var_3.e.x))), Struct_1(~var_1.b, ~_wgslsmith_dot_vec4_u32(var_5 ^ vec4<u32>(var_0.a, var_1.b, 24841u, 14155u), var_5), var_1.c, true, vec4<i32>(0i, u_input.a.x, countOneBits(-16084i), u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_6.c.a, 57925u));
}

