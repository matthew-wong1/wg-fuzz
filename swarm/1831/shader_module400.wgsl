struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(1235f, -2019f, -1000f, 983f), vec2<u32>(0u, 1u), vec2<f32>(707f, -152f));

var<private> global1: Struct_1 = Struct_1(vec4<f32>(550f, 809f, 104f, -307f), vec2<u32>(6562u, 4294967295u), vec2<f32>(-1143f, 1047f));

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 24554u, 0u, 66594u);

var<private> global3: array<bool, 8>;

var<private> global4: array<bool, 30>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global1.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 869f, arg_0.x, global0.c.x))) + global0.a) * vec4<f32>(1f, arg_0.x, -501f, _wgslsmith_f_op_f32(arg_0.x - 188f))), !select(vec4<bool>(false, false, global3[_wgslsmith_index_u32(4294967295u, 8u)], true), vec4<bool>(true, true, false, true), !vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.b, 30u)], true, true)))), _wgslsmith_add_vec2_u32(vec2<u32>(23035u, ~1u), min(_wgslsmith_mult_vec2_u32(~global2.ww, global2.ww ^ vec2<u32>(u_input.b, 6637u)), select(~vec2<u32>(0u, global0.b.x), global2.xz, all(vec2<bool>(global3[_wgslsmith_index_u32(1u, 8u)], true))))), global0.a.yy);
    var var_0 = countOneBits(max(u_input.b, _wgslsmith_clamp_u32(41964u, _wgslsmith_dot_vec3_u32(global2.zxz, vec3<u32>(0u, 25521u, 1u) >> (global2.zxw % vec3<u32>(32u))), global0.b.x | ~global0.b.x)));
    var var_1 = reverseBits(~(global2.ywz & global2.yxz));
    var var_2 = select(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(-u_input.a.x, u_input.d.x, -2147483647i)), u_input.d.wzw), -reverseBits(vec3<i32>(~(-63933i), i32(-1i) * -32556i, u_input.d.x)), global4[_wgslsmith_index_u32(global0.b.x, 30u)] && global4[_wgslsmith_index_u32(~firstLeadingBit(~1u), 30u)]);
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(global0.a, global1.a, select(select(select(vec4<bool>(global4[_wgslsmith_index_u32(global1.b.x, 30u)], false, true, global4[_wgslsmith_index_u32(global2.x, 30u)]), vec4<bool>(true, false, global4[_wgslsmith_index_u32(0u, 30u)], false), true), select(vec4<bool>(global4[_wgslsmith_index_u32(57168u, 30u)], false, true, false), vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.b, 30u)], global4[_wgslsmith_index_u32(1u, 30u)], global4[_wgslsmith_index_u32(global0.b.x, 30u)]), true), vec4<bool>(global4[_wgslsmith_index_u32(var_1.x, 30u)], true, false, global4[_wgslsmith_index_u32(u_input.b, 30u)])), select(vec4<bool>(global4[_wgslsmith_index_u32(1u, 30u)], true, global4[_wgslsmith_index_u32(4294967295u, 30u)], false), vec4<bool>(true, true, false, global4[_wgslsmith_index_u32(4294967295u, 30u)]), !vec4<bool>(global4[_wgslsmith_index_u32(85693u, 30u)], global3[_wgslsmith_index_u32(global2.x, 8u)], global4[_wgslsmith_index_u32(u_input.b, 30u)], global3[_wgslsmith_index_u32(59307u, 8u)])), !vec4<bool>(true, true, global4[_wgslsmith_index_u32(2716u, 30u)], global3[_wgslsmith_index_u32(3300u, 8u)])))), vec2<u32>(1u >> (_wgslsmith_sub_u32(~47178u, reverseBits(global1.b.x)) % 32u), ~(~global0.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_0.xx))));
    return global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1192u, 1u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(global0.b.x, global1.b.x, 1u), vec3<u32>(0u, 57203u, 10544u), vec3<bool>(false, global3[_wgslsmith_index_u32(0u, 8u)], false)), vec3<u32>(global0.b.x, 4294967295u, 0u)), vec3<u32>(global2.x | 9075u, countOneBits(52875u), _wgslsmith_mod_u32(global2.x, 1u))) & ~var_1.x), 8u)];
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> u32 {
    let var_0 = select(vec2<bool>(!func_3(global0.a.yyy), global4[_wgslsmith_index_u32(countOneBits(global2.x), 30u)]), !(!vec2<bool>(global4[_wgslsmith_index_u32(u_input.b, 30u)] == false, false)), _wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(trunc(global1.a.x))))) <= _wgslsmith_f_op_f32(-global1.c.x));
    global2 = vec4<u32>(countOneBits(_wgslsmith_sub_u32(~30216u, global2.x)), ~global1.b.x ^ u_input.b, 0u, global1.b.x);
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(503f, -1001f)))))));
    global3 = array<bool, 8>();
    global2 = min(_wgslsmith_clamp_vec4_u32(vec4<u32>(~select(90620u, global0.b.x, var_0.x), global1.b.x, ~(19021u << (global2.x % 32u)), 1u), abs(~(vec4<u32>(global0.b.x, u_input.b, global2.x, u_input.b) ^ vec4<u32>(1u, arg_0.b.x, 4294967295u, global1.b.x))), ~vec4<u32>(global1.b.x, countOneBits(global1.b.x), 4294967295u, 4294967295u | global2.x)), abs(vec4<u32>(arg_0.b.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(global2.x, global0.b.x), _wgslsmith_dot_vec3_u32(global2.yxz, global2.yzy)), global0.b.x | 4294967295u, 1u)));
    return _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(countOneBits(global1.b.x), reverseBits(4294967295u)), vec2<u32>(_wgslsmith_dot_vec2_u32(global1.b, arg_0.b), firstTrailingBit(global0.b.x))), vec2<u32>(reverseBits(4294967295u & arg_0.b.x) | reverseBits(4294967295u), global2.x));
}

