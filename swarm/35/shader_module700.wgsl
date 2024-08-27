struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -18794i;

var<private> global1: Struct_1 = Struct_1(true, 51278i, vec4<f32>(1114f, -361f, -708f, -291f), vec3<i32>(-44620i, -1i, 9743i), vec2<i32>(6028i, 0i));

var<private> global2: Struct_1 = Struct_1(true, 2147483647i, vec4<f32>(-118f, 1056f, -224f, 1171f), vec3<i32>(2147483647i, 0i, 2147483647i), vec2<i32>(0i, i32(-2147483648)));

var<private> global3: array<Struct_1, 32>;

var<private> global4: vec4<i32> = vec4<i32>(1i, 50198i, -32302i, -44294i);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    global4 = _wgslsmith_div_vec4_i32(vec4<i32>((reverseBits(global2.e.x) | 65993i) << (1u % 32u), _wgslsmith_clamp_i32(global1.e.x, -30654i, ~u_input.c), global4.x, 49130i), ~vec4<i32>(abs(~global1.e.x), global2.b, 1i, abs(global1.d.x)));
    let var_0 = select(select(!(!select(vec4<bool>(global1.a, false, global1.a, global2.a), vec4<bool>(global1.a, global1.a, false, false), vec4<bool>(global2.a, global2.a, true, true))), select(select(!vec4<bool>(global1.a, true, false, global2.a), select(vec4<bool>(global2.a, false, global2.a, true), vec4<bool>(false, false, global2.a, global1.a), vec4<bool>(global2.a, global2.a, global2.a, global2.a)), all(vec4<bool>(global1.a, false, global2.a, false))), select(select(vec4<bool>(false, false, global1.a, true), vec4<bool>(global1.a, true, false, global2.a), vec4<bool>(global1.a, true, global2.a, true)), vec4<bool>(true, true, false, false), false), !(!vec4<bool>(global1.a, true, true, true))), true), select(!vec4<bool>(any(vec2<bool>(false, true)), true, global1.a, !global2.a), !vec4<bool>(global1.a, false, global2.a, global2.a), global2.a), !global1.a);
    global4 = _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.d.x, countOneBits(-24427i), u_input.b.x, _wgslsmith_sub_i32(-21160i, 1i)), u_input.b ^ ~vec4<i32>(global2.b, global1.d.x, -1i, u_input.b.x)), u_input.b), u_input.b);
    var var_1 = global4.x;
    global2 = global3[_wgslsmith_index_u32(arg_0.x, 32u)];
    return u_input.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = vec2<u32>(_wgslsmith_clamp_u32(0u, ~(u_input.e.x ^ u_input.d.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, 15977u), u_input.a.wxy)), _wgslsmith_dot_vec3_u32(~(~u_input.d.zwy) ^ vec3<u32>(arg_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, arg_1.x, 1u), arg_1), 0u), arg_1));
    global4 = min(vec4<i32>(~u_input.c, 2147483647i, 1i | select(global1.e.x ^ global2.b, -1i, global4.x <= 2147483647i), 0i), u_input.b);
    var var_1 = select(select(select(!select(vec2<bool>(false, true), vec2<bool>(false, arg_0.a), vec2<bool>(true, arg_0.a)), !(!vec2<bool>(true, global2.a)), _wgslsmith_f_op_f32(floor(global1.c.x)) > _wgslsmith_f_op_f32(round(arg_0.c.x))), !(!(!vec2<bool>(global2.a, arg_0.a))), !vec2<bool>(any(vec2<bool>(global1.a, global1.a)), global2.a)), vec2<bool>(!all(vec3<bool>(true, false, true)) & false, !select(true, true, all(vec3<bool>(global1.a, false, arg_0.a)))), ~global4.x != max(global4.x, func_3(vec4<u32>(1u, 57747u, 1u, 29343u) & u_input.d)));
    let var_2 = !select(vec4<bool>(var_1.x, true, !all(vec4<bool>(false, true, arg_0.a, true)), all(vec4<bool>(true, true, arg_0.a, var_1.x)) | false), vec4<bool>(true, global2.a, true || any(vec2<bool>(true, global2.a)), false), vec4<bool>(false, all(vec3<bool>(true, true, true)), any(!vec3<bool>(var_1.x, global2.a, false)), any(select(vec3<bool>(false, false, true), vec3<bool>(var_1.x, global1.a, arg_0.a), vec3<bool>(global2.a, true, true)))));
    global1 = Struct_1(403f >= arg_0.c.x, arg_0.b, global2.c, vec3<i32>(45718i, select(_wgslsmith_div_i32(~global1.e.x, 18922i), -2147483647i, select(global1.a, true, false)), ((u_input.c & 2147483647i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 29986u, var_0.x), u_input.a.xww) % 32u)) | _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global2.b, -2147483647i, -2147483647i) << (vec4<u32>(var_0.x, 4294967295u, u_input.d.x, 26249u) % vec4<u32>(32u)), u_input.b | vec4<i32>(-14174i, u_input.b.x, 4357i, 1i))), vec2<i32>(-3056i, -1i));
    return Struct_1(true, func_3(u_input.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -813f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(714f + global1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) * _wgslsmith_f_op_f32(f32(-1f) * -1392f)))), arg_0.d, global4.zw);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = global4.x;
    global4 = ~select(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(21282i, u_input.c, u_input.c, global1.d.x), vec4<i32>(-1i, arg_1.e.x, global4.x, -84939i), vec4<i32>(u_input.b.x, -1i, u_input.c, global4.x))) | u_input.b, countOneBits(u_input.b), false);
    return arg_1;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(360f + _wgslsmith_f_op_f32(-700f - global2.c.x));
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~u_input.a.x & ~u_input.a.x, u_input.d.x, ~(u_input.d.x & u_input.a.x)), _wgslsmith_dot_vec3_u32(~(u_input.e.zwz ^ vec3<u32>(29670u, 8514u, 32400u)), (u_input.d.yzw ^ u_input.e.wxy) >> (u_input.a.xzw % vec3<u32>(32u)))) | u_input.a.x, 32u)];
    global3 = array<Struct_1, 32>();
    global3 = array<Struct_1, 32>();
    var_1 = func_4(u_input.a, func_2(arg_1, ~reverseBits(reverseBits(vec3<u32>(u_input.a.x, 14685u, 0u)))), ~vec2<u32>(u_input.d.x, 1u));
    return arg_1.a | (global2.a | !(firstTrailingBit(-18227i) > _wgslsmith_dot_vec3_i32(global4.wwz, vec3<i32>(0i, 2816i, global4.x))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(max(0u >> (arg_2.x % 32u), 1u), ~76148u), select(~u_input.d.yy, abs(u_input.e.yx), global2.a) & ~vec2<u32>(arg_2.x, arg_2.x)) & vec2<u32>(u_input.d.x, u_input.d.x);
    var var_1 = vec2<i32>(15175i, 2147483647i);
    let var_2 = ~select(_wgslsmith_mult_vec2_u32(arg_2 | vec2<u32>(arg_2.x, 1u), _wgslsmith_clamp_vec2_u32(reverseBits(u_input.e.wz), firstLeadingBit(vec2<u32>(4294967295u, 0u)), select(u_input.a.yy, u_input.a.wz, true))), _wgslsmith_clamp_vec2_u32(arg_2, ~u_input.a.wy, ~_wgslsmith_mult_vec2_u32(vec2<u32>(12892u, 0u), arg_2)), !arg_1.xx);
    var var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.x)) * _wgslsmith_f_op_f32(-func_4(u_input.e, arg_3, u_input.a.wx).c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.c.x))) * arg_0.c.x), global1.c.x), vec4<f32>(_wgslsmith_f_op_f32(floor(359f)), global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-512f * func_2(global3[_wgslsmith_index_u32(22785u, 32u)], u_input.a.wxy).c.x)), -695f), vec4<bool>(true, !arg_0.a, global1.a, arg_1.x)));
    let var_4 = Struct_1(all(arg_1.yw), ~countOneBits(-(~35717i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(func_4(vec4<u32>(var_0.x, 0u, var_0.x, 21530u), arg_0, arg_2).c.x, var_3.x, 145f, _wgslsmith_f_op_f32(arg_0.c.x + -250f)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(global2.c, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.x, var_3.x, global1.c.x, arg_0.c.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, -431f, 228f, global2.c.x) - arg_3.c))))), abs(u_input.b.wwz), ~func_2(func_2(Struct_1(true, 10629i, arg_3.c, global2.d, vec2<i32>(u_input.c, 40721i)), vec3<u32>(26476u, 4294967295u, 4294967295u) << (vec3<u32>(45999u, u_input.d.x, arg_2.x) % vec3<u32>(32u))), vec3<u32>(u_input.d.x, var_2.x, u_input.a.x) | _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.x, 35064u, 1u), vec3<u32>(var_2.x, var_0.x, u_input.d.x))).e);
    return Struct_1(true, select(-1i & arg_3.d.x, -abs(func_3(u_input.e)), arg_0.a && (var_2.x <= (arg_2.x | arg_2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-335f, global1.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -520f))), 899f)), ~vec3<i32>(arg_0.d.x, var_4.e.x, -2147483647i), ~vec2<i32>(-arg_3.e.x, select(2147483647i, firstTrailingBit(arg_3.b), arg_3.a && global1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(global3[_wgslsmith_index_u32(u_input.a.x, 32u)], select(vec4<bool>(!select(false, global2.a, global1.a), all(select(vec3<bool>(false, global1.a, false), vec3<bool>(true, global2.a, global2.a), vec3<bool>(false, false, false))), any(vec4<bool>(false, global2.a, global2.a, global2.a)) || true, !(-33611i == u_input.c)), select(vec4<bool>(!global2.a, any(vec2<bool>(global2.a, false)), global2.a & global1.a, func_1(true, global3[_wgslsmith_index_u32(u_input.e.x, 32u)])), select(!vec4<bool>(global1.a, false, false, global2.a), vec4<bool>(global1.a, false, false, true), !global1.a), _wgslsmith_clamp_i32(global2.b, -2147483647i, global2.b) != max(u_input.b.x, u_input.c)), false), ~u_input.d.xy, func_4(~(~firstLeadingBit(vec4<u32>(u_input.d.x, 23301u, u_input.a.x, 0u))), func_2(Struct_1(true, global4.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(886f, 460f, global1.c.x, 550f) * global1.c), firstLeadingBit(global4.zyz), firstTrailingBit(global2.e)), firstLeadingBit(u_input.a.zwx)), vec2<u32>(~_wgslsmith_mult_u32(u_input.e.x, u_input.e.x), ~(~u_input.e.x))));
    global2 = global3[_wgslsmith_index_u32(16287u, 32u)];
    let var_0 = global3[_wgslsmith_index_u32(u_input.e.x, 32u)];
    let var_1 = func_5(func_2(global3[_wgslsmith_index_u32(firstTrailingBit(1u ^ u_input.a.x), 32u)], ~vec3<u32>(1u, _wgslsmith_add_u32(40816u, 46818u), u_input.e.x ^ 0u)), vec4<bool>(!global1.a, global2.a, func_2(func_5(global3[_wgslsmith_index_u32(~7089u, 32u)], select(vec4<bool>(var_0.a, var_0.a, true, var_0.a), vec4<bool>(false, false, true, global1.a), true), vec2<u32>(27357u, u_input.e.x), global3[_wgslsmith_index_u32(11071u, 32u)]), vec3<u32>(u_input.d.x | 1u, u_input.a.x, _wgslsmith_mult_u32(1584u, u_input.d.x))).a, var_0.b < abs(func_3(u_input.a))), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.xx, ~vec2<u32>(4294967295u, 13582u)), vec2<u32>(u_input.a.x, 1u)), vec2<u32>(_wgslsmith_dot_vec4_u32(abs(u_input.d), _wgslsmith_sub_vec4_u32(u_input.e, vec4<u32>(u_input.e.x, 1u, 0u, 4294967295u))), abs(u_input.e.x))), func_4(~firstLeadingBit(firstLeadingBit(vec4<u32>(11877u, u_input.a.x, u_input.d.x, 4294967295u))), Struct_1(true || func_1(false, global3[_wgslsmith_index_u32(1u, 32u)]), ~func_2(global3[_wgslsmith_index_u32(u_input.d.x, 32u)], vec3<u32>(4294967295u, 4294967295u, u_input.e.x)).e.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, -1278f, 465f, global2.c.x)), ~vec3<i32>(global1.b, 20409i, global2.d.x), countOneBits(vec2<i32>(var_0.b, -2147483647i) & vec2<i32>(-35628i, -44763i))), select(u_input.a.yw, u_input.d.xx, !select(vec2<bool>(global1.a, global2.a), vec2<bool>(false, var_0.a), true))));
    var var_2 = 33976u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(u_input.d, firstTrailingBit(_wgslsmith_mod_vec4_u32(u_input.a, u_input.d))) ^ 57354u, _wgslsmith_f_op_vec2_f32(ceil(global2.c.yw)), global1.e.x, 0i, select(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0.d ^ vec3<i32>(-11615i, var_0.d.x, 32612i), global1.d >> (vec3<u32>(u_input.e.x, u_input.e.x, 6055u) % vec3<u32>(32u)), vec3<i32>(global4.x, -2147483647i, 1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-33207i, 0i, global4.x), vec3<i32>(-54342i, global1.d.x, -8386i))), vec3<i32>(select(66292i, -32448i, false) | global2.d.x, firstTrailingBit(abs(global4.x)), ~(-1i)), select(select(vec3<bool>(true, true, true), !vec3<bool>(global2.a, false, global1.a), false), select(!vec3<bool>(true, true, var_0.a), vec3<bool>(global2.a, global2.a, false), select(vec3<bool>(var_1.a, var_1.a, true), vec3<bool>(false, var_1.a, var_1.a), true)), select(select(vec3<bool>(false, var_0.a, var_1.a), vec3<bool>(true, false, false), true), vec3<bool>(global2.a, var_1.a, true), select(vec3<bool>(global1.a, true, false), vec3<bool>(global2.a, global2.a, false), vec3<bool>(var_1.a, var_1.a, global2.a))))));
}

