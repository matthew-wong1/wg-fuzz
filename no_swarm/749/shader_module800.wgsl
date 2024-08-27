struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(i32(-2147483648), vec2<u32>(15890u, 0u), -2029f, vec3<u32>(1u, 21485u, 3959u), vec3<u32>(12279u, 1u, 0u));

var<private> global1: u32 = 8020u;

var<private> global2: Struct_3 = Struct_3(21901i, vec4<f32>(-1441f, -133f, 182f, 639f), Struct_1(567i, vec2<u32>(0u, 0u), -159f, vec3<u32>(1u, 11159u, 1u), vec3<u32>(44281u, 4294967295u, 38139u)), 2147483647i, 1u);

var<private> global3: array<vec2<bool>, 12>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: f32) -> vec3<u32> {
    return vec3<u32>(global0.d.x, global2.c.b.x, global0.d.x);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_2) -> u32 {
    var var_0 = _wgslsmith_sub_vec3_u32(~(~vec3<u32>(1u, 1u, arg_2.a.b.x)) & ~_wgslsmith_clamp_vec3_u32(arg_1, vec3<u32>(arg_2.a.e.x, arg_1.x, global0.d.x), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_2.b, global2.e), vec3<u32>(arg_2.a.e.x, 73357u, 13477u))), global2.c.d ^ ~func_2(vec4<bool>(true, true, true, true), u_input.a.x, -1363f));
    let var_1 = Struct_3(-14684i, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.b.x * arg_2.a.c))), _wgslsmith_f_op_f32(min(arg_0.c.c, _wgslsmith_f_op_f32(floor(arg_2.a.c)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-785f)))), arg_0.b.x))), global2.c, _wgslsmith_mod_i32(-14761i, _wgslsmith_dot_vec3_i32(~arg_2.d, vec3<i32>(-1i) * -arg_2.d)), ~global2.e);
    var var_2 = ~select(vec2<i32>(-1i) * -arg_2.d.zz, vec2<i32>(-arg_0.d, firstLeadingBit(0i)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_2.b, 4294967295u), 4294967295u, abs(1u)) != global0.e.x);
    var_0 = vec3<u32>(34302u | arg_0.c.e.x, 4294967295u >> (~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_0.x, global0.b.x, var_0.x)), arg_2.a.e) % 32u), 116610u);
    global0 = arg_0.c;
    return ~0u & ~(func_2(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true), var_2.x, _wgslsmith_f_op_f32(-global2.c.c)).x ^ _wgslsmith_mod_u32(1u, 32666u));
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> i32 {
    let var_0 = vec3<bool>(true, arg_0, select(_wgslsmith_sub_i32(-global2.d, 50127i) > 6714i, !any(select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, true), true)), !all(vec3<bool>(false, arg_0, arg_0))));
    var var_1 = Struct_1(_wgslsmith_sub_i32(24517i, -1i), vec2<u32>(_wgslsmith_mult_u32(~49988u, 47581u << (_wgslsmith_dot_vec3_u32(global0.e, vec3<u32>(12186u, global0.e.x, 1u)) % 32u)), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(26822u, 22770u), arg_1.e)), 1142f, vec3<u32>(~select(1u, ~global0.e.x, arg_0), _wgslsmith_dot_vec3_u32(~(vec3<u32>(arg_1.e, 0u, arg_1.c.b.x) >> (arg_1.c.e % vec3<u32>(32u))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.e.x, 0u, global0.d.x, global2.e), vec4<u32>(7169u, 31105u, global2.e, 23928u)), ~global2.c.d.x, _wgslsmith_clamp_u32(0u, global0.d.x, global2.c.e.x))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(global0.b.x, 4294967295u, arg_1.c.b.x), arg_1.c.d.x) << (_wgslsmith_clamp_u32(_wgslsmith_mult_u32(43774u, 93055u), ~arg_1.e, 1u) % 32u)), global2.c.e);
    let var_2 = vec3<i32>(-(~(-1i)), _wgslsmith_mult_i32(max(~(-2147483647i), global2.d), _wgslsmith_dot_vec3_i32(~u_input.a.xww, -vec3<i32>(var_1.a, -46820i, u_input.a.x))), reverseBits(u_input.a.x));
    global0 = global2.c;
    var var_3 = global2.c.d;
    return 1i;
}