fn func_1() -> vec4<f32> {
    var var_0 = ~(~global0.b & select(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, 8690u), ~vec2<u32>(31427u, 38930u)), ~(~vec2<u32>(global1.b.x, 4294967295u)), !global4[_wgslsmith_index_u32(func_2(Struct_1(vec4<f32>(-330f, -214f, global1.a.x, global0.c.x), vec2<u32>(global1.b.x, global2.x), global0.a.wx), global1.c.x, u_input.a.x), 30u)]));
    var_0 = abs(_wgslsmith_add_vec2_u32(max(~vec2<u32>(51605u, var_0.x), ~vec2<u32>(55947u, 35994u)), vec2<u32>(53705u, ~u_input.b)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(global0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1317f, global0.c.x, -822f, global0.a.x)))))), select(abs(vec2<u32>(0u, 7484u)) & _wgslsmith_sub_vec2_u32(~vec2<u32>(0u, global1.b.x), ~vec2<u32>(1u, 4294967295u)), ~min(~vec2<u32>(global1.b.x, 1u), vec2<u32>(global1.b.x, global0.b.x)), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(global0.c, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.a.x, global1.a.x))))))));
    var_0 = vec2<u32>(~global2.x, max(global0.b.x, ~1u)) & firstTrailingBit(~vec2<u32>(4294967295u, firstTrailingBit(84958u)));
    global3 = array<bool, 8>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, var_1.c.x, -425f, var_1.c.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, -1000f, global0.a.x, -158f)))))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1.a.x)), 818f);
    var var_1 = all(vec4<bool>(true, !func_3(vec3<f32>(global0.a.x, -979f, var_0)), any(!vec3<bool>(global4[_wgslsmith_index_u32(global0.b.x, 30u)], global4[_wgslsmith_index_u32(global0.b.x, 30u)], true)) == global3[_wgslsmith_index_u32(global1.b.x, 8u)], global3[_wgslsmith_index_u32(63023u, 8u)]));
    var_1 = u_input.c >= 50742i;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_3.a.x, -131f)) * _wgslsmith_f_op_f32(-global1.c.x)))), 422f, var_0);
    let var_3 = 0u;
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(min(126f, var_0)), _wgslsmith_f_op_f32(-global1.c.x), 1342f, _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -627f), -994f, _wgslsmith_f_op_f32(floor(-331f)), 956f)), min(arg_3.b, abs(_wgslsmith_add_vec2_u32(global2.xy, arg_1.b)) | arg_1.b), _wgslsmith_div_vec2_f32(vec2<f32>(1377f, _wgslsmith_f_op_f32(-2085f * 380f)), global0.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~(~(~4294967295u)), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())))), _wgslsmith_sub_vec2_u32(select(global1.b, global0.b, global3[_wgslsmith_index_u32(34308u, 8u)]) | vec2<u32>(global0.b.x, global0.b.x), _wgslsmith_mult_vec2_u32(global0.b ^ global1.b, _wgslsmith_clamp_vec2_u32(global2.yw, global0.b, global0.b))), global0.c), -(~_wgslsmith_div_i32(select(u_input.d.x, u_input.a.x, false), u_input.d.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(586f, -478f, 461f, global0.c.x), global1.a))), ~(~vec2<u32>(global1.b.x, global1.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(~((~global2.xwx << (global2.zxw % vec3<u32>(32u))) | (~vec3<u32>(global0.b.x, 1u, 1u) & global2.zyw)), var_0.b, vec3<i32>(u_input.d.x, _wgslsmith_dot_vec2_i32(min(~u_input.d.zw, firstLeadingBit(u_input.a.wx)), ~u_input.d.yw), ~(-firstLeadingBit(2147483647i))), ~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(global2.x, 17164u, 37955u, global1.b.x), ~vec4<u32>(61977u, u_input.b, 25461u, 0u), vec4<u32>(global1.b.x, 16068u, 67992u, global0.b.x))), _wgslsmith_mod_u32(abs(u_input.b) ^ ~32618u, _wgslsmith_dot_vec2_u32(~global1.b | ~global0.b, global2.yx)));
}

