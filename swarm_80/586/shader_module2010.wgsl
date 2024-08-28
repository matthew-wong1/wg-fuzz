struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec3<u32>(4294967295u, 49532u, 60247u), Struct_1(56826u, vec2<bool>(false, false), 52281u), false, Struct_1(84846u, vec2<bool>(true, false), 4294967295u)), vec2<i32>(0i, 0i), Struct_2(vec3<u32>(1u, 18038u, 0u), Struct_1(29990u, vec2<bool>(true, true), 52369u), true, Struct_1(23939u, vec2<bool>(true, true), 28360u)));

var<private> global1: Struct_1 = Struct_1(13000u, vec2<bool>(true, true), 52213u);

var<private> global2: array<i32, 21>;

var<private> global3: array<vec3<i32>, 31>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<bool>) -> u32 {
    var var_0 = vec4<bool>(all(vec4<bool>(global0.a.d.b.x, global0.b.x >= global2[_wgslsmith_index_u32(global1.a, 21u)], false, true)), _wgslsmith_mult_u32(~0u, _wgslsmith_div_u32(min(4294967295u, global1.c), ~26590u)) >= ((_wgslsmith_clamp_u32(arg_0, arg_0, arg_0) ^ 4294967295u) | _wgslsmith_mult_u32(firstLeadingBit(4294967295u), ~4294967295u)), arg_2.x, !any(arg_2));
    var var_1 = Struct_1(4294967295u, vec2<bool>(false, var_0.x), select(8121u, _wgslsmith_add_u32(~min(61746u, 4294967295u), 59704u), global1.b.x));
    var var_2 = 42728i;
    var var_3 = global0.a.a.x;
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-667f * -405f)), -1000f)));
    return var_1.a;
}

fn func_4(arg_0: vec2<u32>, arg_1: u32) -> vec4<bool> {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(404f, 190f), -1520f, _wgslsmith_f_op_f32(f32(-1f) * -847f)))))), vec3<f32>(494f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(880f, -896f, false))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(657f)), _wgslsmith_f_op_f32(f32(-1f) * -927f)))), 279f));
    let var_1 = Struct_3(global0.c, firstTrailingBit(_wgslsmith_clamp_vec2_i32(~vec2<i32>(global2[_wgslsmith_index_u32(arg_1, 21u)], 34679i), global0.b, vec2<i32>(u_input.e, u_input.e)) | ~select(global0.b, vec2<i32>(global0.b.x, global0.b.x), global0.a.b.b.x)), global0.a);
    let var_2 = Struct_2(~vec3<u32>(abs(84224u), var_1.c.d.a, select(arg_0.x, ~1u, true)), Struct_1(var_1.c.d.c, select(global1.b, select(select(global0.a.d.b, vec2<bool>(true, false), false), global1.b, vec2<bool>(global0.c.b.b.x, true)), select(vec2<bool>(true, false), !vec2<bool>(var_1.c.c, global0.a.d.b.x), select(true, global1.b.x, global1.b.x))), _wgslsmith_mod_u32(~1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(19308u, global0.a.a.x), vec2<u32>(19856u, 4294967295u)))), all(!vec4<bool>(true, global0.a.c, false, false)), Struct_1(global0.a.b.a, var_1.a.b.b, 1u));
    let var_3 = global3[_wgslsmith_index_u32(~global1.c, 31u)];
    global3 = array<vec3<i32>, 31>();
    return !(!vec4<bool>(var_1.c.d.b.x, var_1.a.c, var_3.x < var_3.x, all(!vec2<bool>(var_2.b.b.x, global1.b.x))));
}

fn func_5(arg_0: bool, arg_1: vec4<bool>) -> bool {
    global3 = array<vec3<i32>, 31>();
    var var_0 = vec4<bool>(4294967295u >= global1.a, !all(arg_1), global1.b.x, all(select(arg_1, select(arg_1, vec4<bool>(global0.c.b.b.x, global1.b.x, global0.c.d.b.x, false), all(arg_1.yz)), vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1425f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(425f))))))));
    global0 = Struct_3(Struct_2(_wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(global0.a.b.a, global1.c, 1u)), vec3<u32>(global1.a, global0.c.d.c, _wgslsmith_mod_u32(1u, u_input.d))), global0.c.d, !(min(global1.c, global1.a) != ~global1.c), global0.a.d), select(~u_input.c.zy, global0.b, vec2<bool>(!(global1.c == 4294967295u), !any(var_0.ywx))), global0.c);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-917f, 304f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -168f)))) - _wgslsmith_f_op_f32(f32(-1f) * -215f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2339f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(303f, _wgslsmith_f_op_f32(f32(-1f) * -557f))))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1189f * _wgslsmith_f_op_f32(1306f - -631f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(200f, -125f, global1.b.x)), 1460f)) + _wgslsmith_f_op_f32(round(-1021f))) > -1097f;
}

