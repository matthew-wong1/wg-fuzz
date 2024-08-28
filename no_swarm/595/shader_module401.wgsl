struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 0u, 4367u, 1u);

var<private> global1: f32 = -843f;

var<private> global2: array<Struct_2, 11>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: f32) -> i32 {
    let var_0 = Struct_5(vec2<u32>(~u_input.b, 0u) & select(global0.yy, ~global0.wx, true), vec2<i32>(_wgslsmith_clamp_i32(2147483647i, 1i, _wgslsmith_mod_i32(18104i, 1i)), _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, -54980i & u_input.c.x)) ^ vec2<i32>(14321i, 10827i));
    var var_1 = i32(-1i) * -2147483647i;
    global0 = ~(~vec4<u32>(max(u_input.a, global0.x) | (arg_0 | var_0.a.x), ~1u, _wgslsmith_clamp_u32(global0.x, _wgslsmith_mod_u32(0u, global0.x), abs(var_0.a.x)), countOneBits(_wgslsmith_mod_u32(global0.x, 1u))));
    global0 = countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, 73171u, global0.x), abs(vec4<u32>(1u, var_0.a.x, 0u, arg_0)) << (~vec4<u32>(var_0.a.x, global0.x, global0.x, var_0.a.x) % vec4<u32>(32u)))) ^ vec4<u32>(var_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u >> (var_0.a.x % 32u), firstTrailingBit(4030u), ~global0.x), vec3<u32>(57030u, global0.x, 0u)), _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(29340u, 0u, 1u, 0u), vec4<u32>(global0.x, 1u, 98298u, 58521u)), ~1u), 50532u);
    let var_2 = countOneBits(~(~global0.xy | ~var_0.a));
    return _wgslsmith_dot_vec2_i32(u_input.c.zz, ~vec2<i32>(-1i, _wgslsmith_div_i32(12346i, 2147483647i) ^ var_0.b.x));
}

