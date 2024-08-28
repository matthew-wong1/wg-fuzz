struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(1i, i32(-2147483648)), Struct_1(264f), false);

var<private> global1: vec2<f32> = vec2<f32>(-673f, -555f);

var<private> global2: array<vec3<i32>, 24>;

var<private> global3: array<Struct_2, 13>;

var<private> global4: array<bool, 3> = array<bool, 3>(false, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_clamp_vec4_u32(select(max(vec4<u32>(~15984u, ~4294967295u, _wgslsmith_sub_u32(4294967295u, u_input.c.x), u_input.a), max(firstLeadingBit(vec4<u32>(4294967295u, 0u, 5181u, u_input.a)), abs(vec4<u32>(673u, u_input.c.x, 0u, 60512u)))), ~(~vec4<u32>(u_input.a, 39551u, u_input.c.x, u_input.a)) ^ ~min(vec4<u32>(12108u, 52504u, 4294967295u, 93421u), vec4<u32>(1u, 1u, u_input.c.x, 4294967295u)), _wgslsmith_f_op_f32(-global0.b.a) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.a))), ~vec4<u32>(u_input.a, u_input.a, firstLeadingBit(u_input.a), ~u_input.c.x) | ~vec4<u32>(countOneBits(124358u), u_input.a & 0u, ~16245u, 0u), firstTrailingBit(select(vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.c.x), reverseBits(u_input.c.x), u_input.c.x, ~4294967295u), vec4<u32>(1u, u_input.c.x, u_input.a & u_input.a, firstTrailingBit(u_input.c.x)), true)));
    let var_1 = global0.b.a;
    var var_2 = 264i << (_wgslsmith_dot_vec4_u32(vec4<u32>(22809u, 15956u, 28395u, ~(1u & u_input.a)), ~select(firstTrailingBit(vec4<u32>(2996u, var_0.x, u_input.c.x, 0u)), ~vec4<u32>(var_0.x, u_input.c.x, var_0.x, u_input.c.x), all(vec3<bool>(false, false, global4[_wgslsmith_index_u32(71616u, 3u)])))) % 32u);
    global4 = array<bool, 3>();
    global4 = array<bool, 3>();
    return select(vec4<bool>(false, global0.c, false, false), !(!select(select(vec4<bool>(global0.c, global0.c, global4[_wgslsmith_index_u32(1u, 3u)], global0.c), vec4<bool>(global4[_wgslsmith_index_u32(23667u, 3u)], global0.c, global0.c, global4[_wgslsmith_index_u32(u_input.a, 3u)]), true), !vec4<bool>(true, false, true, global4[_wgslsmith_index_u32(u_input.a, 3u)]), !global0.c)), !(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, global0.c, global0.c, false), vec4<bool>(global0.c, global0.c, false, global4[_wgslsmith_index_u32(var_0.x, 3u)])), select(vec4<bool>(false, global0.c, global4[_wgslsmith_index_u32(39262u, 3u)], false), vec4<bool>(global0.c, true, false, global4[_wgslsmith_index_u32(4294967295u, 3u)]), global0.c), select(vec4<bool>(global0.c, true, true, global4[_wgslsmith_index_u32(u_input.a, 3u)]), vec4<bool>(true, false, true, global4[_wgslsmith_index_u32(52554u, 3u)]), global0.c))));
}

fn func_2() -> u32 {
    var var_0 = func_3(-global2[_wgslsmith_index_u32(1u, 24u)]);
    global0 = Struct_2(-min(vec2<i32>(global0.a.x << (19915u % 32u), _wgslsmith_dot_vec2_i32(global0.a, u_input.b)), vec2<i32>(min(-38847i, global0.a.x), firstTrailingBit(u_input.b.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1048f, -1198f)), global1.x)))), !global0.c);
    global4 = array<bool, 3>();
    let var_1 = Struct_2(-(global0.a >> (firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.c.x), u_input.c)) % vec2<u32>(32u))), global0.b, all(func_3(vec3<i32>(~u_input.b.x, ~u_input.b.x, -54244i)).wyz));
    var var_2 = -2432i;
    return firstLeadingBit(min(~abs(1u), _wgslsmith_mod_u32(0u, select(34633u, u_input.a, false) << (_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.a, 0u)) % 32u))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: bool) -> vec3<bool> {
    var var_0 = ~((func_2() & (~u_input.a << (0u % 32u))) ^ ~u_input.c.x);
    var var_1 = false;
    var var_2 = firstLeadingBit(25310u);
    let var_3 = arg_1.b;
    let var_4 = -vec4<i32>(_wgslsmith_div_i32(14566i, -26208i), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.d, global0.a.x) >> (vec3<u32>(u_input.c.x, u_input.c.x, 0u) % vec3<u32>(32u)), global2[_wgslsmith_index_u32(~1u, 24u)]), ~u_input.b.x), -17336i, _wgslsmith_mod_i32(global0.a.x, u_input.b.x));
    return func_3(-_wgslsmith_mod_vec3_i32(vec3<i32>(firstLeadingBit(-2147483647i), arg_1.a.x, u_input.b.x), global2[_wgslsmith_index_u32(u_input.c.x, 24u)])).zyw;
}

