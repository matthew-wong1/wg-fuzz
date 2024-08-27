struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<i32>(-6358i, 0i, 20806i, 46146i), 72173i, vec3<u32>(49454u, 36636u, 8253u), vec2<u32>(1u, 4294967295u)), vec3<i32>(2147483647i, 83332i, 47869i), vec4<u32>(1u, 4294967295u, 4294967295u, 5274u));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec2<i32> {
    global0 = -(vec4<i32>(-1i) * -(~(arg_0.a.a << (global1.c % vec4<u32>(32u)))));
    let var_0 = _wgslsmith_mod_i32(global0.x, arg_0.b.x);
    let var_1 = Struct_1((vec4<i32>(_wgslsmith_dot_vec4_i32(global1.a.a, vec4<i32>(global1.a.a.x, -108346i, 30883i, 36956i)), global1.b.x, global0.x, _wgslsmith_mod_i32(2147483647i, -1i)) | select(-arg_0.a.a, _wgslsmith_sub_vec4_i32(arg_0.a.a, arg_0.a.a), true)) >> (global1.c % vec4<u32>(32u)), -arg_0.a.a.x, arg_0.c.yyz, countOneBits(firstTrailingBit(arg_0.a.d)));
    global1 = Struct_2(Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(-var_1.a, global1.a.a << (global1.c % vec4<u32>(32u))), -vec4<i32>(-2147483647i, var_0, arg_0.b.x, arg_0.b.x), vec4<i32>(~2147483647i, _wgslsmith_clamp_i32(global1.b.x, global0.x, global1.b.x), 2147483647i, global1.b.x)), -58462i, min(arg_0.a.c & ~arg_0.c.xxx, vec3<u32>(~var_1.c.x, ~var_1.c.x, 4294967295u)), arg_0.a.d), vec3<i32>(i32(-1i) * -2147483647i, global1.b.x, -_wgslsmith_sub_i32(global1.b.x, min(0i, global1.a.b))), min(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.c.x, 1u, 0u, 4294967295u), global1.c) ^ vec4<u32>(17651u, firstTrailingBit(11490u), ~1u, ~0u), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 12504u, arg_0.c.x, u_input.a), arg_0.c))));
    global0 = vec4<i32>(var_1.b, _wgslsmith_clamp_i32(var_0, i32(-1i) * -var_0, ~1i & var_1.b) ^ -2147483647i, _wgslsmith_sub_i32(abs(i32(-1i) * -var_1.a.x), -(countOneBits(var_1.b) & firstLeadingBit(0i))), -global0.x);
    return -countOneBits(-arg_0.a.a.zx << (~vec2<u32>(var_1.d.x, arg_0.c.x) % vec2<u32>(32u)));
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: bool) -> f32 {
    global1 = Struct_2(Struct_1(countOneBits(max(vec4<i32>(-2147483647i, arg_0.x, arg_0.x, global1.a.a.x), firstTrailingBit(vec4<i32>(arg_0.x, -2147483647i, arg_0.x, global1.a.a.x)))), global0.x, ~(~vec3<u32>(global1.a.c.x, u_input.a, 67461u)), global1.a.d), max(global0.xwz, global0.yxy), ~(~(global1.c << (max(vec4<u32>(u_input.a, u_input.a, 4294967295u, global1.c.x), vec4<u32>(u_input.a, u_input.a, 34309u, u_input.a)) % vec4<u32>(32u)))));
    let var_0 = -767f;
    var var_1 = !vec3<bool>(arg_2, !(!(!arg_2)), var_0 > var_0);
    var var_2 = select(~global1.c.yw, countOneBits(~vec2<u32>(u_input.a, ~81291u)), vec2<bool>(true, global1.a.a.x <= 1i));
    let var_3 = _wgslsmith_mod_vec2_u32(~(~(~global1.a.d) >> (~global1.a.d % vec2<u32>(32u))), ~(~_wgslsmith_div_vec2_u32(global1.a.d, ~vec2<u32>(u_input.a, 43353u))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(arg_1 - arg_1))), _wgslsmith_f_op_f32(abs(-1000f))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_0)))) - _wgslsmith_div_f32(var_0, -1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0)))));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-629f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-160f - -232f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(func_3(Struct_2(Struct_1(vec4<i32>(global0.x, global0.x, global0.x, global0.x), 14254i, global1.a.c, global1.c.xw), vec3<i32>(-12206i, global0.x, global1.b.x), global1.c)), -480f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1776f + 266f)))) - vec2<f32>(137f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-462f, 876f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2312f)) - _wgslsmith_f_op_f32(f32(-1f) * -1750f)))));
    let var_1 = Struct_2(Struct_1(global1.a.a, _wgslsmith_div_i32(2147483647i, 3874i), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, global1.c.x, 16355u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 0u, 0u), vec3<u32>(20159u, global1.c.x, 39140u))), ~(~global1.a.c), vec3<u32>(1u, 1u, abs(u_input.a))), vec2<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 50383u), global1.c.xx)), 1u)), global0.wyw, global1.c);
    let var_2 = vec4<f32>(-253f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(688f, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(round(var_0.x))) + var_0.x)), _wgslsmith_f_op_f32(abs(-1119f)), var_0.x);
    var var_3 = _wgslsmith_add_u32(countOneBits(u_input.a) | ~(~(~global1.c.x)), 9761u ^ var_1.a.d.x);
    let var_4 = Struct_2(var_1.a, firstTrailingBit(global1.a.a.xzw ^ (_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 0i, 25658i), var_1.a.a.zwz) | vec3<i32>(global1.a.b, 110i, global0.x))), ~vec4<u32>(var_1.c.x, ~u_input.a, ~_wgslsmith_clamp_u32(u_input.a, 1u, 1u), 1u));
    return var_1;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = func_2();
    global1 = Struct_2(Struct_1(vec4<i32>(-33062i, arg_3.x, _wgslsmith_mod_i32(global0.x, global0.x) << (34902u % 32u), global0.x), _wgslsmith_clamp_i32(28427i, -7004i, abs(0i)), global1.a.c << (~vec3<u32>(var_0.c.x, 49967u, 78355u) % vec3<u32>(32u)), ~arg_2.c.zy), ~vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 76436i, var_0.b.x, 2147483647i), var_0.a.a), -abs(var_0.b.x), _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, 18159i, arg_3.x, arg_3.x), ~vec4<i32>(47874i, global1.a.b, 1i, var_0.b.x))), global1.c);
    global0 = ~firstLeadingBit(vec4<i32>(-1i, -arg_2.a.x, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.b.x, 0i, global0.x), global0.ywz)) ^ var_0.a.a);
    global1 = func_2();
    var var_1 = 2147483647i;
    return var_0;
}

