struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-927f, vec2<f32>(1902f, -1066f));

var<private> global1: Struct_1 = Struct_1(-836f, vec2<f32>(-112f, 373f));

var<private> global2: Struct_2 = Struct_2(345f, vec3<f32>(-124f, -606f, 490f), vec2<i32>(-38695i, 1632i), 1u, vec2<bool>(true, true));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> vec2<i32> {
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global2.b.x, global0.b.x)), _wgslsmith_f_op_f32(select(-1000f, -1812f, true))))) - -584f), vec2<f32>(global2.a, 345f));
    global2 = Struct_2(global2.a, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1324f, -438f)))))), _wgslsmith_f_op_f32(1f * global2.b.x), 1072f), arg_1.zz, 1u >> (firstTrailingBit(~1u) % 32u), vec2<bool>(all(vec3<bool>(false, arg_0.e.x, false)), true));
    let var_0 = arg_0;
    global0 = Struct_1(-1072f, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global1.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-154f, arg_0.a) - vec2<f32>(-951f, global2.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-881f, _wgslsmith_f_op_f32(step(-469f, arg_0.b.x)))))));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-global2.b.x), global0.b), _wgslsmith_sub_vec4_i32(abs(-vec4<i32>(arg_1.x, 20045i, u_input.a, u_input.a)), vec4<i32>(~64658i, arg_1.x, firstTrailingBit(global2.c.x & 2454i), 37680i ^ _wgslsmith_add_i32(u_input.a, u_input.a))));
    return vec2<i32>(_wgslsmith_mult_i32(-5917i, -1i), -1i);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: bool) -> vec3<i32> {
    global2 = Struct_2(791f, global2.b, _wgslsmith_mult_vec2_i32(func_3(Struct_2(-870f, global2.b, vec2<i32>(global2.c.x, 6194i), global2.d, vec2<bool>(arg_2, arg_2)), -(~vec3<i32>(global2.c.x, arg_1, u_input.a))), -global2.c), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(4294967295u, global2.d), 1u, 52218u, global2.d), ~(~vec4<u32>(4294967295u, global2.d, 44763u, global2.d))), reverseBits(4294967295u), ~global2.d), vec2<bool>(any(vec3<bool>(true, !arg_0, true)), true));
    global0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.b.x))), global0.b);
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.b.x - 182f)))) * -1245f), global0.b);
    var var_0 = -29086i;
    let var_1 = ~60609u;
    return -(_wgslsmith_clamp_vec3_i32(vec3<i32>(global2.c.x, -2147483647i, arg_1) ^ vec3<i32>(arg_1, -2698i, arg_1), ~vec3<i32>(-22095i, 41479i, u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1, 0i, arg_1), vec3<i32>(1i, -1i, u_input.a))) ^ -vec3<i32>(1i, global2.c.x, -2269i)) | _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(-24561i, global2.c.x), func_3(Struct_2(global1.b.x, global2.b, global2.c, global2.d, vec2<bool>(arg_2, false)), vec3<i32>(u_input.a, 1532i, 15301i)).x), arg_1, 2147483647i >> (~global2.d % 32u)), vec3<i32>(global2.c.x, -1i, arg_1));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<i32>) -> Struct_1 {
    global0 = Struct_1(arg_1.x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_1.yy - _wgslsmith_f_op_vec2_f32(vec2<f32>(-206f, -1693f) + vec2<f32>(-682f, 400f))), arg_1.yy, global2.e.x)))));
    global0 = arg_0;
    let var_0 = Struct_2(global1.b.x, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-512f, _wgslsmith_f_op_f32(trunc(arg_0.b.x)), _wgslsmith_f_op_f32(global1.a - 200f)))), vec2<i32>(abs(firstLeadingBit(_wgslsmith_div_i32(0i, -2147483647i))), max(-2147483647i, global2.c.x)), abs(~1u), global2.e);
    let var_1 = Struct_2(-1355f, var_0.b, vec2<i32>(_wgslsmith_div_i32(var_0.c.x, var_0.c.x), abs(u_input.a)), countOneBits((~var_0.d >> (~global2.d % 32u)) ^ _wgslsmith_div_u32(4294967295u, ~0u)), global2.e);
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.b.x)))), 1000f), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.a, 311f), _wgslsmith_f_op_vec2_f32(trunc(arg_1.zx))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.b.x)) - _wgslsmith_f_op_f32(floor(3107f))))) * 1213f), _wgslsmith_f_op_vec3_f32(floor(arg_1.b)), vec2<i32>(i32(-1i) * -1i, _wgslsmith_sub_i32(9741i, _wgslsmith_mod_i32(429i, 2147483647i))), ~(~arg_1.d), arg_1.e);
}

