struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec2<bool>(true, true), vec3<i32>(0i, 4228i, -1i), vec4<u32>(4294967295u, 46591u, 22278u, 5466u)), Struct_1(vec2<bool>(false, false), vec3<i32>(-1i, 37301i, -31639i), vec4<u32>(62545u, 107897u, 67929u, 1u)), Struct_1(vec2<bool>(false, false), vec3<i32>(8976i, 1i, 0i), vec4<u32>(20793u, 5109u, 8287u, 4294967295u)), Struct_1(vec2<bool>(false, false), vec3<i32>(1i, 43441i, 10664i), vec4<u32>(91646u, 30126u, 1u, 12613u)));

var<private> global1: array<vec2<f32>, 4>;

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<bool>(false, true), vec3<i32>(1i, 0i, -30670i), vec4<u32>(10332u, 4664u, 15166u, 7689u)), Struct_1(vec2<bool>(true, true), vec3<i32>(-5912i, -29597i, 0i), vec4<u32>(22733u, 44560u, 0u, 1u)), Struct_1(vec2<bool>(false, true), vec3<i32>(26179i, i32(-2147483648), i32(-2147483648)), vec4<u32>(57330u, 4294967295u, 9318u, 34479u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool) -> vec4<u32> {
    var var_0 = Struct_1(!arg_0.a, arg_0.b, select(u_input.d, vec4<u32>(u_input.d.x, 4294967295u, u_input.a.x, 1u), arg_0.a.x) & ~(~u_input.d));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-269f, -979f, arg_0.a.x)), _wgslsmith_f_op_f32(597f + -528f), _wgslsmith_div_f32(454f, -1000f)) - vec3<f32>(_wgslsmith_f_op_f32(-799f + -1204f), _wgslsmith_f_op_f32(floor(-964f)), _wgslsmith_f_op_f32(round(139f))))));
    let var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, 22031u), var_0.c.x), 3u)];
    var var_3 = 24361i;
    let var_4 = arg_0;
    return var_2.c;
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = true;
    var_0 = arg_0.x;
    global1 = array<vec2<f32>, 4>();
    global1 = array<vec2<f32>, 4>();
    global2 = array<Struct_1, 3>();
    return Struct_1(!arg_0, -(~_wgslsmith_mod_vec3_i32(~u_input.c.zyz, u_input.c.yyx)), ~u_input.d >> (max(abs(vec4<u32>(0u, 0u, u_input.d.x, u_input.a.x)), max(func_3(Struct_1(arg_0, u_input.c.xwx, u_input.d), u_input.c.wzw, false), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 4294967295u))) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> vec4<bool> {
    global0 = array<Struct_1, 4>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-378f, _wgslsmith_f_op_f32(-739f - 885f), arg_0.a.x && true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(550f + 695f), _wgslsmith_f_op_f32(ceil(467f))))))));
    let var_1 = abs(2147483647i);
    let var_2 = global2[_wgslsmith_index_u32(11403u | ~arg_0.c.x, 3u)];
    let var_3 = min(~(-arg_0.b.yx), vec2<i32>(arg_1, select(_wgslsmith_clamp_i32(-19968i, 9428i, _wgslsmith_sub_i32(var_1, arg_1)), countOneBits(0i), u_input.c.x > var_1)));
    return select(vec4<bool>(false, true, true, !(!var_2.a.x)), vec4<bool>(!var_2.a.x, true, !(_wgslsmith_f_op_f32(trunc(1121f)) == -256f), !(true & arg_0.a.x)), !all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, arg_0.a.x, arg_0.a.x), vec3<bool>(false, true, arg_0.a.x), vec3<bool>(arg_0.a.x, true, var_2.a.x)), vec3<bool>(var_2.a.x, true, var_2.a.x))));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>) -> vec4<bool> {
    global0 = array<Struct_1, 4>();
    global2 = array<Struct_1, 3>();
    global2 = array<Struct_1, 3>();
    global0 = array<Struct_1, 4>();
    var var_0 = vec2<i32>(u_input.b, arg_1.b.x);
    return !func_4(func_2(vec2<bool>(false, true)), -2147483647i);
}

fn func_5(arg_0: vec4<bool>, arg_1: i32) -> vec2<f32> {
    let var_0 = -(countOneBits(-(~vec2<i32>(0i, arg_1))) ^ u_input.c.xy);
    global1 = array<vec2<f32>, 4>();
    global0 = array<Struct_1, 4>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-941f + _wgslsmith_f_op_f32(f32(-1f) * -895f)) - -215f);
    let var_2 = select(_wgslsmith_mult_vec3_i32(-u_input.c.xxw, -vec3<i32>(-var_0.x, -u_input.c.x, _wgslsmith_div_i32(33379i, u_input.c.x))), ~(-vec3<i32>(arg_1, _wgslsmith_dot_vec3_i32(u_input.c.zwx, u_input.c.yyw), ~4472i)), true);
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(global1[_wgslsmith_index_u32(select(56225u, 15492u, true), 4u)])), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-447f)), -398f))), _wgslsmith_f_op_f32(min(-1710f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(564f + 914f) + -613f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(u_input.d.x, 3u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(func_5(func_1(u_input.c.x, global0[_wgslsmith_index_u32(4294967295u, 4u)], _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(round(939f)), -113f, -679f, -2458f)))), u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(func_2(vec2<bool>(true, true)).b.x, ~max(var_0.b.x, var_0.b.x), countOneBits(var_0.b.x)) | (_wgslsmith_sub_i32(~(-60938i), firstTrailingBit(1i)) ^ -(var_0.b.x | var_0.b.x)));
}

