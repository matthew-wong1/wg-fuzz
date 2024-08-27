struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16>;

var<private> global1: i32 = 10697i;

var<private> global2: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(4294967295u, 19905u, 22539u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 1u, 24614u), vec4<u32>(0u, 463u, 4294967295u, 0u), vec4<u32>(115114u, 4294967295u, 0u, 45970u), vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec4<u32>(63124u, 22123u, 4294967295u, 4294967295u), vec4<u32>(17986u, 1u, 0u, 59363u), vec4<u32>(47100u, 46685u, 8212u, 4294967295u), vec4<u32>(1u, 1u, 1u, 85650u), vec4<u32>(5927u, 4294967295u, 25150u, 1u), vec4<u32>(862u, 0u, 16413u, 0u), vec4<u32>(42506u, 36818u, 1u, 43470u), vec4<u32>(11699u, 0u, 4407u, 10741u), vec4<u32>(40545u, 105738u, 4294967295u, 27427u), vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(0u, 10662u, 0u, 0u), vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(29332u, 52158u, 2555u, 13290u), vec4<u32>(1807u, 1u, 5710u, 74859u), vec4<u32>(21858u, 1u, 1u, 20660u), vec4<u32>(10252u, 1u, 51012u, 1u), vec4<u32>(0u, 76065u, 10317u, 49564u), vec4<u32>(4294967295u, 20623u, 9014u, 0u), vec4<u32>(0u, 33952u, 19400u, 59521u), vec4<u32>(4294967295u, 1u, 1u, 54519u), vec4<u32>(7190u, 12261u, 17251u, 54689u), vec4<u32>(1u, 4294967295u, 43861u, 4294967295u), vec4<u32>(22929u, 5877u, 4294967295u, 6527u), vec4<u32>(4294967295u, 1u, 3837u, 0u));

var<private> global3: Struct_3 = Struct_3(i32(-2147483648));

var<private> global4: Struct_3 = Struct_3(23869i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> f32 {
    var var_0 = Struct_2(-16359i, Struct_1(true, firstLeadingBit(abs(vec2<u32>(57443u, 27419u)) >> (_wgslsmith_add_vec2_u32(u_input.b, vec2<u32>(15830u, u_input.a)) % vec2<u32>(32u)))));
    var var_1 = firstLeadingBit(global3.a) | _wgslsmith_dot_vec2_i32(u_input.c.yw, ~vec2<i32>(var_0.a, -28028i));
    let var_2 = var_0.b;
    global3 = Struct_3(global3.a & _wgslsmith_mult_i32(-2147483647i, countOneBits(-global3.a)));
    var_0 = Struct_2(_wgslsmith_dot_vec3_i32(u_input.c.xzz, ~u_input.c.wwz), var_0.b);
    return -1000f;
}

fn func_3(arg_0: i32, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_div_i32(-32879i, (_wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_0, global4.a, u_input.c.x), firstLeadingBit(arg_0)) | (arg_0 >> ((u_input.b.x << (47612u % 32u)) % 32u))) & abs(u_input.d.x));
    let var_1 = Struct_3(global4.a);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u & abs(u_input.a), u_input.b.x, reverseBits(1u)), 16u)];
    global4 = var_1;
    global2 = array<vec4<u32>, 29>();
    return -1322f;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>) -> u32 {
    let var_0 = Struct_1(!all(vec3<bool>(false, all(vec4<bool>(false, false, false, false)), true)), abs(~(~arg_0.yz) << (select(arg_0.xz, ~arg_0.zz, 62081u < u_input.a) % vec2<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(553f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-822f - 414f) * _wgslsmith_f_op_f32(-848f - -1106f)) * _wgslsmith_f_op_f32(step(295f, _wgslsmith_f_op_f32(f32(-1f) * -927f)))), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_i32(~arg_1.x, -21989i), _wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -419f))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-113f - 697f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1738f * -2248f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1048f, 1000f, var_0.a))))), _wgslsmith_f_op_f32(func_3(global4.a, 1f))));
    global2 = array<vec4<u32>, 29>();
    global2 = array<vec4<u32>, 29>();
    global1 = _wgslsmith_dot_vec2_i32(countOneBits(u_input.c.xx), -select(arg_1 | arg_1, _wgslsmith_add_vec2_i32(vec2<i32>(1i, 18038i), arg_1), var_0.a && true) ^ vec2<i32>(arg_1.x, _wgslsmith_div_i32(reverseBits(u_input.c.x), -global4.a)));
    return _wgslsmith_add_u32(firstTrailingBit(_wgslsmith_clamp_u32(u_input.b.x, 1u, 4294967295u)), _wgslsmith_div_u32(11464u, arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(vec4<u32>(~(~u_input.b.x | 1u), u_input.a, 1u, ~(~16571u)));
    let var_1 = Struct_2(_wgslsmith_sub_i32(abs(min(-40225i, _wgslsmith_mod_i32(2147483647i, 3886i))), abs(5452i >> (func_1(var_0.xzy, vec2<i32>(-25955i, -45378i)) % 32u))), Struct_1(true, firstLeadingBit(var_0.zx)));
    let var_2 = var_1.b;
    var var_3 = ~(~abs(4294967295u));
    global4 = global0[_wgslsmith_index_u32(~18579u, 16u)];
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-883f - -1031f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-378f, var_4), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2326f, 1000f))))))));
}

