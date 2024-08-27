struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_3 = Struct_3(vec3<i32>(2147483647i, 11361i, -2844i), vec3<bool>(false, true, false));

var<private> global2: array<i32, 4> = array<i32, 4>(2147483647i, 43432i, -17428i, 18368i);

var<private> global3: array<vec4<u32>, 8>;

var<private> global4: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(0u, 1u, 2149u), vec3<u32>(4294967295u, 1u, 10633u), vec3<u32>(0u, 0u, 35794u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(44013u, 4294967295u, 1u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global3 = array<vec4<u32>, 8>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1763f);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-271f - -380f) * -475f), global0.a)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(710f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a + global0.a)))))) > _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.a)), 532f), global0.a);
    let var_2 = Struct_3(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(31736i, 0i, 2147483647i)), _wgslsmith_add_vec3_i32(u_input.c, vec3<i32>(-43i, u_input.c.x, -23593i)) & global1.a), u_input.c), global1.b);
    let var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-766f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1072f, -658f)), _wgslsmith_f_op_f32(-global0.a))) * 624f), vec4<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global0.b.wxx, vec3<u32>(51252u, u_input.a, 17935u)), vec3<u32>(16376u, 4294967295u, global0.b.x)), ~4294967295u, 46716u & firstTrailingBit(u_input.a), 40811u));
    return global0.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32) -> vec2<i32> {
    global4 = array<vec3<u32>, 5>();
    let var_0 = Struct_2(arg_0, _wgslsmith_f_op_f32(exp2(global0.a)), ~u_input.b);
    var var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(~(global1.a.xy & global1.a.yy), global1.a.xz), -arg_1.x);
    global1 = Struct_3(u_input.c, arg_0.c);
    let var_2 = Struct_5(false, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-239f * 1000f))), 440f), _wgslsmith_f_op_f32(func_3(Struct_1(arg_2 != -231f, _wgslsmith_mult_i32(global1.a.x, -16921i), var_0.a.c, -60368i))))), 845f, _wgslsmith_mult_vec4_u32(abs(~(~vec4<u32>(29194u, var_0.c, u_input.a, global0.b.x))), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~global0.b, global3[_wgslsmith_index_u32(26609u, 8u)]), firstTrailingBit(~global0.b))));
    return global1.a.zy;
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    let var_0 = _wgslsmith_div_vec2_i32(~_wgslsmith_div_vec2_i32(-u_input.c.xz, u_input.c.xy) << (~(_wgslsmith_div_vec2_u32(global0.b.xw, global0.b.ww) >> (vec2<u32>(global0.b.x, 0u) % vec2<u32>(32u))) % vec2<u32>(32u)), func_2(Struct_1(all(!global1.b), 0i, vec3<bool>(true, global1.b.x, global2[_wgslsmith_index_u32(u_input.b, 4u)] <= 1i), global1.a.x), ~(select(vec4<i32>(global2[_wgslsmith_index_u32(arg_0.b.x, 4u)], u_input.c.x, 11515i, -27202i), vec4<i32>(global2[_wgslsmith_index_u32(global0.b.x, 4u)], 0i, global1.a.x, -1i), vec4<bool>(global1.b.x, false, true, global1.b.x)) << (firstTrailingBit(vec4<u32>(global0.b.x, 0u, global0.b.x, global0.b.x)) % vec4<u32>(32u))), -449f));
    return Struct_3(global1.a << (firstTrailingBit(global0.b.wyw ^ _wgslsmith_mod_vec3_u32(global4[_wgslsmith_index_u32(global0.b.x, 5u)], arg_0.b.wyz)) % vec3<u32>(32u)), select(global1.b, !(!select(global1.b, global1.b, vec3<bool>(false, global1.b.x, global1.b.x))), select(!vec3<bool>(global1.b.x, global1.b.x, true), global1.b, !global1.b.x == global1.b.x)));
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> vec2<f32> {
    global2 = array<i32, 4>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1144f));
    var var_1 = arg_1.b;
    let var_2 = Struct_5(func_1(Struct_4(630f, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, 86552u) | vec4<u32>(37117u, 19106u, 0u, 4294967295u), global0.b))).b.x, 786f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(false, -1i, global1.b, _wgslsmith_sub_i32(0i, arg_1.a.x)))) - -1519f), max(_wgslsmith_mult_vec4_u32(global3[_wgslsmith_index_u32(4294967295u, 8u)], vec4<u32>(firstTrailingBit(4294967295u), ~0u, ~u_input.b, min(4294967295u, 70860u))), global3[_wgslsmith_index_u32(reverseBits(~firstTrailingBit(26023u)), 8u)]));
    let var_3 = arg_1;
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1245f, 602f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, var_2.b) - vec2<f32>(var_2.b, -1378f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(~_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c.x, 32610i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, global1.a.x), vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 4u)], -1i), u_input.c.zz)) ^ -2147483647i);
    global1 = Struct_3(-((~vec3<i32>(global1.a.x, -1i, -1i) | -global1.a) >> (vec3<u32>(global0.b.x, firstTrailingBit(1953u), ~u_input.b) % vec3<u32>(32u))), !(!(!select(global1.b, vec3<bool>(global1.b.x, true, global1.b.x), global1.b.x))));
    let var_1 = max(vec2<i32>(abs(global2[_wgslsmith_index_u32(u_input.b, 4u)] << (16275u % 32u)) | global2[_wgslsmith_index_u32(select(86169u, global0.b.x, global1.b.x), 4u)], 12849i), ~u_input.c.yy);
    var var_2 = !global1.b.x;
    var var_3 = vec4<i32>(-2147483647i, min(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(var_0, global2[_wgslsmith_index_u32(20523u, 4u)], u_input.c.x, 2147483647i)), vec4<i32>(select(var_1.x, 37848i, global1.b.x), 1i, -2147483647i, -global1.a.x)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(0u, u_input.a)), firstLeadingBit(global0.b.x)), 4u)]), -3857i, abs(2147483647i));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(0u, func_1(Struct_4(_wgslsmith_f_op_f32(1503f * -1084f), ~global3[_wgslsmith_index_u32(4294967295u, 8u)])))));
    let var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(func_2(Struct_1(false, 4921i, !vec3<bool>(true, false, var_5), 0i), _wgslsmith_mod_vec4_i32(-vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(u_input.b, 4u)], var_1.x, 23523i), -vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 4u)], 42505i, global1.a.x, var_1.x)), var_4.x).x, var_0, ~1i, i32(-1i) * -1i), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(277f, -291f) - vec2<f32>(global0.a, -769f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-763f, var_4.x) - vec2<f32>(global0.a, var_4.x)))), vec2<f32>(_wgslsmith_f_op_f32(-global0.a), 2892f))))), global1.a.xx, global0.b, _wgslsmith_f_op_f32(-195f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a)))));
}

