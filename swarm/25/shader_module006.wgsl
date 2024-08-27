struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-830f, -536f, 1151f);

var<private> global1: array<Struct_1, 1>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: f32) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(89126u << (u_input.a.x % 32u), 1u)];
    var var_1 = Struct_1(firstTrailingBit(~max(1u, var_0.a)), vec2<f32>(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) + -163f)), arg_1), var_0.c | ~var_0.c);
    var var_2 = Struct_1(1u, var_1.b, var_0.c);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(-1533f + var_0.b.x), var_0.b.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -300f), _wgslsmith_f_op_f32(1783f + 411f), _wgslsmith_f_op_f32(-501f * var_1.b.x)))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1694f)), _wgslsmith_f_op_f32(ceil(818f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * arg_1) - _wgslsmith_f_op_f32(max(var_1.b.x, var_0.b.x)))))));
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-468f, 434f, var_3.x)))))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(397f, var_3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-579f + 800f) - _wgslsmith_f_op_f32(818f - 143f)), _wgslsmith_f_op_f32(sign(var_2.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -764f), var_1.b.x, _wgslsmith_f_op_f32(sign(var_2.b.x)))))));
    return true;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = countOneBits(vec4<i32>(arg_0.c, -1i, arg_0.c, -34020i));
    var_0 = countOneBits((~vec4<i32>(arg_0.c, 14905i, var_0.x, arg_0.c) & -abs(vec4<i32>(-1i, -14902i, 2147483647i, -71261i))) | -(~(~vec4<i32>(arg_0.c, 0i, 1i, -68605i))));
    let var_1 = !(!vec4<bool>(true, !func_3(vec4<bool>(true, false, true, false), global0.x), func_3(vec4<bool>(true, true, false, true), arg_0.b.x), abs(arg_0.a) != select(arg_0.a, arg_0.a, false)));
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.b.x, global0.x))) - _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(-var_2.b.x))), -683f) + _wgslsmith_f_op_vec2_f32(-arg_0.b));
    return Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.b.x, var_3.x))))), _wgslsmith_add_i32(firstTrailingBit(_wgslsmith_div_i32(arg_0.c, var_2.c) ^ 21160i), var_0.x));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: f32, arg_3: u32) -> vec2<i32> {
    let var_0 = -1692f;
    global1 = array<Struct_1, 1>();
    let var_1 = func_2(Struct_1(_wgslsmith_mod_u32((90978u & u_input.a.x) | _wgslsmith_add_u32(u_input.a.x, arg_3), 4294967295u), vec2<f32>(322f, _wgslsmith_f_op_f32(-var_0)), -(~(2147483647i << (u_input.a.x % 32u)))));
    global1 = array<Struct_1, 1>();
    let var_2 = 13093u;
    return ~(-(~_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1, -787i), vec2<i32>(-7401i, arg_1), vec2<i32>(var_1.c, var_1.c))) & -abs(_wgslsmith_add_vec2_i32(vec2<i32>(11079i, 2147483647i), vec2<i32>(0i, 0i))));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: bool) -> vec2<f32> {
    var var_0 = -arg_1;
    var var_1 = func_2(func_2(func_2(Struct_1(countOneBits(arg_0), _wgslsmith_f_op_vec2_f32(abs(global0.yz)), -44021i))));
    global1 = array<Struct_1, 1>();
    let var_2 = global1[_wgslsmith_index_u32(u_input.a.x ^ 1u, 1u)];
    var var_3 = Struct_1(20106u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.x, -149f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 897f)))) - _wgslsmith_f_op_vec2_f32(floor(global0.zx))), 2147483647i);
    return vec2<f32>(1639f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(-var_3.b.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_1.b.x)), var_1.b.x)), var_1.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_sub_u32(63051u, 1u), func_1(vec4<bool>(false, true, true, false), 2147483647i, 271f, u_input.a.x), false)) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(global0.xz, vec2<f32>(global0.x, global0.x)))))), 2147483647i);
    var var_1 = u_input.a.x;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(365f, -2006f, global0.x) * vec3<f32>(-1691f, 781f, -376f)))) + vec3<f32>(_wgslsmith_f_op_f32(-global0.x), -1989f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, 1684f)) * -1679f))));
    var_1 = _wgslsmith_add_u32(21881u, 1u);
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * global0.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1087f)), global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_0.b.x)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-476f, 2029f, global0.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(898f, var_0.b.x, -1293f), vec3<f32>(var_0.b.x, 1000f, 820f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, var_0.b.x))))));
    let var_2 = !vec2<bool>(false, true | (0u >= var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(func_1(!(!vec4<bool>(var_2.x, var_2.x, true, var_2.x)), 21131i, -475f, abs(func_2(global1[_wgslsmith_index_u32(4294967295u, 1u)]).a)).x), var_0.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, -512f), vec3<f32>(global0.x, 428f, 283f), true))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, _wgslsmith_div_f32(var_0.b.x, var_0.b.x), var_0.b.x)))), 4294967295u, firstTrailingBit(countOneBits(countOneBits(vec4<u32>(0u, 59991u, var_0.a, u_input.a.x))) & (vec4<u32>(var_0.a, var_0.a, var_0.a, 15229u) << (~vec4<u32>(var_0.a, u_input.a.x, 4294967295u, 1u) % vec4<u32>(32u)))));
}

