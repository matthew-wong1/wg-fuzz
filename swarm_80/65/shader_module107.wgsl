struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_5 = Struct_5(true, 308f, vec4<i32>(i32(-2147483648), -33121i, -6205i, 0i));

var<private> global2: Struct_1 = Struct_1(vec2<u32>(1u, 4294967295u));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<f32>) -> bool {
    let var_0 = u_input.b.x;
    var var_1 = global2.a;
    let var_2 = vec3<bool>(any(select(vec3<bool>(global1.a & global1.a, true, !global1.a), select(select(vec3<bool>(false, true, false), vec3<bool>(false, global1.a, true), vec3<bool>(global1.a, true, false)), !vec3<bool>(global1.a, true, global1.a), select(vec3<bool>(false, global1.a, false), vec3<bool>(global1.a, global1.a, global1.a), global1.a)), vec3<bool>(!global1.a, all(vec4<bool>(false, false, global1.a, global1.a)), global1.a))), global1.a, all(vec4<bool>(global1.a, global1.a, true, true)));
    global0 = Struct_1(~u_input.b);
    let var_3 = global2.a.x ^ firstLeadingBit(21461u);
    return any(var_2.yy);
}

fn func_2(arg_0: vec2<i32>) -> bool {
    global0 = Struct_1(abs(firstTrailingBit(~u_input.b)));
    let var_0 = Struct_5(!func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, global1.b, global1.b)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, global1.b, global1.b) * vec3<f32>(-554f, -1000f, global1.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-379f, -1090f) * vec2<f32>(global1.b, 1000f)))), global1.b, -vec4<i32>(firstTrailingBit(global1.c.x), abs(-u_input.a), global1.c.x >> (global2.a.x % 32u), -global1.c.x));
    global0 = Struct_1(vec2<u32>(abs(~(~global0.a.x)), global0.a.x));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(19049i, abs(global1.c.x) ^ min(arg_0.x, -2147483647i)), ~(~var_1.x), -18187i, u_input.c), _wgslsmith_mod_vec4_i32(-select(firstTrailingBit(vec4<i32>(21252i, var_0.c.x, var_0.c.x, u_input.a)), abs(global1.c), vec4<bool>(false, global1.a, true, global1.a)), min(~var_0.c, _wgslsmith_sub_vec4_i32(min(global1.c, global1.c), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.c.x, -57928i, 0i, 57226i), global1.c)))));
    return global1.a;
}

fn func_1(arg_0: vec2<u32>, arg_1: i32) -> Struct_3 {
    global1 = Struct_5(select(_wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec2_i32(global1.c.zz, vec2<i32>(1i, 32741i))) <= 79529i, !global1.a, true), 790f, _wgslsmith_clamp_vec4_i32(global1.c, -_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -2147483647i, 11689i, -1i), global1.c), global1.c));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(global1.b - global1.b), global1.b);
    global1 = Struct_5(func_2(reverseBits(vec2<i32>(-1i) * -vec2<i32>(29457i, 6730i))), var_0.x, firstLeadingBit(~(-select(global1.c, global1.c, false))));
    var var_1 = Struct_5(true || all(select(select(vec4<bool>(true, true, global1.a, false), vec4<bool>(false, true, global1.a, global1.a), global1.a), vec4<bool>(global1.a, global1.a, global1.a, true), select(vec4<bool>(global1.a, true, global1.a, true), vec4<bool>(global1.a, true, global1.a, global1.a), vec4<bool>(true, true, global1.a, global1.a)))), _wgslsmith_f_op_f32(max(-277f, -1868f)), -select(vec4<i32>(-48125i, u_input.c, 1891i, arg_1), -vec4<i32>(global1.c.x, 2147483647i, -2147483647i, u_input.c), global1.a) >> (_wgslsmith_mult_vec4_u32(abs(vec4<u32>(global2.a.x, 16826u, global2.a.x, 2944u)) << (vec4<u32>(u_input.b.x, 4294967295u, global2.a.x, 65024u) % vec4<u32>(32u)), ~vec4<u32>(arg_0.x, 4130u, 42607u, 27576u)) % vec4<u32>(32u)));
    let var_2 = (~((i32(-1i) * -1i) << (global0.a.x % 32u)) & reverseBits(~u_input.c & 1i)) << (arg_0.x % 32u);
    return Struct_3(select(vec4<bool>(!var_1.a, _wgslsmith_f_op_f32(var_1.b - -2981f) > var_0.x, func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, -1985f, -328f) + vec3<f32>(-2373f, 1030f, var_1.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, global1.b))), var_1.a), !(!select(vec4<bool>(var_1.a, true, false, var_1.a), vec4<bool>(global1.a, var_1.a, true, false), true)), vec4<bool>(true, !global1.a, any(!vec3<bool>(var_1.a, global1.a, false)), var_1.a)), false, Struct_1(global0.a), countOneBits(max(global0.a.x, ~(u_input.b.x << (global0.a.x % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = global1.c.zwy;
    let var_2 = Struct_5(false, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.b))), countOneBits(~(~(vec4<i32>(u_input.a, 1i, 1i, 2147483647i) >> (vec4<u32>(global2.a.x, 0u, u_input.b.x, 0u) % vec4<u32>(32u))))));
    var var_3 = func_1(~vec2<u32>(_wgslsmith_div_u32(var_0, global0.a.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(68797u, 156276u, global0.a.x), vec3<u32>(global0.a.x, 0u, global2.a.x)) % 32u), _wgslsmith_mult_u32(11768u, 65651u)), countOneBits(0i));
    global1 = Struct_5(var_3.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b * -820f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.b * global1.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(539f + global1.b)))))), ~select(firstTrailingBit(-global1.c), max(firstTrailingBit(vec4<i32>(-1i, global1.c.x, global1.c.x, var_1.x)), select(var_2.c, var_2.c, var_3.a)), var_3.a));
    var var_4 = reverseBits(~var_2.c.zx);
    var var_5 = abs(~global1.c.xyz) & vec3<i32>(-2147483647i, ~61135i, var_1.x);
    var_4 = abs((_wgslsmith_mod_vec2_i32(-var_2.c.zw, vec2<i32>(1i, u_input.a)) ^ var_1.xy) >> (~var_3.c.a % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(74820u, u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, u_input.b.x, 41675u, var_0), vec4<u32>(global0.a.x, global2.a.x, var_0, global0.a.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(54092u, u_input.b.x, 2165u, var_0), ~vec4<u32>(1u, 30989u, 4294967295u, 0u))), 51812u, ~global2.a.x, ~23970u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(1127f, 2677f, 807f), vec3<f32>(497f, 445f, -1000f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(827f * _wgslsmith_f_op_f32(trunc(-882f))))), abs(_wgslsmith_sub_u32(39282u, _wgslsmith_clamp_u32(0u, u_input.b.x, global2.a.x) >> (~global0.a.x % 32u))));
}

