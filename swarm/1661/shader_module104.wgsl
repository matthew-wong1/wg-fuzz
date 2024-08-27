struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_1, 14>;

var<private> global2: array<bool, 27>;

var<private> global3: f32 = -267f;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> u32 {
    let var_0 = false;
    var var_1 = select(-1i, _wgslsmith_div_i32(_wgslsmith_sub_i32(arg_0.c, -(~(-2147483647i))), 1i), !(_wgslsmith_dot_vec3_i32(vec3<i32>(-9780i, 18869i, arg_0.c), -vec3<i32>(arg_0.c, 2147483647i, arg_1.c)) > ~arg_1.c));
    var var_2 = !select(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, global2[_wgslsmith_index_u32(0u, 27u)]), var_0), vec3<bool>(true, true, true), !global2[_wgslsmith_index_u32(0u, 27u)]), vec3<bool>(true, !(!var_0), true), select(vec3<bool>(true && var_0, global2[_wgslsmith_index_u32(~4294967295u, 27u)], arg_1.d), !(!vec3<bool>(false, arg_1.b.x, global2[_wgslsmith_index_u32(arg_0.a.x, 27u)])), 5942u <= arg_0.a.x));
    global3 = 337f;
    global3 = arg_2;
    return abs(_wgslsmith_sub_u32(_wgslsmith_add_u32(~arg_1.a.x, select(1u, 32355u, var_0)), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.x, arg_1.a.x), u_input.b.yw)))) & _wgslsmith_add_u32(u_input.b.x ^ _wgslsmith_mult_u32(u_input.a, 4294967295u >> (arg_0.a.x % 32u)), arg_1.a.x << (~(~arg_1.a.x) % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = arg_0.b.x;
    let var_1 = select(vec4<bool>(true, arg_0.d, all(!vec3<bool>(arg_1.d, global2[_wgslsmith_index_u32(arg_1.a.x, 27u)], global2[_wgslsmith_index_u32(arg_1.a.x, 27u)])), !(!global2[_wgslsmith_index_u32(arg_1.a.x, 27u)])), vec4<bool>(u_input.b.x < 4294967295u, global2[_wgslsmith_index_u32(arg_1.a.x, 27u)], global2[_wgslsmith_index_u32(43878u, 27u)], !arg_0.d), vec4<bool>(!arg_1.d, true, true, all(vec3<bool>(!global2[_wgslsmith_index_u32(arg_1.a.x, 27u)], 0u > arg_0.a.x, any(arg_1.b)))));
    let var_2 = false;
    var var_3 = firstTrailingBit(20504i);
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1058f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-267f)) * _wgslsmith_div_f32(275f, 218f)), 1145f, _wgslsmith_div_f32(-2197f, -227f)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, -1000f, 853f, -332f))))))));
    return func_3(Struct_1(arg_1.a, vec2<bool>(true, true), 2147483647i ^ arg_1.c, true), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))) ^ reverseBits(u_input.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> i32 {
    let var_0 = !select(vec4<bool>(!all(vec3<bool>(false, arg_0.b.x, global2[_wgslsmith_index_u32(u_input.b.x, 27u)])), true, !(true != arg_0.b.x), global2[_wgslsmith_index_u32(func_2(global1[_wgslsmith_index_u32(func_2(Struct_1(vec4<u32>(u_input.a, arg_0.a.x, 26086u, u_input.b.x), vec2<bool>(arg_0.d, global2[_wgslsmith_index_u32(u_input.a, 27u)]), arg_0.c, global2[_wgslsmith_index_u32(4294967295u, 27u)]), arg_0), 14u)], Struct_1(vec4<u32>(arg_0.a.x, 0u, arg_0.a.x, u_input.b.x), arg_0.b, arg_0.c, true)), 27u)]), vec4<bool>(any(vec2<bool>(true, true)), any(select(vec3<bool>(false, arg_0.d, false), vec3<bool>(arg_0.b.x, false, arg_0.d), global2[_wgslsmith_index_u32(arg_0.a.x, 27u)])), _wgslsmith_mod_u32(4294967295u, arg_0.a.x) != 0u, true), any(!select(vec4<bool>(arg_0.b.x, false, arg_0.b.x, arg_0.b.x), vec4<bool>(arg_0.b.x, true, false, false), vec4<bool>(global2[_wgslsmith_index_u32(arg_0.a.x, 27u)], global2[_wgslsmith_index_u32(u_input.b.x, 27u)], false, false))));
    global2 = array<bool, 27>();
    global3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * -659f))) - -1225f)) + 1000f);
    var var_1 = arg_0;
    let var_2 = (-(vec4<i32>(1i, -1i, 1i, arg_0.c) >> (_wgslsmith_clamp_vec4_u32(u_input.b, var_1.a, vec4<u32>(u_input.b.x, 1u, arg_0.a.x, 7651u)) % vec4<u32>(32u))) | ~firstLeadingBit(vec4<i32>(arg_0.c, 2147483647i, var_1.c, arg_0.c) & vec4<i32>(76030i, arg_0.c, arg_0.c, -1i))) ^ (vec4<i32>(-1i) * -abs(vec4<i32>(1995i, 2147483647i, arg_0.c, arg_0.c) << (vec4<u32>(arg_0.a.x, 35742u, u_input.a, 45490u) % vec4<u32>(32u))));
    return -26595i;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec3<i32>(i32(-1i) * -22653i, -2147483647i, _wgslsmith_clamp_i32(firstLeadingBit(arg_1.c) ^ (i32(-1i) * -54594i), arg_2.c, arg_1.c));
    var_0 = firstLeadingBit(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, arg_1.c), vec3<i32>(8793i, -34156i, -1i))) ^ -(vec3<i32>(14804i, arg_1.c, 14589i) ^ vec3<i32>(arg_1.c, -1i, arg_2.c))) ^ abs(select(~vec3<i32>(arg_2.c, arg_2.c, 1i), vec3<i32>(-28077i, 0i, arg_2.c) >> (u_input.b.zyz % vec3<u32>(32u)), select(vec3<bool>(false, true, true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 27u)], false, false), vec3<bool>(true, true, false))) ^ vec3<i32>(-var_0.x, _wgslsmith_mult_i32(arg_2.c, arg_2.c), -27001i));
    global0 = arg_2.a.x;
    global1 = array<Struct_1, 14>();
    let var_1 = reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(func_4(global1[_wgslsmith_index_u32(func_2(Struct_1(arg_1.a, vec2<bool>(arg_2.d, false), 1i, arg_1.d), global1[_wgslsmith_index_u32(arg_2.a.x, 14u)]), 14u)], arg_0.zzw), 2147483647i, arg_1.c, min(~41168i, var_0.x)), firstLeadingBit(~(~vec4<i32>(56721i, -54418i, arg_2.c, -925i)))));
    return global1[_wgslsmith_index_u32(abs(4294967295u), 14u)];
}

