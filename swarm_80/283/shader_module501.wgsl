struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: bool,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_4,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(2147483647i, 2147483647i, 0i), vec3<i32>(i32(-2147483648), 0i, 0i), vec3<i32>(4137i, -20441i, 0i), vec3<i32>(i32(-2147483648), 7957i, 19126i), vec3<i32>(-23885i, 7491i, 2147483647i), vec3<i32>(-38121i, i32(-2147483648), 0i), vec3<i32>(-7087i, -52131i, 2755i), vec3<i32>(-13587i, 17970i, 39766i), vec3<i32>(33940i, 41440i, 18198i), vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(-1i, 14376i, -17540i), vec3<i32>(1i, -23747i, 0i), vec3<i32>(39992i, i32(-2147483648), 0i), vec3<i32>(60310i, i32(-2147483648), 2147483647i), vec3<i32>(-15610i, i32(-2147483648), 49409i), vec3<i32>(-1i, -18416i, 1i));

var<private> global2: vec2<f32>;

var<private> global3: array<u32, 27>;

var<private> global4: Struct_4;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec2<i32> {
    var var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(select(~min(u_input.e, global1[_wgslsmith_index_u32(u_input.d.x, 17u)]), vec3<i32>(-global4.b.d.x, global4.b.d.x, 42864i), all(vec4<bool>(true, true, global4.b.a.c, global4.b.b.e.x)) && true), select(vec3<i32>(firstTrailingBit(-2147483647i), _wgslsmith_mult_i32(arg_1, 8959i), global4.b.b.b << (1u % 32u)), _wgslsmith_clamp_vec3_i32(reverseBits(u_input.e), -u_input.e, vec3<i32>(u_input.e.x, -2147483647i, u_input.e.x) | vec3<i32>(5143i, global4.b.a.b, 0i)), true)), _wgslsmith_clamp_vec3_i32(select(-abs(u_input.e), reverseBits(~vec3<i32>(3490i, arg_1, arg_1)), true), ~(~vec3<i32>(arg_1, -9946i, -36891i)) | min(vec3<i32>(u_input.e.x, 2147483647i, u_input.e.x), vec3<i32>(global4.b.a.b, arg_1, 0i)), vec3<i32>(_wgslsmith_div_i32(45276i, _wgslsmith_div_i32(arg_1, arg_1)), -(~global4.b.a.b), _wgslsmith_dot_vec2_i32(u_input.e.yz, u_input.e.zy))));
    global1 = array<vec3<i32>, 17>();
    let var_1 = false == !all(vec4<bool>(true, global4.b.b.c | global4.b.b.a, global4.b.a.a & global4.b.b.a, true));
    let var_2 = !global4.b.a.e.xx;
    global0 = _wgslsmith_mult_u32(0u, 26656u);
    return reverseBits(vec2<i32>(_wgslsmith_clamp_i32(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, arg_1, u_input.e.x), vec3<i32>(global4.b.a.b, 40386i, global4.b.b.b))), global4.b.b.b, firstLeadingBit(_wgslsmith_mod_i32(-32477i, arg_1))), 0i & abs(_wgslsmith_div_i32(-42755i, u_input.e.x))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<f32>) -> vec2<f32> {
    let var_0 = Struct_4(Struct_1(abs(u_input.b), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(trunc(-684f)))))), global4.b);
    var var_1 = 13601u;
    var var_2 = select(false, true, true);
    let var_3 = var_0.b.a.d.a;
    global1 = array<vec3<i32>, 17>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global4.a.b * vec2<f32>(-372f, -1281f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global4.a.b.x, -705f)))) + _wgslsmith_f_op_vec2_f32(exp2(arg_1.yx)))));
}

