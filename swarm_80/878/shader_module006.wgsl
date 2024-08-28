struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(119299u, 8647u, 1u, 16813u);

var<private> global1: array<Struct_3, 4>;

var<private> global2: Struct_4 = Struct_4(vec2<bool>(false, false), vec2<i32>(-1i, -1i), 517f, vec4<u32>(46690u, 15190u, 5263u, 11557u));

var<private> global3: array<Struct_5, 26>;

var<private> global4: vec4<f32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: u32) -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(29084u, 26u)];
    global0 = ~global2.d;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(992f, _wgslsmith_f_op_f32(386f - var_0.a.c), 1f))))), global4.yxw);
    var var_2 = var_0.a.a;
    global2 = Struct_4(vec2<bool>(all(!vec3<bool>(var_0.a.a.x, true, false)) || true, countOneBits(_wgslsmith_add_u32(0u, 44200u)) < global2.d.x), -(~(vec2<i32>(global2.b.x, global2.b.x) << (arg_1.a % vec2<u32>(32u)))) & abs(_wgslsmith_div_vec2_i32(-var_0.a.b, global2.b)), _wgslsmith_f_op_f32(f32(-1f) * -617f), (abs(~var_0.a.d) ^ ~abs(global2.d)) | var_0.a.d);
    return var_0.b.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec2<i32>) -> u32 {
    global4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.c, -680f, true))), _wgslsmith_f_op_f32(-273f + _wgslsmith_div_f32(global2.c, 544f)), arg_0.x, _wgslsmith_f_op_f32(func_3(-arg_2.x, Struct_1(vec2<u32>(global0.x, 321u)), global0.zy, global0.x))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-340f, global4.x, 1278f, arg_0.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-243f, 707f, -997f, -691f), _wgslsmith_div_vec4_f32(vec4<f32>(global2.c, global4.x, -143f, global2.c), vec4<f32>(1534f, -1984f, -881f, -1068f)), global2.a.x))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) - 2024f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.c))), 256f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -503f)))))));
    let var_0 = global0.x;
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1179f), _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(ceil(global2.c)), arg_0.x)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -206f), global2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1011f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_0.x, global2.c)), _wgslsmith_f_op_f32(trunc(global4.x))))), global4.x));
    let var_1 = arg_1;
    let var_2 = Struct_1(vec2<u32>(~u_input.d, 26794u));
    return 1u;
}

fn func_4(arg_0: f32, arg_1: u32) -> bool {
    let var_0 = select(select(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, global2.a.x), vec3<bool>(true, global2.a.x, global2.a.x))), !select(select(vec3<bool>(true, true, global2.a.x), vec3<bool>(global2.a.x, true, global2.a.x), global2.a.x), select(vec3<bool>(global2.a.x, false, global2.a.x), vec3<bool>(true, false, global2.a.x), true), !vec3<bool>(global2.a.x, false, global2.a.x)), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), any(global2.a))), select(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, global2.a.x, global2.a.x), vec3<bool>(global2.a.x, global2.a.x, global2.a.x))), vec3<bool>(any(select(vec3<bool>(global2.a.x, false, true), vec3<bool>(true, global2.a.x, global2.a.x), global2.a.x)), true, all(!vec3<bool>(global2.a.x, true, true))), any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, global2.a.x, true), vec4<bool>(true, true, global2.a.x, true))) == false), false);
    let var_1 = _wgslsmith_sub_vec2_u32(global2.d.zx, global0.zz);
    global0 = global2.d;
    var var_2 = any(!vec3<bool>(global2.a.x, any(select(global2.a, vec2<bool>(false, var_0.x), vec2<bool>(global2.a.x, global2.a.x))), any(!var_0)));
    global0 = _wgslsmith_add_vec4_u32(~vec4<u32>(select(~1u, global2.d.x, var_0.x), _wgslsmith_div_u32(global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(27209u, 59295u, u_input.d, global0.x), global2.d)), ~(~global2.d.x), ~u_input.b), global2.d >> (~abs(countOneBits(global2.d)) % vec4<u32>(32u)));
    return true;
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = global2.c;
    global1 = array<Struct_3, 4>();
    var var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global4.x)) + global4.x) + _wgslsmith_f_op_f32(abs(global4.x))), func_2(global4.xx, max(-vec3<i32>(arg_0, 29431i, 2147483647i) >> (~global2.d.xzw % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, 17941i, 20328i) | vec3<i32>(40335i, global2.b.x, u_input.c), vec3<i32>(-1i, 1i, 0i), vec3<i32>(-1i, arg_0, global2.b.x))), select(~global2.b, _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(global2.b, global2.b), -global2.b, global2.b), true)));
    let var_2 = global2.a.x;
    let var_3 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(abs(max(_wgslsmith_div_vec2_i32(global2.b, global2.b), -global2.b)), global2.b), ~1i, max(abs(firstTrailingBit(-10403i)) << (29671u % 32u), global2.b.x));
    return 20180u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_4(vec2<bool>(false, !(1158f >= _wgslsmith_f_op_f32(step(-358f, global4.x)))), _wgslsmith_mult_vec2_i32(global2.b, vec2<i32>(~global2.b.x, -2147483647i) & global2.b), _wgslsmith_f_op_f32(round(-674f)), global2.d);
    global0 = global2.d;
    var var_0 = 1332f;
    let var_1 = !(!(!vec3<bool>(any(vec4<bool>(global2.a.x, global2.a.x, global2.a.x, true)), true, true)));
    global4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c * global2.c)))), global4.x));
    global1 = array<Struct_3, 4>();
    let var_2 = var_1.x;
    let var_3 = vec2<i32>(global2.b.x ^ -33707i, ~reverseBits(_wgslsmith_mult_i32(1i, u_input.a)));
    global0 = vec4<u32>(func_1(global2.b.x), firstTrailingBit(global2.d.x << (~u_input.d % 32u)), _wgslsmith_mod_u32(~14815u, _wgslsmith_div_u32(global2.d.x, global0.x)), ~func_1(-global2.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(sign(global2.c)), 428f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c * global2.c) - global4.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -232f)))), _wgslsmith_mult_vec4_i32(-select(vec4<i32>(global2.b.x, var_3.x, 2404i, var_3.x), vec4<i32>(46017i, var_3.x, 0i, u_input.c) << (vec4<u32>(40847u, 1u, 21498u, 0u) % vec4<u32>(32u)), select(vec4<bool>(var_2, false, false, var_2), vec4<bool>(global2.a.x, var_2, false, false), vec4<bool>(global2.a.x, var_2, true, true))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, 1i, 17849i), select(vec4<i32>(var_3.x, 66519i, -49317i, var_3.x), vec4<i32>(-24201i, 50252i, var_3.x, -34698i), vec4<bool>(true, false, true, global2.a.x))), _wgslsmith_div_i32(var_3.x, -37869i), u_input.c, select(firstTrailingBit(var_3.x), var_3.x, all(vec4<bool>(var_2, true, true, false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-2044f, global4.x)), _wgslsmith_f_op_f32(global4.x - 775f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global4.zy))))), reverseBits(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 13434i, var_3.x) | vec3<i32>(-2147483647i, 26189i, 26134i), ~vec3<i32>(global2.b.x, var_3.x, 3118i)))));
}

