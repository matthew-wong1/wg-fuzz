struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

var<private> global2: array<u32, 22> = array<u32, 22>(1u, 3945u, 4294967295u, 67502u, 33294u, 33237u, 0u, 0u, 20215u, 38648u, 15600u, 1u, 16061u, 4294967295u, 0u, 0u, 40822u, 4294967295u, 4294967295u, 1u, 4294967295u, 44753u);

var<private> global3: i32;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global0 = 19815u;
    var var_0 = vec2<u32>(~0u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(select(max(vec3<u32>(global1.b.x, 4294967295u, 23477u), global1.b), firstLeadingBit(vec3<u32>(1u, 107686u, global1.b.x)), false | global1.a.x), ~global1.b), min(global1.b, vec3<u32>(global1.b.x, 0u, ~global1.b.x))));
    var var_1 = Struct_1(vec2<bool>(true, !(!global1.a.x)), select(select(vec3<u32>(global1.b.x, global1.b.x, 0u), vec3<u32>(_wgslsmith_add_u32(global1.b.x, global1.b.x), max(global1.b.x, global1.b.x), ~17576u), global1.a.x | false), ~(vec3<u32>(global1.b.x, global1.b.x, 1u) >> (global1.b % vec3<u32>(32u))) ^ global1.b, select(select(!vec3<bool>(true, true, global1.a.x), !vec3<bool>(false, true, global1.a.x), select(vec3<bool>(global1.a.x, true, global1.a.x), vec3<bool>(global1.a.x, false, true), vec3<bool>(global1.a.x, global1.a.x, false))), vec3<bool>(any(vec4<bool>(true, true, true, false)), true, true), global1.a.x)));
    global1 = Struct_1(var_1.a, ~select(~vec3<u32>(40803u, 4294967295u, 0u), vec3<u32>(var_0.x, 1u, 26432u), !global1.a.x) | _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(var_0.x, 30816u), ~global1.b.x, 15518u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39959u, 22u)], 22u)] >> (29360u % 32u), ~29081u, ~29150u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -427f));
    return u_input.a.x;
}

fn func_2() -> vec4<bool> {
    var var_0 = _wgslsmith_add_vec2_i32(-u_input.a.zx, ~vec2<i32>(u_input.a.x, -24905i) << (((global1.b.yx ^ abs(global1.b.yy)) | (vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 22u)], 10051u) | global1.b.xz)) % vec2<u32>(32u)));
    var var_1 = Struct_1(global1.a, vec3<u32>(firstTrailingBit(_wgslsmith_sub_u32(0u, select(global1.b.x, 0u, false))), _wgslsmith_mod_u32(8493u, ~_wgslsmith_sub_u32(global1.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(53510u, 22u)], 22u)])), ~(~27844u)));
    let var_2 = Struct_1(vec2<bool>(!all(vec3<bool>(true, true, global1.a.x)), var_1.a.x), _wgslsmith_mod_vec3_u32(select(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_1.b.x, 164385u), vec3<u32>(global1.b.x, global2[_wgslsmith_index_u32(global1.b.x, 22u)], 4294967295u)), ~var_1.b, var_1.a.x) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.b.x, var_1.b.x, global2[_wgslsmith_index_u32(var_1.b.x, 22u)]), ~vec3<u32>(16187u, 4294967295u, global2[_wgslsmith_index_u32(45854u, 22u)]), ~global1.b) % vec3<u32>(32u)), global1.b));
    let var_3 = _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_div_i32(var_0.x, 55476i | func_3()), 13133i) ^ max(13491i, 1i);
    var_1 = var_2;
    return select(select(!vec4<bool>(false, var_2.a.x, var_2.a.x, !var_1.a.x), vec4<bool>(false, true, var_1.a.x & any(vec2<bool>(false, false)), all(!global1.a)), true), select(select(vec4<bool>(var_2.a.x, !global1.a.x, true, all(vec3<bool>(false, var_2.a.x, true))), select(select(vec4<bool>(var_2.a.x, true, false, var_1.a.x), vec4<bool>(var_2.a.x, true, var_2.a.x, true), true), !vec4<bool>(true, false, var_1.a.x, true), vec4<bool>(true, true, true, true)), var_3 <= var_0.x), vec4<bool>(!any(vec4<bool>(var_2.a.x, global1.a.x, global1.a.x, false)), false, select(var_1.a.x, true, all(vec4<bool>(var_1.a.x, true, var_2.a.x, var_1.a.x))), var_2.a.x), true), vec4<bool>(false, var_1.a.x, global1.a.x, true));
}

