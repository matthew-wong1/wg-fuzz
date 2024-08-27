struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<bool, 32> = array<bool, 32>(true, true, false, true, false, false, false, true, false, false, true, true, false, false, false, true, false, false, true, false, true, true, false, false, false, true, false, true, true, true, true, false);

var<private> global2: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true));

var<private> global3: u32;

var<private> global4: u32 = 12697u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> u32 {
    let var_0 = -38878i;
    let var_1 = ~(~u_input.d.x) ^ ~(abs(51265u) >> (u_input.a % 32u));
    var var_2 = reverseBits(~u_input.c.x);
    return countOneBits(~4294967295u);
}

fn func_3(arg_0: bool, arg_1: vec4<u32>) -> vec2<u32> {
    let var_0 = _wgslsmith_add_vec4_u32(~((vec4<u32>(0u, u_input.a, u_input.d.x, arg_1.x) << (vec4<u32>(arg_1.x, arg_1.x, 1u, u_input.a) % vec4<u32>(32u))) & max(vec4<u32>(arg_1.x, arg_1.x, u_input.d.x, 39242u), vec4<u32>(28510u, 21191u, 4873u, 0u))) | ~(~vec4<u32>(arg_1.x, 63373u, arg_1.x, arg_1.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.d.x, abs(1u)), arg_1.x, 0u, 4294967295u), arg_1));
    var var_1 = Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1473f, -719f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-2176f, _wgslsmith_f_op_f32(min(148f, 2294f))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1307f, 1372f), vec2<f32>(1592f, 1018f))))))), countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, u_input.c.x, u_input.b, 1i), vec4<i32>(0i, global0.x, 17470i, u_input.b) << (arg_1 % vec4<u32>(32u)), min(vec4<i32>(u_input.c.x, u_input.b, u_input.b, u_input.c.x), vec4<i32>(u_input.b, global0.x, global0.x, -21130i))) >> (_wgslsmith_sub_vec4_u32(~u_input.d, u_input.d) % vec4<u32>(32u))));
    global0 = max(-firstLeadingBit(-var_1.c), vec4<i32>(~(-2147483647i), abs(-var_1.c.x), i32(-1i) * -var_1.c.x, global0.x));
    var var_2 = -2147483647i;
    let var_3 = select(vec4<bool>(!any(select(global2[_wgslsmith_index_u32(4294967295u, 16u)], vec4<bool>(global1[_wgslsmith_index_u32(24398u, 32u)], true, var_1.a, global1[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<bool>(true, true, arg_0, arg_0))), all(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 32u)], arg_0, var_1.a)) && arg_0, any(select(vec3<bool>(var_1.a, global1[_wgslsmith_index_u32(u_input.d.x, 32u)], arg_0), vec3<bool>(true, true, true), vec3<bool>(false, arg_0, var_1.a))), !all(vec3<bool>(global1[_wgslsmith_index_u32(arg_1.x, 32u)], var_1.a, true))), select(select(!(!vec4<bool>(false, arg_0, var_1.a, true)), global2[_wgslsmith_index_u32(abs(~39227u), 16u)], true || !global1[_wgslsmith_index_u32(52489u, 32u)]), !vec4<bool>(any(vec3<bool>(false, global1[_wgslsmith_index_u32(59252u, 32u)], true)), arg_0, any(vec4<bool>(var_1.a, true, false, false)), all(vec2<bool>(false, arg_0))), !any(vec3<bool>(arg_0, true, var_1.a))), all(select(!select(vec3<bool>(global1[_wgslsmith_index_u32(39751u, 32u)], false, global1[_wgslsmith_index_u32(35784u, 32u)]), vec3<bool>(arg_0, false, false), vec3<bool>(true, false, true)), vec3<bool>(var_1.c.x > u_input.b, select(true, true, var_1.a), all(vec2<bool>(arg_0, true))), true)));
    return vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(abs(countOneBits(var_0)), _wgslsmith_div_vec4_u32(select(u_input.d, vec4<u32>(var_0.x, 17881u, u_input.d.x, 0u), var_3), arg_1))), countOneBits(_wgslsmith_clamp_u32(0u | var_0.x, _wgslsmith_sub_u32(4294967295u, var_0.x), var_0.x)));
}

fn func_1(arg_0: bool) -> vec2<i32> {
    var var_0 = select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 32u)], true), vec2<bool>(select(global1[_wgslsmith_index_u32(~func_2(), 32u)], true, true), select(false, false, all(vec3<bool>(arg_0, false, false))) & arg_0), !(!vec2<bool>(arg_0 == arg_0, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.a), 32u)])));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(360f, -645f, 154f, -1890f) - vec4<f32>(221f, 466f, -373f, 623f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-278f, 136f, 406f, -1326f))))))));
    var var_2 = max(func_3(arg_0, vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.d.wwy, u_input.d.zzz), _wgslsmith_mod_u32(u_input.d.x >> (u_input.d.x % 32u), ~u_input.a), abs(_wgslsmith_sub_u32(11841u, 0u)), min(~u_input.a, u_input.a))), abs(select(vec2<u32>(38988u, 22868u), vec2<u32>(1u, 32176u), !(!vec2<bool>(arg_0, global1[_wgslsmith_index_u32(83525u, 32u)])))));
    let var_3 = vec2<bool>(all(select(!select(vec2<bool>(false, var_0.x), vec2<bool>(false, true), true), select(!vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 32u)]), !vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 32u)]), !var_0.x), !(!vec2<bool>(false, arg_0)))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(var_2.x), 2931u), 32u)]);
    global2 = array<vec4<bool>, 16>();
    return ~vec2<i32>(25057i, _wgslsmith_div_i32(-1346i, _wgslsmith_add_i32(-2147483647i, u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    let var_1 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.d.x), u_input.d.xwy), 1u), u_input.d.x, ~(~_wgslsmith_sub_u32(min(u_input.a, u_input.d.x), u_input.d.x)), 0u >> (u_input.a % 32u));
    global3 = ~u_input.d.x;
    global2 = array<vec4<bool>, 16>();
    global4 = countOneBits(_wgslsmith_mod_u32(u_input.d.x ^ u_input.a, ~1u));
    global3 = 47908u;
    var var_2 = _wgslsmith_dot_vec2_i32(~(~(~vec2<i32>(var_0, 25334i))), _wgslsmith_div_vec2_i32(min(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, 65082i) & u_input.c, -vec2<i32>(u_input.c.x, u_input.c.x)), select(func_1(true), ~u_input.c, all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 32u)], global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(var_1.x, 32u)])))), countOneBits(reverseBits(_wgslsmith_div_vec2_i32(global0.xy, global0.xz)))));
    let x = u_input.a;
    s_output = StorageBuffer(58665u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(743f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f + 472f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -156f), _wgslsmith_f_op_f32(-1784f * -777f))))));
}

