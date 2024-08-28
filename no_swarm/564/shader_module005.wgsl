struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec4<i32>(16113i, 5564i, -10608i, 1i), -986f);

var<private> global1: f32 = 656f;

var<private> global2: bool;

var<private> global3: Struct_1;

var<private> global4: array<vec2<i32>, 6>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = !any(select(!select(vec2<bool>(global0.a, false), vec2<bool>(arg_0.a, arg_2.a), vec2<bool>(global3.a, global3.a)), vec2<bool>(arg_0.b.x < global0.b.x, false), select(!vec2<bool>(arg_0.a, global3.a), vec2<bool>(global0.a, arg_1.a), global0.a)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.c))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1403f, global0.c) - 655f))))));
    let var_1 = arg_2;
    let var_2 = _wgslsmith_div_vec3_u32(~firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 21469u, u_input.a.x), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x) >> (vec3<u32>(0u, 4294967295u, 45091u) % vec3<u32>(32u)), vec3<u32>(36298u, u_input.d.x, u_input.a.x) << (vec3<u32>(12301u, u_input.d.x, 0u) % vec3<u32>(32u)))), _wgslsmith_clamp_vec3_u32(~(~(~vec3<u32>(85997u, 1u, u_input.d.x))), vec3<u32>(1u, _wgslsmith_sub_u32(u_input.d.x, 47002u), u_input.d.x) ^ ~abs(vec3<u32>(81581u, u_input.d.x, 42635u)), vec3<u32>(_wgslsmith_mult_u32(max(u_input.d.x, 12818u), _wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 1u)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(12998u, u_input.a.x, u_input.a.x), u_input.a.x), u_input.a.x)));
    var var_3 = ~(~(~(-abs(vec3<i32>(u_input.e.x, -2147483647i, -45319i)))));
    return _wgslsmith_f_op_f32(min(arg_1.c, _wgslsmith_f_op_f32(1f - -1000f)));
}

