struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(true, true, vec4<i32>(46422i, 2147483647i, 23441i, i32(-2147483648)), vec2<u32>(4294967295u, 4294967295u)));

var<private> global1: Struct_5;

var<private> global2: array<Struct_1, 23>;

var<private> global3: array<Struct_1, 8>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec3<f32>) -> vec2<bool> {
    let var_0 = arg_2.x;
    let var_1 = vec2<bool>(any(select(!vec3<bool>(true, global0.a.b, global0.a.b), vec3<bool>(global0.a.a, global0.a.b, global0.a.b), select(vec3<bool>(true, true, global0.a.b), vec3<bool>(false, false, global0.a.b), global0.a.a))) || !((53855u >> (arg_0.x % 32u)) < _wgslsmith_sub_u32(global0.a.d.x, 1u)), true);
    return var_1;
}

fn func_3() -> bool {
    global0 = Struct_2(global3[_wgslsmith_index_u32(33196u, 8u)]);
    var var_0 = vec4<bool>(true, any(func_1(vec2<u32>(u_input.a.x, select(0u, u_input.a.x, false)), _wgslsmith_mod_vec2_i32(vec2<i32>(-50799i, 15349i), _wgslsmith_mult_vec2_i32(global0.a.c.zy, vec2<i32>(-23927i, -56323i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-692f, 282f, global1.a)) + _wgslsmith_div_vec3_f32(vec3<f32>(global1.a, -1695f, global1.a), vec3<f32>(global1.a, global1.a, global1.a))))), global0.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1046f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a - global1.a) - _wgslsmith_f_op_f32(-global1.a))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + global1.a), _wgslsmith_f_op_f32(-global1.a)))));
    var var_1 = 1813i;
    global0 = Struct_2(global2[_wgslsmith_index_u32(firstTrailingBit(26784u), 23u)]);
    global2 = array<Struct_1, 23>();
    return false;
}

fn func_2() -> Struct_1 {
    global1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(ceil(global1.a)), global0.a.a))));
    var var_0 = all(vec4<bool>(all(vec3<bool>(!global0.a.b, global0.a.a, global0.a.a)), global0.a.a, true, !func_3()));
    let var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(~abs(global0.a.c.zy), -firstTrailingBit(vec2<i32>(-29191i, u_input.b) | global0.a.c.ww)), global0.a.c.zx, vec2<i32>(-50662i >> (0u % 32u), _wgslsmith_dot_vec2_i32(global0.a.c.xy, vec2<i32>(u_input.b, global0.a.c.x)) >> (1u % 32u)));
    global1 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -1378f));
    let var_2 = Struct_1(true, global0.a.b, -(global0.a.c | vec4<i32>(2147483647i, global0.a.c.x, 1i, var_1.x | -2147483647i)), u_input.a.zy);
    return Struct_1(all(select(select(select(vec3<bool>(var_2.b, false, global0.a.b), vec3<bool>(false, var_2.a, true), vec3<bool>(var_2.a, true, var_2.b)), select(vec3<bool>(var_2.b, true, var_2.a), vec3<bool>(global0.a.a, var_2.a, true), var_2.a), !var_2.a), vec3<bool>(true, true, true), global0.a.a)), any(vec2<bool>(global0.a.b, any(select(vec3<bool>(global0.a.a, var_2.a, global0.a.a), vec3<bool>(global0.a.a, global0.a.b, false), vec3<bool>(var_2.b, var_2.b, false))))), select(global0.a.c, abs(-global0.a.c) << (~(vec4<u32>(49474u, 37739u, var_2.d.x, 0u) | vec4<u32>(14230u, 26731u, 43772u, global0.a.d.x)) % vec4<u32>(32u)), func_3()), vec2<u32>(_wgslsmith_sub_u32(firstLeadingBit(56088u) << (_wgslsmith_add_u32(u_input.a.x, global0.a.d.x) % 32u), 4294967295u), countOneBits(global0.a.d.x)));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    let var_0 = Struct_4(func_2(), Struct_3(abs(_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_0.d.x, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d.x, u_input.a.x, 0u, u_input.a.x), vec4<u32>(7678u, 72998u, 4294967295u, u_input.a.x)))), global3[_wgslsmith_index_u32(1u, 8u)], vec3<f32>(_wgslsmith_f_op_f32(-global1.a), -143f, _wgslsmith_f_op_f32(select(global1.a, -1410f, true))), global2[_wgslsmith_index_u32(~u_input.a.x, 23u)]));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-480f)) - _wgslsmith_f_op_f32(floor(-355f)))))));
    global1 = Struct_5(_wgslsmith_f_op_f32(var_0.b.c.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(select(global1.a, 1224f, true))))));
    var var_2 = func_2();
    global2 = array<Struct_1, 23>();
    return Struct_2(func_2());
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = vec3<u32>(~(_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 0u, 48715u, u_input.a.x), vec4<u32>(global0.a.d.x, arg_0.a.d.x, 138u, 7360u), vec4<bool>(true, global0.a.a, arg_0.a.a, arg_0.a.a)), countOneBits(vec4<u32>(global0.a.d.x, arg_0.a.d.x, 0u, global0.a.d.x))) & ~7580u), _wgslsmith_dot_vec3_u32(vec3<u32>(~firstTrailingBit(1u), ~firstTrailingBit(62812u), global0.a.d.x), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, arg_0.a.d.x, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(14909u, 76689u, 3536u))), ~select(u_input.a, vec3<u32>(63927u, 42661u, 39658u), global0.a.b))), _wgslsmith_add_u32(global0.a.d.x, min(u_input.a.x, global0.a.d.x)));
    var var_1 = vec3<u32>(var_0.x, 55419u & _wgslsmith_sub_u32(var_0.x, ~13780u), var_0.x);
    var var_2 = -491f == _wgslsmith_f_op_f32(-955f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global1.a))))));
    let var_3 = Struct_4(Struct_1(!(!all(vec3<bool>(true, global0.a.b, arg_0.a.b))), arg_0.a.a, ~vec4<i32>(global0.a.c.x, reverseBits(arg_0.a.c.x), ~global0.a.c.x, -1i >> (var_1.x % 32u)), vec2<u32>(global0.a.d.x, ~1u) << (func_2().d % vec2<u32>(32u))), Struct_3(~(var_0.x & ~u_input.a.x), Struct_1(true, !(!arg_0.a.a), ~select(global0.a.c, vec4<i32>(2147483647i, arg_0.a.c.x, global0.a.c.x, u_input.b), true), _wgslsmith_div_vec2_u32(var_0.xx ^ u_input.a.xx, ~var_1.xx)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, global1.a, global1.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, global1.a, global1.a) * vec3<f32>(global1.a, global1.a, global1.a))))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~19353u), arg_0.a.d.x, countOneBits(arg_0.a.d.x)), 23u)]));
    global1 = Struct_5(_wgslsmith_f_op_f32(-665f - _wgslsmith_f_op_f32(f32(-1f) * -1474f)));
    return func_4(func_2(), global0.a.b);
}