fn func_4(arg_0: i32, arg_1: vec3<bool>) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c & u_input.c, max(vec2<u32>(reverseBits(~0u), ~u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a << (0u % 32u), 1u), _wgslsmith_clamp_vec2_u32(u_input.c, vec2<u32>(1445u, 12503u), vec2<u32>(u_input.c.x, u_input.c.x)) ^ ~vec2<u32>(50637u, 7685u)))), 13u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.b.a, var_0.b.a, -717f, var_0.b.a), vec4<f32>(global1.x, var_0.b.a, var_0.b.a, -645f))) * vec4<f32>(global0.b.a, global0.b.a, 1885f, var_0.b.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global0.b.a, 1000f, var_0.b.a) + vec4<f32>(var_0.b.a, -1967f, global1.x, 161f))))));
    var var_2 = var_0.b;
    var var_3 = vec3<f32>(-710f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a + 1231f)) - var_2.a))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -402f), var_2.a != -775f)), _wgslsmith_f_op_f32(exp2(global1.x)))));
    let var_4 = _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(global0.a.x, 1i), global0.a.x), _wgslsmith_add_i32(u_input.d, 6203i), ~select(-12112i, global0.a.x, global0.c), u_input.d)), vec4<i32>(_wgslsmith_sub_i32(global0.a.x, var_0.a.x), max(i32(-1i) * -arg_0, _wgslsmith_sub_i32(2147483647i, 1i)), u_input.d, 63182i));
    return firstLeadingBit(~u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(countOneBits(_wgslsmith_clamp_u32(4294967295u, firstLeadingBit(abs(u_input.a)), ~u_input.c.x)), u_input.c.x, firstLeadingBit(1u), 1u);
    var var_1 = global3[_wgslsmith_index_u32(func_4(2147483647i, select(func_1(global2[_wgslsmith_index_u32(u_input.a, 24u)], Struct_2(global0.a, Struct_1(global1.x), !global0.c), all(vec4<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 3u)], global0.c, false, global0.c)) | true), vec3<bool>(true, !(481f >= global1.x), func_3(vec3<i32>(0i, -10249i, -1i) | vec3<i32>(global0.a.x, 26358i, 1i)).x), func_3(vec3<i32>(_wgslsmith_clamp_i32(global0.a.x, u_input.b.x, global0.a.x), _wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(u_input.a, 24u)], vec3<i32>(-39082i, -49484i, 14850i)), select(8691i, u_input.d, false))).xxw)), 13u)];
    var var_2 = vec4<f32>(1f, global0.b.a, _wgslsmith_f_op_f32(global0.b.a - _wgslsmith_f_op_f32(f32(-1f) * -1329f)), _wgslsmith_f_op_f32(trunc(global0.b.a)));
    var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1950f, -1497f, -533f, 964f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1531f, var_1.b.a, 321f, var_1.b.a) - vec4<f32>(1000f, 140f, global0.b.a, 1246f)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.x * global1.x), global0.b.a, _wgslsmith_div_f32(global0.b.a, var_2.x), -219f), vec4<f32>(168f, 459f, 1f, var_2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-929f, 1862f, var_2.x, -1000f) - vec4<f32>(-601f, global1.x, var_1.b.a, var_1.b.a)))), vec4<f32>(_wgslsmith_f_op_f32(step(global0.b.a, 1000f)), _wgslsmith_f_op_f32(sign(1000f)), var_2.x, _wgslsmith_div_f32(-1000f, 993f)))))));
    let var_3 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(-12461i, var_2.zyx, reverseBits(0i << ((firstLeadingBit(var_0.x) & _wgslsmith_dot_vec4_u32(vec4<u32>(49049u, var_0.x, 1u, var_0.x), var_0)) % 32u)));
}