fn func_5(arg_0: i32, arg_1: Struct_3) -> Struct_3 {
    global1 = _wgslsmith_dot_vec3_u32(vec3<u32>(global2.e & 0u, global2.c.b.x, _wgslsmith_clamp_u32(4294967295u, _wgslsmith_clamp_u32(39993u, 1u, 4294967295u), ~global0.e.x) << (0u % 32u)), global0.d);
    global1 = min(_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_1.c.e.x, global2.c.b.x) & arg_1.e, 0u), abs(max(abs(global2.e) >> (max(arg_1.e, 41641u) % 32u), ~(13939u << (global0.b.x % 32u)))));
    var var_0 = 1u;
    global3 = array<vec2<bool>, 12>();
    global3 = array<vec2<bool>, 12>();
    return Struct_3(~(-(~arg_1.c.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.c, arg_1.c.c, _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(-arg_1.b.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-112f, -1309f, 505f, 950f))))), Struct_1(-_wgslsmith_div_i32(global2.c.a, _wgslsmith_div_i32(arg_1.d, -1i)), reverseBits(reverseBits(vec2<u32>(86768u, arg_1.c.b.x))), _wgslsmith_f_op_f32(ceil(global0.c)), global2.c.d, global2.c.e), -1i, 4294967295u);
}

fn func_1() -> Struct_2 {
    var var_0 = func_5(func_4(true, Struct_3(-9651i, global2.b, global2.c, _wgslsmith_div_i32(u_input.a.x, i32(-1i) * -11010i), func_3(Struct_3(global0.a, vec4<f32>(-2122f, global0.c, 647f, global0.c), Struct_1(11606i, vec2<u32>(1u, 0u), global2.b.x, global2.c.e, vec3<u32>(global0.d.x, global0.e.x, global2.c.e.x)), global2.a, 6135u), func_2(vec4<bool>(true, false, false, true), 6179i, global2.b.x), Struct_2(global2.c, global2.c.d.x, global2.b.xyx, vec3<i32>(global2.c.a, global0.a, global0.a))))), Struct_3(11706i, _wgslsmith_f_op_vec4_f32(-global2.b), global2.c, global0.a, firstLeadingBit(39127u)));
    global0 = global2.c;
    global0 = Struct_1(_wgslsmith_mult_i32(select(1i, u_input.a.x, (var_0.e <= 18040u) || (141f >= global2.b.x)), -global0.a), min(global2.c.e.yy, ~firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(38401u, var_0.c.d.x), var_0.c.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(302f + _wgslsmith_f_op_f32(abs(128f))) - -889f)), _wgslsmith_clamp_vec3_u32(global2.c.d, var_0.c.d, vec3<u32>(global2.e, _wgslsmith_div_u32(var_0.c.e.x, ~1u), 31491u)), min(var_0.c.e ^ select(global0.e, global2.c.e, select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false)), abs(global0.d)));
    var var_1 = Struct_2(global2.c, var_0.e, _wgslsmith_f_op_vec3_f32(round(var_0.b.zzw)), ~u_input.a.wyx);
    global3 = array<vec2<bool>, 12>();
    return Struct_2(Struct_1(~countOneBits(u_input.a.x) | abs(2147483647i), select(~min(var_1.a.b, vec2<u32>(var_1.b, 17968u)), select(max(vec2<u32>(global2.e, 1u), vec2<u32>(global2.c.d.x, 60u)), var_0.c.d.xx, select(global3[_wgslsmith_index_u32(1u, 12u)], vec2<bool>(true, true), false)), global3[_wgslsmith_index_u32(60095u, 12u)]), 414f, ~(~(~global0.e)), ~_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_0.c.e.x, 1u), var_1.a.e), vec3<u32>(global2.c.b.x, var_0.e, global0.e.x))), 22216u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, global2.b.x, var_0.b.x)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(13683i, -9178i, u_input.a.x), -var_1.d), ~var_0.d, ~0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec4_u32(~(~max(vec4<u32>(global2.c.b.x, 1u, 30027u, 0u), vec4<u32>(4294967295u, global0.e.x, global2.e, 23359u) << (vec4<u32>(30227u, 0u, global0.b.x, global0.e.x) % vec4<u32>(32u)))), firstTrailingBit(vec4<u32>(reverseBits(107184u), 60022u, ~global0.b.x, reverseBits(global0.e.x) & global2.e)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * _wgslsmith_f_op_f32(global2.b.x + -1622f)), -1172f, 329f, global0.c)));
    global0 = global2.c;
    var var_2 = global0.b.x;
    let var_3 = global0.e.x;
    let var_4 = func_1();
    global0 = Struct_1(-_wgslsmith_add_i32(u_input.a.x, _wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, 8290i), 34938i, ~(-11820i))), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.c.c)) + _wgslsmith_f_op_f32(ceil(-359f)))), vec3<u32>(0u, var_0.x, var_4.a.d.x), global2.c.e);
    var var_5 = true;
    var var_6 = func_1().a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), vec3<i32>(~1i, reverseBits(countOneBits(-u_input.a.x)), min(firstTrailingBit(-36080i), var_4.a.a)), ~var_4.b);
}

