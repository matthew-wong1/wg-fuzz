struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_2,
    d: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct Struct_5 {
    a: bool,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<u32>;

var<private> global2: Struct_4 = Struct_4(true, -1000f);

var<private> global3: array<Struct_4, 21>;

var<private> global4: array<vec4<i32>, 14>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = select(select(vec3<bool>(u_input.c.x >= 2147483647i, true, global2.a), !(!vec3<bool>(true, global2.a, false)), false), !vec3<bool>(true, all(select(vec4<bool>(global2.a, global2.a, global2.a, global2.a), vec4<bool>(global2.a, false, global2.a, false), vec4<bool>(global2.a, true, global2.a, true))), !select(global2.a, global2.a, global2.a)), !any(select(select(vec3<bool>(global2.a, true, global2.a), vec3<bool>(global2.a, true, true), vec3<bool>(true, global2.a, false)), !vec3<bool>(global2.a, global2.a, global2.a), true)));
    var var_1 = _wgslsmith_sub_u32(u_input.b.x, ~global1.x);
    var var_2 = -1007f;
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, global2.b, global2.b, global2.b) * vec4<f32>(680f, global2.b, -896f, 2700f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, global2.b, 803f, global2.b) - vec4<f32>(global2.b, global2.b, 1037f, global2.b)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(174f, global2.b, global2.b, -175f))))))), Struct_2(global2.b <= _wgslsmith_f_op_f32(select(345f, global2.b, true)), 602f, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(459f))), 2147483647i, global4[_wgslsmith_index_u32(4294967295u, 14u)], vec4<bool>(global2.a || false, false, any(var_0.yz), true), global2.b), !(!(!var_0))), Struct_2(!(!any(vec4<bool>(var_0.x, global2.a, false, var_0.x))), _wgslsmith_f_op_f32(sign(global2.b)), Struct_1(global2.b, 37389i, countOneBits(global4[_wgslsmith_index_u32(u_input.b.x, 14u)] << (vec4<u32>(1u, 9706u, 1u, 4294967295u) % vec4<u32>(32u))), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1765f, 502f))), vec3<bool>(true, !var_0.x, !global2.a | global2.a)), global1.wx);
    var var_4 = ~countOneBits(_wgslsmith_clamp_vec2_i32(var_3.c.c.c.wx, -vec2<i32>(var_3.c.c.c.x, var_3.c.c.c.x), -var_3.b.c.c.yw) ^ ~countOneBits(vec2<i32>(7875i, 11363i)));
    return -var_3.c.c.c.x;
}

fn func_2(arg_0: Struct_5) -> i32 {
    global3 = array<Struct_4, 21>();
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b) * arg_0.b)));
    let var_1 = false;
    let var_2 = vec3<u32>(0u, ~(~(abs(26928u) | ~arg_0.d.x)), 91609u);
    let var_3 = global3[_wgslsmith_index_u32(13301u | var_2.x, 21u)];
    return func_3();
}

fn func_1() -> i32 {
    var var_0 = global2.a;
    let var_1 = vec2<i32>(~max(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2547i, u_input.c.x), ~u_input.a), _wgslsmith_clamp_i32(u_input.a.x, func_2(Struct_5(false, vec3<f32>(global2.b, global2.b, -884f), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.c.x), vec4<u32>(57138u, u_input.b.x, 18431u, u_input.b.x), Struct_2(false, -1112f, Struct_1(174f, u_input.c.x, global4[_wgslsmith_index_u32(0u, 14u)], vec4<bool>(global2.a, global2.a, true, true), 915f), vec3<bool>(global2.a, true, true)))), -u_input.c.x)), -select(_wgslsmith_div_i32(abs(-648i), u_input.c.x << (global1.x % 32u)), -4390i, true));
    global0 = global2.a;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(606f, _wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(step(global2.b, 1254f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1255f, 1210f, global2.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, 1557f, global2.b) - _wgslsmith_div_vec3_f32(vec3<f32>(1000f, global2.b, global2.b), vec3<f32>(429f, global2.b, -218f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(993f, global2.b, -963f), vec3<f32>(global2.b, 660f, global2.b)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, -937f, global2.b)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, global2.b, _wgslsmith_f_op_f32(-global2.b)) - vec3<f32>(659f, 1154f, global2.b))));
    let var_3 = _wgslsmith_f_op_f32(global2.b - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-528f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(192f + global2.b), global2.b))) + global2.b));
    return 32873i;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<i32>, 14>();
    var var_0 = -vec3<i32>(_wgslsmith_add_i32(func_1(), 0i), -_wgslsmith_mult_i32(_wgslsmith_mod_i32(-2147483647i, -2147483647i), -17734i), 1i);
    global1 = select(~(~(~vec4<u32>(37721u, u_input.b.x, 13455u, 0u))), ~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(54516u, 11189u, 15823u, 36815u), vec4<u32>(12994u, global1.x, 47407u, global1.x), vec4<u32>(u_input.b.x, 0u, 4294967295u, global1.x))), select(select(!vec4<bool>(false, global2.a, global2.a, false), vec4<bool>(false, global2.a, global2.a, global2.a), global2.a), vec4<bool>(select(false, global2.a, true), true, global2.a, false & global2.a), select(!vec4<bool>(global2.a, global2.a, true, false), select(vec4<bool>(true, false, false, global2.a), vec4<bool>(global2.a, global2.a, global2.a, global2.a), true), !vec4<bool>(false, global2.a, true, true)))) >> (abs(vec4<u32>(0u, abs(_wgslsmith_mod_u32(13209u, 24371u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 40540u, global1.x, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, global1.x, global1.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(13958u, 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(30473u, global1.x), vec2<u32>(1u, global1.x))))) % vec4<u32>(32u));
    global2 = Struct_4(true, global2.b);
    let x = u_input.a;
    s_output = StorageBuffer(abs(global1.www), ~u_input.c, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.b, global2.b) * _wgslsmith_f_op_f32(max(225f, global2.b))) * global2.b), global2.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.b, 987f) * 766f), -1000f));
}

