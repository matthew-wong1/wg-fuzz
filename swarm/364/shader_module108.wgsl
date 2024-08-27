struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<vec2<f32>, 28>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: i32) -> vec3<i32> {
    var var_0 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(~firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, 48158u, u_input.b)), firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 55868u))), _wgslsmith_mult_vec4_u32(select(vec4<u32>(37193u, 0u, u_input.b, u_input.b), vec4<u32>(u_input.b, 7200u, 1u, u_input.b), global0.x), vec4<u32>(u_input.b, 77428u, 54290u, u_input.b) & vec4<u32>(1u, 1u, u_input.b, 4294967295u))), vec4<u32>(u_input.b, ~26993u & ~u_input.b, _wgslsmith_div_u32(u_input.b, ~4294967295u), u_input.b));
    var var_1 = Struct_2(~_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.b, u_input.b), ~40065u), var_0.ww), vec3<bool>(true, !global0.x, ~(i32(-1i) * -1i) < ~firstTrailingBit(u_input.a)));
    global0 = vec2<bool>(false, !(false | global0.x));
    var var_2 = vec4<i32>(arg_2, ~(-18356i), ~(-2147483647i), -1i);
    global1 = array<vec2<f32>, 28>();
    return vec3<i32>(~0i, -abs(arg_2), -46181i);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(259f, -378f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(776f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var_0 = 259f;
    var var_1 = Struct_2(select(firstTrailingBit(vec2<u32>(41302u, u_input.b)), arg_0, select(!vec2<bool>(global0.x, global0.x), !vec2<bool>(global0.x, false), select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(true, true)))) | (~(arg_0 >> (arg_0 % vec2<u32>(32u))) << (countOneBits(vec2<u32>(u_input.b, arg_0.x)) % vec2<u32>(32u))), !vec3<bool>(global0.x || true, -2019i < (u_input.a >> (50719u % 32u)), false));
    global0 = vec2<bool>(true, true);
    var var_2 = select(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-679f, 368f, 874f, 442f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(645f, -640f, 744f, -795f), vec4<f32>(-1063f, 1000f, 114f, 1130f), true))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1543f, 1543f, -2632f))))), 2760i, u_input.a).x, ~42614i, false);
    return vec2<bool>(true, true);
}

fn func_2(arg_0: vec4<bool>, arg_1: i32) -> bool {
    global0 = arg_0.zx;
    global1 = array<vec2<f32>, 28>();
    global0 = select(!func_4(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.b, 20864u), vec2<u32>(53002u, 32312u), vec2<u32>(u_input.b, 48525u)), ~vec3<i32>(-48023i, u_input.a, 23061i) ^ func_3(vec4<f32>(-670f, -295f, 301f, -513f), arg_1, -36661i)), vec2<bool>(true, select(arg_0.x, !any(arg_0.wzz), ~arg_1 < u_input.a)), !vec2<bool>(true, !(arg_0.x == arg_0.x)));
    global0 = select(arg_0.zw, arg_0.zz, select(vec2<bool>(global0.x, true), func_4(min(vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, 8600u)), max(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.a, 0i), vec3<i32>(-2147483647i, u_input.a, arg_1)), abs(vec3<i32>(arg_1, arg_1, arg_1)))), -306f <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-488f)), -318f))));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1411f - -375f) + _wgslsmith_f_op_f32(-683f - _wgslsmith_f_op_f32(-667f * 1635f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1956f, -733f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -131f) * _wgslsmith_f_op_f32(f32(-1f) * -1007f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(345f, -526f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1236f * -1719f), _wgslsmith_f_op_f32(-272f - 1316f)))));
    return 5077i >= _wgslsmith_mod_i32(u_input.a, 1i);
}

fn func_1() -> vec2<bool> {
    var var_0 = Struct_2(~(vec2<u32>(61239u, 1u) ^ vec2<u32>(~4294967295u, _wgslsmith_mult_u32(u_input.b, u_input.b))), vec3<bool>(false, global0.x, all(vec4<bool>(false & global0.x, true, global0.x, !global0.x))));
    global0 = select(select(!(!(!var_0.b.yx)), select(var_0.b.zz, !(!var_0.b.xy), !any(vec4<bool>(global0.x, global0.x, true, true))), func_2(!select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(var_0.b.x, global0.x, var_0.b.x, true), vec4<bool>(global0.x, global0.x, global0.x, false)), ~(-3899i) << (firstLeadingBit(var_0.a.x) % 32u))), select(var_0.b.yx, !var_0.b.xx, true), !(!(reverseBits(u_input.a) >= (i32(-1i) * -1i))));
    global1 = array<vec2<f32>, 28>();
    global0 = select(var_0.b.yz, !var_0.b.yy, true);
    let var_1 = vec3<i32>(_wgslsmith_mod_i32(1i, 1i), -_wgslsmith_clamp_i32(~u_input.a, 1i, -1i), -29637i) & vec3<i32>(~(-u_input.a), min(~_wgslsmith_dot_vec4_i32(vec4<i32>(-41432i, -21612i, -2147483647i, 7584i), vec4<i32>(2147483647i, u_input.a, 36883i, u_input.a)), ~(-33417i)), ~u_input.a);
    return select(vec2<bool>(false, true), select(!select(vec2<bool>(true, global0.x), !var_0.b.yy, vec2<bool>(true, true)), select(vec2<bool>(true, u_input.b == 0u), var_0.b.yx, -var_1.x > select(u_input.a, var_1.x, var_0.b.x)), all(var_0.b)), var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec2<bool>(!(!global0.x) & false, global0.x), select(func_1(), select(!select(vec2<bool>(global0.x, true), vec2<bool>(true, global0.x), global0.x), select(select(vec2<bool>(false, global0.x), vec2<bool>(true, global0.x), vec2<bool>(global0.x, false)), func_1(), vec2<bool>(true, true)), vec2<bool>(global0.x, false)), u_input.b >= u_input.b), !(false && !func_2(vec4<bool>(global0.x, false, global0.x, global0.x), -1i)));
    let var_0 = Struct_1(vec2<bool>(true, true));
    var var_1 = global1[_wgslsmith_index_u32(~u_input.b, 28u)];
    var var_2 = _wgslsmith_div_vec3_i32(max(vec3<i32>(u_input.a, u_input.a, u_input.a), min(max(vec3<i32>(-10658i, 41397i, u_input.a), vec3<i32>(u_input.a, 3521i, 2147483647i)), vec3<i32>(u_input.a, -14898i, -35508i) ^ vec3<i32>(u_input.a, 0i, u_input.a))), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), u_input.a, 1i), -abs(vec3<i32>(u_input.a, u_input.a, -24149i)))) >> (abs(_wgslsmith_sub_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 17951u, u_input.b)), ~max(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 0u, 17616u)))) % vec3<u32>(32u));
    let var_3 = u_input.b;
    let var_4 = ~(~((_wgslsmith_sub_vec3_u32(vec3<u32>(var_3, var_3, var_3), vec3<u32>(60063u, 0u, 49489u)) | ~vec3<u32>(var_3, 1u, u_input.b)) ^ (abs(vec3<u32>(u_input.b, 11515u, u_input.b)) ^ firstLeadingBit(vec3<u32>(5765u, u_input.b, var_3)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(1i >> (_wgslsmith_sub_u32(1u, var_3) % 32u), 5045i));
}

