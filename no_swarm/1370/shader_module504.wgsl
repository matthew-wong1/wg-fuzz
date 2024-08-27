struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 4>;

var<private> global1: array<Struct_1, 17>;

var<private> global2: array<bool, 2>;

var<private> global3: array<vec3<u32>, 28>;

var<private> global4: Struct_2 = Struct_2(-525f, vec2<bool>(true, false), Struct_1(vec3<u32>(0u, 60944u, 86856u), 2147483647i, 1u, -1701i), vec3<f32>(-841f, -168f, -1508f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    global1 = array<Struct_1, 17>();
    global0 = array<vec4<f32>, 4>();
    global4 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -286f), global4.b, Struct_1(global4.c.a, _wgslsmith_clamp_i32(-1580i & -arg_0.x, global4.c.d, ~(-global4.c.d)), ~u_input.a.x, _wgslsmith_add_i32(-64680i, ~42334i >> (u_input.a.x % 32u))), _wgslsmith_f_op_vec3_f32(exp2(global4.d)));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-670f * _wgslsmith_f_op_f32(-803f * _wgslsmith_div_f32(-664f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), global4.b, Struct_1(abs(vec3<u32>(4294967295u, _wgslsmith_add_u32(global4.c.c, 7660u), ~1u)), -countOneBits(global4.c.d) >> (~0u % 32u), ~(0u >> (global4.c.c % 32u)) | 39840u, 2147483647i), vec3<f32>(237f, 414f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4.a), _wgslsmith_f_op_f32(-global4.a))))));
    var var_1 = max(vec2<u32>(_wgslsmith_mult_u32(reverseBits(global4.c.a.x), var_0.c.a.x), ~(41461u << (1u % 32u))), ~(~vec2<u32>(u_input.a.x, 18778u))) >> (~reverseBits(countOneBits(countOneBits(global4.c.a.zz))) % vec2<u32>(32u));
    return var_0.a;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -699f), vec2<bool>(global4.b.x, global4.b.x), global4.c, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global4.d.x, global4.d.x, -513f), vec3<f32>(-690f, -916f, _wgslsmith_f_op_f32(-global4.d.x)))));
    let var_1 = var_0.c.a.yx;
    let var_2 = _wgslsmith_f_op_vec4_f32(step(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~38545u, ~61393u, ~29619u), global4.c.c), u_input.a.x), 4u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(global4.d.x, -1661f)))), _wgslsmith_f_op_f32(func_3(vec4<i32>(var_0.c.b, u_input.b, var_0.c.b, var_0.c.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-237f, -882f)) * global4.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-199f)) * _wgslsmith_f_op_f32(trunc(-1045f)))) + _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(max(~71864u, ~106612u), 4u)] * _wgslsmith_f_op_vec4_f32(sign(global0[_wgslsmith_index_u32(4294967295u, 4u)]))))));
    global3 = array<vec3<u32>, 28>();
    var var_3 = reverseBits(select(global3[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(~var_0.c.a.xz, ~vec2<u32>(19501u, var_1.x))), 28u)], select(var_0.c.a, countOneBits(vec3<u32>(42353u, 56823u, global4.c.c)), var_0.b.x), vec3<bool>(all(vec2<bool>(var_0.b.x, var_0.b.x)), true, true)));
    return Struct_2(global4.a, select(global4.b, !var_0.b, global4.b), global4.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-1000f, global4.a)), 2602f, var_0.a) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1009f), _wgslsmith_f_op_f32(591f - var_2.x), -1171f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.xxz))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: i32) -> Struct_2 {
    var var_0 = arg_0;
    var_0 = Struct_2(var_0.a, vec2<bool>(any(!global4.b), func_2().b.x), Struct_1(var_0.c.a, arg_3, global4.c.c, arg_1.x), arg_0.d);
    global1 = array<Struct_1, 17>();
    var var_1 = abs(_wgslsmith_mult_u32(55845u, arg_0.c.a.x)) >> (arg_0.c.a.x % 32u);
    return func_2();
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = arg_2.x;
    let var_1 = firstLeadingBit(vec2<u32>(1u, ~max(~arg_1.c.c, global4.c.c)));
    var var_2 = Struct_2(-1032f, vec2<bool>(false, true), arg_1.c, func_2().d);
    let var_3 = func_2().c.a.x;
    var var_4 = func_2();
    return func_4(Struct_2(arg_1.a, global4.b, Struct_1(~(~vec3<u32>(var_1.x, arg_1.c.a.x, 4294967295u)), 23481i, var_1.x, func_2().c.d), _wgslsmith_f_op_vec3_f32(-arg_0.d)), ~arg_3.xyw, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1196f, _wgslsmith_f_op_f32(1000f * arg_1.a), var_4.d.x)))), reverseBits(abs(-(-27202i | global4.c.d))));
}

