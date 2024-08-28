struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(0u, 57375u, 1u, 0u));

var<private> global1: f32 = 800f;

var<private> global2: array<Struct_2, 11>;

var<private> global3: Struct_2;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(1u >> (~global3.a.x % 32u)) ^ ~(_wgslsmith_dot_vec3_u32(global0.a.ywy, global0.a.zxy) | 24874u), u_input.a), 11u)];
    var var_0 = -1i;
    var var_1 = _wgslsmith_f_op_vec4_f32(global4.d - _wgslsmith_f_op_vec4_f32(global4.d * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.e.x, global4.d.x, global4.e.x, -252f))))));
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 0u), 11u)];
    let var_2 = Struct_2(~vec4<u32>(119924u, ~global3.a.x, ~select(1u, global3.a.x, global4.b), global0.a.x));
    return select(i32(-1i) * -5058i, u_input.b, global4.b);
}

fn func_2() -> vec3<bool> {
    global4 = Struct_1(~(vec3<i32>(func_3(), 0i, global4.a.x) | abs(vec3<i32>(global4.a.x, 2147483647i, global4.a.x))), any(select(vec3<bool>(any(vec4<bool>(global4.b, false, true, true)), all(vec2<bool>(global4.b, false)), !global4.b), select(vec3<bool>(global4.b, false, global4.b), vec3<bool>(true, false, false), !global4.b), vec3<bool>(true, true, global4.b || global4.b))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global4.d.x, 1000f), _wgslsmith_f_op_f32(step(1555f, global4.d.x))), -160f), global4.e.xx)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global4.d)), global4.d)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global4.d.x, 1464f, global4.d.x, global4.c.x))) * _wgslsmith_f_op_vec4_f32(-global4.d)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(abs(-424f)), global4.e.x, _wgslsmith_div_f32(global4.e.x, -529f)))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-global4.c.x), global4.d.x, -1000f)))));
    var var_0 = 29786u;
    let var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 45536u) ^ vec2<u32>(0u, u_input.a), global3.a.ww | global0.a.zz, !vec2<bool>(global4.b, global4.b)), abs(firstTrailingBit(global3.a.xw))), firstTrailingBit(abs(u_input.a))) << (global3.a.xy % vec2<u32>(32u));
    var var_2 = global2[_wgslsmith_index_u32(67071u, 11u)];
    var var_3 = Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(-u_input.b, ~u_input.b, u_input.b), _wgslsmith_mod_vec3_i32(vec3<i32>(global4.a.x >> (u_input.a % 32u), 2147483647i, ~(-1i)), vec3<i32>(_wgslsmith_mod_i32(-15111i, 44338i), func_3(), _wgslsmith_dot_vec2_i32(global4.a.zx, vec2<i32>(u_input.b, -52449i))))), global4.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global4.c.x, global4.c.x))) + global4.d.xy))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(exp2(global4.e.x)))), global4.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-486f * global4.d.x), global4.e.x)), global4.c.x), global4.e);
    return select(select(vec3<bool>(true, var_3.b, global4.c.x > _wgslsmith_f_op_f32(-307f * 496f)), select(vec3<bool>(u_input.b <= u_input.b, all(vec2<bool>(false, true)), true), select(vec3<bool>(true, false, false), !vec3<bool>(global4.b, global4.b, global4.b), select(vec3<bool>(false, false, global4.b), vec3<bool>(true, var_3.b, false), true)), false || var_3.b), vec3<bool>(false, _wgslsmith_f_op_f32(round(global4.d.x)) < -475f, !global4.b)), vec3<bool>(true, all(select(!vec4<bool>(var_3.b, global4.b, var_3.b, var_3.b), vec4<bool>(false, false, global4.b, var_3.b), all(vec3<bool>(global4.b, false, true)))), !(global0.a.x != _wgslsmith_sub_u32(global3.a.x, u_input.a))), !(!vec3<bool>(false, !var_3.b, true)));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = _wgslsmith_div_u32(~firstLeadingBit(u_input.a), _wgslsmith_add_u32(_wgslsmith_div_u32(firstLeadingBit(18186u), 105564u), arg_2));
    global4 = Struct_1(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(-global4.a.x, -1i), -2147483647i), _wgslsmith_clamp_i32(-_wgslsmith_sub_i32(global4.a.x, u_input.b), -2147483647i, reverseBits(firstTrailingBit(u_input.b))), ~_wgslsmith_mult_i32(firstTrailingBit(u_input.b), firstTrailingBit(u_input.b))), false, global4.d.xz, global4.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global4.d.wwz))));
    return abs(countOneBits(~vec2<u32>(min(var_0, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, 4294967295u, global0.a.x), vec3<u32>(76687u, u_input.a, 40455u)))));
}

