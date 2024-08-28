struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
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

var<private> global0: array<vec2<bool>, 16>;

var<private> global1: Struct_1;

var<private> global2: array<i32, 6> = array<i32, 6>(-2267i, 1i, -12973i, 2147483647i, 19862i, -5623i);

var<private> global3: array<vec4<u32>, 25>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = false;
    return 51457u;
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    global2 = array<i32, 6>();
    global1 = arg_0;
    var var_0 = countOneBits(-(~(-u_input.a.x)));
    var_0 = countOneBits(select(-(~(1i >> (arg_0.c % 32u))), _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.e.x, u_input.a.x), -(u_input.e.x & 45490i)), false));
    var_0 = 0i;
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(arg_0.b))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec2<f32>) -> i32 {
    global2 = array<i32, 6>();
    global3 = array<vec4<u32>, 25>();
    let var_0 = arg_1;
    return -3666i;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_1(u_input.d.wwz ^ ~(vec3<u32>(96928u, u_input.d.x, global1.c) | vec3<u32>(u_input.c.x, global1.a.x, 33001u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.b.x * 1000f))), global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(761f)) - _wgslsmith_f_op_f32(global1.b.x * global1.b.x))) - vec3<f32>(_wgslsmith_f_op_f32(-global1.b.x), -216f, _wgslsmith_f_op_f32(f32(-1f) * -253f))), select(countOneBits(u_input.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(93028u, global1.a.x), abs(global1.a.x)), ~vec2<u32>(4294967295u, 3700u)), any(global0[_wgslsmith_index_u32(~6474u, 16u)])));
    var var_1 = 0u;
    var var_2 = ~vec2<i32>(u_input.b.x, func_4(Struct_1(~u_input.d.zxx, _wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<u32>(var_0.c, global1.a.x, u_input.c.x), global1.b, global1.c))), firstTrailingBit(global1.c)), Struct_3(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, -2147483647i), u_input.e.zyz), false), Struct_1(vec3<u32>(u_input.d.x, 0u, 96952u) & vec3<u32>(96030u, 69703u, var_0.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, global1.b.x, global1.b.x)), 5066u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-107f, var_0.b.x) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-119f, 983f))))));
    var_1 = global1.a.x;
    var var_3 = vec4<bool>(true, true, true, false);
    return Struct_3(_wgslsmith_div_f32(var_0.b.x, -1965f), var_2.x, false && var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.e.x, u_input.a.x), vec2<i32>(countOneBits(-global2[_wgslsmith_index_u32(u_input.d.x, 6u)]) << (u_input.d.x % 32u), ~(1025i << ((4294967295u | global1.a.x) % 32u))));
    let var_1 = Struct_1(~(_wgslsmith_add_vec3_u32(~vec3<u32>(global1.a.x, 41527u, 4294967295u), ~u_input.d.www) | max(u_input.d.xxz, firstTrailingBit(vec3<u32>(58354u, global1.c, u_input.d.x)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1233f, 133f, global1.b.x))) * global1.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(894f + global1.b.x), _wgslsmith_f_op_f32(floor(-492f))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(global1.b))))))), ~(~func_1(true)));
    global2 = array<i32, 6>();
    var var_2 = func_2();
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-var_2.a), var_2.a, -776f, _wgslsmith_f_op_f32(abs(-737f)));
    let var_4 = _wgslsmith_clamp_vec2_i32(-min(u_input.a.xz, -vec2<i32>(global2[_wgslsmith_index_u32(global1.c, 6u)], u_input.a.x)), abs(~(~u_input.a.zx ^ _wgslsmith_add_vec2_i32(vec2<i32>(-2172i, 2147483647i), vec2<i32>(var_0.x, 0i)))), vec2<i32>(global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_div_u32(6691u, 2722u), u_input.d.x & 1u), 6u)], var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, func_2().a) + _wgslsmith_f_op_vec3_f32(func_3(var_1)).yy)));
}

