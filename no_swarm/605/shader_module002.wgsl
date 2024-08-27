struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec4<f32>(-827f, 344f, -2026f, 117f), Struct_1(vec2<u32>(1u, 65004u), 417f, vec4<u32>(3678u, 13353u, 0u, 1309u), 37342u), vec3<f32>(1000f, -195f, -1502f), vec4<i32>(-1i, 0i, 1i, 25327i), -392f), Struct_2(vec4<f32>(1523f, 913f, 806f, -1626f), Struct_1(vec2<u32>(92604u, 91055u), 427f, vec4<u32>(1u, 69888u, 24466u, 2308u), 1u), vec3<f32>(-1082f, -1000f, -576f), vec4<i32>(-7790i, 544i, 18654i, 25671i), -232f), Struct_2(vec4<f32>(-1062f, -390f, -2503f, 1404f), Struct_1(vec2<u32>(23936u, 22893u), 364f, vec4<u32>(6836u, 4294967295u, 19336u, 67752u), 4294967295u), vec3<f32>(2221f, 1109f, -1377f), vec4<i32>(28820i, i32(-2147483648), 1i, 67521i), 248f), Struct_2(vec4<f32>(249f, -2073f, -1305f, -603f), Struct_1(vec2<u32>(34760u, 1u), 381f, vec4<u32>(19721u, 4294967295u, 17404u, 0u), 4294967295u), vec3<f32>(-131f, -950f, 1000f), vec4<i32>(i32(-2147483648), -34022i, -57480i, 2147483647i), 853f), Struct_2(vec4<f32>(626f, -400f, -343f, -1018f), Struct_1(vec2<u32>(1u, 4294967295u), -1000f, vec4<u32>(0u, 4294967295u, 4294967295u, 125832u), 31433u), vec3<f32>(-113f, 1223f, 347f), vec4<i32>(-48620i, -1i, 21215i, 2147483647i), 1305f), Struct_2(vec4<f32>(365f, -922f, -146f, -1000f), Struct_1(vec2<u32>(1u, 60147u), 101f, vec4<u32>(1723u, 4294967295u, 24116u, 4294967295u), 4294967295u), vec3<f32>(-669f, -594f, -727f), vec4<i32>(2147483647i, 33387i, i32(-2147483648), 0i), 673f), Struct_2(vec4<f32>(737f, -417f, 612f, 433f), Struct_1(vec2<u32>(4294967295u, 28948u), -538f, vec4<u32>(13166u, 0u, 76251u, 0u), 4294967295u), vec3<f32>(1731f, 845f, 1467f), vec4<i32>(19853i, -8733i, 2147483647i, -474i), 239f), Struct_2(vec4<f32>(-546f, -1000f, -709f, 768f), Struct_1(vec2<u32>(1u, 12472u), 213f, vec4<u32>(22690u, 0u, 34673u, 4294967295u), 4294967295u), vec3<f32>(-448f, 675f, -1412f), vec4<i32>(1i, i32(-2147483648), 2147483647i, 0i), -288f));

var<private> global1: Struct_3;

var<private> global2: array<i32, 24>;

var<private> global3: Struct_5;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> u32 {
    return _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(62999u, u_input.b), global3.a.c.wz) << (global3.b.c.zz % vec2<u32>(32u)), ~min(vec2<u32>(~0u, ~global3.a.a.x), vec2<u32>(~global1.a.c.x, 79926u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = Struct_4(select(vec2<bool>(all(vec3<bool>(true, true, false)), false), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(select(false, false, false), true), any(vec3<bool>(false, false, false)))), arg_1);
    var var_1 = ~vec3<u32>(func_3(global0[_wgslsmith_index_u32(4294967295u, 8u)], ~global2[_wgslsmith_index_u32(73778u, 24u)]), abs(~1u) | u_input.a.x, 19701u);
    global0 = array<Struct_2, 8>();
    var_0 = Struct_4(select(vec2<bool>(!var_0.a.x, !all(vec4<bool>(true, var_0.a.x, true, true))), select(var_0.a, !(!var_0.a), !var_0.a), vec2<bool>(true, var_0.a.x)), Struct_2(global1.b.a, arg_1.b, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_1.a.zyy), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1136f, global3.a.b, -1000f), _wgslsmith_f_op_vec3_f32(exp2(arg_1.a.zzx)))))), arg_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(144f, _wgslsmith_f_op_f32(select(552f, 604f, var_0.a.x)), all(vec4<bool>(true, var_0.a.x, true, true)))) * _wgslsmith_f_op_f32(max(arg_0.x, global3.a.b)))));
    let var_2 = Struct_4(!vec2<bool>(select(false, false, true), !(var_0.a.x && var_0.a.x)), arg_1);
    return Struct_3(global1.a, var_2.b);
}

