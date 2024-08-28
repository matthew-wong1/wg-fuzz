struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<vec3<u32>, 5>;

var<private> global2: vec2<f32> = vec2<f32>(-376f, -453f);

var<private> global3: vec2<i32>;

var<private> global4: array<u32, 12> = array<u32, 12>(104466u, 7438u, 12098u, 86545u, 1u, 51688u, 4294967295u, 31019u, 11101u, 20741u, 60480u, 0u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = ~min(global4[_wgslsmith_index_u32(firstTrailingBit(~max(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(35336u, 12u)], 12u)], 12u)], global4[_wgslsmith_index_u32(u_input.d.x, 12u)])), 12u)], 27937u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * global2.x) - 1123f) * -338f);
    let var_2 = vec4<i32>(global3.x, 1i, _wgslsmith_div_i32(arg_0.x << (4324u % 32u), _wgslsmith_add_i32(-1i, global3.x | -33933i)), reverseBits(abs(9154i)));
    global0 = countOneBits(u_input.a.x);
    global4 = array<u32, 12>();
    return arg_1.d;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> i32 {
    let var_0 = _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x));
    let var_1 = u_input.a;
    global3 = vec2<i32>(~0i, 2147483647i);
    var var_2 = ~vec3<i32>(-(~(-33152i)), ~global3.x, firstTrailingBit(0i));
    let var_3 = ~abs(27195i);
    return _wgslsmith_sub_i32(_wgslsmith_mod_i32(min(firstLeadingBit(-50527i), -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_3, 0i, var_3), vec4<i32>(-11576i, 0i, -2147483647i, var_2.x))), u_input.a.x), ~var_3);
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    global0 = i32(-1i) * -_wgslsmith_div_i32(3711i, func_3(func_2(vec3<i32>(global3.x, 0i, u_input.a.x), Struct_2(false, u_input.d.zxy, u_input.d, Struct_1(10130i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, global2.x))));
    global2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(-2772f, global2.x), 500f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -904f) * vec2<f32>(global2.x, global2.x)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.x, -238f)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.x, global2.x))), vec2<f32>(global2.x, -1168f)))), any(vec2<bool>(select(false, false, false), true)))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global2.x, -569f, false)))), global2.x, false)), _wgslsmith_f_op_f32(-global2.x)), vec2<bool>(all(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true))), true)));
    global4 = array<u32, 12>();
    global0 = global3.x ^ _wgslsmith_div_i32(_wgslsmith_sub_i32(~(-18626i), func_2(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -1i, 28052i), vec3<i32>(global3.x, global3.x, global3.x)), Struct_2(true, vec3<u32>(u_input.c, 37842u, 4294967295u), u_input.d, Struct_1(-1i))).a), 9261i ^ ~global3.x);
    var var_0 = true;
    return global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1081f)) - _wgslsmith_f_op_f32(-global2.x))))) - -291f);
    var var_1 = _wgslsmith_mult_vec2_i32(u_input.a.yw, vec2<i32>(func_1(vec2<u32>(21848u, 1u)), -abs(8117i)) >> (vec2<u32>(max(select(u_input.d.x, 33179u, true), u_input.c), _wgslsmith_mod_u32(~u_input.d.x, ~4294967295u)) % vec2<u32>(32u)));
    var var_2 = Struct_1(_wgslsmith_div_i32(var_1.x, _wgslsmith_dot_vec3_i32(abs(u_input.a.yzy), u_input.a.xxx)));
    global1 = array<vec3<u32>, 5>();
    var var_3 = vec2<bool>(any(vec2<bool>(var_0 <= _wgslsmith_f_op_f32(select(928f, 910f, true)), true == select(true, true, true))), any(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), true), any(vec2<bool>(false, true)))));
    var var_4 = ~_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~36842u, global4[_wgslsmith_index_u32(1u, 12u)]), 97527u, 4294967295u), vec3<u32>(4294967295u, 35023u, 101131u) << (vec3<u32>(4294967295u, 63861u, _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(global4[_wgslsmith_index_u32(1u, 12u)], 13793u, 38441u, global4[_wgslsmith_index_u32(0u, 12u)]))) % vec3<u32>(32u)));
    var var_5 = func_2(u_input.a.xxz, Struct_2(!all(vec2<bool>(var_3.x, false)), select(~(vec3<u32>(global4[_wgslsmith_index_u32(0u, 12u)], var_4.x, global4[_wgslsmith_index_u32(2650u, 12u)]) ^ vec3<u32>(var_4.x, 26830u, 45982u)), max(firstTrailingBit(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 12u)], 5u)]), u_input.d.zzx), var_3.x), vec4<u32>(~var_4.x, global4[_wgslsmith_index_u32(var_4.x, 12u)], 4294967295u, 58531u), func_2(firstLeadingBit(max(vec3<i32>(26421i, -1i, -42380i), vec3<i32>(69857i, global3.x, 2147483647i))), Struct_2(!var_3.x, firstLeadingBit(vec3<u32>(4294967295u, u_input.d.x, 50398u)), ~vec4<u32>(0u, var_4.x, 0u, 12647u), func_2(vec3<i32>(global3.x, -50440i, 0i), Struct_2(var_3.x, vec3<u32>(global4[_wgslsmith_index_u32(39583u, 12u)], 17437u, 2094u), vec4<u32>(27845u, var_4.x, global4[_wgslsmith_index_u32(var_4.x, 12u)], 126345u), Struct_1(-1i)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zwx, -global3.x << (((firstTrailingBit(0u) >> (u_input.d.x % 32u)) | _wgslsmith_dot_vec2_u32(select(var_4.zz, vec2<u32>(var_4.x, var_4.x), vec2<bool>(var_3.x, var_3.x)), vec2<u32>(20740u, global4[_wgslsmith_index_u32(1u, 12u)]))) % 32u), -2042f, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1386f, var_0))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-245f)) * -617f)))));
}

