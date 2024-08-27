struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<i32>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(-46458i), Struct_1(-4795i), Struct_1(0i), Struct_1(15278i), Struct_1(10743i), Struct_1(i32(-2147483648)), Struct_1(1571i), Struct_1(2147483647i), Struct_1(40777i), Struct_1(i32(-2147483648)), Struct_1(-33570i), Struct_1(0i), Struct_1(1i), Struct_1(34450i), Struct_1(-67171i), Struct_1(0i), Struct_1(-32562i), Struct_1(0i), Struct_1(1i), Struct_1(-30629i), Struct_1(2147483647i), Struct_1(1i), Struct_1(7765i), Struct_1(-43777i), Struct_1(-1i));

var<private> global1: array<i32, 5> = array<i32, 5>(19522i, i32(-2147483648), 1i, -5259i, -35606i);

var<private> global2: array<vec3<bool>, 7>;

var<private> global3: array<vec2<u32>, 7>;

var<private> global4: Struct_3;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>) -> vec4<f32> {
    let var_0 = Struct_3(Struct_1(~global4.c.x), _wgslsmith_f_op_vec4_f32(-global4.b), vec2<i32>(-1i, ~global4.a.a), global0[_wgslsmith_index_u32(min(~(~55040u) ^ (arg_0 & arg_1.x), min(_wgslsmith_mod_u32(arg_0, _wgslsmith_clamp_u32(11949u, arg_1.x, 38099u)), firstLeadingBit(arg_1.x))), 25u)], false);
    global4 = Struct_3(global4.a, var_0.b, ~vec2<i32>(-2147483647i, 2147483647i), global4.d, !(!var_0.e));
    global0 = array<Struct_1, 25>();
    let var_1 = Struct_3(Struct_1(global1[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(arg_1.x, 0u), arg_0) ^ u_input.a, 5u)]), _wgslsmith_f_op_vec4_f32(ceil(global4.b)), -vec2<i32>(-2147483647i, _wgslsmith_sub_i32(firstLeadingBit(global1[_wgslsmith_index_u32(19389u, 5u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(44157i, global4.a.a, 19652i, global1[_wgslsmith_index_u32(1u, 5u)]), vec4<i32>(-2147483647i, 2108i, global4.d.a, global1[_wgslsmith_index_u32(10140u, 5u)])))), Struct_1(-57595i), false);
    let var_2 = global4.b.x;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-125f, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1681f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2186f, var_1.b.x, var_1.b.x, global4.b.x))))) + vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(527f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-693f - var_1.b.x))))), global4.b.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_1.b.zww)), _wgslsmith_div_vec3_f32(vec3<f32>(-1091f, _wgslsmith_f_op_f32(arg_2 - -818f), _wgslsmith_f_op_f32(-1151f + -1296f)), vec3<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(exp2(arg_2)), global4.b.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -615f, arg_0.a.x)) + vec3<f32>(arg_0.a.x, global4.b.x, 2081f)))), select(global2[_wgslsmith_index_u32(min(u_input.c, min(0u, min(u_input.b.x, 23968u))), 7u)], arg_0.e, all(global2[_wgslsmith_index_u32(~(~u_input.b.x), 7u)]))));
    let var_1 = countOneBits(vec4<i32>(-82210i, global1[_wgslsmith_index_u32(~u_input.c, 5u)], reverseBits(24892i), -2147483647i) >> ((vec4<u32>(1u, 0u, 0u, 41642u) << (_wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(0u, u_input.a, u_input.c, 20080u), u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u))) << (~((select(vec4<u32>(21566u, u_input.b.x, u_input.c, 0u), u_input.b, vec4<bool>(arg_0.d, arg_0.d, arg_0.e.x, true)) >> (~vec4<u32>(48740u, u_input.c, 1u, u_input.a) % vec4<u32>(32u))) & u_input.b) % vec4<u32>(32u));
    global0 = array<Struct_1, 25>();
    global2 = array<vec3<bool>, 7>();
    let var_2 = arg_0;
    return select(!vec4<bool>(var_2.d, var_2.d, false, global4.e), !select(select(vec4<bool>(global4.e, false, true, true), !vec4<bool>(true, true, false, global4.e), vec4<bool>(arg_0.d, false, arg_0.d, true)), !(!vec4<bool>(var_2.d, true, global4.e, true)), !vec4<bool>(false, var_2.e.x, false, global4.e)), !global4.e);
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(min(231f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-783f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.b.x + arg_0.b.x))), arg_0.b.x)));
    let var_1 = arg_1;
    global1 = array<i32, 5>();
    let var_2 = arg_0.a;
    let var_3 = select(func_4(Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.b.wyz + arg_0.b.zyw), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.b.x, -2591f, -1384f))), abs(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 5u)], var_2.a, global4.c.x)), countOneBits(vec2<i32>(7671i, -1i)), any(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, var_1), 7u)]), select(select(global2[_wgslsmith_index_u32(28178u, 7u)], vec3<bool>(true, global4.e, global4.e), false), select(global2[_wgslsmith_index_u32(var_1, 7u)], global2[_wgslsmith_index_u32(1u, 7u)], global4.e), arg_0.e)), Struct_3(Struct_1(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(var_1, 5u)], global4.c.x)), _wgslsmith_f_op_vec4_f32(func_3(122629u, vec3<u32>(arg_1, 30013u, 4294967295u))), _wgslsmith_mult_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(46608u, 5u)], -1i), global4.c), arg_0.a, arg_0.e), _wgslsmith_f_op_f32(exp2(global4.b.x))), !vec4<bool>(global4.b.x >= _wgslsmith_f_op_f32(arg_0.b.x + 452f), global4.e, !(!arg_0.e), true), true || (u_input.c >= _wgslsmith_add_u32(0u, 0u)));
    return arg_0.b.x;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = global4.b.x;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_3(global4.a, _wgslsmith_f_op_vec4_f32(-global4.b), _wgslsmith_mod_vec2_i32(-vec2<i32>(arg_2.x, -7762i), global4.c & vec2<i32>(7122i, 29078i)), Struct_1(_wgslsmith_add_i32(-10263i, arg_1)), _wgslsmith_f_op_f32(select(global4.b.x, 459f, true)) >= _wgslsmith_f_op_f32(280f * global4.b.x)), ~u_input.b.x >> (u_input.c % 32u))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(948f * global4.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global4.b.x + 387f), global4.b.x))))));
    let var_2 = Struct_2(global4.b.wyy, vec3<i32>(global4.d.a, global1[_wgslsmith_index_u32(~u_input.c & (~109893u ^ u_input.a), 5u)], -2147483647i), firstTrailingBit(min(~arg_2.yy << (~global3[_wgslsmith_index_u32(u_input.b.x, 7u)] % vec2<u32>(32u)), global4.c)), true, !vec3<bool>(arg_0, true, false));
    return Struct_1(-12529i);
}

