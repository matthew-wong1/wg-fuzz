struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(1142f, 1145f, -666f, -543f), vec2<bool>(true, true), 60956u, vec2<i32>(0i, i32(-2147483648)));

var<private> global1: bool;

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: Struct_2) -> bool {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-667f * _wgslsmith_f_op_f32(-global0.a.x))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global0.a), vec4<f32>(global0.a.x, global0.a.x, 795f, -296f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, -1715f), global0.a, vec4<bool>(arg_1.x, false, true, false)))))), !vec2<bool>(any(!vec3<bool>(false, arg_1.x, arg_1.x)), !arg_1.x | any(vec4<bool>(false, true, false, false))), 4650u, _wgslsmith_sub_vec2_i32(~(~global0.d) ^ u_input.b, vec2<i32>(_wgslsmith_mod_i32(-1i, arg_3.b.x) | _wgslsmith_mod_i32(u_input.b.x, -69817i), -(~(-27569i)))));
    var_0 = arg_3;
    global2 = 10676u;
    return _wgslsmith_f_op_f32(ceil(global0.a.x)) < _wgslsmith_f_op_f32(-1485f + _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - -157f))));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = all(select(vec4<bool>(global0.b.x, false, func_3(Struct_2(-1i, vec2<i32>(2147483647i, 1i)), vec2<bool>(false, false), select(vec4<u32>(8504u, global0.c, u_input.c, u_input.c), vec4<u32>(13603u, u_input.a.x, 0u, 0u), vec4<bool>(global0.b.x, global0.b.x, true, true)), Struct_2(0i, global0.d)), global0.b.x), !vec4<bool>(global0.d.x != 46318i, false, any(vec3<bool>(global0.b.x, false, false)), all(vec4<bool>(global0.b.x, global0.b.x, true, global0.b.x))), select(!(!vec4<bool>(false, true, global0.b.x, global0.b.x)), select(select(vec4<bool>(true, true, global0.b.x, false), vec4<bool>(true, global0.b.x, false, false), global0.b.x), !vec4<bool>(global0.b.x, false, true, true), true & global0.b.x), select(!vec4<bool>(false, false, global0.b.x, true), !vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), !global0.b.x))));
    global2 = ~43712u;
    let var_1 = u_input.a.yy;
    let var_2 = Struct_2(_wgslsmith_dot_vec3_i32(-min(_wgslsmith_div_vec3_i32(vec3<i32>(-26764i, 28222i, -26918i), vec3<i32>(-11323i, 0i, u_input.b.x)), ~vec3<i32>(-7150i, u_input.b.x, u_input.b.x)), abs(_wgslsmith_sub_vec3_i32(select(vec3<i32>(global0.d.x, 2147483647i, global0.d.x), vec3<i32>(4949i, u_input.b.x, global0.d.x), true), vec3<i32>(26124i, 0i, global0.d.x)))), -vec2<i32>(u_input.b.x | ~39864i, abs(0i)));
    global2 = ~_wgslsmith_sub_u32(countOneBits(~4294967295u >> (global0.c % 32u)), _wgslsmith_mod_u32(10454u, ~global0.c));
    return Struct_1(global0.a, select(global0.b, global0.b, global0.b.x), u_input.a.x, global0.d);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = u_input.a.x;
    let var_1 = arg_1;
    global0 = func_2(u_input.a.yy);
    let var_2 = u_input.a.zy;
    var_0 = var_1.c;
    return Struct_2(min(-7397i, _wgslsmith_mult_i32(max(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d.x, 7257i, var_1.d.x, arg_2), vec4<i32>(arg_1.d.x, -2147483647i, u_input.b.x, 2147483647i)), arg_2), _wgslsmith_add_i32(~2147483647i, func_2(var_2).d.x))), select(_wgslsmith_div_vec2_i32(-vec2<i32>(-2147483647i, 1i) | countOneBits(arg_1.d), vec2<i32>(reverseBits(2147483647i), _wgslsmith_dot_vec2_i32(arg_1.d, global0.d))), -var_1.d, true));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: f32) -> Struct_1 {
    var var_0 = abs(arg_2);
    global2 = u_input.c & ~1u;
    var var_1 = func_4(vec2<f32>(_wgslsmith_f_op_f32(-401f + _wgslsmith_f_op_f32(1609f + 1f)), _wgslsmith_f_op_f32(sign(-975f))), func_2(abs(u_input.a.zy)), global0.d.x, func_2(vec2<u32>(_wgslsmith_div_u32(global0.c, 1u), _wgslsmith_clamp_u32(arg_2, 4294967295u, 36497u)) | vec2<u32>(firstTrailingBit(global0.c), ~u_input.a.x)).a.xx);
    let var_2 = _wgslsmith_sub_vec4_i32(reverseBits(abs(abs(vec4<i32>(u_input.b.x, var_1.b.x, 1054i, 1i))) ^ _wgslsmith_add_vec4_i32(vec4<i32>(var_1.a, 0i, 1i, 0i), ~vec4<i32>(var_1.a, global0.d.x, -1591i, var_1.a))), ~vec4<i32>(33165i, -firstLeadingBit(1i), -5457i, -2147483647i));
    global1 = !(!global0.b.x);
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(282f, -335f, 1516f, -1177f) * global0.a))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, 1756f, global0.a.x, -329f) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a.x, -486f, arg_3, 626f)))) + vec4<f32>(arg_3, _wgslsmith_f_op_f32(trunc(-1066f)), global0.a.x, -1963f))), global0.b, ~14938u >> (_wgslsmith_sub_u32(u_input.a.x, abs(reverseBits(global0.c))) % 32u), abs(var_1.b));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = 1u;
    global2 = _wgslsmith_mod_u32(~_wgslsmith_div_u32(_wgslsmith_mod_u32(~global0.c, 1u), global0.c ^ 0u), 0u);
    let var_1 = countOneBits(-reverseBits(~vec3<i32>(global0.d.x, u_input.b.x, -8139i) | vec3<i32>(u_input.b.x, 34455i, u_input.b.x)));
    var var_2 = vec3<f32>(-536f, global0.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a.x))))));
    var var_3 = global0.b;
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>) -> StorageBuffer {
    global2 = _wgslsmith_clamp_u32(6125u, _wgslsmith_mod_u32(_wgslsmith_add_u32(min(~u_input.c, _wgslsmith_mod_u32(u_input.c, global0.c)), ~func_2(vec2<u32>(u_input.a.x, 1u)).c), 40863u), ~_wgslsmith_clamp_u32(arg_0.c, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c, arg_0.c, 32426u, u_input.a.x), vec4<u32>(global0.c, 5802u, 1u, 8442u)), ~arg_0.c), 0u));
    return StorageBuffer(reverseBits(((vec4<i32>(17184i, u_input.b.x, global0.d.x, global0.d.x) << (vec4<u32>(55254u, global0.c, u_input.a.x, global0.c) % vec4<u32>(32u))) & -vec4<i32>(u_input.b.x, arg_2.x, 9970i, u_input.b.x)) | _wgslsmith_mult_vec4_i32(~arg_2, vec4<i32>(arg_0.d.x, u_input.b.x, u_input.b.x, arg_2.x))), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(arg_1, -2147483647i, global0.d.x, -1i)) | _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(23595i, arg_1, u_input.b.x, 42748i), vec4<i32>(arg_2.x, arg_1, -45153i, arg_1)), abs(vec4<i32>(arg_2.x, u_input.b.x, arg_0.d.x, -7965i))), -_wgslsmith_clamp_vec4_i32(-arg_2, ~vec4<i32>(-13881i, -2147483647i, arg_2.x, 61793i), vec4<i32>(arg_0.d.x, -496i, 2147483647i, arg_0.d.x))), u_input.a, arg_2.wxx, _wgslsmith_f_op_vec3_f32(global0.a.yxz * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1411f, global0.a.x, global0.a.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(global0.a.x));
    let var_1 = true;
    global1 = global0.b.x;
    var var_2 = all(!select(!vec4<bool>(global0.b.x, false, var_1, false), !vec4<bool>(global0.b.x, var_1, false, var_1), false));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1064f, global0.a.x, -289f) - vec3<f32>(310f, var_0, -114f)), vec3<f32>(1637f, -1115f, 283f), all(vec3<bool>(global0.b.x, false, var_1)))))))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2406f, global0.a.x, _wgslsmith_f_op_f32(-global0.a.x)))));
    let x = u_input.a;
    s_output = func_6(func_5(func_1(all(!vec3<bool>(true, var_1, global0.b.x)), 16138u, 85172u, var_3.x)), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(11029i, 30828i, 2147483647i, u_input.b.x)), firstTrailingBit(-vec4<i32>(0i, u_input.b.x, -20254i, global0.d.x) << (firstTrailingBit(vec4<u32>(4294967295u, global0.c, 69685u, 4294967295u)) % vec4<u32>(32u)))), vec4<i32>(-13510i, 1i, -2147483647i, ~(-1i)));
}