fn func_1() -> Struct_2 {
    global1 = array<Struct_1, 17>();
    global0 = array<vec4<f32>, 4>();
    var var_0 = func_5(func_4(func_2(), _wgslsmith_mod_vec3_i32(~(vec3<i32>(global4.c.b, u_input.b, 2147483647i) & vec3<i32>(global4.c.b, -36579i, u_input.b)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, 26067i), firstTrailingBit(vec3<i32>(-2147483647i, 20214i, global4.c.d)))), _wgslsmith_div_vec3_f32(global4.d, vec3<f32>(189f, global4.d.x, -597f)), firstLeadingBit(reverseBits(global4.c.d)) & u_input.b), Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(294f - _wgslsmith_f_op_f32(ceil(-517f))), _wgslsmith_f_op_f32(f32(-1f) * -125f))), global4.b, global1[_wgslsmith_index_u32(global4.c.c, 17u)], global4.d), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.d.x * global4.d.x) + _wgslsmith_f_op_f32(func_3(vec4<i32>(global4.c.d, global4.c.b, u_input.b, -20116i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1468f, 546f)))), _wgslsmith_f_op_f32(trunc(global4.a))), abs(min(firstTrailingBit(vec4<i32>(u_input.b, 1i, -23992i, u_input.b)), vec4<i32>(u_input.b, -4254i, global4.c.d, global4.c.d)) << (max(vec4<u32>(global4.c.a.x, u_input.a.x, u_input.a.x, 42876u), firstTrailingBit(vec4<u32>(global4.c.c, 904u, u_input.a.x, global4.c.c))) % vec4<u32>(32u))));
    let var_1 = abs(reverseBits(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(4294967295u, 0u, u_input.a.x, 39442u)) >> (vec4<u32>(u_input.a.x, var_0.c.a.x, var_0.c.c, 0u) % vec4<u32>(32u)), vec4<u32>(global4.c.a.x, ~0u, reverseBits(0u), 0u))));
    let var_2 = u_input.a.x;
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + -451f)) * global4.a), !func_5(func_2(), Struct_2(547f, !var_0.b, Struct_1(vec3<u32>(26943u, 11970u, 19526u), var_0.c.d, global4.c.a.x, 10767i), _wgslsmith_f_op_vec3_f32(select(global4.d, vec3<f32>(global4.d.x, 1826f, global4.a), vec3<bool>(true, var_0.b.x, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.d * global4.d)), _wgslsmith_mod_vec4_i32(-vec4<i32>(-11794i, 1i, u_input.b, -27608i), vec4<i32>(-1i, var_0.c.d, -1i, -5753i) >> (vec4<u32>(var_1.x, var_0.c.c, 54549u, var_1.x) % vec4<u32>(32u)))).b, Struct_1(var_1.zwy, global4.c.b & _wgslsmith_mod_i32(var_0.c.b, _wgslsmith_mod_i32(var_0.c.b, var_0.c.b)), abs(~(~var_0.c.c)), reverseBits(-2147483647i)), vec3<f32>(1182f, 277f, _wgslsmith_f_op_f32(trunc(411f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = func_1();
    let var_2 = var_1;
    global1 = array<Struct_1, 17>();
    global3 = array<vec3<u32>, 28>();
    let var_3 = select(~func_4(Struct_2(-1000f, !global4.b, Struct_1(global3[_wgslsmith_index_u32(0u, 28u)], var_2.c.b, global4.c.c, 35354i), _wgslsmith_f_op_vec3_f32(select(var_1.d, vec3<f32>(global4.d.x, global4.a, 903f), vec3<bool>(global2[_wgslsmith_index_u32(var_0, 2u)], var_2.b.x, global4.b.x)))), -vec3<i32>(-28082i, 0i, global4.c.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.d), global4.d), select(global4.c.d ^ 64608i, _wgslsmith_mult_i32(-22761i, var_2.c.b), any(vec3<bool>(global4.b.x, true, global2[_wgslsmith_index_u32(var_0, 2u)])))).c.a.x, ~(~22891u), func_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -827f)), func_2().b, Struct_1(vec3<u32>(var_2.c.c, u_input.a.x, var_0), -5386i, 0u, -2147483647i), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.a, var_2.d.x, -772f)))), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, min(57282i, 0i), 2056i), ~vec3<i32>(var_2.c.b, 8458i, 1i) >> (vec3<u32>(1u, var_1.c.c, u_input.a.x) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(min(var_1.d, vec3<f32>(_wgslsmith_f_op_f32(func_3(vec4<i32>(var_1.c.b, 1i, 61017i, 1i))), -1155f, _wgslsmith_div_f32(-1000f, var_2.a)))), -countOneBits(0i)).b.x);
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(var_1, countOneBits(~vec3<i32>(var_4.c.d, u_input.b, -2147483647i)), vec3<f32>(-396f, -1893f, _wgslsmith_f_op_f32(global4.d.x + -340f)), var_1.c.b & -2147483647i).d.x, ~(0u << ((~u_input.a.x >> ((1u << (var_4.c.a.x % 32u)) % 32u)) % 32u)), global4.a);
}

