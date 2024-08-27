struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 8697u), vec2<u32>(0u, 39721u), vec2<u32>(1u, 4294967295u));

var<private> global1: array<i32, 2>;

var<private> global2: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2) -> vec2<u32> {
    let var_0 = max(min(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_add_i32(17359i, -46256i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, -27213i, -2147483647i), vec4<i32>(u_input.c.x, global2.a.c.x, 0i, global1[_wgslsmith_index_u32(76712u, 2u)])), -global1[_wgslsmith_index_u32(63534u, 2u)], _wgslsmith_mult_i32(1i, arg_0.a.c.x)), ~vec4<i32>(u_input.c.x, 31730i, global1[_wgslsmith_index_u32(u_input.d.x, 2u)], u_input.c.x)), -vec4<i32>(min(u_input.c.x, 2147483647i), u_input.c.x, min(arg_0.e.c.x, global2.a.c.x), _wgslsmith_sub_i32(arg_0.e.c.x, global2.e.c.x))), _wgslsmith_mult_vec4_i32(~vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.d.x, 2u)], _wgslsmith_dot_vec3_i32(vec3<i32>(-21387i, -11222i, -6454i), arg_0.a.c), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global2.b, arg_0.b), 2u)]), max(~vec4<i32>(global2.e.c.x, arg_0.a.c.x, arg_0.a.c.x, -13734i) | -vec4<i32>(8201i, global1[_wgslsmith_index_u32(1u, 2u)], u_input.c.x, global1[_wgslsmith_index_u32(1u, 2u)]), vec4<i32>(_wgslsmith_mult_i32(-21319i, global2.e.c.x), -41695i, global2.e.c.x, -6631i))));
    global2 = Struct_2(Struct_1(~global2.a.a, global2.a.b, ~(vec3<i32>(u_input.c.x, global2.e.c.x, global1[_wgslsmith_index_u32(u_input.b, 2u)]) ^ (vec3<i32>(u_input.c.x, u_input.c.x, 13243i) | u_input.c)), _wgslsmith_f_op_f32(trunc(global2.c))), _wgslsmith_sub_vec2_u32(u_input.d.zx, arg_0.a.a.yz) ^ min(reverseBits(global0[_wgslsmith_index_u32(u_input.d.x, 4u)] >> (vec2<u32>(1u, arg_0.e.a.x) % vec2<u32>(32u))), ~(vec2<u32>(u_input.a, arg_0.a.a.x) & vec2<u32>(4294967295u, arg_0.e.a.x))), _wgslsmith_f_op_f32(125f * 1000f), arg_0.a.d, global2.e);
    global0 = array<vec2<u32>, 4>();
    let var_1 = _wgslsmith_clamp_i32(-_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, global2.e.c.x, 41722i, var_0.x) >> (vec4<u32>(global2.e.a.x, 0u, u_input.a, u_input.d.x) % vec4<u32>(32u)), var_0 >> (vec4<u32>(8087u, arg_0.a.a.x, 4294967295u, 28902u) % vec4<u32>(32u))), ~_wgslsmith_add_i32(var_0.x, u_input.c.x)), firstTrailingBit(-(~(~2147483647i))), 2384i);
    global1 = array<i32, 2>();
    return firstTrailingBit(vec2<u32>(arg_0.a.a.x, arg_0.e.a.x ^ u_input.b));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec3<bool>) -> vec2<f32> {
    global2 = Struct_2(global2.a, ~(~(~func_3(Struct_2(Struct_1(arg_2.a, vec3<bool>(arg_3.x, false, true), vec3<i32>(40995i, -2147483647i, -1i), 718f), vec2<u32>(4294967295u, 4294967295u), -296f, global2.c, global2.e)))), arg_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1358f + -1185f) + _wgslsmith_f_op_f32(round(890f)))), global2.e);
    var var_0 = vec4<bool>(arg_2.b.x, true, arg_2.b.x, true);
    global0 = array<vec2<u32>, 4>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.e.d + arg_2.d))))));
    var var_2 = _wgslsmith_div_u32(reverseBits(4294967295u), ~reverseBits(arg_2.a.x));
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -356f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1602f, arg_2.d), vec2<f32>(1000f, var_1), arg_3.yy))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.d), _wgslsmith_f_op_f32(f32(-1f) * -291f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, arg_2.d)))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> vec3<u32> {
    global2 = Struct_2(Struct_1(firstLeadingBit(vec3<u32>(arg_0.a.x, 4294967295u, 1u)), arg_0.b, u_input.c, -1039f), u_input.d.yx, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -790f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), Struct_1(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(62559u, arg_0.a.x, arg_0.a.x), abs(arg_0.a.x)), ~15672u, 0u), !(!(!arg_0.b)), -select(~vec3<i32>(-1i, 1i, global1[_wgslsmith_index_u32(30106u, 2u)]), global2.e.c, arg_0.a.x != arg_0.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.e.d + -729f)))));
    global1 = array<i32, 2>();
    var var_0 = _wgslsmith_f_op_f32(256f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec2_f32(func_2(!vec2<bool>(false, arg_0.b.x), vec2<i32>(u_input.c.x, arg_0.c.x) << (vec2<u32>(u_input.a, 15076u) % vec2<u32>(32u)), Struct_1(arg_0.a, arg_0.b, global2.e.c, arg_0.d), arg_0.b)).x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1068f - arg_1.x))))) - arg_1.x));
    global2 = Struct_2(global2.e, ~(~global0[_wgslsmith_index_u32(46787u, 4u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -911f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d, global2.e.d)))), Struct_1(~_wgslsmith_mod_vec3_u32(min(vec3<u32>(5967u, arg_0.a.x, u_input.d.x), global2.a.a), reverseBits(vec3<u32>(1u, 1u, arg_0.a.x))), global2.e.b, ~abs(-global2.e.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, 791f)))));
    var var_1 = (countOneBits(abs(~u_input.c.zz)) >> (_wgslsmith_clamp_vec2_u32(~(~arg_0.a.yy), vec2<u32>(arg_0.a.x, ~35666u), func_3(Struct_2(Struct_1(vec3<u32>(4294967295u, u_input.d.x, arg_0.a.x), vec3<bool>(true, true, false), u_input.c, global2.d), vec2<u32>(25463u, 20104u), -523f, arg_0.d, Struct_1(vec3<u32>(78695u, u_input.b, 1u), vec3<bool>(true, global2.a.b.x, global2.a.b.x), vec3<i32>(global2.a.c.x, 2147483647i, -25308i), 555f))) << (vec2<u32>(1u, u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u))) ^ abs(vec2<i32>(_wgslsmith_div_i32(arg_0.c.x | 12987i, arg_0.c.x), _wgslsmith_div_i32(-1i, 2147483647i)));
    return _wgslsmith_clamp_vec3_u32(global2.a.a & vec3<u32>(u_input.b, 50188u, 0u), firstTrailingBit(abs(arg_0.a)), ~_wgslsmith_div_vec3_u32(global2.e.a, global2.a.a));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_1(func_4(Struct_1(global2.a.a, vec3<bool>(global2.a.b.x, true, global2.a.b.x), _wgslsmith_div_vec3_i32(vec3<i32>(-11595i, u_input.c.x, global1[_wgslsmith_index_u32(20187u, 2u)]), arg_1.c << (vec3<u32>(u_input.b, arg_1.a.x, 51903u) % vec3<u32>(32u))), arg_1.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec2<bool>(arg_1.b.x, arg_1.b.x), arg_1.c.zy, global2.e, global2.e.b))))), select(vec3<bool>(false, any(vec2<bool>(arg_1.b.x, true)), all(arg_0)), arg_0, any(!arg_0.zy)), _wgslsmith_div_vec3_i32(global2.a.c ^ _wgslsmith_add_vec3_i32(vec3<i32>(0i, 7811i, arg_1.c.x), vec3<i32>(u_input.c.x, global1[_wgslsmith_index_u32(arg_1.a.x, 2u)], arg_1.c.x)), ~select(global2.a.c, _wgslsmith_div_vec3_i32(vec3<i32>(arg_1.c.x, -1i, u_input.c.x), u_input.c), true)), _wgslsmith_f_op_f32(min(-2591f, -409f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.a.d))))), -824f, _wgslsmith_div_f32(597f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 373f) * _wgslsmith_f_op_vec2_f32(func_2(global2.a.b.zy, vec2<i32>(1i, 2147483647i), global2.a, var_0.b)).x))));
    global2 = Struct_2(Struct_1(~arg_1.a, arg_0, firstTrailingBit(_wgslsmith_div_vec3_i32(arg_1.c, vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(var_0.a.x, 2u)], global1[_wgslsmith_index_u32(1u, 2u)]))), 733f), vec2<u32>(~(~(0u << (1u % 32u))), 1u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1248f * _wgslsmith_f_op_f32(arg_1.d + -1633f))))), arg_1.d, Struct_1(vec3<u32>(abs(func_4(arg_1, var_1.xx).x), 1u, _wgslsmith_mod_u32(var_0.a.x, _wgslsmith_add_u32(var_0.a.x, u_input.a))), select(!(!var_0.b), select(vec3<bool>(false, arg_0.x, arg_1.b.x), var_0.b, vec3<bool>(arg_0.x, arg_0.x, false)), select(arg_0, vec3<bool>(true, true, global2.e.b.x), !arg_1.b)), ~vec3<i32>(var_0.c.x | -21263i, global2.a.c.x << (global2.b.x % 32u), -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(ceil(1058f)))))));
    let var_2 = Struct_2(Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, 4997u), var_0.a.zz), u_input.d.x, abs(~1u)), select(arg_0, arg_1.b, select(select(var_0.b, vec3<bool>(true, arg_1.b.x, arg_0.x), vec3<bool>(global2.e.b.x, true, arg_1.b.x)), vec3<bool>(arg_1.b.x, false, false), any(vec3<bool>(false, arg_1.b.x, true)))), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, global2.e.c.x), global2.e.c), global2.a.c.x), -_wgslsmith_add_i32(var_0.c.x, arg_1.c.x), _wgslsmith_dot_vec3_i32(arg_1.c, arg_1.c)), _wgslsmith_f_op_f32(f32(-1f) * -461f)), global0[_wgslsmith_index_u32(16916u, 4u)], _wgslsmith_f_op_f32(exp2(var_0.d)), arg_1.d, Struct_1(vec3<u32>(countOneBits(max(arg_1.a.x, global2.e.a.x)), abs(47023u >> (u_input.b % 32u)), 1079u), global2.a.b, vec3<i32>(-1i, _wgslsmith_mult_i32(1i, global1[_wgslsmith_index_u32(5983u, 2u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, global2.a.c.x) << (vec2<u32>(4294967295u, 16095u) % vec2<u32>(32u)), select(vec2<i32>(global2.a.c.x, -10854i), vec2<i32>(arg_1.c.x, var_0.c.x), vec2<bool>(arg_1.b.x, false)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_1.d)))), max(-2147483647i, 0i) <= global2.e.c.x))));
    let var_3 = max(vec2<u32>(_wgslsmith_add_u32(u_input.a, _wgslsmith_mod_u32(~arg_1.a.x, ~1u)), 4294967295u), ~(~var_0.a.yz));
    return 0i;
}