fn func_1() -> Struct_1 {
    global2 = func_5(func_4(Struct_1(206f, vec2<f32>(_wgslsmith_div_f32(global0.a, global0.a), _wgslsmith_f_op_f32(1000f - global2.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.b.x, -1121f, -1171f), global2.b)), global2.b))), max(~reverseBits(vec3<i32>(u_input.a, 1i, u_input.a)), func_2(global2.e.x && global2.e.x, -54092i, true))), Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1701f)))), global2.b, -vec2<i32>(firstTrailingBit(u_input.a), 1i), ~4294967295u, select(vec2<bool>(global2.b.x == 853f, global2.e.x && false), !global2.e, select(true, true, false))), Struct_3(func_4(Struct_1(_wgslsmith_f_op_f32(117f + global0.a), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-916f, -1056f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-741f, global0.b.x, global0.a) * global2.b), global2.b)), vec3<i32>(~6539i, _wgslsmith_dot_vec4_i32(vec4<i32>(22896i, global2.c.x, u_input.a, 1i), vec4<i32>(2147483647i, u_input.a, global2.c.x, global2.c.x)), func_3(Struct_2(global0.b.x, global2.b, vec2<i32>(global2.c.x, global2.c.x), global2.d, vec2<bool>(false, false)), vec3<i32>(7008i, -1i, -1i)).x)), ~abs(vec4<i32>(u_input.a, 37320i, -1i, -6531i)) & vec4<i32>(-9885i, firstTrailingBit(global2.c.x), u_input.a, 1i)), vec2<i32>(-2147483647i, -(~(-global2.c.x))));
    var var_0 = func_4(func_4(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-802f)))), _wgslsmith_f_op_vec2_f32(global0.b + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.b.x, global0.b.x), vec2<f32>(1396f, -557f), false)))), vec3<f32>(_wgslsmith_f_op_f32(max(1131f, _wgslsmith_f_op_f32(global0.a - 576f))), global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -352f) - _wgslsmith_f_op_f32(abs(global2.b.x)))), vec3<i32>(-1i, global2.c.x, -26147i)), _wgslsmith_f_op_vec3_f32(step(global2.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, global2.a, -1145f) + _wgslsmith_f_op_vec3_f32(global2.b * vec3<f32>(1096f, global1.b.x, global0.b.x)))))), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.a, 2147483647i, -2147483647i), vec3<i32>(u_input.a, global2.c.x, 16744i), true), vec3<i32>(global2.c.x, global2.c.x, -40384i) ^ vec3<i32>(1i, u_input.a, -10523i)) ^ reverseBits(vec3<i32>(global2.c.x, -1i, 1i)), vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, global2.c.x), global2.c), _wgslsmith_sub_vec2_i32(vec2<i32>(global2.c.x, -59962i), vec2<i32>(-1i, 41882i))), 19930i, global2.c.x)));
    global1 = func_4(func_4(Struct_1(_wgslsmith_f_op_f32(global0.a + func_4(Struct_1(var_0.a, global2.b.xz), global2.b, vec3<i32>(0i, 0i, u_input.a)).a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.a, var_0.b.x))), vec2<f32>(global1.b.x, -1314f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global2.b)))), countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(global2.c.x, 0i, -5354i), vec3<i32>(-32741i, u_input.a, u_input.a))) << (~vec3<u32>(4294967295u, global2.d, global2.d) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2608f, 364f, var_0.a) * vec3<f32>(global2.b.x, 184f, -1580f))))), -(~vec3<i32>(global2.c.x, -2147483647i, 12974i)));
    let var_1 = true;
    let var_2 = _wgslsmith_add_i32(-_wgslsmith_add_i32(1i, 1i), 2147483647i);
    return Struct_1(func_5(func_4(Struct_1(_wgslsmith_f_op_f32(min(1472f, 584f)), global1.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.b + global2.b)), vec3<i32>(~var_2, 0i, _wgslsmith_mod_i32(14404i, -2147483647i))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1070f))), _wgslsmith_f_op_vec3_f32(global2.b - _wgslsmith_f_op_vec3_f32(-vec3<f32>(353f, var_0.b.x, 211f))), -global2.c, 16873u ^ ~global2.d, !select(global2.e, global2.e, global2.e)), Struct_3(func_4(Struct_1(global1.b.x, vec2<f32>(-497f, var_0.a)), vec3<f32>(var_0.b.x, global0.a, -627f), vec3<i32>(global2.c.x, -19137i, u_input.a)), reverseBits(vec4<i32>(4076i, 33977i, 1i, var_2)) ^ (vec4<i32>(0i, 31757i, global2.c.x, global2.c.x) & vec4<i32>(-33510i, global2.c.x, -2147483647i, global2.c.x))), vec2<i32>(select(_wgslsmith_sub_i32(global2.c.x, var_2), -2147483647i, global2.e.x && false), global2.c.x)).a, vec2<f32>(_wgslsmith_f_op_f32(-742f - _wgslsmith_f_op_f32(f32(-1f) * -1131f)), global0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(), _wgslsmith_add_vec4_i32(~select(vec4<i32>(1i, -2147483647i, global2.c.x, 21287i), vec4<i32>(0i, global2.c.x, global2.c.x, u_input.a), true) >> (countOneBits(~vec4<u32>(global2.d, global2.d, 60034u, 1u)) % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.a, 2147483647i, global2.c.x)));
    var var_1 = -firstTrailingBit(-(~global2.c)) & func_3(func_5(Struct_1(_wgslsmith_f_op_f32(exp2(global2.a)), _wgslsmith_f_op_vec2_f32(floor(global2.b.zy))), Struct_2(global2.b.x, _wgslsmith_f_op_vec3_f32(global2.b + global2.b), -global2.c, global2.d, vec2<bool>(true, true)), Struct_3(var_0.a, abs(var_0.b)), var_0.b.yx), ~vec3<i32>(-1i, -2147483647i, var_0.b.x));
    let var_2 = select(firstTrailingBit(vec4<u32>(~_wgslsmith_clamp_u32(23888u, 4294967295u, 4294967295u), _wgslsmith_div_u32(global2.d, ~0u), 63551u, 39560u)), vec4<u32>(31610u, global2.d, _wgslsmith_mult_u32(firstTrailingBit(~global2.d), (0u << (global2.d % 32u)) << (~0u % 32u)), abs(global2.d)), !select(!select(vec4<bool>(global2.e.x, global2.e.x, false, true), vec4<bool>(false, true, global2.e.x, true), vec4<bool>(false, global2.e.x, false, global2.e.x)), vec4<bool>(false && global2.e.x, select(true, true, false), global2.e.x, true | global2.e.x), select(select(vec4<bool>(global2.e.x, global2.e.x, false, global2.e.x), vec4<bool>(global2.e.x, true, global2.e.x, true), global2.e.x), !vec4<bool>(false, true, true, global2.e.x), true)));
    global1 = Struct_1(_wgslsmith_f_op_f32(func_4(var_0.a, func_5(Struct_1(global2.a, global2.b.yy), Struct_2(global1.b.x, global2.b, global2.c, 1u, vec2<bool>(global2.e.x, true)), Struct_3(var_0.a, var_0.b), -vec2<i32>(-1i, var_0.b.x)).b, abs(vec3<i32>(1i, -14258i, -2147483647i))).a - _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_vec2_f32(-var_0.a.b));
    var var_3 = Struct_1(global0.a, global1.b);
    let var_4 = var_2.x;
    global2 = func_5(func_4(func_1(), vec3<f32>(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a * var_3.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1108f)))), ~_wgslsmith_div_vec3_i32(countOneBits(var_0.b.yxz), min(vec3<i32>(var_1.x, 0i, 39600i), vec3<i32>(var_1.x, global2.c.x, global2.c.x)))), Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.b.x, _wgslsmith_f_op_f32(global1.b.x * -615f)), func_1().b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_5(var_0.a, Struct_2(global0.b.x, global2.b, global2.c, var_4, global2.e), Struct_3(Struct_1(-619f, global2.b.zx), vec4<i32>(-434i, -2147483647i, 0i, global2.c.x)), var_0.b.ww).a, _wgslsmith_f_op_f32(min(1432f, var_3.b.x)), global2.a)), var_0.b.wy ^ -func_5(var_0.a, Struct_2(-1081f, global2.b, global2.c, 4294967295u, global2.e), Struct_3(Struct_1(global2.a, vec2<f32>(var_3.a, global0.a)), var_0.b), vec2<i32>(-1i, var_0.b.x)).c, global2.d, global2.e), Struct_3(var_0.a, _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(var_0.b, var_0.b), vec4<i32>(-34317i, global2.c.x, 1i, 2147483647i)), abs(~var_0.b))), countOneBits(var_0.b.yy ^ ((global2.c << (vec2<u32>(global2.d, 4294967295u) % vec2<u32>(32u))) | abs(vec2<i32>(-2845i, 1i)))));
    let var_5 = 933f;
    var_1 = -select(vec2<i32>(~0i, ~var_0.b.x), ~vec2<i32>(-11055i, -23674i), select(select(global2.e, vec2<bool>(false, false), global2.e), global2.e, all(vec4<bool>(global2.e.x, global2.e.x, true, global2.e.x)))) << (min(var_2.xz, vec2<u32>(firstTrailingBit(0u) >> (0u % 32u), var_4)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, var_0.b.yy, abs(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, 20261u, var_4, var_2.x), countOneBits(var_2)), var_2)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_2.x, global2.d, 4831u), var_2.zzx, vec3<bool>(global2.e.x, true, global2.e.x)), var_2.xzz & vec3<u32>(9773u, 4294967295u, var_2.x)) << (53649u % 32u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(global2.d, var_4), _wgslsmith_clamp_u32(global2.d, var_4, 0u)), _wgslsmith_mult_u32(0u, 0u))), 3120u & var_2.x);
}