fn func_1(arg_0: vec3<f32>) -> bool {
    var var_0 = func_4(global2[_wgslsmith_index_u32(49200u, 11u)], any(select(!(!vec3<bool>(global4.b, global4.b, false)), func_2(), !(-2913f != global4.c.x))), ~25618u, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~_wgslsmith_mult_u32(4294967295u, 1u)), 1u), 11u)]);
    var var_1 = !vec3<bool>(!global4.b | global4.b, true, ~u_input.a > _wgslsmith_dot_vec3_u32(global3.a.zzx, ~vec3<u32>(6865u, u_input.a, global0.a.x)));
    var var_2 = Struct_1(~global4.a & global4.a, false, _wgslsmith_f_op_vec2_f32(global4.c + arg_0.zx), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1289f, 1207f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(972f * arg_0.x))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -195f)), -566f, -391f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(298f)) - arg_0.x))), vec3<f32>(global4.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(209f))) - -1054f), -340f));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -global4.a.x;
    var var_1 = 7741u;
    var var_2 = -25541i;
    let var_3 = select(select(select(vec2<bool>(false, global4.b), select(!vec2<bool>(global4.b, true), select(vec2<bool>(true, global4.b), vec2<bool>(global4.b, global4.b), vec2<bool>(true, global4.b)), select(vec2<bool>(false, global4.b), vec2<bool>(false, global4.b), vec2<bool>(true, true))), vec2<bool>(!global4.b, func_1(vec3<f32>(global4.c.x, global4.d.x, -233f)))), vec2<bool>(all(!vec4<bool>(global4.b, global4.b, true, global4.b)), global4.b), !(!(!vec2<bool>(true, global4.b)))), !vec2<bool>(any(!vec2<bool>(global4.b, false)), true), select(select(func_2().zy, select(vec2<bool>(global4.b, global4.b), vec2<bool>(true, true), vec2<bool>(global4.b, global4.b)), func_2().yy), vec2<bool>(any(!vec4<bool>(false, global4.b, global4.b, true)), !global4.b), !any(select(vec2<bool>(global4.b, true), vec2<bool>(false, global4.b), vec2<bool>(true, true)))));
    var var_4 = !(!vec3<bool>(global4.b, false, (310f >= global4.d.x) && var_3.x));
    global4 = Struct_1(global4.a, -38365i > ~(-2147483647i & abs(u_input.b)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.c.x + _wgslsmith_div_f32(global4.c.x, 1416f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global4.e.x)))), -898f), vec4<f32>(375f, -1164f, _wgslsmith_f_op_f32(-885f * _wgslsmith_f_op_f32(-1073f + -775f)), -158f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.d.ywz) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.d.wwx) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.d.x, global4.c.x, global4.c.x) - vec3<f32>(-1000f, 1000f, global4.d.x))))));
    let var_5 = !vec3<bool>(~global0.a.x <= (_wgslsmith_div_u32(4294967295u, u_input.a) & abs(global3.a.x)), false, global4.b);
    var var_6 = _wgslsmith_f_op_f32(-429f * -438f);
    let var_7 = global2[_wgslsmith_index_u32(1u, 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(42746i, 1i, ~(_wgslsmith_dot_vec3_i32(vec3<i32>(-2077i, u_input.b, 35475i), global4.a) | global4.a.x)), global4.d.yyy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.e.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-2495f)))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-2000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + global4.e.x), _wgslsmith_f_op_f32(-global4.d.x)))), abs(-_wgslsmith_div_i32(_wgslsmith_sub_i32(global4.a.x, global4.a.x), global4.a.x)));
}

