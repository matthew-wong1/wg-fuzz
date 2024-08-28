struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<Struct_2, 26>;

var<private> global2: vec3<i32>;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    let var_0 = ~vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, u_input.a), global3.b), min(17273i, global3.b.x << (4294967295u % 32u)) >> (arg_2.d % 32u));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~max(4672u, _wgslsmith_mod_u32(arg_3.c.d, 129116u)), _wgslsmith_clamp_u32(0u, _wgslsmith_div_u32(_wgslsmith_add_u32(1u, u_input.d), 37323u), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(1u, 4294967295u), ~1u, 27229u << (arg_0.d % 32u), max(arg_2.d, 1u)), u_input.c))), 26u)];
    let var_2 = arg_2.a;
    let var_3 = 17165u;
    let var_4 = arg_1;
    return _wgslsmith_f_op_f32(-arg_3.c.a);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: i32, arg_3: i32) -> f32 {
    global0 = global3.d;
    var var_0 = ~u_input.b.xzy;
    var_0 = u_input.c.zzx;
    global0 = countOneBits(firstTrailingBit(_wgslsmith_div_u32(1u, u_input.c.x)) | 1u);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(global3.a, global3.b, global2.x, 30442u), -1i, Struct_1(global3.a, global3.b, u_input.a, arg_0.x), Struct_2(Struct_1(global3.a, global3.b, global3.b.x, 1u), Struct_1(-110f, vec2<i32>(global3.b.x, 29985i), 30484i, 0u), Struct_1(global3.a, global2.xy, -1i, global3.d))))) - -886f), global3.b, -arg_2, arg_1.x), Struct_1(_wgslsmith_f_op_f32(step(-808f, -639f)), _wgslsmith_add_vec2_i32(abs(~vec2<i32>(global2.x, 0i)), abs(global2.yy) | vec2<i32>(global2.x, 62883i)), countOneBits(-25655i), global3.d), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(Struct_1(global3.a, global2.xz, 1i, 27803u), ~global2.x, Struct_1(global3.a, vec2<i32>(global2.x, -1i), -2147483647i, 0u), global1[_wgslsmith_index_u32(~0u, 26u)])))), vec2<i32>(countOneBits(1i), global3.b.x), u_input.a, _wgslsmith_div_u32(global3.d, 24107u)));
    return 413f;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.a - global3.a), _wgslsmith_f_op_f32(step(-650f, -1000f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-164f))))));
    global1 = array<Struct_2, 26>();
    var var_1 = vec2<i32>(~abs(~(-global2.x)), firstTrailingBit(~firstTrailingBit(firstLeadingBit(45730i))));
    global0 = ~countOneBits(_wgslsmith_mod_u32(global3.d, 4294967295u) << (select(u_input.b.x, 1u, true) % 32u));
    let var_2 = 41425u;
    return Struct_1(_wgslsmith_f_op_f32(min(-347f, _wgslsmith_f_op_f32(func_2(countOneBits(~u_input.b), vec3<u32>(1u, u_input.d, min(var_2, var_2)), u_input.a, _wgslsmith_div_i32(u_input.a, global2.x | global3.c))))), vec2<i32>(firstTrailingBit(global2.x), u_input.a), -13437i, min(_wgslsmith_div_u32(1u, ~u_input.b.x) << (_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, global3.d), firstLeadingBit(1u)) % 32u), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(50164u, 4294967295u, global3.d, 1u), u_input.c) << (~12522u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1667f - _wgslsmith_f_op_f32(f32(-1f) * -330f)));
    var_0 = -2139f;
    var_0 = _wgslsmith_f_op_f32(-293f + -522f);
    let var_1 = -global2.x;
    let var_2 = abs(-global3.b) | global2.zz;
    global3 = func_1();
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(398f - global3.a)), 546f) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(step(485f, -1006f)), _wgslsmith_f_op_f32(step(global3.a, global3.a)), _wgslsmith_f_op_f32(-global3.a))))) + vec3<f32>(-1689f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3.a * global3.a), _wgslsmith_f_op_f32(round(1544f))))), global3.a));
    var var_4 = Struct_2(func_1(), Struct_1(global3.a, firstLeadingBit(~vec2<i32>(2147483647i, u_input.a)), 1i, ~global3.d | u_input.b.x), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(-min(countOneBits(var_1) | (-2147483647i << (global3.d % 32u)), -_wgslsmith_sub_i32(-1i, u_input.a)), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(~(-2147483647i), var_2.x << (46702u % 32u)), 10590i), abs(-_wgslsmith_dot_vec2_i32(var_2, vec2<i32>(-1i, var_2.x))), 12194i, func_1().b.x), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_4.a.a)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1139f)))))), -359f);
}

