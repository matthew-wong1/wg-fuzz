struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(-765f, 171f, -547f, 1018f, -821f, -359f, -913f, 405f, -780f, 104f, 594f, 1429f, 622f, 962f, -170f, 1955f, 1000f, 2308f, 369f, 975f, -271f, -1162f, 1104f, -752f, 1062f, -658f, 1507f, 1084f, 1498f, 1628f, 692f, -1000f);

var<private> global1: i32 = -1i;

var<private> global2: Struct_3 = Struct_3(141f, 43334u);

var<private> global3: vec3<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: i32) -> vec3<f32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-260f)))), 329f);
    global1 = _wgslsmith_div_i32(_wgslsmith_div_i32(1i, -arg_3), min(~0i, u_input.a.x));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -524f)), 303f, global3.x)), vec2<u32>(firstTrailingBit(28176u), ~reverseBits(29663u)) << (countOneBits(max(vec2<u32>(global2.b, global2.b), vec2<u32>(u_input.b, 0u)) >> (~vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u)), Struct_1(u_input.b, ~select(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 1i), vec4<i32>(arg_3, u_input.a.x, 5252i, 54i), arg_0) | firstTrailingBit(-vec4<i32>(16985i, 0i, u_input.a.x, u_input.a.x)), true, ~(~abs(vec3<u32>(1u, global2.b, u_input.b)))), 473f, -1i ^ _wgslsmith_mod_i32(u_input.a.x, abs(-arg_3)));
    let var_2 = Struct_3(global0[_wgslsmith_index_u32(1u, 32u)], (74723u ^ var_1.c.d.x) >> ((_wgslsmith_mult_u32(1u, u_input.b) >> (_wgslsmith_div_u32(~var_1.b.x, _wgslsmith_mult_u32(var_1.b.x, 68277u)) % 32u)) % 32u));
    let var_3 = arg_0;
    return vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2716f - var_0))))), -395f, var_0);
}

fn func_2() -> Struct_1 {
    global1 = u_input.a.x;
    global3 = vec3<f32>(1479f, 272f, -843f);
    let var_0 = _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), 21296i));
    var var_1 = Struct_4(Struct_1(~(~(~global2.b)), vec4<i32>(u_input.a.x, countOneBits(i32(-1i) * -2147483647i), -2147483647i, -u_input.a.x), all(vec3<bool>(false, true, true)), vec3<u32>(_wgslsmith_sub_u32(global2.b, 0u), firstLeadingBit(36924u), 76619u) << (vec3<u32>(31891u, ~18527u, reverseBits(78757u)) % vec3<u32>(32u))), Struct_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.b, 32u)] + 1227f), _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_vec3_f32(func_3(vec4<bool>(true, true, true, true), vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(689f, 748f, global0[_wgslsmith_index_u32(u_input.b, 32u)], 441f))), -80971i ^ var_0)))), select(~select(vec2<u32>(u_input.b, 39246u), vec2<u32>(4294967295u, global2.b), false), ~vec2<u32>(18761u, 30143u), false), Struct_1(0u, max(vec4<i32>(-15652i, 18989i, 1i, -23384i) & vec4<i32>(u_input.a.x, var_0, var_0, 2147483647i), abs(vec4<i32>(45656i, var_0, 38156i, u_input.a.x))), !any(vec3<bool>(true, true, true)), ~(~vec3<u32>(u_input.b, 1u, 1u))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(100465u, 32u)]), u_input.a.x));
    var var_2 = u_input.a;
    return var_1.b.c;
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(select(vec4<bool>(false, arg_0.c, false, arg_0.c), vec4<bool>(arg_0.c, arg_0.c, arg_0.c, arg_0.c), arg_0.c), select(vec3<bool>(true, arg_0.c, false), vec3<bool>(true, arg_0.c, false), true), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1218f, global2.a, -417f, global3.x))), arg_0.b.x)).x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(584f)) + _wgslsmith_f_op_f32(trunc(2520f)))), global0[_wgslsmith_index_u32(~reverseBits(~4294967295u), 32u)]));
    global1 = min(u_input.a.x, -2113i);
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global2.a, global3.x) + vec3<f32>(global3.x, global0[_wgslsmith_index_u32(u_input.b, 32u)], -1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global2.a, 1123f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, -1000f, 1650f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, global0[_wgslsmith_index_u32(global2.b, 32u)], 194f) - vec3<f32>(global0[_wgslsmith_index_u32(0u, 32u)], -1460f, 817f))))));
    var var_0 = arg_0.a;
    global0 = array<f32, 32>();
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1793f), global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1125f) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(global2.b, 32u)], 402f))))), vec2<u32>(~(u_input.b | u_input.b), min(global2.b, u_input.b)), Struct_1(4294967295u, firstTrailingBit(select(arg_0.b, arg_0.b, arg_0.d.x >= 20448u)), any(vec3<bool>(arg_0.c, true, arg_0.c)) & false, arg_0.d), global3.x, u_input.a.x);
}

