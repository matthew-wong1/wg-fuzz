struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 8>;

var<private> global1: array<Struct_3, 21>;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(4069u, 43893u));

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<u32>(4294967295u, 1u)), vec3<i32>(-1i, 22388i, -60262i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_2) -> vec4<f32> {
    global3 = arg_2;
    global1 = array<Struct_3, 21>();
    global1 = array<Struct_3, 21>();
    var var_0 = _wgslsmith_clamp_vec4_i32(~firstTrailingBit(vec4<i32>(i32(-1i) * -761i, abs(arg_1.x), global3.b.x >> (u_input.d % 32u), -47665i)), vec4<i32>(~0i, -abs(-arg_2.b.x), -_wgslsmith_div_i32(~(-27834i), 10034i & arg_1.x), countOneBits(~(~6183i))), vec4<i32>(firstTrailingBit(global3.b.x), arg_2.b.x & countOneBits(u_input.b ^ -43233i), arg_0.e.x, firstTrailingBit(-(~arg_1.x))));
    var var_1 = ~(_wgslsmith_div_u32(37464u, abs(arg_2.a.a.x) >> (arg_0.a.a.x % 32u)) | global3.a.a.x);
    return _wgslsmith_f_op_vec4_f32(select(arg_0.b, arg_0.b, arg_0.c));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: vec4<f32>, arg_3: vec4<bool>) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(abs(15954u), 21u)];
    var var_1 = var_0.b.x;
    let var_2 = 0u;
    var var_3 = Struct_3(Struct_1(abs(vec2<u32>(_wgslsmith_mod_u32(global2.a.x, global2.a.x), 98707u))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)))), _wgslsmith_f_op_vec4_f32(func_2(global1[_wgslsmith_index_u32(var_0.a.a.x, 21u)], firstLeadingBit(vec2<i32>(u_input.c.x, 2147483647i)), Struct_2(Struct_1(global2.a), select(vec3<i32>(2147483647i, 23218i, -2147483647i), global3.b, arg_0.x)))).x, var_0.d.x, _wgslsmith_f_op_vec4_f32(func_2(global1[_wgslsmith_index_u32(countOneBits(45088u), 21u)], _wgslsmith_mod_vec2_i32(~global3.b.xx, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e, var_0.e.x), vec2<i32>(var_0.e.x, -28054i))), Struct_2(Struct_1(vec2<u32>(arg_1, var_2)), ~vec3<i32>(global3.b.x, 54539i, global3.b.x)))).x), arg_3.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-408f, _wgslsmith_f_op_f32(-arg_2.x)))), var_0.e);
    global1 = array<Struct_3, 21>();
    return firstLeadingBit(14040u);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = vec4<u32>(_wgslsmith_mult_u32(~32548u, min(_wgslsmith_mod_u32(min(arg_0.a.x, arg_1), global3.a.a.x), ~(~4294967295u))), _wgslsmith_mult_u32(arg_1, _wgslsmith_mod_u32(_wgslsmith_sub_u32(~global2.a.x, _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(global2.a.x, 8u)], vec2<u32>(0u, global3.a.a.x))), ~global2.a.x)), ~func_3(vec3<bool>(false, true, true), global2.a.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_2(global1[_wgslsmith_index_u32(u_input.a, 21u)], vec2<i32>(32944i, 2147483647i), Struct_2(global3.a, global3.b))), vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))), vec4<bool>(true, true, true, true)), ~u_input.a);
    global2 = Struct_1(vec2<u32>(_wgslsmith_mod_u32(~arg_1, 1u & global3.a.a.x), ~(~arg_0.a.x)) ^ vec2<u32>(~(~arg_0.a.x), 4294967295u));
    var var_1 = -219f;
    var var_2 = vec4<u32>(_wgslsmith_sub_u32(global2.a.x, firstLeadingBit(arg_1)), 37271u, reverseBits(_wgslsmith_clamp_u32(~var_0.x, ~firstTrailingBit(var_0.x), ~(arg_0.a.x ^ 58289u))), _wgslsmith_mult_u32(~(~6834u), (var_0.x >> (arg_1 % 32u)) ^ abs(global2.a.x)) & 4294967295u);
    global3 = Struct_2(global3.a, _wgslsmith_div_vec3_i32(global3.b, vec3<i32>(select(14083i, _wgslsmith_dot_vec3_i32(global3.b, global3.b), true), abs(_wgslsmith_add_i32(global3.b.x, -1i)), -2147483647i)));
    return arg_0;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_3) -> u32 {
    global0 = array<vec2<u32>, 8>();
    let var_0 = Struct_2(global3.a, global3.b);
    var var_1 = Struct_2(Struct_1(~select(firstLeadingBit(global0[_wgslsmith_index_u32(var_0.a.a.x, 8u)]), ~vec2<u32>(u_input.d, arg_3.a.a.x), vec2<bool>(true, true))), -global3.b);
    var_1 = var_0;
    var var_2 = !all(vec4<bool>(!arg_3.c, select(arg_3.c, false, arg_3.c), arg_3.c && arg_3.c, true)) & true;
    return _wgslsmith_sub_u32(~(~global3.a.a.x ^ 1u), global2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    global0 = array<vec2<u32>, 8>();
    let var_1 = vec2<u32>(u_input.d, global2.a.x ^ 33152u);
    let var_2 = func_4(select(min(0u, _wgslsmith_div_u32(global2.a.x, ~global2.a.x)), 1u, any(vec3<bool>(true, true, false))), func_1(global3.a, 0u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-664f + -1400f), 1f))), ~_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.d, u_input.d, ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.x, var_1.x, u_input.d, u_input.d), vec4<u32>(var_1.x, 6585u, global2.a.x, global3.a.a.x))), vec4<u32>(4294967295u, global3.a.a.x, u_input.a, u_input.d)), Struct_3(global3.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 1684f, 1592f, -1108f)))))), true, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-683f, 2312f) + vec2<f32>(1848f, 958f))))), vec2<i32>(firstTrailingBit(global3.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, u_input.e, global3.b.x), global3.b))));
    var var_3 = select(vec2<bool>(true, !any(vec2<bool>(true, true))), vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), select(true, all(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, false, true)))), vec2<bool>(true, true));
    var var_4 = _wgslsmith_f_op_f32(round(262f));
    var var_5 = Struct_2(func_1(Struct_1(~(~var_1)), (_wgslsmith_sub_u32(global3.a.a.x, global2.a.x) & select(57858u, global3.a.a.x, var_3.x)) & 34071u, vec2<f32>(467f, _wgslsmith_f_op_f32(-337f + _wgslsmith_f_op_f32(round(-145f))))), global3.b);
    var_5 = Struct_2(Struct_1(_wgslsmith_clamp_vec2_u32(global3.a.a, vec2<u32>(~var_2, firstTrailingBit(var_2)), var_1)), global3.b);
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(~(~vec3<u32>(var_5.a.a.x, var_2, global2.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1444f, 932f, -1845f) + vec3<f32>(1000f, 1066f, 804f)))))));
}

