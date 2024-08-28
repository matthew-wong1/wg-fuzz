struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 30>;

var<private> global1: array<Struct_1, 4>;

var<private> global2: array<bool, 7> = array<bool, 7>(true, true, false, false, false, true, true);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~(~(-vec2<i32>(-1i, 2893i))), vec2<i32>(reverseBits(u_input.b), select(reverseBits(-1i), u_input.b, global2[_wgslsmith_index_u32(~12603u, 7u)]))), reverseBits(2147483647i));
    let var_1 = vec3<bool>(all(select(vec3<bool>(global2[_wgslsmith_index_u32(arg_1.b << (arg_1.b % 32u), 7u)], global2[_wgslsmith_index_u32(0u, 7u)] | true, any(vec2<bool>(true, false))), vec3<bool>(true, !global2[_wgslsmith_index_u32(arg_1.b, 7u)], 793f > arg_1.a.x), true)), true, true);
    global0 = array<vec3<u32>, 30>();
    var_0 = u_input.b;
    var var_2 = vec3<bool>(!(!var_1.x) != any(select(var_1.yx, var_1.yx, select(vec2<bool>(true, global2[_wgslsmith_index_u32(arg_1.b, 7u)]), vec2<bool>(true, true), true))), !global2[_wgslsmith_index_u32(arg_1.b, 7u)], var_1.x);
    return _wgslsmith_mod_i32(1i, u_input.a.x);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = vec3<bool>(!(!global2[_wgslsmith_index_u32(63516u, 7u)]), true, any(!select(!vec4<bool>(true, global2[_wgslsmith_index_u32(arg_1.b, 7u)], global2[_wgslsmith_index_u32(75174u, 7u)], global2[_wgslsmith_index_u32(40395u, 7u)]), vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(arg_1.b, 7u)]), any(vec2<bool>(global2[_wgslsmith_index_u32(arg_1.b, 7u)], global2[_wgslsmith_index_u32(0u, 7u)])))));
    var var_1 = -u_input.a.x;
    var var_2 = ~(~vec2<u32>(_wgslsmith_div_u32(~45440u, arg_1.b), ~arg_0.b));
    var_2 = max(_wgslsmith_add_vec2_u32(~countOneBits(vec2<u32>(13103u, var_2.x)), vec2<u32>(1u, (arg_1.b << (arg_1.b % 32u)) | ~var_2.x)), ~countOneBits(select(vec2<u32>(arg_0.b, var_2.x), vec2<u32>(4294967295u, arg_1.b), true)) >> (vec2<u32>(1u, 7766u) % vec2<u32>(32u)));
    var_1 = max(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(u_input.b), u_input.b), ~u_input.a.zz), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.yw ^ vec2<i32>(0i, -1i), _wgslsmith_clamp_vec2_i32(u_input.a.yx, vec2<i32>(-20002i, u_input.a.x), vec2<i32>(2147483647i, u_input.b)), _wgslsmith_mult_vec2_i32(u_input.a.yx, u_input.a.xy)), _wgslsmith_clamp_vec2_i32(u_input.a.zw, u_input.a.zz, u_input.a.wy) | u_input.a.zy)), firstLeadingBit(u_input.a.x));
    return 1u;
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = u_input.a.ywx;
    global1 = array<Struct_1, 4>();
    var var_1 = !(!all(vec2<bool>(1896f >= arg_0.a.x, all(vec4<bool>(global2[_wgslsmith_index_u32(arg_0.b, 7u)], false, global2[_wgslsmith_index_u32(arg_0.b, 7u)], global2[_wgslsmith_index_u32(arg_0.b, 7u)])))));
    var_1 = true;
    let var_2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.a, vec2<f32>(arg_0.a.x, arg_0.a.x)))), arg_0.a)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(-464f, -338f, global2[_wgslsmith_index_u32(arg_0.b, 7u)])), _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a - arg_0.a)), true))), min(arg_0.b, arg_0.b) << (select(_wgslsmith_mult_u32(arg_0.b, arg_0.b) << (_wgslsmith_dot_vec4_u32(vec4<u32>(18377u, 0u, arg_0.b, arg_0.b), vec4<u32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b)) % 32u), reverseBits(41006u), global2[_wgslsmith_index_u32(func_3(arg_0, Struct_1(arg_0.a, 4294967295u)), 7u)]) % 32u));
    return ~(vec3<i32>(-1i, var_0.x, u_input.a.x | _wgslsmith_clamp_i32(-1i, u_input.a.x, u_input.b)) | abs(u_input.a.yxx));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> vec3<i32> {
    let var_0 = global1[_wgslsmith_index_u32(0u, 4u)];
    return func_4(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(func_3(Struct_1(vec2<f32>(var_0.a.x, arg_0.a.x), var_0.b), Struct_1(arg_0.a, 4294967295u)), arg_0.b) ^ func_3(global1[_wgslsmith_index_u32(0u >> (var_0.b % 32u), 4u)], Struct_1(vec2<f32>(219f, -229f), var_0.b)), 4u)]) ^ min(countOneBits(u_input.a.xwx), u_input.a.xxw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(1u, 4u)];
    global2 = array<bool, 7>();
    let var_1 = global1[_wgslsmith_index_u32(~var_0.b, 4u)];
    global2 = array<bool, 7>();
    let var_2 = ~global0[_wgslsmith_index_u32(var_1.b, 30u)] >> (global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(34387u, var_0.b), 30u)] % vec3<u32>(32u));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(var_2.xz | var_2.xy), abs(vec2<u32>(var_1.b, 4294967295u & ~var_2.x))), 4u)];
    global1 = array<Struct_1, 4>();
    global0 = array<vec3<u32>, 30>();
    var var_4 = ~firstTrailingBit(vec4<u32>(~var_1.b, ~var_0.b, 5896u, countOneBits(var_3.b)) | _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b, 2435u, var_3.b, 0u), ~vec4<u32>(0u, var_3.b, var_3.b, var_0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, var_0.a.x, var_0.a.x, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -831f, var_3.a.x, var_1.a.x) + vec4<f32>(var_3.a.x, var_0.a.x, -1251f, var_0.a.x)))))))), select(-vec3<i32>(func_1(vec3<f32>(var_3.a.x, 1620f, 1319f), Struct_1(var_0.a, 1u)), 14150i, 580i), func_2(global1[_wgslsmith_index_u32(6141u, 4u)], ~(1i ^ u_input.a.x)), !(any(vec3<bool>(true, false, false)) == global2[_wgslsmith_index_u32(reverseBits(0u), 7u)])));
}

