struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1159f, vec2<u32>(1u, 0u), Struct_1(86675u, -1i, vec3<u32>(69830u, 14765u, 46052u)), Struct_1(4294967295u, -67245i, vec3<u32>(37835u, 4294967295u, 0u)), 687f);

var<private> global1: vec3<i32> = vec3<i32>(-16876i, 2147483647i, 2147483647i);

var<private> global2: i32;

var<private> global3: array<Struct_2, 14>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> u32 {
    var var_0 = global0.e;
    return firstTrailingBit(min(~40128u, global0.c.a >> ((global0.d.c.x & 1u) % 32u)));
}

fn func_4(arg_0: u32, arg_1: vec3<u32>) -> i32 {
    var var_0 = global0.c;
    let var_1 = global3[_wgslsmith_index_u32(41518u | (~(~(~global0.b.x)) << (~global0.c.a % 32u)), 14u)];
    let var_2 = false;
    global2 = global0.d.b;
    var var_3 = u_input.d.x;
    return -(-23019i ^ ~_wgslsmith_clamp_i32(min(global1.x, global1.x), i32(-1i) * -2147483647i, ~15256i));
}

fn func_2() -> bool {
    global2 = ~func_4(func_3(), firstTrailingBit(~(vec3<u32>(global0.b.x, global0.b.x, global0.b.x) >> (vec3<u32>(1u, global0.b.x, global0.c.a) % vec3<u32>(32u)))));
    global1 = u_input.e.zwx;
    global2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-(-u_input.e.x >> (func_3() % 32u)), global0.d.b, _wgslsmith_mod_i32(-2147483647i, -65115i)), _wgslsmith_mod_vec3_i32(u_input.e.xyy, vec3<i32>(0i << (reverseBits(global0.d.a) % 32u), ~firstTrailingBit(global0.d.b), -max(u_input.b, global0.c.b))));
    let var_0 = Struct_1(firstLeadingBit(~11420u), countOneBits(~_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.e.wyz, u_input.e.yyy), vec3<i32>(0i, 2095i, global1.x))), vec3<u32>(26614u, ~global0.b.x, global0.c.c.x));
    var var_1 = Struct_2(global0.e, global0.b, var_0, Struct_1(34290u, -(~(-2147483647i)), global0.c.c), _wgslsmith_f_op_f32(f32(-1f) * -384f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e)) * _wgslsmith_f_op_f32(-global0.e)) + _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(ceil(var_1.a)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.e)));
}

fn func_1() -> StorageBuffer {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(trunc(global0.a));
    var var_2 = _wgslsmith_mult_vec4_u32(~(vec4<u32>(global0.b.x, global0.b.x >> (0u % 32u), firstLeadingBit(71895u), _wgslsmith_add_u32(global0.c.a, global0.b.x)) | (_wgslsmith_sub_vec4_u32(vec4<u32>(51992u, 1u, 61815u, 21346u), vec4<u32>(28726u, global0.d.a, global0.b.x, global0.d.c.x)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(5480u, 2514u, 1u, global0.b.x), vec4<u32>(6054u, 100809u, 10161u, 9577u)))), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, global0.c.c.x, global0.c.c.x, global0.b.x), vec4<u32>(global0.d.c.x, 4294967295u, 74822u, 1u) ^ vec4<u32>(0u, global0.c.c.x, 4294967295u, global0.c.c.x)) ^ ~min(vec4<u32>(global0.b.x, 4294967295u, global0.c.a, global0.d.a), vec4<u32>(global0.b.x, 31731u, global0.c.c.x, 22302u)), vec4<u32>(select(~16289u, 13071u, u_input.d.x == 22023i), max(1u, 4294967295u) >> (~global0.c.c.x % 32u), global0.b.x, abs(select(4294967295u, 1u, var_0)))));
    var var_3 = 19757u;
    let var_4 = select(true, true, func_2());
    return StorageBuffer(-vec3<i32>(4670i, -global0.c.b, -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_i32(_wgslsmith_mod_i32(max(-13402i, -50846i), ~global1.x), _wgslsmith_mult_i32(23467i, _wgslsmith_mult_i32(-2147483647i, global1.x))) < 1i;
    let var_1 = firstTrailingBit(global0.c.c.xx);
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1306f, global0.a, 1913f, global0.a) * vec4<f32>(global0.e, global0.a, 241f, global0.a))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-387f, -384f, global0.a, global0.e), vec4<f32>(global0.a, global0.e, global0.e, 149f)), vec4<f32>(global0.a, global0.e, 778f, -1000f))))));
    let x = u_input.a;
    s_output = func_1();
}

