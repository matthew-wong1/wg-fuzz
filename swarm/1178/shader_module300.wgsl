struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec4<i32>, 29>;

var<private> global2: vec3<i32> = vec3<i32>(-3311i, 37911i, 49492i);

var<private> global3: Struct_1 = Struct_1(vec4<u32>(0u, 24424u, 4294967295u, 47433u), -325f, 0u, vec2<u32>(4294967295u, 1u));

var<private> global4: array<Struct_2, 29>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global3.b, global3.b))) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -989f)), global3.b)));
    global3 = Struct_1(~arg_0, -1000f, 48272u, ~vec2<u32>(~_wgslsmith_div_u32(71521u, 1u), ~_wgslsmith_dot_vec3_u32(global3.a.wxw, arg_0.zzz)));
    var var_1 = Struct_1(~vec4<u32>(~(~1u), ~countOneBits(global3.a.x), arg_2, 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1678f)) + global3.b), _wgslsmith_mod_u32(reverseBits(~arg_2), 44190u), vec2<u32>(~arg_0.x, _wgslsmith_mod_u32(arg_0.x, firstLeadingBit(_wgslsmith_mult_u32(4294967295u, arg_2)))));
    var var_2 = global4[_wgslsmith_index_u32(~(~var_1.a.x), 29u)];
    let var_3 = global3.d.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1128f - 532f));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32) -> f32 {
    var var_0 = Struct_2(vec3<bool>(global0.x, global0.x, -arg_1.x >= -2147483647i), global0.x);
    var var_1 = global4[_wgslsmith_index_u32(36045u, 29u)];
    global0 = vec3<bool>(false, false, false);
    let var_2 = abs(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(global3.c, 0u, 116079u, arg_0.d.x), arg_0.a, vec4<bool>(var_0.a.x, global0.x, true, false)), firstLeadingBit(vec4<u32>(global3.c, global3.a.x, 0u, global3.c))), ~firstTrailingBit(886u), ~firstLeadingBit(global3.a.x), select(global3.d.x, _wgslsmith_clamp_u32(arg_0.c, arg_0.a.x, 4294967295u), false)), arg_0.a));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(855f * -174f))))) - -884f);
    return _wgslsmith_f_op_f32(-arg_0.b);
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(629f, arg_2.b, global3.b)))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_clamp_vec4_u32(arg_2.a & arg_2.a, ~vec4<u32>(5125u, global3.c, 13830u, 0u), ~vec4<u32>(1u, 17996u, 4294967295u, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_2.a, Struct_2(vec3<bool>(true, true, global0.x), arg_0.b), arg_2.a.x))), 4294967295u, ~vec2<u32>(arg_2.d.x, 3623u)), global2.xy, _wgslsmith_mult_i32(abs(-2147483647i ^ arg_1), 1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.b)) - var_0.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(func_2(arg_2.a, Struct_2(arg_0.a, false), 16174u)))), -694f)));
    global3 = Struct_1(vec4<u32>(19483u, 0u, arg_2.c, arg_2.c), -1663f, _wgslsmith_add_u32(countOneBits(~0u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(global3.d.x, 29591u, global3.a.x), vec3<u32>(arg_2.d.x, 1u, global3.c))), firstLeadingBit(~_wgslsmith_sub_u32(arg_2.d.x, global3.c))), vec2<u32>(arg_2.a.x, (52681u & global3.a.x) | ~71345u));
    global1 = array<vec4<i32>, 29>();
    var var_2 = arg_2;
    return max(0u, 4294967295u) ^ _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~_wgslsmith_div_u32(59318u, 7694u), _wgslsmith_dot_vec2_u32(global3.a.xx, select(global3.d, vec2<u32>(1u, 1u), global0.zz)), 4294967295u), abs(abs(var_2.c)) ^ _wgslsmith_div_u32(min(55831u, var_2.a.x), 0u));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = global4[_wgslsmith_index_u32(~(arg_2.a.x | (83827u << (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.d.x, 0u, arg_2.d.x), global3.a.zww), global3.a.x) % 32u))), 29u)];
    let var_1 = Struct_2(var_0.a, all(vec3<bool>(true, true, true)));
    var var_2 = vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.a.x, -71687i, u_input.a.x) << (~vec3<u32>(arg_2.c, 5068u, global3.c) % vec3<u32>(32u)), max(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, global2.x, 2147483647i), vec3<i32>(global2.x, global2.x, 18274i)), max(vec3<i32>(global2.x, u_input.a.x, -2872i), vec3<i32>(u_input.a.x, global2.x, 19843i))));
    let var_3 = arg_2;
    let var_4 = Struct_2(select(!(!vec3<bool>(global0.x, true, var_1.a.x)), !vec3<bool>(!arg_1.b, global0.x, all(global0.xy)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b), 572f) <= _wgslsmith_f_op_f32(-957f - _wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(76006u, global3.d.x, arg_0, 4294967295u), arg_2.b, arg_2.d.x, arg_2.d), u_input.a, -14582i)))), global3.b >= 1541f);
    return StorageBuffer(-2147483647i, _wgslsmith_f_op_f32(1116f * -253f), -842f, global2.zx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(_wgslsmith_sub_vec2_u32(~global3.a.zw, ~vec2<u32>(13005u, 0u)) | (vec2<u32>(global3.d.x, abs(0u)) ^ global3.d));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-505f)))));
    var var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(~var_0.x, firstLeadingBit(var_0.x)), ~vec2<u32>(abs(_wgslsmith_div_u32(var_0.x, var_0.x)), ~var_0.x));
    var var_3 = global3.a.x;
    let var_4 = global4[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_2.x, var_2.x), 29u)];
    let var_5 = _wgslsmith_f_op_f32(f32(-1f) * -778f);
    let var_6 = global3.a.yzw;
    global1 = array<vec4<i32>, 29>();
    var_3 = 156u;
    let x = u_input.a;
    s_output = func_4(func_1(Struct_2(select(var_4.a, vec3<bool>(global0.x, global0.x, var_4.a.x), global0.x), global0.x), 1i, Struct_1(abs(vec4<u32>(8340u, var_2.x, global3.c, 1u)), -1000f, ~var_6.x, vec2<u32>(1u, 38000u))) >> (40280u % 32u), global4[_wgslsmith_index_u32(~var_0.x, 29u)], Struct_1(~(~vec4<u32>(global3.c, 1u, var_0.x, 4544u)), 534f, global3.c, vec2<u32>(~global3.d.x, ~0u)));
}

