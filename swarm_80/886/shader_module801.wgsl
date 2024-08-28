struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: f32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_2, 14>;

var<private> global2: vec3<f32>;

var<private> global3: array<Struct_3, 8>;

var<private> global4: array<u32, 25> = array<u32, 25>(4294967295u, 32028u, 4294967295u, 8254u, 1u, 4294967295u, 44231u, 41350u, 14613u, 37273u, 0u, 1u, 0u, 0u, 98637u, 1u, 36863u, 94381u, 64734u, 50162u, 57250u, 0u, 4294967295u, 28853u, 49404u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: u32) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -257f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -473f))))))));
    let var_1 = arg_1.d.b;
    let var_2 = Struct_1(2880u, select(select(!vec2<bool>(false, arg_1.d.b), select(vec2<bool>(var_1, arg_1.d.b), vec2<bool>(true, var_1), select(vec2<bool>(false, var_1), vec2<bool>(true, arg_1.d.b), vec2<bool>(arg_1.d.b, false))), arg_1.d.b), vec2<bool>(any(!vec4<bool>(var_1, true, arg_1.d.b, var_1)), true), !vec2<bool>(var_1, global2.x < arg_1.d.c)), global2.x, _wgslsmith_f_op_f32(-global2.x), u_input.b.x);
    return global0.yx;
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: vec4<i32>) -> vec2<bool> {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.xw, u_input.c.yy), 8u)];
    var var_1 = var_0.d.a;
    global0 = u_input.b.zzz | vec3<i32>(1i, -abs(-39162i), ~(var_0.a >> (~19768u % 32u)));
    let var_2 = 14087i;
    global2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(146f, var_1.x)) * -1059f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-802f, global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.a.x) - var_0.d.a.x));
    return !(!(!select(vec2<bool>(false, var_0.d.b), !vec2<bool>(var_0.d.b, true), all(vec3<bool>(true, var_0.d.b, true)))));
}

fn func_5(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_3, arg_3: Struct_1) -> vec2<bool> {
    global4 = array<u32, 25>();
    let var_0 = global1[_wgslsmith_index_u32(u_input.c.x >> (1u % 32u), 14u)];
    var var_1 = arg_3.e;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.x, 420f), _wgslsmith_f_op_vec2_f32(exp2(arg_0))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0 - arg_2.d.a.zx))));
    var var_3 = arg_2.b;
    return arg_3.b;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(4294967295u, func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(global2.xy)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.yz + global2.xx) * _wgslsmith_f_op_vec2_f32(-global2.yz))), _wgslsmith_f_op_f32(-1f), global3[_wgslsmith_index_u32(~(~(~1u)), 8u)], Struct_1(~u_input.a, func_4(_wgslsmith_div_u32(4294967295u, 4294967295u), func_3(0u, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 25u)], 25u)], 25u)], 8u)], 62031u), u_input.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.x))), global2.x, _wgslsmith_mult_i32(-1i, _wgslsmith_mod_i32(global0.x, global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1243f) * _wgslsmith_div_f32(1179f, _wgslsmith_f_op_f32(-global2.x)))), global2.x, ~(-global0.x));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(923f, 1313f, 1253f)))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, 528f, var_0.c)), vec3<f32>(753f, global2.x, var_0.d)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.c, var_0.d, global2.x)))))));
    let var_1 = global3[_wgslsmith_index_u32(~(~0u), 8u)];
    let var_2 = vec3<bool>(false, false, !all(!vec3<bool>(var_1.d.b, var_1.d.b, var_0.b.x)));
    var var_3 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(round(-471f)), _wgslsmith_f_op_f32(min(1f, -1000f)), global2.x), -global0.x < _wgslsmith_mod_i32(func_3(1u & global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c.x, 25u)], 25u)], global3[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(0u, 25u)], 8u)], global4[_wgslsmith_index_u32(~u_input.d.x, 25u)]).x, _wgslsmith_add_i32(_wgslsmith_mult_i32(-7079i, 0i), var_0.e)), 245f);
    return var_1.d;
}