fn func_5(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_2) -> Struct_3 {
    var var_0 = !vec2<bool>(any(vec3<bool>(any(vec4<bool>(true, false, true, false)), all(vec3<bool>(false, true, arg_2.c.c)), arg_2.b.x > arg_2.b.x)), !(!(u_input.b > global2.b)));
    let var_1 = !select(vec2<bool>(true, !(!var_0.x)), !select(!vec2<bool>(arg_2.c.c, arg_0.x), arg_0.yz, arg_0.zx), select(arg_0.xz, arg_0.zy, select(!vec2<bool>(false, var_0.x), vec2<bool>(arg_0.x, arg_0.x), var_0.x)));
    let var_2 = vec2<bool>(true, true);
    global2 = Struct_3(1366f, 1u);
    var var_3 = arg_2;
    return Struct_3(_wgslsmith_f_op_f32(arg_2.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1457f, global2.a))) - _wgslsmith_f_op_f32(-var_3.a.x))), countOneBits(0u));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = Struct_4(Struct_1(_wgslsmith_dot_vec4_u32(max(min(vec4<u32>(global2.b, arg_0.b, arg_2.c.a, 4294967295u), vec4<u32>(78930u, arg_2.c.d.x, arg_1.b, 0u)), vec4<u32>(4294967295u, arg_1.b, 77545u, 0u)), ~vec4<u32>(1u, 26331u, 1u, 8940u) & firstTrailingBit(vec4<u32>(u_input.b, 65226u, 34843u, 1u))), -arg_2.c.b, func_2().c, func_2().d), Struct_2(_wgslsmith_f_op_vec3_f32(trunc(arg_2.a)), arg_2.c.d.xy, Struct_1(max(arg_0.b, _wgslsmith_mult_u32(arg_2.c.a, arg_0.b)), vec4<i32>(select(arg_2.c.b.x, -8721i, false), 2147483647i, u_input.a.x, -arg_2.e), !(arg_1.a <= arg_2.a.x), vec3<u32>(arg_2.c.a, arg_0.b, 4294967295u) >> (vec3<u32>(14976u, 29654u, 0u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-786f - _wgslsmith_f_op_f32(f32(-1f) * -1509f)), -1i));
    global0 = array<f32, 32>();
    global1 = -2813i;
    global1 = ~20172i;
    var var_1 = false;
    return vec2<i32>(-1i) * -select(vec2<i32>(2147483647i, arg_2.e) ^ ~arg_2.c.b.xx, vec2<i32>(-1i, 1i), !vec2<bool>(var_0.b.c.c, arg_2.c.c));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_2 {
    global1 = 20289i;
    let var_0 = func_6(func_5(select(vec3<bool>(arg_1.c.c, !arg_1.c.c, u_input.a.x != -2147483647i), vec3<bool>(true, true, true), any(select(vec3<bool>(arg_1.c.c, arg_1.c.c, false), vec3<bool>(arg_1.c.c, false, arg_1.c.c), vec3<bool>(true, false, arg_1.c.c)))), -2804f, func_4(func_2())), func_5(select(!(!vec3<bool>(false, false, arg_1.c.c)), select(!vec3<bool>(false, false, arg_1.c.c), vec3<bool>(true, true, true), arg_1.c.c), !(arg_1.c.c & false)), global3.x, func_4(Struct_1(1u, -vec4<i32>(29147i, 1i, -37092i, u_input.a.x), arg_1.c.c, ~arg_1.c.d))), func_4(func_2()));
    global0 = array<f32, 32>();
    global1 = countOneBits(select(_wgslsmith_dot_vec3_i32(arg_0.yyx, vec3<i32>(-27720i, arg_1.e, -1i)), u_input.a.x, arg_1.c.c != true)) << (_wgslsmith_dot_vec4_u32((abs(vec4<u32>(12681u, u_input.b, u_input.b, 1339u)) << (vec4<u32>(91478u, arg_1.c.a, 44020u, global2.b) % vec4<u32>(32u))) >> (vec4<u32>(~52237u, global2.b & 0u, _wgslsmith_sub_u32(arg_1.c.a, 47687u), 4294967295u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.c.a, ~0u, global2.b, _wgslsmith_mult_u32(49455u, arg_1.b.x)), firstLeadingBit(firstLeadingBit(vec4<u32>(23081u, 44413u, global2.b, 57854u))), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 43064u, u_input.b, 4294967295u), vec4<u32>(u_input.b, u_input.b, arg_1.b.x, global2.b)))) % 32u);
    global0 = array<f32, 32>();
    return func_4(arg_1.c);
}