fn func_1() -> bool {
    var var_0 = !(!(!vec3<bool>(true, false, global1.a.x)));
    global0 = firstTrailingBit(~4294967295u);
    let var_1 = 304f;
    global0 = global2[_wgslsmith_index_u32(50262u, 22u)];
    var_0 = select(select(vec3<bool>(var_0.x, !select(global1.a.x, var_0.x, false), true), vec3<bool>(true, any(func_2()), var_0.x), var_0.x), vec3<bool>(global1.a.x, false, !global1.a.x), vec3<bool>(u_input.a.x < ~(-10090i), var_0.x, -333f != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(922f))))));
    return var_0.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(vec2<bool>(true, true), reverseBits(firstLeadingBit(select(global1.b, vec3<u32>(4294967295u, 14008u, global1.b.x), vec3<bool>(global1.a.x, false, global1.a.x)) >> (max(vec3<u32>(global2[_wgslsmith_index_u32(global1.b.x, 22u)], arg_1.b.x, global2[_wgslsmith_index_u32(7889u, 22u)]), vec3<u32>(1u, 47759u, 38805u)) % vec3<u32>(32u)))));
    var var_1 = true;
    var var_2 = _wgslsmith_mult_i32(0i, ~reverseBits(_wgslsmith_add_i32(arg_2.x, u_input.a.x) << (_wgslsmith_mult_u32(arg_1.b.x, global2[_wgslsmith_index_u32(24521u, 22u)]) % 32u)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(483f * 1f));
    var_2 = ~0i;
    return Struct_1(vec2<bool>(!(false & var_0.a.x), any(func_2().zw)), ~arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    var var_1 = func_4(Struct_1(!select(select(vec2<bool>(global1.a.x, global1.a.x), global1.a, false), vec2<bool>(false, false), func_1()), firstLeadingBit(_wgslsmith_add_vec3_u32(global1.b, ~global1.b))), Struct_1(global1.a, global1.b), select(abs(u_input.a.zw), u_input.a.zw & vec2<i32>(~2147483647i, u_input.a.x), global1.a));
    var var_2 = func_4(Struct_1(global1.a, vec3<u32>(var_1.b.x, var_1.b.x, abs(0u))), func_4(Struct_1(var_1.a, vec3<u32>(_wgslsmith_mod_u32(46885u, 33908u), ~0u, _wgslsmith_add_u32(46239u, var_1.b.x))), func_4(func_4(Struct_1(vec2<bool>(global1.a.x, global1.a.x), vec3<u32>(global1.b.x, var_1.b.x, global1.b.x)), func_4(Struct_1(vec2<bool>(false, false), var_1.b), Struct_1(vec2<bool>(true, global1.a.x), vec3<u32>(global1.b.x, global2[_wgslsmith_index_u32(global1.b.x, 22u)], 1u)), vec2<i32>(-2147483647i, u_input.a.x)), ~u_input.a.yz), func_4(func_4(Struct_1(global1.a, vec3<u32>(global2[_wgslsmith_index_u32(60835u, 22u)], var_1.b.x, global1.b.x)), Struct_1(var_1.a, vec3<u32>(49591u, 0u, global2[_wgslsmith_index_u32(global1.b.x, 22u)])), vec2<i32>(33008i, -1i)), Struct_1(vec2<bool>(var_1.a.x, var_1.a.x), var_1.b), vec2<i32>(0i, 0i)), _wgslsmith_div_vec2_i32(vec2<i32>(-25667i, u_input.a.x) << (global1.b.yy % vec2<u32>(32u)), u_input.a.zy)), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a.x, 1292i)), u_input.a.zz), firstTrailingBit(max(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.wy)))), u_input.a.wx);
    global0 = ~var_2.b.x | 1u;
    let x = u_input.a;
    s_output = StorageBuffer(-481f, ~var_2.b.x, 0u, _wgslsmith_f_op_vec3_f32(vec3<f32>(1219f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2007f)) + _wgslsmith_f_op_f32(493f + -2073f)), 486f) + vec3<f32>(_wgslsmith_f_op_f32(438f - -729f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1342f * -877f)), -1095f)));
}

