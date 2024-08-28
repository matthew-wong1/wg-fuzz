struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: u32;

var<private> global2: array<bool, 2>;

var<private> global3: array<bool, 5> = array<bool, 5>(true, true, true, false, false);

var<private> global4: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-834f, 945f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(155f + -376f) + _wgslsmith_f_op_f32(trunc(1720f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-778f, _wgslsmith_f_op_f32(570f + -447f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-191f + 150f)) - _wgslsmith_f_op_f32(f32(-1f) * -711f)))));
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    global1 = 0u;
    let var_1 = var_0;
    return var_0.a.x < _wgslsmith_f_op_f32(-var_1.a.x);
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: f32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(411f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))));
    var var_1 = arg_1;
    var var_2 = global2[_wgslsmith_index_u32(u_input.a, 2u)];
    var var_3 = ~4294967295u;
    var var_4 = arg_1.xw;
    return !select(var_1.yxy, vec3<bool>(global3[_wgslsmith_index_u32(0u, 5u)], all(vec3<bool>(true, true, arg_0)), any(var_1.wz)), all(!select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 2u)], false), arg_1.yx, true)));
}

fn func_5(arg_0: vec3<bool>) -> vec2<u32> {
    global4 = 1u;
    let var_0 = Struct_1(vec2<f32>(894f, -1583f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1451f)))))))));
    global4 = 1u;
    var var_1 = global0[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(~max(4294967295u, u_input.a), select(u_input.a, countOneBits(0u), false))), 17u)];
    let var_2 = var_0;
    return ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c.xx | vec2<u32>(u_input.c.x >> (u_input.c.x % 32u), u_input.a));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-780f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1497f), 1378f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1298f, 278f) * 174f))))));
    let var_1 = func_5(select(func_4(func_3(), select(vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(65335u, 2u)], false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 2u)], global2[_wgslsmith_index_u32(u_input.c.x, 2u)], true, global2[_wgslsmith_index_u32(0u, 2u)]), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 5u)], false, global3[_wgslsmith_index_u32(u_input.c.x, 5u)], false)), _wgslsmith_f_op_f32(-var_0.x)), !select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(u_input.c.x, 2u)], true), vec3<bool>(global3[_wgslsmith_index_u32(arg_0.x, 5u)], false, global2[_wgslsmith_index_u32(22400u, 2u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 5u)], true, global2[_wgslsmith_index_u32(arg_0.x, 2u)])), select(vec3<bool>(true, true, global3[_wgslsmith_index_u32(12538u, 5u)]), vec3<bool>(global3[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(63527u, 2u)], false), select(vec3<bool>(true, global2[_wgslsmith_index_u32(arg_0.x, 2u)], global3[_wgslsmith_index_u32(21397u, 5u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(arg_0.x, 2u)], global3[_wgslsmith_index_u32(u_input.c.x, 5u)]), vec3<bool>(false, true, global2[_wgslsmith_index_u32(1u, 2u)]))))) << (vec2<u32>(17932u, arg_0.x) % vec2<u32>(32u));
    var var_2 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -u_input.b, u_input.d.x), vec3<i32>(_wgslsmith_add_i32(u_input.d.x, u_input.d.x), -firstLeadingBit(-2289i), u_input.b));
    var var_3 = _wgslsmith_mod_i32(-(~1i), firstTrailingBit(u_input.b));
    var_3 = 2380i;
    return global0[_wgslsmith_index_u32(1u, 17u)];
}

fn func_1() -> f32 {
    var var_0 = func_2(countOneBits(u_input.c));
    let var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(2147483647i, -804i), max(abs(vec2<i32>(0i, -33646i)), ~u_input.d)), _wgslsmith_clamp_vec2_i32(u_input.d, abs(u_input.d), firstLeadingBit(select(vec2<i32>(36130i, u_input.d.x), vec2<i32>(27054i, 15074i), vec2<bool>(global2[_wgslsmith_index_u32(1u, 2u)], false))))), vec2<i32>(u_input.b, abs(1i)), _wgslsmith_add_vec2_i32(u_input.d, ~(~(~u_input.d))));
    let var_2 = abs(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-34806i, var_1.x), -1i), vec2<i32>(-2147483647i, 1i))) << (u_input.c.yz % vec2<u32>(32u));
    global1 = u_input.a;
    var var_3 = _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(2424i, var_1.x), vec2<i32>(var_2.x, 0i)), var_1.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 10413i, var_1.x), vec3<i32>(-64280i, var_2.x, 28543i)), var_2.x, ~u_input.e)), min(~vec4<i32>(_wgslsmith_mod_i32(18321i, 2049i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 78588i, var_2.x, var_1.x), vec4<i32>(2147483647i, var_1.x, -9403i, -1i)), 1i, countOneBits(1i)), countOneBits(-(vec4<i32>(-26682i, -2147483647i, 2147483647i, var_2.x) | vec4<i32>(u_input.b, var_2.x, var_2.x, -11901i)))));
    return -280f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(i32(-1i) * -_wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(u_input.b, 1750i) ^ u_input.d));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, -1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1()), -484f, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x, 12797u, _wgslsmith_sub_u32(44833u, u_input.c.x)) & ~u_input.a, 5u)])));
    var var_2 = 62357u;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_1.a + vec2<f32>(1389f, var_1.b)))))))), _wgslsmith_f_op_f32(f32(-1f) * -655f));
    var var_4 = func_2(~_wgslsmith_add_vec3_u32(~(~vec3<u32>(4294967295u, 1u, u_input.a)), abs(vec3<u32>(u_input.a, 1u, u_input.c.x)) | _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.a), u_input.c))).a;
    var_2 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1101f)) + -398f), 1295f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), -179f)));
}