fn func_7(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~1u | global2.b, 32u)] + global3.x), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_2.d, 1f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1423f + arg_2.d)) * -1040f), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~0u, 29271u, 19695u), 32u)], _wgslsmith_f_op_f32(-163f - _wgslsmith_f_op_f32(select(-224f, 446f, true))))));
    global2 = func_5(select(select(vec3<bool>(arg_2.c.c, all(vec4<bool>(arg_2.c.c, false, arg_2.c.c, arg_2.c.c)), arg_2.c.c), select(vec3<bool>(true, arg_2.c.c, true), vec3<bool>(arg_2.c.c, true, true), select(vec3<bool>(false, arg_2.c.c, arg_2.c.c), vec3<bool>(false, false, false), vec3<bool>(arg_2.c.c, false, false))), arg_2.c.c), vec3<bool>(arg_2.c.c, func_1(firstLeadingBit(arg_2.c.b), func_4(Struct_1(31105u, vec4<i32>(53922i, arg_0, arg_2.c.b.x, u_input.a.x), true, vec3<u32>(global2.b, arg_1.x, arg_1.x)))).c.c, !(-2147483647i <= arg_2.e)), arg_2.c.c), global2.a, func_4(func_2()));
    var var_1 = Struct_1(reverseBits(countOneBits(~_wgslsmith_sub_u32(22369u, u_input.b))), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(arg_0, arg_0), arg_2.c.b.x ^ arg_0), u_input.a.x | func_2().b.x, -4133i, _wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.a.zy), arg_2.c.b.zx)), !(any(select(vec4<bool>(arg_2.c.c, arg_2.c.c, arg_2.c.c, arg_2.c.c), vec4<bool>(true, arg_2.c.c, arg_2.c.c, false), vec4<bool>(true, true, arg_2.c.c, true))) & arg_2.c.c), vec3<u32>(firstLeadingBit(func_5(vec3<bool>(arg_2.c.c, false, arg_2.c.c), _wgslsmith_div_f32(global3.x, arg_2.d), Struct_2(vec3<f32>(-393f, global0[_wgslsmith_index_u32(4294967295u, 32u)], 185f), vec2<u32>(7992u, 80208u), Struct_1(u_input.b, arg_2.c.b, false, vec3<u32>(global2.b, 1u, global2.b)), global3.x, -2147483647i)).b), 33321u, ~arg_2.c.a >> (arg_2.c.a % 32u)));
    var var_2 = 42398u;
    var_1 = func_1(var_1.b >> (_wgslsmith_mod_vec4_u32(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(44358u, 15455u, arg_1.x, 0u), vec4<u32>(var_1.a, arg_2.b.x, var_1.d.x, var_1.a))), abs(~vec4<u32>(arg_1.x, u_input.b, 39632u, global2.b))) % vec4<u32>(32u)), arg_2).c;
    return func_4(Struct_1(arg_1.x, vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-57187i, arg_2.e), u_input.a.x, arg_2.c.b.x), arg_0, 57891i, _wgslsmith_div_i32(arg_0, -54199i)), var_1.c, _wgslsmith_add_vec3_u32(~arg_1, ~vec3<u32>(22360u, 42691u, arg_1.x)))).a;
}

