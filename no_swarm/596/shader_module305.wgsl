struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<bool>,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global1: array<vec4<bool>, 19>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> u32 {
    return 141881u;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: bool) -> u32 {
    var var_0 = Struct_5(Struct_4(-520i), false);
    global1 = array<vec4<bool>, 19>();
    let var_1 = var_0.a.a;
    let var_2 = !select(global0.yyw, vec3<bool>(all(!global0.zx), arg_2, true), vec3<bool>(true, global0.x, !any(global1[_wgslsmith_index_u32(arg_1, 19u)])));
    global1 = array<vec4<bool>, 19>();
    return ~arg_0;
}

fn func_2() -> Struct_1 {
    let var_0 = abs(vec2<i32>(u_input.b.x, ~32380i));
    global0 = vec4<bool>(func_4(0u, func_3(), select(false, global0.x, !global0.x)) != (_wgslsmith_dot_vec2_u32(~vec2<u32>(18884u, 20656u), ~vec2<u32>(70464u, 9840u)) | ~1u), all(!select(!vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, true, true), select(true, false, true))), true, false);
    var var_1 = global0.zz;
    global0 = !select(vec4<bool>(true, any(global0.zxw), any(vec4<bool>(true, false, false, true)), all(global0.zzz)), select(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(2230u, ~1u), 19u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 19126u, 58379u, 0u), vec4<u32>(0u, 88262u, 27808u, 33685u)), 19u)], any(vec4<bool>(true, false, var_1.x, false))), global1[_wgslsmith_index_u32(24109u, 19u)]);
    let var_2 = Struct_2(Struct_1(vec3<i32>(34540i, var_0.x, u_input.a.x), 0u, global0.zzw, ~_wgslsmith_clamp_vec3_i32(-u_input.a.wxz, select(vec3<i32>(-2147483647i, 2147483647i, u_input.b.x), u_input.b, false), vec3<i32>(var_0.x, u_input.b.x, u_input.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(abs(-795f))) * vec2<f32>(_wgslsmith_f_op_f32(round(-1967f)), -916f))), _wgslsmith_f_op_f32(1172f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -948f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(316f - -1000f)), any(global0.xz) || (true != var_1.x)))), 4294967295u, Struct_1(u_input.a.wxz, 35955u, global0.wwz, ~max(firstLeadingBit(u_input.b), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, u_input.a.x, var_0.x), u_input.b)), vec2<f32>(-1386f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(926f, -474f)))), max(~(~(~vec3<u32>(54121u, 1u, 68137u))), select(vec3<u32>(_wgslsmith_add_u32(91561u, 0u), 46751u, ~1u), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 0u)), 0u, ~40177u), !global0.xxz)));
    return Struct_1(-_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-1i, var_0.x), ~var_2.d.d.x, var_0.x), vec3<i32>(-u_input.b.x, _wgslsmith_sub_i32(var_0.x, var_2.d.a.x), u_input.a.x), min(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, u_input.b.x), vec3<i32>(var_2.a.d.x, var_0.x, u_input.a.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_2.d.d.x, -45105i), var_2.a.a))), ~var_2.e.x, select(!global0.xzy, var_2.d.c, false), min(vec3<i32>(2147483647i, _wgslsmith_mult_i32(-var_0.x, var_0.x), i32(-1i) * -2147483647i), u_input.a.yzx), vec2<f32>(-967f, var_2.d.e.x));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_4(~u_input.a.x);
    global1 = array<vec4<bool>, 19>();
    let var_1 = arg_0.a;
    global0 = select(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(~(~42260u), arg_0.c >> (func_4(4294967295u, var_1.b, var_1.c.x) % 32u)), ~1u ^ _wgslsmith_mult_u32(arg_0.d.b ^ arg_0.c, abs(13649u))), 19u)], global1[_wgslsmith_index_u32(~reverseBits(arg_0.d.b ^ arg_0.e.x), 19u)], true);
    let var_2 = arg_0;
    return arg_0;
}

