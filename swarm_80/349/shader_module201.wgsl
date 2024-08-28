struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_5 {
    a: bool,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(1488f, vec3<u32>(4294967295u, 42763u, 17539u), vec4<bool>(true, true, false, true));

var<private> global1: Struct_5 = Struct_5(true, vec4<u32>(123863u, 1u, 1u, 4294967295u), vec4<f32>(2028f, 857f, 193f, 466f), vec3<f32>(298f, -420f, 1276f), true);

var<private> global2: array<f32, 24>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec4<u32>, arg_3: f32) -> bool {
    var var_0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(select(31717u, 16509u, false), countOneBits(0u), ~global1.b.x), global0.b) & global1.b.x;
    var var_1 = Struct_2(Struct_1(select(global0.c.x, true, all(select(global0.c.xx, global0.c.wy, global0.c.x))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-1510f - global1.d.x), _wgslsmith_f_op_f32(-global1.d.x), arg_3))), 1u, vec2<i32>(-5440i, _wgslsmith_div_i32(1624i, min(-2147483647i, -1i)))), Struct_1(false, global1.c.yzz, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.b.x, global1.b.x), vec2<u32>(0u, 42106u)), global0.b.x), ~_wgslsmith_sub_u32(global0.b.x, 4294967295u), firstTrailingBit(global0.b.x | 1u)), ~(~reverseBits(vec2<i32>(-2147483647i, -17630i)))), Struct_1(_wgslsmith_mod_u32(global0.b.x, arg_2.x) < (0u & global1.b.x), _wgslsmith_f_op_vec3_f32(global1.c.yzw * _wgslsmith_f_op_vec3_f32(global1.c.xzy * _wgslsmith_f_op_vec3_f32(global1.d - global1.c.yxw))), 0u << (_wgslsmith_sub_u32(1u, ~4294967295u) % 32u), ~vec2<i32>(1i, 1i)), Struct_1(any(!select(global0.c, vec4<bool>(true, false, false, global1.a), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global1.d), _wgslsmith_f_op_vec3_f32(global1.d + global1.d), any(vec2<bool>(false, global1.a))))), ~(reverseBits(global0.b.x) & 0u), reverseBits(firstTrailingBit(-vec2<i32>(14258i, 2147483647i)))));
    global2 = array<f32, 24>();
    var var_2 = any(!vec3<bool>(true, !(!global0.c.x), global0.c.x));
    var var_3 = -vec2<i32>(max(var_1.d.d.x, var_1.a.d.x), _wgslsmith_add_i32(var_1.d.d.x, abs(var_1.a.d.x) << (firstTrailingBit(64838u) % 32u)));
    return !global0.c.x;
}