fn func_5(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = arg_2.a.d.x;
    return abs(arg_3.c ^ ~arg_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(global1.a, vec3<i32>(0i, 38068i, _wgslsmith_div_i32(-1i, global1.a.a.x)), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(func_5(vec4<bool>(true, true, true, true), vec2<bool>(true, true), func_1(false, 224f, Struct_1(vec4<i32>(-1i, global0.x, global0.x, 0i), global1.a.b, vec3<u32>(global1.a.d.x, global1.a.d.x, global1.a.d.x), global1.a.c.yy), global1.a.a), Struct_2(Struct_1(global1.a.a, global0.x, global1.a.c, global1.c.yw), vec3<i32>(global0.x, global0.x, global1.b.x), vec4<u32>(0u, 0u, 66042u, global1.a.d.x))), func_5(vec4<bool>(true, true, true, false), vec2<bool>(true, true), Struct_2(global1.a, vec3<i32>(0i, global0.x, 21187i), global1.c), Struct_2(global1.a, global0.wzw, vec4<u32>(50523u, 1u, 8342u, global1.a.d.x)))), global1.c));
    global1 = Struct_2(global1.a, global1.b, ~_wgslsmith_div_vec4_u32(func_1(true, -1957f, Struct_1(vec4<i32>(1i, global1.b.x, 32034i, 2147483647i), global1.b.x, global1.c.xxy, vec2<u32>(u_input.a, 10581u)), global1.a.a).c, global1.c) >> (vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, 4294967295u), ~u_input.a), u_input.a, ~global1.a.c.x, func_2().c.x) % vec4<u32>(32u)));
    global1 = func_1(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-339f, 1000f), _wgslsmith_f_op_f32(trunc(1777f)))), 1000f)), 1f), func_1(all(vec4<bool>(true, true, -2147483647i != global0.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -352f)))), global1.a, select(global1.a.a, vec4<i32>(func_2().a.b, select(global0.x, -22228i, true), global0.x, global0.x), true)).a, -vec4<i32>(1i, -10189i, -23726i, _wgslsmith_mod_i32(0i, 14114i) >> (firstLeadingBit(global1.c.x) % 32u)));
    let var_0 = _wgslsmith_add_u32(3845u, _wgslsmith_dot_vec2_u32(~global1.a.d, global1.c.xz));
    let var_1 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(424f * _wgslsmith_f_op_f32(sign(690f))), 2652f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_3(Struct_2(global1.a, global0.zyy, vec4<u32>(u_input.a, var_1.d.x, 9959u, var_1.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -129f), -1i == global0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -603f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1168f)))), ~(~global1.c.x), _wgslsmith_div_vec2_u32(max(global1.a.d ^ global1.c.xy, min(vec2<u32>(u_input.a, 26632u), ~vec2<u32>(1u, 33150u))), global1.a.d));
}

