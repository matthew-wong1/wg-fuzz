struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 4>;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<bool>(true, true, true, true), vec4<u32>(0u, 20293u, 87994u, 5055u), vec4<u32>(29661u, 22826u, 6255u, 0u)), Struct_1(vec4<bool>(true, true, true, false), vec4<u32>(49788u, 1u, 4294967295u, 0u), vec4<u32>(4294967295u, 1u, 58683u, 87613u)), Struct_1(vec4<bool>(true, false, true, false), vec4<u32>(1u, 29894u, 13709u, 19204u), vec4<u32>(27214u, 65381u, 39303u, 3978u)), Struct_1(vec4<bool>(false, true, false, true), vec4<u32>(183u, 67368u, 0u, 0u), vec4<u32>(0u, 61161u, 31876u, 19150u)), Struct_1(vec4<bool>(true, true, true, true), vec4<u32>(0u, 106512u, 0u, 4294967295u), vec4<u32>(0u, 1u, 0u, 70119u)), Struct_1(vec4<bool>(false, true, false, false), vec4<u32>(4748u, 1u, 35245u, 1u), vec4<u32>(32046u, 4294967295u, 1u, 1u)), Struct_1(vec4<bool>(true, false, true, false), vec4<u32>(17963u, 25442u, 4294967295u, 39456u), vec4<u32>(4156u, 1u, 4294967295u, 4294967295u)), Struct_1(vec4<bool>(true, true, false, true), vec4<u32>(1u, 1u, 1u, 4791u), vec4<u32>(87299u, 0u, 4294967295u, 4294967295u)), Struct_1(vec4<bool>(false, false, false, false), vec4<u32>(4294967295u, 6850u, 14075u, 83071u), vec4<u32>(1u, 0u, 0u, 1u)));

var<private> global2: i32 = 57950i;

var<private> global3: bool;

