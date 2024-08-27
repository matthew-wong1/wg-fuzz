struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 10>;

var<private> global1: u32 = 4630u;

var<private> global2: array<u32, 4> = array<u32, 4>(0u, 0u, 0u, 0u);

var<private> global3: i32 = 1i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2150f, -397f, -533f, 1000f) * vec4<f32>(201f, -264f, 1206f, 1028f))))) - vec4<f32>(_wgslsmith_f_op_f32(-207f + _wgslsmith_f_op_f32(1000f + -1377f)), _wgslsmith_f_op_f32(f32(-1f) * -2009f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-658f * 340f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -271f)))));
    var var_1 = u_input.e.x | 0u;
    var var_2 = 1u;
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-337f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(127f, 1000f)), -579f))), 306f, -1000f)));
    var var_4 = _wgslsmith_sub_vec4_u32(~(~abs(vec4<u32>(16603u, u_input.e.x, global2[_wgslsmith_index_u32(26733u, 4u)], 26672u))) << (~vec4<u32>(~u_input.e.x, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 4u)], 4u)], 1u), max(1u, 0u), countOneBits(global2[_wgslsmith_index_u32(u_input.a.x, 4u)])) % vec4<u32>(32u)), vec4<u32>(0u, u_input.e.x, global2[_wgslsmith_index_u32(u_input.e.x, 4u)], _wgslsmith_sub_u32(reverseBits(55141u), select(_wgslsmith_div_u32(33423u, 8207u), 41862u, true))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -704f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-242f + var_0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_0.x))))))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-283f - -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -166f), 459f, _wgslsmith_f_op_f32(f32(-1f) * -407f)))));
    global1 = 0u;
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(588f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(sign(1295f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) - 608f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_f32(sign(854f)))) - vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), var_0.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -232f))), var_0.x, var_0.x, _wgslsmith_div_f32(1610f, _wgslsmith_f_op_f32(f32(-1f) * -163f))));
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x), var_0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), -1053f, true)), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(797f, var_0.x)))))));
    global3 = reverseBits(-1i << (min(~_wgslsmith_dot_vec3_u32(u_input.e, u_input.e), _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mod_u32(4276u, 10898u))) % 32u));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_0.wx, vec2<f32>(var_0.x, 333f)), vec2<f32>(1f, 1f), vec2<bool>(true, false))), var_0.zw)), min(-vec2<i32>(max(u_input.c.x, -3859i), -58508i & u_input.b), u_input.c.yw), !(23216i <= -abs(u_input.d.x)));
}

fn func_4(arg_0: Struct_1) -> u32 {
    global1 = u_input.e.x;
    let var_0 = arg_0;
    var var_1 = u_input.e;
    var_1 = ~(~(vec3<u32>(var_1.x, global2[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(1u, 4u)]) >> ((vec3<u32>(56277u, u_input.e.x, 0u) >> (vec3<u32>(0u, global2[_wgslsmith_index_u32(11948u, 4u)], 0u) % vec3<u32>(32u))) % vec3<u32>(32u))) & u_input.e);
    var var_2 = arg_0.a.x;
    return ~u_input.e.x;
}

fn func_1() -> Struct_1 {
    global2 = array<u32, 4>();
    global1 = ~func_4(func_2());
    global3 = u_input.d.x;
    var var_0 = func_2();
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(0i & var_0.b.x, _wgslsmith_div_i32(var_0.b.x, 39991i), firstTrailingBit(88031i), u_input.c.x << (global2[_wgslsmith_index_u32(0u, 4u)] % 32u)), _wgslsmith_mod_vec4_i32(u_input.c, abs(u_input.c)), vec4<bool>(all(vec3<bool>(false, var_0.c, false)), true, true, !var_0.c)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b.x, -41349i, 16368i, -35742i), vec4<i32>(-19647i, var_0.b.x, -1i, 8084i) << (vec4<u32>(10424u, u_input.e.x, 5873u, 4038u) % vec4<u32>(32u)), u_input.c)), 1i);
    return Struct_1(var_0.a, ~(~vec2<i32>(1i, countOneBits(27411i))), var_0.c);
}

fn func_5(arg_0: Struct_2) -> bool {
    global3 = ~func_2().b.x;
    global1 = _wgslsmith_dot_vec4_u32(abs(firstLeadingBit(vec4<u32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(u_input.a.x, 1u, 7372u)), 4u)], abs(14110u), _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 4u)], 4u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(47506u, 4u)], 4u)]), ~4294967295u))), vec4<u32>(~select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)], global2[_wgslsmith_index_u32(49396u, 4u)], arg_0.a.c), u_input.e.x, firstLeadingBit(~1343u), 1u) >> (vec4<u32>(max(firstLeadingBit(1u), _wgslsmith_mult_u32(920u, global2[_wgslsmith_index_u32(4294967295u, 4u)])), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 0u, 0u), vec4<u32>(u_input.a.x, 36774u, 17137u, 4294967295u)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(1u, 4u)], ~21959u), 4u)], 24504u) % vec4<u32>(32u)));
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, -3066f))), arg_0.d | ~u_input.d.zz, arg_0.a.c), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1293f - arg_0.b.a.x), _wgslsmith_f_op_f32(-arg_0.b.a.x)), arg_0.a.a, vec2<bool>(true, !arg_0.a.c))), vec2<i32>(countOneBits(u_input.b), u_input.d.x), arg_0.b.c), 1000f, firstTrailingBit(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(6624i, -2147483647i), ~arg_0.b.b))));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(509f, arg_0.a.a.x, 334f), vec3<f32>(var_0.a.a.x, arg_0.c, var_0.a.a.x))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.c, arg_0.b.a.x, -711f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.a.x, -2237f, arg_0.b.a.x))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-var_1.x), arg_0.c, arg_0.c));
    return arg_0.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = 0i;
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(1565f, -1715f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(651f, -1930f), vec2<f32>(173f, -249f), true))))), ~(-abs(u_input.c.wz)), func_5(Struct_2(func_1(), Struct_1(vec2<f32>(-272f, -884f), u_input.c.zz, true), _wgslsmith_f_op_f32(373f + 375f), ~vec2<i32>(58285i, u_input.b)))), func_2(), _wgslsmith_f_op_f32(func_1().a.x - -1195f), _wgslsmith_div_vec2_i32(-vec2<i32>(~u_input.d.x, ~0i), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(-21382i, u_input.d.x), vec2<i32>(14328i, 24611i)), -u_input.d.zz)));
    var_0 = Struct_2(var_0.a, Struct_1(var_0.a.a, _wgslsmith_div_vec2_i32(vec2<i32>(func_1().b.x, u_input.b), vec2<i32>(i32(-1i) * -2147483647i, abs(9271i))), !var_0.a.c | select(var_0.b.c, func_1().c, all(vec4<bool>(true, var_0.b.c, false, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), -253f), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-41778i, -63260i), func_1().b), ~(-u_input.c.xz | vec2<i32>(var_0.d.x, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer((i32(-1i) * -(u_input.b >> (4294967295u % 32u))) | _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, var_0.a.b.x), ~vec3<i32>(-22111i, -2147483647i, -4658i)), var_0.d.x));
}