fn func_5(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global4.b.zzz - vec3<f32>(-631f, -264f, -1106f))))), _wgslsmith_mod_vec3_i32((max(vec3<i32>(arg_0.a, -2147483647i, arg_0.a), vec3<i32>(arg_0.a, global4.c.x, global1[_wgslsmith_index_u32(u_input.a, 5u)])) >> (u_input.b.wyw % vec3<u32>(32u))) ^ -(~vec3<i32>(global4.d.a, global4.c.x, -2147483647i)), vec3<i32>(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(0u, 5u)], arg_0.a, 4658i), -global1[_wgslsmith_index_u32(1u, 5u)], abs(-5395i)) ^ _wgslsmith_div_vec3_i32(vec3<i32>(-39346i, 17299i, global1[_wgslsmith_index_u32(0u, 5u)]) >> (u_input.b.yww % vec3<u32>(32u)), vec3<i32>(arg_0.a, global4.a.a, -15070i) & vec3<i32>(global1[_wgslsmith_index_u32(0u, 5u)], arg_0.a, arg_0.a))), firstTrailingBit(~(global4.c ^ vec2<i32>(0i, 2147483647i)) ^ vec2<i32>(global4.c.x, 1i)), min(-52277i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, 1i) >> (vec2<u32>(32515u, u_input.c) % vec2<u32>(32u)), global4.c)) != arg_0.a, !vec3<bool>(true, global4.e, global4.e));
    global0 = array<Struct_1, 25>();
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~u_input.b.x, ~u_input.c), u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.b.x, 39485u), u_input.b.ywx), u_input.b.x), u_input.b) != u_input.c;
    let var_2 = func_4(var_0, Struct_3(func_1(global4.e, global4.c.x, select(firstLeadingBit(vec4<i32>(-16017i, 2147483647i, -1i, 1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.x, 2147483647i, -10753i, -34356i), vec4<i32>(var_0.b.x, -8625i, arg_0.a, global4.a.a)), !global4.e)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global4.b * vec4<f32>(137f, -2257f, var_0.a.x, -792f)), vec4<f32>(var_0.a.x, 1389f, _wgslsmith_div_f32(1276f, global4.b.x), _wgslsmith_div_f32(1132f, var_0.a.x)))), countOneBits(global4.c), func_1(!var_0.e.x, reverseBits(-7678i), _wgslsmith_mult_vec4_i32(select(vec4<i32>(-1i, global1[_wgslsmith_index_u32(0u, 5u)], 3022i, 34154i), vec4<i32>(1i, 2147483647i, 0i, 18774i), var_0.d), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 21506i, global4.a.a, global4.c.x), vec4<i32>(var_0.c.x, -4118i, 3544i, 1i)))), !func_4(Struct_2(global4.b.zxw, vec3<i32>(18940i, global4.d.a, global1[_wgslsmith_index_u32(1u, 5u)]), global4.c, true, var_0.e), Struct_3(Struct_1(12870i), global4.b, vec2<i32>(32180i, global4.a.a), Struct_1(-2147483647i), true), _wgslsmith_f_op_f32(-global4.b.x)).x), global4.b.x).xzx;
    return vec3<bool>(any(select(!select(var_0.e.zz, var_0.e.zx, var_0.e.x), vec2<bool>(var_2.x, !var_2.x), select(vec2<bool>(global4.e, true), select(var_2.xy, var_2.zx, var_0.e.xy), true))), !(var_2.x | true), any(!vec3<bool>(all(vec4<bool>(global4.e, var_2.x, var_0.d, false)), var_0.e.x, false)));
}

