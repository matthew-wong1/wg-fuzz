struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<i32> = vec3<i32>(29893i, 0i, -43161i);

var<private> global2: vec4<f32>;

var<private> global3: array<vec4<bool>, 11>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = Struct_3(Struct_2(Struct_1(!select(global3[_wgslsmith_index_u32(arg_0, 11u)], global3[_wgslsmith_index_u32(11313u, 11u)], global3[_wgslsmith_index_u32(36947u, 11u)]), ~(~u_input.a), u_input.a.xx, _wgslsmith_dot_vec4_u32(u_input.a, ~u_input.a)), _wgslsmith_mod_i32(14449i, -49488i)), vec4<i32>(u_input.b, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(20789i, global1.x, -18122i) >> (vec3<u32>(arg_0, 4294967295u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(-14943i, global1.x, u_input.b)), abs(vec3<i32>(100197i, u_input.b, -28541i)) & firstLeadingBit(vec3<i32>(-23786i, global1.x, -36140i))), -74048i, i32(-1i) * -2147483647i), ~_wgslsmith_add_u32(min(u_input.a.x, 4294967295u), ~u_input.a.x), global1.xz | ~(~vec2<i32>(global1.x, 0i)));
    var var_1 = _wgslsmith_mult_i32(59807i, 1i);
    var var_2 = var_0.b;
    var_2 = vec4<i32>(-22457i, -19069i, -2147483647i, firstTrailingBit(~(~_wgslsmith_add_i32(-1i, var_0.a.b))));
    let var_3 = var_0.a;
    return _wgslsmith_div_u32(~abs(var_3.a.b.x), u_input.a.x);
}

fn func_2(arg_0: vec2<bool>) -> vec3<bool> {
    let var_0 = ~(-(~vec2<i32>(~u_input.b, ~12001i)));
    let var_1 = global1.x;
    global1 = abs(abs(firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(2147483647i, var_0.x), global1.x, i32(-1i) * -30888i))));
    let var_2 = Struct_2(Struct_1(!global3[_wgslsmith_index_u32(u_input.a.x, 11u)], min(firstLeadingBit(~vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u)), _wgslsmith_div_vec4_u32(u_input.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(49345u, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a, vec4<u32>(27132u, 38486u, u_input.a.x, 0u)))), vec2<u32>(_wgslsmith_div_u32(~u_input.a.x, ~13282u), ~firstTrailingBit(2422u)), ~8299u), ~((u_input.b >> (~u_input.a.x % 32u)) << (func_3(u_input.a.x) % 32u)));
    var var_3 = Struct_1(!vec4<bool>(false, false, ~u_input.b > _wgslsmith_mult_i32(u_input.b, -33237i), true), _wgslsmith_add_vec4_u32(u_input.a, firstTrailingBit(u_input.a << (vec4<u32>(var_2.a.b.x, u_input.a.x, 48295u, var_2.a.b.x) % vec4<u32>(32u)))), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~countOneBits(u_input.a.wx), ~vec2<u32>(var_2.a.b.x, 1u)), var_2.a.b.yz), 23547u | var_2.a.b.x);
    return select(var_3.a.wzz, select(!vec3<bool>(false, -237f > global2.x, var_3.a.x), vec3<bool>(all(!vec2<bool>(var_3.a.x, var_2.a.a.x)), !(!var_3.a.x), select(var_2.a.a.x != var_2.a.a.x, all(vec4<bool>(false, var_3.a.x, false, var_2.a.a.x)), true)), !select(select(var_3.a.xwx, var_2.a.a.yxz, var_3.a.yzy), select(var_2.a.a.yxx, vec3<bool>(var_2.a.a.x, true, var_2.a.a.x), true), !vec3<bool>(false, var_3.a.x, true))), _wgslsmith_f_op_f32(-global2.x) > global2.x);
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: i32) -> Struct_1 {
    let var_0 = select(vec2<bool>(!any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), true), vec2<bool>(true, true), vec2<bool>(any(func_2(vec2<bool>(false, false))), false));
    let var_1 = Struct_3(Struct_2(Struct_1(!global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(4294967295u, 24205u)), 11u)], u_input.a, ~vec2<u32>(1u, 24538u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 37373u), u_input.a.xw), 65816u)), _wgslsmith_add_i32(-global1.x, ~56963i) >> (u_input.a.x % 32u)), vec4<i32>(abs(10246i), _wgslsmith_mod_i32(_wgslsmith_div_i32(abs(arg_2), 22451i >> (u_input.a.x % 32u)), min(-2147483647i, arg_0 ^ global1.x)), arg_1.x >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.a.xyw, vec3<u32>(u_input.a.x, u_input.a.x, 54687u)), 0u) % 32u), _wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(arg_1.x, 2408i, -2147483647i, 1i)) ^ global1.x), u_input.a.x, countOneBits(vec2<i32>(-48944i, 7904i)));
    let var_2 = ~1u;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -919f));
    var var_4 = _wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, countOneBits(global1.x), ~max(arg_1.x, _wgslsmith_mod_i32(arg_1.x, var_1.d.x)), arg_2), -arg_1);
    return Struct_1(vec4<bool>(all(select(vec3<bool>(true, var_1.a.a.a.x, false), func_2(var_1.a.a.a.ww), !var_1.a.a.a.wzx)), true, func_2(vec2<bool>(any(vec2<bool>(true, false)), var_1.c <= var_1.a.a.d)).x, (_wgslsmith_mod_u32(1u, 1u) != var_1.a.a.c.x) || !(2147483647i >= u_input.b)), ~_wgslsmith_div_vec4_u32(~firstTrailingBit(var_1.a.a.b), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c, 8869u), var_1.a.a.b.xw), 28575u, ~1u, min(u_input.a.x, var_2))), countOneBits(vec2<u32>(~_wgslsmith_div_u32(var_2, 1u), var_2)), _wgslsmith_div_u32(var_1.c, ~var_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(func_1(countOneBits(_wgslsmith_mod_i32(-6590i, u_input.b)), min(abs(vec4<i32>(1i, u_input.b, global1.x, 2147483647i)), -vec4<i32>(-33440i, -2147483647i, -16216i, u_input.b)), 0i), select(_wgslsmith_clamp_i32(-u_input.b, 1i, select(-24709i, 37811i, false)), -2147483647i, func_2(func_2(vec2<bool>(false, true)).zy).x)), ~vec4<i32>(max(~(-14503i), i32(-1i) * -5177i), 1i, u_input.b, abs(2147483647i >> (u_input.a.x % 32u))), 16653u, vec2<i32>(-firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(58352i, global1.x), vec2<i32>(-40075i, 1i))), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.b), global1.xx), vec2<i32>(u_input.b, 2147483647i)), -1i)));
    global1 = var_0.b.ywx;
    var var_1 = var_0;
    let var_2 = vec2<i32>(var_1.d.x, u_input.b);
    global3 = array<vec4<bool>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a.x & 0u, ~((var_1.c << (4294967295u % 32u)) << (abs(4294967295u) % 32u)), ~(~u_input.a.x)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.b, 8201i, 19812i)) ^ var_1.b.yyz, min(~vec3<i32>(-30037i, var_2.x, -23035i), -vec3<i32>(-13599i, var_2.x, var_1.b.x))), max(var_1.d.x, min(-26158i, 1i) | -global1.x)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-575f, 1861f)) + 634f)))));
}