fn func_5(arg_0: vec4<i32>, arg_1: i32, arg_2: f32) -> vec3<i32> {
    var var_0 = vec4<bool>(false, global2.e.b.x | global2.e.b.x, true, false);
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1568f - arg_2), 1507f)), _wgslsmith_f_op_vec2_f32(func_2(var_0.yz, select(vec2<i32>(u_input.c.x, -57635i), arg_0.xz, var_0.x), global2.a, vec3<bool>(global2.a.b.x, false, var_0.x))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.e.d)) + global2.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.d, global2.d, arg_2) * _wgslsmith_div_vec3_f32(vec3<f32>(global2.e.d, 576f, arg_2), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1410f, global2.c, arg_2))))), global2.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.d, -845f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2 - 1071f))), -1430f, arg_2) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c, -399f, global2.d) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -1223f, -238f) - vec3<f32>(arg_2, arg_2, 1847f))) + vec3<f32>(_wgslsmith_f_op_f32(-global2.e.d), -847f, global2.a.d))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_1.a))), _wgslsmith_f_op_f32(-global2.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, _wgslsmith_f_op_f32(-1553f + arg_2), -451f) + _wgslsmith_f_op_vec3_f32(step(var_1.c, vec3<f32>(arg_2, 2166f, -1471f))))));
    var var_3 = Struct_2(global2.a, vec2<u32>(global2.e.a.x, _wgslsmith_mult_u32(func_4(global2.a, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1434f, arg_2), vec2<f32>(1000f, -119f), var_0.wz))).x, firstTrailingBit(global2.a.a.x))), _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -748f)))), global2.a);
    let var_4 = global2.e.d;
    return global2.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec4<i32>(i32(-1i) * -1i, 1i, abs(max(global1[_wgslsmith_index_u32(u_input.d.x >> (global2.e.a.x % 32u), 2u)], 17207i)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-23424i, global2.a.c.x, 47161i, u_input.c.x), vec4<i32>(-81754i, 0i, u_input.c.x, 1i)) & func_1(select(vec3<bool>(global2.e.b.x, global2.a.b.x, global2.a.b.x), global2.e.b, global2.a.b.x), Struct_1(vec3<u32>(1656u, global2.e.a.x, 4294967295u), global2.e.b, u_input.c, 1036f))), ~(global1[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 2u)] | global2.a.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.c - -400f))))), -208f)));
    var var_1 = -u_input.c.x;
    global2 = Struct_2(global2.a, abs(~vec2<u32>(~27610u, abs(1u))), global2.d, 2651f, global2.e);
    var var_2 = _wgslsmith_dot_vec4_i32((-(~vec4<i32>(1i, 1i, global2.e.c.x, global2.e.c.x)) ^ reverseBits(vec4<i32>(u_input.c.x, 2147483647i, 4456i, 2147483647i))) & (vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, 1i), vec3<i32>(-7542i, -2147483647i, u_input.c.x)), _wgslsmith_mod_i32(global2.a.c.x, global2.e.c.x), max(-8088i, var_0.x), 1i) >> (~vec4<u32>(23221u, global2.a.a.x, u_input.d.x, global2.e.a.x) % vec4<u32>(32u))), vec4<i32>(-1i) * -abs(vec4<i32>(global2.a.c.x, global1[_wgslsmith_index_u32(global2.e.a.x, 2u)], -20732i, var_0.x)));
    var var_3 = 4335i | u_input.c.x;
    let var_4 = -(func_1(global2.e.b, Struct_1(abs(vec3<u32>(54543u, global2.e.a.x, u_input.b)), vec3<bool>(global2.e.b.x, global2.e.b.x, false), firstTrailingBit(u_input.c), _wgslsmith_f_op_f32(global2.c * global2.a.d))) ^ select(-1i, (i32(-1i) * -13202i) >> (u_input.d.x % 32u), true));
    let var_5 = !vec4<bool>(true, all(vec3<bool>(false, global2.a.b.x, global2.a.b.x)) | true, (_wgslsmith_add_i32(-27836i, var_4) >> (~global2.b.x % 32u)) == func_1(vec3<bool>(true, global2.a.b.x, false), global2.a), true);
    let var_6 = Struct_3(vec3<f32>(-429f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -708f)), _wgslsmith_f_op_f32(min(-252f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c * -627f) * _wgslsmith_f_op_f32(global2.d - global2.d)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.d, global2.c, -2098f) * vec3<f32>(-2117f, global2.a.d, global2.c)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-828f, global2.c, 1346f)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c, -242f, 404f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-1119f, global2.c, 402f), vec3<f32>(661f, 589f, global2.a.d)))))));
    global2 = Struct_2(global2.a, u_input.d.zx, var_6.b, global2.d, Struct_1(_wgslsmith_mod_vec3_u32(func_4(global2.a, var_6.c.yz), _wgslsmith_div_vec3_u32(global2.a.a, ~global2.e.a)), global2.a.b, _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, global2.e.c.x, -1i) ^ vec3<i32>(var_4, var_0.x, var_0.x), firstTrailingBit(global2.a.c)) & u_input.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1334f, 1114f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_6.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(vec3<i32>(-1i, var_0.x, 12239i) << (reverseBits(vec3<u32>(global2.e.a.x, global2.b.x, u_input.b)) % vec3<u32>(32u))), -843f, vec3<u32>(~u_input.a, u_input.b, select(~(~17264u), reverseBits(select(31491u, 2774u, var_5.x)), all(var_5.wx))), global1[_wgslsmith_index_u32(~(global2.a.a.x >> (46572u % 32u)) ^ (~1u | u_input.a), 2u)] << (u_input.b % 32u));
}

