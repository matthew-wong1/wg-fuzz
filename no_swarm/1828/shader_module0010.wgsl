struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: bool,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
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

var<private> global0: array<u32, 26>;

var<private> global1: vec4<u32>;

var<private> global2: Struct_4 = Struct_4(Struct_1(vec3<f32>(270f, -1821f, 252f), vec3<i32>(-1i, 1i, 8005i), true, 247f, vec4<u32>(23571u, 11157u, 0u, 62312u)), vec2<i32>(-16548i, 1i), vec4<f32>(869f, 433f, -813f, 541f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: f32, arg_3: f32) -> u32 {
    let var_0 = Struct_3(1i);
    let var_1 = var_0;
    var var_2 = vec4<f32>(global2.a.d, _wgslsmith_f_op_f32(global2.c.x + _wgslsmith_f_op_f32(2600f * _wgslsmith_div_f32(787f, _wgslsmith_f_op_f32(abs(global2.c.x))))), 671f, _wgslsmith_f_op_f32(trunc(-613f)));
    let var_3 = ~(~(abs(global1.xwy ^ global1.xzy) << (~abs(global2.a.e.yxz) % vec3<u32>(32u))));
    let var_4 = any(select(select(select(vec3<bool>(arg_1, global2.a.c, false), vec3<bool>(false, true, false), global2.a.c), !vec3<bool>(true, false, arg_1), !global2.a.c), !select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, false, arg_1), global2.a.c), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, arg_0, 2940i), vec4<i32>(var_1.a, -2147483647i, u_input.a.x, var_0.a)) <= ~1i)) && true;
    return ~global2.a.e.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: vec3<i32>, arg_3: f32) -> Struct_2 {
    global1 = global2.a.e;
    var var_0 = global2.a.e.wwz;
    global1 = vec4<u32>(_wgslsmith_mod_u32(func_3(abs(arg_2.x), all(select(vec4<bool>(false, true, false, true), vec4<bool>(global2.a.c, global2.a.c, false, global2.a.c), vec4<bool>(false, global2.a.c, false, true))), 723f, 1f), _wgslsmith_sub_u32(var_0.x, select(~4294967295u, ~22604u, true))), 1u, firstTrailingBit(4294967295u), firstLeadingBit(~u_input.c) >> (u_input.d % 32u));
    return Struct_2(vec2<bool>(!(!any(vec4<bool>(false, global2.a.c, global2.a.c, false))), _wgslsmith_add_u32(_wgslsmith_add_u32(1u, u_input.e), global1.x) <= ~global1.x));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_0.a.x;
    let var_1 = Struct_4(global2.a, _wgslsmith_add_vec2_i32(select(-_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -16590i), vec2<i32>(u_input.b.x, arg_2.b.x)), vec2<i32>(~arg_2.b.x, firstLeadingBit(-13163i)), true), _wgslsmith_mult_vec2_i32((global2.b & global2.b) << ((vec2<u32>(8295u, global2.a.e.x) | vec2<u32>(29173u, global0[_wgslsmith_index_u32(1u, 26u)])) % vec2<u32>(32u)), abs(arg_2.b.xy))), global2.c);
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-270f + var_1.c.x) - -1747f));
    var var_4 = _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(30424i, var_1.a.b.x >> (u_input.e % 32u), max(2147483647i, global2.b.x), 9151i), countOneBits(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.a.x, 16813i), vec4<i32>(arg_2.b.x, arg_2.b.x, u_input.b.x, var_1.b.x), vec4<i32>(global2.b.x, u_input.b.x, -45439i, global2.b.x) >> (arg_2.e % vec4<u32>(32u)))));
    return global2.a;
}

