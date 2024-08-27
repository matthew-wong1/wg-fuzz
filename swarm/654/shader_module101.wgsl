struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true);

var<private> global1: u32 = 42244u;

var<private> global2: vec2<f32> = vec2<f32>(710f, 932f);

var<private> global3: array<bool, 32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    var var_0 = false;
    var var_1 = -980f;
    var_0 = false;
    var var_2 = global2.x;
    var var_3 = countOneBits(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, arg_0.x, _wgslsmith_add_i32(-1i, -78286i)), select(-u_input.c, max(vec3<i32>(u_input.c.x, arg_0.x, arg_0.x), u_input.c), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 32u)], true, global0.a))));
    return _wgslsmith_div_u32(1u, ~(~17700u));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> u32 {
    global1 = ~min(1u, min(1u, func_3(u_input.a))) << (1u % 32u);
    global2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1233f, global2.x), _wgslsmith_div_vec2_f32(vec2<f32>(global2.x, global2.x), vec2<f32>(-288f, 334f))) + vec2<f32>(_wgslsmith_f_op_f32(max(global2.x, 1091f)), _wgslsmith_f_op_f32(floor(299f)))))));
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * global2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.x)))), 2084f, _wgslsmith_f_op_f32(round(global2.x))));
    let var_1 = var_0.x;
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(177f, global2.x, 1575f, 1177f), vec4<f32>(global2.x, var_0.x, 1053f, global2.x))))))), vec4<f32>(_wgslsmith_f_op_f32(781f + 381f), var_0.x, 1298f, _wgslsmith_f_op_f32(214f * 1130f)), false));
    return _wgslsmith_clamp_u32(50952u, firstTrailingBit(4294967295u), 47572u);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(global3[_wgslsmith_index_u32(~((54646u << (arg_0.x % 32u)) >> (arg_0.x % 32u)), 32u)]);
    var var_1 = vec4<i32>(-min(_wgslsmith_add_i32(-2147483647i, arg_1.x) ^ (2147483647i | arg_1.x), u_input.b), 1i, _wgslsmith_add_i32(~2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(u_input.d, u_input.c.x, -26053i, 2147483647i)), vec4<i32>(u_input.d, -2147483647i, -43533i, 11362i) ^ vec4<i32>(37960i, u_input.c.x, u_input.d, u_input.c.x)), countOneBits(vec4<i32>(0i, u_input.b, 2147483647i, arg_1.x)))), _wgslsmith_sub_i32(u_input.a.x, select(u_input.a.x, _wgslsmith_add_i32(~(-2147483647i), _wgslsmith_sub_i32(1i, 1i)), all(select(vec2<bool>(var_0.a, false), vec2<bool>(true, global0.a), global3[_wgslsmith_index_u32(arg_0.x, 32u)])))));
    global1 = ~arg_0.x;
    global2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(-global2.x), any(vec4<bool>(true, true, true, true))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -315f), _wgslsmith_f_op_f32(f32(-1f) * -1123f)) - vec2<f32>(_wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(round(global2.x))))));
    let var_2 = var_0;
    return Struct_1(false);
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: vec3<u32>, arg_3: bool) -> i32 {
    let var_0 = Struct_1(arg_3);
    let var_1 = func_4(vec4<u32>(select(arg_2.x, arg_2.x, !arg_3), func_2(Struct_1(true), -1i, _wgslsmith_mod_i32(57393i, -62693i)), abs(_wgslsmith_dot_vec2_u32(arg_2.yx, vec2<u32>(arg_2.x, 0u))), ~1u) & vec4<u32>(20914u, ~_wgslsmith_add_u32(arg_2.x, arg_2.x), 31460u, func_3(arg_0.xx)), u_input.c);
    let var_2 = ~vec2<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(1137u, 4294967295u, arg_2.x, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.x, 1652u, 14886u, 0u), vec4<u32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<u32>(45585u, 11852u, arg_2.x, arg_2.x))), ~arg_2.x);
    var var_3 = countOneBits(vec4<i32>(-28099i, -max(_wgslsmith_add_i32(arg_0.x, 1i), u_input.a.x), firstTrailingBit(u_input.c.x), -2147483647i));
    global3 = array<bool, 32>();
    return abs(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2369f), 904f);
    let var_0 = ~(_wgslsmith_mod_i32(min(_wgslsmith_mod_i32(2147483647i, u_input.c.x), reverseBits(66909i)), u_input.c.x) & ~func_1(-vec4<i32>(-1i, -1i, u_input.b, 12575i), -1479f, vec3<u32>(0u, 60923u, 10451u), !global3[_wgslsmith_index_u32(99673u, 32u)]));
    var var_1 = select(_wgslsmith_mod_u32(_wgslsmith_div_u32(~1u, min(1u, min(38972u, 4294967295u))), _wgslsmith_clamp_u32(~29007u, 1u, 27633u) | _wgslsmith_div_u32(1u, 1u)), ~(~1u), func_4(vec4<u32>(func_2(Struct_1(global0.a), var_0, var_0) | 1u, 4294967295u, ~60090u | select(61243u, 4294967295u, global3[_wgslsmith_index_u32(1u, 32u)]), select(_wgslsmith_mod_u32(4294967295u, 1u), 0u, select(true, global3[_wgslsmith_index_u32(38545u, 32u)], global3[_wgslsmith_index_u32(3339u, 32u)]))), countOneBits(reverseBits(u_input.c)) << (vec3<u32>(~79247u, abs(4294967295u), ~35300u) % vec3<u32>(32u))).a);
    global3 = array<bool, 32>();
    let var_2 = reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(func_1(firstTrailingBit(vec4<i32>(-2147483647i, 2147483647i, 19562i, 1i)), _wgslsmith_f_op_f32(exp2(global2.x)), vec3<u32>(1u, 1u, 1u), var_0 >= u_input.b), -reverseBits(41197i), -2147483647i & ~var_0, countOneBits(-6434i)), vec4<i32>(min(u_input.b & 2147483647i, countOneBits(var_0)), firstLeadingBit(_wgslsmith_clamp_i32(2147483647i, 51400i, -2147483647i)), _wgslsmith_add_i32(min(var_0, 14906i), var_0), _wgslsmith_add_i32(var_0 ^ 0i, var_0))));
    var var_3 = u_input.c;
    var var_4 = ~firstTrailingBit(~vec2<u32>(1u, 1u));
    var var_5 = Struct_1(20615u != var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x ^ var_0, -var_2.zxy, 22475i);
}

