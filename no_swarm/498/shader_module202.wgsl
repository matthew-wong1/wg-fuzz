struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    var var_0 = true;
    var var_1 = Struct_3(Struct_1(vec4<u32>(0u, ~arg_0.x, 1u, u_input.c), select(vec2<bool>(true, all(vec3<bool>(true, true, true))), vec2<bool>(true, true), true)), Struct_1(vec4<u32>(~(~4294967295u), arg_0.x, u_input.c, _wgslsmith_div_u32(1799u, countOneBits(arg_0.x))), vec2<bool>(any(vec2<bool>(true, true)), (u_input.a == 35552i) & all(vec3<bool>(true, true, false)))), Struct_2(max(vec3<i32>(-7454i, -18168i, -26538i), vec3<i32>(106845i, -1i, u_input.a)) | ~(~vec3<i32>(-14783i, -2147483647i, 2147483647i)), Struct_1(vec4<u32>(u_input.c, _wgslsmith_dot_vec2_u32(arg_0.xx, arg_0.zz), arg_0.x, u_input.c | 1u), vec2<bool>(true, true)), Struct_1(~vec4<u32>(u_input.b, 1u, 145915u, u_input.c), select(vec2<bool>(true, false), vec2<bool>(false, false), any(vec3<bool>(true, false, false))))));
    var_0 = true;
    var_1 = Struct_3(var_1.b, var_1.c.c, Struct_2(vec3<i32>(var_1.c.a.x, -countOneBits(39076i), (var_1.c.a.x | var_1.c.a.x) >> (22122u % 32u)), var_1.b, var_1.b));
    let var_2 = var_1.b.b.x;
    return ~u_input.b;
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -447f);
    var var_1 = Struct_1(vec4<u32>(~(~45816u), func_3(firstLeadingBit(vec3<u32>(1u, u_input.b, u_input.b))), _wgslsmith_div_u32(~(~2663u), u_input.c), 1u), vec2<bool>(false, !any(vec3<bool>(true, true, true))));
    var var_2 = _wgslsmith_f_op_f32(474f * _wgslsmith_f_op_f32(arg_0 + 469f));
    var_2 = arg_0;
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -986f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 + 415f)))))))));
    return Struct_1(select(max(abs(vec4<u32>(37717u, 17237u, u_input.b, 6209u)), var_1.a), var_1.a, all(vec3<bool>(var_1.b.x, var_1.b.x, false))), vec2<bool>(true, !(!(!var_1.b.x))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_f32(-923f * _wgslsmith_f_op_f32(f32(-1f) * -704f)));
    let var_1 = var_0.a.x;
    var_0 = func_2(658f);
    return Struct_1(reverseBits(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~var_0.a, var_0.a), var_0.a)), select(!(!var_0.b), vec2<bool>(all(vec4<bool>(false, false, var_0.b.x, true)) | true, u_input.c <= firstTrailingBit(var_0.a.x)), !func_2(-582f).b));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-247f, _wgslsmith_f_op_f32(-187f - 315f)), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(-791f, 356f))))), 1f)));
    var var_1 = Struct_3(Struct_1(vec4<u32>(_wgslsmith_add_u32(select(u_input.c, 0u, arg_1.b.x), _wgslsmith_div_u32(25933u, u_input.b)), u_input.c, ~(~4294967295u), ~37132u), select(arg_1.b, vec2<bool>(true, true), arg_1.b.x)), func_2(1308f), Struct_2(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-32158i, 1i, -2147483647i), vec3<i32>(arg_0.x, -22669i, 1i)) | reverseBits(vec3<i32>(1i, arg_0.x, u_input.a)), vec3<i32>(-2147483647i, -u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-21525i, arg_0.x, -10314i, -1i), vec4<i32>(u_input.a, arg_0.x, 0i, u_input.a)))), func_1(), arg_1));
    let var_2 = arg_0;
    var var_3 = Struct_2(-(var_1.c.a ^ var_1.c.a), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(891f)))), Struct_1(~vec4<u32>(16094u, _wgslsmith_div_u32(var_1.a.a.x, 1u), ~arg_1.a.x, arg_1.a.x), !var_1.a.b));
    let var_4 = func_2(var_0);
    return Struct_3(var_1.c.b, Struct_1(min(arg_1.a, var_4.a) & func_1().a, vec2<bool>(arg_1.b.x || func_2(762f).b.x, false)), Struct_2(var_1.c.a, Struct_1(~(var_1.a.a >> (arg_1.a % vec4<u32>(32u))), func_2(1000f).b), func_2(_wgslsmith_f_op_f32(-var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.a, -57814i) >> (~vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u)), countOneBits(vec2<i32>(12664i, 0i))), abs(vec2<i32>(143i, countOneBits(28945i)))), func_1());
    let var_1 = firstLeadingBit(-max(~(-4350i), ~max(20894i, var_0.c.a.x)));
    let var_2 = func_4(reverseBits(-vec2<i32>(var_1, ~(-2147483647i))), Struct_1(min(countOneBits(vec4<u32>(24475u, u_input.b, u_input.b, 4294967295u) & var_0.b.a), var_0.c.b.a), vec2<bool>(all(select(vec2<bool>(true, var_0.b.b.x), vec2<bool>(true, false), vec2<bool>(var_0.c.c.b.x, true))), var_0.c.b.b.x)));
    var_0 = func_4(vec2<i32>(var_2.c.a.x, _wgslsmith_div_i32(var_0.c.a.x >> (24682u % 32u), i32(-1i) * -29910i)) << (var_0.a.a.yz % vec2<u32>(32u)), func_1());
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(152f, -2239f, 128f, 529f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-949f, -906f, 1000f, -500f)) * vec4<f32>(958f, 588f, 196f, -1395f)))) - vec4<f32>(-583f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1285f))), 320f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-635f, 1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(var_2.c.a << (var_2.b.a.yzy % vec3<u32>(32u)), -min(vec3<i32>(var_1, var_2.c.a.x, var_1), var_2.c.a)), min(var_2.c.a, -var_2.c.a) >> (~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.c.b.a.x, 1582u, 62332u), vec3<u32>(var_2.b.a.x, 21678u, 110841u)) % vec3<u32>(32u))));
}