fn func_6(arg_0: Struct_5, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec3<bool>((u_input.a.x >> (109983u % 32u)) < 95261u, -1322f >= _wgslsmith_f_op_f32(-global1.a), global0.a.b));
    let var_1 = !any(!select(vec3<bool>(true, global0.a.b, var_0.x), !vec3<bool>(false, global0.a.a, global0.a.a), !vec3<bool>(true, global0.a.a, var_0.x)));
    var var_2 = Struct_2(Struct_1(any(select(select(var_0.xx, var_0.xx, var_0.x), func_1(u_input.a.zz, global0.a.c.zw, vec3<f32>(-1849f, global1.a, 1000f)), var_0.yy)), true & global0.a.a, -vec4<i32>(global0.a.c.x, global0.a.c.x, global0.a.c.x, -1i) << (~(vec4<u32>(1u, 41002u, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.a.x, global0.a.d.x, global0.a.d.x, 1u)) % vec4<u32>(32u)), vec2<u32>(abs(0u), 7599u)));
    let var_3 = var_2.a.c.yx;
    var_2 = func_6(Struct_5(global1.a), var_2.a.d.x, func_5(func_4(func_2(), true)));
    global0 = func_6(Struct_5(672f), func_4(func_2(), global0.a.a && func_3()).a.d.x, func_6(Struct_5(-1324f), global0.a.d.x, func_6(Struct_5(_wgslsmith_f_op_f32(global1.a - -1162f)), reverseBits(_wgslsmith_mult_u32(54319u, 16838u)), Struct_2(Struct_1(false, var_2.a.a, vec4<i32>(-7391i, global0.a.c.x, 46562i, 14409i), global0.a.d)))));
    var var_4 = u_input.a & firstLeadingBit(vec3<u32>(var_2.a.d.x, 4294967295u, countOneBits(countOneBits(global0.a.d.x))));
    var var_5 = Struct_1(!(!func_2().b), func_2().a, global0.a.c, ~(~vec2<u32>(1u, max(1u, var_4.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, -899f)), countOneBits(~(vec4<u32>(124046u, 1u, var_4.x, 23359u) << (vec4<u32>(global0.a.d.x, 4294967295u, 1u, 4294967295u) % vec4<u32>(32u)))) << (vec4<u32>(~max(1u, u_input.a.x), var_2.a.d.x, _wgslsmith_div_u32(u_input.a.x << (var_4.x % 32u), 27665u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_5.d.x, 12333u, var_5.d.x), vec4<u32>(24315u, var_5.d.x, 1u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_5.d.x, var_2.a.d.x, 0u, 0u), vec4<u32>(0u, var_4.x, var_5.d.x, var_5.d.x)))) % vec4<u32>(32u)), _wgslsmith_mod_u32(~20836u, ~(~1u)) >> (var_2.a.d.x % 32u));
}