fn func_6(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: vec3<bool>) -> Struct_3 {
    let var_0 = u_input.c;
    var var_1 = select(!(!(!func_4(Struct_2(vec3<f32>(-794f, global4.b.x, global4.b.x), vec3<i32>(65871i, global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(1u, 5u)]), global4.c, true, vec3<bool>(false, false, global4.e)), Struct_3(Struct_1(global4.c.x), global4.b, vec2<i32>(-2147483647i, 1i), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 5u)]), false), arg_0).zyy)), !vec3<bool>(func_5(Struct_1(40154i)).x, all(func_4(Struct_2(vec3<f32>(global4.b.x, global4.b.x, arg_0), vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(10432u, 5u)], 18775i), vec2<i32>(global1[_wgslsmith_index_u32(154u, 5u)], -1i), global4.e, vec3<bool>(false, arg_3.x, true)), Struct_3(global0[_wgslsmith_index_u32(4294967295u, 25u)], global4.b, global4.c, Struct_1(global1[_wgslsmith_index_u32(var_0, 5u)]), true), -622f)), !all(global2[_wgslsmith_index_u32(1u, 7u)])), vec3<bool>(true, all(arg_3), !(global4.c.x <= reverseBits(1i))));
    global0 = array<Struct_1, 25>();
    var var_2 = arg_3.x;
    global2 = array<vec3<bool>, 7>();
    return Struct_3(global4.d, vec4<f32>(_wgslsmith_f_op_f32(trunc(588f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(~4294967295u, ~arg_2)).x), -556f, _wgslsmith_f_op_f32(f32(-1f) * -343f)), vec2<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global4.a.a, 48620i, 1i, global4.c.x), min(vec4<i32>(-2147483647i, 31032i, global4.a.a, -2147483647i), vec4<i32>(global4.a.a, global4.a.a, global4.d.a, global1[_wgslsmith_index_u32(4294967295u, 5u)])))), 2147483647i), Struct_1(-func_1(global4.e, 2147483647i, _wgslsmith_mod_vec4_i32(vec4<i32>(54868i, global1[_wgslsmith_index_u32(4013u, 5u)], global4.c.x, 2147483647i), vec4<i32>(-1i, global4.d.a, -63176i, -20256i))).a), global4.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global4 = func_6(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(129f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b.x - 239f) + _wgslsmith_f_op_f32(-global4.b.x))))), !func_5(func_1(all(vec4<bool>(global4.e, false, global4.e, false)), global4.a.a >> (u_input.c % 32u), ~vec4<i32>(25700i, global4.c.x, global4.d.a, global1[_wgslsmith_index_u32(1u, 5u)]))), u_input.b.zyx, vec3<bool>(true, any(func_4(Struct_2(vec3<f32>(global4.b.x, global4.b.x, global4.b.x), vec3<i32>(-26793i, 37211i, global1[_wgslsmith_index_u32(1u, 5u)]), vec2<i32>(global4.a.a, global1[_wgslsmith_index_u32(u_input.c, 5u)]), false, global2[_wgslsmith_index_u32(2189u, 7u)]), Struct_3(global0[_wgslsmith_index_u32(u_input.a, 25u)], vec4<f32>(global4.b.x, 1117f, -2338f, global4.b.x), global4.c, Struct_1(global4.a.a), global4.e), _wgslsmith_f_op_f32(380f - 725f)).www), global4.e));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    let var_2 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(818f))))), select(select(select(!vec3<bool>(false, global4.e, false), func_4(Struct_2(vec3<f32>(-1133f, var_1, 329f), vec3<i32>(24586i, 8904i, global4.a.a), vec2<i32>(-1i, global1[_wgslsmith_index_u32(0u, 5u)]), global4.e, global2[_wgslsmith_index_u32(1u, 7u)]), Struct_3(Struct_1(-1i), vec4<f32>(1022f, var_1, 1347f, global4.b.x), global4.c, global0[_wgslsmith_index_u32(4294967295u, 25u)], false), -617f).wyx, false), !global2[_wgslsmith_index_u32(6127u & u_input.b.x, 7u)], vec3<bool>(global4.e | false, true, any(vec2<bool>(global4.e, global4.e)))), !(!select(global2[_wgslsmith_index_u32(u_input.b.x, 7u)], vec3<bool>(false, false, false), vec3<bool>(global4.e, global4.e, global4.e))), vec3<bool>(any(vec2<bool>(true, false)), true, all(!global2[_wgslsmith_index_u32(1u, 7u)]))), vec3<u32>(firstLeadingBit(u_input.c), (_wgslsmith_add_u32(0u, 75759u) ^ min(1u, u_input.b.x)) >> (u_input.a % 32u), u_input.a), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, u_input.b.x), 7u)]);
    let var_3 = 1u;
    let var_4 = var_2.e;
    var var_5 = Struct_4(Struct_3(Struct_1(-var_2.a.a), global4.b, vec2<i32>(_wgslsmith_mod_i32(29340i, ~(-9511i)), -1i), func_6(_wgslsmith_f_op_f32(-2844f + global4.b.x), vec3<bool>(!var_2.e, false & var_4, true), ~max(vec3<u32>(1537u, var_3, var_3), vec3<u32>(25888u, u_input.b.x, 4294967295u)), vec3<bool>(any(vec4<bool>(var_4, var_2.e, global4.e, true)), any(vec3<bool>(var_4, true, true)), var_2.e)).d, true), ~reverseBits(func_6(181f, select(global2[_wgslsmith_index_u32(4294967295u, 7u)], vec3<bool>(true, false, global4.e), vec3<bool>(false, false, var_4)), vec3<u32>(33129u, var_3, u_input.b.x), vec3<bool>(true, false, var_2.e)).d.a), 0u);
    let var_6 = -func_6(global4.b.x, global2[_wgslsmith_index_u32(var_3, 7u)], ~vec3<u32>(_wgslsmith_add_u32(var_5.c, 63231u), 1u, abs(0u)), !global2[_wgslsmith_index_u32(u_input.b.x, 7u)]).c;
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_2.d.a & _wgslsmith_mod_i32(global4.a.a, global4.c.x)), _wgslsmith_f_op_vec4_f32(-var_5.a.b), vec3<f32>(_wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(func_2(var_5.a, ~u_input.c))), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1284f, -615f)), 263f, func_4(Struct_2(var_5.a.b.xyz, vec3<i32>(-1530i, var_6.x, 35539i), var_6, global4.e, global2[_wgslsmith_index_u32(1u, 7u)]), Struct_3(Struct_1(global1[_wgslsmith_index_u32(var_5.c, 5u)]), vec4<f32>(-1364f, var_5.a.b.x, -669f, var_1), vec2<i32>(var_2.c.x, -1212i), Struct_1(-1i), var_2.e), -289f).x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_5.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1796f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.b.x, var_5.a.b.x))))));
}

