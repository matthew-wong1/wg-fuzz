struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<u32, 5> = array<u32, 5>(37467u, 4294967295u, 0u, 49812u, 14043u);

var<private> global2: vec2<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = arg_1.d.x;
    global1 = array<u32, 5>();
    global1 = array<u32, 5>();
    let var_1 = ~(~(~select(~vec2<u32>(0u, u_input.c.x), u_input.c.wx, all(vec3<bool>(true, arg_0.b, arg_1.b)))));
    var var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x << (1u % 32u), ~3334u), vec2<u32>(select(arg_1.c, firstTrailingBit(4294967295u), select(any(vec3<bool>(arg_1.b, true, arg_0.b)), arg_1.b, any(vec3<bool>(arg_1.b, true, arg_1.b)))), 1u));
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec2<i32>, arg_3: bool) -> vec3<f32> {
    let var_0 = false | (func_3(Struct_1(vec2<f32>(378f, -1296f), true, _wgslsmith_mult_u32(global2.x, arg_0.a), u_input.b.yxw), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(922f, global0.x), vec2<f32>(712f, global0.x)), arg_3, arg_0.a, ~vec3<i32>(arg_2.x, -54659i, -37089i))) || true);
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-2010f * -544f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(680f + global0.x))) * _wgslsmith_f_op_f32(-global0.x))), false, 6521u, vec3<i32>(-1i) * -vec3<i32>(0i, u_input.b.x, 0i >> (global1[_wgslsmith_index_u32(18607u, 5u)] % 32u)));
    var var_2 = Struct_2(arg_1);
    let var_3 = select(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, arg_2.x >> (arg_1 % 32u)), _wgslsmith_mod_vec2_i32(u_input.b.zx, vec2<i32>(u_input.b.x, -31147i))), max(vec2<i32>(arg_2.x | -2147483647i, abs(1470i)), vec2<i32>(-1i, -arg_2.x))), arg_2, func_3(Struct_1(_wgslsmith_f_op_vec2_f32(select(var_1.a, _wgslsmith_f_op_vec2_f32(abs(global0.xy)), select(vec2<bool>(arg_3, var_1.b), vec2<bool>(true, true), vec2<bool>(var_1.b, arg_3)))), true, max(14156u, var_2.a << (0u % 32u)), ~u_input.b.yxz), var_1));
    global1 = array<u32, 5>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(global0.xxz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1736f, -1866f, var_1.a.x) + global0.xwx) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1463f, 1567f, var_1.a.x), vec3<f32>(1060f, 1000f, 351f))))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-495f))), var_1.a.x));
}

fn func_1() -> u32 {
    global2 = vec2<u32>(1u ^ ~u_input.a, global1[_wgslsmith_index_u32(96402u << (_wgslsmith_dot_vec2_u32(~u_input.c.xw, countOneBits(_wgslsmith_div_vec2_u32(u_input.c.zy, u_input.c.ww))) % 32u), 5u)]);
    global1 = array<u32, 5>();
    global1 = array<u32, 5>();
    var var_0 = _wgslsmith_f_op_vec3_f32(func_2(Struct_2(~(~_wgslsmith_mod_u32(u_input.a, 0u))), abs(1u), _wgslsmith_mult_vec2_i32(countOneBits(reverseBits(vec2<i32>(u_input.b.x, -15106i))), u_input.b.xw), any(select(vec4<bool>(any(vec2<bool>(false, false)), true, true, all(vec4<bool>(false, true, false, false))), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))))));
    let var_1 = false;
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1119f)))) + _wgslsmith_f_op_f32(-1093f - 810f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-586f + _wgslsmith_f_op_f32(global0.x * 900f)))), _wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(trunc(-714f)))));
    var var_0 = func_1();
    global2 = vec2<u32>(select(1u, _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.c.x, firstLeadingBit(1u)), min(8673u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, global2.x, global2.x), u_input.c.wzz))), _wgslsmith_f_op_f32(1401f - _wgslsmith_f_op_f32(1000f * global0.x)) > global0.x), 11697u);
    let var_1 = Struct_2(4294967295u);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global0.zx * _wgslsmith_f_op_vec2_f32(global0.ww + _wgslsmith_f_op_vec2_f32(-global0.xz))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global0.zz))))), true == any(vec4<bool>(true, true, true, true)), 20355u, _wgslsmith_clamp_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec3_i32(u_input.b.wyz, u_input.b.yyw), _wgslsmith_mod_i32(-1i, u_input.b.x), _wgslsmith_mult_i32(u_input.b.x, -u_input.b.x)), u_input.b.wzw, _wgslsmith_mult_vec3_i32(-_wgslsmith_div_vec3_i32(u_input.b.zxz, u_input.b.wwx), ~(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) << (vec3<u32>(4113u, 0u, 0u) % vec3<u32>(32u))))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, var_2.a.x)))) * _wgslsmith_f_op_vec2_f32(global0.yw - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(global0.x, 124f)))))), any(!(!vec3<bool>(true, false, var_2.b))), _wgslsmith_dot_vec2_u32(select(u_input.c.xw, vec2<u32>(32001u, 3872u) & u_input.c.wy, false), vec2<u32>(0u ^ global2.x, _wgslsmith_div_u32(14169u, var_1.a))) << (_wgslsmith_dot_vec2_u32(select(~vec2<u32>(22211u, global1[_wgslsmith_index_u32(var_1.a, 5u)]), vec2<u32>(u_input.c.x, 61252u) << (vec2<u32>(0u, var_2.c) % vec2<u32>(32u)), func_3(Struct_1(var_2.a, var_2.b, global2.x, u_input.b.xxy), Struct_1(global0.wy, false, var_2.c, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)))), u_input.c.xw >> (vec2<u32>(16246u, global1[_wgslsmith_index_u32(global2.x, 5u)]) % vec2<u32>(32u))) % 32u), var_2.d);
    let var_4 = _wgslsmith_div_vec3_f32(vec3<f32>(var_3.a.x, 112f, _wgslsmith_f_op_f32(-global0.x)), global0.yzw);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a);
}