fn func_1() -> Struct_3 {
    global0 = array<u32, 26>();
    let var_0 = global1.yxw;
    var var_1 = Struct_4(func_4(func_2(vec3<f32>(287f, 466f, _wgslsmith_div_f32(479f, global2.a.a.x)), global2.c.x, _wgslsmith_clamp_vec3_i32(max(vec3<i32>(u_input.a.x, -2147483647i, global2.b.x), vec3<i32>(-58823i, -60854i, u_input.a.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-3747i, 15462i, global2.a.b.x), vec3<i32>(63632i, global2.b.x, u_input.a.x), vec3<i32>(global2.a.b.x, u_input.b.x, -9678i)), -global2.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -941f) + _wgslsmith_f_op_f32(1319f - -900f))), global2.a.c, global2.a), u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.c.x, 735f, global2.a.d, global2.a.a.x), global2.c)))))));
    let var_2 = Struct_4(global2.a, ~select(vec2<i32>(8621i, -1i), global2.a.b.zy, vec2<bool>(global2.a.c, var_1.a.c)) >> (_wgslsmith_div_vec2_u32(~var_0.zx, ~vec2<u32>(global2.a.e.x, 4294967295u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1108f, var_1.c.x, _wgslsmith_f_op_f32(sign(-414f)), -783f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(988f, var_1.a.d, 310f, -1000f)), vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(-global2.c.x), var_1.c.x, var_1.a.a.x), any(!vec3<bool>(global2.a.c, true, true)))))));
    var var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(-40747i, u_input.b.x), -func_4(func_2(var_1.c.yxz, var_1.a.a.x, vec3<i32>(15772i, -2953i, var_1.a.b.x) & global2.a.b, _wgslsmith_f_op_f32(-global2.a.d)), select(all(vec3<bool>(false, var_2.a.c, true)), true, true), global2.a).b.xx);
    return Struct_3(-(abs(var_1.a.b.x) & -3504i) << (global0[_wgslsmith_index_u32(func_4(func_2(var_1.c.zwx, var_1.c.x, vec3<i32>(62374i, -2147483647i, -1655i), -953f), var_1.a.c != var_1.a.c, func_4(Struct_2(vec2<bool>(false, var_1.a.c)), true, Struct_1(var_1.a.a, vec3<i32>(var_1.b.x, 38508i, -2147483647i), var_2.a.c, var_2.c.x, var_1.a.e))).e.x << (global1.x % 32u), 26u)] % 32u));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: u32) -> i32 {
    global2 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.d, _wgslsmith_f_op_f32(-global2.a.d), -514f) * _wgslsmith_f_op_vec3_f32(select(func_4(Struct_2(vec2<bool>(false, true)), true, arg_2).a, _wgslsmith_f_op_vec3_f32(-global2.a.a), true))), vec3<i32>(u_input.b.x, firstTrailingBit(u_input.a.x), 0i), false, _wgslsmith_f_op_f32(f32(-1f) * -239f), global2.a.e), _wgslsmith_mult_vec2_i32(vec2<i32>(reverseBits(1i), arg_1.a), -(~vec2<i32>(u_input.b.x, -1i))), global2.c);
    let var_0 = any(select(vec4<bool>(arg_2.c, !select(arg_2.c, false, false), true, true), vec4<bool>(false, 1u > func_3(4876i, false, arg_2.d, arg_2.d), global2.a.c, !all(vec4<bool>(arg_2.c, arg_2.c, arg_2.c, arg_2.c))), select(vec4<bool>(!arg_2.c, true, any(vec3<bool>(true, false, global2.a.c)), global2.a.c), vec4<bool>(global2.a.c | global2.a.c, global2.a.c, true, true), vec4<bool>(any(vec4<bool>(true, global2.a.c, arg_2.c, false)), global2.a.c, true, all(vec3<bool>(arg_2.c, false, false))))));
    var var_1 = Struct_3(~55264i);
    let var_2 = -vec3<i32>(~arg_1.a, -(firstTrailingBit(var_1.a) | ~u_input.b.x), -abs(arg_2.b.x));
    global0 = array<u32, 26>();
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_5(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global2.c * global2.c), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1152f, -1457f, 834f, -1136f))), select(vec4<bool>(false, global2.a.c, global2.a.c, true), vec4<bool>(global2.a.c, false, false, true), vec4<bool>(false, false, global2.a.c, true)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.a.x, 209f, global2.a.d, -942f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, global2.c.x, global2.c.x, global2.a.a.x) * global2.c)))), func_1(), Struct_1(_wgslsmith_f_op_vec3_f32(-global2.c.yyx), vec3<i32>(-global2.a.b.x, -16594i, -global2.a.b.x), (2129f >= global2.a.a.x) != select(true, false, false), -593f, _wgslsmith_clamp_vec4_u32(global2.a.e ^ global2.a.e, vec4<u32>(1u, global1.x, 4294967295u, 18160u), vec4<u32>(u_input.e, 4294967295u, 4294967295u, 106709u) >> (global2.a.e % vec4<u32>(32u)))), min(global1.x, 0u) >> (_wgslsmith_div_u32(global1.x, firstLeadingBit(1u)) % 32u)));
    var var_1 = func_2(global2.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.c.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.a.x) + _wgslsmith_f_op_f32(-global2.a.d)))), global2.a.b, global2.a.d);
    let var_2 = !(!any(!(!var_1.a)));
    let var_3 = global2.a.b;
    global1 = vec4<u32>(_wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(u_input.e, global0[_wgslsmith_index_u32(4294967295u, 26u)], 0u, global1.x))), ~global2.a.e), ~min(reverseBits(min(global1.x, global1.x)), 1u), _wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(global1.x, 26u)]), firstLeadingBit(4294967295u | global1.x));
    global2 = Struct_4(Struct_1(global2.c.yxx, -(vec3<i32>(global2.a.b.x, -13442i, var_0.a) ^ u_input.a), global2.c.x <= 1479f, 846f, global2.a.e), select(-vec2<i32>(select(1i, -2147483647i, var_1.a.x), -2147483647i), vec2<i32>(func_1().a, ~global2.b.x) >> (~(global2.a.e.wx << (global2.a.e.zx % vec2<u32>(32u))) % vec2<u32>(32u)), !(!var_2)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.c - global2.c))) - vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global2.a.d)))), 1249f, _wgslsmith_f_op_f32(-global2.a.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.c.x + global2.c.x))))));
    let var_4 = 949f;
    var var_5 = min(countOneBits(-abs(vec4<i32>(u_input.a.x, var_0.a, global2.b.x, u_input.a.x))) ^ -(~(vec4<i32>(-2147483647i, var_3.x, 1i, 2147483647i) | vec4<i32>(global2.b.x, u_input.a.x, global2.a.b.x, 42379i))), ~(-vec4<i32>(var_3.x, -2147483647i, 26012i, var_0.a)) << (_wgslsmith_div_vec4_u32(func_4(Struct_2(var_1.a), global2.a.c, global2.a).e ^ vec4<u32>(63385u, global2.a.e.x, 48173u, global0[_wgslsmith_index_u32(8504u, 26u)]), firstTrailingBit(global2.a.e)) % vec4<u32>(32u)));
    var_1 = func_2(global2.a.a, _wgslsmith_f_op_f32(select(global2.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4) * var_4), -7572i < _wgslsmith_div_i32(-41059i, var_5.x))), _wgslsmith_sub_vec3_i32(min(vec3<i32>(-1i) * -vec3<i32>(2147483647i, var_5.x, u_input.b.x), ~global2.a.b | vec3<i32>(2147483647i, u_input.a.x, 0i)), u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2285f * func_4(Struct_2(var_1.a), true, global2.a).a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~(-2147483647i), 0i >> (global2.a.e.x % 32u)));
}