fn func_8(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_3 {
    var var_0 = arg_1;
    global2 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-117f * var_0.d) - 409f))), func_5(!vec3<bool>(false, arg_1.c.c, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -881f)), Struct_2(arg_1.a, var_0.b, Struct_1(u_input.b, var_0.c.b, var_0.c.c, vec3<u32>(97451u, arg_1.b.x, 44222u)), _wgslsmith_div_f32(arg_1.d, -1093f), -1i ^ u_input.a.x)).a)), var_0.c.a >> (~(func_2().a << (18474u % 32u)) % 32u));
    var_0 = arg_1;
    global3 = var_0.a;
    global0 = array<f32, 32>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 32>();
    global2 = func_8(-915f, Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_7(0i, _wgslsmith_sub_vec3_u32(vec3<u32>(12402u, 1u, u_input.b), vec3<u32>(global2.b, u_input.b, global2.b)), func_1(vec4<i32>(-91840i, u_input.a.x, u_input.a.x, -2147483647i), Struct_2(vec3<f32>(-812f, global3.x, global0[_wgslsmith_index_u32(global2.b, 32u)]), vec2<u32>(global2.b, 6864u), Struct_1(global2.b, vec4<i32>(-15316i, -98264i, u_input.a.x, u_input.a.x), true, vec3<u32>(u_input.b, 13112u, global2.b)), global3.x, 0i)))) - vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(vec4<bool>(false, true, false, false), vec3<bool>(false, true, false), vec4<f32>(-845f, global3.x, 487f, global0[_wgslsmith_index_u32(global2.b, 32u)]), u_input.a.x)).x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, 28532u), 32u)], -221f)), firstLeadingBit(min(_wgslsmith_add_vec2_u32(vec2<u32>(global2.b, 32361u), vec2<u32>(1u, global2.b)), _wgslsmith_clamp_vec2_u32(vec2<u32>(global2.b, 35784u), vec2<u32>(u_input.b, global2.b), vec2<u32>(18573u, u_input.b)))), Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(46903u, 30209u), vec2<u32>(0u, global2.b)), reverseBits(1u)), vec4<i32>(abs(17082i), func_1(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, -18601i), Struct_2(vec3<f32>(-1042f, global3.x, global0[_wgslsmith_index_u32(global2.b, 32u)]), vec2<u32>(u_input.b, 0u), Struct_1(global2.b, vec4<i32>(u_input.a.x, 1i, -483i, u_input.a.x), false, vec3<u32>(global2.b, u_input.b, 1u)), 433f, 27200i)).e, u_input.a.x, 0i), true, _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, global2.b, u_input.b), func_2().d)), -985f, 1i), func_5(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global2.a, _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.b, 32u)])))), 324f), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(899f, -242f, global3.x))), func_1(vec4<i32>(u_input.a.x, u_input.a.x, -2937i, 0i), func_1(vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x), Struct_2(vec3<f32>(240f, -828f, -1554f), vec2<u32>(0u, global2.b), Struct_1(1u, vec4<i32>(13530i, u_input.a.x, u_input.a.x, u_input.a.x), true, vec3<u32>(22242u, u_input.b, 12088u)), 1699f, u_input.a.x))).c.d.xx, func_4(func_1(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 2147483647i), Struct_2(vec3<f32>(1000f, global3.x, global0[_wgslsmith_index_u32(36244u, 32u)]), vec2<u32>(global2.b, u_input.b), Struct_1(0u, vec4<i32>(1i, u_input.a.x, 8274i, u_input.a.x), true, vec3<u32>(global2.b, 5544u, 49716u)), global2.a, -30948i)).c).c, 981f, 0i)));
    global2 = Struct_3(_wgslsmith_f_op_f32(786f * -648f), func_8(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a, global3.x) + _wgslsmith_div_f32(235f, global3.x)), func_1(abs(vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x)), func_4(Struct_1(39765u, vec4<i32>(16189i, u_input.a.x, u_input.a.x, 2147483647i), true, vec3<u32>(global2.b, u_input.b, u_input.b)))), func_8(_wgslsmith_f_op_f32(-global3.x), Struct_2(vec3<f32>(120f, global3.x, 1212f), vec2<u32>(global2.b, global2.b), Struct_1(57340u, vec4<i32>(24490i, 5495i, 54463i, -2147483647i), true, vec3<u32>(75644u, 0u, global2.b)), global0[_wgslsmith_index_u32(global2.b, 32u)], 8592i), func_5(vec3<bool>(false, false, false), -492f, Struct_2(vec3<f32>(global2.a, 758f, -1000f), vec2<u32>(27880u, 33329u), Struct_1(global2.b, vec4<i32>(34903i, 12336i, u_input.a.x, 21982i), false, vec3<u32>(u_input.b, u_input.b, 17609u)), global0[_wgslsmith_index_u32(global2.b, 32u)], u_input.a.x)))).b >> (_wgslsmith_sub_u32(_wgslsmith_mod_u32(~global2.b, ~42055u), global2.b) % 32u));
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    global2 = func_8(_wgslsmith_f_op_f32(floor(832f)), func_1(vec4<i32>(-min(-4250i, 1i), _wgslsmith_mod_i32(-17144i, -u_input.a.x), countOneBits(~u_input.a.x), countOneBits(0i)), func_4(func_2())), func_8(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1826f) * -1609f), func_4(func_1(max(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(2147483647i, u_input.a.x, 2147483647i, u_input.a.x)), Struct_2(vec3<f32>(global2.a, global0[_wgslsmith_index_u32(global2.b, 32u)], 609f), vec2<u32>(27546u, 23259u), Struct_1(u_input.b, vec4<i32>(-27650i, -2147483647i, u_input.a.x, 10518i), true, vec3<u32>(0u, 1u, 1u)), global0[_wgslsmith_index_u32(global2.b, 32u)], u_input.a.x)).c), func_8(_wgslsmith_f_op_f32(-global2.a), func_4(func_4(Struct_1(0u, vec4<i32>(u_input.a.x, -2153i, u_input.a.x, u_input.a.x), true, vec3<u32>(u_input.b, 1u, 1u))).c), Struct_3(-1347f, _wgslsmith_add_u32(u_input.b, 42856u)))));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, _wgslsmith_f_op_f32(-global2.a), global2.a), vec3<f32>(105f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(445f, global0[_wgslsmith_index_u32(32005u, 32u)], true)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 32u)] + global0[_wgslsmith_index_u32(19981u, 32u)]), all(vec2<bool>(true, false)))), global2.a), vec3<bool>(true, true, true))));
    let var_0 = func_8(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3(vec4<bool>(true, true, true, true), vec3<bool>(true, true, true), vec4<f32>(-690f, _wgslsmith_div_f32(-1090f, global2.a), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_div_f32(-521f, 730f)), -u_input.a.x)).x)), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(max(-241f, func_5(vec3<bool>(false, false, true), -1033f, Struct_2(vec3<f32>(521f, global0[_wgslsmith_index_u32(3975u, 32u)], 846f), vec2<u32>(u_input.b, global2.b), Struct_1(u_input.b, vec4<i32>(u_input.a.x, u_input.a.x, -9187i, 86551i), false, vec3<u32>(1u, 88u, 46115u)), global0[_wgslsmith_index_u32(4294967295u, 32u)], 2147483647i)).a)), _wgslsmith_f_op_f32(step(560f, _wgslsmith_f_op_f32(f32(-1f) * -162f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2.b, 32u)]), _wgslsmith_f_op_f32(-global3.x))), _wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.b, u_input.b), func_1(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -54209i, 0i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -6873i, u_input.a.x)), Struct_2(vec3<f32>(566f, 110f, 262f), vec2<u32>(global2.b, 0u), Struct_1(12223u, vec4<i32>(11116i, -2147483647i, 35290i, 20220i), false, vec3<u32>(4294967295u, global2.b, 78242u)), global2.a, 33642i)).b), Struct_1(0u, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 52043i, 2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 18809i, 62671i)), reverseBits(u_input.a.x), func_6(Struct_3(global3.x, 1u), Struct_3(-1192f, 8797u), Struct_2(vec3<f32>(-200f, global2.a, global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec2<u32>(u_input.b, global2.b), Struct_1(1u, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i), false, vec3<u32>(24993u, global2.b, u_input.b)), global3.x, -10016i)).x, max(u_input.a.x, -2147483647i)), !select(false, true, true), firstLeadingBit(~vec3<u32>(global2.b, u_input.b, 36511u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) * -311f), u_input.a.x), func_5(vec3<bool>(!all(vec3<bool>(false, false, false)), true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(287f)))), func_4(Struct_1(global2.b | 5407u, ~vec4<i32>(0i, u_input.a.x, 0i, 1i), false, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 0u, 56797u), vec3<u32>(global2.b, 0u, 0u))))));
    let x = u_input.a;
    s_output = StorageBuffer(444f, vec4<u32>(1u, global2.b, ~(~_wgslsmith_div_u32(var_0.b, 118669u)), ~func_8(global0[_wgslsmith_index_u32(1u, 32u)], Struct_2(vec3<f32>(global3.x, var_0.a, global2.a), vec2<u32>(u_input.b, var_0.b), Struct_1(18481u, vec4<i32>(u_input.a.x, 15876i, -4773i, u_input.a.x), false, vec3<u32>(0u, 0u, global2.b)), -968f, 10283i), var_0).b ^ ~(~19146u)), vec3<u32>(~(~_wgslsmith_sub_u32(53306u, 0u)), var_0.b, var_0.b | 39727u));
}

