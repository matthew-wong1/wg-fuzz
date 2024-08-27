struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 14> = array<vec4<u32>, 14>(vec4<u32>(79480u, 0u, 1u, 4294967295u), vec4<u32>(28845u, 52457u, 22167u, 16288u), vec4<u32>(25641u, 4294967295u, 1u, 18611u), vec4<u32>(4294967295u, 4294967295u, 1u, 38909u), vec4<u32>(29678u, 5027u, 4294967295u, 1u), vec4<u32>(17268u, 14574u, 4294967295u, 17463u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 33985u, 1u, 1u), vec4<u32>(10820u, 23372u, 76952u, 1u), vec4<u32>(18987u, 30973u, 4294967295u, 34196u), vec4<u32>(1u, 48394u, 45615u, 25204u), vec4<u32>(6825u, 0u, 0u, 56325u), vec4<u32>(0u, 43852u, 4294967295u, 4294967295u), vec4<u32>(39821u, 58046u, 3471u, 13338u));

var<private> global1: vec3<i32> = vec3<i32>(-1i, 2147483647i, 18741i);

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(true, false), vec2<i32>(16395i, 0i), vec2<f32>(-1076f, -1554f), true), true, vec3<f32>(-1097f, 824f, 1088f));

var<private> global3: f32;

