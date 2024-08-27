struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 13>;

var<private> global1: Struct_1;

var<private> global2: array<u32, 1> = array<u32, 1>(27162u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> u32 {
    global1 = arg_1;
    global1 = arg_1;
    let var_0 = arg_1.a;
    global0 = array<vec4<u32>, 13>();
    let var_1 = vec4<i32>(~firstTrailingBit(_wgslsmith_mod_i32(2147483647i, 25535i) << (_wgslsmith_div_u32(arg_1.a, global1.a) % 32u)), arg_2, 2147483647i, ~(~arg_2) ^ arg_2);
    return _wgslsmith_mult_u32(u_input.a, ~arg_1.a) ^ ~abs(_wgslsmith_div_u32(_wgslsmith_add_u32(var_0, var_0), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.a, 1u)], 1u)]));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = Struct_1(u_input.a);
    var var_1 = _wgslsmith_clamp_vec3_i32(~(~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2527i, arg_0, arg_0, 1i), vec4<i32>(39349i, arg_0, arg_0, arg_0)), arg_0 << (global2[_wgslsmith_index_u32(var_0.a, 1u)] % 32u), _wgslsmith_div_i32(27063i, arg_0))), -(~(~abs(vec3<i32>(arg_0, arg_0, arg_0)))), select(vec3<i32>(abs(-1i), arg_0, arg_0), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0, arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(-20740i, arg_0, arg_0), vec3<i32>(arg_0, arg_0, 36145i))), ~_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, 23066i, arg_0), vec3<i32>(arg_0, arg_0, -1i))), all(vec2<bool>(true, true))));
    global2 = array<u32, 1>();
    var var_2 = -2147483647i;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-693f)) + -601f))) - _wgslsmith_f_op_f32(f32(-1f) * -569f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1307f - 2717f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1746f, -234f, false)))))));
    return arg_0;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> i32 {
    global1 = Struct_1(func_1(_wgslsmith_f_op_f32(f32(-1f) * -172f), Struct_1(select(reverseBits(arg_1.a), global1.a, true)), select(~(i32(-1i) * -2147483647i), func_3(max(2147483647i, -1i)), select(any(vec3<bool>(false, true, true)), true, arg_1.a <= 1u))));
    let var_0 = countOneBits((~select(vec2<i32>(-1i, 48423i), vec2<i32>(-43812i, -27434i), true) << (vec2<u32>(firstLeadingBit(arg_1.a), arg_0.x) % vec2<u32>(32u))) >> (vec2<u32>(abs(4294967295u), ~0u) % vec2<u32>(32u)));
    global0 = array<vec4<u32>, 13>();
    global0 = array<vec4<u32>, 13>();
    var var_1 = Struct_1(global1.a);
    return -_wgslsmith_dot_vec3_i32(min(vec3<i32>(var_0.x, var_0.x, var_0.x) << (arg_0 % vec3<u32>(32u)), ~vec3<i32>(-20831i, 2147483647i, var_0.x)), min(vec3<i32>(var_0.x, var_0.x, 1i) << (vec3<u32>(u_input.a, global1.a, arg_1.a) % vec3<u32>(32u)), vec3<i32>(var_0.x, 2147483647i, var_0.x))) & -select(_wgslsmith_mult_i32(-var_0.x, ~var_0.x), func_3(-2147483647i), all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true))));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: vec3<f32>) -> Struct_1 {
    global2 = array<u32, 1>();
    global2 = array<u32, 1>();
    let var_0 = ~(~(~global1.a)) << (reverseBits(~_wgslsmith_add_u32(u_input.a >> (4546u % 32u), 0u << (global1.a % 32u))) % 32u);
    let var_1 = _wgslsmith_f_op_f32(-arg_2.x);
    global0 = array<vec4<u32>, 13>();
    return Struct_1(_wgslsmith_div_u32(min(reverseBits(select(global2[_wgslsmith_index_u32(49687u, 1u)], 0u, true)), global2[_wgslsmith_index_u32(u_input.a, 1u)]), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(32205u);
    global0 = array<vec4<u32>, 13>();
    let var_1 = Struct_1(min(20537u, 57665u));
    let var_2 = var_1;
    var var_3 = reverseBits(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_1.a, _wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(1u, 1u)], 2972u, 87563u), vec3<u32>(global2[_wgslsmith_index_u32(42731u, 1u)], global2[_wgslsmith_index_u32(1u, 1u)], global1.a)), 15326u), func_1(1701f, var_2, -2147483647i) << (~u_input.a % 32u)));
    global1 = Struct_1(~1u);
    global0 = array<vec4<u32>, 13>();
    let var_4 = false;
    let var_5 = func_4(_wgslsmith_mult_i32(func_2(vec3<u32>(global1.a, var_2.a, 4294967295u), Struct_1(22307u)) | _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(14513i, -21420i, 0i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -43650i, 38291i), vec3<i32>(1i, 10262i, 1i))), -44341i), min(reverseBits(_wgslsmith_add_vec3_i32(-vec3<i32>(-1i, 1i, -1i), vec3<i32>(1i, 1i, 1i))), vec3<i32>(firstLeadingBit(-2147483647i), _wgslsmith_mod_i32(1i, _wgslsmith_mod_i32(15859i, 10119i)), -56607i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(676f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(851f - -1103f))), 2392f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u | select(1u | var_2.a, var_2.a, true), abs(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_0.a, 0u, global1.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_5.a, 0u, 0u), vec3<u32>(var_1.a, 4294967295u, var_2.a)))), global1.a, 5204u), min(firstLeadingBit(_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(-39272i, -21017i, -2147483647i)), vec3<i32>(13138i, 23821i, 2147483647i) << (vec3<u32>(0u, var_2.a, var_0.a) % vec3<u32>(32u)))), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), ~(-vec3<i32>(0i, -32168i, -2147483647i)))), countOneBits(vec3<u32>(~abs(var_1.a), max(31222u, global1.a), u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_div_f32(-877f, -479f), _wgslsmith_f_op_f32(ceil(-560f)))))), ~_wgslsmith_div_i32(func_2(~vec3<u32>(4294967295u, var_1.a, global1.a), var_1), ~(0i << (global2[_wgslsmith_index_u32(1u, 1u)] % 32u))));
}

