struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<bool>,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(0u, 4357u, 53970u), vec3<u32>(1u, 0u, 43473u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(1u, 23429u, 16018u), vec3<u32>(1u, 9007u, 0u), vec3<u32>(0u, 10221u, 44u), vec3<u32>(53560u, 28196u, 17519u), vec3<u32>(4294967295u, 0u, 19507u), vec3<u32>(6867u, 55799u, 1u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(78113u, 32768u, 43275u), vec3<u32>(68477u, 0u, 0u), vec3<u32>(100739u, 3195u, 4294967295u), vec3<u32>(1u, 85336u, 4294967295u), vec3<u32>(1u, 13680u, 1316u), vec3<u32>(4294967295u, 4294967295u, 16761u), vec3<u32>(4294967295u, 22572u, 4294967295u), vec3<u32>(24818u, 9891u, 44776u), vec3<u32>(37505u, 0u, 74444u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(1u, 94283u, 58384u), vec3<u32>(7062u, 0u, 28535u), vec3<u32>(0u, 16434u, 13082u), vec3<u32>(0u, 32252u, 18112u), vec3<u32>(17882u, 82839u, 4294967295u), vec3<u32>(36666u, 0u, 4294967295u), vec3<u32>(4294967295u, 8918u, 0u), vec3<u32>(1u, 4294967295u, 67820u));

var<private> global2: array<i32, 8>;

var<private> global3: f32;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<u32> {
    var var_0 = firstLeadingBit(~(~(_wgslsmith_dot_vec4_u32(vec4<u32>(9924u, 0u, 4294967295u, 20516u), vec4<u32>(4294967295u, 0u, 1u, 1u)) ^ ~67093u)));
    let var_1 = _wgslsmith_f_op_f32(floor(-982f));
    var var_2 = Struct_1(any(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, false, false)), select(true, false, false), false, true), true)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(min(_wgslsmith_div_u32(31211u, 4294967295u), ~1u), abs(2902u)), _wgslsmith_clamp_u32(abs(abs(4294967295u)), 4294967295u, ~1u)), 8u)], select(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(false, false, false)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), any(vec3<bool>(true, false, true)))), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-var_1), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, var_1) - var_1), var_1), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(-495f, var_1, true))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-326f, -882f)))));
    return vec2<u32>(1u, 1u);
}

fn func_2() -> f32 {
    global2 = array<i32, 8>();
    var var_0 = 361i;
    var var_1 = u_input.e.xwx;
    global1 = array<vec3<u32>, 29>();
    let var_2 = select(vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(var_1.x, -8311i), u_input.e.yz << (func_3() % vec2<u32>(32u))), ~_wgslsmith_mult_i32(~46280i, u_input.e.x)), u_input.e.wz, true & (_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1000f, -692f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(297f)))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(2173f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -208f))), any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)))));
}

fn func_1() -> u32 {
    let var_0 = ~(-u_input.e.wwx);
    global3 = _wgslsmith_f_op_f32(func_2());
    let var_1 = 4294967295u;
    var var_2 = !vec3<bool>(true, !any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), _wgslsmith_add_i32(countOneBits(var_0.x), ~u_input.d) >= ((-1i << (var_1 % 32u)) >> (reverseBits(11834u) % 32u)));
    var var_3 = Struct_1(any(!vec3<bool>(true, true, any(vec3<bool>(var_2.x, true, true)))), ~global2[_wgslsmith_index_u32(var_1 | _wgslsmith_sub_u32(4294967295u, var_1), 8u)] << (0u % 32u), select(select(select(select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(true, var_2.x, false), var_2.x), select(vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(false, false, var_2.x), false), select(vec3<bool>(true, var_2.x, true), vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, false))), vec3<bool>(var_1 > 27129u, var_2.x, var_2.x), 4294967295u >= var_1), select(vec3<bool>(true, true, false), !select(vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(false, true, false), vec3<bool>(true, var_2.x, var_2.x)), !(false || var_2.x)), var_2.x), -105f, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-409f)) + _wgslsmith_f_op_f32(-775f - _wgslsmith_f_op_f32(-187f + 1634f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 291f)) + -345f)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    var_0 = abs(global2[_wgslsmith_index_u32(func_1(), 8u)]);
    var var_1 = _wgslsmith_mod_i32(2147483647i, u_input.e.x);
    let var_2 = Struct_1(1f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-677f))), 31090i, vec3<bool>(!any(vec2<bool>(false, true)) & true, select(u_input.e.x <= global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 0u), 8u)], false, true), any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-444f * _wgslsmith_f_op_f32(sign(300f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-197f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-868f)))) - vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1988f + -1151f), _wgslsmith_f_op_f32(-1443f - -442f), all(vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-846f * -141f))))));
    var_0 = abs(-13049i);
    global2 = array<i32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(~1u, _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(select(u_input.e.wx, vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(97236u, 8u)]), var_2.c.x), u_input.e.yx, u_input.e.xw), u_input.e.zz), u_input.e.zz, _wgslsmith_div_vec2_i32(abs(vec2<i32>(-1i, -8751i)) ^ u_input.e.yy, firstLeadingBit(u_input.e.zz & u_input.e.zx))), vec2<i32>(45005i, -(u_input.d & u_input.e.x)));
}

