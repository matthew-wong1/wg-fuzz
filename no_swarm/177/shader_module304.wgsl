struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-14150i, -34290i, 3980i, 0i);

var<private> global1: Struct_3;

var<private> global2: vec2<f32> = vec2<f32>(-1000f, -1168f);

var<private> global3: array<Struct_2, 7>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = ~u_input.d;
    var_0 = global1.a;
    global0 = _wgslsmith_sub_vec4_i32(~(~vec4<i32>(1i, global0.x, arg_0.a.x, -1i)) ^ ((vec4<i32>(-11498i, arg_0.a.x, u_input.b, -1i) >> (~vec4<u32>(global1.a, 4294967295u, u_input.d, u_input.d) % vec4<u32>(32u))) & (max(vec4<i32>(global1.b.x, arg_0.a.x, global0.x, -24072i), vec4<i32>(global1.b.x, arg_0.a.x, global0.x, 84498i)) & -vec4<i32>(u_input.b, global1.b.x, -1i, 23097i))), -vec4<i32>(global1.b.x, 0i, _wgslsmith_dot_vec3_i32(arg_0.a, global0.ywx) | _wgslsmith_mult_i32(0i, 615i), i32(-1i) * -14707i));
    global0 = select(_wgslsmith_sub_vec4_i32(-firstTrailingBit(vec4<i32>(-2318i, 0i, global0.x, 0i)), min(abs(vec4<i32>(-174i, 2147483647i, -10262i, global0.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, arg_0.a.x, 26309i, u_input.b), vec4<i32>(global0.x, -1145i, -64519i, global1.b.x)))) >> (reverseBits(~max(vec4<u32>(21066u, 1u, 37u, u_input.d), vec4<u32>(49156u, u_input.d, u_input.d, 16900u))) % vec4<u32>(32u)), select(-reverseBits(vec4<i32>(18532i, arg_0.a.x, global1.b.x, arg_0.a.x)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, global0.x, global1.b.x, global0.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 42562i, global1.b.x, arg_0.a.x), vec4<i32>(0i, u_input.a.x, 0i, u_input.c))), select(~vec4<i32>(-2147483647i, 31991i, global0.x, global0.x), reverseBits(vec4<i32>(1i, arg_0.a.x, -2147483647i, u_input.c)), all(vec2<bool>(false, true))), any(vec4<bool>(false, false, true, false))), vec4<bool>(!(global2.x >= global2.x), true, true, false)), vec4<bool>(select(any(vec3<bool>(true, true, true)), any(vec2<bool>(true, false)), all(vec2<bool>(false, true))), true, any(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), all(!select(vec2<bool>(true, false), vec2<bool>(true, false), false))));
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 1000f));
    return vec4<u32>(~(~89834u), max(_wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(u_input.d | 22595u, 67167u >> (global1.a % 32u))), abs(~4928u) ^ u_input.d), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~select(vec2<u32>(0u, global1.a), vec2<u32>(1u, u_input.d), vec2<bool>(false, false)), vec2<u32>(countOneBits(1u), _wgslsmith_clamp_u32(u_input.d, 7128u, global1.a))), ~1u), ~abs(_wgslsmith_add_u32(~global1.a, _wgslsmith_dot_vec2_u32(vec2<u32>(27781u, global1.a), vec2<u32>(global1.a, 0u)))));
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_2 {
    var var_0 = !any(select(vec3<bool>(true, true, true), vec3<bool>(false, 1000f >= arg_0, true), true));
    var var_1 = func_3(Struct_1(min(~_wgslsmith_add_vec3_i32(vec3<i32>(global1.b.x, u_input.c, -11034i), global0.xxz), vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.b, select(-14808i, 5099i, false)))));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1000f)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(261f + arg_0))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(236f, _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(629f, -900f)))) * arg_0));
    global0 = min(vec4<i32>(0i, _wgslsmith_sub_i32(global1.b.x, 1i), abs(2147483647i), _wgslsmith_mod_i32(global0.x, global0.x)), abs(max((vec4<i32>(-35579i, 0i, -59130i, global1.b.x) << (vec4<u32>(global1.a, 0u, 1u, arg_1) % vec4<u32>(32u))) | vec4<i32>(-12933i, global1.b.x, global0.x, 9470i), -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, 2147483647i, global1.b.x, global0.x), vec4<i32>(global1.b.x, 0i, u_input.c, 2147483647i)))));
    var var_2 = Struct_1(vec3<i32>(-global1.b.x, 1i, global0.x | abs(10932i)) & _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -19925i, global1.b.x ^ -20761i), _wgslsmith_sub_vec3_i32(~global0.zzw, global0.wzy & global0.zwy)));
    return Struct_2(Struct_1(~global0.yxy ^ vec3<i32>(45148i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_2.a.x), vec2<i32>(16726i, -57527i)), reverseBits(global1.b.x))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_3 {
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-449f, _wgslsmith_div_f32(-1852f, 631f))))));
    var var_0 = all(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)) == _wgslsmith_f_op_f32(-global2.x), !(!all(vec2<bool>(false, false))), false));
    var var_1 = ~countOneBits(func_3(arg_0.a).xy ^ vec2<u32>(firstLeadingBit(0u), u_input.d));
    return Struct_3(~(~var_1.x), vec2<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-12058i, 10028i), vec2<i32>(1155i, arg_1.x)), u_input.a), max(1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, -12932i, u_input.b), vec3<i32>(global1.b.x, u_input.b, 2147483647i)))));
}

