struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(-23577i, 53440i, 1i), vec3<i32>(0i, 17192i, 1i), vec3<i32>(1i, 50646i, 27953i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<u32>) -> Struct_1 {
    global0 = array<vec3<i32>, 3>();
    let var_0 = select(~12661u, _wgslsmith_mult_u32(arg_1.x, 1u), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), all(vec4<bool>(true, false, true, true))), vec3<bool>(true, true, true))));
    var var_1 = true;
    var var_2 = _wgslsmith_div_i32(68400i, -(~17524i));
    global0 = array<vec3<i32>, 3>();
    return Struct_1(vec4<i32>(u_input.a, 1i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.a, u_input.c.x, u_input.a), vec4<i32>(u_input.c.x, u_input.c.x, -1i, -2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, -39353i, u_input.c.x, u_input.b), vec4<i32>(1i, 1i, 43350i, 1i), vec4<i32>(-2147483647i, 1i, u_input.b, u_input.c.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 402i, u_input.c.x, -14149i) << (vec4<u32>(0u, 4750u, 26190u, 0u) % vec4<u32>(32u)), vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b) << (arg_0 % vec4<u32>(32u)))) >> (reverseBits(~arg_0) % vec4<u32>(32u)), vec4<bool>(!(true != any(vec4<bool>(false, true, false, false))), true, 108952u != ~_wgslsmith_dot_vec2_u32(arg_1.yy, vec2<u32>(var_0, var_0)), !select(true, true, true)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec4<u32>) -> vec2<i32> {
    global0 = array<vec3<i32>, 3>();
    let var_0 = Struct_1(~max(arg_1, -_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, -5425i, -15035i), arg_1, vec4<i32>(u_input.a, -189i, u_input.b, u_input.b))), vec4<bool>(false, true, ~0u >= arg_2.x, !any(vec4<bool>(true, true, true, true))));
    var var_1 = vec3<u32>(u_input.d, ~34601u, 4834u);
    global0 = array<vec3<i32>, 3>();
    var var_2 = func_2(~(arg_2 | vec4<u32>(var_1.x & arg_2.x, ~0u, arg_2.x, u_input.d >> (arg_2.x % 32u))), firstLeadingBit(arg_2));
    return vec2<i32>(var_0.a.x, -1i);
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_1(select(arg_3.a.a, reverseBits(vec4<i32>(-1i) * -vec4<i32>(0i, u_input.a, 22855i, arg_1.x)), arg_3.a.b.x), vec4<bool>(arg_3.a.b.x, false, arg_3.a.b.x, arg_3.a.b.x));
    var var_1 = Struct_3(arg_3, max(arg_3.a.a.xwy, arg_3.a.a.zxw | _wgslsmith_clamp_vec3_i32(arg_3.a.a.xwy & vec3<i32>(arg_1.x, arg_1.x, 2147483647i), global0[_wgslsmith_index_u32(4294967295u, 3u)], max(vec3<i32>(arg_3.a.a.x, 25077i, u_input.c.x), arg_3.a.a.wxy))), firstTrailingBit(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.c.x, var_0.a.x, 2147483647i, 29306i)), vec4<i32>(firstLeadingBit(2147483647i), arg_1.x, -arg_1.x, countOneBits(-1i)))), arg_2, vec4<i32>(-(2147483647i << (_wgslsmith_clamp_u32(109468u, arg_2, 1u) % 32u)), ~_wgslsmith_mod_i32(arg_3.a.a.x, arg_1.x), arg_1.x | -8415i, -(u_input.c.x >> (9110u % 32u))));
    var var_2 = u_input.d;
    global0 = array<vec3<i32>, 3>();
    global0 = array<vec3<i32>, 3>();
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    let var_1 = max(~func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(872f, -1310f, -184f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-173f, -2019f, -322f))), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.c.x, -53448i, -13603i), vec4<i32>(u_input.a, u_input.b, u_input.a, u_input.b) ^ vec4<i32>(23795i, u_input.b, u_input.b, 43800i)), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(36492u, 4294967295u, u_input.d, u_input.d), vec4<u32>(u_input.d, u_input.d, 4846u, 0u), vec4<u32>(u_input.d, 0u, u_input.d, 1u)))), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(-2147483647i & u_input.a, func_3(-1593f, u_input.c.zz, 22922u, Struct_2(Struct_1(vec4<i32>(1i, u_input.c.x, u_input.a, u_input.a), vec4<bool>(false, false, false, false))))), 1i & u_input.c.x), ~(~u_input.b & u_input.a)));
    global0 = array<vec3<i32>, 3>();
    global0 = array<vec3<i32>, 3>();
    let var_2 = Struct_1(-(~(-max(vec4<i32>(u_input.a, 76962i, -2147483647i, 1i), vec4<i32>(var_1.x, -17224i, u_input.b, 62573i)))), vec4<bool>(any(vec3<bool>(true, any(vec3<bool>(true, false, false)), false)), true || (~u_input.c.x == var_1.x), func_2(vec4<u32>(_wgslsmith_sub_u32(u_input.d, u_input.d), 85623u, 1u, abs(u_input.d)), min(firstTrailingBit(vec4<u32>(u_input.d, u_input.d, 82245u, 4294967295u)), firstTrailingBit(vec4<u32>(u_input.d, 0u, 51441u, u_input.d)))).b.x, !(max(u_input.d, 5177u) <= ~81516u)));
    let var_3 = Struct_3(Struct_2(Struct_1(vec4<i32>(-2147483647i, ~(-47497i), u_input.b, -35851i), !var_2.b)), vec3<i32>(var_2.a.x | var_2.a.x, -55136i, reverseBits(_wgslsmith_div_i32(-2147483647i, 2147483647i >> (u_input.d % 32u)))), vec4<i32>(72095i, -5873i, 1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(var_1.x, u_input.c.x), _wgslsmith_mult_vec2_i32(var_1, select(var_2.a.zy, var_2.a.zy, var_2.b.x)))), _wgslsmith_dot_vec2_u32(vec2<u32>(~firstLeadingBit(u_input.d), ~(u_input.d & 4294967295u)), ~vec2<u32>(~u_input.d, ~63193u)), _wgslsmith_div_vec4_i32(-(~(~vec4<i32>(1602i, var_1.x, var_1.x, 2147483647i))), var_2.a));
    global0 = array<vec3<i32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(-1196f)), 48556u, 1f, _wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, var_3.d), 12801u) ^ ~(~u_input.d));
}