fn func_5(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = Struct_1(vec4<u32>(~9060u, _wgslsmith_add_u32(~u_input.a, u_input.a), arg_0, min(arg_0, 86814u)), vec2<bool>(!arg_2.d, !(!(arg_3.d && arg_3.d))), 43411i, all(select(!(!vec4<bool>(arg_2.d, false, false, arg_2.b.x)), vec4<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(arg_3.a.x, 27u)], false, false)), all(vec4<bool>(true, true, false, arg_3.b.x)), false & global2[_wgslsmith_index_u32(1u, 27u)], arg_2.b.x), global2[_wgslsmith_index_u32(min(~u_input.a, arg_3.a.x), 27u)])));
    let var_1 = arg_3;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(759f, 1249f) + _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)));
    let var_3 = Struct_1(~(~firstLeadingBit(arg_3.a)), vec2<bool>(true, false), arg_3.c, !var_1.b.x);
    global0 = var_3.a.x;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.zy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-547f, 532f)))), 13168i <= func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, arg_1.x, -708f, arg_1.x) + vec4<f32>(-122f, var_2, arg_1.x, -147f)), func_1(vec4<f32>(arg_1.x, 1000f, arg_1.x, -238f), Struct_1(arg_2.a, arg_3.b, arg_2.c, false), var_3), Struct_1(vec4<u32>(var_0.a.x, 4294967295u, var_3.a.x, var_3.a.x), var_0.b, arg_3.c, false)).c)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(450f + _wgslsmith_div_f32(-668f, _wgslsmith_f_op_f32(-var_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 27>();
    var var_0 = 51239u;
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1888f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -225f))))) * _wgslsmith_div_f32(-1015f, 458f));
    var_0 = _wgslsmith_div_u32(1u, u_input.a);
    var_0 = _wgslsmith_dot_vec3_u32(~(~(~u_input.b.wyy)) << (u_input.b.xxx % vec3<u32>(32u)), vec3<u32>(~(61023u >> (~u_input.a % 32u)), 0u, 21260u));
    global1 = array<Struct_1, 14>();
    var var_1 = vec2<u32>(u_input.b.x, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(u_input.a, 4294967295u ^ _wgslsmith_sub_u32(4294967295u, var_1.x), u_input.b.x, ~_wgslsmith_mult_u32(var_1.x, u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(~u_input.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1788f, -665f, 639f))), func_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-230f, 212f, -594f, 1000f))), Struct_1(u_input.b, vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 27u)], global2[_wgslsmith_index_u32(var_1.x, 27u)]), -2147483647i, true), Struct_1(u_input.b, vec2<bool>(global2[_wgslsmith_index_u32(var_1.x, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)]), -54315i, global2[_wgslsmith_index_u32(var_1.x, 27u)])), Struct_1(reverseBits(vec4<u32>(1u, u_input.a, u_input.a, u_input.a)), func_1(vec4<f32>(1000f, 1000f, -1443f, -695f), global1[_wgslsmith_index_u32(0u, 14u)], Struct_1(u_input.b, vec2<bool>(true, global2[_wgslsmith_index_u32(var_1.x, 27u)]), 0i, global2[_wgslsmith_index_u32(u_input.a, 27u)])).b, 68595i, false)))), ~_wgslsmith_sub_vec4_u32(u_input.b >> (vec4<u32>(var_1.x, u_input.b.x, u_input.a, u_input.b.x) % vec4<u32>(32u)), ~u_input.b) & vec4<u32>(~firstTrailingBit(1u), ~33262u ^ ~var_1.x, u_input.a, ~_wgslsmith_mult_u32(0u, u_input.a)));
}

