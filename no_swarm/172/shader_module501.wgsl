struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 31> = array<u32, 31>(4294967295u, 4294967295u, 5486u, 7814u, 55801u, 1u, 21313u, 11526u, 4294967295u, 1u, 1u, 22935u, 4294967295u, 10054u, 4294967295u, 4294967295u, 1u, 1u, 5163u, 4294967295u, 4294967295u, 0u, 1u, 25539u, 16182u, 1u, 13349u, 4294967295u, 4294967295u, 4294967295u, 51744u);

var<private> global2: Struct_1 = Struct_1(vec2<i32>(-23707i, -1i), -1i);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-907f, 209f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-582f)) - 592f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1000f)))))));
    global1 = array<u32, 31>();
    var var_1 = max(arg_0, ~1u);
    var var_2 = Struct_1(vec2<i32>(reverseBits(36194i), -u_input.d.x), ~_wgslsmith_mod_i32(47314i, global2.a.x | -global2.a.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(var_0.zx * vec2<f32>(_wgslsmith_f_op_f32(round(1268f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -241f)), 1238f))));
    return ~(-vec4<i32>(u_input.c.x, _wgslsmith_sub_i32(-34999i, global2.a.x), select(u_input.a, -2147483647i, true), -global2.b) | vec4<i32>(-2147483647i, var_2.b, -min(-1i, var_2.a.x), _wgslsmith_clamp_i32(-1i >> (u_input.e.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, u_input.c.x), vec3<i32>(global2.a.x, u_input.a, u_input.c.x)), abs(global2.b))));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> vec4<i32> {
    let var_0 = arg_2;
    let var_1 = vec3<bool>(false, true, ~global1[_wgslsmith_index_u32(41172u, 31u)] < 1u);
    global2 = arg_0;
    var var_2 = ~(~(~(~(vec3<u32>(global1[_wgslsmith_index_u32(2811u, 31u)], 7608u, 4294967295u) & vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 31u)], 122510u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 31u)], 31u)])))));
    global2 = Struct_1(vec2<i32>(-abs(u_input.a), 2147483647i), 2147483647i);
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(countOneBits(~u_input.a), arg_0.a.x, 32867i, _wgslsmith_div_i32(_wgslsmith_sub_i32(select(7299i, global2.a.x, var_1.x), global2.a.x), _wgslsmith_div_i32(arg_0.a.x, global2.a.x) & global2.b)), select(~func_3(arg_1), vec4<i32>(-func_3(global1[_wgslsmith_index_u32(0u, 31u)]).x, ~2147483647i, global2.a.x, global2.a.x), select(vec4<bool>(any(var_1), var_1.x, var_1.x, true), !select(vec4<bool>(var_1.x, false, true, var_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x), true), select(select(vec4<bool>(false, false, var_1.x, false), vec4<bool>(true, false, var_1.x, true), var_1.x), vec4<bool>(true, true, true, true), vec4<bool>(var_1.x, true, true, var_1.x)))), vec4<i32>(global2.a.x, min(func_3(arg_1).x, -1i), -51025i, 0i) ^ ~reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, arg_0.b, global2.b, u_input.a), vec4<i32>(u_input.a, 1i, 72434i, arg_0.a.x))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = global2.a.x;
    var var_1 = 0i;
    var var_2 = _wgslsmith_sub_u32(~(~abs(~49510u)), ~global1[_wgslsmith_index_u32(0u, 31u)]);
    let var_3 = true;
    var var_4 = _wgslsmith_div_vec4_i32(vec4<i32>(-1i, global2.b, 19155i & u_input.c.x, -28342i ^ firstLeadingBit(_wgslsmith_sub_i32(global2.b, u_input.a))), (~func_2(Struct_1(u_input.d, 29984i), u_input.b, 170f) ^ ((vec4<i32>(1i, global2.a.x, global2.a.x, u_input.c.x) << (vec4<u32>(48624u, u_input.b, 6914u, u_input.e.x) % vec4<u32>(32u))) ^ (vec4<i32>(u_input.c.x, 0i, global2.b, u_input.d.x) >> (vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(u_input.b, 31u)], u_input.e.x, u_input.b) % vec4<u32>(32u))))) & (-vec4<i32>(global2.b, -1i, u_input.c.x, global2.a.x) | vec4<i32>(_wgslsmith_div_i32(global2.b, global2.a.x), global2.b, _wgslsmith_div_i32(-19836i, 1i), 1i)));
    return Struct_1(max(_wgslsmith_sub_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(-37475i, u_input.d.x), vec2<i32>(-2147483647i, -41778i)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_4.x, -36547i), vec2<i32>(34039i, -2147483647i))), global2.a), ~(~_wgslsmith_div_i32(~u_input.c.x, -4800i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-43716i, global2.a.x), u_input.d) ^ global2.b, _wgslsmith_div_i32(16443i, global2.a.x >> (u_input.b % 32u))), ~(~(-u_input.d))), u_input.a);
    global1 = array<u32, 31>();
    let var_1 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -1578f));
    global1 = array<u32, 31>();
    global0 = global1[_wgslsmith_index_u32(52523u, 31u)];
    let var_2 = var_0;
    global1 = array<u32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, ~(~u_input.e.x));
}