fn func_2(arg_0: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-510f, _wgslsmith_div_f32(-1666f, -479f)) * vec2<f32>(_wgslsmith_f_op_f32(trunc(-763f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1161f * -200f)))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(122f, 534f));
    let var_1 = Struct_1(countOneBits(_wgslsmith_add_vec4_i32(firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-24561i, 0i, 3511i, u_input.c.x), vec4<i32>(29141i, -2147483647i, 0i, -1i), vec4<i32>(1i, u_input.c.x, 1i, -24520i))), -vec4<i32>(1i, u_input.c.x, 1i, 1i))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, 857f), vec2<f32>(-175f, 772f), false)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(333f, var_0.x))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(615f, var_0.x), vec2<f32>(var_0.x, 1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-455f, var_0.x)))))), _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_mult_vec3_u32(abs(abs(firstTrailingBit(vec3<u32>(u_input.b, global0.x, arg_0)))), _wgslsmith_mult_vec3_u32(~(vec3<u32>(u_input.b, 4294967295u, 0u) ^ global0.zyx), _wgslsmith_mult_vec3_u32(global0.yxw, global0.xxz) & ~global0.ywy)));
    var var_2 = Struct_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(var_1.c - -986f)), vec3<bool>(true, true, true), var_1.c), var_1.d.zx);
    let var_3 = func_3(~(~(~0u)), _wgslsmith_f_op_f32(-var_2.a.c));
    return select(vec4<bool>(all(!vec4<bool>(false, var_2.a.b.x, var_2.a.b.x, var_2.a.b.x)), var_2.a.b.x, var_2.a.b.x, true || ((var_1.b.x == 107f) | var_2.a.b.x)), vec4<bool>(any(vec3<bool>(var_2.a.b.x, any(var_2.a.b), !var_2.a.b.x)), all(var_2.a.b) & !var_2.a.b.x, true, !any(!vec4<bool>(false, true, false, var_2.a.b.x))), select(!(!(!vec4<bool>(false, false, true, var_2.a.b.x))), !select(vec4<bool>(true, true, var_2.a.b.x, var_2.a.b.x), vec4<bool>(false, true, var_2.a.b.x, true), var_2.a.b.x), (all(vec3<bool>(false, var_2.a.b.x, false)) & (var_2.a.b.x && var_2.a.b.x)) && true));
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = global0.x;
    var var_1 = !func_2(u_input.b);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-460f)))), _wgslsmith_f_op_f32(-arg_0)))), select(select(select(!vec3<bool>(var_1.x, false, var_1.x), func_2(25732u).xyw, !vec3<bool>(true, var_1.x, true)), var_1.yxx, var_1.xwz), vec3<bool>(!var_1.x, any(!vec4<bool>(false, var_1.x, true, var_1.x)), var_1.x), !vec3<bool>(func_2(u_input.d).x, !var_1.x, select(var_1.x, var_1.x, true))), 920f);
    global0 = ~vec4<u32>(~24233u, global0.x, ~global0.x, 98497u);
    let var_3 = select(false, var_1.x, var_2.b.x | !(!any(vec4<bool>(var_1.x, false, var_2.b.x, var_1.x))));
    return global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(3392u | countOneBits(_wgslsmith_dot_vec2_u32(global0.xy, vec2<u32>(57452u, 59397u))), global0.x), 11u)];
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_5(_wgslsmith_div_vec2_u32(global0.wx, global0.zw), -vec2<i32>(_wgslsmith_add_i32(-1i, 30469i), abs(u_input.c.x)));
    var var_1 = countOneBits(global0.xwy);
    global2 = array<Struct_2, 11>();
    let var_2 = any(arg_3.b);
    var var_3 = !vec2<bool>(var_2, true);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(652f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x))) * 347f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_4(Struct_3(2144f, vec3<bool>(true, true, true), -967f), _wgslsmith_dot_vec2_u32(~global0.zx, min(vec2<u32>(u_input.d, 0u), global0.ww)), func_1(_wgslsmith_f_op_f32(max(136f, 409f))), func_1(_wgslsmith_f_op_f32(f32(-1f) * -1765f)))), _wgslsmith_f_op_f32(-1276f - _wgslsmith_f_op_f32(func_4(Struct_3(-382f, vec3<bool>(true, false, true), -564f), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d, 1u, 4294967295u), vec4<u32>(1u, 4294967295u, u_input.d, 73200u)), func_1(527f), Struct_2(vec3<f32>(-1025f, 1638f, -582f), vec3<bool>(false, true, false))))), _wgslsmith_f_op_f32(select(-1182f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2996f) + -360f), func_2(~u_input.d).x))));
    let var_1 = Struct_5(~global0.zx ^ ((~vec2<u32>(1u, 49528u) | (vec2<u32>(9387u, u_input.d) & global0.zy)) ^ vec2<u32>(26384u, 2574u)), u_input.c.yz);
    let var_2 = Struct_4(Struct_3(1000f, !func_1(_wgslsmith_f_op_f32(-var_0.x)).b, _wgslsmith_f_op_f32(func_1(-1187f).a.x * _wgslsmith_f_op_f32(309f - -1821f))), global0.yy);
    let var_3 = vec2<f32>(-2566f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2540f))));
    var var_4 = select(4294967295u, firstTrailingBit(_wgslsmith_dot_vec2_u32(global0.wz, var_1.a)), var_2.a.b.x);
    let var_5 = var_2.a.c;
    global2 = array<Struct_2, 11>();
    var_4 = select(4294967295u, ~abs((71061u << (1u % 32u)) << (firstTrailingBit(u_input.d) % 32u)), true);
    var var_6 = var_2.a.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_1.b.x, _wgslsmith_clamp_i32(firstTrailingBit(u_input.c.x), ~0i, _wgslsmith_div_i32(2147483647i, abs(-14664i)))), 2147483647i, ~(~(-max(var_1.b.x, -28797i))), 132f, -7042i);
}

