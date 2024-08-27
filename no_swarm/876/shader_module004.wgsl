struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: Struct_3,
    d: vec4<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(-33032i, i32(-2147483648)), true);

var<private> global1: u32;

var<private> global2: array<f32, 5>;

var<private> global3: array<f32, 16> = array<f32, 16>(567f, -920f, -765f, -810f, 296f, -707f, 1174f, 557f, 596f, 1183f, 454f, 670f, 752f, 2010f, -810f, 331f);

var<private> global4: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(Struct_1(-694f), vec3<u32>(0u, 58197u, 23711u)), Struct_3(Struct_1(348f), vec3<u32>(31783u, 1u, 29768u)), Struct_3(Struct_1(2620f), vec3<u32>(1u, 0u, 38302u)), Struct_3(Struct_1(-952f), vec3<u32>(50381u, 26166u, 7696u)), Struct_3(Struct_1(1283f), vec3<u32>(1u, 1u, 1u)), Struct_3(Struct_1(-720f), vec3<u32>(1u, 0u, 1u)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
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

fn func_3() -> bool {
    let var_0 = Struct_5(Struct_3(Struct_1(_wgslsmith_f_op_f32(round(-464f))), ~(~vec3<u32>(u_input.a, 1u, u_input.a)) << (~(vec3<u32>(68365u, u_input.a, 4294967295u) & vec3<u32>(4294967295u, 51610u, 4294967295u)) % vec3<u32>(32u))), global4[_wgslsmith_index_u32(~(abs(abs(u_input.a)) << (_wgslsmith_mod_u32(~23412u, 7566u) % 32u)), 6u)], select(select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(global0.b, false)), !select(vec2<bool>(false, global0.b), vec2<bool>(global0.b, global0.b), vec2<bool>(global0.b, true)), select(select(vec2<bool>(global0.b, global0.b), vec2<bool>(global0.b, true), vec2<bool>(global0.b, false)), select(vec2<bool>(global0.b, global0.b), vec2<bool>(global0.b, global0.b), global0.b), global0.b == true)), select(select(!vec2<bool>(true, global0.b), !vec2<bool>(global0.b, true), vec2<bool>(global0.b, true)), vec2<bool>(true, all(vec3<bool>(global0.b, false, global0.b))), any(!vec3<bool>(true, true, global0.b))), select(vec2<bool>(true, true), select(!vec2<bool>(global0.b, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, global0.b)), select(vec2<bool>(true, true), vec2<bool>(global0.b, global0.b), vec2<bool>(global0.b, true))), vec2<bool>(global0.b, true))), global0.a.x);
    var var_1 = Struct_2(vec2<i32>(-global0.a.x, u_input.c), all(!(!select(vec3<bool>(false, false, false), vec3<bool>(global0.b, true, global0.b), vec3<bool>(var_0.c.x, global0.b, var_0.c.x)))));
    global3 = array<f32, 16>();
    return true;
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    let var_0 = Struct_5(arg_0, Struct_3(arg_0.a, arg_0.b), select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, global0.b), vec2<bool>(true, true), global0.b), !global0.b), vec2<bool>(arg_0.a.a < global3[_wgslsmith_index_u32(1u, 16u)], global0.b), vec2<bool>(true, !global0.b)), select(select(!vec2<bool>(false, global0.b), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), global0.b), select(!vec2<bool>(true, global0.b), vec2<bool>(global0.b, false), global0.b), select(!vec2<bool>(false, global0.b), !vec2<bool>(false, global0.b), func_3())), all(select(vec2<bool>(true, global0.b), vec2<bool>(global0.b, global0.b), vec2<bool>(global0.b, false)))), global0.a.x);
    var var_1 = ~reverseBits(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.b.x, var_0.a.b.x, arg_0.b.x), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.b.x, 72718u, 23045u), arg_0.b)), ~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 16581u, u_input.a), var_0.a.b)));
    var var_2 = Struct_4(all(!(!select(vec4<bool>(global0.b, true, global0.b, true), vec4<bool>(var_0.c.x, false, global0.b, global0.b), vec4<bool>(true, var_0.c.x, global0.b, global0.b)))), !(!select(vec3<bool>(var_0.c.x, var_0.c.x, global0.b), vec3<bool>(true, global0.b, global0.b), vec3<bool>(var_0.c.x, global0.b, false))), Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.a.a, global3[_wgslsmith_index_u32(var_0.a.b.x, 16u)])), global2[_wgslsmith_index_u32(~11304u, 5u)])), ~(arg_0.b << (arg_0.b % vec3<u32>(32u)))), abs(firstLeadingBit(-(~vec4<i32>(global0.a.x, u_input.b.x, var_0.d, global0.a.x)))));
    let var_3 = !select(var_2.b, select(vec3<bool>(true, all(var_2.b), var_2.a != var_2.b.x), vec3<bool>(false, var_2.a, var_2.b.x), !(var_2.d.x <= -8082i)), !select(select(var_2.b, var_2.b, var_2.b), vec3<bool>(var_0.c.x, global0.b, var_2.b.x), select(vec3<bool>(false, var_0.c.x, var_0.c.x), var_2.b, global0.b)));
    return Struct_2(~vec2<i32>(-28148i, abs(abs(u_input.c))), var_0.c.x);
}

