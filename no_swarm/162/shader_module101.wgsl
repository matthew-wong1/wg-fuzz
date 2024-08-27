struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: f32;

var<private> global2: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false));

var<private> global3: array<i32, 13>;

var<private> global4: Struct_1 = Struct_1(vec3<f32>(472f, 394f, -900f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>) -> f32 {
    let var_0 = u_input.b.x;
    global2 = array<vec3<bool>, 12>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, global4.a.x, -1712f), global4.a, global0.zyw)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-807f, -1438f, global4.a.x))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.yxx)), vec3<f32>(_wgslsmith_f_op_f32(1649f * arg_0), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -149f)))));
    var var_2 = vec4<u32>(reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.c, u_input.c, 75220u), _wgslsmith_div_vec4_u32(vec4<u32>(40813u, u_input.c, u_input.c, u_input.c), vec4<u32>(4294967295u, 0u, u_input.c, u_input.c)))) >> (1u % 32u), 9312u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(4556u, u_input.c)), 42800u, 6354u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(36505u, u_input.c) >> (vec2<u32>(7247u, u_input.c) % vec2<u32>(32u)), ~vec2<u32>(u_input.c, u_input.c))), 11679u << (u_input.c % 32u));
    let var_3 = _wgslsmith_f_op_f32(min(-563f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-869f, var_1.a.x)), _wgslsmith_f_op_f32(step(arg_0, -660f)), var_2.x <= var_2.x)))))));
    return var_1.a.x;
}

fn func_2() -> Struct_1 {
    var var_0 = 605f;
    let var_1 = u_input.a;
    let var_2 = select(u_input.c, 4294967295u, !(true && global0.x));
    global2 = array<vec3<bool>, 12>();
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-286f, _wgslsmith_f_op_f32(select(-678f, _wgslsmith_f_op_f32(func_3(global4.a.x, vec4<f32>(global4.a.x, global4.a.x, 340f, global4.a.x))), false)), global4.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.x) * global4.a.x)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1682f, 488f, 1259f, 2419f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.x, 1016f, global4.a.x, 271f) * vec4<f32>(global4.a.x, -1609f, global4.a.x, 731f)))))));
    return Struct_1(vec3<f32>(var_3.x, _wgslsmith_div_f32(global4.a.x, var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-563f + var_3.x))));
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = func_2();
    let var_1 = !global2[_wgslsmith_index_u32(~abs(_wgslsmith_clamp_u32(countOneBits(1u), ~4294967295u, 19440u)), 12u)];
    let var_2 = func_2();
    global3 = array<i32, 13>();
    let var_3 = select(vec2<bool>(select(true, (-46628i <= u_input.b.x) & all(vec3<bool>(true, global0.x, true)), ~u_input.d > -1i), all(select(select(vec4<bool>(var_1.x, false, global0.x, true), vec4<bool>(false, true, true, global0.x), var_1.x), select(vec4<bool>(global0.x, true, true, true), vec4<bool>(false, false, false, var_1.x), vec4<bool>(global0.x, true, global0.x, global0.x)), all(var_1.zz)))), !vec2<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.c, 0u)) > ~2235u, true), vec2<bool>(global0.x, -global3[_wgslsmith_index_u32(63471u, 13u)] > 2147483647i));
    return var_1.x;
}

fn func_1(arg_0: i32, arg_1: i32) -> vec4<i32> {
    global0 = !vec4<bool>(func_4(func_2()), global0.x, false, all(!(!global2[_wgslsmith_index_u32(56980u, 12u)])));
    let var_0 = _wgslsmith_f_op_f32(func_2().a.x + global4.a.x);
    var var_1 = _wgslsmith_mult_i32(-u_input.b.x, abs(i32(-1i) * -u_input.d));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_0, global4.a.x, false)), _wgslsmith_f_op_f32(max(global4.a.x, 492f)))), -1518f)))));
    global1 = -1108f;
    return vec4<i32>(22025i, i32(-1i) * -_wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_0, global3[_wgslsmith_index_u32(u_input.c, 13u)]), firstTrailingBit(global3[_wgslsmith_index_u32(4294967295u, 13u)])), _wgslsmith_div_i32(countOneBits(global3[_wgslsmith_index_u32(1u, 13u)]), ~(i32(-1i) * -53279i)), ~(-8342i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4.a.x))), _wgslsmith_f_op_f32(-global4.a.x), 528f), _wgslsmith_f_op_vec3_f32(-global4.a), (_wgslsmith_f_op_f32(-global4.a.x) <= global4.a.x) && (_wgslsmith_div_f32(1417f, global4.a.x) < _wgslsmith_div_f32(global4.a.x, global4.a.x)))));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + global4.a.x)), global4.a.x, var_0.a.x));
    let var_2 = !(!vec4<bool>(true, false, any(vec2<bool>(true, global0.x)), global0.x));
    global2 = array<vec3<bool>, 12>();
    var var_3 = var_0;
    let var_4 = var_2.x;
    let var_5 = var_0;
    var var_6 = min(_wgslsmith_mod_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(0u, 13u)], 980i, global3[_wgslsmith_index_u32(u_input.c, 13u)], global3[_wgslsmith_index_u32(u_input.c, 13u)]), vec4<i32>(28905i, 2147483647i, u_input.b.x, global3[_wgslsmith_index_u32(31408u, 13u)])) | _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, u_input.d, 61718i, global3[_wgslsmith_index_u32(u_input.c, 13u)]), vec4<i32>(38494i, u_input.d, u_input.a, global3[_wgslsmith_index_u32(u_input.c, 13u)]), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, -2147483647i, u_input.d), vec4<i32>(global3[_wgslsmith_index_u32(45605u, 13u)], u_input.d, 1i, 1i))), ~(func_1(-1i, global3[_wgslsmith_index_u32(21694u, 13u)]) | vec4<i32>(global3[_wgslsmith_index_u32(u_input.c, 13u)], -1i, 28820i, global3[_wgslsmith_index_u32(0u, 13u)]))), -(((vec4<i32>(global3[_wgslsmith_index_u32(u_input.c, 13u)], global3[_wgslsmith_index_u32(0u, 13u)], 37728i, 1i) & vec4<i32>(-1i, 58453i, -20934i, 1i)) & (vec4<i32>(u_input.a, u_input.d, u_input.d, -23344i) >> (vec4<u32>(u_input.c, u_input.c, 0u, 8591u) % vec4<u32>(32u)))) >> (vec4<u32>(u_input.c ^ u_input.c, _wgslsmith_clamp_u32(16798u, 1u, u_input.c), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(81027u, u_input.c, 24583u), vec3<u32>(u_input.c, 21702u, u_input.c))) % vec4<u32>(32u))));
    var var_7 = vec4<f32>(var_0.a.x, -2422f, _wgslsmith_f_op_f32(sign(161f)), var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(u_input.c, ~u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.zz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.a.yx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.a.zz)))), vec3<u32>(_wgslsmith_dot_vec4_u32(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(33499u, u_input.c, 30047u, u_input.c), vec4<u32>(1u, 76874u, u_input.c, 0u), vec4<u32>(u_input.c, u_input.c, 29081u, 1u)), abs(vec4<u32>(33692u, 41104u, u_input.c, 1u))), vec4<u32>(u_input.c & u_input.c, ~u_input.c, ~44127u, 28448u)), _wgslsmith_sub_u32(u_input.c, _wgslsmith_clamp_u32(u_input.c, 72682u, _wgslsmith_div_u32(25338u, 35458u))), countOneBits(u_input.c)));
}

