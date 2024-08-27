struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 11>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    global0 = array<vec4<f32>, 11>();
    var var_0 = _wgslsmith_dot_vec3_u32(u_input.a.yyw, vec3<u32>(47905u, 12923u, _wgslsmith_add_u32(~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b.x), u_input.a.wy)))) ^ u_input.b.x;
    var_0 = u_input.a.x;
    var var_1 = ~u_input.a.wyx ^ u_input.a.wxx;
    var_1 = min(vec3<u32>(18533u, select(1u, 4294967295u, true), abs(u_input.b.x)), _wgslsmith_clamp_vec3_u32(u_input.a.xzw, u_input.a.wxx, abs(u_input.a.xzx)));
    return _wgslsmith_div_i32(countOneBits(1i), firstLeadingBit(-851i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 20529u, 0u), u_input.a) % 32u))) < firstLeadingBit(37021i >> ((u_input.a.x | _wgslsmith_mult_u32(var_1.x, u_input.a.x)) % 32u));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2) -> bool {
    global0 = array<vec4<f32>, 11>();
    let var_0 = 0u;
    let var_1 = arg_1.e.b.x | arg_0.d.x;
    global0 = array<vec4<f32>, 11>();
    var var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(775f, arg_1.e.c, _wgslsmith_f_op_f32(round(-776f))), vec3<f32>(arg_1.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -224f), arg_1.c.x)), arg_1.e.a.x), vec3<bool>(arg_1.e.d.x, func_3() | true, true)));
    return true && !(var_2.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.e.c))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec3_i32(arg_1.zwx, _wgslsmith_add_vec3_i32(~vec3<i32>(arg_1.x, 2861i, 16615i), arg_1.zzx ^ arg_1.wxy) & (-vec3<i32>(arg_1.x, arg_1.x, arg_1.x) | (arg_1.zxx | arg_1.zzx))) & arg_1.zzy;
    global0 = array<vec4<f32>, 11>();
    var_0 = arg_1.xxw;
    var var_1 = !all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), func_2(Struct_4(true, vec3<bool>(true, true, true), vec2<bool>(true, true), vec4<i32>(var_0.x, -7657i, -1i, 2147483647i)), Struct_2(arg_1.x, vec4<bool>(true, true, true, true), vec3<f32>(965f, 694f, -1222f), var_0.x, Struct_1(global0[_wgslsmith_index_u32(46167u, 11u)], vec3<i32>(-16815i, -62675i, var_0.x), -1424f, vec4<bool>(true, false, true, false)))))) == true;
    var_0 = select(vec3<i32>(abs(arg_1.x << (countOneBits(arg_0.x) % 32u)), arg_1.x, _wgslsmith_dot_vec4_i32(firstTrailingBit(arg_1), _wgslsmith_div_vec4_i32(-arg_1, arg_1))), arg_1.wxw, all(vec2<bool>(select(true, true, false), _wgslsmith_f_op_f32(sign(-1221f)) <= _wgslsmith_f_op_f32(420f - -2181f))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(arg_0.x, 11u)]))), global0[_wgslsmith_index_u32(~(arg_2.x << (arg_0.x % 32u)), 11u)])))), -(vec3<i32>(78753i, ~var_0.x, ~(-2147483647i)) << (_wgslsmith_add_vec3_u32(vec3<u32>(arg_2.x, 3633u, 0u), firstTrailingBit(vec3<u32>(1u, u_input.b.x, arg_0.x))) % vec3<u32>(32u))), _wgslsmith_f_op_f32(sign(-179f)), vec4<bool>(true, !(~u_input.b.x == 1u), any(vec4<bool>(false, false, false, true)) && all(vec2<bool>(true, true)), true));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c));
    let var_1 = reverseBits(u_input.a.yw) << (u_input.b % vec2<u32>(32u));
    var var_2 = Struct_3(Struct_1(vec4<f32>(arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -905f) + 366f), arg_0.c, _wgslsmith_f_op_f32(f32(-1f) * -406f)), max(arg_0.b, vec3<i32>(arg_0.b.x, -57427i, arg_0.b.x)), _wgslsmith_f_op_f32(-arg_0.c), vec4<bool>(!(var_1.x != u_input.b.x), any(func_1(u_input.a, vec4<i32>(1i, arg_0.b.x, arg_0.b.x, 1i), var_1).d.zzz), func_1(vec4<u32>(53705u, var_1.x, 5071u, var_1.x), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.b.x, arg_0.b.x, 44727i, arg_0.b.x), vec4<i32>(-1i, arg_0.b.x, arg_0.b.x, arg_0.b.x)), ~var_1).d.x, true != arg_0.d.x)), ~var_1.x, arg_0.a.xyz, _wgslsmith_f_op_vec3_f32(exp2(arg_0.a.xxz)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.a.x, arg_0.c, 663f, arg_0.a.x))))), reverseBits(arg_0.b), arg_0.c, arg_0.d));
    var var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(var_2.b, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, 1u, 1u), _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(var_1.x, var_1.x, 302u, 0u))) >> (1u % 32u)), select(u_input.b, _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, var_1.x), vec2<u32>(0u, var_2.b)), var_1), true));
    var var_4 = ~1u;
    return var_2.e;
}