fn func_4(arg_0: Struct_3) -> Struct_4 {
    let var_0 = func_2(_wgslsmith_div_vec2_f32(vec2<f32>(global3.a.b, global3.b.b), arg_0.b.a.ww), global1.b).b;
    var var_1 = ~(~u_input.a);
    var var_2 = ~(~(~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(var_0.d, vec4<i32>(var_0.d.x, -1i, global2[_wgslsmith_index_u32(3844u, 24u)], global1.b.d.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.b.d.x, 1865i, global1.b.d.x, 10650i), vec4<i32>(-39761i, 4735i, 27295i, global2[_wgslsmith_index_u32(0u, 24u)])))));
    var var_3 = ~firstLeadingBit(global3.b.c.xy);
    var var_4 = -_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(arg_0.b.d.zx, ~countOneBits(vec2<i32>(1i, arg_0.b.d.x))), vec2<i32>(2147483647i, -1i));
    return Struct_4(select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), var_1.x >= 1u), !select(vec2<bool>(true, false), vec2<bool>(true, true), true)), !select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), true), vec2<bool>(true, true)), global0[_wgslsmith_index_u32(global3.b.a.x, 8u)]);
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: i32) -> u32 {
    global1 = Struct_3(Struct_1(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.b.b.d, global1.a.c.x), global3.a.a), global1.a.b, select(_wgslsmith_sub_vec4_u32(func_4(Struct_3(Struct_1(vec2<u32>(1u, global3.a.c.x), 979f, arg_1.b.b.c, 4294967295u), global0[_wgslsmith_index_u32(13361u, 8u)])).b.b.c, global3.a.c), global1.a.c, select(select(vec4<bool>(true, arg_1.a.x, arg_1.a.x, false), vec4<bool>(arg_1.a.x, arg_1.a.x, true, true), vec4<bool>(false, true, arg_1.a.x, false)), select(vec4<bool>(false, arg_1.a.x, arg_1.a.x, false), vec4<bool>(arg_1.a.x, false, true, arg_1.a.x), vec4<bool>(arg_1.a.x, arg_1.a.x, false, false)), !vec4<bool>(false, arg_1.a.x, false, arg_1.a.x))), ~max(_wgslsmith_add_u32(global1.a.c.x, arg_1.b.b.c.x), _wgslsmith_mod_u32(global1.b.b.d, 4294967295u))), Struct_2(_wgslsmith_f_op_vec4_f32(-global1.b.a), global1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.b.b.b, -287f, -1000f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1446f, arg_1.b.c.x, -519f)))))), ~_wgslsmith_add_vec4_i32(global1.b.d, min(vec4<i32>(arg_0, -28577i, global2[_wgslsmith_index_u32(13347u, 24u)], arg_0), vec4<i32>(36148i, 16825i, 17777i, -5896i))), global1.a.b));
    global0 = array<Struct_2, 8>();
    let var_0 = ~u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(199f * global1.b.c.x));
    global0 = array<Struct_2, 8>();
    return var_0;
}

fn func_1() -> Struct_3 {
    let var_0 = vec3<u32>(u_input.b, _wgslsmith_div_u32(func_5(_wgslsmith_mod_i32(-3665i, _wgslsmith_clamp_i32(global1.b.d.x, global2[_wgslsmith_index_u32(22535u, 24u)], global1.b.d.x)), func_4(func_2(vec2<f32>(1000f, global1.a.b), Struct_2(vec4<f32>(620f, 178f, -1000f, global1.b.b.b), global3.a, global1.b.a.zwy, global1.b.d, global1.b.c.x))), global2[_wgslsmith_index_u32(max(0u, global3.a.d), 24u)]), u_input.a.x), ~global1.b.b.a.x);
    let var_1 = Struct_3(global3.a, func_4(Struct_3(global1.b.b, func_4(Struct_3(global3.a, global1.b)).b)).b);
    global1 = var_1;
    var var_2 = max(-_wgslsmith_clamp_i32(var_1.b.d.x, 19833i, min(-2147483647i, _wgslsmith_div_i32(global1.b.d.x, 141i))), _wgslsmith_dot_vec4_i32(global1.b.d << ((var_1.b.b.c | global3.a.c) % vec4<u32>(32u)), -global1.b.d));
    let var_3 = Struct_5(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global3.a.b, global3.a.b), func_2(var_1.b.a.wz, global1.b).a.b)), var_1.b).b.b, Struct_1(vec2<u32>(global3.a.d << (9408u % 32u), 73395u) ^ (vec2<u32>(global3.b.c.x, var_1.b.b.a.x) | var_1.a.a), 1019f, vec4<u32>(1u, var_1.a.c.x, abs(global1.a.c.x), 102917u), u_input.a.x));
    return func_2(var_1.b.c.xz, global0[_wgslsmith_index_u32(var_1.b.b.c.x, 8u)]);
}

