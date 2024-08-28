struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(false, false, true, true, true, true, false, true, false, true, true, true, false, false, false);

var<private> global1: array<bool, 14> = array<bool, 14>(true, false, true, false, false, true, true, true, false, true, true, true, true, false);

var<private> global2: array<u32, 6> = array<u32, 6>(19258u, 79246u, 18670u, 27219u, 1u, 1u);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> vec2<u32> {
    global1 = array<bool, 14>();
    var var_0 = arg_0.d;
    var_0 = arg_3.d;
    let var_1 = Struct_3(arg_3.d);
    let var_2 = !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_add_u32(54889u, global2[_wgslsmith_index_u32(arg_2, 6u)]), arg_2 & 24768u, 11439u), vec3<u32>(12156u, ~(global2[_wgslsmith_index_u32(11082u, 6u)] | 46303u), ~(~82919u))), 15u)];
    return max(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2, 37638u), _wgslsmith_sub_vec2_u32(~vec2<u32>(4047u, arg_2), vec2<u32>(1u, 1u)), vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(49822u, 48996u, global2[_wgslsmith_index_u32(1u, 6u)]), vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(arg_2, 6u)], 96612u)))), ~_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(13697u, 4626u), vec2<u32>(0u, 30597u), vec2<u32>(3706u, arg_2)), vec2<u32>(5305u, arg_2)), !select(vec2<bool>(true, true), !vec2<bool>(true, global1[_wgslsmith_index_u32(87637u, 14u)]), global2[_wgslsmith_index_u32(arg_2, 6u)] == 31363u)), vec2<u32>(0u, _wgslsmith_mod_u32(firstLeadingBit(4294967295u), _wgslsmith_sub_u32(1u, global2[_wgslsmith_index_u32(4294967295u, 6u)])) | ~1u));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: i32) -> f32 {
    var var_0 = Struct_3(Struct_1(-u_input.b, vec3<f32>(1316f, -972f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(275f, -552f)), 1f)))));
    let var_1 = !(!(!vec4<bool>(true, any(vec3<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1, 6u)], 6u)], 14u)], true, arg_0.x)), arg_0.x, 16072u != global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14722u, 6u)], 6u)], 6u)])));
    var var_2 = firstLeadingBit(~min(-vec2<i32>(u_input.a.x, var_0.a.a) >> (func_3(Struct_2(-1000f, var_0.a.b.x, vec2<f32>(var_0.a.b.x, 389f), Struct_1(1i, var_0.a.b)), var_0.a.a, 23397u, Struct_2(-541f, 646f, vec2<f32>(1218f, -397f), var_0.a)) % vec2<u32>(32u)), u_input.a));
    let var_3 = firstLeadingBit(~(~_wgslsmith_clamp_vec4_u32(select(vec4<u32>(global2[_wgslsmith_index_u32(arg_1, 6u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 6u)], 6u)], arg_1, arg_1), vec4<u32>(arg_1, 82590u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 6u)], 6u)], arg_1), global0[_wgslsmith_index_u32(60352u, 15u)]), vec4<u32>(0u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(59881u, 6u)], 6u)], global2[_wgslsmith_index_u32(arg_1, 6u)]), ~vec4<u32>(61812u, 34851u, 29004u, 0u))));
    var var_4 = func_3(Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-622f, -1000f, global0[_wgslsmith_index_u32(0u, 15u)] | false)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1554f + var_0.a.b.x) + _wgslsmith_f_op_f32(var_0.a.b.x * -272f))), _wgslsmith_f_op_vec2_f32(var_0.a.b.xz + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.a.b.x, 946f))), vec2<f32>(-3180f, 790f), !vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 15u)])))), var_0.a), (i32(-1i) * -42654i) & abs(var_0.a.a), var_3.x, Struct_2(var_0.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b.x - _wgslsmith_f_op_f32(trunc(var_0.a.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-191f * -1085f))), var_0.a.b.yx, Struct_1(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_2.x, arg_2, 1i)), _wgslsmith_div_vec3_i32(vec3<i32>(var_2.x, u_input.c, -43469i), vec3<i32>(u_input.b, -5689i, 1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.b - var_0.a.b))))).x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.b.x)));
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = ~firstLeadingBit(87990u) << (global2[_wgslsmith_index_u32(1u, 6u)] % 32u);
    let var_1 = _wgslsmith_f_op_f32(-306f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1605f * -1012f)))), _wgslsmith_f_op_f32(func_2(!vec2<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 6u)], 14u)], false), ~global2[_wgslsmith_index_u32(4294967295u, 6u)], 1i)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 14u)]), 1u, u_input.b)) * _wgslsmith_div_f32(var_1, 233f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -494f)))));
    let var_3 = Struct_1(arg_0, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1051f), _wgslsmith_f_op_f32(abs(165f)), 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-158f, 939f, var_2.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-438f, var_1, 1166f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2138f, -712f, 676f))))));
    var_2 = var_3.b.zz;
    return Struct_3(Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~u_input.a, u_input.a), u_input.a), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.b - var_3.b) * _wgslsmith_f_op_vec3_f32(var_3.b - vec3<f32>(var_3.b.x, var_1, 732f)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_1 {
    global2 = array<u32, 6>();
    global1 = array<bool, 14>();
    var var_0 = 318f;
    global1 = array<bool, 14>();
    var var_1 = func_1(~_wgslsmith_mod_i32(abs(~(-37846i)), _wgslsmith_div_i32(-49632i, _wgslsmith_mod_i32(arg_1.x, arg_2.a.a)))).a;
    return func_1(func_1(select(max(arg_2.a.a | -24365i, arg_2.a.a), -1i, (u_input.c == 0i) | global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(48600u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(25030u, 6u)], 6u)], 6u)], 6u)], 6u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)], 4701u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21642u, 6u)], 6u)], 6u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(57066u, 6u)], 6u)], 6u)], 6u)], 48970u, global2[_wgslsmith_index_u32(4294967295u, 6u)])), 15u)])).a.a).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(firstTrailingBit(countOneBits(select(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(85259u, 6u)], 6u)], 6u)], 6u)], 6u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 6u)], 6u)]) << (vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 6u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 6u)], 6u)]) % vec2<u32>(32u)), vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(15963u, 6u)]), vec2<bool>(true, true)))));
    let var_1 = func_4(vec3<f32>(-457f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -756f) + _wgslsmith_f_op_f32(1145f - -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -961f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1204f)))), _wgslsmith_div_vec2_i32(vec2<i32>(abs(0i), u_input.b), vec2<i32>(u_input.a.x, u_input.b)), func_1(-_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.b, u_input.a.x), -2147483647i)));
    let var_2 = func_1(firstLeadingBit(~(-24347i & u_input.b)) & func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b) - vec3<f32>(930f, 788f, 662f)), vec2<i32>(-1i) * -u_input.a, func_1(_wgslsmith_add_i32(-2147483647i, 49822i))).a);
    let var_3 = Struct_2(var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-546f)) - _wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(var_2.a.b.x * _wgslsmith_f_op_f32(-var_1.b.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1094f, var_2.a.b.x))), var_2.a.b.yy, !select(!vec2<bool>(global1[_wgslsmith_index_u32(var_0.x, 14u)], true), !vec2<bool>(global1[_wgslsmith_index_u32(51294u, 14u)], false), var_0.x == 0u))), var_2.a);
    let var_4 = 22843u;
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

