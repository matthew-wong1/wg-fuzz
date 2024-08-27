struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 24>;

var<private> global2: f32;

var<private> global3: vec4<f32> = vec4<f32>(-997f, -505f, -145f, 1000f);

var<private> global4: vec2<f32> = vec2<f32>(237f, 685f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = min(firstTrailingBit(~vec4<u32>(0u, _wgslsmith_add_u32(global0.a.x, arg_1.a.x), 4294967295u, select(arg_1.a.x, u_input.e, true))), ~abs(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_1.a.x, 1u, 13816u, 32328u), reverseBits(vec4<u32>(62782u, 26256u, arg_1.a.x, global0.a.x)))));
    let var_1 = _wgslsmith_f_op_f32(trunc(-1195f));
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global0.b, var_1, -186f) * vec4<f32>(global3.x, var_1, 1790f, global0.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 1363f, global0.b, arg_1.b) - vec4<f32>(578f, -1235f, -921f, global3.x))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global3.x, global0.b, -775f))), vec4<f32>(-563f, _wgslsmith_div_f32(global3.x, 112f), var_1, _wgslsmith_f_op_f32(f32(-1f) * -1051f)))) * vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global4.x))), _wgslsmith_f_op_f32(global0.b * _wgslsmith_div_f32(_wgslsmith_f_op_f32(675f * -611f), _wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(round(-1797f)))), var_1));
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 566f, global3.x, global4.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -1823f, global3.x, -592f))))));
    return ~_wgslsmith_div_vec2_i32(select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~global0.a.zy, reverseBits(global0.a.zx)), 24u)], -(global1[_wgslsmith_index_u32(36668u, 24u)] & vec2<i32>(-2147483647i, 1i)), select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, true), vec2<bool>(arg_0, arg_0)), vec2<bool>(true, true), select(arg_0, true, arg_0))), select(firstLeadingBit(min(global1[_wgslsmith_index_u32(arg_1.a.x, 24u)], global1[_wgslsmith_index_u32(78103u, 24u)])), ~max(global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(arg_1.a.x, 24u)]), arg_0));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_clamp_vec2_i32(countOneBits(_wgslsmith_sub_vec2_i32(~arg_1, func_3(true, Struct_1(vec3<u32>(0u, 0u, global0.a.x), -748f)))), min(global1[_wgslsmith_index_u32(u_input.e, 24u)], select(-arg_0.xy, vec2<i32>(arg_0.x, 15903i) ^ vec2<i32>(8005i, 3212i), vec2<bool>(true, true))), -select(_wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.b), arg_1), vec2<i32>(-16677i, arg_0.x) & arg_0.xz, true)) >> (firstLeadingBit(~reverseBits(abs(vec2<u32>(global0.a.x, u_input.e)))) % vec2<u32>(32u));
    let var_1 = Struct_2(firstLeadingBit(vec2<u32>(global0.a.x, _wgslsmith_sub_u32(~0u, ~global0.a.x))), vec4<bool>(true, true, true, all(vec4<bool>(true, true, true, true))), Struct_1(countOneBits(vec3<u32>(global0.a.x, u_input.c.x, global0.a.x)) ^ global0.a, global4.x));
    let var_2 = Struct_1(var_1.c.a, global3.x);
    global3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.x, var_2.b, global3.x, -843f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(610f, -546f, global4.x, var_1.c.b) + vec4<f32>(1263f, var_1.c.b, -2180f, -1067f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(869f, global0.b, 1000f, global3.x)))), vec4<bool>(arg_1.x <= ~var_0.x, true, !var_1.b.x, var_1.b.x)))));
    var var_3 = firstTrailingBit(arg_0.zw);
    return var_1.c.a.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = vec4<bool>(any(vec2<bool>(all(vec3<bool>(true, false, true)), true)), !(_wgslsmith_f_op_f32(step(2150f, -1000f)) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f + 632f), _wgslsmith_f_op_f32(473f - 435f)))), !(abs(~u_input.a) <= func_2(vec4<i32>(7503i, -1i, arg_0.x, u_input.b), _wgslsmith_clamp_vec2_i32(global1[_wgslsmith_index_u32(global0.a.x, 24u)], global1[_wgslsmith_index_u32(80750u, 24u)], vec2<i32>(-11391i, -5569i)))), false);
    var var_1 = Struct_2(~arg_2.a.yz, vec4<bool>(select(any(select(vec3<bool>(var_0.x, var_0.x, false), var_0.zzw, var_0.wyw)), _wgslsmith_f_op_f32(-global4.x) == global3.x, all(vec4<bool>(false, false, false, var_0.x))), all(select(vec2<bool>(true, true), vec2<bool>(false, false), var_0.x)), var_0.x, var_0.x), arg_2);
    var var_2 = var_1.c;
    var_1 = Struct_2(vec2<u32>(_wgslsmith_mult_u32(~1u, var_1.a.x), ~(~arg_2.a.x)), vec4<bool>(!all(select(vec3<bool>(var_1.b.x, var_0.x, false), vec3<bool>(true, var_0.x, var_0.x), true)), all(!var_1.b), -func_3(var_1.b.x, arg_2).x < ~arg_0.x, !var_1.b.x), arg_2);
    let var_3 = Struct_1(vec3<u32>(~(var_2.a.x | 1u) | u_input.a, 48048u, ~(~arg_2.a.x) ^ u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1348f + _wgslsmith_f_op_f32(round(arg_2.b)))) + arg_1));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.x))) - -660f)));
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(-15436i), u_input.d, _wgslsmith_sub_i32(38075i, 4115i)) << (select(vec3<u32>(4294967295u, u_input.a, global0.a.x) << (vec3<u32>(global0.a.x, 165012u, 44390u) % vec3<u32>(32u)), ~vec3<u32>(62265u, 29109u, 55855u), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)) % vec3<u32>(32u)), -func_1(~vec3<i32>(u_input.b, u_input.b, 31930i), _wgslsmith_f_op_f32(1000f * var_0), Struct_1(global0.a, 1513f))) ^ abs(vec3<i32>(~min(2147483647i, u_input.b), ~firstLeadingBit(-57462i), -u_input.b));
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global4.x), var_0, 286f, -326f) + vec4<f32>(_wgslsmith_f_op_f32(global3.x * 2167f), global3.x, _wgslsmith_f_op_f32(step(global3.x, 446f)), _wgslsmith_f_op_f32(-2306f + var_0))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, global0.b, 869f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global4.x, global4.x, global3.x, global4.x), vec4<f32>(global3.x, global0.b, global4.x, -452f))) + _wgslsmith_div_vec4_f32(vec4<f32>(global4.x, global3.x, global3.x, 1873f), vec4<f32>(1000f, global0.b, global0.b, global3.x))), false)))));
    let var_3 = Struct_1(vec3<u32>(49380u, ~u_input.c.x, 7956u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1121f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.x)))));
    global4 = vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_2.zyw), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(1066f + var_0)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global3.ww, vec2<f32>(1082f, 997f), vec2<bool>(false, false)))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.x, -736f), var_2.wx))))) * vec2<f32>(var_0, global3.x)));
}