fn func_2() -> bool {
    var var_0 = ~abs(u_input.a);
    global2 = global4.a.b;
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(global4.b.b.d.b, _wgslsmith_f_op_vec2_f32(global4.b.b.d.b - vec2<f32>(349f, -484f)))))) - _wgslsmith_f_op_vec2_f32(func_4(abs(func_3(global2.x, global4.b.b.b)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(746f, global4.b.a.d.b.x, -816f, 1207f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-355f, global4.a.b.x, -413f, global2.x)))))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4.b.a.d.b.x)))), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4.b.a.d.b.x))))));
    global2 = global4.a.b;
    let var_1 = any(select(global4.b.a.e, vec3<bool>(true, true, any(!vec3<bool>(true, global4.b.b.c, global4.b.a.e.x))), !select(vec3<bool>(true, global4.b.b.c, false), global4.b.b.e, select(vec3<bool>(global4.b.a.c, true, false), vec3<bool>(global4.b.a.a, false, false), global4.b.b.e.x))));
    return !global4.b.a.a;
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> u32 {
    let var_0 = select(true, arg_1.c != 1335f, !func_2());
    var var_1 = abs(global4.b.d.x);
    let var_2 = 0i;
    global1 = array<vec3<i32>, 17>();
    var var_3 = Struct_5(vec4<bool>(all(arg_1.b.e), false, !var_0, true), Struct_4(Struct_1(abs(27578u) << (~global4.b.b.d.a % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.b.d.b + arg_1.a.d.b))), Struct_3(global4.b.b, Struct_2(true, func_3(global2.x, 37391i).x, any(arg_1.b.e.xz), global4.b.a.d, vec3<bool>(global4.b.b.a, false, global4.b.a.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.b.b.d.b.x - -224f)), reverseBits(min(u_input.e.zx, global4.b.d)), arg_1.e)), select(vec4<bool>(!select(var_0, false, var_0), true, true == !arg_1.b.c, !any(vec4<bool>(false, false, arg_1.a.a, arg_1.a.a))), !(!vec4<bool>(false, true, arg_1.b.e.x, global4.b.b.c)), vec4<bool>(global4.b.a.a, ~global4.b.a.b >= arg_0, any(vec3<bool>(var_0, global4.b.b.a, arg_1.b.a)), func_2())), select(_wgslsmith_mult_vec3_u32(firstTrailingBit(~vec3<u32>(0u, arg_1.e.x, 1u)), vec3<u32>(u_input.d.x, firstLeadingBit(global4.a.a), firstTrailingBit(arg_1.e.x))), _wgslsmith_clamp_vec3_u32(~firstTrailingBit(vec3<u32>(10510u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(53672u, 27u)], 27u)], 44738u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, global4.b.a.d.a, arg_1.a.d.a) << (vec3<u32>(arg_1.e.x, 1u, arg_1.a.d.a) % vec3<u32>(32u)), vec3<u32>(0u, arg_1.e.x, arg_1.e.x)), countOneBits(~vec3<u32>(23160u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(146401u, 27u)], 27u)], global3[_wgslsmith_index_u32(arg_1.a.d.a, 27u)]))), false | var_0));
    return _wgslsmith_mult_u32(44377u, 51450u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec4<u32>(_wgslsmith_dot_vec2_u32(~u_input.d, _wgslsmith_clamp_vec2_u32(vec2<u32>(global4.a.a, global3[_wgslsmith_index_u32(13834u, 27u)]), vec2<u32>(78375u, global4.b.a.d.a), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 27u)], 27u)], global4.b.b.d.a))), ~51304u, (u_input.b & u_input.a) >> (u_input.c.x % 32u), func_1(-57448i, global4.b)));
    let var_1 = Struct_1(_wgslsmith_dot_vec3_u32(var_0.yzw, firstTrailingBit(~vec3<u32>(4294967295u, u_input.b, 0u))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(481f + 1641f) * 1000f))), _wgslsmith_f_op_f32(633f * global2.x)));
    global0 = 1u;
    global4 = Struct_4(global4.a, Struct_3(global4.b.b, Struct_2(!(!global4.b.b.c), global4.b.a.b, !(global4.a.b.x <= 123f), Struct_1(~41037u, global4.a.b), global4.b.a.e), _wgslsmith_f_op_f32(204f * global4.a.b.x), _wgslsmith_mult_vec2_i32(u_input.e.zz, firstLeadingBit(u_input.e.yz)), ~vec2<u32>(~global4.b.b.d.a, u_input.d.x)));
    let var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32((u_input.a ^ 5862u) & abs(4294967295u), 27u)], 16303u) & u_input.c, var_0.xz);
    var var_3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~var_0.wwx), u_input.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(865f, var_1.b.x)) - _wgslsmith_f_op_f32(f32(-1f) * -2574f))))), global4.a.a, vec3<u32>((~1u | (u_input.d.x << (1u % 32u))) >> (_wgslsmith_sub_u32(~global3[_wgslsmith_index_u32(21770u, 27u)], var_0.x) % 32u), ~((u_input.a >> (var_0.x % 32u)) << (1u % 32u)), ~(~_wgslsmith_mod_u32(var_0.x, 18702u))));
}

