struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 13>;

var<private> global1: array<Struct_3, 31>;

var<private> global2: vec3<bool>;

var<private> global3: Struct_3 = Struct_3(vec4<bool>(true, true, false, false), 5076u, true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: vec4<bool>) -> u32 {
    global3 = global1[_wgslsmith_index_u32(~(u_input.e.x & ~u_input.e.x), 31u)];
    global2 = vec3<bool>(any(!arg_1.a), arg_1.c, global3.c);
    var var_0 = Struct_4(-198f, arg_1);
    let var_1 = vec2<f32>(var_0.a, -569f);
    let var_2 = _wgslsmith_div_i32(i32(-1i) * -1i, -_wgslsmith_sub_i32(u_input.b.x, 7558i));
    return ~55604u;
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = _wgslsmith_mod_i32(u_input.b.x, ~_wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, _wgslsmith_add_i32(u_input.b.x, 1i)), _wgslsmith_mult_i32(0i << (u_input.e.x % 32u), ~u_input.b.x)));
    var var_1 = Struct_4(1f, Struct_3(global3.a, ~u_input.c.x, true));
    global0 = array<vec4<i32>, 13>();
    let var_2 = select(!select(select(var_1.b.a.xxx, vec3<bool>(true, global3.c, global3.c), 45526i > u_input.a), vec3<bool>(any(vec4<bool>(global3.a.x, global3.a.x, global3.a.x, true)), global2.x && false, any(var_1.b.a.wy)), true), !(!vec3<bool>(true, -770f <= var_1.a, global3.c & global2.x)), all(!(!(!var_1.b.a.zz))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(var_1.a)), 214f, 256f)), !global3.a.x, Struct_1(global3.b, u_input.d.x, select(select(var_1.b.a.yw, !vec2<bool>(var_1.b.c, true), !global3.c), global3.a.xx, !select(vec2<bool>(true, true), global3.a.xx, global3.a.xz)), false), select(!(!select(vec3<bool>(false, false, false), vec3<bool>(global2.x, false, true), vec3<bool>(false, true, true))), select(!global3.a.zxy, vec3<bool>(true, true, true), !var_1.b.a.x), (true & all(vec4<bool>(false, true, true, false))) && any(vec3<bool>(var_1.b.a.x, global3.c, var_2.x))), Struct_1(40277u, ~u_input.c.x & global3.b, var_1.b.a.ww, global2.x));
    return firstLeadingBit(i32(-1i) * -14944i);
}

fn func_1() -> StorageBuffer {
    var var_0 = ~abs(_wgslsmith_mod_vec4_u32(abs(~u_input.d), vec4<u32>(_wgslsmith_sub_u32(67623u, 26842u), _wgslsmith_add_u32(4294967295u, global3.b), u_input.d.x, ~global3.b)));
    var var_1 = reverseBits(_wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.b.wzz, u_input.b.xxy), min(-20813i, u_input.a)) >> (firstLeadingBit(func_2(2147483647i, Struct_3(global3.a, global3.b, global3.a.x), vec4<bool>(true, global3.c, false, global2.x))) % 32u), func_3(min(~68177u, ~global3.b))));
    var var_2 = Struct_1(~_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.d.x, u_input.d.x), 8049u) ^ 0u, ~global3.b, !vec2<bool>(true, all(global2.yy) && true), global3.a.x);
    global3 = global1[_wgslsmith_index_u32(var_0.x, 31u)];
    global3 = Struct_3(!(!global3.a), ~_wgslsmith_mod_u32(var_2.a, 0u), false);
    return StorageBuffer(_wgslsmith_clamp_i32(~(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 1i, -2147483647i, 1i), vec4<i32>(2147483647i, 1i, u_input.a, 0i)) >> (1u % 32u)), ~firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(u_input.a, 72114i))), -_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.wx, vec2<i32>(2147483647i, -4998i), u_input.b.zz), u_input.b.yz | u_input.b.wz)), 4294967295u, countOneBits(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], u_input.b), -global0[_wgslsmith_index_u32(var_0.x, 13u)]), 1i << (_wgslsmith_add_u32(u_input.c.x, 0u) % 32u))), var_0.yzx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.xzw;
    var var_1 = -773f;
    let var_2 = vec3<u32>(global3.b, _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.x, u_input.d.x), ~global3.b), ~_wgslsmith_dot_vec3_u32(u_input.d.yxw, u_input.e)), u_input.d.x), 11896u);
    global0 = array<vec4<i32>, 13>();
    var var_3 = ~(_wgslsmith_div_vec3_u32(vec3<u32>(1u, max(4294967295u, 0u), min(109685u, var_2.x)), var_2) & abs(~(~vec3<u32>(var_2.x, 40345u, u_input.d.x))));
    global1 = array<Struct_3, 31>();
    var var_4 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(-48678i, u_input.b.x) >> (var_2.yy % vec2<u32>(32u)), reverseBits(u_input.b.zw), !vec2<bool>(global2.x, false)), -(-u_input.b.ww << (_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(17241u, 0u)) % vec2<u32>(32u)))), i32(-1i) * -u_input.b.x);
    var var_5 = ~(i32(-1i) * -1i);
    var var_6 = 1u;
    let x = u_input.a;
    s_output = func_1();
}

