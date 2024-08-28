struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: u32;

var<private> global2: vec2<f32>;

var<private> global3: vec2<f32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_1(~u_input.b.x, ~(~u_input.b.x), ~u_input.b.x);
    global1 = reverseBits(23621u);
    var var_1 = _wgslsmith_mult_vec2_u32(~(~u_input.b.xy), ~(~abs(u_input.b.zx)) >> (vec2<u32>(71965u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(74883u, 1u, var_0.a), u_input.b), ~u_input.b)) % vec2<u32>(32u)));
    global0 = array<i32, 7>();
    var var_2 = Struct_2(Struct_1(~min(_wgslsmith_mod_u32(var_0.b, 4294967295u), ~u_input.b.x), ~u_input.b.x, var_0.a), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), true), -111f >= global3.x), true), vec2<i32>(-6191i, _wgslsmith_mult_i32(-34492i, _wgslsmith_add_i32(u_input.a, u_input.a)) | (countOneBits(-11840i) << (var_0.a % 32u))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1565f, -1000f, -844f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -460f, global3.x) * vec3<f32>(798f, 1165f, global3.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.x, global2.x, global2.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 356f, -660f)))))), ~(-_wgslsmith_div_vec2_i32(vec2<i32>(0i, 30922i), vec2<i32>(-1i, global0[_wgslsmith_index_u32(1u, 7u)]))));
    return vec4<bool>(select(var_2.b.x, var_2.b.x, all(select(vec2<bool>(true, true), var_2.b.zz, !var_2.b.x))), false, firstTrailingBit(var_0.b) < var_2.a.c, all(vec2<bool>(var_2.b.x, false)));
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(0u, u_input.b.x, ~(~_wgslsmith_sub_u32(u_input.b.x, 807u))), func_3(), -vec2<i32>(select(u_input.a | u_input.a, u_input.a, true), min(1i, firstTrailingBit(global0[_wgslsmith_index_u32(u_input.b.x, 7u)]))), _wgslsmith_div_vec3_f32(vec3<f32>(-1848f, 347f, 1000f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(701f, global2.x, global2.x))), vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global3.x), global3.x)))), ~vec2<i32>(2147483647i, _wgslsmith_mult_i32(firstTrailingBit(1205i), u_input.a)));
    let var_1 = global3.x;
    global0 = array<i32, 7>();
    var var_2 = ~(~(~select(vec4<u32>(0u, 50398u, 4294967295u, u_input.b.x), vec4<u32>(1797u, 7823u, 35454u, 11611u), vec4<bool>(false, true, true, false)))) | ~((vec4<u32>(var_0.a.a, 7835u, 19388u, 1u) >> (~vec4<u32>(60569u, u_input.b.x, 4294967295u, 0u) % vec4<u32>(32u))) | vec4<u32>(u_input.b.x, var_0.a.a, u_input.b.x << (var_0.a.a % 32u), ~u_input.b.x));
    var var_3 = vec4<i32>(-2147483647i, ~(abs(select(-19994i, u_input.a, var_0.b.x)) >> (var_2.x % 32u)), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -55965i, global0[_wgslsmith_index_u32(29180u, 7u)], var_0.e.x), vec4<i32>(1679i, global0[_wgslsmith_index_u32(var_2.x, 7u)], u_input.a, global0[_wgslsmith_index_u32(var_2.x, 7u)])), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(var_0.a.c, 7u)], -5536i), reverseBits(1i)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.x, u_input.a, u_input.a), vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(0u, 7u)], -8050i)))) >> (reverseBits(0u) % 32u), ~firstLeadingBit(u_input.a));
    return func_3().yy;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: u32) -> vec4<bool> {
    global1 = ~(~arg_2);
    global0 = array<i32, 7>();
    var var_0 = Struct_1(~select(8197u, ~(~4294967295u), true), 1u, 4294967295u);
    var var_1 = !func_2();
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1404f, 1291f, _wgslsmith_div_f32(-1302f, 1f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_1.x, 377f), 109f, 738f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-250f, 570f, -531f)), arg_1)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.x)) + _wgslsmith_div_f32(-1399f, global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, global3.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-353f)), _wgslsmith_f_op_f32(global3.x + -1297f))))));
    return !(!vec4<bool>(true, all(!vec4<bool>(false, var_1.x, var_1.x, var_1.x)), all(!vec4<bool>(false, var_1.x, false, false)), var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(func_1(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], u_input.a, global0[_wgslsmith_index_u32(6080u, 7u)], -2147483647i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global2.x, global3.x)), _wgslsmith_clamp_u32(u_input.b.x, 0u, 0u)), vec4<bool>(false, true, all(vec3<bool>(true, false, true)), all(vec2<bool>(true, true))), all(vec2<bool>(true, true))));
    global1 = ~firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(49188u, 4294967295u, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, 65043u, u_input.b.x, 4294967295u), var_0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 0u, 9543u, u_input.b.x), vec4<u32>(u_input.b.x, 0u, u_input.b.x, 0u))), ~_wgslsmith_add_u32(103369u, 0u), 1u));
    var var_1 = ~(-(~_wgslsmith_mod_i32(~(-7363i), global0[_wgslsmith_index_u32(~u_input.b.x, 7u)])));
    let var_2 = -1286f;
    global3 = _wgslsmith_div_vec2_f32(vec2<f32>(var_2, global2.x), vec2<f32>(_wgslsmith_f_op_f32(122f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.x)) * -300f)), _wgslsmith_f_op_f32(min(-314f, _wgslsmith_f_op_f32(abs(631f))))));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, global3.x)))))));
    let var_3 = ~(~16833u);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, _wgslsmith_f_op_f32(round(global3.x)), -24388i, 0i);
}

