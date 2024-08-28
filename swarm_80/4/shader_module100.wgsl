struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(4294967295u, vec2<i32>(25026i, 0i), 20671i, vec3<f32>(-630f, 1678f, 764f)), Struct_1(16550u, vec2<i32>(0i, 0i), 26157i, vec3<f32>(-280f, -1560f, -531f)), Struct_1(25759u, vec2<i32>(-9108i, -1i), 5134i, vec3<f32>(-1020f, 418f, 1316f)), Struct_1(4294967295u, vec2<i32>(1i, 41426i), 36378i, vec3<f32>(331f, -1723f, -174f)));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> i32 {
    var var_0 = i32(-1i) * -2147483647i;
    var var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.d.d.x, _wgslsmith_f_op_f32(-389f + global0.b.d.x)))), _wgslsmith_f_op_f32(sign(387f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(434f))))))));
    let var_2 = 75563u;
    var var_3 = Struct_1(94173u, _wgslsmith_add_vec2_i32(vec2<i32>(-global0.b.c, global0.c.b.x), firstTrailingBit(firstTrailingBit(global0.d.b))) & vec2<i32>((-2147483647i >> (global0.a.a % 32u)) | _wgslsmith_mult_i32(-2147483647i, u_input.a), global0.c.c ^ -77958i), _wgslsmith_sub_i32(-(min(47593i, u_input.b) >> (global0.a.a % 32u)), _wgslsmith_dot_vec2_i32(global0.d.b, ~(~vec2<i32>(17573i, -1i)))), _wgslsmith_f_op_vec3_f32(-global0.d.d));
    let var_4 = Struct_2(Struct_1(reverseBits(_wgslsmith_mod_u32(global0.c.a, countOneBits(u_input.d))), ~(~(global0.d.b << (vec2<u32>(1u, var_3.a) % vec2<u32>(32u)))), global0.a.b.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.c.d.x, var_3.d.x, -549f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.d.x, var_1.x, -876f) * _wgslsmith_f_op_vec3_f32(-var_1.yyz)))), Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_2, 1u), max(vec3<u32>(var_3.a, var_2, u_input.d), vec3<u32>(0u, 68083u, var_2))), _wgslsmith_sub_u32(_wgslsmith_add_u32(global0.d.a, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, global0.c.a), vec2<u32>(u_input.d, 0u)))), vec2<i32>(-54206i, _wgslsmith_clamp_i32(0i, -global0.a.b.x, _wgslsmith_clamp_i32(global0.d.c, 1i, var_3.b.x))), -_wgslsmith_dot_vec3_i32(min(vec3<i32>(global0.d.b.x, global0.c.b.x, u_input.b), vec3<i32>(u_input.c, -21711i, u_input.b)), vec3<i32>(var_3.b.x, 2147483647i, u_input.b)), global0.b.d), global0.b, global0.c);
    return -2147483647i;
}