fn func_2() -> vec2<f32> {
    var var_0 = Struct_2(global0.a.a, global0.a.b, true, Struct_1(1u, vec2<bool>(true, true), global1.a));
    var var_1 = Struct_2(var_0.a, var_0.d, firstTrailingBit(global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u) ^ firstTrailingBit(4294967295u), 21u)]) == 21653i, Struct_1(~(~firstTrailingBit(24926u)), select(!var_0.d.b, !vec2<bool>(global0.a.c, true), !(!var_0.d.b)), firstTrailingBit(global0.c.a.x)));
    let var_2 = Struct_1(min(1u, 53857u), vec2<bool>(func_5(any(vec2<bool>(var_0.c, var_0.b.b.x)) || true, func_4(~var_1.a.zy, func_3(global1.a, vec4<i32>(u_input.e, -663i, global2[_wgslsmith_index_u32(var_0.d.c, 21u)], global2[_wgslsmith_index_u32(4294967295u, 21u)]), vec4<bool>(false, false, false, var_0.c)))), func_4(vec2<u32>(~58313u, var_1.b.c), 1u).x), 44034u);
    global0 = Struct_3(global0.c, u_input.c.xy, global0.c);
    var var_3 = ~1u;
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec2<bool>, arg_3: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_2());
    let var_1 = _wgslsmith_f_op_f32(-613f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -461f), _wgslsmith_f_op_vec2_f32(func_2()).x)) + _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(sign(913f))))));
    global2 = array<i32, 21>();
    let var_2 = global0.a.d;
    let var_3 = Struct_3(Struct_2(global0.a.a, global0.a.b, global1.b.x, global0.a.b), vec2<i32>(global0.b.x, i32(-1i) * -4440i), global0.c);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(671f, var_0.x))))), var_1));
}

fn func_6(arg_0: f32, arg_1: f32) -> u32 {
    let var_0 = -vec3<i32>(~(i32(-1i) * -30525i), 0i, 32892i);
    global3 = array<vec3<i32>, 31>();
    global0 = Struct_3(global0.a, vec2<i32>(2147483647i, _wgslsmith_mult_i32(max(u_input.e, global2[_wgslsmith_index_u32(countOneBits(global0.c.a.x), 21u)]), _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, global2[_wgslsmith_index_u32(global1.c, 21u)], 111876i, 0i), -vec4<i32>(18759i, -14026i, u_input.c.x, global0.b.x)))), global0.c);
    var var_1 = Struct_1(_wgslsmith_mult_u32(firstTrailingBit(68117u), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(4294967295u, 0u), u_input.b.x, 16214u, ~global0.a.a.x), vec4<u32>(global0.c.d.a, ~5557u, global1.a, ~global1.c))), !select(!vec2<bool>(false, global0.c.b.b.x), !vec2<bool>(global1.b.x, false), vec2<bool>(all(vec4<bool>(global0.a.c, global0.c.d.b.x, false, false)), all(vec3<bool>(global1.b.x, true, false)))), ~0u);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-843f + -523f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0, arg_1))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f))));
    return _wgslsmith_div_u32(_wgslsmith_sub_u32(global0.a.a.x, global1.c), u_input.d ^ var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 21>();
    var var_0 = Struct_3(Struct_2(vec3<u32>(global1.c, 0u, 1u), Struct_1(func_6(_wgslsmith_f_op_f32(func_1(4294967295u, global0.a.a.x, global0.a.d.b, vec2<u32>(global1.a, global1.c))), -638f), global1.b, global1.c), true, Struct_1(4294967295u, vec2<bool>(false & global1.b.x, true | global1.b.x), abs(u_input.b.x))), firstTrailingBit(_wgslsmith_add_vec2_i32(u_input.a, global0.b)), Struct_2(global0.c.a, global0.a.d, true, global0.c.b));
    global3 = array<vec3<i32>, 31>();
    var_0 = Struct_3(Struct_2(global0.a.a, Struct_1(global0.a.b.a, global1.b, var_0.c.b.c), global1.b.x, Struct_1(global1.a, !vec2<bool>(var_0.c.b.b.x, true), abs(global0.a.b.a))), u_input.a, Struct_2(_wgslsmith_div_vec3_u32(~var_0.c.a, ~(~vec3<u32>(u_input.d, 4294967295u, global1.a))), global0.a.d, global0.c.b.b.x, Struct_1(global0.c.b.c, global0.c.d.b, 4294967295u)));
    let var_1 = global0.b.x;
    var_0 = Struct_3(Struct_2(max(reverseBits(var_0.c.a), ~vec3<u32>(30802u, 11213u, 1u)), var_0.a.b, var_0.a.b.b.x, Struct_1(global1.a, !select(vec2<bool>(global0.a.c, true), vec2<bool>(var_0.c.c, false), vec2<bool>(false, true)), ~4294967295u)), ~min(max(var_0.b, vec2<i32>(0i, 2147483647i) | vec2<i32>(-24198i, u_input.e)), vec2<i32>(-61640i, min(global0.b.x, global2[_wgslsmith_index_u32(1u, 21u)]))), global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-139f + _wgslsmith_f_op_f32(f32(-1f) * -273f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -638f), -1037f), abs(vec2<i32>(-(global0.b.x << (global1.a % 32u)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(1u, 21u)], -29244i), var_0.b.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(~firstTrailingBit(u_input.b.x), 21u)], global0.b.x, u_input.e, abs(-1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(~1u, 21u)], -41211i, i32(-1i) * -1i, -52689i), max(select(vec4<i32>(global2[_wgslsmith_index_u32(45425u, 21u)], u_input.a.x, -15746i, 13373i), vec4<i32>(1i, var_0.b.x, -3827i, global0.b.x), vec4<bool>(var_0.a.b.b.x, var_0.c.c, false, false)), vec4<i32>(-6035i, -9145i, -22065i, 0i) & vec4<i32>(global0.b.x, -20137i, global2[_wgslsmith_index_u32(global1.a, 21u)], 46458i)))));
}

