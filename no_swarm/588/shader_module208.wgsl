struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<bool>,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<bool>,
    c: vec4<i32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> i32 {
    var var_0 = Struct_4(-(~(-u_input.d.x)) ^ _wgslsmith_add_i32(u_input.d.x | _wgslsmith_div_i32(0i, u_input.d.x), (u_input.d.x << (0u % 32u)) & max(7514i, 39183i)), Struct_3(reverseBits(vec3<i32>(_wgslsmith_mod_i32(-2147483647i, 2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(7238i, u_input.d.x), u_input.d.yx), min(19967i, -16905i))), Struct_2(vec4<i32>(firstLeadingBit(-39354i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(1i, u_input.d.x)), u_input.d.x ^ -2147483647i, -u_input.d.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(27319u, u_input.e, 4294967295u), u_input.a.zzz & vec3<u32>(7233u, 11822u, u_input.a.x)), Struct_1(_wgslsmith_sub_vec2_u32(u_input.a.xx, u_input.a.yx), 1i, vec4<bool>(true, true, true, true), vec2<i32>(33919i, 14044i), _wgslsmith_f_op_vec3_f32(vec3<f32>(230f, 578f, -1582f) + vec3<f32>(-798f, -3157f, -340f))), _wgslsmith_clamp_vec4_i32(select(u_input.d, u_input.d, false), u_input.d, ~u_input.d)), all(vec4<bool>(true, true, any(vec2<bool>(false, true)), true)), _wgslsmith_f_op_f32(f32(-1f) * -872f)));
    var_0 = Struct_4(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.d.x, -42638i, _wgslsmith_div_i32(firstTrailingBit(u_input.d.x), ~u_input.d.x)), abs(30757i)), Struct_3(vec3<i32>(-1i, _wgslsmith_dot_vec2_i32(var_0.b.a.yx | u_input.d.xy, max(var_0.b.a.xy, vec2<i32>(1i, 0i))), _wgslsmith_mod_i32(u_input.d.x ^ u_input.d.x, var_0.b.b.d.x)), var_0.b.b, !(!var_0.b.c), _wgslsmith_f_op_f32(abs(-148f))));
    let var_1 = vec2<bool>((u_input.d.x == -1662i) & true, !var_0.b.c);
    return var_0.b.b.c.d.x;
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = ~(~vec4<u32>(_wgslsmith_div_u32(arg_0.c.a.x, arg_0.c.a.x), 1u, _wgslsmith_clamp_u32(34769u, u_input.a.x, 40969u), 1u)) >> (firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(select(u_input.a.zw, u_input.a.zw, arg_0.c.c.x), ~arg_0.c.a), arg_0.b, ~(arg_0.b >> (4294967295u % 32u)), 1u)) % vec4<u32>(32u));
    var var_1 = !(!any(select(arg_0.c.c.zzz, select(arg_0.c.c.zxy, arg_0.c.c.zww, arg_0.c.c.yyw), select(arg_0.c.c.yzw, arg_0.c.c.xwy, arg_0.c.c.zzy))));
    var var_2 = u_input.d.wzw;
    var_1 = arg_0.c.c.x;
    let var_3 = !(all(arg_0.c.c.xwz) | arg_0.c.c.x);
    return -428f;
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_2 {
    var var_0 = any(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), all(vec3<bool>(false, false, false)))) & false;
    var var_1 = vec3<bool>(true, false, firstTrailingBit(arg_0) >= ~func_2());
    var_1 = vec3<bool>(true, var_1.x, var_1.x);
    var_1 = vec3<bool>(var_1.x && var_1.x, any(vec3<bool>(var_1.x, false, any(vec4<bool>(true, false, true, var_1.x)))), var_1.x);
    var_0 = var_1.x;
    return Struct_2(u_input.d, u_input.e, Struct_1(~vec2<u32>(u_input.b, 917u), -2147483647i, vec4<bool>(!all(vec4<bool>(true, false, var_1.x, false)), !(var_1.x || var_1.x), true, all(vec4<bool>(false, false, var_1.x, false))), select(~u_input.d.yw, -u_input.d.xx | _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 20421i), vec2<i32>(u_input.d.x, arg_0)), all(var_1.yx)), vec3<f32>(_wgslsmith_f_op_f32(round(-2033f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(u_input.d, 4294967295u, Struct_1(vec2<u32>(u_input.a.x, 10161u), arg_1, vec4<bool>(var_1.x, var_1.x, false, true), vec2<i32>(arg_1, arg_1), vec3<f32>(-428f, 389f, 2438f)), vec4<i32>(u_input.d.x, 0i, -1i, 15877i))))), -381f)), min(u_input.d, ~u_input.d ^ vec4<i32>(-u_input.d.x, reverseBits(2147483647i), 1i, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(~(~6440u | u_input.b));
    var var_1 = _wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, 52093i);
    var_1 = 21377i;
    let var_2 = Struct_5(Struct_4(1i, Struct_3(vec3<i32>(-u_input.d.x, u_input.d.x, ~u_input.d.x), func_1(max(-30470i, -30089i), ~(-1i)), false, -147f)), select(vec4<bool>(func_1(-38134i, firstTrailingBit(63772i)).c.c.x, true, true, any(func_1(u_input.d.x, -2147483647i).c.c)), vec4<bool>(true, false, false, true), vec4<bool>(false, true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), false)), -abs(-u_input.d), Struct_1(~(~u_input.a.xz), -6160i, select(vec4<bool>(true, all(vec3<bool>(true, false, false)), false, select(false, false, false)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), false)), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true))), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-56000i, u_input.d.x), 12528i), abs(firstLeadingBit(vec2<i32>(u_input.d.x, 57533i)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2383f), _wgslsmith_f_op_f32(f32(-1f) * -1316f), _wgslsmith_f_op_f32(1526f * 127f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1347f, -1690f, -582f), vec3<f32>(-323f, -517f, 708f), true)))))), _wgslsmith_mod_vec3_i32(~u_input.d.wyz, u_input.d.zwz));
    let var_3 = Struct_4(var_2.c.x, var_2.a.b);
    var var_4 = _wgslsmith_div_u32(~(69067u & firstLeadingBit(select(u_input.c, var_3.b.b.b, var_3.b.c))), 4294967295u);
    let var_5 = Struct_5(var_2.a, !var_2.a.b.b.c.c, -vec4<i32>(-1i, max(var_3.b.b.a.x, _wgslsmith_mod_i32(var_3.a, -41680i)), u_input.d.x, firstLeadingBit(~2147483647i)), func_1(~func_2() >> ((var_0 << (_wgslsmith_clamp_u32(var_2.d.a.x, 4294967295u, 9569u) % 32u)) % 32u), _wgslsmith_mult_i32(var_3.a, 1i) << (_wgslsmith_mult_u32(_wgslsmith_div_u32(1238u, u_input.a.x), ~1u) % 32u)).c, min(select(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(var_3.b.a, var_3.b.a), -vec3<i32>(var_2.a.a, 1i, 38294i), firstLeadingBit(vec3<i32>(var_3.a, 8901i, -1i))), vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d), -2147483647i, u_input.d.x), !any(var_2.a.b.b.c.c.zyw)), max(u_input.d.zzw, vec3<i32>(61871i, -var_3.a, _wgslsmith_dot_vec4_i32(var_3.b.b.a, vec4<i32>(u_input.d.x, -2147483647i, 1i, var_3.b.a.x))))));
    var_4 = (_wgslsmith_sub_u32(var_5.a.b.b.c.a.x, _wgslsmith_mod_u32(~var_5.a.b.b.c.a.x, var_0)) & ~0u) | ~10102u;
    var_4 = var_5.d.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(var_5.a.a, min(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 24690i), vec2<i32>(var_2.e.x, var_3.a)), var_2.c.zy), ~var_5.d.d.x), _wgslsmith_div_i32(_wgslsmith_mult_i32(~14625i, 22166i ^ var_2.c.x), i32(-1i) * -13026i)), _wgslsmith_mod_u32(max(~abs(1u), ~4294967295u), ~8063u), _wgslsmith_f_op_f32(-var_3.b.b.c.e.x), ~var_3.b.a);
}