fn func_6(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec2<bool>) -> vec4<bool> {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(8256u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(~u_input.a, global4[_wgslsmith_index_u32(~(~20646u), 25u)]), u_input.c.x)), 14u)];
    global3 = array<Struct_3, 8>();
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.a, var_0.a)))), vec3<f32>(_wgslsmith_f_op_f32(min(-566f, 1050f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), arg_0.c), !select(select(vec3<bool>(arg_0.b, arg_0.b, arg_2.x), vec3<bool>(arg_2.x, false, arg_2.x), vec3<bool>(arg_0.b, false, arg_0.b)), select(vec3<bool>(true, var_0.b, arg_2.x), vec3<bool>(arg_2.x, arg_0.b, true), vec3<bool>(true, arg_0.b, true)), !arg_2.x))));
    var var_1 = Struct_1(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.d.zw ^ abs(u_input.c.zx), _wgslsmith_clamp_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(65417u, 25u)], 25u)], 25u)], 16005u), ~u_input.d.yw, ~u_input.c.ww)) | max(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 34608u, 5413u), vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c.x, 25u)], 25u)], 57793u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 25u)], 25u)])), u_input.c.x >> (0u % 32u), 1u), (global4[_wgslsmith_index_u32(u_input.c.x, 25u)] ^ 6477u) | ~101748u), 25u)], !vec2<bool>(select(any(vec4<bool>(var_0.b, var_0.b, arg_0.b, arg_0.b)), true, func_5(global2.zz, 486f, Struct_3(global0.x, 1u, 0i, Struct_2(var_0.a, true, 532f)), Struct_1(0u, arg_2, var_0.a.x, global2.x, 36329i)).x), select(!arg_2.x, false, false)), _wgslsmith_f_op_f32(abs(var_0.a.x)), 113f, global0.x);
    let var_2 = select(min(u_input.d, vec4<u32>(1u, 0u, _wgslsmith_clamp_u32(~0u, _wgslsmith_sub_u32(u_input.c.x, 0u), u_input.a >> (4294967295u % 32u)), abs(u_input.a))), u_input.c, false);
    return vec4<bool>(arg_0.b, func_5(_wgslsmith_f_op_vec2_f32(arg_0.a.yy + vec2<f32>(var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1469f, global3[_wgslsmith_index_u32(var_1.a, 8u)], Struct_1(_wgslsmith_div_u32(var_2.x >> (var_2.x % 32u), global4[_wgslsmith_index_u32(7732u, 25u)] >> (u_input.a % 32u)), func_5(func_2().a.xz, global2.x, global3[_wgslsmith_index_u32(38760u << (var_2.x % 32u), 8u)], Struct_1(var_2.x, vec2<bool>(var_0.b, var_0.b), -118f, var_1.d, u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-858f + -1767f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1000f)))), select(global0.x, _wgslsmith_mult_i32(arg_1.x, -2147483647i), func_5(vec2<f32>(global2.x, 1949f), -365f, Struct_3(-2147483647i, u_input.a, 2147483647i, arg_0), Struct_1(25885u, arg_2, var_0.a.x, arg_0.c, -25673i)).x))).x, _wgslsmith_div_i32(~global0.x >> (max(global4[_wgslsmith_index_u32(10694u, 25u)], 0u) % 32u), func_3(_wgslsmith_div_u32(u_input.d.x, 1u), Struct_3(var_1.e, u_input.d.x, -2147483647i, Struct_2(vec3<f32>(var_1.d, arg_0.c, arg_0.a.x), arg_2.x, -298f)), var_1.a).x) != (var_1.e << (global4[_wgslsmith_index_u32(abs(var_1.a << (global4[_wgslsmith_index_u32(19436u, 25u)] % 32u)), 25u)] % 32u)), true);
}

