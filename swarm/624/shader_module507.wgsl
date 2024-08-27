struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(0u, 28360u, 4294967295u, 78760u, 7115u, 0u, 0u, 23123u, 1u, 22510u, 1u, 4935u, 0u, 4294967295u, 1u, 30510u, 0u, 4698u, 2395u, 32100u, 1u, 0u, 8838u, 4294967295u, 12141u, 95376u);

var<private> global1: array<vec2<bool>, 32>;

var<private> global2: array<vec4<bool>, 15>;

var<private> global3: vec3<f32> = vec3<f32>(150f, 148f, 142f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> vec4<f32> {
    let var_0 = _wgslsmith_div_u32(~(~global0[_wgslsmith_index_u32(reverseBits(34741u), 26u)]), min(3207u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], _wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)])))));
    var var_1 = arg_2;
    var_1 = arg_2;
    let var_2 = countOneBits(var_0);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(var_1.c.x, arg_2.c.x)), _wgslsmith_f_op_f32(-var_1.c.x), global3.x, global3.x));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(global3.x + global3.x), var_3.x, 1057f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3.x)) * 1460f))))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(521f, 1532f, 1983f, global3.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_3(false, _wgslsmith_mod_i32(1i, -2147483647i), Struct_1(arg_0.a, 2147483647i, vec2<f32>(arg_0.c.x, global3.x)), any(vec3<bool>(arg_0.a.x, true, arg_0.a.x))))))))));
    global2 = array<vec4<bool>, 15>();
    global2 = array<vec4<bool>, 15>();
    let var_1 = 6624i;
    let var_2 = ~_wgslsmith_sub_vec3_u32(max(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 0u, 15947u) >> (_wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30986u, 26u)], 26u)], 26u)], 35400u, global0[_wgslsmith_index_u32(17119u, 26u)]), vec3<u32>(1u, 1u, 39087u)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 26u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33969u, 26u)], 26u)], 26u)], 75012u), ~vec3<u32>(30986u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 26u)], 4483u))), vec3<u32>(~1u ^ _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(76814u, 26u)], 26u)], 26u)], 26u)], 26u)], 26u)], 26u)], 26u)], 32647u), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(19000u, 26u)], global0[_wgslsmith_index_u32(47077u, 26u)]), vec2<u32>(1u, 0u)), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)], 26u)], 54585u)), 41991u));
    return var_0.wxx;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = arg_1.yx;
    global0 = array<u32, 26>();
    global1 = array<vec2<bool>, 32>();
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-323f, 994f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.c.x + -1581f))), _wgslsmith_f_op_f32(ceil(1320f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_3.c.x)), _wgslsmith_f_op_f32(arg_3.c.x - -1033f), arg_2.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_1(vec2<bool>(arg_3.a.x, true), u_input.a.x, global3.zz), 1177f))))));
    var var_2 = arg_3;
    return _wgslsmith_f_op_f32(step(arg_2.c.x, _wgslsmith_f_op_f32(-456f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-343f, arg_2.c.x, any(vec2<bool>(false, arg_3.a.x)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~select(~global0[_wgslsmith_index_u32(~0u, 26u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 26u)], 26u)] ^ global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u, 26u)], 23601u), 26u)], 26u)], ~0u), 26u)], !(-1184f > _wgslsmith_f_op_f32(func_1(vec4<i32>(-41531i, 40648i, 0i, u_input.a.x), vec3<u32>(global0[_wgslsmith_index_u32(65908u, 26u)], 0u, 0u), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 32u)], 0i, global3.xz), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 32u)], u_input.a.x, vec2<f32>(2137f, global3.x)))))), 26u)];
    global3 = _wgslsmith_f_op_vec3_f32(func_2(Struct_1(global1[_wgslsmith_index_u32(11885u, 32u)], (u_input.a.x | _wgslsmith_mult_i32(u_input.a.x, 2147483647i)) | max(~0i, -28361i), vec2<f32>(804f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.x))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(vec2<bool>(false, true), u_input.a.x, _wgslsmith_div_vec2_f32(global3.xz, global3.xx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(false, -1i, Struct_1(vec2<bool>(false, false), -1i, global3.yx), true)).x))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))))));
    var var_1 = _wgslsmith_clamp_vec2_u32(~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(0u, 26u)]) >> (vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)], 26u)], 26u)], 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)]) % vec2<u32>(32u)), vec2<u32>(global0[_wgslsmith_index_u32(0u, 26u)], 14758u)), vec2<u32>(~global0[_wgslsmith_index_u32(55958u, 26u)], min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23536u, 26u)], 26u)], 20494u))), vec2<u32>(6627u, reverseBits(4294967295u)), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(46001u, 26u)]), ~3891u)), 26u)]));
    let var_2 = Struct_1(select(select(vec2<bool>(true, true), global1[_wgslsmith_index_u32(16833u, 32u)], true), vec2<bool>(true, true), (all(vec4<bool>(false, false, true, false)) || true) && any(vec3<bool>(true, false, false))), ~(~_wgslsmith_clamp_i32(-1i, u_input.a.x, ~1147i)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2849f + 126f), _wgslsmith_f_op_f32(1572f - global3.x)) * 731f), global3.x));
    let var_3 = Struct_1(vec2<bool>(-2552i != u_input.a.x, var_2.a.x), firstLeadingBit(u_input.a.x << (global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(29141u, var_1.x, 1u) & vec3<u32>(var_1.x, var_1.x, 48121u), _wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, 71379u, 74344u), vec3<u32>(1u, 28604u, var_1.x))), 26u)] % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000f + var_2.c.x), _wgslsmith_f_op_f32(global3.x - -231f)))));
    var var_4 = ~(_wgslsmith_mod_i32(-12119i, -var_2.b) << (0u % 32u)) >= ~var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x ^ ~_wgslsmith_clamp_u32(14780u, select(global0[_wgslsmith_index_u32(4294967295u, 26u)], 4294967295u, var_2.a.x), var_1.x), ~(~((vec2<u32>(0u, 1u) << (vec2<u32>(global0[_wgslsmith_index_u32(var_1.x, 26u)], 1u) % vec2<u32>(32u))) << (~vec2<u32>(1u, var_1.x) % vec2<u32>(32u)))), firstTrailingBit(vec3<u32>(var_1.x << (29608u % 32u), max(1u, var_1.x), countOneBits(global0[_wgslsmith_index_u32(var_1.x, 26u)]))) & vec3<u32>(~(58573u ^ var_1.x), global0[_wgslsmith_index_u32(~13619u, 26u)], ~countOneBits(var_1.x)));
}

