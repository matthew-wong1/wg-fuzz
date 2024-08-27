struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 10>;

var<private> global2: array<vec2<f32>, 29>;

var<private> global3: Struct_2;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: vec3<u32>) -> bool {
    global0 = false | (~abs(_wgslsmith_div_u32(4294967295u, arg_2.x)) > 0u);
    var var_0 = 4252i & select(_wgslsmith_div_i32(i32(-1i) * -global3.d.x, 17582i ^ firstTrailingBit(0i)), _wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(global3.d, vec4<i32>(1i, 29844i, 0i, 40944i)), ~firstLeadingBit(global1[_wgslsmith_index_u32(0u, 10u)])), !all(select(vec3<bool>(arg_1.x, true, true), vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(true, arg_1.x, arg_1.x))));
    var var_1 = Struct_3(global3.d, Struct_2(-964f, abs(global3.b), countOneBits(select(_wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(4294967295u, arg_2.x, 75193u)), 65632u, arg_1.x)), global3.d), _wgslsmith_mult_i32(~firstTrailingBit(0i), 109i), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-179f - 571f) - -1339f))), _wgslsmith_f_op_f32(f32(-1f) * -1079f), global3.a));
    var_1 = Struct_3(vec4<i32>(_wgslsmith_add_i32(1i, 1i), ~u_input.a, abs(_wgslsmith_dot_vec4_i32(global3.d >> (vec4<u32>(4294967295u, 16803u, global3.c, var_1.b.b.x) % vec4<u32>(32u)), -var_1.b.d)), _wgslsmith_mult_i32(-(i32(-1i) * -2147483647i), var_1.a.x)), var_1.b, -countOneBits(~2147483647i) >> (abs(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_1.b.b.x, var_1.b.b.x), global3.c)) % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.d) * var_1.d)));
    global2 = array<vec2<f32>, 29>();
    return !(!(_wgslsmith_sub_u32(36311u, _wgslsmith_mult_u32(arg_2.x, var_1.b.c)) <= (global3.b.x >> (1u % 32u))));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>) -> bool {
    var var_0 = vec3<u32>(_wgslsmith_sub_u32(arg_0, 1u >> (_wgslsmith_dot_vec2_u32(arg_1.yx, arg_1.yy) % 32u)) >> (global3.b.x % 32u), 7510u, firstTrailingBit(arg_1.x));
    var var_1 = !(!select(vec4<bool>(true, true, func_3(-1i, vec3<bool>(false, false, false), global3.b), false), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), false), vec4<bool>(true, false, true, true), false), true));
    let var_2 = countOneBits(vec3<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, var_0.x)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(76744u, 1u), global3.b.xy, global3.b.xy)), ~1u, _wgslsmith_add_u32(firstLeadingBit(max(var_0.x, 484u)), 1u)));
    var var_3 = firstLeadingBit(vec2<i32>(_wgslsmith_clamp_i32(global3.d.x, 8494i, _wgslsmith_dot_vec3_i32(max(global3.d.zyw, global3.d.ywy), vec3<i32>(u_input.a, -1i, 24992i))), abs(-53698i)));
    global3 = Struct_2(global3.a, ~arg_1.zzx, min(abs(arg_0), ~(~1u)) & ~global3.b.x, vec4<i32>(-(~(-32513i)), global1[_wgslsmith_index_u32(min(83819u, 1u), 10u)], _wgslsmith_dot_vec4_i32(global3.d ^ global3.d, _wgslsmith_mult_vec4_i32(global3.d >> (vec4<u32>(arg_0, 67828u, 27425u, 4294967295u) % vec4<u32>(32u)), ~vec4<i32>(0i, -1i, var_3.x, global1[_wgslsmith_index_u32(arg_0, 10u)]))), min(0i, -select(-34567i, -9514i, var_1.x))));
    return var_1.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<f32>) -> vec4<bool> {
    var var_0 = select(vec4<bool>(all(vec4<bool>(false, true, all(vec2<bool>(false, true)), true)), select(all(vec2<bool>(false, true)), all(vec4<bool>(true, false, false, false)) && all(vec4<bool>(true, true, false, false)), func_2(63484u ^ global3.b.x, vec4<u32>(global3.b.x, global3.b.x, global3.b.x, global3.b.x))), all(vec3<bool>(true, true, true)), true), select(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), -1000f >= _wgslsmith_f_op_f32(floor(202f))), !vec4<bool>(false, _wgslsmith_f_op_f32(select(-1589f, -810f, false)) == -188f, true, _wgslsmith_sub_u32(global3.b.x, global3.b.x) < 4294967295u));
    return !select(vec4<bool>(select(all(vec2<bool>(var_0.x, var_0.x)), true, select(true, true, var_0.x)), var_0.x, false, true), select(!(!vec4<bool>(var_0.x, false, true, var_0.x)), select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(var_0.x, true, var_0.x, var_0.x), true), global3.a > _wgslsmith_f_op_f32(1091f * arg_1.x)), func_2(~(~4294967295u), select(~vec4<u32>(38043u, 4294967295u, 0u, global3.b.x), vec4<u32>(34126u, global3.c, global3.c, global3.b.x) | vec4<u32>(global3.b.x, 1u, global3.b.x, 17131u), true | var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    global1 = array<i32, 10>();
    global2 = array<vec2<f32>, 29>();
    global2 = array<vec2<f32>, 29>();
    let var_0 = !func_1(-global3.d.xx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a, global3.a, -1429f, global3.a) - vec4<f32>(-863f, 234f, 271f, 345f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(816f, global3.a, 1000f, global3.a) + vec4<f32>(-1060f, -235f, global3.a, global3.a))))));
    let var_1 = 7744u;
    var var_2 = Struct_3(countOneBits(vec4<i32>(firstTrailingBit(~u_input.a), -69569i, u_input.a, _wgslsmith_div_i32(min(1273i, -2147483647i), 1i))), Struct_2(global3.a, firstLeadingBit(~(~vec3<u32>(29844u, 4294967295u, global3.c))), abs(21101u), -firstLeadingBit(-vec4<i32>(u_input.a, global3.d.x, 18926i, 20462i))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(-2147483647i << (var_1 % 32u), global3.d.x), global1[_wgslsmith_index_u32(~countOneBits(4294967295u), 10u)] << (22137u % 32u)), vec3<f32>(global3.a, global3.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.a - global3.a)))))));
    global0 = false != (572f >= var_2.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.b.b | var_2.b.b, var_2.b.b.xy, _wgslsmith_mod_vec3_u32(var_2.b.b, ~(~var_2.b.b)));
}

