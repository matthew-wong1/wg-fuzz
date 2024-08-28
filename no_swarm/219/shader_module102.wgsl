struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<bool>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(75525u, 25269u);

var<private> global1: array<Struct_3, 24>;

var<private> global2: Struct_3;

var<private> global3: Struct_1 = Struct_1(vec2<u32>(48507u, 93581u), -381f);

var<private> global4: array<vec4<f32>, 9>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec4<f32> {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-329f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.b.x - 365f))), arg_1.a.b) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.b.wyw, vec3<f32>(arg_1.a.b, var_0.a.b, arg_1.b.x), global2.a.c)), _wgslsmith_f_op_vec3_f32(max(global2.a.b.yzz, arg_1.b.yzw))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-1000f, 334f)), _wgslsmith_div_f32(var_0.d.b, 1000f), _wgslsmith_div_f32(global2.a.b.x, -513f))))));
    var_0 = arg_1;
    var var_2 = Struct_2(Struct_1(max(reverseBits(~var_0.a.a), ~var_0.d.a), _wgslsmith_f_op_f32(sign(var_1.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 1445f, 402f))))), vec3<bool>(false, !all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, var_0.c.x, global2.a.c.x), vec4<bool>(false, true, global2.a.c.x, true))), any(vec3<bool>(true, false, false)) || (global2.a.c.x & (u_input.b == 4146u))), arg_1.a, u_input.a.x);
    var_0 = arg_1;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.b.x, _wgslsmith_f_op_f32(-arg_1.a.b), !(!var_2.c.x)))), _wgslsmith_f_op_f32(2045f + 900f), -981f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(616f - _wgslsmith_f_op_f32(global2.a.a.b + 891f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1268f * arg_1.a.b)))));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(global2.a.d, _wgslsmith_f_op_vec4_f32(func_3(~(global2.a.d.a.x & u_input.c.x), Struct_2(global2.a.a, _wgslsmith_f_op_vec4_f32(arg_2 * vec4<f32>(-279f, 144f, global2.a.a.b, -1437f)), vec3<bool>(true, global2.a.c.x, arg_0.x), Struct_1(global3.a, global3.b), ~2147483647i))), global2.a.c, global2.a.d, max((21930i & u_input.a.x) << (global2.a.d.a.x % 32u), global2.a.e)));
    var var_1 = Struct_1(vec2<u32>(max(_wgslsmith_div_u32(_wgslsmith_mult_u32(14990u, global3.a.x), ~global0.x), _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.b, 73127u), u_input.b)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, global3.a.x), vec3<u32>(82887u, 24608u, global3.a.x)) | (var_0.a.d.a.x & (global2.a.d.a.x ^ global3.a.x))), var_0.a.d.b);
    global3 = global2.a.d;
    global1 = array<Struct_3, 24>();
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-649f))));
    return Struct_2(Struct_1(vec2<u32>(~var_1.a.x, ~34529u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_0.a.b.x))))))), _wgslsmith_div_vec4_f32(var_0.a.b, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-1941f * arg_2.x), _wgslsmith_f_op_f32(1003f - -1000f), -1666f, _wgslsmith_f_op_f32(floor(arg_2.x)))))), select(arg_0, !var_0.a.c, vec3<bool>(arg_0.x, select(arg_0.x, true, global3.b == var_1.b), all(!vec3<bool>(false, false, arg_1)))), Struct_1(vec2<u32>(~(~92571u), firstTrailingBit(43757u) ^ global3.a.x), -829f), var_0.a.e);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>) -> vec3<i32> {
    global4 = array<vec4<f32>, 9>();
    global3 = Struct_1(vec2<u32>(u_input.c.x | (~u_input.c.x | _wgslsmith_add_u32(global3.a.x, global3.a.x)), arg_1.d.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(372f))));
    let var_0 = vec4<i32>(abs(_wgslsmith_mod_i32(select(~(-1i), arg_1.e, any(arg_1.c)), -47915i)), -45206i, ~global2.a.e, ~(-2147483647i));
    var var_1 = var_0.yx;
    let var_2 = u_input.a.zy;
    return firstLeadingBit(min(~(vec3<i32>(-10014i, var_0.x, 21332i) >> (~vec3<u32>(global2.a.a.a.x, 52029u, 51233u) % vec3<u32>(32u))), vec3<i32>(i32(-1i) * -var_1.x, ~(var_1.x & -1i), ~var_1.x)));
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = func_4(true, func_2(select(vec3<bool>(global2.a.c.x, true, false), global2.a.c, global2.a.c.x), global2.a.c.x, global4[_wgslsmith_index_u32(select(1u, 1u, global2.a.c.x), 9u)]), vec2<i32>(max(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, u_input.a.x), u_input.a), 2147483647i), ~global2.a.e)) << (vec3<u32>(~global3.a.x, ~reverseBits(_wgslsmith_sub_u32(0u, global3.a.x)), select(global3.a.x, _wgslsmith_dot_vec2_u32(min(u_input.c, global3.a), u_input.c), true)) % vec3<u32>(32u));
    var var_1 = Struct_3(func_2(!(!select(global2.a.c, global2.a.c, global2.a.c)), all(select(vec4<bool>(global2.a.c.x, global2.a.c.x, true, false), vec4<bool>(false, global2.a.c.x, global2.a.c.x, false), global2.a.c.x)) & global2.a.c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(169f - global3.b), global3.b, -1186f, global3.b))));
    var var_2 = u_input.a.x;
    let var_3 = func_2(!func_2(vec3<bool>(select(global2.a.c.x, false, var_1.a.c.x), true, var_1.a.c.x), _wgslsmith_clamp_u32(u_input.c.x, 0u, global0.x) < global0.x, var_1.a.b).c, !var_1.a.c.x, global2.a.b).a;
    let var_4 = var_1.a.b;
    return global1[_wgslsmith_index_u32(u_input.b, 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(~(max(firstTrailingBit(u_input.a.x), -56641i) >> (global2.a.a.a.x % 32u)));
    let var_0 = ~global2.a.a.a.x;
    global3 = Struct_1(~global2.a.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-117f)), _wgslsmith_f_op_f32(f32(-1f) * -509f)))));
    global2 = global1[_wgslsmith_index_u32(0u, 24u)];
    global1 = array<Struct_3, 24>();
    global0 = ~vec2<u32>(16934u >> (global2.a.d.a.x % 32u), ~41780u);
    let x = u_input.a;
    s_output = StorageBuffer(global2.a.b.wz, _wgslsmith_f_op_f32(-global2.a.b.x));
}

