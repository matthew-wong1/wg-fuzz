struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 8> = array<bool, 8>(false, true, true, false, false, false, false, true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-132f, 128f)))), _wgslsmith_f_op_f32(abs(931f)), _wgslsmith_f_op_f32(f32(-1f) * -997f))));
    global1 = array<bool, 8>();
    var var_1 = 6288i;
    let var_2 = arg_2.x;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1107f * _wgslsmith_f_op_f32(645f - var_0.x)));
    return all(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 8u)] && global1[_wgslsmith_index_u32(u_input.c.x, 8u)], all(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.e.x, 8u)])), !global1[_wgslsmith_index_u32(4294967295u, 8u)], true), select(vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(u_input.b.x, 8u)]), vec4<bool>(global1[_wgslsmith_index_u32(arg_1.x, 8u)], false, global1[_wgslsmith_index_u32(43211u, 8u)], true), !vec4<bool>(global1[_wgslsmith_index_u32(93702u, 8u)], global1[_wgslsmith_index_u32(0u, 8u)], true, false)), !select(vec4<bool>(global1[_wgslsmith_index_u32(arg_1.x, 8u)], true, global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(u_input.c.x, 8u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(arg_1.x, 8u)], global1[_wgslsmith_index_u32(u_input.e.x, 8u)], true), vec4<bool>(true, false, true, false)))) != select(select(true, true, ~27880u >= firstTrailingBit(4294967295u)), false, true);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: u32) -> Struct_1 {
    let var_0 = -u_input.a;
    var var_1 = arg_1.x;
    var var_2 = !func_3(Struct_1(vec4<i32>(var_0, u_input.a, var_0, -2147483647i)), ~countOneBits(vec4<u32>(u_input.b.x, u_input.e.x, u_input.c.x, arg_2)), u_input.b) | !global1[_wgslsmith_index_u32(firstTrailingBit(select(4294967295u, abs(38071u), true)), 8u)];
    var var_3 = Struct_1(vec4<i32>(firstTrailingBit(0i), u_input.a, var_0, max(0i, _wgslsmith_clamp_i32(1i, i32(-1i) * -1i, -2147483647i))));
    let var_4 = abs(~(_wgslsmith_sub_i32(var_0, var_0) << (firstLeadingBit(arg_2) % 32u)) | var_0);
    return Struct_1(~var_3.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_2(func_4(func_2(select(vec2<bool>(arg_1.x, arg_1.x), arg_1, any(vec4<bool>(arg_1.x, true, true, true))), vec3<bool>(u_input.a >= u_input.a, global1[_wgslsmith_index_u32(u_input.e.x, 8u)], true), 0u), func_2(vec2<bool>(true, true), vec3<bool>(arg_1.x, global1[_wgslsmith_index_u32(countOneBits(u_input.c.x), 8u)], true), u_input.b.x), Struct_2(Struct_1(abs(vec4<i32>(u_input.a, u_input.a, 11163i, -1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))))));
    var var_1 = select(select(vec4<bool>(any(arg_1), false, true && any(arg_1), !any(vec3<bool>(arg_1.x, arg_1.x, global1[_wgslsmith_index_u32(u_input.e.x, 8u)]))), !select(vec4<bool>(true, true, true, true), !vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 8u)], false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.e.x, 8u)], arg_1.x, arg_1.x), vec4<bool>(false, false, true, false))), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, global1[_wgslsmith_index_u32(42150u, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(44553u, 8u)]), vec4<bool>(arg_1.x, arg_1.x, true, true)), !vec4<bool>(true, true, arg_1.x, global1[_wgslsmith_index_u32(0u, 8u)]), !arg_1.x), select(!vec4<bool>(true, arg_1.x, global1[_wgslsmith_index_u32(u_input.b.x, 8u)], true), select(vec4<bool>(true, arg_1.x, true, true), vec4<bool>(true, arg_1.x, global1[_wgslsmith_index_u32(u_input.b.x, 8u)], global1[_wgslsmith_index_u32(u_input.e.x, 8u)]), true), false), false)), vec4<bool>(reverseBits(91765u << (u_input.b.x % 32u)) != _wgslsmith_clamp_u32(u_input.d, firstLeadingBit(u_input.c.x), u_input.d), any(select(select(vec3<bool>(arg_1.x, true, global1[_wgslsmith_index_u32(13902u, 8u)]), vec3<bool>(false, true, arg_1.x), vec3<bool>(false, true, arg_1.x)), vec3<bool>(true, true, true), false)), arg_1.x, true), !select(!vec4<bool>(false, arg_1.x, true, global1[_wgslsmith_index_u32(u_input.b.x, 8u)]), select(!vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(21477u, 8u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 8u)], false, false), true), !vec4<bool>(arg_1.x, arg_1.x, global1[_wgslsmith_index_u32(u_input.e.x, 8u)], true)));
    let var_2 = select(u_input.b, vec4<u32>(~(1u & _wgslsmith_dot_vec3_u32(u_input.b.xzy, vec3<u32>(u_input.e.x, 17919u, 4708u))), 54880u, 1u, _wgslsmith_div_u32(~1u, reverseBits(u_input.c.x))), true);
    var var_3 = select(select(!vec4<bool>(select(false, arg_1.x, global1[_wgslsmith_index_u32(16886u, 8u)]), true, true, any(var_1.zw)), vec4<bool>(any(select(vec4<bool>(arg_1.x, false, global1[_wgslsmith_index_u32(58854u, 8u)], var_1.x), vec4<bool>(true, arg_1.x, true, arg_1.x), vec4<bool>(var_1.x, true, global1[_wgslsmith_index_u32(113090u, 8u)], arg_1.x))), all(select(arg_1, vec2<bool>(false, var_1.x), var_1.x)), all(var_1.zwz) & true, arg_0 > _wgslsmith_f_op_f32(-arg_0)), vec4<bool>(false, arg_0 <= _wgslsmith_f_op_f32(-1000f * arg_0), 53016u <= u_input.d, false)), select(vec4<bool>(true, var_2.x != 1u, true, !arg_1.x), select(vec4<bool>(arg_0 <= -257f, true, global1[_wgslsmith_index_u32(u_input.e.x, 8u)], true), vec4<bool>(true, any(var_1.xyx), any(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 8u)], true, false)), !global1[_wgslsmith_index_u32(1u, 8u)]), select(!vec4<bool>(true, true, arg_1.x, false), select(vec4<bool>(true, true, arg_1.x, global1[_wgslsmith_index_u32(var_2.x, 8u)]), vec4<bool>(var_1.x, false, arg_1.x, true), arg_1.x), !vec4<bool>(var_1.x, false, true, global1[_wgslsmith_index_u32(u_input.c.x, 8u)]))), _wgslsmith_clamp_u32(4294967295u, u_input.e.x, var_2.x) < max(~var_2.x, ~u_input.d)), -reverseBits(_wgslsmith_mod_i32(-1i, u_input.a)) > firstTrailingBit(u_input.a));
    let var_4 = Struct_2(func_4(func_2(vec2<bool>(arg_1.x, var_3.x), var_3.zyy, 1u), func_4(func_2(var_1.xw, vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 8u)], false, false), ~u_input.c.x), var_0.a, Struct_2(Struct_1(var_0.a.a)), -429f), Struct_2(Struct_1(var_0.a.a)), -200f));
    return Struct_1(_wgslsmith_sub_vec4_i32(var_4.a.a | select(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.a.x, 2147483647i, 2147483647i, 2147483647i), var_0.a.a), vec4<i32>(var_0.a.a.x, -11726i, -8089i, 39345i), global1[_wgslsmith_index_u32(abs(var_2.x), 8u)]), vec4<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(61349i, u_input.a, 1i)), vec3<i32>(-25806i, 9351i, -31479i)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_4.a.a.zx, vec2<i32>(13356i, var_0.a.a.x)), var_4.a.a.xx), 1i, -514i << (~var_2.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(~firstLeadingBit(_wgslsmith_clamp_u32(2551u, 0u, 23775u)), u_input.b.x) <= ~u_input.c.x;
    var var_1 = Struct_1(vec4<i32>(u_input.a, _wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.a, 1i, u_input.a, 1i), vec4<i32>(0i, u_input.a, -2147483647i, 0i)), firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, 0i, u_input.a), vec4<i32>(-68418i, 0i, u_input.a, u_input.a)))), _wgslsmith_sub_i32(19731i, ~_wgslsmith_mult_i32(u_input.a, u_input.a)), -21354i | (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(15491i, u_input.a, u_input.a)) & -46343i)));
    var var_2 = -754f;
    var var_3 = vec4<bool>(!((u_input.c.x >> (countOneBits(u_input.e.x) % 32u)) <= u_input.b.x), true, any(select(vec3<bool>(true, select(global1[_wgslsmith_index_u32(4294967295u, 8u)], false, false), var_0 & global1[_wgslsmith_index_u32(83768u, 8u)]), !(!vec3<bool>(var_0, var_0, global1[_wgslsmith_index_u32(u_input.d, 8u)])), select(vec3<bool>(true, false, true), vec3<bool>(false, false, var_0), select(vec3<bool>(var_0, global1[_wgslsmith_index_u32(0u, 8u)], var_0), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 8u)], var_0), global1[_wgslsmith_index_u32(1u, 8u)])))), true);
    var var_4 = Struct_2(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-286f - -1000f)))), var_3.xy));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b, firstLeadingBit(u_input.b)), -1000f, _wgslsmith_mult_u32(64435u, firstLeadingBit(~_wgslsmith_add_u32(15648u, u_input.e.x))), select(countOneBits(u_input.b), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x) | ~vec4<u32>(u_input.e.x, u_input.c.x, 0u, 52163u), u_input.b), true));
}

