struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: vec4<u32> = vec4<u32>(1u, 49315u, 0u, 1u);

var<private> global2: array<vec4<i32>, 23>;

var<private> global3: vec3<u32>;

var<private> global4: vec2<i32>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec2<f32> {
    global2 = array<vec4<i32>, 23>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~select(u_input.a, u_input.a, arg_1.c & false), global1.xww), global3.x), 22u)];
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b), arg_1.b);
    global2 = array<vec4<i32>, 23>();
    var var_2 = ~(~firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, u_input.a.x, global1.x, 27105u), vec4<u32>(global3.x, 1u, global3.x, 4294967295u), vec4<u32>(29186u, 1u, global1.x, u_input.a.x)), vec4<u32>(1u, global3.x, 1u, 76080u))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1) * _wgslsmith_f_op_vec2_f32(var_1 - var_1)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_0) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_0.b) + var_1)))));
}

fn func_2(arg_0: vec3<i32>) -> vec2<i32> {
    global4 = ~(~u_input.b.zx);
    var var_0 = global0[_wgslsmith_index_u32(global3.x, 22u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(var_0.b, global0[_wgslsmith_index_u32(12762u, 22u)])) + vec2<f32>(150f, var_0.b)))))));
    global1 = _wgslsmith_add_vec4_u32(vec4<u32>(85229u, _wgslsmith_add_u32(56883u, countOneBits(global3.x)), countOneBits((global1.x ^ 1u) ^ ~19628u), ~(~u_input.a.x) << (min(_wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(95926u, 4294967295u)), ~u_input.a.x) % 32u)), ~(~select(vec4<u32>(u_input.a.x, global3.x, global1.x, 22348u), ~vec4<u32>(708u, 1u, global1.x, u_input.a.x), all(vec3<bool>(true, true, true)))));
    let var_2 = reverseBits(_wgslsmith_add_vec3_u32(reverseBits(~u_input.a | u_input.a), ~_wgslsmith_mult_vec3_u32(select(u_input.a, u_input.a, var_0.c), max(vec3<u32>(101874u, 4294967295u, 20986u), u_input.a))));
    return u_input.b.yz;
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> bool {
    let var_0 = global2[_wgslsmith_index_u32(4294967295u >> (~_wgslsmith_mult_u32(~global1.x, max(global1.x, ~arg_1)) % 32u), 23u)];
    var var_1 = _wgslsmith_sub_vec4_i32(firstTrailingBit(arg_0), vec4<i32>(36188i, -59034i, _wgslsmith_div_i32(countOneBits(var_0.x ^ -35910i), var_0.x ^ -2804i), _wgslsmith_mult_i32(var_0.x, global4.x)));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 23068u), 22u)];
    global0 = array<Struct_1, 22>();
    let var_3 = Struct_1(func_2(vec3<i32>(u_input.b.x, var_2.d.x, ~u_input.b.x)), _wgslsmith_div_f32(-579f, 1000f), global3.x != 1u, countOneBits(u_input.b.zz));
    return !var_2.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<u32>) -> Struct_1 {
    global1 = ~(firstLeadingBit(arg_2) | (countOneBits(vec4<u32>(64711u, 1u, arg_2.x, u_input.a.x)) ^ arg_2));
    let var_0 = Struct_1(arg_0.d, _wgslsmith_f_op_f32(f32(-1f) * -451f), arg_1.x, vec2<i32>(u_input.b.x, _wgslsmith_sub_i32(-4793i, -22629i)));
    global2 = array<vec4<i32>, 23>();
    let var_1 = var_0;
    global3 = u_input.a;
    return Struct_1(~vec2<i32>(u_input.b.x, firstLeadingBit(~(-44104i))), 1f, true, max(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(var_0.d.x, var_1.d.x), var_1.a), vec2<i32>(u_input.b.x, var_1.a.x)), u_input.b.zx));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(-_wgslsmith_mult_vec2_i32(vec2<i32>(global4.x, 31572i), arg_0.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))))), !(true || arg_0.c), vec2<i32>(-arg_0.d.x, u_input.b.x));
    global2 = array<vec4<i32>, 23>();
    let var_1 = Struct_1(~(~var_0.d), var_0.b, arg_0.c, abs(-arg_0.d));
    let var_2 = vec2<i32>(max(-45059i, 1i), select(-_wgslsmith_dot_vec4_i32(u_input.b, global2[_wgslsmith_index_u32(global3.x ^ u_input.a.x, 23u)]), ~(-28548i), select(true, true, global3.x < global3.x) || true));
    global0 = array<Struct_1, 22>();
    return func_4(Struct_1(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.a.x, 1i) | vec2<i32>(var_1.d.x, u_input.b.x), reverseBits(vec2<i32>(var_0.a.x, 79428i)), var_2 << (global3.zy % vec2<u32>(32u))), var_2, vec2<bool>(var_1.b >= var_0.b, false)), var_0.b, all(vec4<bool>(var_1.c && true, 313f <= var_0.b, true, all(vec4<bool>(arg_0.c, var_1.c, true, false)))), vec2<i32>(min(0i, -2147483647i), 1i)), !(!vec3<bool>(true, true, var_0.c)), _wgslsmith_add_vec4_u32(~(~(vec4<u32>(32278u, 42369u, 1u, global3.x) << (vec4<u32>(1u, 19247u, global1.x, u_input.a.x) % vec4<u32>(32u)))), select(~(~vec4<u32>(2696u, global1.x, 40869u, global1.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(70286u, global1.x, global1.x, 17666u) & vec4<u32>(global1.x, u_input.a.x, u_input.a.x, global1.x), select(vec4<u32>(4294967295u, u_input.a.x, global1.x, global1.x), vec4<u32>(21495u, 23868u, global1.x, 4294967295u), vec4<bool>(false, false, arg_0.c, false))), !vec4<bool>(arg_0.c, arg_0.c, var_0.c, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = countOneBits(_wgslsmith_mult_vec2_i32(countOneBits(select(u_input.b.xw, vec2<i32>(2147483647i, global4.x), vec2<bool>(false, false))) >> (~(global1.yw >> (global1.ww % vec2<u32>(32u))) % vec2<u32>(32u)), ~(-_wgslsmith_clamp_vec2_i32(vec2<i32>(-32253i, u_input.b.x), vec2<i32>(global4.x, u_input.b.x), u_input.b.yx))));
    let var_0 = func_5(func_4(global0[_wgslsmith_index_u32(abs(~_wgslsmith_div_u32(global1.x, global3.x)), 22u)], vec3<bool>(true, func_1(vec4<i32>(-2147483647i, u_input.b.x, global4.x, 2147483647i), 0u), all(vec3<bool>(false, true, true))), firstTrailingBit(vec4<u32>(u_input.a.x ^ 4294967295u, ~global1.x, global1.x, _wgslsmith_add_u32(global3.x, 10188u)))));
    global3 = vec3<u32>(global3.x, ~(~global3.x & 0u), global3.x);
    let var_1 = select(-(~firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.d.x, var_0.d.x, -1i, u_input.b.x), global2[_wgslsmith_index_u32(4294967295u, 23u)], vec4<i32>(global4.x, 1i, u_input.b.x, 2147483647i)))), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x >> (_wgslsmith_clamp_u32(46374u, ~u_input.a.x, _wgslsmith_mult_u32(global1.x, global3.x)) % 32u), 28553u), 23u)], select(vec4<bool>(true, _wgslsmith_f_op_f32(floor(-866f)) != var_0.b, true, true), vec4<bool>(all(vec2<bool>(true, true)) & true, var_0.c, var_0.c, func_1(vec4<i32>(u_input.b.x, 0i, 1i, 0i) & global2[_wgslsmith_index_u32(global3.x, 23u)], global3.x)), !vec4<bool>(var_0.c, var_0.c, false, !var_0.c)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * var_0.b)))), 100f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-101f, -691f)) * _wgslsmith_f_op_f32(var_0.b + var_0.b))), var_0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(select(~abs(vec2<u32>(0u, u_input.a.x)), abs(reverseBits(~global3.zx)), !select(!vec2<bool>(var_0.c, true), !vec2<bool>(var_0.c, var_0.c), vec2<bool>(var_0.c, var_0.c))));
}

