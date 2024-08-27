struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: array<u32, 32> = array<u32, 32>(0u, 41324u, 35462u, 1u, 1u, 0u, 0u, 18720u, 0u, 84051u, 22037u, 14528u, 0u, 37028u, 27576u, 54755u, 0u, 4294967295u, 41126u, 1u, 123970u, 82196u, 4291u, 52892u, 4294967295u, 9756u, 59319u, 20277u, 0u, 1u, 69633u, 0u);

var<private> global2: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(-1i, -20499i), vec2<i32>(-7562i, i32(-2147483648)), vec2<i32>(1i, -7746i), vec2<i32>(19682i, -7897i), vec2<i32>(18520i, -14872i), vec2<i32>(2147483647i, 1i), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, -373i));

var<private> global3: vec4<i32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1() -> bool {
    var var_0 = Struct_2(true, vec2<bool>(true, true), -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(27513i, 15014i, u_input.a.x, -27392i), vec4<i32>(28331i, global3.x, global3.x, -7739i), vec4<i32>(2147483647i, global3.x, global3.x, 1i)), abs(vec4<i32>(-2147483647i, -14823i, 27856i, u_input.a.x))) | firstTrailingBit(42997i), vec2<u32>(26169u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)], 32u)], 32u)], 4294967295u, 33191u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 32u)], 32u)], 32u)], global1[_wgslsmith_index_u32(0u, 32u)], 0u), vec3<bool>(true, global0[_wgslsmith_index_u32(123989u, 3u)], false)), abs(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43824u, 32u)], 32u)], 24998u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 32u)]))) << (~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(48711u, 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(57558u, 32u)], 32u)]) % 32u)));
    let var_1 = firstLeadingBit(44115u);
    return true;
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec2<u32>, arg_3: vec3<bool>) -> vec2<i32> {
    var var_0 = arg_0.d;
    var var_1 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(select(vec3<u32>(arg_0.d.x, 23139u, global1[_wgslsmith_index_u32(5688u, 32u)]), vec3<u32>(arg_2.x, 0u, global1[_wgslsmith_index_u32(arg_1, 32u)]) >> (vec3<u32>(52226u, global1[_wgslsmith_index_u32(1u, 32u)], arg_2.x) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, arg_2.x), 3u)]), vec3<u32>(~arg_1, 66941u, arg_0.d.x)), abs(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, global1[_wgslsmith_index_u32(var_0.x, 32u)], arg_1), vec3<u32>(arg_1, var_0.x, arg_1), vec3<u32>(arg_0.d.x, 0u, arg_1))))), vec3<u32>(arg_2.x, arg_0.d.x, _wgslsmith_div_u32(100091u, 1u)));
    var var_2 = 2515f;
    var_0 = _wgslsmith_sub_vec2_u32(select(~_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(var_1.x, arg_0.d.x)), ~vec2<u32>(arg_2.x, 90356u)), select(vec2<u32>(arg_0.d.x, var_1.x) << (~vec2<u32>(var_1.x, 0u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(17959u, 32u)], var_0.x), arg_2) << (arg_2 % vec2<u32>(32u)), !arg_3.yx), func_1()), firstTrailingBit(~(~(arg_2 ^ vec2<u32>(20245u, 4294967295u)))));
    let var_3 = Struct_1(!(!vec3<bool>(arg_3.x, !global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(firstTrailingBit(64081u), 3u)])));
    return ~(~(_wgslsmith_mod_vec2_i32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~1u, 32u)], 8u)], global2[_wgslsmith_index_u32(0u, 8u)]) | -min(vec2<i32>(17455i, arg_0.c), vec2<i32>(-839i, global3.x))));
}

