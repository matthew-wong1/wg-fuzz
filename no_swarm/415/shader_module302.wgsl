struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(13290u, 3234u, 1u, 0u), vec3<bool>(true, true, false));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: u32, arg_3: bool) -> vec4<u32> {
    var var_0 = Struct_1(global0.a, vec3<bool>(arg_3, 1u > global0.a.x, reverseBits(-25988i ^ arg_0.x) <= 1i));
    let var_1 = !(~(-5897i) < _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1, arg_1, 72060i), _wgslsmith_add_vec3_i32(vec3<i32>(arg_1, arg_1, 19099i), arg_0)), ~abs(arg_0)));
    let var_2 = _wgslsmith_div_vec2_i32(~select(arg_0.xx, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.c) & arg_0.zz, vec2<i32>(0i, 2147483647i)), var_1), vec2<i32>(44213i & ~u_input.c, abs(~u_input.c)));
    var var_3 = true;
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(233f * _wgslsmith_f_op_f32(trunc(-911f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-341f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-705f)))))));
    return ~_wgslsmith_mod_vec4_u32(var_0.a, _wgslsmith_clamp_vec4_u32(~(vec4<u32>(var_0.a.x, 15656u, u_input.b.x, u_input.b.x) << (var_0.a % vec4<u32>(32u))), ~(~vec4<u32>(var_0.a.x, 65840u, var_0.a.x, u_input.a)), vec4<u32>(var_0.a.x, _wgslsmith_clamp_u32(0u, 4294967295u, 60968u), 1u, arg_2 ^ 1310u)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(max(firstTrailingBit(select(vec4<u32>(global0.a.x, global0.a.x, u_input.a, global0.a.x) ^ global0.a, ~vec4<u32>(40528u, global0.a.x, global0.a.x, global0.a.x), !vec4<bool>(global0.b.x, true, false, false))), ~global0.a), vec3<bool>(true, all(select(select(vec2<bool>(true, true), global0.b.xy, global0.b.x), !vec2<bool>(false, global0.b.x), !global0.b.x)), all(select(select(vec2<bool>(true, global0.b.x), vec2<bool>(false, false), true), select(vec2<bool>(global0.b.x, global0.b.x), vec2<bool>(true, global0.b.x), global0.b.zx), true))));
    let var_1 = Struct_1(_wgslsmith_mult_vec4_u32(~select(func_3(vec3<i32>(u_input.c, u_input.c, -13594i), u_input.c, u_input.b.x, false), vec4<u32>(38028u, 0u, 4294967295u, u_input.a), select(vec4<bool>(true, global0.b.x, global0.b.x, true), vec4<bool>(global0.b.x, false, global0.b.x, global0.b.x), vec4<bool>(false, var_0.b.x, false, var_0.b.x))), ~(~(~vec4<u32>(var_0.a.x, global0.a.x, 4294967295u, 1u)))), !vec3<bool>(!(u_input.c < 43862i), !(false & global0.b.x), false));
    var var_2 = _wgslsmith_mod_u32(u_input.a, _wgslsmith_mod_u32(~49243u, global0.a.x) | min(_wgslsmith_sub_u32(firstLeadingBit(4193u), u_input.b.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(var_1.a.xzy, vec3<u32>(global0.a.x, var_1.a.x, 4294967295u)), abs(4294967295u))));
    var var_3 = var_0;
    var var_4 = vec2<i32>(u_input.c, _wgslsmith_mult_i32(-_wgslsmith_div_i32(u_input.c, -u_input.c), 0i));
    return var_0;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = Struct_1(~global0.a, global0.b);
    global0 = Struct_1(arg_1.a, !func_2().b);
    var var_1 = vec3<bool>(!global0.b.x, arg_0, all(arg_1.b));
    let var_2 = ~(~_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(global0.a.x, 0u)) >> (arg_2.a.x % 32u));
    let var_3 = func_2();
    return abs(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(u_input.c, 1i, countOneBits(u_input.c), u_input.c | u_input.c)), ~(vec4<i32>(u_input.c, 2147483647i, 12242i, 97277i) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_2.a.x, 0u, arg_2.a.x), var_3.a, vec4<u32>(1u, arg_2.a.x, 4294967295u, var_0.a.x)) % vec4<u32>(32u)))));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>) -> vec4<u32> {
    global0 = arg_1;
    let var_0 = 1808f;
    var var_1 = ~u_input.c <= _wgslsmith_dot_vec4_i32(vec4<i32>(-5287i, 46474i, u_input.c, ~(-2328i)), func_4(false && !global0.b.x, Struct_1(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 50212u) << (global0.a % vec4<u32>(32u)), vec3<bool>(true, arg_1.b.x, global0.b.x)), func_2()));
    let var_2 = _wgslsmith_mod_i32(-firstLeadingBit(1i), arg_0);
    var var_3 = arg_1;
    return ~(~select(arg_1.a, arg_1.a, arg_1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mult_vec4_u32(func_1(_wgslsmith_clamp_i32(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(57990i, u_input.c), vec2<i32>(u_input.c, u_input.c)), 16500i), Struct_1(vec4<u32>(u_input.b.x, 0u, u_input.b.x, 22553u), vec3<bool>(true, global0.b.x, global0.b.x)), global0.a), _wgslsmith_div_vec4_u32(~global0.a, ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 76084u, 1u, 50387u), global0.a))), vec3<bool>(global0.b.x, global0.b.x, all(!vec3<bool>(global0.b.x, global0.b.x, global0.b.x))));
    global0 = Struct_1(_wgslsmith_mod_vec4_u32(~global0.a, _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 0u, u_input.a, 1u) | global0.a, _wgslsmith_div_vec4_u32(max(vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<u32>(global0.a.x, 31897u, u_input.b.x, 26408u)), _wgslsmith_mult_vec4_u32(var_0.a, vec4<u32>(63043u, 10223u, u_input.a, 7615u))))), var_0.b);
    global0 = Struct_1(firstTrailingBit(vec4<u32>(~var_0.a.x, global0.a.x, 0u, ~max(var_0.a.x, 51302u))), !func_2().b);
    var var_1 = global0.a;
    let var_2 = Struct_1(_wgslsmith_mod_vec4_u32(global0.a, vec4<u32>(global0.a.x, 1u << (0u % 32u), ~abs(8140u), 4294967295u)), !var_0.b);
    var var_3 = _wgslsmith_dot_vec4_i32(reverseBits(-vec4<i32>(u_input.c, u_input.c, u_input.c, -5742i) << (vec4<u32>(4617u ^ var_1.x, var_1.x & 0u, u_input.b.x & var_1.x, func_1(10529i, var_0, vec4<u32>(4294967295u, var_2.a.x, 14721u, var_0.a.x)).x) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(~vec4<i32>(22382i ^ u_input.c, abs(u_input.c), u_input.c, u_input.c & u_input.c), _wgslsmith_div_vec4_i32(max(~vec4<i32>(u_input.c, 0i, u_input.c, u_input.c), ~vec4<i32>(u_input.c, u_input.c, 1i, -3386i)), countOneBits(vec4<i32>(-6603i, u_input.c, u_input.c, -1i) | vec4<i32>(u_input.c, 0i, u_input.c, u_input.c)))));
    var var_4 = (-select(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-1i, 1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(19916i, u_input.c)), var_0.b.xx) << (countOneBits(~var_2.a.xx) % vec2<u32>(32u))) >> (u_input.b.zy % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