fn func_6(arg_0: Struct_3, arg_1: u32) -> Struct_2 {
    let var_0 = !all(arg_0.c.d.c.zx);
    var var_1 = ~(~_wgslsmith_mod_u32(arg_0.b, 26074u));
    var var_2 = vec4<u32>(468u, ~arg_1 | 111055u, func_2().b, reverseBits(_wgslsmith_sub_u32(arg_1, 47579u))) >> ((~(~firstTrailingBit(vec4<u32>(1u, arg_1, arg_0.c.e.x, arg_0.a.b))) | _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.c.d.b, ~arg_0.b, ~arg_0.a.b, arg_1), (vec4<u32>(4294967295u, 78687u, arg_1, 4294967295u) << (vec4<u32>(arg_1, arg_1, arg_1, 0u) % vec4<u32>(32u))) >> (reverseBits(vec4<u32>(4294967295u, 28077u, 1u, 11174u)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    var var_3 = 604f;
    var_1 = 53945u;
    return arg_0.c;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -104f) + 108f))));
    let var_1 = Struct_1(_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(firstLeadingBit(abs(2147483647i)), ~(-57844i), ~(u_input.a.x >> (4294967295u % 32u)))), max(1u, 471u), !(!global0.yzx), min(vec3<i32>(u_input.a.x, -7122i, u_input.b.x), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, u_input.a.x, u_input.b.x) ^ vec3<i32>(38299i, u_input.b.x, -58586i), _wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(-1i, u_input.b.x, u_input.b.x)) >> (~vec3<u32>(0u, 69906u, 20373u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0))))));
    let var_2 = !var_1.c.zy;
    var var_3 = var_1;
    let var_4 = var_3.a.x;
    return func_6(Struct_3(Struct_1(~_wgslsmith_add_vec3_i32(var_3.d, var_1.a), firstLeadingBit(~1u), var_1.c, vec3<i32>(_wgslsmith_dot_vec3_i32(var_1.d, u_input.a.yxy), -2147483647i, ~1i), vec2<f32>(var_0, _wgslsmith_div_f32(var_0, 1000f))), var_1.b ^ (4294967295u << (0u % 32u)), func_5(Struct_2(var_1, _wgslsmith_f_op_f32(var_0 - var_0), 0u, func_2(), vec3<u32>(4254u, 1u, 22167u) & vec3<u32>(2597u, 88986u, var_3.b))), !vec2<bool>(true, !var_3.c.x)), 29261u);
}

fn func_7(arg_0: u32, arg_1: Struct_2, arg_2: vec4<i32>) -> i32 {
    let var_0 = func_6(Struct_3(func_1().d, ~1u, arg_1, vec2<bool>(arg_1.a.c.x, false)), func_5(func_6(Struct_3(arg_1.a, arg_1.a.b, Struct_2(Struct_1(vec3<i32>(1i, 18302i, arg_1.d.d.x), 4294967295u, vec3<bool>(global0.x, false, global0.x), arg_2.xzw, arg_1.a.e), arg_1.d.e.x, arg_0, Struct_1(vec3<i32>(u_input.a.x, -349i, -12968i), arg_1.a.b, global0.xww, vec3<i32>(1i, u_input.a.x, 0i), arg_1.d.e), arg_1.e), !vec2<bool>(global0.x, global0.x)), ~arg_0 << (~1u % 32u))).e.x).a;
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(501f - 430f), -119f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2420f - 301f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1162f) * vec2<f32>(var_0.e.x, arg_1.b)))), vec2<f32>(-333f, _wgslsmith_f_op_f32(arg_1.b - 1041f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.e))), _wgslsmith_f_op_vec2_f32(abs(arg_1.d.e))))));
    global1 = array<vec4<bool>, 19>();
    global0 = global1[_wgslsmith_index_u32(~(~reverseBits(~1u)), 19u)];
    let var_2 = func_2().c.xx;
    return _wgslsmith_mult_i32(u_input.b.x, -5003i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_i32(func_7(~(~0u), func_1(), firstLeadingBit(u_input.a)), ((u_input.b.x ^ 21575i) & -53025i) ^ -1i);
    let var_1 = _wgslsmith_div_vec2_f32(func_2().e, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -286f), -1072f), 879f), vec2<f32>(_wgslsmith_f_op_f32(-func_5(Struct_2(Struct_1(vec3<i32>(0i, -1i, -9485i), 1u, vec3<bool>(false, global0.x, false), vec3<i32>(u_input.b.x, u_input.a.x, var_0), vec2<f32>(-1099f, 1451f)), -597f, 1u, Struct_1(u_input.b, 34726u, vec3<bool>(global0.x, true, true), vec3<i32>(36110i, -2305i, 1i), vec2<f32>(-1483f, 646f)), vec3<u32>(21256u, 15036u, 15351u))).b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1062f)))));
    global1 = array<vec4<bool>, 19>();
    var var_2 = Struct_5(Struct_4(u_input.b.x), global0.x);
    var var_3 = var_1.x;
    var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(134f)) - func_1().d.e.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32((~vec2<u32>(29076u, 42562u) >> (firstTrailingBit(vec2<u32>(74854u, 1024u)) % vec2<u32>(32u))) << (select(~vec2<u32>(63201u, 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(93860u, 51470u), vec2<u32>(4294967295u, 6501u)), !vec2<bool>(var_2.b, true)) % vec2<u32>(32u)), vec2<u32>(264u, 77454u), vec2<u32>(1u, 1u)), u_input.b.x, func_1().a.d.x, ~_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(var_0, var_2.a.a, 26100i)), u_input.b), firstLeadingBit(~_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(51177u, 0u), vec2<u32>(54643u, 0u), vec2<u32>(9933u, 12288u)), select(vec2<u32>(41958u, 31891u), vec2<u32>(1u, 25415u), vec2<bool>(false, var_2.b)))));
}