fn func_5(arg_0: Struct_5) -> vec2<f32> {
    global0 = array<vec4<f32>, 11>();
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -109f), _wgslsmith_f_op_f32(-arg_0.b.d.x), -838f, arg_0.a.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1164f, arg_0.b.c.x, arg_0.b.c.x, 666f), vec4<f32>(arg_0.a.c, -572f, arg_0.a.a.x, 1018f), arg_0.a.d)) * _wgslsmith_f_op_vec4_f32(-arg_0.a.a)))), vec3<i32>(-(~(~arg_0.a.b.x)), ~func_1(vec4<u32>(16482u, u_input.a.x, u_input.a.x, u_input.b.x), vec4<i32>(32228i, -56690i, arg_0.c, arg_0.c), vec2<u32>(64166u, 1u)).b.x << (_wgslsmith_dot_vec3_u32(u_input.a.www, vec3<u32>(u_input.a.x, arg_0.b.b, 23241u)) % 32u), arg_0.b.a.b.x), _wgslsmith_f_op_f32(1217f - _wgslsmith_f_op_f32(-arg_0.b.a.c)), !select(select(vec4<bool>(arg_0.b.e.d.x, arg_0.a.d.x, true, arg_0.b.e.d.x), !vec4<bool>(true, arg_0.b.a.d.x, arg_0.a.d.x, false), arg_0.b.a.d.x), arg_0.b.a.d, arg_0.b.e.d));
    var_0 = func_1(vec4<u32>(u_input.b.x, abs(1u), 2744u, ~arg_0.b.b), vec4<i32>(_wgslsmith_mult_i32(2718i, 1i), arg_0.a.b.x, arg_0.a.b.x, -2147483647i), ~u_input.b);
    let var_1 = Struct_2(_wgslsmith_sub_i32(~2147483647i, -(arg_0.a.b.x ^ var_0.b.x)) ^ _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(abs(var_0.b.zz), _wgslsmith_mult_vec2_i32(var_0.b.yx, vec2<i32>(var_0.b.x, var_0.b.x))), _wgslsmith_mod_i32(1i, ~arg_0.b.a.b.x)), !(!vec4<bool>(all(vec4<bool>(arg_0.b.a.d.x, var_0.d.x, false, true)), var_0.d.x, func_3(), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_0.a.wzx, var_0.a.ywx)), _wgslsmith_f_op_vec3_f32(abs(var_0.a.yyw)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-726f - -719f), -187f, all(var_0.d.zxw))), -1000f)), arg_0.a.b.x, func_4(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(arg_0.b.a.a)))), _wgslsmith_add_vec3_i32(select(arg_0.a.b, vec3<i32>(23706i, arg_0.b.a.b.x, -63288i), arg_0.a.d.xzz), vec3<i32>(arg_0.b.a.b.x, 2147483647i, 41919i)), _wgslsmith_f_op_f32(-arg_0.a.c), func_4(func_4(Struct_1(vec4<f32>(var_0.c, -1568f, 168f, -339f), vec3<i32>(arg_0.b.a.b.x, -4880i, arg_0.c), arg_0.b.e.c, vec4<bool>(var_0.d.x, false, false, false)))).d)));
    var var_2 = -(max(-2147483647i, var_0.b.x) | arg_0.a.b.x);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.a.zz, _wgslsmith_f_op_vec2_f32(-var_0.a.yz), !(_wgslsmith_f_op_f32(-var_1.c.x) >= _wgslsmith_f_op_f32(-var_0.c)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1415f, -238f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, 1271f) * var_1.c.zz)) - _wgslsmith_f_op_vec2_f32(func_1(u_input.a, vec4<i32>(arg_0.b.e.b.x, var_1.e.b.x, -44920i, -2147483647i), u_input.b).a.zw * arg_0.b.a.a.zx)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1078f, _wgslsmith_f_op_f32(-1584f * 851f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -195f)), _wgslsmith_f_op_f32(round(-155f)))), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(u_input.a.x, 11u)] * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 1u), 11u)] + _wgslsmith_f_op_vec4_f32(vec4<f32>(-780f, -254f, 338f, 723f) + vec4<f32>(-742f, -887f, 585f, -222f)))))));
    global0 = array<vec4<f32>, 11>();
    global0 = array<vec4<f32>, 11>();
    var var_1 = _wgslsmith_f_op_vec2_f32(func_5(Struct_5(func_4(func_1(u_input.a, vec4<i32>(1i, 1i, 1i, 1i), ~u_input.a.zx)), Struct_3(func_1(abs(u_input.a), max(vec4<i32>(1i, 5287i, 1i, -5663i), vec4<i32>(0i, 6947i, -70192i, -1i)), ~u_input.a.wx), ~u_input.a.x, _wgslsmith_div_vec3_f32(var_0.zww, var_0.wxy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-489f, 1000f, 723f) + vec3<f32>(var_0.x, var_0.x, 386f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -395f, var_0.x))), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1712f, var_0.x, var_0.x, var_0.x))), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, -2147483647i, -24005i), vec3<i32>(-1i, -1i, 0i)), 232f, vec4<bool>(true, true, true, true))), -1i ^ func_4(func_4(Struct_1(vec4<f32>(-352f, -280f, var_0.x, var_0.x), vec3<i32>(-24016i, -50104i, 5427i), var_0.x, vec4<bool>(true, false, false, true)))).b.x)));
    let var_2 = Struct_2(0i, !select(vec4<bool>(func_4(Struct_1(var_0, vec3<i32>(-24157i, 4453i, 25929i), -650f, vec4<bool>(true, true, true, false))).d.x, select(true, false, true), true, true), !func_4(Struct_1(vec4<f32>(var_1.x, 267f, -183f, 455f), vec3<i32>(2147483647i, 2147483647i, 0i), -430f, vec4<bool>(true, true, true, true))).d, !func_4(Struct_1(global0[_wgslsmith_index_u32(10293u, 11u)], vec3<i32>(26561i, 1i, 33574i), -321f, vec4<bool>(false, false, false, false))).d.x), var_0.zzz, -45939i, func_1(select(u_input.a, countOneBits(u_input.a), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), vec4<i32>(_wgslsmith_clamp_i32(-18542i, _wgslsmith_sub_i32(-1i, -1567i), ~14482i), -1i, abs(func_4(Struct_1(vec4<f32>(631f, var_1.x, var_0.x, -423f), vec3<i32>(20083i, 6881i, -1i), var_1.x, vec4<bool>(true, true, false, true))).b.x), -_wgslsmith_mod_i32(2147483647i, -60200i)), u_input.a.zz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(-reverseBits(vec2<i32>(var_2.e.b.x, var_2.d)), var_2.e.b.yz), var_2.e.b.xz), u_input.b & u_input.a.xz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1805f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.e.c, 1506f)) - 869f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_div_f32(352f, 346f)), -497f)))));
}