fn func_2() -> f32 {
    global1 = Struct_5(select(!global0.c.x, !func_3(_wgslsmith_f_op_f32(ceil(-410f)), -527f, select(vec4<u32>(30046u, u_input.a, 1u, global0.b.x), global1.b, global1.e), global2[_wgslsmith_index_u32(57486u, 24u)]), ~(~global0.b.x) > 1u), vec4<u32>(abs(34329u), 1u, u_input.a, _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(global1.b, vec4<u32>(global1.b.x, u_input.a, 4294967295u, global1.b.x)), ~4294967295u), global0.b.x, 0u)), global1.c, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-408f, global1.c.x, -2032f))) + global1.c.yzx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1456f, global0.a, global1.c.x), global1.d)))))), false);
    global0 = Struct_4(_wgslsmith_f_op_f32(-global1.d.x), ~select(global1.b.zxz, firstLeadingBit(vec3<u32>(1u, 4294967295u, 0u)), !vec3<bool>(global0.c.x, true, false)) | _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, 1u, u_input.a), global1.b.yxx, vec3<u32>(global0.b.x, ~global1.b.x, _wgslsmith_add_u32(global1.b.x, 9372u))), vec4<bool>(!global0.c.x, false, any(!select(global0.c.zzy, global0.c.zyy, vec3<bool>(true, true, true))), any(!(!vec2<bool>(global1.a, true)))));
    var var_0 = Struct_3(vec4<i32>(2147483647i, ~1i, _wgslsmith_mult_i32(1i, firstTrailingBit(1i)), _wgslsmith_add_i32(1i, -2147483647i)));
    var var_1 = vec2<bool>(global1.a, global0.c.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.d.zx - _wgslsmith_f_op_vec2_f32(ceil(global1.c.xz))) + global1.d.yx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global1.d.xy)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.d.yx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(global0.b.x, 24u)], global2[_wgslsmith_index_u32(0u, 24u)]))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, 229f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2[_wgslsmith_index_u32(0u, 24u)], global1.d.x))))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -186f) - 971f), _wgslsmith_f_op_f32(-global0.a), !func_3(358f, global0.a, global1.b, global2[_wgslsmith_index_u32(global0.b.x, 24u)])))), 231f);
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> vec3<i32> {
    global0 = Struct_4(_wgslsmith_f_op_f32(func_2()), vec3<u32>(_wgslsmith_div_u32(~arg_1.x, 5942u) ^ (global0.b.x >> (1u % 32u)), 4294967295u, 119460u | ~arg_1.x), select(vec4<bool>(!global0.c.x != (global1.d.x > global2[_wgslsmith_index_u32(4294967295u, 24u)]), !global1.a, true, all(vec2<bool>(true, global0.c.x))), vec4<bool>(true, global1.e, all(vec2<bool>(global1.e, global1.e)), all(select(vec4<bool>(global0.c.x, global0.c.x, false, global0.c.x), vec4<bool>(true, false, true, false), global1.a))), vec4<bool>(select(global0.b.x <= 4294967295u, false, global0.c.x), true, false, global0.c.x)));
    var var_0 = global1.b.x;
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_f32(-1137f, _wgslsmith_f_op_f32(sign(global1.c.x))) == global0.a, _wgslsmith_f_op_vec3_f32(select(global1.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, global0.a, global1.c.x), vec3<f32>(-383f, global1.c.x, global1.c.x))) - global1.d), global0.c.xzy)), arg_1.x, min(vec2<i32>(0i, 51275i), vec2<i32>(-15724i, -2147483647i)) << (arg_1.zy % vec2<u32>(32u))), Struct_1(false || (~u_input.a > ~31177u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global1.c.zww))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1309f, 1273f)))), arg_1.x, vec2<i32>(-2147483647i >> (u_input.a % 32u), ~(-1i)) ^ ~(-vec2<i32>(-51111i, 2147483647i))), Struct_1(!all(select(global0.c, global0.c, global0.c)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1978f - -860f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), global0.a)), 0u, ~_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -68895i) << (vec2<u32>(global0.b.x, u_input.a) % vec2<u32>(32u)), countOneBits(vec2<i32>(-25379i, 28638i)))), Struct_1(true, global1.d, (25583u & global1.b.x) | 1u, ~select(vec2<i32>(49776i, 1i), reverseBits(vec2<i32>(-10653i, 0i)), !global0.c.zz)));
    let var_2 = 30521i & _wgslsmith_add_i32(var_1.c.d.x, var_1.a.d.x);
    let var_3 = ~42902u;
    return ~_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 48102i, -2147483647i), vec3<i32>(var_1.d.d.x, var_2, var_2) >> (vec3<u32>(0u, arg_1.x, var_3) % vec3<u32>(32u))), (vec3<i32>(-26381i, -1i, 23759i) | vec3<i32>(0i, 2147483647i, var_2)) & -vec3<i32>(var_2, -15829i, var_2)), select(-vec3<i32>(var_1.b.d.x, var_2, var_2), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(57266i, var_2, var_1.b.d.x), vec3<i32>(var_2, 2147483647i, var_1.a.d.x), vec3<i32>(var_1.d.d.x, var_1.a.d.x, var_1.d.d.x)), select(global0.c.xzy, vec3<bool>(global1.e, global1.e, var_1.a.a), true)));
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_5, arg_3: vec4<u32>) -> u32 {
    let var_0 = firstLeadingBit(~min(_wgslsmith_dot_vec2_u32(~global1.b.zw, vec2<u32>(13850u, 55717u)), _wgslsmith_mod_u32(min(9278u, u_input.a), 0u)));
    var var_1 = 4294967295u;
    var_1 = 28146u;
    var_1 = ~(~(~_wgslsmith_add_u32(u_input.a, var_0))) << ((_wgslsmith_sub_u32(~(~u_input.a), 1u) | var_0) % 32u);
    global0 = Struct_4(arg_2.d.x, ~vec3<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_2.b.x, 4294967295u, arg_3.x), ~55717u), _wgslsmith_mod_u32(min(17821u, global0.b.x), global0.b.x >> (1u % 32u)), _wgslsmith_sub_u32(arg_3.x, _wgslsmith_clamp_u32(17440u, arg_2.b.x, global1.b.x))), global0.c);
    return ~(~(~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global1.b.x, 28015u, 83301u, arg_2.b.x)), ~vec4<u32>(23624u, var_0, var_0, var_0))));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: vec4<bool>) -> Struct_5 {
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>((-arg_1.d.x << (global1.b.x % 32u)) >> (firstTrailingBit(min(0u, global0.b.x)) % 32u), _wgslsmith_add_i32(-2147483647i, abs(arg_1.d.x)), 0i), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.d.x, -1i, arg_1.d.x) << (~global1.b.wzy % vec3<u32>(32u)), ~(vec3<i32>(arg_1.d.x, arg_1.d.x, arg_1.d.x) << (global0.b % vec3<u32>(32u))), -_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -1i, arg_1.d.x), vec3<i32>(0i, 16156i, -2867i))), vec3<i32>(arg_1.d.x, _wgslsmith_add_i32(~82204i, -1i), arg_1.d.x)));
    let var_1 = firstTrailingBit(_wgslsmith_dot_vec3_u32(select(global1.b.wxw, ~abs(vec3<u32>(global1.b.x, 4294967295u, 7043u)), all(select(vec4<bool>(global1.a, false, arg_3.x, false), global0.c, global1.a))), vec3<u32>(1u, u_input.a ^ 4294967295u, 5564u)));
    let var_2 = ~vec3<u32>(0u, 102837u, _wgslsmith_div_u32(28273u, 4294967295u) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(28411u, u_input.a, 4294967295u, 1u), global1.b) % 32u));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(4294967295u, 24u)])))))), var_2 >> (vec3<u32>(min(var_1, ~0u), max(5653u | var_1, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, global0.b.x), global1.b.xzy)), global0.b.x) % vec3<u32>(32u)), vec4<bool>(global1.e, !any(select(vec4<bool>(true, false, global1.e, global0.c.x), global0.c, false)), global1.a, global1.e));
    var var_4 = Struct_3(max(~(~(-vec4<i32>(arg_1.d.x, 2221i, var_0.x, var_0.x))), _wgslsmith_mult_vec4_i32(~min(vec4<i32>(arg_1.d.x, var_0.x, 1i, -42691i), vec4<i32>(arg_1.d.x, 2147483647i, var_0.x, -1i)), vec4<i32>(_wgslsmith_mult_i32(65536i, arg_1.d.x), 33282i, abs(var_0.x), 1i))));
    return Struct_5(!var_3.c.x, ~select(vec4<u32>(~4294967295u, var_3.b.x, ~22388u, global1.b.x), abs(vec4<u32>(arg_1.c, 1u, var_1, 4294967295u)), _wgslsmith_f_op_f32(step(268f, global0.a)) <= _wgslsmith_f_op_f32(294f + arg_1.b.x)), global1.c, global1.d, all(arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 24>();
    global1 = Struct_5(true, ~reverseBits(vec4<u32>(global1.b.x, global1.b.x, 4294967295u, global0.b.x)) >> (min(global1.b, (global1.b & vec4<u32>(4294967295u, u_input.a, 0u, u_input.a)) ^ (vec4<u32>(global1.b.x, u_input.a, 19124u, 12018u) & vec4<u32>(50823u, 1u, 0u, 0u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global0.a)))), 300f, _wgslsmith_f_op_f32(global0.a - global2[_wgslsmith_index_u32(global1.b.x, 24u)]), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, -326f) - global0.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 24u)] + global1.d.x))), 1136f) * _wgslsmith_f_op_vec3_f32(-global1.c.yzx)), true);
    var var_0 = global1.a;
    global1 = func_5(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(func_4(func_1(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(0u, 24u)], global1.c.x)), vec4<u32>(global1.b.x, global0.b.x, 3552u, global1.b.x) >> (global1.b % vec4<u32>(32u))), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1355f))), Struct_5(true, global1.b, _wgslsmith_f_op_vec4_f32(step(global1.c, global1.c)), _wgslsmith_f_op_vec3_f32(max(global1.d, vec3<f32>(1471f, -589f, global0.a))), !global0.c.x), min(max(global1.b, global1.b), global1.b)), 24u)]), Struct_1(global0.a <= global2[_wgslsmith_index_u32(reverseBits(u_input.a >> (4294967295u % 32u)), 24u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global1.d, vec3<f32>(global2[_wgslsmith_index_u32(4567u, 24u)], global0.a, global0.a), global1.a)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.a, global2[_wgslsmith_index_u32(4294967295u, 24u)], -1061f)))), global1.c.zwy), 12672u, vec2<i32>(0i, countOneBits(0i))), _wgslsmith_f_op_f32(floor(947f)), vec4<bool>(true, !select(global1.e && global0.c.x, global0.c.x, all(vec4<bool>(true, false, false, false))), select(func_3(global1.d.x, -840f, global1.b, global2[_wgslsmith_index_u32(global0.b.x, 24u)]), false | global0.c.x, all(global0.c.wyz)) | select(false, global1.e | global0.c.x, false), func_3(-552f, global0.a, ~global1.b, global2[_wgslsmith_index_u32(~(~4294967295u), 24u)])));
    let var_1 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(-8602i, reverseBits(vec4<i32>(~_wgslsmith_div_i32(-1i, 37415i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, -48350i, -38269i), ~vec4<i32>(0i, 1i, -34634i, 1i)), min(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -46762i), vec2<i32>(79453i, 2147483647i)), -7830i), firstTrailingBit(-2147483647i))), _wgslsmith_sub_vec3_i32(~countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(1i, -2147483647i, -2713i), vec3<i32>(-4768i, 1i, 0i))), _wgslsmith_mod_vec3_i32(-vec3<i32>(1i, 1i, 1i), max(-vec3<i32>(-1i, 1i, 17933i), ~vec3<i32>(-1i, 2147483647i, -1357i)))));
}

