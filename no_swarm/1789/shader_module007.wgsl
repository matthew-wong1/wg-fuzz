struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true));

var<private> global1: array<Struct_1, 11>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = array<Struct_1, 18>();
    let var_0 = firstLeadingBit(_wgslsmith_mult_vec3_i32(-(~vec3<i32>(2147483647i, 39936i, -1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-26718i, select(2147483647i, 0i, arg_0.a), -34742i << (u_input.a.x % 32u)), reverseBits(-vec3<i32>(-1i, -664i, -23234i)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(1i, 56331i, 0i), vec3<i32>(1i, 1i, 1i), vec3<i32>(-1i, 2147483647i, 29156i)))));
    let var_1 = vec3<bool>(false, all(select(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, var_0.x < -1i), true)), true | any(vec3<bool>(!arg_0.a, any(vec2<bool>(arg_0.a, true)), arg_0.a)));
    var var_2 = global1[_wgslsmith_index_u32(abs(min(_wgslsmith_dot_vec2_u32(reverseBits(~u_input.a.zz), select(~u_input.a.yz, u_input.a.zx, arg_0.a || false)), ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a.x, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.zz), ~u_input.a.x))), 11u)];
    var var_3 = ~(~(~_wgslsmith_mult_u32(u_input.a.x, reverseBits(1u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-816f - -1000f), 983f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-955f, 119f))) + _wgslsmith_f_op_f32(400f * _wgslsmith_f_op_f32(step(-356f, 1100f)))))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-521f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1684f + 322f), _wgslsmith_div_f32(1218f, -2838f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(39656u, 11u)])), _wgslsmith_f_op_f32(f32(-1f) * -589f)))));
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -550f)) >= 1547f);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f));
    var_0 = 257f;
    let var_3 = var_1.a;
    return var_1;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-647f, arg_0), vec2<f32>(-206f, 366f)));
    var var_1 = func_2();
    let var_2 = global0[_wgslsmith_index_u32(max(firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.a.xx, u_input.a.yx)), ~1u), 18u)];
    let var_3 = ~_wgslsmith_add_i32(-max(_wgslsmith_div_i32(-41243i, -2147483647i), max(-2147483647i, -2147483647i)), -1i);
    var_1 = arg_1;
    return Struct_1(all(!vec4<bool>(true, true, any(vec4<bool>(var_2.a, false, false, false)), any(vec4<bool>(false, var_1.a, var_2.a, var_2.a)))));
}

fn func_5(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> vec2<bool> {
    global1 = array<Struct_1, 11>();
    var var_0 = Struct_1(true);
    var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 11u)];
    let var_1 = ~0i;
    global1 = array<Struct_1, 11>();
    return select(vec2<bool>(false, true), select(vec2<bool>(arg_2.a, true), vec2<bool>(any(vec2<bool>(false, true)), true), vec2<bool>(true, true)), false);
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = select(select(vec2<bool>(arg_0.a, any(vec2<bool>(true, true))), vec2<bool>(true, true), true), select(func_5(29431u, vec3<u32>(12031u, u_input.a.x, u_input.a.x), func_4(547f, func_2())), !vec2<bool>(any(vec2<bool>(arg_0.a, arg_0.a)), any(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true))), !vec2<bool>(any(vec4<bool>(false, false, false, arg_0.a)), arg_0.a)), !(!select(vec2<bool>(true, true), !vec2<bool>(arg_0.a, arg_0.a), !vec2<bool>(arg_0.a, false))));
    var_0 = select(select(vec2<bool>(all(vec3<bool>(var_0.x, var_0.x, true)), !arg_0.a), vec2<bool>(var_0.x, true), arg_0.a), !func_5(_wgslsmith_add_u32(select(u_input.a.x, 0u, true), 7655u), u_input.a, global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 11u)]), ~(~(~28276u)) == _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(u_input.a.x, 7510u, 4294967295u, u_input.a.x)), (vec4<u32>(0u, u_input.a.x, u_input.a.x, 6858u) & vec4<u32>(1u, u_input.a.x, u_input.a.x, 1u)) << (reverseBits(vec4<u32>(u_input.a.x, 4294967295u, 1u, 0u)) % vec4<u32>(32u))));
    global0 = array<Struct_1, 18>();
    return !vec4<bool>(!(!arg_0.a), var_0.x, true, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!func_1(global0[_wgslsmith_index_u32(u_input.a.x, 18u)])));
    let var_1 = vec3<i32>(0i, 395i, ~(-26674i));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1766f);
    let var_3 = ~(~vec4<i32>(1i, var_1.x, max(0i, ~var_1.x), ~var_1.x >> (select(u_input.a.x, u_input.a.x, var_0.x) % 32u)));
    let var_4 = global1[_wgslsmith_index_u32(~(~u_input.a.x), 11u)];
    var var_5 = Struct_1(true);
    var_0 = func_1(Struct_1(all(!func_1(Struct_1(var_5.a)))));
    global1 = array<Struct_1, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(-1i, u_input.a.x);
}

