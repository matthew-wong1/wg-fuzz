struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
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

var<private> global0: array<Struct_3, 27>;

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: vec3<i32>;

var<private> global3: array<i32, 25>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<f32> {
    var var_0 = u_input.b;
    var var_1 = vec4<bool>(false, -21700i <= (-_wgslsmith_sub_i32(-1i, 6501i) ^ _wgslsmith_dot_vec3_i32(abs(vec3<i32>(13511i, u_input.d, -50332i)), -vec3<i32>(-46144i, 2147483647i, global2.x))), !global1.x, false & (global1.x && global1.x));
    var var_2 = vec2<i32>(global3[_wgslsmith_index_u32(countOneBits(reverseBits(var_0.x)), 25u)] << (~firstLeadingBit(23077u) % 32u), firstLeadingBit(global3[_wgslsmith_index_u32(~var_0.x, 25u)]));
    global0 = array<Struct_3, 27>();
    var var_3 = Struct_4(Struct_1(~abs(~vec3<i32>(1i, var_2.x, 16210i)), min(min(~2147483647i, 19028i), ~u_input.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1536f + 626f), _wgslsmith_f_op_f32(select(-372f, 304f, var_1.x))))), _wgslsmith_f_op_f32(-1104f - -1000f), Struct_1(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -1i, global3[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec3<i32>(-1i, global3[_wgslsmith_index_u32(1u, 25u)], 1i), vec3<i32>(-2147483647i, 0i, -40351i))) | firstTrailingBit(~vec3<i32>(global2.x, 1i, global2.x)), 0i, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -881f), _wgslsmith_f_op_f32(-1245f * _wgslsmith_f_op_f32(f32(-1f) * -695f)))), vec2<bool>(!var_1.x, !any(select(var_1.yxy, var_1.wzw, var_1.wxx))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c.c.x, 1197f, -574f))))), vec3<f32>(-813f, _wgslsmith_f_op_f32(abs(var_3.b)), -2308f));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: vec2<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.c.c.x, _wgslsmith_f_op_f32(-arg_1.c.c.x), _wgslsmith_f_op_f32(-arg_1.b)), vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_3.x)), _wgslsmith_f_op_vec3_f32(func_3()).x, arg_3.x)))));
    let var_1 = select(select(!select(!global1.yx, select(arg_1.d, arg_2.yz, false), !vec2<bool>(true, global1.x)), !select(select(arg_1.d, vec2<bool>(global1.x, arg_1.d.x), arg_2.x), vec2<bool>(arg_1.d.x, arg_1.d.x), vec2<bool>(global1.x, true)), true), arg_1.d, vec2<bool>(-1535i >= _wgslsmith_dot_vec2_i32(~vec2<i32>(-11673i, global3[_wgslsmith_index_u32(1u, 25u)]), _wgslsmith_div_vec2_i32(arg_1.a.a.xx, global2.zy)), all(select(select(vec3<bool>(arg_1.d.x, arg_1.d.x, true), arg_2.ywz, true), !arg_2.zxy, !vec3<bool>(global1.x, arg_2.x, arg_2.x)))));
    let var_2 = !arg_2.yxw;
    global1 = var_2;
    global2 = vec3<i32>(~abs(20760i << (arg_0.x % 32u)), 8561i | firstTrailingBit(_wgslsmith_dot_vec2_i32(~vec2<i32>(global2.x, -7201i), select(arg_1.c.a.zz, vec2<i32>(-20021i, global2.x), false))), -1i);
    return -_wgslsmith_div_i32(countOneBits(-global2.x), 48544i) != global3[_wgslsmith_index_u32(~20934u, 25u)];
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<bool>) -> Struct_3 {
    global3 = array<i32, 25>();
    global1 = select(vec3<bool>(global1.x & arg_2.x, select(true, arg_2.x, func_2(arg_0.zz, Struct_4(Struct_1(vec3<i32>(6611i, -21573i, global2.x), 0i, vec2<f32>(1185f, -1000f)), -921f, Struct_1(vec3<i32>(2147483647i, u_input.d, 2147483647i), u_input.c.x, vec2<f32>(2377f, -1842f)), arg_2.zw), arg_2, vec2<f32>(-752f, 584f)) && all(global1.zz)), all(arg_2)), !vec3<bool>(!arg_2.x, any(vec3<bool>(global1.x, false, true)), global1.x), true);
    var var_0 = Struct_4(Struct_1(~_wgslsmith_sub_vec3_i32(vec3<i32>(global2.x, global3[_wgslsmith_index_u32(arg_0.x, 25u)], global2.x), ~vec3<i32>(-2160i, u_input.c.x, global3[_wgslsmith_index_u32(81618u, 25u)])), -1918i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-262f, -3064f))), -196f, Struct_1(~(vec3<i32>(-1i) * -vec3<i32>(global2.x, u_input.d, global2.x)), 5062i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-751f, 1399f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-879f, -1651f))))), select(arg_2.zy, !(!vec2<bool>(arg_2.x, global1.x)), select(arg_2.ww, arg_2.wx, true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec3_f32(func_3()).xy, var_0.a.c)))));
    return global0[_wgslsmith_index_u32(4294967295u, 27u)];
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    global1 = !(!(!(!select(vec3<bool>(false, arg_1, false), vec3<bool>(global1.x, false, global1.x), true))));
    let var_0 = firstLeadingBit(firstLeadingBit(vec2<i32>(~0i | -global3[_wgslsmith_index_u32(arg_3.a.x, 25u)], abs(arg_2.a))));
    var var_1 = arg_3;
    let var_2 = var_0;
    var var_3 = firstTrailingBit(vec3<i32>(11585i, firstLeadingBit(2147483647i), arg_2.a) << (~(~min(vec3<u32>(8630u, 4294967295u, arg_3.a.x), u_input.b.yzw)) % vec3<u32>(32u)));
    return Struct_1(_wgslsmith_add_vec3_i32(min(~reverseBits(vec3<i32>(u_input.d, -3435i, var_3.x)), vec3<i32>(-u_input.c.x, -16608i, _wgslsmith_add_i32(arg_2.a, 61732i))), vec3<i32>(abs(var_3.x) | var_3.x, ~_wgslsmith_mod_i32(-33306i, arg_2.a), var_3.x)), var_0.x << (~_wgslsmith_add_u32(abs(arg_3.a.x), arg_3.a.x) % 32u), vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1.b)), _wgslsmith_f_op_f32(arg_3.b * _wgslsmith_f_op_f32(abs(462f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-832f + 1394f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1390f))))) + _wgslsmith_f_op_f32(1577f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-120f - -758f) * _wgslsmith_div_f32(-1000f, -325f)))) - 899f);
    global2 = ~(~vec3<i32>(1i, _wgslsmith_div_i32(firstLeadingBit(u_input.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, global2.x), vec3<i32>(-26953i, u_input.d, u_input.d))), 1i));
    var var_1 = 19712i;
    let var_2 = 4294967295u;
    var var_3 = func_4(!(!global1.x), global1.x, func_1(u_input.b.wxw, _wgslsmith_clamp_u32(~(u_input.b.x << (43865u % 32u)), abs(var_2), u_input.a.x), vec4<bool>(true, all(vec3<bool>(true, true, true)), global1.x, any(!vec4<bool>(global1.x, false, false, global1.x)))), Struct_2(~u_input.b.zz, var_0));
    let var_4 = Struct_2(~u_input.a.xz, -185f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(25253u, var_4.a.x, var_4.a.x)), vec3<u32>(max(u_input.b.x, 0u), reverseBits(4294967295u), ~4294967295u)), ~var_2), _wgslsmith_dot_vec3_i32((vec3<i32>(35729i, global2.x, var_3.b) | ~vec3<i32>(-2147483647i, -48126i, -69244i)) << (u_input.b.yxw % vec3<u32>(32u)), vec3<i32>(global2.x, -47786i, abs(-834i & u_input.d))));
}

