struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec3<bool>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_4, 5>;

var<private> global2: u32;

var<private> global3: array<i32, 17> = array<i32, 17>(-1i, 1i, 2147483647i, 0i, -1i, -107i, -10238i, -9733i, -1i, -1i, 11506i, 38875i, -1i, 64314i, -34587i, -35685i, -1i);

var<private> global4: array<u32, 29> = array<u32, 29>(25074u, 1u, 0u, 1u, 4294967295u, 24189u, 74362u, 1670u, 25475u, 18496u, 19570u, 4294967295u, 1u, 0u, 31135u, 21585u, 25840u, 6021u, 33662u, 0u, 4294967295u, 44532u, 55418u, 1u, 4294967295u, 3481u, 0u, 0u, 24726u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>) -> u32 {
    let var_0 = vec2<bool>((any(arg_1) && any(vec4<bool>(true, false, false, true))) || false, true);
    var var_1 = 117898u;
    global4 = array<u32, 29>();
    var var_2 = ~vec3<u32>(abs(u_input.b) | arg_0, 56514u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, 50690u, 55099u)), vec3<u32>(~36883u, ~0u, 10971u)));
    var_2 = vec3<u32>((2703u ^ ~abs(arg_0)) ^ abs(u_input.a.x), var_2.x, ~u_input.a.x);
    return countOneBits(_wgslsmith_div_u32(4294967295u, 34985u));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_4) -> vec2<bool> {
    var var_0 = 0i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1832f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1f, 393f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, 280f) - _wgslsmith_f_op_f32(abs(arg_1.x))))), !(!(arg_0 && arg_0)))));
    global4 = array<u32, 29>();
    return select(vec2<bool>(all(vec2<bool>(arg_0, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4126u, 29u)], 29u)] <= arg_2.c.x)), true), !vec2<bool>(arg_0, _wgslsmith_f_op_f32(abs(var_1)) <= -1000f), _wgslsmith_f_op_f32(-216f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), 2491f)) == _wgslsmith_f_op_f32(-469f + 712f));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>) -> vec4<f32> {
    let var_0 = !select(select(select(select(vec4<bool>(true, arg_1.x, true, false), vec4<bool>(true, false, true, false), vec4<bool>(arg_1.x, true, true, arg_1.x)), select(vec4<bool>(false, arg_1.x, arg_1.x, false), vec4<bool>(false, arg_1.x, false, false), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)), arg_1.x | true), vec4<bool>(true, arg_1.x, 1u >= global4[_wgslsmith_index_u32(4294967295u, 29u)], false), select(!vec4<bool>(arg_1.x, false, arg_1.x, true), !vec4<bool>(false, true, arg_1.x, false), arg_1.x)), vec4<bool>(all(!vec2<bool>(arg_1.x, arg_1.x)), arg_1.x, arg_1.x, false), arg_1.x);
    let var_1 = abs(u_input.b & ~select(arg_0.c.x, ~85436u, global3[_wgslsmith_index_u32(u_input.a.x, 17u)] < -1i));
    var var_2 = Struct_2(~abs(~_wgslsmith_div_u32(u_input.b, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-848f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-272f)), 2363f, u_input.b == global4[_wgslsmith_index_u32(0u, 29u)])))), vec3<bool>(true || arg_1.x, any(var_0.wyz), abs(~70160u) <= ~_wgslsmith_dot_vec4_u32(vec4<u32>(56489u, arg_0.c.x, u_input.a.x, 1u), vec4<u32>(19613u, 1u, 4294967295u, 49491u))), ~(arg_0.b << (_wgslsmith_div_u32(_wgslsmith_div_u32(global4[_wgslsmith_index_u32(arg_0.c.x, 29u)], 0u), ~1u) % 32u)));
    global0 = -_wgslsmith_add_vec3_i32(vec3<i32>(23809i, _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(1u, 17u)], -2147483647i), ~1i) | _wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, arg_0.a, -2147483647i) << (arg_0.c % vec3<u32>(32u)), vec3<i32>(-23592i, -27034i, 0i)), _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(arg_0.a, var_2.d, 6846i)) & (vec3<i32>(arg_0.b, 2147483647i, -2147483647i) ^ vec3<i32>(global3[_wgslsmith_index_u32(1u, 17u)], 0i, global0.x)), max(~vec3<i32>(global0.x, -2147483647i, 9058i), _wgslsmith_mod_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(1u, 17u)], arg_0.b, global0.x), vec3<i32>(-1i, -1i, 2147483647i)))));
    global0 = -(~(select(vec3<i32>(global3[_wgslsmith_index_u32(var_1, 17u)], global0.x, 43356i), ~vec3<i32>(-2147483647i, global0.x, -14540i), var_0.ywz) << (vec3<u32>(var_2.a << (global4[_wgslsmith_index_u32(0u, 29u)] % 32u), 104374u, var_2.a) % vec3<u32>(32u))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(626f, -1230f, var_2.b, var_2.b), vec4<f32>(-103f, var_2.b, var_2.b, 1480f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1002f, 232f, var_2.b, -465f))))));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: vec3<bool>) -> Struct_3 {
    let var_0 = Struct_4(global3[_wgslsmith_index_u32(u_input.a.x, 17u)], global3[_wgslsmith_index_u32(1u, 17u)], vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(42859u, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.b, 109558u))), ~u_input.b), 4294967295u, abs(_wgslsmith_mod_u32(~113882u, u_input.b))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_4(var_0, select(func_3(true, vec4<f32>(arg_1, 2449f, -1022f, -144f), Struct_4(-5676i, 0i, var_0.c)), !arg_0, !arg_0))))) - vec4<f32>(_wgslsmith_f_op_vec4_f32(func_4(Struct_4(~69793i, global3[_wgslsmith_index_u32(var_0.c.x, 17u)] >> (1u % 32u), vec3<u32>(u_input.b, 93405u, var_0.c.x)), arg_2.yy)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-405f - arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - -1823f))), arg_1));
    var var_2 = Struct_4(-(~2147483647i), global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 29u)], 17u)], var_0.c);
    var var_3 = Struct_2(select(1u, abs(firstLeadingBit(u_input.b)), arg_2.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(588f)), -587f)) - var_1.x))), arg_2, 15067i);
    let var_4 = ~firstTrailingBit(_wgslsmith_sub_vec3_u32(~var_2.c, ~(~vec3<u32>(var_2.c.x, 4294967295u, var_2.c.x))));
    return Struct_3(Struct_2(var_4.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1099f))), arg_2, min(abs(countOneBits(var_2.a)), _wgslsmith_dot_vec2_i32(select(vec2<i32>(var_3.d, 0i), global0.xy, vec2<bool>(false, true)), abs(vec2<i32>(0i, var_3.d))))), _wgslsmith_f_op_vec2_f32(-var_1.xy), 2147483647i << (~u_input.b % 32u));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: vec3<i32>, arg_3: bool) -> u32 {
    var var_0 = Struct_4(~_wgslsmith_mod_i32(arg_0.c, _wgslsmith_dot_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(arg_0.a.a, 17u)], arg_0.c), -vec2<i32>(22707i, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 29u)], 17u)]))), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(select(vec4<i32>(arg_0.a.d, arg_2.x, global3[_wgslsmith_index_u32(arg_0.a.a, 17u)], global0.x), vec4<i32>(global3[_wgslsmith_index_u32(0u, 17u)], 1i, global0.x, -20808i), arg_0.a.c.x) & max(vec4<i32>(-3357i, arg_2.x, 2147483647i, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 29u)], 17u)]), vec4<i32>(global0.x, global3[_wgslsmith_index_u32(u_input.b, 17u)], 1i, global0.x)), ~firstLeadingBit(vec4<i32>(0i, arg_0.a.d, arg_0.a.d, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 29u)], 17u)]))), ~(-select(vec4<i32>(19254i, global0.x, global0.x, 2147483647i), vec4<i32>(-2147483647i, -1i, arg_0.c, arg_0.a.d), vec4<bool>(arg_1, arg_1, false, arg_1)))), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.a, arg_0.a.a, 8473u), vec3<u32>(u_input.a.x, 1u, 32289u)), 1u), _wgslsmith_div_u32(u_input.b, 4294967295u) ^ global4[_wgslsmith_index_u32(52250u, 29u)], u_input.a.x) >> (~_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a.a, global4[_wgslsmith_index_u32(33530u, 29u)], global4[_wgslsmith_index_u32(1u, 29u)]), vec3<u32>(u_input.b, arg_0.a.a, 33872u)), abs(vec3<u32>(u_input.b, arg_0.a.a, 5579u))) % vec3<u32>(32u)));
    let var_1 = abs(_wgslsmith_clamp_vec4_i32(max(min(~vec4<i32>(307i, global0.x, 2147483647i, global3[_wgslsmith_index_u32(u_input.b, 17u)]), ~vec4<i32>(2147483647i, -49095i, 1i, -2753i)), ~vec4<i32>(global0.x, 13762i, arg_0.c, 60209i)), (vec4<i32>(arg_0.c, global3[_wgslsmith_index_u32(0u, 17u)], arg_0.a.d, 1i) << (~vec4<u32>(0u, var_0.c.x, 34937u, global4[_wgslsmith_index_u32(var_0.c.x, 29u)]) % vec4<u32>(32u))) >> ((select(vec4<u32>(1u, 1u, 1u, var_0.c.x), vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(0u, 29u)], arg_0.a.a, var_0.c.x), arg_3) & vec4<u32>(var_0.c.x, var_0.c.x, u_input.b, 1u)) % vec4<u32>(32u)), vec4<i32>(~(-13309i), global3[_wgslsmith_index_u32(abs(0u), 17u)], 1192i, _wgslsmith_add_i32(var_0.b, arg_2.x))));
    global3 = array<i32, 17>();
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(56801u, 17u)], _wgslsmith_sub_u32(abs(~73099u), func_1(_wgslsmith_add_u32(u_input.b, global4[_wgslsmith_index_u32(4294967295u, 29u)]), vec3<bool>(true, true, true))) & ~(~52412u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1160f) + -950f), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_div_f32(-1400f, -184f))), 1f), func_5(func_2(vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -902f) + _wgslsmith_f_op_f32(-423f + -594f)), vec3<bool>(true, true, true)), true, -(vec3<i32>(-1i) * -vec3<i32>(0i, 2147483647i, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 29u)], 17u)])), !all(vec4<bool>(true, true, true, false))), vec3<u32>(4294967295u, _wgslsmith_mult_u32(~4294967295u, func_2(vec2<bool>(true, false), 1047f, vec3<bool>(false, false, false)).a.a) | ~1u, 4294967295u));
}