fn func_1() -> Struct_5 {
    let var_0 = -vec2<i32>(_wgslsmith_mod_i32(-global0.a.x, u_input.b.x), u_input.c);
    global0 = func_2(global4[_wgslsmith_index_u32(u_input.a << (_wgslsmith_mod_u32(1406u, _wgslsmith_clamp_u32(~324u, ~12775u, firstTrailingBit(4294967295u))) % 32u), 6u)]);
    var var_1 = true;
    var var_2 = select(vec2<bool>(1f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(u_input.a, 16u)]))), global0.b), !(!select(select(vec2<bool>(true, true), vec2<bool>(true, global0.b), global0.b), vec2<bool>(global0.b, global0.b), vec2<bool>(global0.b, global0.b))), select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a) << (vec4<u32>(u_input.a, u_input.a, 0u, 0u) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(u_input.a, 1u, 19217u, 0u))), ~0u, global0.b) == _wgslsmith_mod_u32(select(1u, _wgslsmith_mod_u32(u_input.a, 0u), global0.b), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u), vec4<u32>(25169u, 0u, 32260u, 75520u))));
    global3 = array<f32, 16>();
    return Struct_5(global4[_wgslsmith_index_u32(1u, 6u)], Struct_3(Struct_1(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 16u)])), vec3<u32>(~(~u_input.a), ~u_input.a, u_input.a)), !(!select(select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(false, true), false), !vec2<bool>(global0.b, false), true)), _wgslsmith_clamp_i32(global0.a.x, -(~_wgslsmith_mult_i32(var_0.x, var_0.x)), -30782i));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = vec2<u32>(_wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec2_u32(arg_0.a.b.zx, vec2<u32>(u_input.a, 74409u))), u_input.a) | vec2<u32>(u_input.a & arg_0.b.b.x, arg_0.a.b.x);
    var var_1 = vec4<bool>(true, func_3(), false, arg_0.c.x);
    var var_2 = func_1().a.b.x;
    var var_3 = _wgslsmith_mod_i32(~arg_0.d, 27121i) ^ global0.a.x;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2108f - -403f));
    return arg_0.a.a;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.xzx, vec3<f32>(global2[_wgslsmith_index_u32(arg_1.b.x, 5u)], 392f, -657f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(4510u, 16u)], arg_0.x, arg_3.a))), arg_0.wyz, select(select(vec3<bool>(false, false, true), vec3<bool>(false, global0.b, global0.b), global0.b), !vec3<bool>(true, global0.b, global0.b), select(vec3<bool>(global0.b, global0.b, true), vec3<bool>(false, false, global0.b), false)))) * vec3<f32>(func_1().a.a.a, _wgslsmith_f_op_f32(trunc(func_4(Struct_5(Struct_3(Struct_1(1000f), vec3<u32>(arg_2.x, arg_1.b.x, arg_2.x)), arg_1, vec2<bool>(false, global0.b), global0.a.x), u_input.b).a)), -970f)));
    let var_1 = !(0i == u_input.c);
    let var_2 = _wgslsmith_f_op_f32(sign(-480f)) < _wgslsmith_f_op_f32(-func_4(func_1(), _wgslsmith_clamp_vec3_i32(u_input.b, _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, global0.a.x, global0.a.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.c)), vec3<i32>(2147483647i, -10274i, -22321i))).a);
    let var_3 = !(_wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(_wgslsmith_div_u32(arg_1.b.x, 13913u), ~arg_2.x, _wgslsmith_mult_u32(0u, 80269u), 1u)) > u_input.a);
    var var_4 = Struct_5(arg_1, Struct_3(Struct_1(1585f), arg_2.wxw), vec2<bool>(any(vec2<bool>(true, u_input.a < u_input.a)), false), global0.a.x);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 16u)], -613f, 630f, -1375f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-420f, -247f, -386f, -1000f) * vec4<f32>(484f, -2124f, global3[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(u_input.a, 5u)]))))), Struct_3(func_4(func_1(), _wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(-53396i, 7522i, u_input.c))), select(vec3<u32>(~1u, u_input.a, ~9913u), abs(vec3<u32>(u_input.a, 42986u, 0u)) & vec3<u32>(1u, u_input.a, u_input.a), select(!vec3<bool>(false, true, global0.b), !vec3<bool>(false, true, global0.b), any(vec4<bool>(global0.b, true, true, global0.b))))), min(vec4<u32>(u_input.a, 1u ^ ~u_input.a, 73607u, _wgslsmith_add_u32(abs(55850u), select(0u, u_input.a, true))), vec4<u32>(select(~4294967295u, firstTrailingBit(u_input.a), 550f > global2[_wgslsmith_index_u32(u_input.a, 5u)]), u_input.a & ~u_input.a, min(_wgslsmith_mod_u32(u_input.a, u_input.a), u_input.a), 4294967295u)), func_4(Struct_5(global4[_wgslsmith_index_u32(countOneBits(u_input.a), 6u)], global4[_wgslsmith_index_u32(4294967295u, 6u)], func_1().c, u_input.c), ~vec3<i32>(u_input.c, global0.a.x, global0.a.x) & vec3<i32>(global0.a.x, u_input.b.x, _wgslsmith_sub_i32(global0.a.x, global0.a.x))));
    global1 = reverseBits(u_input.a);
    global4 = array<Struct_3, 6>();
    global3 = array<f32, 16>();
    global0 = Struct_2(~vec2<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.c, u_input.c, -1i, global0.a.x)), max(vec4<i32>(-9298i, global0.a.x, 0i, 29951i), vec4<i32>(u_input.c, u_input.c, -13323i, global0.a.x)))), !all(select(!vec3<bool>(global0.b, global0.b, false), vec3<bool>(global0.b, false, false), true)));
    var var_1 = Struct_2(countOneBits(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(global0.a, vec2<i32>(u_input.b.x, global0.a.x), ~vec2<i32>(u_input.c, -10720i)), u_input.b.yz)), global0.b);
    global3 = array<f32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer((vec4<u32>(0u, u_input.a, countOneBits(34031u), ~43699u) ^ vec4<u32>(1u, min(u_input.a, u_input.a), firstTrailingBit(0u), ~77289u)) | reverseBits(~vec4<u32>(u_input.a, u_input.a, u_input.a, 74309u) & select(vec4<u32>(1u, u_input.a, u_input.a, 16035u), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), global0.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-110f - var_0.a) - 635f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 16u)])))) + 1559f), 0i);
}

