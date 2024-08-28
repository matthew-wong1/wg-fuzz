struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(18591u, 4294967295u, 5514u), 2343f, vec4<f32>(-182f, -373f, -1431f, -564f), -366f);

var<private> global1: array<Struct_5, 1>;

var<private> global2: Struct_2;

var<private> global3: array<Struct_5, 18> = array<Struct_5, 18>(Struct_5(vec2<i32>(i32(-2147483648), 17551i)), Struct_5(vec2<i32>(-13822i, -10964i)), Struct_5(vec2<i32>(18821i, 40078i)), Struct_5(vec2<i32>(-30055i, 2147483647i)), Struct_5(vec2<i32>(-32571i, 0i)), Struct_5(vec2<i32>(17645i, 29058i)), Struct_5(vec2<i32>(15623i, -33706i)), Struct_5(vec2<i32>(-1i, 2147483647i)), Struct_5(vec2<i32>(-17746i, 27738i)), Struct_5(vec2<i32>(2147483647i, 8372i)), Struct_5(vec2<i32>(-44812i, 0i)), Struct_5(vec2<i32>(-1i, i32(-2147483648))), Struct_5(vec2<i32>(-21219i, -8690i)), Struct_5(vec2<i32>(-1i, -22493i)), Struct_5(vec2<i32>(-51861i, i32(-2147483648))), Struct_5(vec2<i32>(-10922i, 25574i)), Struct_5(vec2<i32>(8027i, 24812i)), Struct_5(vec2<i32>(2147483647i, -25306i)));

var<private> global4: Struct_4;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>) -> f32 {
    var var_0 = global0.c.xww;
    var var_1 = Struct_1(u_input.a.zzz >> ((~(~global0.a) ^ global2.a.xxz) % vec3<u32>(32u)), _wgslsmith_f_op_f32(round(var_0.x)), vec4<f32>(_wgslsmith_f_op_f32(-351f * global0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.b, _wgslsmith_f_op_f32(trunc(-616f)), any(global2.b.zx))) - -862f), -1290f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4.b))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-892f, -207f, true)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-957f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.c.x * global0.d))))))));
    global1 = array<Struct_5, 1>();
    let var_2 = ~max(~abs(arg_0.a.a.a.ww), vec2<u32>(0u | ~var_1.a.x, global2.a.x));
    global4 = arg_0;
    return var_1.b;
}

fn func_2(arg_0: vec3<u32>) -> Struct_4 {
    global0 = Struct_1(vec3<u32>(7021u, arg_0.x, global2.a.x) >> ((global2.a.www | global0.a) % vec3<u32>(32u)), 110f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -420f), global4.b, _wgslsmith_f_op_f32(round(global4.b)), _wgslsmith_div_f32(global0.c.x, -1000f)))), _wgslsmith_f_op_f32(-288f * _wgslsmith_f_op_f32(func_3(Struct_4(global4.a, _wgslsmith_f_op_f32(f32(-1f) * -219f)), global2.b.yz))));
    let var_0 = Struct_1(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global4.b, _wgslsmith_f_op_f32(exp2(global0.b)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * global0.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(1475f)), _wgslsmith_div_f32(-646f, global0.c.x), _wgslsmith_div_f32(1695f, 901f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global4.b), -435f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -221f) - global0.d)));
    global1 = array<Struct_5, 1>();
    var var_1 = abs(abs(abs(global4.a.a.a))) | ~(_wgslsmith_add_vec4_u32(~global4.a.a.a, _wgslsmith_mult_vec4_u32(u_input.a, global2.a)) & _wgslsmith_mod_vec4_u32(~global2.a, ~vec4<u32>(4294967295u, global2.a.x, 0u, 20108u)));
    global1 = array<Struct_5, 1>();
    return Struct_4(Struct_3(global4.a.a, !vec2<bool>(true, select(global4.a.b.x, global4.a.b.x, true)), vec2<i32>(u_input.c, -2147483647i), ~global4.a.c, reverseBits(countOneBits(-18572i << (var_1.x % 32u)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-523f))), global4.b)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: i32, arg_3: vec4<f32>) -> vec2<i32> {
    let var_0 = func_2(global4.a.a.a.zxz);
    let var_1 = global2.a;
    var var_2 = Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x << (~global4.a.a.a.x % 32u), ~var_0.a.a.a.x, global0.a.x, var_1.x), ~vec4<u32>(_wgslsmith_clamp_u32(global0.a.x, arg_1, var_1.x), _wgslsmith_add_u32(0u, arg_1), 111902u, 0u)), vec4<bool>(func_2(vec3<u32>(0u, global2.a.x, 1u) << (vec3<u32>(1u, var_0.a.a.a.x, u_input.a.x) % vec3<u32>(32u))).b <= global4.b, true, all(select(global2.b.xx, global2.b.yw, var_1.x < 4854u)), !any(vec4<bool>(global2.b.x, true, false, global2.b.x))));
    let var_3 = arg_0.x;
    var var_4 = var_0;
    return abs(firstLeadingBit(~(~(-var_0.a.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global4.a.a.a.yzx, global4.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global0.c)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b, -1865f, global0.b, global4.b)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-146f, global0.c.x, global0.d, global4.b)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global4.b, global4.b)), _wgslsmith_f_op_f32(max(1037f, 1868f)))))));
    let var_0 = global4.a.a.b.x;
    let var_1 = _wgslsmith_dot_vec2_i32(~func_1(global0.c.yw, _wgslsmith_mult_u32(~global4.a.a.a.x, global4.a.a.a.x), countOneBits(~global4.a.d.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(global0.c, vec4<f32>(1000f, global0.b, 1213f, 470f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-699f, global0.c.x, global4.b, global4.b)))))), countOneBits(global4.a.d << (~global4.a.a.a.zz % vec2<u32>(32u))) | ~(-vec2<i32>(u_input.b.x, 1i)));
    global4 = Struct_4(Struct_3(Struct_2(global4.a.a.a, select(func_2(vec3<u32>(global2.a.x, 0u, global0.a.x)).a.a.b, vec4<bool>(global2.b.x, global2.b.x, false, true), global4.a.a.b)), !(!select(global2.b.zy, global4.a.a.b.yz, false)), u_input.b.yy, u_input.b.zx, ~var_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(Struct_3(global4.a.a, global2.b.xz, vec2<i32>(-1i, u_input.b.x), u_input.b.yx, -26721i), 230f), vec2<bool>(false, false))))), _wgslsmith_f_op_f32(global4.b - _wgslsmith_f_op_f32(max(166f, _wgslsmith_f_op_f32(global0.b - 357f))))));
    var var_2 = func_2(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, firstLeadingBit(global0.a.x) | abs(global4.a.a.a.x), abs(35955u) << (global0.a.x % 32u)), u_input.a.xxz));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(200f + _wgslsmith_f_op_f32(step(160f, global4.b))) * 418f), var_2.b)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.d), -1736f)));
    let x = u_input.a;
    s_output = StorageBuffer(378f, -847f);
}

