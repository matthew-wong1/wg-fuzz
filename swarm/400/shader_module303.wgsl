struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(vec2<u32>(9758u, 62112u)), Struct_3(vec2<u32>(57345u, 50287u)), Struct_3(vec2<u32>(4294967295u, 4294967295u)), Struct_3(vec2<u32>(0u, 75397u)), Struct_3(vec2<u32>(4294967295u, 4294967295u)));

var<private> global2: Struct_5 = Struct_5(2147483647i, 71914u);

var<private> global3: i32 = -1i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: bool) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x))))) - _wgslsmith_f_op_f32(sign(-363f)));
    var var_1 = var_0;
    let var_2 = u_input.b.zwy >> (min(u_input.b.wwy, select(~(vec3<u32>(21440u, u_input.a.x, 10263u) << (vec3<u32>(global0[_wgslsmith_index_u32(52316u, 8u)], global2.b, arg_1.x) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(u_input.b.wzz, _wgslsmith_div_vec3_u32(arg_2, vec3<u32>(1u, 4294967295u, u_input.a.x))), !vec3<bool>(false, arg_3, false))) % vec3<u32>(32u));
    var var_3 = Struct_3(countOneBits(arg_1));
    var var_4 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(-496f)), _wgslsmith_f_op_f32(-1000f * 159f), arg_0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(461f, 151f, -2188f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 243f, arg_0.x))), vec3<bool>(true, true && arg_3, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1561f, -1141f))) - vec3<f32>(var_0, _wgslsmith_f_op_f32(233f * 1676f), 535f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(255f, -891f, -785f)))));
    return ~vec2<u32>(countOneBits(arg_2.x), 4294967295u);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>, arg_3: vec4<bool>) -> bool {
    let var_0 = !arg_2.zx;
    global2 = Struct_5(_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, global2.a), global2.a), ~(-global2.a)) & ~(-10374i), 4294967295u);
    var var_1 = Struct_3(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, arg_1) + vec2<f32>(-449f, arg_0.a)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-636f, 452f) + vec2<f32>(arg_0.b, arg_0.a))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, 353f) - vec2<f32>(1300f, -943f)))), select(~vec2<u32>(u_input.a.x, 1u) ^ vec2<u32>(50272u, 21851u), abs(vec2<u32>(20836u, u_input.a.x)), vec2<bool>(all(vec2<bool>(true, false)), true)), firstTrailingBit(vec3<u32>(1u, global2.b, global2.b)), any(select(select(vec3<bool>(arg_0.c.x, arg_2.x, arg_0.c.x), arg_3.zwx, var_0.x), !arg_3.yzx, var_0.x))));
    let var_2 = vec4<bool>(true, !arg_3.x, select(var_0.x, arg_3.x, false), arg_3.x);
    let var_3 = vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-583f - arg_1))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return _wgslsmith_mult_u32(~36383u, 1u) < func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1097f, _wgslsmith_f_op_f32(-arg_1)) * vec2<f32>(arg_0.a, -387f)), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(1u, var_1.a.x)), u_input.b.zz), firstTrailingBit(func_3(vec2<f32>(arg_1, arg_0.b), vec2<u32>(12647u, var_1.a.x), u_input.b.wyw, true))), vec3<u32>(global0[_wgslsmith_index_u32(~global2.b << (min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.b, 8u)], 8u)], 65844u) % 32u), 8u)], global2.b, ~0u), !all(!vec4<bool>(false, arg_3.x, true, var_2.x))).x;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec2<bool>) -> u32 {
    let var_0 = vec4<u32>((arg_1.b << ((_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b, 0u, arg_1.b, u_input.a.x), u_input.b) << (u_input.a.x % 32u)) % 32u)) ^ 4294967295u, abs(arg_1.b), 1u, abs(_wgslsmith_dot_vec3_u32((vec3<u32>(9492u, 1u, 40656u) ^ u_input.b.zzx) & u_input.b.xzy, vec3<u32>(global0[_wgslsmith_index_u32(1u, 8u)], 4294967295u, global2.b) << (u_input.b.zzz % vec3<u32>(32u)))));
    var var_1 = arg_1;
    global2 = Struct_5(global2.a, func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_1.a.yx))) * arg_1.a.zx), _wgslsmith_div_vec2_u32(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 25665u), vec2<u32>(1u, global0[_wgslsmith_index_u32(0u, 8u)]))), abs(~vec2<u32>(global0[_wgslsmith_index_u32(var_1.b, 8u)], var_1.b))), vec3<u32>(global0[_wgslsmith_index_u32(~(~4294967295u), 8u)], 1u, ~4294967295u), true).x);
    global0 = array<u32, 8>();
    let var_2 = -26384i;
    return 4294967295u;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1380f)) * _wgslsmith_f_op_f32(f32(-1f) * -407f));
    let var_1 = (func_4(vec4<bool>(true, true, false, func_2(Struct_1(1224f, -283f, vec4<bool>(arg_0, true, arg_0, false)), 1000f, vec3<bool>(arg_0, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0))), Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 637f, 1347f), vec3<f32>(-1153f, -415f, 1262f), vec3<bool>(true, false, arg_0))), abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)])), !select(vec2<bool>(arg_0, true), vec2<bool>(true, false), vec2<bool>(false, arg_0))) >> ((34143u ^ ~_wgslsmith_div_u32(u_input.a.x, 7209u)) % 32u)) ^ ~(~global0[_wgslsmith_index_u32(1u, 8u)]);
    var var_2 = ~abs(firstTrailingBit(abs(~vec3<i32>(22403i, 42831i, global2.a))));
    let var_3 = Struct_4(select(vec4<bool>(true, any(vec4<bool>(arg_0, false, arg_0, arg_0)) && true, arg_0, !(!arg_0)), !vec4<bool>(arg_0, arg_0, arg_0, true != arg_0), !select(!vec4<bool>(true, arg_0, arg_0, false), !vec4<bool>(true, arg_0, arg_0, true), select(vec4<bool>(false, true, true, arg_0), vec4<bool>(true, false, true, false), arg_0))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1589f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -156f)), vec4<bool>(arg_0, arg_0, true, all(vec4<bool>(arg_0, true, arg_0, arg_0)) || false)));
    return Struct_1(var_3.b.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_3.b.b, -937f), _wgslsmith_f_op_f32(638f * 751f), true))), var_3.b.a)), vec4<bool>(var_3.b.c.x, (var_1 <= abs(0u)) && arg_0, any(!var_3.b.c.xwy) | false, any(!var_3.b.c)));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1028f), _wgslsmith_f_op_f32(-arg_0.b), arg_0.a)))) + vec3<f32>(arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(503f)), _wgslsmith_f_op_f32(-100f * arg_0.b)), arg_0.a));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-704f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(exp2(arg_0.a))) - arg_0.b)));
    var var_2 = arg_0.c.x;
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1433f, 1000f, -627f) + vec3<f32>(var_1, -1931f, arg_0.b))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(2352f, -1302f, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 354f, 1061f)))))), ~13403u);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec2<bool>) -> f32 {
    let var_0 = firstTrailingBit((~(~u_input.b) >> (u_input.b % vec4<u32>(32u))) | min(u_input.b ^ u_input.b, u_input.b));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(arg_2.xy))))));
    var var_2 = Struct_3(select(var_0.wx, func_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_1.a.yx - arg_1.a.xz), _wgslsmith_f_op_vec2_f32(-arg_2.wx), vec2<bool>(false, arg_3.x))), vec2<u32>(u_input.b.x, func_5(Struct_1(-1850f, -1000f, vec4<bool>(arg_0.c.x, arg_3.x, false, arg_0.c.x))).b), select(~u_input.b.zwx, ~vec3<u32>(1u, 4294967295u, global0[_wgslsmith_index_u32(32828u, 8u)]), vec3<bool>(arg_3.x, true, true)), arg_0.c.x || !arg_3.x), !(global2.a >= -global2.a)));
    var var_3 = _wgslsmith_div_f32(func_5(func_1(arg_0.c.x)).a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(155f)) * _wgslsmith_div_f32(arg_1.a.x, arg_1.a.x))), var_1.x)));
    global3 = global2.a;
    return _wgslsmith_f_op_f32(abs(-362f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2032f), -1155f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-940f - 122f))), _wgslsmith_f_op_f32(func_6(Struct_1(_wgslsmith_div_f32(632f, -655f), -173f, vec4<bool>(true, true, true, true)), func_5(func_1(false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1311f, 136f, 494f, 881f)), vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-967f, 372f) + _wgslsmith_f_op_f32(1885f + -201f))))));
    var var_1 = firstTrailingBit(113644u);
    global2 = Struct_5(countOneBits(global2.a), 11004u);
    var var_2 = global2.b;
    global2 = Struct_5(global2.a, 0u);
    let var_3 = Struct_5(_wgslsmith_add_i32(1i & global2.a, -1i), _wgslsmith_dot_vec4_u32(~max(u_input.b, u_input.b), select(select(~u_input.b, vec4<u32>(37313u, global2.b, 92420u, 1u), var_0.x > var_0.x), _wgslsmith_add_vec4_u32(vec4<u32>(6651u, 1u, 1u, 47789u) >> (u_input.b % vec4<u32>(32u)), u_input.b | u_input.b), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), true), true))));
    var var_4 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x | ~global2.b, 75916u, firstLeadingBit(global2.b), var_3.b), u_input.b), ~firstLeadingBit(u_input.a.x), 0u, var_3.b);
    let var_5 = Struct_5(global2.a, max(4294967295u, global2.b));
    let x = u_input.a;
    s_output = StorageBuffer(~select(select(u_input.a, vec2<u32>(4294967295u, 1u), vec2<bool>(false, true)) >> (_wgslsmith_mult_vec2_u32(u_input.a, var_4.yw) % vec2<u32>(32u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(23263u, u_input.b.x), var_4.wy), vec2<bool>(global2.b >= var_5.b, true)), _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -min(vec2<i32>(-2147483647i, 60766i), vec2<i32>(-2147483647i, -14798i)), -vec2<i32>(~var_5.a, var_5.a)));
}