fn func_2(arg_0: f32) -> vec3<bool> {
    global0 = Struct_1(all(select(!vec4<bool>(global3.a, false, true, true), !(!vec4<bool>(global0.a, global0.a, global3.a, global0.a)), all(!vec2<bool>(global0.a, global3.a)))), global3.b, _wgslsmith_f_op_f32(func_3(Struct_1(global0.a, _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(global3.b.x, 1i, 1i, global3.b.x)), global0.b), _wgslsmith_f_op_f32(f32(-1f) * -281f)), Struct_1(true, ~vec4<i32>(global3.b.x, global0.b.x, 0i, 2147483647i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.c - 957f)))), Struct_1(all(vec4<bool>(global3.a, true, false, false)), ~(global3.b | vec4<i32>(u_input.e.x, 37020i, global3.b.x, u_input.b)), arg_0))));
    global3 = Struct_1(!any(select(select(vec2<bool>(global3.a, global3.a), vec2<bool>(global0.a, false), false), vec2<bool>(global0.a, true), all(vec4<bool>(global0.a, global0.a, true, true)))), vec4<i32>(global3.b.x, -26198i, _wgslsmith_mod_i32(-2147483647i, -8036i), 1i), -457f);
    var var_0 = Struct_1(!all(!select(vec2<bool>(global0.a, global3.a), vec2<bool>(global3.a, true), false)), global3.b, _wgslsmith_f_op_f32(func_3(Struct_1(false, vec4<i32>(_wgslsmith_sub_i32(global3.b.x, global3.b.x), -27340i, 1i, 14939i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.c)) * -859f)), Struct_1(global3.a, vec4<i32>(global3.b.x, global3.b.x, global0.b.x, global3.b.x), -280f), Struct_1(true, _wgslsmith_sub_vec4_i32(global3.b, global0.b), -931f))));
    var var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(-1i ^ _wgslsmith_mult_i32(1i | global3.b.x, global3.b.x ^ global3.b.x), _wgslsmith_dot_vec2_i32(global0.b.xy, -(~global0.b.zx))), vec2<i32>(-53167i, abs(-u_input.c) ^ ~(global3.b.x >> (u_input.a.x % 32u))));
    var_0 = Struct_1(global0.a, reverseBits(vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, 76344i, 64530i), global0.b.x, _wgslsmith_div_i32(~(-6157i), 2147483647i), min(~29283i, 0i))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(177f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c), -1000f)))));
    return !vec3<bool>(!global0.a, false, !(var_0.a && var_0.a));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = -129f;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c * 1563f)), arg_0.c)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1149f * 234f), _wgslsmith_div_f32(arg_1.x, -1592f))))));
    var var_2 = 2147483647i;
    var var_3 = select(select(!(!select(vec4<bool>(true, true, true, global0.a), vec4<bool>(arg_0.a, global3.a, global0.a, arg_0.a), arg_3.a)), vec4<bool>(true, global3.a, true || (global0.c >= global0.c), global3.a), 472f <= _wgslsmith_f_op_f32(trunc(426f))), !vec4<bool>(~40356u >= u_input.a.x, true, arg_3.a, !global3.a), !all(vec3<bool>(global3.a, false, false & arg_3.a)));
    var_0 = _wgslsmith_f_op_f32(-global3.c);
    return Struct_1(!var_3.x, min(vec4<i32>(-67192i, -9718i, u_input.e.x, arg_0.b.x) | firstLeadingBit(vec4<i32>(-86119i, u_input.b, 29925i, arg_0.b.x)), vec4<i32>(46055i, -21897i, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(global3.b.x, -18093i), global4[_wgslsmith_index_u32(1u, 6u)]))) & _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(~global3.b, abs(vec4<i32>(-1i, -24960i, -14052i, global0.b.x))), ~global0.b), global0.c);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global3 = arg_1;
    let var_0 = func_4(Struct_1(all(func_2(128f)), max(-vec4<i32>(2147483647i, -45515i, 1i, 0i) & global3.b, countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(global3.b.x, 2086i, 15189i, -12615i), global0.b, global0.b))), -261f), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.c * global0.c))) * global0.c)), 20087u, arg_1);
    global2 = any(vec4<bool>(false, true, arg_1.a, func_4(arg_1, vec2<f32>(_wgslsmith_f_op_f32(abs(-169f)), 1f), 0u, arg_1).a));
    var var_1 = global3.b.x;
    let var_2 = global3.c;
    return 86290u;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = arg_0.x;
    let var_1 = Struct_1(global3.a, arg_1.b, global0.c);
    let var_2 = 83095u;
    var var_3 = func_4(func_4(var_1, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-709f, 1609f)))), u_input.d.x, Struct_1(1756f >= global0.c, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c)))), vec2<f32>(global3.c, 858f), func_1(arg_1, arg_1), arg_1);
    let var_4 = Struct_1(global0.a, _wgslsmith_mult_vec4_i32(global0.b << (_wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_2, 9081u, 58238u, var_2)), max(vec4<u32>(4294967295u, u_input.a.x, u_input.d.x, u_input.a.x), vec4<u32>(27854u, u_input.d.x, u_input.a.x, 4492u))) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(2058i << (u_input.a.x % 32u), ~global3.b.x, _wgslsmith_dot_vec4_i32(global3.b, vec4<i32>(-1i, var_1.b.x, -2147483647i, 28035i)), -23983i), firstLeadingBit(arg_1.b & var_3.b))), 117f);
    return -firstTrailingBit(var_4.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(false, vec4<i32>(-global3.b.x, _wgslsmith_mod_i32(i32(-1i) * -1i, _wgslsmith_sub_i32(-6112i, u_input.e.x)), 13434i, ~(i32(-1i) * -34659i)) ^ _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.b.x, global0.b.x, global3.b.x, global0.b.x), select(vec4<i32>(global3.b.x, global3.b.x, global0.b.x, global3.b.x), vec4<i32>(-1i, 54343i, u_input.b, u_input.c), vec4<bool>(false, true, true, false))), vec4<i32>(-global0.b.x, 0i, countOneBits(-2147483647i), _wgslsmith_add_i32(-25i, global3.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1915f - 1f))));
    global1 = _wgslsmith_f_op_f32(global3.c - var_0.c);
    var var_1 = -global4[_wgslsmith_index_u32(1u, 6u)];
    var var_2 = _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(u_input.a.x, 0u)), vec2<u32>(1212u, ~(_wgslsmith_dot_vec2_u32(vec2<u32>(32627u, u_input.a.x), u_input.d) | _wgslsmith_clamp_u32(57822u, u_input.a.x, u_input.a.x))));
    var_0 = Struct_1(true, func_5(min(~global0.b, _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -1i, global0.b.x, -2147483647i), global3.b)) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(21786u, 41859u, u_input.d.x, 12036u), vec4<u32>(u_input.d.x, 42455u, 4294967295u, u_input.d.x)), 4294967295u, _wgslsmith_mult_u32(4294967295u, u_input.d.x), func_1(Struct_1(global0.a, var_0.b, global0.c), Struct_1(false, global0.b, -125f))) % vec4<u32>(32u)), func_4(Struct_1(global3.a, var_0.b >> (vec4<u32>(17528u, u_input.a.x, 12907u, 34374u) % vec4<u32>(32u)), -544f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1241f, -1710f)))), _wgslsmith_mod_u32(min(u_input.a.x, u_input.a.x), 1u), func_4(Struct_1(false, var_0.b, 247f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, -1000f) + vec2<f32>(1356f, 1490f)), 4294967295u, Struct_1(var_0.a, global0.b, global3.c)))), global3.c);
    let x = u_input.a;
    s_output = StorageBuffer(~(var_2.x & ~_wgslsmith_mod_u32(4294967295u, var_2.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(118f, var_0.c, -1000f, global0.c))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(502f, global3.c, -1149f, global3.c))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(2311f, -367f, 724f, -783f)))), vec4<bool>(var_0.a, var_0.a, true, false))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(f32(-1f) * -301f), var_0.c, _wgslsmith_f_op_f32(step(var_0.c, -2568f))))), all(vec4<bool>(var_1.x < 2147483647i, global3.a, global0.c >= global3.c, any(vec4<bool>(global0.a, false, false, true)))))));
}

