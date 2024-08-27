struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = vec4<u32>(u_input.c.x, reverseBits(u_input.a), 63579u, u_input.c.x);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)) * _wgslsmith_f_op_f32(step(-302f, _wgslsmith_f_op_f32(ceil(-1154f))))), 609f, _wgslsmith_f_op_f32(-112f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) + _wgslsmith_f_op_f32(f32(-1f) * -636f)) * _wgslsmith_f_op_f32(f32(-1f) * -693f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-819f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -513f))))));
    var var_2 = abs(18795i);
    let var_3 = u_input.b.x;
    var_2 = ~(i32(-1i) * -4683i);
    return 4294967295u;
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<bool>(_wgslsmith_div_i32(reverseBits(~(-45338i)), u_input.b.x) >= ~_wgslsmith_sub_i32(i32(-1i) * -1i, ~u_input.b.x), !(!(select(true, false, true) && any(vec3<bool>(false, false, false)))), !select(true && all(vec3<bool>(true, false, false)), true, 22665u > u_input.c.x));
    let var_1 = vec3<i32>(34585i, 2147483647i, 2147483647i);
    var var_2 = min(~(~(~u_input.a << (abs(4294967295u) % 32u))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(869f + 368f))) + 1f)));
    var_2 = ~u_input.a << (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u)), countOneBits(vec4<u32>(u_input.c.x, 3613u, 1u, 4294967295u))), ~(~reverseBits(31133u))) % 32u);
    let var_3 = Struct_4(select(vec4<bool>(var_0.x, any(select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_0.x, false, true, var_0.x), var_0.x)), any(vec2<bool>(var_0.x, var_0.x)), all(select(var_0.xz, var_0.xy, var_0.zz))), !vec4<bool>(true, true, u_input.c.x == u_input.c.x, true), !vec4<bool>(false, var_0.x, true, var_0.x)), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-334f, 319f, _wgslsmith_f_op_f32(f32(-1f) * -577f), _wgslsmith_f_op_f32(floor(762f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(115f, 349f, 318f, -552f))), vec4<f32>(511f, 1227f, -1529f, 152f)))), select(vec4<i32>(var_1.x, -var_1.x, var_1.x, ~14755i), vec4<i32>(5227i, ~26962i, _wgslsmith_mult_i32(var_1.x, 1i), var_1.x >> (u_input.c.x % 32u)), var_0.x), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(-1583f, 243f, 683f, 1052f))), ~var_1.x >> (u_input.c.x % 32u)), Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(2039f)), -679f, _wgslsmith_f_op_f32(abs(-1000f)), 2536f))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1229f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_3.b.a.x, var_3.c.a.a.x)), var_3.c.a.a.x)), -174f, var_3.c.a.a.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>) -> i32 {
    var var_0 = true;
    return _wgslsmith_div_i32(arg_0.d, _wgslsmith_dot_vec4_i32(arg_0.b, ~_wgslsmith_mult_vec4_i32(~vec4<i32>(13144i, arg_0.b.x, arg_0.d, 15100i), vec4<i32>(1i, u_input.b.x, -14434i, 1i) & vec4<i32>(arg_0.b.x, -1i, 28261i, 3306i))));
}

fn func_1() -> Struct_2 {
    let var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-162f, 1139f), -122f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -717f)))) * _wgslsmith_f_op_f32(step(-411f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-391f))))))));
    let var_2 = select(true, true, func_4(Struct_2(vec4<f32>(2156f, var_1, var_1, 925f), vec4<i32>(-8874i, -1i, var_0, -13377i) << (vec4<u32>(4294967295u, 1u, u_input.c.x, u_input.a) % vec4<u32>(32u)), func_2(), countOneBits(u_input.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, -449f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1330f, var_1, -191f) + vec4<f32>(var_1, 1572f, 736f, -730f)))) > 1i);
    var var_3 = ~vec2<u32>(_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_clamp_u32(~0u, 1u, countOneBits(u_input.c.x)), (0u | u_input.c.x) | 4294967295u), ~_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), 33410u));
    var_3 = abs(u_input.c & ~firstLeadingBit(vec2<u32>(u_input.a, 0u)));
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -752f, var_1, -1399f) * vec4<f32>(var_1, var_1, -217f, var_1)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -680f, 1094f, var_1) + vec4<f32>(-922f, 309f, -746f, -1139f)))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(step(491f, -474f)), _wgslsmith_f_op_f32(select(var_1, var_1, true)), -1531f, _wgslsmith_f_op_f32(abs(317f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(901f, -2288f, var_1, -143f) * vec4<f32>(-327f, var_1, 141f, var_1))))))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(-1i, var_0, var_0, 0i), vec4<i32>(u_input.b.x, var_0, u_input.b.x, var_0), var_2), ~vec4<i32>(var_0, -19792i, 1i, 10539i)) ^ vec4<i32>(-2147483647i & var_0, ~u_input.b.x, 0i, _wgslsmith_mult_i32(var_0, var_0)), vec4<i32>(var_0, _wgslsmith_mult_i32(var_0, _wgslsmith_mult_i32(2147483647i, var_0)), u_input.b.x, min(abs(-70414i), u_input.b.x ^ -2147483647i))), func_2(), 52006i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, true, true)), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, false), false), true == (true || any(vec3<bool>(true, false, true))));
    let var_1 = 1i;
    var var_2 = func_1();
    let var_3 = -1i;
    let var_4 = Struct_5(Struct_4(select(!(!vec4<bool>(true, false, false, var_0.x)), !select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false), true), !(!vec4<bool>(var_0.x, false, true, var_0.x))), func_1(), Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(max(var_2.c.a, vec4<f32>(var_2.a.x, -434f, 1000f, var_2.c.a.x)))))));
    var_2 = func_1();
    var_2 = func_1();
    var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-940f, var_2.c.a.x, var_4.a.b.a.x, -1307f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_4.a.b.a) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a.x, 1880f, var_4.a.c.a.a.x, var_2.a.x), var_4.a.c.a.a, var_4.a.a.x)))))), countOneBits(~var_2.b), func_1().c, ~(~(var_1 << (u_input.a % 32u))) >> (u_input.a % 32u));
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(u_input.c.x, select(100068u, u_input.a, ~34467u >= u_input.c.x)), ~vec3<u32>(~0u, 4376u, ~u_input.a) >> (~vec3<u32>(u_input.a ^ u_input.c.x, max(12233u, 1u), abs(u_input.a)) % vec3<u32>(32u)), var_5.a.b.b.yxy);
}