fn func_2(arg_0: f32) -> vec2<u32> {
    var var_0 = reverseBits(~vec4<u32>(global1[_wgslsmith_index_u32(~abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 32u)]), 32u)], 4294967295u, _wgslsmith_add_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(55344u, 32u)], 12559u), ~global1[_wgslsmith_index_u32(0u, 32u)]), min(firstTrailingBit(4515u), 0u)));
    var var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(func_3(Struct_2(true, vec2<bool>(false, true), u_input.b.x, var_0.zz), 13345u, min(var_0.zw, vec2<u32>(var_0.x, var_0.x)), select(vec3<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 32u)], 3u)], false), vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(54836u, 32u)], 3u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 32u)], 3u)], global0[_wgslsmith_index_u32(85985u, 3u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(31691u, 3u)], global0[_wgslsmith_index_u32(var_0.x, 3u)]))), -global3.zw), u_input.b.x, -select(-2147483647i, ~u_input.b.x, !global0[_wgslsmith_index_u32(var_0.x, 3u)]), u_input.b.x) & select(_wgslsmith_add_vec4_i32(abs(~vec4<i32>(global3.x, -46009i, global3.x, u_input.a.x)), _wgslsmith_add_vec4_i32(-vec4<i32>(global3.x, 2147483647i, 2574i, u_input.a.x), vec4<i32>(0i, 1i, -2147483647i, u_input.a.x))), -_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, 0i, 0i, 2147483647i), vec4<i32>(u_input.b.x, 2147483647i, global3.x, global3.x)), -vec4<i32>(u_input.a.x, global3.x, global3.x, u_input.a.x), abs(vec4<i32>(2147483647i, u_input.b.x, global3.x, 71302i))), !(!(!vec4<bool>(global0[_wgslsmith_index_u32(45531u, 3u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)], 3u)], global0[_wgslsmith_index_u32(30174u, 3u)], global0[_wgslsmith_index_u32(var_0.x, 3u)]))));
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(~var_0.x, 3u)], select(vec2<bool>(all(select(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 3u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(58898u, 3u)]), false)), !any(vec3<bool>(global0[_wgslsmith_index_u32(2782u, 3u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 32u)], 32u)], 3u)], true))), vec2<bool>(global0[_wgslsmith_index_u32(69762u, 3u)] | true, all(select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 3u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 3u)], false), vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 3u)])))), vec2<bool>(_wgslsmith_f_op_f32(ceil(-186f)) == _wgslsmith_f_op_f32(f32(-1f) * -1228f), all(select(vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 3u)], global0[_wgslsmith_index_u32(1u, 3u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 3u)]), vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 3u)], global0[_wgslsmith_index_u32(var_0.x, 3u)]))))), ~(-_wgslsmith_div_i32(30579i >> (global1[_wgslsmith_index_u32(var_0.x, 32u)] % 32u), ~(-56084i))), countOneBits(var_0.wz));
    var_2 = Struct_2(var_2.b.x, !var_2.b, var_1.x, select(_wgslsmith_mult_vec2_u32(~select(vec2<u32>(49957u, var_0.x), var_0.zz, true), var_2.d), vec2<u32>(abs(countOneBits(11591u)), global1[_wgslsmith_index_u32(var_2.d.x, 32u)]), select(!(!var_2.b), vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(var_2.d.x), 32u)], 3u)], var_2.b.x), global0[_wgslsmith_index_u32(13899u, 3u)])));
    return select(vec2<u32>(firstTrailingBit(~35150u), 24419u), select(~vec2<u32>(var_2.d.x, global1[_wgslsmith_index_u32(18339u ^ var_2.d.x, 32u)]), _wgslsmith_mult_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(select(17324u, var_0.x, var_2.b.x), 32u)], _wgslsmith_add_u32(0u, 43454u)), max(vec2<u32>(var_2.d.x, 4294967295u), var_0.zw)), select(var_2.b, !vec2<bool>(var_2.a, true), true)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(select(!vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(1846u, 3u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(97074u, 3u)], all(vec4<bool>(false, false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)], 3u)], false)), all(vec3<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 3u)]))), select(!vec4<bool>(global0[_wgslsmith_index_u32(30294u, 3u)], true, true, global0[_wgslsmith_index_u32(4294967295u, 3u)]), !vec4<bool>(false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(82283u, 32u)], 3u)], global0[_wgslsmith_index_u32(26361u, 3u)], true), global0[_wgslsmith_index_u32(10300u, 3u)])));
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(51349u, 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 32u)]), vec2<u32>(44481u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(133339u, 32u)], 32u)], 32u)], 32u)])), _wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(41310u, 32u)], global1[_wgslsmith_index_u32(1305u, 32u)]), vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 32u)])))), 32u)] | ~0u, 3u)], vec2<bool>(func_1(), global3.x != -1i), min(select(1i, 0i, !global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29225u, 32u)] | global1[_wgslsmith_index_u32(38438u, 32u)], 3u)]), -2147483647i), reverseBits(_wgslsmith_div_vec2_u32(max(vec2<u32>(26842u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)]), vec2<u32>(global1[_wgslsmith_index_u32(0u, 32u)], 72312u)) ^ func_2(1316f), abs(countOneBits(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 32u)], 32u)], 54777u))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-948f, 788f, 251f, -680f), vec4<f32>(513f, 1122f, 628f, -1601f)))))));
    global2 = array<vec2<i32>, 8>();
    global1 = array<u32, 32>();
    global2 = array<vec2<i32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.b.x, firstTrailingBit(-38980i), _wgslsmith_div_i32(var_1.c, 33165i)), _wgslsmith_f_op_vec4_f32(-var_2), vec3<u32>(var_1.d.x, global1[_wgslsmith_index_u32(~1u, 32u)], ~abs(12491u)), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, i32(-1i) * -2147483647i, -global3.x), vec3<i32>(firstLeadingBit(global3.x), i32(-1i) * -40997i, var_1.c)), abs(vec3<i32>(14568i, var_1.c, 2147483647i))), var_2.x);
}