var<private> global4: vec4<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<bool> {
    return vec4<bool>(!(_wgslsmith_f_op_f32(ceil(global4.x)) <= 195f), false, any(!vec3<bool>(false, any(vec4<bool>(true, true, true, false)), false)), false);
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> Struct_3 {
    global2 = 2147483647i;
    var var_0 = all(func_3());
    var var_1 = Struct_2(Struct_1(func_3(), select(vec4<u32>(~arg_0, 0u, u_input.b, ~arg_0), ~(~vec4<u32>(80646u, 3476u, arg_0, u_input.b)), false), vec4<u32>(~arg_0, arg_0, u_input.a ^ u_input.a, ~(~u_input.b))), _wgslsmith_f_op_vec2_f32(min(global4.zz, global4.xx)), global1[_wgslsmith_index_u32(arg_0, 9u)], !(!func_3()), global1[_wgslsmith_index_u32(56604u, 9u)]);
    global2 = abs(1777i);
    global3 = var_1.d.x;
    return Struct_3(Struct_2(var_1.e, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, var_1.b.x) + vec2<f32>(var_1.b.x, global4.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1664f, var_1.b.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-528f, global4.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, var_1.b.x) + global4.ww), vec2<bool>(true, false)))), Struct_1(var_1.a.a, _wgslsmith_div_vec4_u32(abs(var_1.e.b), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 45963u, var_1.a.b.x, u_input.a), var_1.a.b)), ~var_1.c.c), !select(vec4<bool>(false, true, false, true), select(vec4<bool>(var_1.e.a.x, arg_1.x, arg_1.x, false), var_1.e.a, vec4<bool>(false, true, var_1.a.a.x, var_1.d.x)), select(var_1.a.a, vec4<bool>(arg_1.x, true, arg_1.x, true), var_1.c.a)), global1[_wgslsmith_index_u32(firstLeadingBit(18856u), 9u)]), _wgslsmith_f_op_f32(select(var_1.b.x, var_1.b.x, func_3().x)), global1[_wgslsmith_index_u32(~firstLeadingBit(~arg_0), 9u)], select(!select(!var_1.e.a.wy, !var_1.a.a.wx, false), arg_1.yy, vec2<bool>(!var_1.d.x, all(arg_1))));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = !arg_1.c.a;
    global4 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.b, global4.x)) * _wgslsmith_f_op_f32(-arg_1.b)), -1503f), _wgslsmith_f_op_f32(1111f * -910f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x + arg_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(692f)) + _wgslsmith_f_op_f32(-arg_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1329f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(532f, arg_1.a.b.x), -1276f), global4.x, arg_1.a.b.x, -631f) + vec4<f32>(-822f, -1583f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.b))), _wgslsmith_f_op_f32(1315f - -565f)))));
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-254f, global4.x, -385f, arg_1.a.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-150f, global4.x, arg_1.a.b.x, global4.x) + vec4<f32>(-1000f, -1291f, 199f, global4.x)), true)), vec4<f32>(_wgslsmith_f_op_f32(global4.x - global4.x), 584f, -863f, _wgslsmith_f_op_f32(step(arg_1.b, global4.x))))))));
    global2 = 0i;
    var var_1 = Struct_2(arg_1.c, func_2(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(~u_input.b, 1u), firstLeadingBit(max(arg_1.c.b.x, arg_1.a.e.c.x)), ~_wgslsmith_sub_u32(arg_1.a.e.c.x, u_input.b)), arg_1.a.c.a.xzy).a.b, arg_1.c, func_2(firstTrailingBit(arg_1.c.b.x) >> (_wgslsmith_div_u32(arg_1.c.c.x, 6542u & arg_1.c.b.x) % 32u), !vec3<bool>(all(vec4<bool>(true, true, false, arg_3.x)), !arg_3.x, !var_0.x)).a.a.a, func_2(1u, !vec3<bool>(true, var_0.x == arg_1.a.a.a.x, true)).a.a);
    return Struct_3(Struct_2(func_2(1u, func_2(arg_1.c.b.x, !vec3<bool>(arg_3.x, true, true)).c.a.wwy).c, vec2<f32>(-423f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.b.x)) + -100f)), var_1.c, !vec4<bool>(true, arg_3.x, false, var_1.d.x & var_1.d.x), func_2(func_2(u_input.b, vec3<bool>(var_1.d.x, var_1.d.x, true)).c.b.x, arg_1.a.d.yxz).c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_1.a.b.x, 1347f)))) + var_1.b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global4.x, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1536f), true)))))), Struct_1(vec4<bool>(u_input.c == u_input.c, false, false, false), abs(select(var_1.e.b, arg_1.c.b, vec4<bool>(var_1.c.a.x, true, var_1.c.a.x, arg_1.c.a.x)) & (var_1.a.b | arg_1.c.c)), vec4<u32>(~firstLeadingBit(19942u), 4294967295u, 4294967295u, ~arg_1.c.c.x)), !var_1.e.a.yw);
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(_wgslsmith_mod_i32(u_input.c, min(_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(min(u_input.a, 1u), 4u)], ~global0[_wgslsmith_index_u32(u_input.b, 4u)]), -firstTrailingBit(51380i))), func_2(0u, vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(~56946u, 4u)], vec2<bool>(all(vec2<bool>(true, true)), 290f > global4.x));
    global0 = array<vec2<i32>, 4>();
    global4 = vec4<f32>(1211f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-217f - var_0.b)), _wgslsmith_f_op_f32(-var_0.a.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -461f))));
    var var_1 = reverseBits(vec3<i32>(-1i) * -max(abs(vec3<i32>(u_input.c, -11218i, -43388i)), max(vec3<i32>(u_input.c, u_input.c, 39978i), vec3<i32>(u_input.c, u_input.c, -1i))));
    var var_2 = func_2(~_wgslsmith_sub_u32(var_0.c.b.x, ~58024u), var_0.a.a.a.zxz).c;
    return Struct_1(select(func_4(15943i, func_4(_wgslsmith_add_i32(var_1.x, -2147483647i), func_4(var_1.x, Struct_3(Struct_2(Struct_1(var_2.a, var_0.a.e.c, var_0.c.c), vec2<f32>(-326f, 473f), Struct_1(var_0.c.a, var_2.c, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 11447u)), vec4<bool>(true, false, false, var_0.d.x), Struct_1(vec4<bool>(true, var_2.a.x, var_0.d.x, true), vec4<u32>(var_2.b.x, 0u, 16679u, 4294967295u), var_0.a.e.b)), global4.x, Struct_1(var_2.a, vec4<u32>(4294967295u, 0u, 24238u, 19192u), var_2.b), var_2.a.wx), vec2<i32>(2147483647i, -12297i), var_0.c.a.zx), var_1.yz, var_2.a.xx), var_1.zx, func_2(1u, !var_2.a.wxy).a.a.a.zy).a.a.a, var_2.a, true), func_2(4294967295u, vec3<bool>(false, true, ~51248i != _wgslsmith_mult_i32(-40286i, u_input.c))).c.b, _wgslsmith_mod_vec4_u32(func_2(max(_wgslsmith_div_u32(var_2.c.x, 2827u), firstLeadingBit(0u)), !vec3<bool>(true, true, var_2.a.x)).a.e.c, firstTrailingBit(~var_2.b) ^ firstTrailingBit(vec4<u32>(4294967295u, u_input.a, 4294967295u, var_0.c.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(func_1(), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(global4.wy, global4.wx)))), Struct_1(vec4<bool>(true, true, true, true), vec4<u32>(u_input.b, _wgslsmith_sub_u32(20090u, 0u), u_input.b, u_input.a), vec4<u32>(1u, ~4294967295u, ~1u, u_input.a >> (u_input.b % 32u))), func_1().a, func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global4.x, -988f)) * global4.x) + _wgslsmith_f_op_f32(-global4.x))), global1[_wgslsmith_index_u32(~max(5452u, ~u_input.a), 9u)], !select(func_1().a.wy, !func_1().a.xy, true == (u_input.a == u_input.b)));
    let var_1 = !vec4<bool>(true, var_0.c.a.x, all(vec2<bool>(true, false)), (var_0.a.d.x && true) || any(select(var_0.a.d.yxy, vec3<bool>(var_0.d.x, var_0.a.d.x, true), true)));
    global2 = i32(-1i) * -countOneBits(countOneBits(u_input.c) >> ((1u >> (var_0.a.e.b.x % 32u)) % 32u));
    let var_2 = func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 15649i, 0i, u_input.c), vec4<i32>(20819i, u_input.c, u_input.c, u_input.c)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c, 29540i, u_input.c), vec4<i32>(1i, 2147483647i, u_input.c, -2147483647i))), select(firstTrailingBit(vec3<i32>(80035i, 5100i, -15239i)), -vec3<i32>(u_input.c, u_input.c, -2545i), var_0.c.a.xzw)) ^ (-4231i ^ -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-1i, u_input.c))), func_2(2416u, !var_0.a.c.a.xxw), firstTrailingBit(global0[_wgslsmith_index_u32(0u, 4u)]), vec2<bool>(all(!func_2(u_input.a, var_0.c.a.yzw).c.a), true));
    global2 = -u_input.c;
    let var_3 = func_4((1i >> (max(var_2.c.b.x | u_input.a, select(var_0.a.c.b.x, u_input.a, var_2.c.a.x)) % 32u)) & u_input.c, func_4(_wgslsmith_sub_i32(1i, u_input.c), var_0, ~(-(global0[_wgslsmith_index_u32(var_0.c.c.x, 4u)] >> (vec2<u32>(4294967295u, var_2.a.e.c.x) % vec2<u32>(32u)))), !select(vec2<bool>(true, var_0.d.x), func_1().a.yx, true)), -vec2<i32>(-(~u_input.c), _wgslsmith_mod_i32(~u_input.c, ~7716i)), select(!var_1.zz, vec2<bool>(true, false), vec2<bool>(-2276f > _wgslsmith_f_op_f32(-var_0.a.b.x), reverseBits(-15869i) >= _wgslsmith_mod_i32(-1i, u_input.c)))).a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, ~u_input.b), _wgslsmith_clamp_u32(var_3.c.x, ~var_0.c.b.x, var_0.a.a.c.x), countOneBits(0u)), ~min(32627u, 41751u)));
}