var<private> global4: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1(arg_0: vec4<bool>) -> bool {
    global1 = ~firstTrailingBit(abs(u_input.a.wzy));
    let var_0 = select(any(vec4<bool>(any(vec2<bool>(global2.a.a.x, true)), global2.b, global2.a.e, u_input.b.x <= ~4294967295u)), false & all(select(!global2.a.b, !arg_0.ww, arg_0.x)), all(global4.a.yw));
    let var_1 = select(~(vec4<u32>(~1u, 60124u, ~u_input.b.x, abs(u_input.b.x)) << (firstTrailingBit(select(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], global0[_wgslsmith_index_u32(1u, 14u)], true)) % vec4<u32>(32u))), vec4<u32>(abs(~(~22207u)), 4294967295u, u_input.b.x, u_input.b.x >> (u_input.b.x % 32u)), arg_0);
    var var_2 = !all(vec3<bool>(_wgslsmith_div_u32(30264u, 4294967295u) != _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, 53490u, var_1.x), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x)), all(arg_0.zxx), !(global2.a.d.x == -996f)));
    let var_3 = true;
    return all(select(!global4.a, !global4.a, global2.a.a));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = Struct_2(global2.a, global4.e, global2.c);
    let var_1 = 1769f;
    var var_2 = Struct_1(!(!vec4<bool>(true, true, func_1(arg_0.a), true)), global4.a.wx, global2.a.c, global2.a.d, all(vec4<bool>(var_0.b & all(vec3<bool>(arg_0.a.x, global4.e, arg_0.e)), false, var_0.a.b.x, global2.a.b.x)));
    var var_3 = reverseBits(u_input.a);
    var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(abs(~(-61836i)), 0i, ~global2.a.c.x, 51050i), ~countOneBits(vec4<i32>(0i, -1i, -2172i, global2.a.c.x) >> ((global0[_wgslsmith_index_u32(u_input.b.x, 14u)] << (global0[_wgslsmith_index_u32(1u, 14u)] % vec4<u32>(32u))) % vec4<u32>(32u))));
    return vec4<bool>(all(vec2<bool>(global2.a.e, global4.a.x)), arg_0.e, var_2.b.x, var_0.b);
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<u32>) -> bool {
    var var_0 = global2.a.a.xyx;
    let var_1 = -946f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1 + 406f))) - _wgslsmith_f_op_f32(-arg_1)));
    var var_2 = global2.a;
    var var_3 = global2.a;
    var var_4 = vec3<u32>(select(u_input.b.x >> (abs(arg_2.x) % 32u), arg_2.x, false) >> (u_input.b.x % 32u), abs(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(78184u, 22335u, arg_2.x)), ~arg_2.x)), 1u);
    return select(!var_1, (select(any(global4.a), global4.e, var_2.b.x | true) != true) | any(vec3<bool>(any(var_0.zy), false, var_0.x)), any(func_3(Struct_1(vec4<bool>(false, false, var_0.x, global4.e), vec2<bool>(false, false), arg_0.zy, vec2<f32>(512f, -441f), var_2.b.x))) & var_3.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global2.a.a, vec2<bool>(all(vec4<bool>(any(global4.b), !global4.b.x, global4.e, true)), global2.b), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(select(vec2<i32>(41266i, global4.c.x), global4.c, vec2<bool>(false, true)), u_input.a.zz), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global2.a.c.x, global1.x), global2.a.c), global1.xz << (u_input.b.zx % vec2<u32>(32u)))), ~max(global4.c | vec2<i32>(global1.x, -3335i), global2.a.c), u_input.a.wz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.d.x * 397f)), -360f)), global2.b);
    var var_1 = Struct_2(Struct_1(select(vec4<bool>(func_1(vec4<bool>(global4.b.x, global2.a.b.x, global4.e, false)), func_2(u_input.a.wzx, var_0.d.x, vec3<u32>(42327u, 58340u, u_input.b.x)), true, func_3(global2.a).x), vec4<bool>(true, true, true, global2.b), true), !global2.a.b, vec2<i32>(abs(2147483647i), countOneBits(_wgslsmith_dot_vec2_i32(global4.c, vec2<i32>(-38268i, var_0.c.x)))), _wgslsmith_f_op_vec2_f32(select(global2.c.xy, _wgslsmith_f_op_vec2_f32(step(global4.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1808f, global4.d.x)))), select(vec2<bool>(true, global4.b.x), vec2<bool>(global4.a.x, true), !global4.b))), true), global2.a.e, vec3<f32>(-453f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global2.a.d.x, global2.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(2014f, global2.a.d.x)))) + _wgslsmith_f_op_f32(439f - global4.d.x))));
    let var_2 = Struct_1(func_3(Struct_1(global4.a, var_1.a.a.wx, vec2<i32>(global4.c.x, global2.a.c.x ^ var_0.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.c.zx, vec2<f32>(-1095f, global2.c.x))), select(func_3(var_1.a).x, var_1.b, true))), global2.a.b, ~vec2<i32>(firstLeadingBit(-9081i), var_0.c.x << (u_input.b.x % 32u)) << (~u_input.b.zx % vec2<u32>(32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2.a.d.x, global2.c.x), global2.c.xx)), _wgslsmith_div_vec2_f32(var_0.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(734f, -539f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.d.x, 459f) * global2.a.d))))), all(select(global2.a.a, func_3(var_1.a), var_1.a.b.x)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-523f, global4.d.x, _wgslsmith_f_op_f32(var_2.d.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1118f - -329f)))));
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(171f * _wgslsmith_f_op_f32(max(694f, _wgslsmith_f_op_f32(-var_0.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -813f), _wgslsmith_f_op_f32(ceil(934f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-339f, global4.d.x, var_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(294f, -1000f, -493f, -700f) * vec4<f32>(global4.d.x, 1004f, 146f, var_2.d.x))))));
    var var_5 = ~(vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, 20816u), 4294967295u) & u_input.b.yx) >> (reverseBits(firstTrailingBit(reverseBits(abs(vec2<u32>(14409u, 37971u))))) % vec2<u32>(32u));
    let var_6 = _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, u_input.b.x << (0u % 32u)), abs(max(global0[_wgslsmith_index_u32(~var_5.x, 14u)], vec4<u32>(u_input.b.x, 1u, var_5.x, var_5.x) ^ vec4<u32>(u_input.b.x, 31103u, 1u, 1u))));
    var var_7 = vec4<bool>(!func_2(reverseBits(_wgslsmith_mult_vec3_i32(u_input.a.wzz, vec3<i32>(0i, global2.a.c.x, var_0.c.x))), global2.a.d.x, ~vec3<u32>(0u, 4294967295u, u_input.b.x)), !all(vec2<bool>(true, !var_2.e)), true, true);
    var var_8 = Struct_1(global2.a.a, !select(!select(global4.a.xx, vec2<bool>(true, true), var_1.a.a.yy), select(var_2.b, !global4.b, true), global4.a.x), global4.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-218f, global2.a.d.x))))) - _wgslsmith_div_vec2_f32(vec2<f32>(465f, var_4.x), var_4.zx)), global2.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_div_i32(~global2.a.c.x | _wgslsmith_dot_vec4_i32(vec4<i32>(global4.c.x, 0i, 8019i, global4.c.x), vec4<i32>(var_8.c.x, global4.c.x, var_1.a.c.x, global4.c.x)), ~_wgslsmith_clamp_i32(7922i, global1.x, 2147483647i)), ~reverseBits(min(var_1.a.c.x, 1i))), -u_input.a, vec2<u32>(5686u, ~var_6.x), var_4.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-801f, 1000f, 1369f, -846f) * vec4<f32>(259f, global2.a.d.x, 1129f, 1213f))) + vec4<f32>(_wgslsmith_f_op_f32(abs(-696f)), var_3.x, _wgslsmith_f_op_f32(-233f - var_4.x), _wgslsmith_f_op_f32(max(var_1.a.d.x, -407f))))));
}

