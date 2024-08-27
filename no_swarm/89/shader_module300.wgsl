struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

var<private> global1: vec4<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>) -> vec2<f32> {
    let var_0 = Struct_1(((u_input.b.x & max(65423u, u_input.b.x)) & ~38002u) >= 1u, -510f, _wgslsmith_mod_i32(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(~global1.x, 17u)], arg_1.x), countOneBits(global0[_wgslsmith_index_u32(~4294967295u, 17u)])));
    var var_1 = Struct_1(!(!(!all(vec3<bool>(var_0.a, false, var_0.a)))), var_0.b, 1i << (u_input.b.x % 32u));
    var var_2 = ~(u_input.b >> (_wgslsmith_add_vec4_u32(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(7755u, 75904u, u_input.b.x, 13566u), u_input.b, vec4<u32>(u_input.b.x, global1.x, 4294967295u, 0u))), ~vec4<u32>(global1.x, 4294967295u, global1.x, 38667u)) % vec4<u32>(32u)));
    var var_3 = all(!select(!vec3<bool>(false, true, var_0.a), select(vec3<bool>(false, var_0.a, true), !vec3<bool>(var_1.a, var_1.a, var_0.a), var_1.a), true & var_0.a));
    global0 = array<i32, 17>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, 1793f), -1000f), -927f) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1419f, var_1.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -818f) - vec2<f32>(var_0.b, var_0.b)))))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, arg_0)))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_1) -> bool {
    global0 = array<i32, 17>();
    let var_0 = select(min(_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(5404i, 21984i)), ~(vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(36124u, 17u)]) ^ vec2<i32>(-17506i, -5684i))), select(vec2<i32>(-1i, u_input.a) ^ vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 17u)], global0[_wgslsmith_index_u32(1u, 17u)]), vec2<i32>(-1i) * -vec2<i32>(arg_0.c, -1994i), !select(vec2<bool>(false, arg_0.a), vec2<bool>(arg_0.a, true), vec2<bool>(true, true)))), reverseBits(-min(vec2<i32>(u_input.a, 78605i), vec2<i32>(1i, global0[_wgslsmith_index_u32(global1.x, 17u)]))) & ~vec2<i32>(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(global1.x, 17u)], global0[_wgslsmith_index_u32(48128u, 17u)]), reverseBits(37776i)), arg_3.a);
    let var_1 = reverseBits(-var_0.x);
    global1 = vec4<u32>(18508u, ~_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(u_input.b.xyw, vec3<u32>(1u, 1u, global1.x)), abs(u_input.b.x)), abs(~(u_input.b.x | 88744u) & global1.x), _wgslsmith_add_u32(~global1.x, ~11304u));
    var var_2 = 624f;
    return true;
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: Struct_1) -> vec4<bool> {
    global0 = array<i32, 17>();
    return vec4<bool>(all(!select(select(vec4<bool>(true, arg_2.a, true, arg_2.a), vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<bool>(false, arg_2.a, false, false)), vec4<bool>(false, arg_0.x, false, false), arg_0.x || false)), arg_0.x, all(!vec3<bool>(true, arg_2.a, any(vec3<bool>(arg_2.a, arg_2.a, false)))), any(vec4<bool>(false, false, arg_0.x, !any(vec2<bool>(arg_0.x, arg_1.x)))));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true))), -1025f, 18611i);
    var var_1 = !any(select(select(!vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, true), select(vec2<bool>(var_0.a, false), vec2<bool>(true, false), vec2<bool>(var_0.a, true))), select(!vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, var_0.a), true), true));
    var_0 = Struct_1(firstLeadingBit(~_wgslsmith_add_i32(77781i, var_0.c)) > reverseBits(u_input.a), var_0.b, 50063i);
    let var_2 = func_5(!vec2<bool>(!(!var_0.a), func_4(Struct_1(false, var_0.b, -37563i), var_0.b, _wgslsmith_f_op_vec2_f32(func_3(var_0.b, vec4<i32>(u_input.a, -28501i, 2147483647i, 1i))), Struct_1(false, -613f, global0[_wgslsmith_index_u32(u_input.b.x, 17u)]))), vec2<bool>(all(select(select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(false, false, false), var_0.a), vec3<bool>(var_0.a, var_0.a, false), true)), _wgslsmith_mult_i32(u_input.a, -var_0.c) >= global0[_wgslsmith_index_u32(30089u, 17u)]), Struct_1(var_0.a, -347f, ~firstTrailingBit(_wgslsmith_div_i32(2147483647i, var_0.c))));
    global1 = u_input.b;
    return _wgslsmith_mult_u32(min(global1.x, ~firstTrailingBit(47406u)), ~4294967295u);
}

fn func_1() -> u32 {
    let var_0 = 828f;
    var var_1 = ~vec2<i32>(-44650i, global0[_wgslsmith_index_u32(global1.x, 17u)] | -_wgslsmith_add_i32(u_input.a, -32710i));
    var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(abs(-vec2<i32>(1i, 1i)), vec2<i32>(select(min(5742i, -31723i), -var_1.x, true), 52674i)), 1i);
    global1 = ~firstTrailingBit(select(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(9367u, global1.x, 4294967295u, 1u), u_input.b), u_input.b, max(u_input.b, vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u))), u_input.b, true));
    let var_2 = all(vec4<bool>(!(!any(vec2<bool>(true, true))), all(vec3<bool>(true, false, true)), (_wgslsmith_add_u32(1u, global1.x) >= 43262u) || true, u_input.b.x == _wgslsmith_add_u32(~u_input.b.x, 12001u)));
    return ~_wgslsmith_add_u32(_wgslsmith_mult_u32(~29712u, _wgslsmith_div_u32(~global1.x, abs(23742u))), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 17>();
    global1 = ~vec4<u32>(~_wgslsmith_mod_u32(~global1.x, u_input.b.x & u_input.b.x), ~global1.x, firstLeadingBit(countOneBits(reverseBits(16009u))), 1u);
    var var_0 = global1.yw;
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, firstTrailingBit(1u)), 17u)];
    var var_2 = _wgslsmith_f_op_f32(-2271f + -416f);
    let var_3 = 35862u >= func_1();
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1029f * -351f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-564f + 649f), _wgslsmith_div_f32(-232f, 1166f), _wgslsmith_f_op_f32(-547f * -1159f)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(813f))), -238f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1696f, -119f)), 1f))))));
}