fn func_7(arg_0: vec2<f32>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = !any(!select(!vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(true, false, arg_1.x), !arg_1.yzx));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(57684u, ~abs(min(1u ^ u_input.d.x, _wgslsmith_div_u32(u_input.d.x, u_input.c.x))), _wgslsmith_div_u32(66598u, u_input.d.x)), 14u)];
    var var_2 = abs(u_input.c);
    let var_3 = Struct_3(-2147483647i, ~u_input.d.x, ~_wgslsmith_add_i32(u_input.b.x, _wgslsmith_div_i32(-12506i, reverseBits(global0.x))), Struct_2(var_1.a, func_2().b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -622f) + global2.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + -957f), -1233f))));
    var var_4 = min(max(-u_input.b.x, min(countOneBits(global0.x), firstLeadingBit(global0.x))), func_3(global4[_wgslsmith_index_u32(min(~u_input.c.x, 67454u), 25u)], Struct_3(-7295i, _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(29678u, 25u)], u_input.d.x), -u_input.b.x, Struct_2(var_3.d.a, true, 327f)), ~1u).x) & abs(-2147483647i);
    return Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~var_2.yw, var_2.wx | u_input.d.xy), 25u)], ~(50385u | var_2.x)), u_input.d.wyw), func_5(_wgslsmith_f_op_vec2_f32(-var_1.a.yy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 1f)), Struct_3(_wgslsmith_div_i32(var_3.a, abs(1i)), countOneBits(reverseBits(u_input.d.x)), global0.x, func_2()), Struct_1(~(var_2.x << (46072u % 32u)), func_4(33500u, u_input.b.wy, -vec4<i32>(1i, global0.x, u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(min(var_1.a.x, func_2().c)), -572f, func_3(_wgslsmith_clamp_u32(1u, 1u, var_2.x), Struct_3(1i, 30634u, u_input.b.x, global1[_wgslsmith_index_u32(var_3.b, 14u)]), ~4294967295u).x)), var_3.d.c, 1177f, -27107i);
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_2) -> StorageBuffer {
    global3 = array<Struct_3, 8>();
    var var_0 = func_7(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-248f, _wgslsmith_f_op_f32(f32(-1f) * -385f)), global2.yx), arg_3.a.yx), select(!vec4<bool>(false, true, !arg_2.d.b, true), func_6(func_2(), u_input.b, !vec2<bool>(true, arg_2.d.b)), false));
    let var_1 = Struct_1(arg_1, func_5(vec2<f32>(-1014f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -459f))), arg_3.c, Struct_3(var_0.e << (1u % 32u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, var_0.a, 0u), vec3<u32>(arg_2.b, var_0.a, arg_1), arg_2.d.b), u_input.d.xzy), 2147483647i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(15499u, arg_2.b, global4[_wgslsmith_index_u32(arg_1, 25u)]), u_input.d.ywx | u_input.c.zxx), 14u)]), func_7(_wgslsmith_f_op_vec2_f32(global2.yy * vec2<f32>(var_0.d, arg_2.d.c)), !func_6(arg_3, u_input.b, vec2<bool>(var_0.b.x, arg_3.b)))), global2.x, arg_3.a.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(arg_0.x, 2147483647i, 34721i, -4676i), vec4<i32>(0i, 2147483647i, -1i, 1i)), u_input.b), 40846i) << (firstTrailingBit(~60519u) % 32u));
    var var_2 = func_7(global2.xz, vec4<bool>(var_1.b.x, !any(vec3<bool>(arg_3.b, true, arg_3.b)), arg_3.b, any(select(vec3<bool>(true, var_1.b.x, true), vec3<bool>(var_0.b.x, true, false), vec3<bool>(true, false, var_0.b.x)))));
    global3 = array<Struct_3, 8>();
    return StorageBuffer(~var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1343f))))) - var_1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.x, _wgslsmith_div_f32(func_2().a.x, 759f), select(!var_0.b.x, !arg_2.d.b, true))) * _wgslsmith_f_op_f32(-196f + var_0.c)), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let x = u_input.a;
    s_output = func_1(vec3<i32>(-49914i, 2147483647i, -2147483647i ^ u_input.b.x), 47248u >> (u_input.d.x % 32u), Struct_3(17411i, ~49536u, -_wgslsmith_dot_vec4_i32(u_input.b << (u_input.d % vec4<u32>(32u)), u_input.b), global1[_wgslsmith_index_u32(abs(52269u), 14u)]), global1[_wgslsmith_index_u32(~var_0, 14u)]);
}

