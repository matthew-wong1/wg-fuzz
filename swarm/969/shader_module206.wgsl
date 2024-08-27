struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: Struct_3;

var<private> global1: vec3<i32>;

var<private> global2: array<i32, 26> = array<i32, 26>(-1i, 2147483647i, 0i, -1i, 11226i, -21968i, -1i, 49612i, -1i, -58703i, -1i, 34112i, 0i, -1i, 0i, 1i, -2540i, 1i, 5982i, -14957i, -11154i, -27501i, 0i, -1i, 0i, -47992i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: f32) -> f32 {
    var var_0 = ~4294967295u;
    let var_1 = 4294967295u;
    let var_2 = global0.a.a;
    let var_3 = Struct_2(global0.a, Struct_1(all(select(select(vec2<bool>(false, false), vec2<bool>(global0.a.a, global0.a.a), vec2<bool>(true, global0.a.a)), vec2<bool>(true, global0.a.a), vec2<bool>(global0.a.a, true))), 90925u, ~firstTrailingBit(global0.b.x & global2[_wgslsmith_index_u32(arg_1.a.x, 26u)])), !(!select(!vec3<bool>(global0.a.a, true, global0.a.a), vec3<bool>(global0.a.a, global0.a.a, false), !vec3<bool>(false, false, global0.a.a))));
    let var_4 = Struct_5(abs(global0.a.c), global0.a.a);
    return arg_2;
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(413f, 1000f, true)), -1271f)) + _wgslsmith_f_op_f32(func_3(-452f, Struct_4(~vec4<u32>(28004u, global0.a.b, u_input.a.x, u_input.a.x), vec3<u32>(94028u, global0.a.b, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-303f))))))));
    var var_1 = Struct_3(Struct_1(global0.a.a, ~_wgslsmith_sub_u32(1u, u_input.a.x), -1i), abs(countOneBits(vec4<i32>(global0.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 27384i, 17122i), vec3<i32>(arg_0, 1i, global1.x)), 1i, countOneBits(20924i)))));
    global0 = Struct_3(global0.a, -abs(vec4<i32>(_wgslsmith_dot_vec3_i32(var_1.b.wxw, global0.b.zwx), abs(38841i), var_1.a.c, 0i)));
    global1 = _wgslsmith_add_vec3_i32(var_1.b.zxz, -var_1.b.yyz);
    let var_2 = vec2<bool>(var_1.a.a, true);
    return Struct_3(global0.a, select(-abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-741i, -12921i, -51643i, var_1.a.c), vec4<i32>(global1.x, -42283i, 1i, global1.x), global0.b)), vec4<i32>(global1.x, -global0.a.c, countOneBits(~(-1i)), global2[_wgslsmith_index_u32(~u_input.a.x, 26u)]), vec4<bool>(false, !var_2.x, all(select(var_2, var_2, var_2)), any(!vec2<bool>(true, global0.a.a)))));
}

fn func_1() -> i32 {
    global0 = func_2(min(~countOneBits(_wgslsmith_clamp_i32(-1i, global0.a.c, global2[_wgslsmith_index_u32(global0.a.b, 26u)])), 2147483647i));
    global1 = -(~vec3<i32>(global0.b.x, ~global1.x, _wgslsmith_mult_i32(29397i, global2[_wgslsmith_index_u32(u_input.a.x, 26u)] << (50723u % 32u))));
    global1 = _wgslsmith_add_vec3_i32(~global0.b.zyz, max(-vec3<i32>(-17232i, 0i, global1.x), global0.b.zzw) ^ vec3<i32>(countOneBits(global0.b.x), -3228i, global1.x)) ^ vec3<i32>(global1.x, _wgslsmith_add_i32(-global1.x, func_2(global2[_wgslsmith_index_u32(global0.a.b, 26u)]).a.c) | 0i, global1.x);
    var var_0 = vec4<u32>(~24377u, min(~(~1u), 1u >> (~global0.a.b % 32u)), ~0u, ~(~(firstLeadingBit(global0.a.b) << (u_input.a.x % 32u))));
    global1 = abs(~(-(_wgslsmith_sub_vec3_i32(global0.b.xyy, vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], -1i, -2147483647i)) | _wgslsmith_mod_vec3_i32(global0.b.yzw, global0.b.wxw))));
    return _wgslsmith_clamp_i32(~global1.x, global1.x, _wgslsmith_add_i32(-73579i, -global2[_wgslsmith_index_u32(u_input.a.x, 26u)]) << (_wgslsmith_dot_vec3_u32(var_0.xxz, var_0.wwx) % 32u)) | (i32(-1i) * -1i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_add_vec3_i32(-vec3<i32>(func_1(), _wgslsmith_mult_i32(-2147483647i, global0.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global1.x, global2[_wgslsmith_index_u32(77587u, 26u)], global1.x), vec4<i32>(-1i, 1i, -52475i, 12616i)) & 83457i), global0.b.yyx);
    global2 = array<i32, 26>();
    let var_0 = Struct_1(func_2(-(global2[_wgslsmith_index_u32(71730u, 26u)] << (global0.a.b % 32u))).a.b >= countOneBits(countOneBits(global0.a.b << (global0.a.b % 32u))), 14786u, -_wgslsmith_mult_i32(global1.x, global2[_wgslsmith_index_u32(abs(~43329u), 26u)]));
    var var_1 = reverseBits(abs(_wgslsmith_mod_vec2_i32(~func_2(global0.b.x).b.zw, global1.xx)));
    var var_2 = Struct_5(firstTrailingBit(global0.b.x) & 88353i, all(vec3<bool>(true, true, var_0.a)));
    global0 = func_2(var_2.a);
    var var_3 = func_2(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(global0.a.b, abs(u_input.a.x), ~1u) & 1u, var_0.b), 26u)]);
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-841f, 1000f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -401f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1168f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1202f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1089f - -1134f) - _wgslsmith_f_op_f32(step(-1560f, -385f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-922f - 1000f)), Struct_4(~vec4<u32>(var_0.b, 1u, 1u, var_0.b), ~vec3<u32>(u_input.a.x, u_input.a.x, var_3.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(512f * -365f)))), _wgslsmith_f_op_f32(f32(-1f) * -185f))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_u32(max(vec2<u32>(global0.a.b, var_0.b) >> (u_input.a % vec2<u32>(32u)), vec2<u32>(66634u, global0.a.b)), ~(~u_input.a)));
}

