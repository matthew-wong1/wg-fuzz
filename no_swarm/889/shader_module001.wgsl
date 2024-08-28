struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, -18962i);

var<private> global1: array<Struct_2, 23>;

var<private> global2: array<vec2<u32>, 16>;

var<private> global3: array<Struct_2, 6>;

var<private> global4: Struct_2 = Struct_2(Struct_1(vec4<u32>(1u, 0u, 1u, 18041u), 4294967295u, 4294967295u, true), 46501u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_1) -> vec4<i32> {
    return -_wgslsmith_sub_vec4_i32(select(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, global0.x, -2147483647i, u_input.d), vec4<i32>(-5472i, -2147483647i, global0.x, 2147483647i)), vec4<i32>(global0.x, 0i, -37332i, global0.x), min(vec4<i32>(-20919i, -34361i, global0.x, u_input.a), vec4<i32>(global0.x, 1i, 2147483647i, global0.x))), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(global0.x, -2758i, global0.x, u_input.d), vec4<i32>(-2147483647i, -1i, u_input.a, -33262i))), any(vec3<bool>(false, false, arg_0.x))), ~vec4<i32>(1i, u_input.d & u_input.a, ~global0.x, 2147483647i));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 40543u, 0u, arg_0.x) << (select(vec4<u32>(14155u, 10803u, global4.b, 0u), vec4<u32>(43997u, 65999u, global4.b, 18346u), global4.a.d) % vec4<u32>(32u)), select(vec4<u32>(31394u, u_input.c, 11774u, 0u), min(vec4<u32>(u_input.b, 34729u, 1u, 29789u), vec4<u32>(1u, u_input.c, arg_0.x, 2169u)), vec4<bool>(true, global4.a.d, global4.a.d, global4.a.d))), (u_input.b >> (abs(23693u) % 32u)) & ~(~u_input.b), 0u, global4.a.d), abs(~(~1u)) ^ ~_wgslsmith_dot_vec4_u32(global4.a.a, vec4<u32>(66686u, 4294967295u, 18523u, 29153u)));
    global4 = global3[_wgslsmith_index_u32(reverseBits(select(4294967295u, arg_0.x, global4.a.d)), 6u)];
    var var_1 = select(select(select(arg_0, vec3<u32>(arg_0.x, 66952u, 4294967295u), select(var_0.a.d, global4.a.d, false)), _wgslsmith_mod_vec3_u32(global4.a.a.yxy << (var_0.a.a.xyw % vec3<u32>(32u)), ~vec3<u32>(0u, arg_0.x, u_input.c)), var_0.a.d) >> (vec3<u32>(var_0.b, firstTrailingBit(var_0.a.a.x >> (4294967295u % 32u)), max(~64208u, 1095u)) % vec3<u32>(32u)), var_0.a.a.yzw, vec3<bool>(global4.a.d, all(select(!vec2<bool>(var_0.a.d, true), select(vec2<bool>(var_0.a.d, var_0.a.d), vec2<bool>(false, global4.a.d), false), all(vec3<bool>(false, false, false)))), false));
    var var_2 = Struct_1(vec4<u32>(_wgslsmith_add_u32(global4.a.a.x, _wgslsmith_clamp_u32(var_1.x, 1u, u_input.b) >> ((53879u >> (0u % 32u)) % 32u)), 20324u, firstLeadingBit(~(~52383u)), var_1.x), 38813u, 1u, !(~_wgslsmith_mult_i32(2623i, u_input.d) > max(~(-2147483647i), u_input.a)));
    global4 = Struct_2(global4.a, _wgslsmith_mod_u32(532u, _wgslsmith_clamp_u32(9056u, var_2.c, ~(~2872u))));
    return _wgslsmith_dot_vec4_u32(select(firstTrailingBit(var_0.a.a), reverseBits(firstLeadingBit(~var_0.a.a)), select(select(vec4<bool>(true, true, true, var_0.a.d), select(vec4<bool>(false, var_2.d, var_2.d, false), vec4<bool>(global4.a.d, global4.a.d, true, true), vec4<bool>(true, false, false, var_2.d)), !vec4<bool>(false, true, var_2.d, var_0.a.d)), !(!vec4<bool>(var_2.d, global4.a.d, true, false)), global4.a.d)), ~(~max(var_2.a | var_0.a.a, firstTrailingBit(vec4<u32>(55259u, 0u, 16449u, 0u)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: f32, arg_3: bool) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(19687u), ~func_3(vec3<u32>(abs(31064u), arg_1.x, 68966u << (global4.b % 32u)))), 23u)];
    global4 = Struct_2(var_0.a, abs(arg_1.x));
    global1 = array<Struct_2, 23>();
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, 976f, 1465f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -290f) + _wgslsmith_f_op_f32(353f - 497f))), _wgslsmith_f_op_f32(step(-1429f, 1f)), _wgslsmith_f_op_f32(abs(arg_2)), -522f)));
    var var_2 = global1[_wgslsmith_index_u32(global4.b, 23u)];
    return _wgslsmith_sub_i32(global0.x, u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(-157f)), -787f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -335f), _wgslsmith_f_op_f32(-551f + -1925f))))));
    global2 = array<vec2<u32>, 16>();
    var var_1 = func_1(!(!(!select(vec4<bool>(global4.a.d, global4.a.d, global4.a.d, true), vec4<bool>(true, true, true, global4.a.d), false))), 1000f, _wgslsmith_sub_vec2_u32(u_input.e.zz, ~global4.a.a.wx), Struct_1(vec4<u32>(u_input.e.x << (25179u % 32u), abs(1u), ~(global4.b >> (u_input.e.x % 32u)), ~global4.a.c), ~select(global4.a.a.x, global4.b ^ global4.a.c, !global4.a.d), ~38897u, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.d, global0.x), select(vec2<i32>(-27171i, u_input.d), vec2<i32>(0i, global0.x), vec2<bool>(global4.a.d, true))) < select(min(global0.x, 23949i), -u_input.a, global4.a.d)));
    var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(1i, 0i, -1i, func_2(vec2<bool>(true, true), vec2<u32>(global4.b, u_input.b), var_0.x, true)), vec4<i32>(1i, ~20596i, abs(_wgslsmith_mod_i32(0i, -22090i)), u_input.a)), (vec4<i32>(-1i) * -vec4<i32>(-13913i, var_1.x, u_input.d, 0i)) << (global4.a.a % vec4<u32>(32u)));
    let var_2 = Struct_2(Struct_1(global4.a.a, 4294967295u, _wgslsmith_mod_u32(global4.a.c, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global4.a.b, 1u, 5230u), global4.a.a))), !global4.a.d), 1u);
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x * var_0.x))) + var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(53952i, firstLeadingBit(max(1i, var_1.x)) | (_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -9847i, -1i, var_1.x), vec4<i32>(-1i, var_1.x, global0.x, global0.x)) & func_1(vec4<bool>(global4.a.d, true, var_2.a.d, var_2.a.d), var_0.x, var_2.a.a.xz, global4.a).x)), _wgslsmith_add_u32(abs(~(~u_input.c)), ~min(var_2.b | var_2.a.a.x, global4.b)), 851f);
}

