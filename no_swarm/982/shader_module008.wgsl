struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28>;

var<private> global1: Struct_1;

var<private> global2: bool = true;

var<private> global3: vec3<f32> = vec3<f32>(-301f, 993f, -2589f);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> bool {
    let var_0 = !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)));
    var var_1 = _wgslsmith_div_i32(_wgslsmith_mod_i32(~0i, _wgslsmith_dot_vec2_i32(-max(u_input.b.yx, vec2<i32>(u_input.b.x, u_input.d.x)), max(u_input.b.zz, firstTrailingBit(u_input.b.xy)))), ~countOneBits(u_input.d.x));
    let var_2 = arg_0.a;
    let var_3 = vec3<f32>(global3.x, 2018f, -1304f);
    var var_4 = firstLeadingBit(~global1.a.x);
    return all(!vec2<bool>(any(select(var_0.wy, vec2<bool>(var_0.x, true), var_0.xz)), select(false, true, select(false, true, var_0.x))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<f32>) -> vec3<bool> {
    global1 = arg_0;
    global1 = Struct_1(abs(vec3<u32>(1u, ~_wgslsmith_clamp_u32(19891u, 23431u, 29086u), ~6734u)));
    global3 = vec3<f32>(-1000f, arg_2.x, _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-arg_2.x)));
    global1 = arg_0;
    let var_0 = arg_0;
    return vec3<bool>(true, any(vec3<bool>(all(vec3<bool>(true, true, true)), func_3(var_0, vec4<f32>(1000f, arg_2.x, global3.x, arg_2.x)), true)) && !(!any(vec4<bool>(true, true, true, true))), any(vec4<bool>(true, true, firstTrailingBit(arg_1.x) < -6578i, true)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> u32 {
    global0 = array<u32, 28>();
    let var_0 = vec2<bool>(true, true);
    let var_1 = arg_1;
    let var_2 = select(!select(!func_2(Struct_1(arg_0.a), u_input.b, vec3<f32>(global3.x, global3.x, global3.x)), select(func_2(arg_1, u_input.b, vec3<f32>(-219f, -890f, global3.x)), vec3<bool>(arg_3, true, true), vec3<bool>(var_0.x, var_0.x, arg_0.c)), !any(vec3<bool>(var_0.x, false, true))), vec3<bool>(true, true, var_0.x), !(!vec3<bool>(all(var_0), true, true)));
    let var_3 = arg_0;
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, 63209u, 1u), arg_2 ^ var_1.a.x), ~2048u, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 0u, arg_0.a.x), var_1.a), _wgslsmith_mod_u32(~global1.a.x, 6078u)), firstLeadingBit(vec4<u32>(reverseBits(arg_2), ~global1.a.x, _wgslsmith_dot_vec3_u32(var_1.a, vec3<u32>(var_3.a.x, var_1.a.x, 1u)), 1u))), countOneBits(global1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 212f, global3.x) + vec3<f32>(global3.x, global3.x, 639f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(986f, global3.x, global3.x))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(878f, global3.x, -182f)))))))));
    var var_0 = ~(~global0[_wgslsmith_index_u32(abs(49511u), 28u)]);
    var var_1 = ~select(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.a.x, 37728u), _wgslsmith_dot_vec3_u32(global1.a, vec3<u32>(u_input.a.x, 12758u, 74903u)), 1u, ~4294967295u), (vec4<u32>(global0[_wgslsmith_index_u32(global1.a.x, 28u)], u_input.c, global1.a.x, global1.a.x) >> (vec4<u32>(global1.a.x, 24089u, u_input.a.x, global0[_wgslsmith_index_u32(global1.a.x, 28u)]) % vec4<u32>(32u))) << (~vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(81828u, 28u)], u_input.c, 22408u) % vec4<u32>(32u))), vec4<u32>(~4294967295u, ~global0[_wgslsmith_index_u32(abs(89629u), 28u)], ~(0u & u_input.a.x), ~func_1(Struct_2(global1.a, u_input.c, false), Struct_1(vec3<u32>(23577u, 1u, 1u)), global1.a.x, true)), !(-2147483647i >= -u_input.d.x));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(global3.xz, global3.zz, false)), global3.yz)))), global3.zz);
    var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_1.x, u_input.c, ~u_input.a.x & 0u), _wgslsmith_mult_vec4_u32(~(vec4<u32>(38771u, var_1.x, 4294967295u, 4294967295u) >> (vec4<u32>(1u, 115641u, global1.a.x, u_input.a.x) % vec4<u32>(32u))) << (~firstLeadingBit(vec4<u32>(var_1.x, u_input.a.x, 4294967295u, 4294967295u)) % vec4<u32>(32u)), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], firstTrailingBit(min(1u, 19447u)), abs(~1u), var_1.x)));
    let var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(global1.a.x, ~global1.a.x) ^ firstTrailingBit(4294967295u), 4294967295u, ~var_1.x | global0[_wgslsmith_index_u32(u_input.c, 28u)], 4294967295u), ~(~max(~vec4<u32>(global1.a.x, 0u, 46632u, 1u), countOneBits(vec4<u32>(global1.a.x, global0[_wgslsmith_index_u32(111868u, 28u)], 1u, global1.a.x)))));
    var var_4 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(1u, 2357u), 1u, ~global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(var_1.x, var_1.x), 28u)]));
    let var_5 = ~abs(~_wgslsmith_mod_vec3_u32(~var_4.a, var_4.a >> (vec3<u32>(22504u, var_1.x, 0u) % vec3<u32>(32u))));
    let var_6 = vec4<bool>(-518f >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-514f)), _wgslsmith_div_f32(-786f, 2608f)) + var_2.x), true, !(all(vec2<bool>(true, false)) || any(select(vec2<bool>(false, true), vec2<bool>(false, false), false))), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.x, _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~(~global1.a), ~vec3<u32>(1u, 1u, var_3)), var_1.wxx), global3.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-1185f, global3.x)), _wgslsmith_div_f32(global3.x, global3.x), _wgslsmith_f_op_f32(global3.x + -777f), var_2.x))), ~select(vec4<u32>(1u, 43115u, var_1.x, var_1.x), abs(vec4<u32>(70149u, 4294967295u, 4294967295u, 31533u)), select(vec4<bool>(var_6.x, var_6.x, false, var_6.x), var_6, var_6)) & _wgslsmith_mod_vec4_u32(vec4<u32>(countOneBits(1u), 37383u, ~var_5.x, var_1.x), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_1.x, var_5.x, u_input.a.x, u_input.c), firstTrailingBit(vec4<u32>(var_1.x, 37781u, 4294967295u, 9070u)))));
}

