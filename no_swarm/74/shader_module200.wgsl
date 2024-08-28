struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: array<vec4<f32>, 4> = array<vec4<f32>, 4>(vec4<f32>(-773f, -480f, -1105f, 1389f), vec4<f32>(-154f, -693f, 570f, 942f), vec4<f32>(129f, -1000f, 367f, -740f), vec4<f32>(335f, -831f, -217f, -552f));

var<private> global2: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(-26622i, 0i), vec2<i32>(2147483647i, 0i), vec2<i32>(24733i, 0i), vec2<i32>(-18279i, 0i), vec2<i32>(i32(-2147483648), 14045i), vec2<i32>(8764i, -42708i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, 1i), vec2<i32>(-7573i, 8326i), vec2<i32>(0i, -25077i), vec2<i32>(-1202i, 0i), vec2<i32>(-7466i, -30818i), vec2<i32>(-11626i, -21140i), vec2<i32>(-13020i, 2147483647i), vec2<i32>(-1i, 1i), vec2<i32>(-76344i, 2147483647i), vec2<i32>(-167i, 7230i), vec2<i32>(i32(-2147483648), -17522i), vec2<i32>(14352i, -46050i), vec2<i32>(-21705i, -24962i));

var<private> global3: vec3<i32>;

var<private> global4: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    global1 = array<vec4<f32>, 4>();
    global2 = array<vec2<i32>, 20>();
    var var_0 = vec4<bool>(select(global0.x, all(select(select(vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, false, global0.x), global0.x), vec4<bool>(global0.x, global0.x, global0.x, true), global0.x)), global0.x), (true && (-u_input.c < 0i)) == true, (global3.x > u_input.a) & false, !(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1193f)), _wgslsmith_f_op_f32(floor(734f)))) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(2326f)), _wgslsmith_f_op_f32(-640f * -654f), false))));
    let var_1 = Struct_1(-859f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -490f)))));
    var var_2 = !vec2<bool>(var_0.x, var_0.x);
    return 1359f;
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(sign(-425f)));
    var var_1 = Struct_1(var_0.x, 1243f);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(round(var_1.a)), _wgslsmith_f_op_f32(func_3()));
    var var_3 = all(global0.yx);
    let var_4 = u_input.a;
    return _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(min(vec2<i32>(var_4, global3.x | -104249i), global2[_wgslsmith_index_u32(u_input.b.x, 20u)]), global3.yy), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-28204i, -27534i, var_4, global3.x), vec4<i32>(var_4, -1629i, -69610i, var_4)) >> (select(u_input.b, vec4<u32>(52537u, u_input.b.x, u_input.b.x, 1u), vec4<bool>(false, true, false, true)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, global3.x), vec2<i32>(arg_0.x, -48657i)), reverseBits(global3.x), u_input.c, -2147483647i)), vec4<i32>(global3.x, firstTrailingBit(1i), -469i, -39232i)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<u32>) -> vec4<f32> {
    global1 = array<vec4<f32>, 4>();
    global3 = abs(vec3<i32>(~global3.x, select(-44242i, -2147483647i, true), global3.x));
    global3 = ~vec3<i32>(35406i, arg_0.x, abs(u_input.c));
    var var_0 = ~u_input.a >> (~(~(~countOneBits(u_input.b.x))) % 32u);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-173f, 1841f)))) + -298f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1485f - 1669f), _wgslsmith_f_op_f32(f32(-1f) * -1498f))) - _wgslsmith_f_op_f32(f32(-1f) * -792f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(150f + -101f)))))));
    return vec4<f32>(_wgslsmith_f_op_f32(step(var_1.b, var_1.a)), _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(929f * 1000f)), 1746f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * var_1.a)));
}

fn func_1() -> i32 {
    global1 = array<vec4<f32>, 4>();
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(vec3<i32>(_wgslsmith_mult_i32(func_2(max(vec3<i32>(-35260i, -32855i, global3.x), vec3<i32>(global3.x, 38886i, u_input.c))), u_input.a), firstLeadingBit(0i), u_input.c), firstLeadingBit(u_input.b.ww) << (_wgslsmith_div_vec2_u32(~u_input.b.xx, select(~u_input.b.xx, ~vec2<u32>(u_input.b.x, u_input.b.x), all(vec2<bool>(global0.x, global0.x)))) % vec2<u32>(32u))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(-var_0.x)))));
    return _wgslsmith_sub_i32(global3.x, -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.b.x, u_input.b.x | 4294967295u, reverseBits(u_input.b.x)) | ~abs(u_input.b.wwx), vec3<u32>(_wgslsmith_clamp_u32(abs(33174u), reverseBits(u_input.b.x), u_input.b.x), 91134u, 4294967295u));
    global1 = array<vec4<f32>, 4>();
    var var_1 = (min(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), global2[_wgslsmith_index_u32(var_0.x, 20u)]), ~global3.x, u_input.a), -(vec3<i32>(u_input.a, u_input.c, global3.x) ^ vec3<i32>(30046i, -28190i, global3.x))) << (u_input.b.ywz % vec3<u32>(32u))) ^ vec3<i32>(reverseBits(-(~6309i)), _wgslsmith_mult_i32(func_1(), -68624i), max(-34031i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, u_input.a), vec3<i32>(global3.x, u_input.c, u_input.c))));
    global2 = array<vec2<i32>, 20>();
    var var_2 = _wgslsmith_f_op_f32(trunc(-705f));
    var_0 = reverseBits(~select(~firstTrailingBit(u_input.b.wxy), abs(firstLeadingBit(u_input.b.xwx)), global0.x));
    let var_3 = true;
    let var_4 = -377f;
    let x = u_input.a;
    s_output = StorageBuffer(-(~(~(-vec3<i32>(-24112i, var_1.x, var_1.x)))));
}

