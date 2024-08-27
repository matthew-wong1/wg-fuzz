struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(44182i, -20191i, 10825i));

var<private> global1: array<Struct_1, 16>;

var<private> global2: Struct_1;

var<private> global3: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(62929u, 25816u), vec2<u32>(0u, 8504u), vec2<u32>(34700u, 121485u));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> f32 {
    global2 = arg_1;
    global3 = array<vec2<u32>, 3>();
    var var_0 = Struct_1(vec4<bool>(u_input.d.x != arg_1.b.x, any(arg_0.a.zyw), select(global0.a.x, false | (arg_0.b.x >= arg_1.b.x), any(select(arg_1.a, vec4<bool>(false, false, false, arg_1.a.x), false))), false), _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(~arg_1.b.x, -2147483647i, _wgslsmith_clamp_i32(arg_2, -32913i, -2147483647i))), _wgslsmith_sub_vec3_i32(abs(min(arg_1.b, global2.b)), -global0.b)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(508f, _wgslsmith_f_op_f32(sign(-681f)), _wgslsmith_f_op_f32(-2853f * 267f), 1000f), vec4<f32>(-1042f, _wgslsmith_f_op_f32(sign(-1186f)), -1000f, 1269f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(700f, -273f, -2206f, -1000f) * vec4<f32>(-839f, 870f, -1846f, -1000f))))) * vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(464f, 107f)), _wgslsmith_f_op_f32(-1187f * 1520f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-426f * -1167f))), true)), _wgslsmith_f_op_f32(-954f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1039f * -1976f) - -1231f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(740f * -741f) + _wgslsmith_f_op_f32(667f + -256f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-592f))), -1253f)));
    let var_2 = _wgslsmith_f_op_f32(max(-480f, var_1.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))))) * 176f));
}

fn func_2() -> bool {
    var var_0 = global2.a.ywy;
    let var_1 = -_wgslsmith_clamp_vec3_i32(global0.b, ~_wgslsmith_add_vec3_i32(global2.b, vec3<i32>(-3315i, global0.b.x, -1i)), global0.b) ^ (vec3<i32>(global0.b.x, i32(-1i) * -1312i, global0.b.x) ^ select(_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.c, global0.b.x, global2.b.x), -vec3<i32>(global0.b.x, -2147483647i, -1i)), global2.b, global0.a.x));
    return select(select(true, 242f >= _wgslsmith_div_f32(-864f, _wgslsmith_f_op_f32(func_3(Struct_1(global2.a, u_input.d.xzz), Struct_1(global0.a, u_input.d.zyx), -29085i))), var_0.x), var_0.x, !(!(!var_0.x & false)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<bool>) -> u32 {
    let var_0 = global2.b.x;
    global2 = Struct_1(vec4<bool>(func_2(), !arg_1.x, ((global0.b.x | global0.b.x) | 34719i) != ~global0.b.x, global2.a.x), -u_input.d.zwy);
    global2 = Struct_1(!(!select(global2.a, select(vec4<bool>(global0.a.x, arg_1.x, global0.a.x, false), global2.a, vec4<bool>(true, false, false, global2.a.x)), !vec4<bool>(false, arg_1.x, true, global2.a.x))), global2.b);
    var var_1 = firstTrailingBit(firstTrailingBit(max(~max(vec2<u32>(1u, arg_0.x), vec2<u32>(40230u, 5621u)), ~(~vec2<u32>(4294967295u, arg_0.x)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-618f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(980f)) - _wgslsmith_f_op_f32(abs(198f))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(min(147f, 436f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1199f, 1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-240f)))), -770f) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1000f, 170f, -583f) + vec4<f32>(-1326f, -678f, -1262f, -1340f))))), vec4<f32>(-858f, _wgslsmith_f_op_f32(-645f * _wgslsmith_f_op_f32(step(824f, -774f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1819f, 1000f)))), global0.a)));
    return abs(42321u);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> StorageBuffer {
    global2 = Struct_1(!(!global2.a), arg_2.b);
    var var_0 = global1[_wgslsmith_index_u32(0u, 16u)];
    let var_1 = firstTrailingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, 1i, _wgslsmith_mult_i32(-41787i, arg_2.b.x), 21936i), u_input.d));
    var var_2 = u_input.b;
    global2 = arg_2;
    return StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b, 25792u), 0u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b, 9355u, 4294967295u, 1u)), ~vec4<u32>(3196u, 1u, 4294967295u, arg_0.x))), _wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_add_vec2_i32(~vec2<i32>(var_1, var_1), arg_2.b.xz)), vec2<i32>(_wgslsmith_mod_i32(var_0.b.x, arg_2.b.x), _wgslsmith_clamp_i32(-var_1, global2.b.x >> (12364u % 32u), -23989i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.ww;
    let x = u_input.a;
    s_output = func_4(vec2<u32>(4294967295u, min(~u_input.b, func_1(vec3<u32>(u_input.b, 90933u, 53879u), global0.a.wy))) << (~vec2<u32>(~u_input.b, 27292u) % vec2<u32>(32u)), global1[_wgslsmith_index_u32(~28142u, 16u)], Struct_1(!select(vec4<bool>(true, global0.a.x, false, global2.a.x), global2.a, global0.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, u_input.c, _wgslsmith_div_i32(0i, -2147483647i)), firstTrailingBit(vec3<i32>(-41645i, -21382i, global2.b.x) & vec3<i32>(0i, 1i, u_input.c)), ~global0.b)), global2.a.x);
}

