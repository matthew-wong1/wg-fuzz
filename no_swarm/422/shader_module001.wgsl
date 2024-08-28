struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(38664u, 4294967295u, 4294967295u), 4294967295u, -119788i);

var<private> global2: array<f32, 2> = array<f32, 2>(-356f, 460f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = true | (true || all(vec2<bool>(true, true)));
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-global1.c, ~(-global1.c), abs(firstTrailingBit(32348i)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, global1.c), abs(global1.c))), ~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(28260i, 1i), vec2<i32>(20753i, -12203i)), 2147483647i << (u_input.a.x % 32u), -67410i | global1.c, abs(-62403i))) ^ min(global1.c, global1.c);
    var var_2 = global1.b;
    global2 = array<f32, 2>();
    let var_3 = Struct_1(_wgslsmith_div_vec3_u32(global1.a << (abs(~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)) % vec3<u32>(32u)), u_input.a.xzw >> (max(vec3<u32>(0u, u_input.a.x, global1.b) >> (vec3<u32>(global1.b, 4294967295u, 12774u) % vec3<u32>(32u)), ~global1.a) % vec3<u32>(32u))), global1.a.x, countOneBits(-25235i));
    return _wgslsmith_mult_u32(~(~(var_3.a.x & ~4294967295u)), abs(global1.b >> (((15257u >> (var_3.a.x % 32u)) & 33868u) % 32u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(vec3<u32>(4294967295u, (~97634u | select(1u, 27466u, true)) | (~global1.a.x & countOneBits(u_input.a.x)), 5426u), 0u, -36760i);
    global1 = arg_1;
    global1 = arg_1;
    global1 = arg_0;
    var var_1 = select(!vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, 2147483647i), vec2<i32>(var_0.c, 37538i)) < 7176i, select(true, any(vec3<bool>(true, false, true)), true)), vec3<bool>(1u <= func_3(), false, true), vec3<bool>(true, _wgslsmith_mult_i32(firstTrailingBit(-7329i), 1409i) < _wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_0.c, 1386i, -2147483647i, arg_2), vec4<i32>(2147483647i, -46165i, 2147483647i, arg_0.c), false), -vec4<i32>(global1.c, 2243i, global1.c, 50746i)), true));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>, arg_3: vec2<f32>) -> vec4<f32> {
    return vec4<f32>(1623f, _wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(4294967295u, 2u)], arg_3.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)))), global2[_wgslsmith_index_u32(~(~(reverseBits(24775u) | ~arg_0.a.x)), 2u)]);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(func_2(arg_1, arg_1, _wgslsmith_add_i32(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(global1.c, 1992i, -1i), ~arg_1.c))), max(~reverseBits(arg_0) ^ arg_1.b, _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mod_u32(26390u, arg_1.a.x))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(26802u, arg_0), func_3(), countOneBits(4294967295u)), reverseBits(vec3<u32>(8054u, arg_1.a.x, 4294967295u))), func_2(arg_2, func_2(func_2(arg_1, Struct_1(arg_1.a, arg_0, -2387i), 6338i), Struct_1(arg_2.a, 0u, 25372i), 1i), -_wgslsmith_mult_i32(0i, -24293i)).b), vec2<f32>(global2[_wgslsmith_index_u32(0u, 2u)], 390f)));
    return all(select(vec3<bool>(true, all(vec2<bool>(true, false)), true), vec3<bool>(false, true, var_0.x >= var_0.x), !any(vec4<bool>(false, false, false, true)))) & (-745f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1810f, -649f))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global1.b), reverseBits(vec2<u32>(56610u, arg_2.a.x))), 2u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec2<bool>(true, true), !select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(false, false), func_1(u_input.a.x, Struct_1(u_input.a.xzw, 53804u, global1.c), Struct_1(global1.a, 9915u, global1.c))), 4370u > ~_wgslsmith_div_u32(global1.a.x, 0u));
    var var_1 = (~_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a.x, 122285u), countOneBits(global1.a)) & max(vec3<u32>(~u_input.a.x, ~u_input.a.x, firstTrailingBit(4294967295u)), u_input.a.www)) >> (abs(firstTrailingBit(select(vec3<u32>(4294967295u, global1.b, 24717u), ~vec3<u32>(4294967295u, 30266u, 1u), select(vec3<bool>(false, true, var_0.x), vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x))))) % vec3<u32>(32u));
    let var_2 = select(select(vec2<bool>(true, true), var_0, var_0), select(vec2<bool>(~4294967295u < (global1.b << (9576u % 32u)), false), vec2<bool>(any(select(vec3<bool>(true, var_0.x, false), vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, true, false))), var_0.x), var_0), var_0.x);
    global2 = array<f32, 2>();
    global0 = ~(~18944u);
    var_1 = vec3<u32>(global1.a.x, u_input.a.x, select(1u, firstTrailingBit(1u), any(select(!vec4<bool>(var_2.x, var_2.x, false, var_2.x), select(vec4<bool>(false, true, false, var_0.x), vec4<bool>(false, var_2.x, false, var_0.x), vec4<bool>(var_2.x, var_0.x, var_2.x, false)), any(var_0)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-21153i, _wgslsmith_div_i32(14201i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, -30042i), ~vec3<i32>(global1.c, -2147483647i, global1.c)))), var_1.x);
}