fn func_2() -> Struct_2 {
    let var_0 = ~vec3<u32>(72467u, ~max(select(u_input.d, global0.a.a, false), global0.c.a ^ global0.b.a), 1u);
    global0 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(var_0.yz, vec2<u32>(_wgslsmith_mult_u32(var_0.x, 81873u), min(0u, u_input.d))), vec2<i32>(~firstTrailingBit(u_input.c), -global0.b.c), ~2147483647i, _wgslsmith_f_op_vec3_f32(vec3<f32>(383f, -148f, _wgslsmith_f_op_f32(exp2(global0.b.d.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global0.d.d, vec3<f32>(global0.d.d.x, global0.d.d.x, global0.d.d.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global0.b.d.x, global0.c.d.x) - vec3<f32>(global0.b.d.x, 126f, -270f))))), Struct_1(~24512u, vec2<i32>(-2147483647i, 1i), _wgslsmith_mod_i32(-2147483647i, ~global0.a.b.x) ^ _wgslsmith_sub_i32(func_3(), _wgslsmith_clamp_i32(global0.a.c, u_input.c, global0.a.b.x)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(580f, global0.a.d.x)))), 1871f, -605f)), global0.d, global0.a);
    let var_1 = ~(~vec2<i32>(_wgslsmith_add_i32(~u_input.b, ~u_input.a), -1i));
    var var_2 = vec4<u32>(~35882u, global0.d.a, 1u, _wgslsmith_add_u32(global0.b.a, 35334u));
    var var_3 = Struct_2(Struct_1(u_input.d, countOneBits(-abs(global0.b.b)), -2147483647i, vec3<f32>(506f, -758f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-945f, global0.d.d.x, false)))))), Struct_1(firstLeadingBit(~var_2.x), -(global0.a.b >> (vec2<u32>(var_0.x, 1u) % vec2<u32>(32u))) << (~(~vec2<u32>(28091u, global0.d.a)) % vec2<u32>(32u)), -(~66803i), global0.c.d), Struct_1(_wgslsmith_mod_u32(min(u_input.d, 40974u), var_2.x), vec2<i32>(_wgslsmith_mod_i32(abs(-1i), -var_1.x), _wgslsmith_mult_i32(var_1.x, 25889i) | (u_input.c >> (var_0.x % 32u))), ~firstTrailingBit(u_input.a << (var_0.x % 32u)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.c.d.x - global0.a.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.d.x * 1000f)), 1f)), global0.d);
    return Struct_2(Struct_1(26767u, vec2<i32>(_wgslsmith_mult_i32(global0.a.c, u_input.a), -1i), 13198i, vec3<f32>(global0.a.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.d.d.x)) + global0.a.d.x), 260f)), var_3.b, global0.c, Struct_1(~(~global0.d.a << (34410u % 32u)), vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, global0.d.c, global0.d.b.x, 0i), -vec4<i32>(1i, 0i, -2147483647i, u_input.b)), 3607i), -var_3.a.c, global0.d.d));
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = func_2();
    global0 = Struct_2(Struct_1(arg_0, vec2<i32>(func_3(), firstTrailingBit(~(-1i))), u_input.c, vec3<f32>(_wgslsmith_f_op_f32(-global0.b.d.x), _wgslsmith_f_op_f32(trunc(var_0.d.d.x)), _wgslsmith_f_op_f32(-1947f - global0.b.d.x))), Struct_1(arg_0, ~vec2<i32>(23906i, global0.c.b.x) ^ firstTrailingBit(var_0.a.b), reverseBits(-2147483647i), var_0.a.d), Struct_1(select(_wgslsmith_div_u32(var_0.b.a, abs(global0.b.a)), 0u, !any(vec2<bool>(true, true))), select(countOneBits(select(vec2<i32>(u_input.a, var_0.b.c), var_0.a.b, vec2<bool>(true, false))), -_wgslsmith_div_vec2_i32(var_0.a.b, vec2<i32>(global0.b.c, 5408i)), any(vec4<bool>(false, true, false, false))), -1i, _wgslsmith_f_op_vec3_f32(var_0.b.d * vec3<f32>(_wgslsmith_f_op_f32(-global0.c.d.x), _wgslsmith_div_f32(2607f, -1000f), _wgslsmith_f_op_f32(var_0.c.d.x - -1240f)))), func_2().a);
    let var_1 = var_0.d;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-358f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.b.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.d.x, var_1.d.x)) + _wgslsmith_f_op_f32(var_1.d.x + -603f)))) > _wgslsmith_f_op_f32(select(1202f, var_1.d.x, true));
    var var_3 = -(~(vec3<i32>(~0i, var_0.b.c, abs(55135i)) >> (countOneBits(vec3<u32>(var_1.a, var_1.a, global0.b.a)) % vec3<u32>(32u))));
    return var_0;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = func_1(~(~(~30430u))).d;
    let var_1 = u_input.a;
    global0 = func_2();
    var var_2 = u_input.d;
    var_0 = Struct_1(~firstTrailingBit(0u), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(arg_2.zw, arg_1.c.b), global0.a.b), countOneBits(var_1), global0.b.d);
    return func_1(~arg_1.d.a >> (48298u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.d.x, global0.a.d.x)), _wgslsmith_f_op_f32(floor(global0.d.d.x)), -1254f))), func_1(4294967295u), ~vec4<i32>(19831i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.b.x, u_input.b, 51392i, global0.a.b.x), vec4<i32>(1i, 17494i, -2147483647i, 4775i)), func_1(4294967295u).c.c), 55467i, ~(-global0.d.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(func_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(global0.d.d)))), func_2(), ~max(vec4<i32>(-100057i, -21547i, u_input.a, u_input.a), vec4<i32>(global0.b.b.x, 18486i, -29101i, 19696i))).a.a, 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.d.x, _wgslsmith_f_op_f32(-1075f - global0.c.d.x), _wgslsmith_f_op_f32(step(global0.b.d.x, 404f)), -2633f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.d.x, var_0.a.d.x, var_0.d.d.x, var_0.c.d.x))) - vec4<f32>(1f, _wgslsmith_div_f32(699f, _wgslsmith_f_op_f32(round(-1000f))), func_4(global0.c.d, Struct_2(var_0.d, Struct_1(var_0.b.a, vec2<i32>(u_input.c, 9303i), -3594i, vec3<f32>(var_0.b.d.x, global0.c.d.x, -1116f)), global0.c, var_0.c), vec4<i32>(2147483647i, -24375i, -23389i, -17159i)).b.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1019f), _wgslsmith_f_op_f32(max(var_0.b.d.x, var_0.c.d.x)))))), func_2().d.a, global0.a.b);
}

