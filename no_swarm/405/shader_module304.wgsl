struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: bool = false;

var<private> global2: Struct_1;

var<private> global3: array<bool, 8> = array<bool, 8>(true, true, false, true, true, false, true, false);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<bool>) -> vec3<i32> {
    global1 = all(vec2<bool>(true, !any(!vec4<bool>(arg_0.x, false, true, false))));
    var var_0 = u_input.a;
    global1 = false;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1008f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1260f)), _wgslsmith_f_op_f32(trunc(-598f)))))));
    let var_2 = Struct_1(vec3<u32>(_wgslsmith_clamp_u32(0u, 1u, global2.a.x), var_0.x ^ 1u, ~(~var_0.x)), _wgslsmith_mult_vec3_u32(abs(~vec3<u32>(var_0.x, u_input.a.x, 55959u)), u_input.a.zww));
    return _wgslsmith_clamp_vec3_i32(vec3<i32>(i32(-1i) * -1i, ~firstTrailingBit(abs(2147483647i)), reverseBits(30386i)), firstLeadingBit(abs(-vec3<i32>(-1747i, 0i, -1i))), -countOneBits(reverseBits(firstLeadingBit(vec3<i32>(-54877i, -28077i, -2147483647i)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: bool) -> bool {
    let var_0 = -(vec3<i32>(-1i) * -func_3(arg_2.yy));
    var var_1 = 4294967295u;
    let var_2 = Struct_1(vec3<u32>(min(1u, global2.b.x) << (global2.a.x % 32u), 39710u, arg_1.x), ~vec3<u32>(firstLeadingBit(0u), abs(1u), 39890u) | vec3<u32>(arg_1.x, abs(~0u), ~abs(0u)));
    global0 = !(!arg_2.yx);
    global2 = var_2;
    return select(-var_0.x == -35501i, arg_0.x, select(all(select(vec3<bool>(global3[_wgslsmith_index_u32(arg_1.x, 8u)], global0.x, arg_0.x), select(arg_2, vec3<bool>(false, true, true), arg_3), select(vec3<bool>(true, arg_3, false), arg_2, vec3<bool>(true, false, arg_3)))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(firstTrailingBit(vec4<u32>(arg_1.x, 18886u, arg_1.x, global2.b.x)), ~vec4<u32>(u_input.a.x, 37310u, u_input.a.x, global2.a.x), arg_3), _wgslsmith_mod_vec4_u32(vec4<u32>(global2.b.x, u_input.a.x, global2.a.x, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(10100u, 3814u, 0u, var_2.b.x), u_input.a))), 8u)], false));
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-(~arg_0), _wgslsmith_mult_i32(arg_0, 0i)), 1i), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0, arg_0), -vec2<i32>(arg_0, -2147483647i)), vec2<i32>(countOneBits(arg_0), -2147483647i)), vec2<i32>(2515i, arg_0)));
    global1 = any(vec3<bool>(true, false, !func_2(vec2<bool>(global3[_wgslsmith_index_u32(0u, 8u)], global3[_wgslsmith_index_u32(15966u, 8u)]), vec2<u32>(global2.a.x, global2.a.x), !vec3<bool>(global3[_wgslsmith_index_u32(7473u, 8u)], global3[_wgslsmith_index_u32(global2.a.x, 8u)], false), global3[_wgslsmith_index_u32(u_input.a.x, 8u)] | false)));
    var var_1 = true;
    global0 = vec2<bool>(true, u_input.a.x > 66300u);
    global3 = array<bool, 8>();
    return all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec3<bool>(global0.x, global3[_wgslsmith_index_u32(global2.b.x, 8u)], global3[_wgslsmith_index_u32(32337u, 8u)]))), !select(vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 8u)]), select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 8u)], true), vec2<bool>(false, true), global3[_wgslsmith_index_u32(u_input.a.x, 8u)]), select(vec2<bool>(global3[_wgslsmith_index_u32(1u, 8u)], global3[_wgslsmith_index_u32(u_input.a.x, 8u)]), vec2<bool>(true, global3[_wgslsmith_index_u32(30151u, 8u)]), global3[_wgslsmith_index_u32(1u, 8u)])), global0.x & ((global3[_wgslsmith_index_u32(1u, 8u)] && global0.x) | !global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.yyy, _wgslsmith_clamp_vec3_u32(vec3<u32>(30568u, u_input.a.x, global2.a.x), vec3<u32>(47520u, 30013u, global2.b.x), u_input.a.xwx)), u_input.a.zzx), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(~4294967295u, ~global2.b.x, ~1u), global2.b)));
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(firstLeadingBit(_wgslsmith_mult_i32(1i, -32748i)), _wgslsmith_div_i32(abs(-21777i), -12303i)) << (select(~abs(vec2<u32>(4294967295u, 27644u)), _wgslsmith_mult_vec2_u32(~u_input.a.zw, vec2<u32>(global2.b.x, global2.b.x)), vec2<bool>(false, select(true, false, false))) % vec2<u32>(32u)), -(firstLeadingBit(~vec2<i32>(1i, 2147483647i)) >> (u_input.a.wx % vec2<u32>(32u))));
    global0 = select(!(!vec2<bool>(true, func_1(-47567i))), vec2<bool>(!global0.x, global0.x), any(!select(vec4<bool>(global3[_wgslsmith_index_u32(var_0.b.x, 8u)], global3[_wgslsmith_index_u32(1u, 8u)], true, global0.x), !vec4<bool>(global0.x, global0.x, global0.x, true), select(vec4<bool>(global3[_wgslsmith_index_u32(global2.a.x, 8u)], global3[_wgslsmith_index_u32(var_0.a.x, 8u)], global0.x, true), vec4<bool>(false, global3[_wgslsmith_index_u32(42686u, 8u)], true, global0.x), false))));
    let var_2 = vec4<i32>(-var_1.x, -(~27626i), firstTrailingBit(-var_1.x | func_3(vec2<bool>(global0.x, false)).x), reverseBits(25149i) << (firstTrailingBit(global2.a.x) % 32u));
    let var_3 = Struct_1(abs(global2.a), vec3<u32>(~(17831u & u_input.a.x), 31550u, ~firstLeadingBit(var_0.a.x)));
    global0 = !vec2<bool>(global0.x, false);
    let var_4 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1652f, -438f)), -1719f, true)) * 881f), -1703f), vec2<f32>(_wgslsmith_f_op_f32(select(1627f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1275f - -668f))), global3[_wgslsmith_index_u32(51763u, 8u)])), -1548f));
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_4)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(global2.a.zy, select(~u_input.a.xz, vec2<u32>(91559u, global2.a.x) ^ var_0.b.xy, vec2<bool>(false, global0.x)) | var_0.a.xy), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), global2.b.zy), ~u_input.a.x, 24714u), _wgslsmith_add_vec4_u32(u_input.a, u_input.a)), i32(-1i) * -10063i);
}

