struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32 = -27352i;

var<private> global2: Struct_2 = Struct_2(vec3<f32>(238f, -1063f, -1660f));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> bool {
    global1 = arg_1.c.x;
    global2 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global2.a.x, 112f), global2.a.x, false)), -270f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global2.a.x))))))));
    global1 = 10947i;
    var var_0 = vec3<bool>(all(arg_1.a), (abs(abs(0i)) << (~_wgslsmith_dot_vec3_u32(u_input.a.xxy, vec3<u32>(arg_1.d.x, arg_1.d.x, arg_1.d.x)) % 32u)) >= ~arg_1.c.x, arg_1.a.x);
    var var_1 = 15420u;
    return true;
}

fn func_2(arg_0: u32) -> Struct_3 {
    let var_0 = vec3<i32>(u_input.d.x ^ u_input.b.x, 24370i, _wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(select(u_input.c.zzz, u_input.b, vec3<bool>(false, true, false)), _wgslsmith_sub_vec3_i32(vec3<i32>(-9719i, u_input.d.x, 0i), u_input.c.xyz)), -u_input.c.x));
    global1 = reverseBits(~select(~1i, 1i, true));
    let var_1 = Struct_4(min(vec3<u32>(29540u, _wgslsmith_sub_u32(~19940u, 1u), _wgslsmith_mod_u32(~1050u, _wgslsmith_mod_u32(1u, arg_0))), min(_wgslsmith_clamp_vec3_u32(u_input.a.zzy >> (vec3<u32>(u_input.a.x, arg_0, u_input.a.x) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(34077u, 0u, 31942u), u_input.a.wxy), u_input.a.yxy), max(vec3<u32>(arg_0, arg_0, u_input.a.x) | vec3<u32>(113473u, 82510u, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, 18311u)))));
    return Struct_3(!select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), true), vec4<bool>(true, true, false, global2.a.x == global2.a.x), func_3(Struct_1(vec2<i32>(-1i, var_0.x)), Struct_3(vec4<bool>(false, true, false, true), arg_0, vec2<i32>(var_0.x, u_input.d.x), vec4<u32>(u_input.a.x, u_input.a.x, arg_0, u_input.a.x)))), var_1.a.x, abs(_wgslsmith_add_vec2_i32(firstLeadingBit(var_0.xz), vec2<i32>(1i, 1i))), firstTrailingBit(u_input.a));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_3) -> vec4<bool> {
    var var_0 = abs(select(~(~arg_3.d.zw), _wgslsmith_mod_vec2_u32(vec2<u32>(func_2(u_input.a.x).d.x, ~u_input.a.x), _wgslsmith_div_vec2_u32(~u_input.a.xy, select(vec2<u32>(12977u, arg_1), u_input.a.zz, arg_3.a.xy))), !vec2<bool>(true, arg_3.a.x)));
    var var_1 = arg_0;
    let var_2 = true;
    global1 = u_input.c.x;
    var var_3 = arg_0;
    return vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x * 1000f) - _wgslsmith_div_f32(-311f, 1000f))) < 475f, !(abs(arg_1) == 15541u), var_2, 2147483647i < max(arg_3.c.x, arg_3.c.x));
}

fn func_1(arg_0: vec4<bool>) -> bool {
    let var_0 = Struct_3(!select(func_4(Struct_2(vec3<f32>(global2.a.x, global2.a.x, global2.a.x)), ~30579u, vec3<f32>(-261f, 170f, global2.a.x), func_2(42469u)), !select(arg_0, arg_0, arg_0), false), u_input.a.x, -_wgslsmith_clamp_vec2_i32(reverseBits(_wgslsmith_mod_vec2_i32(u_input.c.xx, vec2<i32>(u_input.c.x, u_input.b.x))), select(vec2<i32>(-24332i, -40699i), vec2<i32>(u_input.b.x, u_input.c.x), select(arg_0.zx, arg_0.ww, true)), u_input.c.xw), max(~u_input.a, u_input.a));
    global1 = firstLeadingBit(u_input.c.x);
    global2 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1557f, _wgslsmith_div_f32(global2.a.x, -801f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-328f + global2.a.x))))));
    var var_1 = vec3<bool>(!(!(all(var_0.a.yw) || true)), u_input.d.x >= -firstLeadingBit(_wgslsmith_mod_i32(-26518i, 2147483647i)), var_0.a.x);
    global2 = Struct_2(global2.a);
    return func_2(1u).a.x;
}

fn func_5(arg_0: vec2<bool>, arg_1: f32, arg_2: u32) -> Struct_4 {
    global1 = -(~(1i & _wgslsmith_add_i32(-22352i, u_input.b.x))) << (1u % 32u);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-710f, -1274f)) - global2.a.x);
    let var_0 = _wgslsmith_clamp_i32(u_input.d.x, 2147483647i, u_input.b.x);
    var var_1 = Struct_2(global2.a);
    global1 = ~(-u_input.b.x);
    return Struct_4(_wgslsmith_mult_vec3_u32(u_input.a.ywz, u_input.a.yzz) ^ firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.a.xy), ~arg_2, ~u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(vec3<u32>(32076u, _wgslsmith_dot_vec3_u32(select(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), ~vec3<u32>(u_input.a.x, u_input.a.x, 0u), any(vec2<bool>(true, true))), vec3<u32>(u_input.a.x, u_input.a.x, ~u_input.a.x)), ~(~(~0u))));
    let var_1 = global2.a.yx;
    let var_2 = ~1u;
    let var_3 = firstLeadingBit(u_input.c.zxz);
    var_0 = func_5(vec2<bool>(func_1(vec4<bool>(false, true, true, true)) && all(vec3<bool>(true, true, true)), any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, false, false)))), _wgslsmith_f_op_f32(2657f - global2.a.x), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, 20054u, ~var_0.a.x, 4294967295u), u_input.a), firstLeadingBit(0u), 4294967295u));
    global0 = global2.a.x;
    global0 = _wgslsmith_f_op_f32(var_1.x * var_1.x);
    var var_4 = u_input.a;
    var var_5 = global2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, global2.a.x)) - _wgslsmith_f_op_vec2_f32(select(global2.a.xx, global2.a.yy, true))))), u_input.b.x);
}

