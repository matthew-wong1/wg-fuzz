struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(false, true, true, true, false, true, false, true, true, true);

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: f32;

var<private> global4: vec3<f32> = vec3<f32>(-245f, -1000f, -445f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = select(global1.c, !(!arg_1.c), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), arg_3.c, global0[_wgslsmith_index_u32(global2.e.x ^ arg_3.e.x, 10u)]), !arg_1.c), select(!vec2<bool>(global2.d, arg_1.b), select(!global1.c, vec2<bool>(true, false), select(arg_3.c, vec2<bool>(true, true), global2.c.x)), true), true));
    global4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1551f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2222f, -1432f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(815f, -621f) + _wgslsmith_f_op_f32(f32(-1f) * -349f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1061f + -288f)), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) + _wgslsmith_f_op_f32(max(-1031f, arg_0.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 1232f, 1000f) * vec3<f32>(global4.x, global4.x, -1000f))))));
    global2 = Struct_1(global1.a, select(any(vec4<bool>(true, arg_1.b | arg_3.d, false, true)), !global2.c.x, true), var_0, true, arg_3.e & countOneBits(~arg_3.e));
    var var_1 = firstLeadingBit(global2.e);
    let var_2 = _wgslsmith_clamp_u32(select(~(~1u | firstTrailingBit(var_1.x)), ~abs(firstLeadingBit(u_input.c)), (_wgslsmith_div_u32(41834u, arg_3.e.x) < arg_3.e.x) & global2.d), reverseBits(global2.e.x), select(26319u, 2146u, global2.c.x));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.x, 1237f)))), -1068f, _wgslsmith_f_op_f32(-arg_0.x)));
}

