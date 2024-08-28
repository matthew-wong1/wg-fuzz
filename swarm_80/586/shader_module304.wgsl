struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(0u, 4294967295u, 17468u, 36582u, 0u, 1858u, 21728u, 4294967295u, 10865u, 37740u, 28918u, 4294967295u, 1u, 1u, 4294967295u, 1u, 0u, 4294967295u, 43696u, 26091u, 63443u, 1u, 15840u, 4294967295u, 1u, 0u, 4294967295u, 70448u, 7965u, 4294967295u, 1u);

var<private> global1: i32 = 17139i;

var<private> global2: i32 = -1i;

var<private> global3: Struct_1;

var<private> global4: array<vec3<i32>, 4>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(global3.c - -122f);
    let var_1 = arg_0.x;
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-126f + _wgslsmith_f_op_f32(-var_0)))))), global3.b << (global3.b % 32u), -278f);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<f32>) -> bool {
    global1 = ~1i;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.a)))));
    var var_1 = ~vec2<i32>(1i, 1i);
    var var_2 = select(1u, 4294967295u, select(true && any(vec3<bool>(true, true, true)), all(vec4<bool>(all(vec2<bool>(false, false)), true, 492f > arg_1.x, false)), true));
    let var_3 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.a, -1000f)) - _wgslsmith_f_op_f32(-arg_1.x)), -894f), arg_1.zx));
    return true;
}

fn func_2(arg_0: vec2<f32>) -> vec2<u32> {
    var var_0 = func_1(select(~vec3<i32>(countOneBits(-2147483647i), i32(-1i) * -1i, 1i), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(abs(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], 4u)]), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(22402u, 0u), 4u)]), reverseBits(_wgslsmith_add_vec3_i32(global4[_wgslsmith_index_u32(0u, 4u)], vec3<i32>(18860i, 2147483647i, -11156i)))), !vec3<bool>(func_3(vec4<u32>(u_input.a.x, 4294967295u, 9627u, global3.b), vec4<f32>(arg_0.x, global3.c, 1007f, -2264f)), true, any(vec2<bool>(false, false)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(abs(-790f)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global3.b, global3.b), 31u)] | _wgslsmith_mult_u32(1u, global3.b << (~global3.b % 32u)), -1263f);
    global3 = var_1;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(443f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a + 491f), global3.c))) - 194f), 21840u, 2566u, global3.b);
    global4 = array<vec3<i32>, 4>();
    return u_input.a;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<u32>) -> StorageBuffer {
    global1 = abs(-8060i);
    var var_0 = false;
    global4 = array<vec3<i32>, 4>();
    let var_1 = arg_1.x;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(sign(187f)), ~_wgslsmith_clamp_u32(~1u, ~77247u, 15908u & global0[_wgslsmith_index_u32(arg_1.x, 31u)]), var_1, 4294967295u);
    return StorageBuffer((_wgslsmith_dot_vec2_i32(-vec2<i32>(-16169i, -1i), ~vec2<i32>(2147483647i, -7268i)) & _wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1606i, -79630i), vec2<i32>(1i, 0i)))) << (var_2.d % 32u), firstTrailingBit(arg_0.yw), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.a)) * 1000f))), -470f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_sub_vec3_i32(vec3<i32>(~firstTrailingBit(1278i), i32(-1i) * -1i, firstTrailingBit(~0i)), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(-15439i, -1i, -1i), countOneBits(vec3<i32>(-23824i, 2147483647i, -2147483647i))), vec3<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-17548i, 0i), vec2<i32>(-2147483647i, 6874i)), 1i))));
    global4 = array<vec3<i32>, 4>();
    let var_1 = 17748i;
    var var_2 = var_1;
    global4 = array<vec3<i32>, 4>();
    let x = u_input.a;
    s_output = func_4(~(vec4<u32>(~1u, max(15728u, 56144u), 32529u, ~4294967295u) >> (vec4<u32>(1u | var_0.b, var_0.b, ~4294967295u, global3.b) % vec4<u32>(32u))), _wgslsmith_mult_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(global3.b, 31u)])), ~(u_input.a ^ u_input.a) & func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-125f, -254f)))));
}

