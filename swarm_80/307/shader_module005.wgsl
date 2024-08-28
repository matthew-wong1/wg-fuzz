struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 15> = array<f32, 15>(910f, 393f, -367f, 950f, 262f, -1000f, 1782f, 981f, -243f, -423f, -1050f, -563f, 109f, -1427f, -1295f);

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<i32>(4308i, 1i, 8501i), 57851i, 2105f, 3232u, 2147483647i), Struct_1(vec3<i32>(-1i, 22470i, -1i), 36961i, -1395f, 33646u, 1i), Struct_1(vec3<i32>(-23472i, 0i, 12i), 340i, -1423f, 1u, 73179i), Struct_1(vec3<i32>(75170i, 32421i, 0i), 1i, 591f, 7999u, -1i), Struct_1(vec3<i32>(53202i, -5583i, -1i), 2147483647i, 182f, 100027u, 0i), Struct_1(vec3<i32>(48288i, 27219i, i32(-2147483648)), -5737i, 485f, 63088u, 2147483647i), Struct_1(vec3<i32>(1454i, 13912i, -1i), 0i, -760f, 1u, 29035i), Struct_1(vec3<i32>(245i, -28325i, 0i), -23444i, -690f, 29341u, -8785i), Struct_1(vec3<i32>(-1i, -1i, 52318i), -1i, 1000f, 0u, 347i), Struct_1(vec3<i32>(-1i, 0i, 2147483647i), -1i, 1000f, 4294967295u, i32(-2147483648)), Struct_1(vec3<i32>(2147483647i, -9705i, 29433i), -1i, 591f, 45764u, 2147483647i));

var<private> global3: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> i32 {
    global0 = 834f;
    var var_0 = true;
    var var_1 = ~max(reverseBits(vec3<u32>(~51841u, ~arg_0.d, _wgslsmith_mult_u32(11882u, u_input.a.x))), select(firstLeadingBit(min(vec3<u32>(global3.d, global3.d, global3.d), vec3<u32>(global3.d, 1u, 0u))), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, arg_0.d, u_input.a.x) ^ vec3<u32>(0u, u_input.a.x, arg_0.d), vec3<u32>(86301u, 1u, global3.d) >> (vec3<u32>(2252u, 13152u, arg_0.d) % vec3<u32>(32u))), select(vec3<bool>(true, true, true), select(vec3<bool>(arg_1, true, true), vec3<bool>(arg_1, arg_1, false), false), !arg_1)));
    let var_2 = !vec2<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1)), any(vec3<bool>(arg_1, true, false)))), !(!arg_1));
    var var_3 = all(vec3<bool>(all(vec4<bool>(arg_2.c == 307f, 365f >= global1[_wgslsmith_index_u32(global3.d, 15u)], true, true)), false, _wgslsmith_mod_i32(arg_2.a.x, max(arg_2.e, -10440i)) < arg_0.b));
    return _wgslsmith_clamp_i32(firstLeadingBit(-1i), global3.b ^ -countOneBits(abs(arg_0.b)), 1i);
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    global3 = Struct_1(vec3<i32>(min(reverseBits(-887i), 1i), countOneBits(func_3(global2[_wgslsmith_index_u32(global3.d, 11u)], false, arg_0)), 24109i) >> ((~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, 0u), vec3<u32>(13649u, var_0.d, 50730u)) | _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(14143u, global3.d, 0u), vec3<u32>(7694u, 7509u, 17739u)), vec3<u32>(global3.d, 0u, u_input.a.x) << (vec3<u32>(arg_0.d, 62033u, arg_0.d) % vec3<u32>(32u)), vec3<u32>(arg_0.d, 60699u, 9943u) << (vec3<u32>(global3.d, u_input.a.x, 1805u) % vec3<u32>(32u)))) % vec3<u32>(32u)), ~var_0.a.x, 1259f, ~27784u, _wgslsmith_mod_i32(arg_0.a.x, reverseBits(0i)));
    let var_1 = any(vec2<bool>(all(vec4<bool>(false, true, true, false)) || true, true));
    global0 = _wgslsmith_f_op_f32(sign(var_0.c));
    var var_2 = var_0;
    return 0u;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<u32>) -> u32 {
    global1 = array<f32, 15>();
    let var_0 = Struct_1(select(select(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(global3.a, vec3<i32>(global3.a.x, global3.a.x, -2147483647i)), firstLeadingBit(vec3<i32>(global3.b, -21268i, global3.e))), _wgslsmith_clamp_vec3_i32(-vec3<i32>(global3.e, global3.a.x, global3.b), global3.a << (vec3<u32>(4294967295u, 1u, 19701u) % vec3<u32>(32u)), vec3<i32>(global3.a.x, global3.e, global3.b)), false), min(_wgslsmith_clamp_vec3_i32(-vec3<i32>(global3.b, global3.b, global3.a.x), reverseBits(vec3<i32>(-1i, global3.b, -2147483647i)), global3.a << (arg_1.ywx % vec3<u32>(32u))), ~(-vec3<i32>(12899i, global3.b, -48557i))), select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), -367f <= global1[_wgslsmith_index_u32(9816u, 15u)]), vec3<bool>(true, true, true))), _wgslsmith_sub_i32(~global3.b, 17739i | (global3.b << (arg_0.x % 32u))), global3.c, countOneBits(arg_0.x), func_3(Struct_1(firstTrailingBit(_wgslsmith_clamp_vec3_i32(global3.a, global3.a, global3.a)), _wgslsmith_mult_i32(global3.a.x, -30817i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(25688u, 15u)])), 1u, 1i), true, global2[_wgslsmith_index_u32(arg_1.x, 11u)]));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(var_0.d, 15u)], -1251f, 876f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1602f, 1094f, -1536f) + vec3<f32>(var_0.c, global1[_wgslsmith_index_u32(0u, 15u)], 1556f)), true)), vec3<f32>(_wgslsmith_div_f32(var_0.c, global1[_wgslsmith_index_u32(u_input.a.x, 15u)]), 810f, _wgslsmith_f_op_f32(step(global3.c, global1[_wgslsmith_index_u32(u_input.a.x, 15u)]))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), all(vec2<bool>(true, true))))))));
    let var_2 = ~_wgslsmith_add_u32(~59886u, _wgslsmith_div_u32(_wgslsmith_mod_u32(~arg_1.x, 23840u), u_input.a.x));
    let var_3 = firstLeadingBit(~((arg_1.x >> (77734u % 32u)) ^ ~1u)) & arg_0.x;
    return arg_1.x;
}

