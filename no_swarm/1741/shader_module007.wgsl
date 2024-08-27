struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
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

var<private> global0: vec4<u32> = vec4<u32>(5209u, 1u, 56661u, 1u);

var<private> global1: u32 = 0u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> f32 {
    let var_0 = 277f;
    let var_1 = _wgslsmith_mult_i32(select(_wgslsmith_dot_vec4_i32(reverseBits(min(vec4<i32>(2147483647i, u_input.a, u_input.a, 0i), vec4<i32>(u_input.a, 2147483647i, arg_0.c.c, -71790i))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, arg_0.c.c, -1i, u_input.a))), arg_0.c.c, arg_0.a.a), firstTrailingBit(-15750i));
    var var_2 = ~vec4<i32>(1i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(var_1, u_input.a, ~(-1i)), var_1), arg_0.c.c, select(min(firstLeadingBit(43222i), arg_0.c.c), ~var_1, arg_1.x));
    global1 = 149u;
    var var_3 = arg_1.xw;
    return -313f;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: u32, arg_3: vec4<f32>) -> vec3<i32> {
    global0 = max(select(vec4<u32>(reverseBits(_wgslsmith_mult_u32(global0.x, u_input.c.x)), _wgslsmith_add_u32(1u, 1u | u_input.b), reverseBits(~u_input.b), abs(_wgslsmith_add_u32(31809u, 1u))), ~(~u_input.c), any(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))), reverseBits(firstLeadingBit(select(u_input.c, u_input.c, false) ^ vec4<u32>(arg_2, arg_0.a.x, 0u, arg_2))));
    let var_0 = arg_3.x;
    let var_1 = Struct_1(true, vec2<bool>(any(vec3<bool>(true, true, true)) != true, !all(vec4<bool>(true, true, false, true)) && (~arg_2 < ~u_input.b)), -6163i);
    var var_2 = Struct_1(1i <= ~var_1.c, !(!select(vec2<bool>(true, true), select(vec2<bool>(false, var_1.b.x), var_1.b, var_1.b), var_1.a)), -19746i << (max(arg_2, _wgslsmith_mult_u32(1u, u_input.b >> (116631u % 32u))) % 32u));
    let var_3 = arg_1.x;
    return -abs(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, i32(-1i) * -35146i, ~1i), -vec3<i32>(var_2.c, 1i, var_1.c) << (_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2, u_input.b, global0.x), global0.yzz) % vec3<u32>(32u))));
}

fn func_2(arg_0: Struct_2) -> vec3<i32> {
    global0 = ~(~reverseBits(u_input.c)) & u_input.c;
    let var_0 = abs(arg_0.a.c);
    global1 = ~min(4294967295u, 57738u);
    var var_1 = Struct_4(arg_0.a);
    var var_2 = false;
    return func_4(Struct_3(vec2<u32>(_wgslsmith_mult_u32(global0.x, 1u), ~global0.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.d, -1415f)))), _wgslsmith_div_f32(arg_0.d, _wgslsmith_f_op_f32(step(arg_0.d, _wgslsmith_f_op_f32(ceil(arg_0.d)))))), u_input.c.x, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.d - -689f), -768f)), _wgslsmith_f_op_f32(f32(-1f) * -956f), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(func_3(arg_0, vec4<bool>(true, false, arg_0.b.x, arg_0.c.a)))), arg_0.d), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, -224f, -2524f, arg_0.d))))))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> u32 {
    var var_0 = arg_2;
    global0 = firstTrailingBit(firstLeadingBit(~(~u_input.c)));
    var var_1 = vec2<i32>(-1i) * -min(-vec2<i32>(arg_2.c, u_input.a) >> (firstLeadingBit(vec2<u32>(13742u, 0u)) % vec2<u32>(32u)), vec2<i32>(-1i) * -vec2<i32>(-19957i, arg_2.c));
    let var_2 = _wgslsmith_mod_vec3_i32(~(_wgslsmith_clamp_vec3_i32(~vec3<i32>(var_0.c, -12924i, -19847i), vec3<i32>(-11340i, arg_2.c, var_0.c), ~vec3<i32>(-1i, -1i, var_1.x)) | (func_2(Struct_2(Struct_1(var_0.a, vec2<bool>(var_0.a, true), 28224i), vec3<bool>(false, var_0.a, true), Struct_1(false, vec2<bool>(false, true), 24341i), 1000f)) << (u_input.c.yyw % vec3<u32>(32u)))), ~abs(firstLeadingBit(abs(vec3<i32>(var_1.x, -61076i, u_input.a)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-559f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -217f))))) + -1000f);
    return 20138u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -936f;
    let var_1 = _wgslsmith_add_vec3_u32(~(~(~select(vec3<u32>(34904u, 30041u, 4294967295u), vec3<u32>(u_input.b, 4294967295u, u_input.b), true))), firstTrailingBit(_wgslsmith_clamp_vec3_u32(abs(~global0.wxw), global0.wxy, _wgslsmith_mod_vec3_u32(select(u_input.c.zzw, vec3<u32>(56747u, global0.x, 60621u), vec3<bool>(false, true, true)), u_input.c.yxy))));
    global0 = (vec4<u32>(4294967295u, u_input.b, 13643u, 99099u) ^ firstTrailingBit(vec4<u32>(func_1(true, global0.x, Struct_1(true, vec2<bool>(true, true), u_input.a)), u_input.b, 68221u, var_1.x))) ^ _wgslsmith_add_vec4_u32(abs(~countOneBits(u_input.c)), select(min(vec4<u32>(u_input.c.x, global0.x, 30975u, 1u) << (vec4<u32>(var_1.x, 1u, 4294967295u, u_input.b) % vec4<u32>(32u)), u_input.c), ~u_input.c, all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)))));
    let var_2 = -abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, -1i, 1i) << (vec4<u32>(12820u, u_input.b, 2589u, 1u) % vec4<u32>(32u)), reverseBits(vec4<i32>(-7756i, 1i, u_input.a, 31717i)))) != u_input.a;
    var var_3 = vec3<bool>(!var_2, any(select(!(!vec2<bool>(var_2, false)), vec2<bool>(var_2, all(vec3<bool>(var_2, false, true))), var_2)), false);
    let var_4 = Struct_4(Struct_1(!select(true, true, all(var_3.yy)), vec2<bool>(true, var_3.x), max(-31943i, 25756i)));
    let x = u_input.a;
    s_output = StorageBuffer(-119f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1158f, -745f)) - _wgslsmith_f_op_f32(f32(-1f) * -1367f)) - -1902f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1526f)), true)));
}