fn func_2() -> Struct_1 {
    global4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.xx), _wgslsmith_f_op_vec2_f32(-global4.xz)), Struct_1(global1.a, true, vec2<bool>(false, true), all(vec4<bool>(true, global1.b, global2.d, global2.c.x)), firstLeadingBit(global2.e)), 0u, Struct_1(i32(-1i) * -1i, global0[_wgslsmith_index_u32(global2.e.x, 10u)], vec2<bool>(false, false), select(global1.d, true, true), ~global2.e))))) + vec3<f32>(2054f, _wgslsmith_f_op_f32(f32(-1f) * -731f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1909f))));
    global3 = _wgslsmith_f_op_f32(-global4.x);
    var var_0 = 0i;
    let var_1 = Struct_1(countOneBits(0i), !(u_input.d < reverseBits(_wgslsmith_clamp_i32(-55343i, global1.a, global1.a))), global1.c, any(vec2<bool>(!all(vec2<bool>(true, true)), global2.d)), _wgslsmith_div_vec4_u32(firstTrailingBit(firstTrailingBit(abs(vec4<u32>(global1.e.x, 1u, u_input.c, 35404u)))), ~global2.e));
    var var_2 = global4.xx;
    return var_1;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = func_2();
    global0 = array<bool, 10>();
    let var_1 = vec2<u32>(~abs(var_0.e.x << (4294967295u % 32u)), _wgslsmith_mod_u32(~(~0u), _wgslsmith_add_u32(95702u, _wgslsmith_add_u32(global1.e.x, _wgslsmith_sub_u32(global1.e.x, arg_0.x)))));
    global1 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(reverseBits(u_input.b), vec4<i32>(global1.a, 1i, global1.a, -12306i))), ~vec2<i32>(-21661i, _wgslsmith_add_i32(global1.a, -30979i))), !(abs(u_input.b.x) <= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -1i), vec2<i32>(u_input.d, global1.a) & u_input.e)), func_2().c, (true | (func_2().c.x & true)) & any(arg_2), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(global2.e.ww, vec2<u32>(4294967295u, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(17838u, 6552u), vec2<u32>(var_0.e.x, global1.e.x)), func_2().e.x, _wgslsmith_sub_u32(0u, var_1.x)), global2.e) << (~abs(_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_0.e.x, arg_0.x, var_0.e.x), var_0.e)) % vec4<u32>(32u)));
    global1 = var_0;
    return Struct_1(_wgslsmith_mult_i32(~0i, -(~global1.a ^ -u_input.d)), global4.x <= _wgslsmith_div_f32(-1120f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1339f)) + _wgslsmith_f_op_f32(-arg_1.x))), select(vec2<bool>(global1.c.x, false), vec2<bool>(false, _wgslsmith_f_op_f32(-arg_1.x) >= 1f), -select(global2.a, -42096i, var_0.b) <= _wgslsmith_mod_i32(func_2().a, -global2.a)), any(vec2<bool>(global2.d, global1.b && var_0.b)), _wgslsmith_clamp_vec4_u32(global2.e, global2.e, vec4<u32>(16513u, 4013u, 4294967295u, 4294967295u | _wgslsmith_mult_u32(var_1.x, 40910u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<u32>(min(4294967295u, _wgslsmith_clamp_u32(abs(global2.e.x), _wgslsmith_mult_u32(1u, global2.e.x), _wgslsmith_dot_vec3_u32(vec3<u32>(38420u, global1.e.x, 58043u), global2.e.zyy))), ~(~_wgslsmith_add_u32(30304u, 47980u)), 1u), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1244f, -521f, 901f))))))), select(!(!(!vec4<bool>(global2.d, true, global2.c.x, global0[_wgslsmith_index_u32(1u, 10u)]))), vec4<bool>(!global0[_wgslsmith_index_u32(select(0u, global1.e.x, global0[_wgslsmith_index_u32(global2.e.x, 10u)]), 10u)], !(!global2.b), !(global1.c.x && global2.b), false), global0[_wgslsmith_index_u32(u_input.a, 10u)]));
    var var_1 = Struct_1(~(-9751i >> (firstTrailingBit(106767u) % 32u)) | u_input.d, !(false || !global0[_wgslsmith_index_u32(var_0.e.x, 10u)]) || var_0.d, vec2<bool>(true, !global2.c.x), global2.d, global2.e | vec4<u32>(global2.e.x, u_input.c, ~u_input.a, 1u));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global4.x, global4.x)))), -688f, global4.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(global4.xz, Struct_1(var_1.a, false, vec2<bool>(false, var_0.b), false, global2.e), 0u, Struct_1(var_0.a, false, var_0.c, global0[_wgslsmith_index_u32(0u, 10u)], vec4<u32>(u_input.a, 0u, 0u, u_input.a)))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-318f, global4.x, global4.x), vec3<f32>(2453f, -1306f, 3012f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global4.x, global4.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, 315f, global4.x))), false || all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 10u)], false, false)))), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1885f - 1508f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x - global4.x) * global4.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global4.x - 1273f), _wgslsmith_f_op_f32(-global4.x), global4.x))), !(!select(!vec3<bool>(false, global2.d, false), select(vec3<bool>(global1.b, false, var_0.b), vec3<bool>(global1.c.x, false, true), vec3<bool>(var_1.b, true, var_0.d)), !vec3<bool>(var_0.d, var_0.c.x, true)))));
    let var_3 = countOneBits(global2.e);
    global1 = func_2();
    global2 = Struct_1(firstLeadingBit(firstTrailingBit(29290i)), global1.d, vec2<bool>(select(any(select(vec2<bool>(global2.b, false), var_1.c, false)), true, _wgslsmith_f_op_f32(-240f + global4.x) < 1191f), any(!vec4<bool>(false, true, global1.c.x, false))), false, vec4<u32>(_wgslsmith_mult_u32(abs(global1.e.x), var_0.e.x), u_input.c, firstTrailingBit(max(_wgslsmith_sub_u32(59327u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2.e.x), vec2<u32>(global2.e.x, global2.e.x)))), reverseBits(_wgslsmith_div_u32(global2.e.x, 23798u) >> (var_0.e.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e.wy & (firstTrailingBit(vec2<u32>(4294967295u, var_3.x)) >> ((~global2.e.zz & (vec2<u32>(var_1.e.x, global1.e.x) | vec2<u32>(var_0.e.x, var_3.x))) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, global4.x, global4.x) + vec3<f32>(854f, -1786f, -476f))))) * vec3<f32>(463f, 144f, -905f)));
}