fn func_1() -> i32 {
    global2 = vec2<f32>(_wgslsmith_f_op_f32(1147f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -534f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.x, 643f, true)) * -492f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1294f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.x, -838f)))), _wgslsmith_f_op_f32(max(global2.x, global2.x)))));
    global3 = array<Struct_2, 7>();
    let var_0 = select(!vec3<bool>(!all(vec4<bool>(true, false, true, false)), true, true), !select(vec3<bool>(false, true, true), vec3<bool>(all(vec3<bool>(true, false, true)), true, true), vec3<bool>(true, true, true)), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true))));
    global3 = array<Struct_2, 7>();
    global1 = func_4(func_2(-1962f, select(~abs(71159u), global1.a, (1152u << (1u % 32u)) <= (global1.a ^ global1.a))), abs(~countOneBits(vec4<i32>(2147483647i, 1459i, global0.x, -37002i))) | ~vec4<i32>(-1i, min(global1.b.x, -17172i), 0i, global0.x | -1i), global3[_wgslsmith_index_u32(global1.a, 7u)]);
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(firstTrailingBit(59707i), abs(global0.x), _wgslsmith_mult_i32(global1.b.x, func_1()), 2147483647i);
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-450f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.x * -1499f))))))));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(trunc(global2.x)));
    let var_0 = Struct_1(-min(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 1419i, u_input.a.x), global0.zww, global0.xxz)), abs(~vec3<i32>(-1i, 48172i, u_input.c))));
    var var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~23364u, _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_clamp_i32(u_input.a.x, var_0.a.x, 1i), 6228i, select(global0.x, _wgslsmith_add_i32(7281i, var_1.a.x), true)), -_wgslsmith_add_vec3_i32(var_0.a, vec3<i32>(var_1.a.x, 2147483647i, var_1.a.x)) >> (_wgslsmith_clamp_vec3_u32(select(vec3<u32>(3972u, u_input.d, 863u), vec3<u32>(global1.a, 35671u, global1.a), vec3<bool>(false, false, true)), vec3<u32>(u_input.d, u_input.d, u_input.d), ~vec3<u32>(global1.a, global1.a, 108655u)) % vec3<u32>(32u))), _wgslsmith_sub_vec4_i32(vec4<i32>(~1i, -2147483647i, 20568i, -12800i), _wgslsmith_clamp_vec4_i32(select(min(vec4<i32>(global0.x, global0.x, -51533i, u_input.b), vec4<i32>(var_1.a.x, var_1.a.x, 6778i, 8613i)), vec4<i32>(37067i, var_0.a.x, u_input.c, global1.b.x), true), firstLeadingBit(vec4<i32>(-1i, 0i, -1i, global0.x)) & ~vec4<i32>(var_0.a.x, global1.b.x, 305i, 5011i), reverseBits(vec4<i32>(global1.b.x, var_0.a.x, var_1.a.x, u_input.b) & vec4<i32>(global1.b.x, var_0.a.x, -47135i, var_0.a.x)))));
}

