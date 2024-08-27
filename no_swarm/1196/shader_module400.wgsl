struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(150f, -861f, 716f, -202f, -338f, -425f, 1000f, 218f, -1597f, -251f, 1086f, -520f, 200f, -125f, -1674f, 776f, 483f, -1000f, -1594f, 300f, 1792f, 1234f, 1768f, -1063f);

var<private> global1: Struct_1 = Struct_1(vec3<i32>(-24897i, 1i, -1i));

var<private> global2: array<bool, 8> = array<bool, 8>(false, false, true, false, false, false, true, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: vec2<u32>) -> f32 {
    return 1556f;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: vec3<i32>) -> vec3<bool> {
    global0 = array<f32, 24>();
    let var_0 = Struct_1(vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, 1i), _wgslsmith_dot_vec3_i32(-max(global1.a, arg_2), arg_2), ~u_input.a.x));
    var var_1 = Struct_1(countOneBits(arg_2));
    let var_2 = 1u;
    let var_3 = select(vec2<bool>(true, ~(~var_2) != ~min(4294967295u, 1u)), !vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2, var_2), 8u)], !any(vec3<bool>(false, global2[_wgslsmith_index_u32(41400u, 8u)], global2[_wgslsmith_index_u32(53284u, 8u)]))), select(vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(19057u, 1u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(88207u, 8275u, 4294967295u, 28155u), vec4<u32>(var_2, 62271u, 58159u, var_2)) % 32u), 8u)], select(!global2[_wgslsmith_index_u32(4294967295u, 8u)], var_2 < 4294967295u, false)), vec2<bool>(!global2[_wgslsmith_index_u32(~var_2, 8u)], global2[_wgslsmith_index_u32(abs(~6257u), 8u)]), vec2<bool>(true, true)));
    return !(!vec3<bool>(global2[_wgslsmith_index_u32(countOneBits(var_2), 8u)], ~1i != (u_input.a.x >> (var_2 % 32u)), all(select(vec4<bool>(true, true, global2[_wgslsmith_index_u32(var_2, 8u)], true), vec4<bool>(true, global2[_wgslsmith_index_u32(var_2, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(0u, 8u)]), true))));
}

fn func_2(arg_0: bool) -> vec2<bool> {
    let var_0 = true;
    global2 = array<bool, 8>();
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0[_wgslsmith_index_u32(30430u, 24u)], _wgslsmith_f_op_f32(f32(-1f) * -591f)))))), vec3<f32>(1486f, _wgslsmith_f_op_f32(func_3(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 27504u), vec3<u32>(11742u, 60704u, 47265u)), 4294967295u), -1891f, vec2<u32>(1u, 1u))), _wgslsmith_f_op_f32(f32(-1f) * -1773f)), select(~vec3<i32>(u_input.a.x, select(3632i, -22806i, false), u_input.a.x >> (28062u % 32u)), _wgslsmith_add_vec3_i32(global1.a, ~abs(global1.a)), select(!vec3<bool>(arg_0, false, arg_0), !select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, var_0, global2[_wgslsmith_index_u32(6348u, 8u)]), global2[_wgslsmith_index_u32(92908u, 8u)]), !select(vec3<bool>(arg_0, false, false), vec3<bool>(true, var_0, arg_0), vec3<bool>(var_0, arg_0, false)))));
    global2 = array<bool, 8>();
    global1 = Struct_1(global1.a & abs(abs(firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, 33505i)))));
    return !(!(!(!vec2<bool>(false, var_1.x))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    let var_0 = !all(select(func_2(false), select(func_4(vec2<f32>(global0[_wgslsmith_index_u32(15555u, 24u)], 409f), vec3<f32>(global0[_wgslsmith_index_u32(arg_2.x, 24u)], global0[_wgslsmith_index_u32(arg_2.x, 24u)], global0[_wgslsmith_index_u32(arg_2.x, 24u)]), arg_1.a).zy, arg_0.xz, true), global2[_wgslsmith_index_u32(arg_2.x, 8u)]));
    global2 = array<bool, 8>();
    var var_1 = all(!(!select(arg_0.zwz, vec3<bool>(var_0, false, true), arg_1.a.x < -2147483647i)));
    let var_2 = var_0;
    let var_3 = firstLeadingBit(_wgslsmith_dot_vec3_u32(min(reverseBits(~vec3<u32>(9884u, arg_2.x, arg_2.x)), vec3<u32>(~33764u, arg_2.x, ~arg_2.x)), ~(arg_2.xwz << (arg_2.xxw % vec3<u32>(32u)))));
    return 26566u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-vec3<i32>(global1.a.x, ~(-6193i), -abs(global1.a.x)));
    global2 = array<bool, 8>();
    var var_1 = min(_wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, 0u), 1u) | ~func_1(vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)], false), Struct_1(vec3<i32>(25976i, 53125i, -2147483647i)), vec4<u32>(5524u, 47026u, 4294967295u, 3393u), Struct_1(global1.a)), 62433u) ^ 1u;
    var var_2 = vec3<u32>(select(~abs(8558u), 37860u, true) & (~12979u << (select(~29324u, ~53621u, !global2[_wgslsmith_index_u32(1u, 8u)]) % 32u)), 1u, 4294967295u);
    let var_3 = Struct_1(vec3<i32>(~(i32(-1i) * -2147483647i), 1i, firstTrailingBit(_wgslsmith_dot_vec2_i32(var_0.a.xy, global1.a.xz))));
    var var_4 = select(func_2(any(select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(var_2.x, 8u)], global2[_wgslsmith_index_u32(var_2.x, 8u)]), vec4<bool>(false, true, global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(var_2.x, 8u)]), vec4<bool>(global2[_wgslsmith_index_u32(0u, 8u)], true, true, global2[_wgslsmith_index_u32(var_2.x, 8u)])))).x == (!all(vec2<bool>(global2[_wgslsmith_index_u32(var_2.x, 8u)], false)) & all(!vec4<bool>(true, global2[_wgslsmith_index_u32(var_2.x, 8u)], global2[_wgslsmith_index_u32(var_2.x, 8u)], false))), true, global2[_wgslsmith_index_u32(~53699u, 8u)]);
    let var_5 = firstLeadingBit(var_0.a.x) & u_input.a.x;
    var var_6 = var_2.x;
    var var_7 = vec3<u32>(var_2.x, 50872u, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(firstLeadingBit(-var_3.a.zx | -u_input.a), firstLeadingBit(vec2<i32>(var_0.a.x, var_0.a.x)) ^ ~(~vec2<i32>(-2147483647i, 1195i))), ~countOneBits(var_2.x), _wgslsmith_mod_i32(firstTrailingBit(-48303i) | (var_5 & u_input.a.x), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(max(vec2<i32>(-103774i, global1.a.x), vec2<i32>(42995i, -1i)), var_0.a.yy >> (var_7.zx % vec2<u32>(32u))), countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, var_5), vec2<i32>(u_input.a.x, global1.a.x))))));
}