fn func_1() -> u32 {
    var var_0 = true;
    let var_1 = global1[_wgslsmith_index_u32(func_4(u_input.a, vec4<u32>(_wgslsmith_div_u32(u_input.a.x, func_2(global2[_wgslsmith_index_u32(global3.d, 11u)])), u_input.a.x, _wgslsmith_add_u32(~(~u_input.a.x), 1u), 56969u)), 15u)];
    var var_2 = !select(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), false);
    var var_3 = func_2(global2[_wgslsmith_index_u32(global3.d, 11u)]);
    let var_4 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(global3.d), ~func_2(global2[_wgslsmith_index_u32(~32698u >> (u_input.a.x % 32u), 11u)])), 11u)];
    return ~66580u;
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: vec4<u32>, arg_3: i32) -> Struct_1 {
    global2 = array<Struct_1, 11>();
    let var_0 = Struct_1(vec3<i32>(min(1i, global3.e), abs(-2147483647i << (_wgslsmith_clamp_u32(4294967295u, 4294967295u, 68699u) % 32u)), ~(-50350i)), _wgslsmith_mod_i32(arg_3, -2147483647i), global1[_wgslsmith_index_u32(arg_1, 15u)], _wgslsmith_mult_u32(u_input.a.x, ~(~abs(0u))), -2147483647i);
    let var_1 = vec2<f32>(-122f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + -978f)) - 1094f), _wgslsmith_f_op_f32(-global3.c)));
    let var_2 = u_input.a;
    var var_3 = Struct_1(~var_0.a, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(0i, ~global3.b, arg_3), arg_0), _wgslsmith_f_op_f32(sign(global3.c)), arg_1, var_0.a.x | var_0.a.x);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_mod_u32(global3.d << (u_input.a.x % 32u), 4294967295u));
    var var_1 = reverseBits(global3.a.x);
    var var_2 = func_5(~firstLeadingBit(firstTrailingBit(40887i)), ~u_input.a.x, vec4<u32>(var_0, 32196u << (func_1() % 32u), ~global3.d, ~0u), 1i);
    global2 = array<Struct_1, 11>();
    var var_3 = 35808i;
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer((~(~var_2.d) >> (~0u % 32u)) ^ _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(global3.d, u_input.a.x, u_input.a.x)), vec3<u32>(firstLeadingBit(var_0), global3.d, 12296u)), u_input.a, global1[_wgslsmith_index_u32(10040u, 15u)]);
}