fn func_6(arg_0: Struct_3, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = !all(!vec4<bool>(all(vec2<bool>(false, false)), all(vec3<bool>(arg_1.x, arg_1.x, false)), arg_1.x & arg_1.x, false));
    let var_1 = ~abs(global1.b.d.x);
    global1 = arg_0;
    let var_2 = func_1().a;
    var var_3 = firstLeadingBit(vec3<u32>(global3.a.a.x, var_2.c.x, ~(~1u))) | _wgslsmith_sub_vec3_u32(global3.a.c.zyx, var_2.c.wxy);
    return Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(arg_0.b.a)), _wgslsmith_f_op_vec4_f32(max(arg_0.b.a, vec4<f32>(_wgslsmith_f_op_f32(-global1.b.b.b), _wgslsmith_f_op_f32(-481f + -1370f), func_1().b.e, global1.a.b)))), var_2, vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.b.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.b.b * -2178f) - _wgslsmith_f_op_f32(max(750f, global1.b.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1968f))), global1.b.b.b), firstTrailingBit(arg_0.b.d), func_1().b.b.b);
}

fn func_7(arg_0: vec4<f32>, arg_1: Struct_2) -> u32 {
    let var_0 = !(!(!func_4(func_2(vec2<f32>(arg_0.x, arg_1.a.x), Struct_2(global1.b.a, Struct_1(vec2<u32>(4294967295u, arg_1.b.d), arg_1.e, vec4<u32>(4294967295u, 4294967295u, arg_1.b.c.x, 16825u), 120486u), arg_0.wyz, global1.b.d, arg_1.a.x))).a));
    var var_1 = vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-565f * 1020f))) - -3418f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-295f * -1147f))), _wgslsmith_f_op_f32(f32(-1f) * -1237f))) * global3.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -112f)))));
    var var_2 = Struct_5(Struct_1(vec2<u32>(~_wgslsmith_sub_u32(arg_1.b.c.x, u_input.a.x), func_5(_wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(global1.b.b.a.x, 24u)], -1i, -1i), vec3<i32>(2147483647i, -13559i, global1.b.d.x)), func_4(Struct_3(global1.a, arg_1)), -2147483647i)), _wgslsmith_f_op_f32(sign(-1635f)), ~global3.a.c, 49201u), arg_1.b);
    global1 = func_1();
    var var_3 = vec4<i32>(global2[_wgslsmith_index_u32(~firstTrailingBit(1u), 24u)], _wgslsmith_sub_i32(1i >> (func_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.a.x, 450f), global1.b.c.yx)), arg_1).a.c.x % 32u), global2[_wgslsmith_index_u32(~(~(~var_2.b.a.x)), 24u)]), _wgslsmith_add_i32(_wgslsmith_clamp_i32(firstLeadingBit(67207i), _wgslsmith_dot_vec3_i32(arg_1.d.ywx, arg_1.d.zwz), 20542i), -(arg_1.d.x | 1i) | -2147483647i), countOneBits(firstTrailingBit(firstTrailingBit(global1.b.d.x))));
    return ~(~u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = func_7(vec4<f32>(-756f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a.b, global3.a.b) * _wgslsmith_f_op_f32(step(2848f, global3.b.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-495f + _wgslsmith_f_op_f32(f32(-1f) * -469f)) * _wgslsmith_f_op_f32(step(954f, _wgslsmith_f_op_f32(global1.b.b.b - 250f)))), _wgslsmith_div_f32(-367f, global1.b.c.x)), func_6(func_1(), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), ~global1.b.d.x > (i32(-1i) * -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(-vec4<i32>(7465i, global1.b.d.x, global2[_wgslsmith_index_u32(u_input.b, 24u)], global1.b.d.x) ^ abs(global1.b.d))), var_1);
}

