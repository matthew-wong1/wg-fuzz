struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(0u, 90232u), vec2<u32>(68203u, 1u), vec2<u32>(83799u, 6904u), vec2<u32>(94871u, 4294967295u), vec2<u32>(17388u, 33183u), vec2<u32>(1u, 0u), vec2<u32>(60945u, 0u), vec2<u32>(0u, 1u), vec2<u32>(12238u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(51582u, 33862u), vec2<u32>(88315u, 34710u), vec2<u32>(25586u, 35447u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 43192u), vec2<u32>(4294967295u, 11635u), vec2<u32>(10711u, 0u), vec2<u32>(14605u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(60127u, 1u), vec2<u32>(0u, 0u), vec2<u32>(1u, 0u));

var<private> global1: array<Struct_1, 3>;

var<private> global2: Struct_1;

var<private> global3: array<bool, 14> = array<bool, 14>(true, true, true, false, false, false, false, false, false, true, true, true, true, true);

var<private> global4: u32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec2<f32>) -> bool {
    var var_0 = ~(_wgslsmith_add_i32(i32(-1i) * -62252i, min(arg_0, firstLeadingBit(56305i))) >> (20780u % 32u));
    let var_1 = firstLeadingBit(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a << (36020u % 32u), global2.a, -26365i), vec3<i32>(1i, countOneBits(u_input.a), -1148i))));
    var var_2 = arg_0;
    let var_3 = global1[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(1u, _wgslsmith_add_u32(1u, global2.c.x)), ((global2.c.x | global2.c.x) | _wgslsmith_div_u32(global2.c.x, 16199u)) & ~30211u)), 3u)];
    var var_4 = Struct_1(-_wgslsmith_dot_vec2_i32(var_1.zy, var_1.zx), -448f, firstLeadingBit(~_wgslsmith_add_vec2_u32(global2.c, global0[_wgslsmith_index_u32(~var_3.c.x, 23u)])));
    return all(!vec4<bool>(!any(vec2<bool>(false, global3[_wgslsmith_index_u32(var_3.c.x, 14u)])), 0u > (var_4.c.x | var_3.c.x), false, !(-17847i > u_input.a)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_1) -> u32 {
    global2 = Struct_1(~countOneBits(firstLeadingBit(u_input.a)), -186f, vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(global2.c.x, abs(77176u)), max(arg_3.c.x, 0u) | ~6338u), ~_wgslsmith_sub_u32(~global2.c.x, 1u)));
    let var_0 = global3[_wgslsmith_index_u32(~max(countOneBits(_wgslsmith_mod_u32(arg_3.c.x, ~arg_3.c.x)), (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.c.x, arg_3.c.x, 49730u, 4294967295u), vec4<u32>(4294967295u, 66099u, 74608u, 0u)) >> (0u % 32u)) ^ ~global2.c.x), 14u)];
    let var_1 = _wgslsmith_mult_vec2_u32(arg_3.c, ~_wgslsmith_mult_vec2_u32(max(~vec2<u32>(arg_3.c.x, arg_3.c.x), arg_3.c), vec2<u32>(4294967295u, global2.c.x) & abs(global2.c)));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-418f, global2.b) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_3.b))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -680f) * vec2<f32>(arg_3.b, global2.b)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b, 655f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-321f, global2.b)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b, global2.b))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_3.b, _wgslsmith_f_op_f32(arg_3.b * -1830f)))) + vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global2.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-296f, -139f)) * -1171f))));
    global4 = 1u;
    return 0u >> (global2.c.x % 32u);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec4<u32>) -> u32 {
    global2 = global1[_wgslsmith_index_u32(0u, 3u)];
    var var_0 = any(!vec2<bool>(true | any(vec4<bool>(global3[_wgslsmith_index_u32(global2.c.x, 14u)], false, true, global3[_wgslsmith_index_u32(0u, 14u)])), false));
    var var_1 = !vec2<bool>(global3[_wgslsmith_index_u32(~31148u, 14u)], global3[_wgslsmith_index_u32(firstTrailingBit(arg_2.x) ^ global2.c.x, 14u)]);
    global2 = Struct_1(~(-24568i) & _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global2.a, arg_1, 7694i) >> (vec3<u32>(global2.c.x, 22536u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(-55052i, 31730i, u_input.a)), vec3<i32>(-1i) * -vec3<i32>(u_input.a, 69890i, -2147483647i)), _wgslsmith_f_op_f32(max(1340f, 683f)), ~select(_wgslsmith_div_vec2_u32(min(vec2<u32>(global2.c.x, arg_2.x), vec2<u32>(1u, 0u)), vec2<u32>(4294967295u, 116714u) << (global0[_wgslsmith_index_u32(25978u, 23u)] % vec2<u32>(32u))), vec2<u32>(79530u, arg_2.x), select(vec2<bool>(global3[_wgslsmith_index_u32(1u, 14u)], global3[_wgslsmith_index_u32(arg_0, 14u)]), vec2<bool>(true, true), true)));
    var var_2 = -16893i;
    return func_4(vec3<bool>(func_3(min(39525i, 22482i), vec2<f32>(1000f, -336f)), ~52193u > _wgslsmith_add_u32(arg_0, arg_0), false), _wgslsmith_sub_vec2_i32(-vec2<i32>(-2147483647i, u_input.a), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, global2.a), vec2<i32>(arg_1, u_input.a))) ^ (vec2<i32>(-1i) * -vec2<i32>(-66847i, u_input.a)), true, Struct_1(-45952i, _wgslsmith_f_op_f32(-628f - _wgslsmith_f_op_f32(-global2.b)), reverseBits(vec2<u32>(4294967295u, arg_0)))) | _wgslsmith_div_u32(~(~28001u), countOneBits(1u));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global4 = firstTrailingBit(arg_2.c.x);
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_div_u32(~53302u, arg_1.c.x), 37778u);
    var var_1 = firstTrailingBit(_wgslsmith_div_vec4_u32(abs(select(vec4<u32>(arg_1.c.x, 5383u, 64039u, 4294967295u) & vec4<u32>(arg_2.c.x, arg_1.c.x, arg_1.c.x, 39268u), vec4<u32>(1u, arg_2.c.x, 9654u, 4294967295u), vec4<bool>(true, true, true, true))), (~vec4<u32>(arg_2.c.x, 1u, 1u, arg_1.c.x) << (firstLeadingBit(vec4<u32>(4294967295u, arg_2.c.x, arg_1.c.x, 1u)) % vec4<u32>(32u))) | vec4<u32>(min(global2.c.x, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(17462u, arg_1.c.x, global2.c.x, global2.c.x), vec4<u32>(arg_1.c.x, 1u, global2.c.x, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(61016u, 53893u, 40519u), vec3<u32>(37352u, global2.c.x, global2.c.x)), select(global2.c.x, 71098u, true))));
    var var_2 = global1[_wgslsmith_index_u32(func_2(var_1.x, -61802i, select(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.c.x, 4294967295u, 4294967295u, arg_2.c.x) << (vec4<u32>(7464u, global2.c.x, global2.c.x, var_1.x) % vec4<u32>(32u)), ~vec4<u32>(arg_1.c.x, 4294967295u, 45230u, 4294967295u))), _wgslsmith_clamp_vec4_u32((vec4<u32>(35671u, 4294967295u, global2.c.x, global2.c.x) << (vec4<u32>(global2.c.x, 4294967295u, arg_2.c.x, 21932u) % vec4<u32>(32u))) & select(vec4<u32>(4294967295u, 4294967295u, var_1.x, arg_2.c.x), vec4<u32>(global2.c.x, 3963u, 0u, var_1.x), false), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, global2.c.x, var_1.x, 77817u), vec4<u32>(20527u, 1u, 4294967295u, 691u) ^ vec4<u32>(20581u, arg_2.c.x, global2.c.x, 4294967295u)), ~(vec4<u32>(var_1.x, global2.c.x, global2.c.x, 8852u) | vec4<u32>(4294967295u, global2.c.x, var_1.x, global2.c.x))), any(vec4<bool>(var_1.x >= 61507u, func_3(arg_2.a, vec2<f32>(474f, global2.b)), false, global3[_wgslsmith_index_u32(88462u, 14u)])))), 3u)];
    var_0 = reverseBits(arg_1.c.x);
    return arg_2;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: Struct_1) -> u32 {
    let var_0 = func_5(2147483647i, Struct_1(_wgslsmith_add_i32(i32(-1i) * -14332i, min(-2147483647i, global2.a)), _wgslsmith_f_op_f32(384f * -1006f), vec2<u32>(arg_3.c.x, select(func_2(arg_3.c.x, arg_3.a, vec4<u32>(arg_2.x, arg_3.c.x, 1u, arg_3.c.x)), 4294967295u, false))), Struct_1(-abs(global2.a), _wgslsmith_f_op_f32(floor(-852f)), firstTrailingBit(_wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_2.x, 10715u), global0[_wgslsmith_index_u32(arg_3.c.x, 23u)], ~global0[_wgslsmith_index_u32(arg_3.c.x, 23u)]))));
    let var_1 = Struct_1(max(max(firstLeadingBit(u_input.a), -86330i), ~(-1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1083f)), _wgslsmith_f_op_f32(select(var_0.b, arg_3.b, false)), true)))) + 389f), _wgslsmith_sub_vec2_u32(~(~arg_3.c), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(52793u, 47688u)), ~_wgslsmith_mod_vec2_u32(arg_3.c, vec2<u32>(1u, global2.c.x)))));
    global3 = array<bool, 14>();
    let var_2 = func_3(1i, arg_0);
    let var_3 = countOneBits(arg_1.zx);
    return _wgslsmith_dot_vec3_u32(max(select(~(~vec3<u32>(1u, 0u, arg_2.x)), vec3<u32>(var_1.c.x, 46042u, ~34190u), !vec3<bool>(var_2, var_2, false)), select(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_1.c.x, 1u, var_1.c.x), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(0u, 1u, 12153u)), vec3<u32>(4294967295u, var_1.c.x, 1u)), ~vec3<u32>(1u, 68091u, var_0.c.x) | ~vec3<u32>(0u, arg_2.x, 1u), !select(vec3<bool>(var_2, true, false), vec3<bool>(true, false, var_2), false))), ~(abs(~vec3<u32>(var_1.c.x, 44095u, 1u)) | (min(vec3<u32>(global2.c.x, var_1.c.x, var_0.c.x), vec3<u32>(arg_3.c.x, 4294967295u, 1u)) | vec3<u32>(1u, 4294967295u, 74973u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-13735i, global2.b, _wgslsmith_mod_vec2_u32(global2.c, reverseBits(~(global2.c >> (global0[_wgslsmith_index_u32(0u, 23u)] % vec2<u32>(32u))))));
    global3 = array<bool, 14>();
    let var_1 = global0[_wgslsmith_index_u32(global2.c.x, 23u)];
    var var_2 = func_1(vec2<f32>(-1663f, _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_mult_vec3_i32(-max(vec3<i32>(global2.a, global2.a, u_input.a), vec3<i32>(-1573i, -34898i, 0i)), max(abs(vec3<i32>(u_input.a, 47375i, 0i)), ~vec3<i32>(-2147483647i, -1i, 2147483647i))), _wgslsmith_sub_vec2_u32(global2.c, var_0.c), var_0) << (~func_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, global2.b)))), _wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(u_input.a, -26364i, global2.a) | vec3<i32>(var_0.a, 31797i, 10646i)), var_0.c, Struct_1(func_5(0i, global1[_wgslsmith_index_u32(7949u, 3u)], var_0).a, _wgslsmith_f_op_f32(round(876f)), vec2<u32>(1u, var_0.c.x))) % 32u);
    let var_3 = 383f;
    global3 = array<bool, 14>();
    let var_4 = global1[_wgslsmith_index_u32((20318u >> (((_wgslsmith_add_u32(4436u, 62542u) ^ ~var_1.x) | 1u) % 32u)) << (~var_0.c.x % 32u), 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3), 133f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(-107f * var_0.b), 1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_3, var_4.b) - vec3<f32>(-1000f, -1000f, var_0.b)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3, var_3, 950f)))))));
}

