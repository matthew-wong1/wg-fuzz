struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: Struct_3 = Struct_3(vec4<u32>(16523u, 49371u, 4294967295u, 46050u), Struct_1(vec3<bool>(false, false, true), 17910u));

var<private> global2: array<u32, 9>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(2117f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(990f - -1000f) + -601f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(726f))))));
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)))))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(731f, _wgslsmith_f_op_f32(-1343f * 1105f))))), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x)))));
    var var_2 = max(countOneBits(min(~vec2<i32>(arg_2.c, arg_2.c), vec2<i32>(var_0.c, arg_2.c)) & vec2<i32>(0i, arg_2.c)), vec2<i32>(-2147483647i, -22312i | -(~var_0.c)));
    let var_3 = -1827f;
    return arg_1.x;
}

fn func_3(arg_0: bool, arg_1: vec3<f32>) -> i32 {
    let var_0 = global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~select(global2[_wgslsmith_index_u32(0u >> (~global1.a.x % 32u), 9u)], select(u_input.a.x & global2[_wgslsmith_index_u32(u_input.a.x, 9u)], u_input.a.x, true), arg_0) & 4294967295u, 9u)], 9u)];
    var var_1 = Struct_2(false, Struct_1(select(global1.b.a, vec3<bool>(!global1.b.a.x, arg_0, true), select(select(global1.b.a, vec3<bool>(false, arg_0, true), false), global1.b.a, arg_0 | true)), firstLeadingBit(63972u)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(1i, -1i, -1i), 1069i, -27940i) ^ vec3<i32>(~22241i, ~50880i, ~(-58584i)), -(~vec3<i32>(1i, 1i, 1i))), max(1u, ~(~u_input.a.x)), u_input.a.x);
    var var_2 = ~vec4<i32>(countOneBits((var_1.c | var_1.c) & -2147483647i), _wgslsmith_div_i32(var_1.c, max(9471i, var_1.c)), ~(~var_1.c), var_1.c);
    var_2 = ~(-(firstLeadingBit(vec4<i32>(-14045i, var_1.c, -2297i, var_1.c)) ^ ~vec4<i32>(5789i, var_2.x, -2147483647i, 0i)) ^ vec4<i32>(var_2.x, var_1.c, var_1.c, var_2.x));
    var var_3 = _wgslsmith_div_vec4_u32(countOneBits(global1.a), vec4<u32>(global2[_wgslsmith_index_u32(~(~max(0u, 26577u)), 9u)], ~(1u ^ global1.a.x), _wgslsmith_clamp_u32(79219u, var_1.e, _wgslsmith_mult_u32(var_1.d, 66144u)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, global1.a.x, 4294967295u, 4294967295u), global1.a) % 32u), _wgslsmith_mult_u32(firstTrailingBit(u_input.a.x), global1.b.b)));
    return _wgslsmith_mult_i32(max(var_2.x, var_2.x), min(reverseBits(-2147483647i), -_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c, var_1.c), ~vec2<i32>(-25243i, 12798i))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: vec2<i32>) -> bool {
    var var_0 = global1.b.a.zz;
    global2 = array<u32, 9>();
    var var_1 = 1087f;
    global1 = Struct_3(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u & global1.b.b, 1u, global1.b.b, 1u), vec4<u32>(25613u, _wgslsmith_dot_vec4_u32(global1.a, global1.a), 33203u, global1.a.x) ^ ~vec4<u32>(arg_0.b.b, 0u, 1u, 68011u)), arg_0.b);
    let var_2 = _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, 49870i) << (max(global1.a.zx, vec2<u32>(22952u, global2[_wgslsmith_index_u32(1u, 9u)])) % vec2<u32>(32u)), -select(arg_3, arg_2.zz, vec2<bool>(var_0.x, arg_0.b.a.x))), ~_wgslsmith_add_i32(-arg_3.x, _wgslsmith_add_i32(~arg_3.x, func_3(false, vec3<f32>(1000f, -1115f, 989f)))));
    return !all(select(vec2<bool>(arg_0.b.a.x, var_0.x), vec2<bool>(true, arg_2.x == 1i), arg_1));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: vec4<bool>) -> u32 {
    let var_0 = global1.b.a.x;
    global2 = array<u32, 9>();
    let var_1 = vec3<f32>(-1585f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-139f, -606f))))) * 322f), -1326f);
    global1 = Struct_3(global1.a, Struct_1(!arg_3.xzw, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 0u, arg_1.d) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, global2[_wgslsmith_index_u32(arg_1.b.b, 9u)], global1.b.b), vec3<u32>(global2[_wgslsmith_index_u32(arg_1.b.b, 9u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46857u, 9u)], 9u)], global1.a.x)), select(global1.a.wwz, abs(global1.a.wxw), !vec3<bool>(arg_2, true, false)))));
    let var_2 = global1.b.a;
    return firstTrailingBit(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(global2[_wgslsmith_index_u32(4294967295u, 9u)]) <= global1.a.x;
    let var_1 = vec4<bool>((global1.b.a.x && (false || global1.b.a.x)) || global1.b.a.x, global1.b.a.x, true, func_1(!vec3<bool>(!global1.b.a.x, true, !global1.b.a.x), select(vec3<bool>(all(vec2<bool>(global1.b.a.x, false)), true, true != global1.b.a.x), global1.b.a, select(global1.b.a, global1.b.a, any(global1.b.a))), Struct_2(global1.b.a.x, Struct_1(vec3<bool>(global1.b.a.x, false, global1.b.a.x), abs(global1.b.b)), _wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, 1i, -1i), -vec3<i32>(-99505i, 1i, -1i)), _wgslsmith_mod_u32(22618u, 7778u), countOneBits(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(39371u, 9u)], 9u)])), global1.b));
    let var_2 = ~vec4<u32>(global1.b.b, ~(~(~0u)), _wgslsmith_add_u32(1u, u_input.a.x), func_4(func_2(Struct_3(global1.a, global1.b), vec2<bool>(var_1.x, global1.b.a.x), vec3<i32>(18987i, 38195i, -1i), vec2<i32>(66740i, -23662i)), Struct_2(var_1.x, Struct_1(vec3<bool>(var_1.x, global1.b.a.x, false), global2[_wgslsmith_index_u32(global1.b.b, 9u)]), 10281i, 37528u, u_input.a.x), false, !var_1) | ~16663u);
    var var_3 = _wgslsmith_div_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(global1.a.yzy, var_2.xwz, select(vec3<u32>(31055u, global1.a.x, var_2.x), global1.a.yxw, var_1.x))) ^ select(var_2.yxw, ~vec3<u32>(global1.a.x, 28808u, global1.a.x), select(vec3<bool>(var_1.x, global1.b.a.x, var_1.x), vec3<bool>(false, false, false), global1.b.a.x)), reverseBits(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(global2[_wgslsmith_index_u32(38816u, 9u)], var_2.x, global2[_wgslsmith_index_u32(u_input.a.x, 9u)])), vec3<u32>(reverseBits(4294967295u), func_4(false, Struct_2(true, global0[_wgslsmith_index_u32(global1.a.x, 16u)], 0i, u_input.a.x, u_input.a.x), false, var_1), var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, _wgslsmith_f_op_f32(-444f + _wgslsmith_f_op_f32(-476f - _wgslsmith_f_op_f32(-1f))), max(_wgslsmith_mult_vec4_u32(global1.a, global1.a), vec4<u32>(abs(~var_3.x), u_input.a.x, global2[_wgslsmith_index_u32(abs(~var_3.x), 9u)], 5484u)), _wgslsmith_f_op_f32(-298f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(563f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), -vec3<i32>(firstLeadingBit(func_3(var_1.x, vec3<f32>(719f, -1512f, -204f))), ~_wgslsmith_mod_i32(23720i, 1i), firstTrailingBit(abs(-1i))));
}

