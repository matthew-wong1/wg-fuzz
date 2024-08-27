struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global2: array<i32, 17> = array<i32, 17>(-1i, -12020i, 44835i, 3539i, 0i, -1i, 13012i, i32(-2147483648), 1i, -1i, 37221i, -2130i, 51452i, -22526i, -1i, 4298i, -56136i);

var<private> global3: vec4<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: f32, arg_1: Struct_4) -> vec2<i32> {
    var var_0 = arg_1.a.zw;
    var var_1 = ~arg_1.a.x & arg_1.a.x;
    var_0 = firstTrailingBit(~reverseBits(~(arg_1.a.zy ^ arg_1.a.zw)));
    var var_2 = false;
    var var_3 = 675f;
    return ~(~min(_wgslsmith_add_vec2_i32(vec2<i32>(-52137i, -2147483647i), vec2<i32>(364i, 0i)), _wgslsmith_div_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(arg_1.a.x, 17u)], global2[_wgslsmith_index_u32(u_input.b.x, 17u)]), vec2<i32>(20777i, -41312i))) & vec2<i32>(~(-43878i), ~abs(global2[_wgslsmith_index_u32(u_input.b.x, 17u)])));
}

fn func_3(arg_0: vec3<u32>) -> vec2<i32> {
    global0 = !any(select(!global3.xy, vec2<bool>(true, all(vec2<bool>(false, global1.x))), global1.x));
    let var_0 = Struct_1(~u_input.b, -global2[_wgslsmith_index_u32(4294967295u, 17u)]);
    var var_1 = Struct_2(!(!vec4<bool>(!global1.x, !global1.x, global1.x & global1.x, false)), min(i32(-1i) * -1i, -1i), Struct_1(max(~firstLeadingBit(vec3<u32>(679u, 4294967295u, var_0.a.x)), arg_0), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(abs(vec3<i32>(14137i, 0i, global2[_wgslsmith_index_u32(u_input.b.x, 17u)])), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_0.b, global2[_wgslsmith_index_u32(0u, 17u)]), vec3<i32>(-1i, -20348i, 10111i))), firstLeadingBit(max(vec3<i32>(var_0.b, global2[_wgslsmith_index_u32(u_input.b.x, 17u)], global2[_wgslsmith_index_u32(arg_0.x, 17u)]), vec3<i32>(0i, 15298i, global2[_wgslsmith_index_u32(arg_0.x, 17u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-438f)) + 951f)), (_wgslsmith_add_i32(abs(-19737i), -global2[_wgslsmith_index_u32(49106u, 17u)]) >> (abs(u_input.b.x) % 32u)) > var_0.b);
    var var_2 = var_0;
    global3 = vec4<bool>(true, (~countOneBits(var_2.b) & 0i) > ~(-3114i ^ var_2.b), global3.x, false);
    return vec2<i32>(var_2.b, -_wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.c.b, -1i, var_1.b, -8830i), vec4<i32>(1961i, -var_0.b, _wgslsmith_add_i32(10381i, var_2.b), global2[_wgslsmith_index_u32(5913u, 17u)])));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec3<f32>) -> f32 {
    let var_0 = u_input.b.x;
    let var_1 = arg_0;
    let var_2 = max(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1489f), Struct_4(abs(vec4<u32>(31910u, 18429u, 34252u, var_1.c.a.x) << (vec4<u32>(25788u, 4932u, 14033u, var_1.c.a.x) % vec4<u32>(32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.d, arg_2.x, arg_2.x, -249f))), vec4<f32>(1545f, arg_0.d, arg_2.x, arg_2.x)), _wgslsmith_f_op_vec2_f32(arg_2.zz + arg_2.zy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -996f) * -967f), global3.ywx)), _wgslsmith_sub_vec2_i32(select(-_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, var_1.c.b), vec2<i32>(1183i, 2147483647i), vec2<i32>(10306i, var_1.c.b)), func_3(u_input.b), true), vec2<i32>(arg_0.c.b, 16636i)));
    global2 = array<i32, 17>();
    let var_3 = vec2<bool>(global3.x, true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_1.d)))) + arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-220f)), 1071f) - _wgslsmith_f_op_f32(select(871f, _wgslsmith_f_op_f32(func_1(Struct_2(vec4<bool>(global3.x, false, true, false), -20442i, Struct_1(vec3<u32>(u_input.a, u_input.b.x, 8759u), 2147483647i), -868f, global1.x), 10289i, vec3<f32>(895f, 403f, -644f))), global2[_wgslsmith_index_u32(u_input.a, 17u)] < global2[_wgslsmith_index_u32(u_input.b.x, 17u)]))) * 1000f));
    var var_1 = _wgslsmith_sub_vec4_u32(~vec4<u32>(63162u, select(31067u, u_input.a, global1.x), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 43335u, 74625u, u_input.b.x), vec4<u32>(0u, u_input.b.x, u_input.b.x, 4294967295u)), ~vec4<u32>(0u, u_input.b.x, u_input.b.x, 43088u)), firstLeadingBit(u_input.b.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(~1049u, ~u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x << (u_input.b.x % 32u), _wgslsmith_clamp_u32(u_input.a, 28709u, u_input.a), u_input.b.x, 22772u ^ u_input.a)));
    var var_2 = !(!select(!(!vec3<bool>(global1.x, false, global1.x)), select(!global3.wzy, vec3<bool>(global1.x, global3.x, global3.x), global1.x), false));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1151f + _wgslsmith_f_op_f32(-1f)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1014f))) - _wgslsmith_f_op_f32(step(-1458f, _wgslsmith_f_op_f32(min(580f, -402f))))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-214f, -368f)))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-318f - -1004f))), _wgslsmith_f_op_f32(f32(-1f) * -985f)));
    global3 = vec4<bool>(!(!(!var_2.x)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstTrailingBit(select(u_input.a, 15500u, true)), 1u), 17u)] > 2147483647i, true, !(!select(var_2.x && var_2.x, false & global3.x, global2[_wgslsmith_index_u32(u_input.b.x, 17u)] < global2[_wgslsmith_index_u32(var_1.x, 17u)])));
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~min(firstTrailingBit(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], 2147483647i, 0i, -46899i)), -vec4<i32>(-13862i, -2147483647i, global2[_wgslsmith_index_u32(var_1.x, 17u)], 1i)));
}

